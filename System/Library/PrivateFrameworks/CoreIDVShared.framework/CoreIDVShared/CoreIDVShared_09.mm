void *sub_225A79FA0(void *a1, unint64_t a2, double a3)
{
  v151 = a2;
  v150 = a1;
  v164 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v139 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v137 = &v135 - v8;
  MEMORY[0x28223BE20](v7);
  v136 = &v135 - v9;
  v147 = sub_225CCD2E4();
  v140 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v149);
  v148 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  v153 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v138 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v135 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v135 - v20;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock(&v24[off_28105B918]);
  v141 = *(v15 + 16);
  v142 = v23;
  v25 = &v22[v23];
  v26 = v14;
  v141(v21, v25, v14);
  v143 = v24;
  os_unfair_lock_unlock(&v24[v22]);
  v27 = sub_225CCD934();
  v28 = sub_225CCED04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "SESKeystore createSEBAASCertificate", v29, 2u);
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  v30 = v26;
  v144 = *(v15 + 8);
  v145 = v15 + 8;
  (v144)(v21, v26);
  if (qword_27D73A758 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v149, qword_27D741868);
  v32 = v148;
  sub_2259CB588(v31, v148);
  DIPSignpost.init(_:)(v32, v153);
  v33 = getSEABASSOIDS();
  if (!v33)
  {
    sub_225CCE814();
    v33 = sub_225CCE7F4();
  }

  v34 = sub_225CCCF74();
  v35 = sub_225CCE444();
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v158 = 0;
  v37 = SESKeyAttestWithSEBAA();

  v38 = v158;
  v39 = v158;
  v40 = v39;
  if (!v37)
  {
    v44 = v152;
    if (v39)
    {
      v41 = 0;
      v149 = 0xF000000000000000;
LABEL_14:
      v45 = v143;
      os_unfair_lock_lock(&v143[v22]);
      v141(v44, &v22[v142], v30);
      os_unfair_lock_unlock(&v45[v22]);
      v46 = v40;
      v47 = sub_225CCD934();
      v48 = sub_225CCED14();

      v49 = os_log_type_enabled(v47, v48);
      v150 = v41;
      v151 = v38;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v158 = v51;
        *v50 = 136315138;
        v52 = [v46 localizedDescription];
        v53 = sub_225CCE474();
        v148 = v30;
        v54 = v53;
        v56 = v55;

        v57 = sub_2259BE198(v54, v56, &v158);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_2259A7000, v47, v48, "Error from SESKeyCreateSEBAASCertificate: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA6F950](v51, -1, -1);
        MEMORY[0x22AA6F950](v50, -1, -1);

        v58 = v152;
        v59 = v148;
      }

      else
      {

        v58 = v44;
        v59 = v30;
      }

      (v144)(v58, v59);
      v157 = v46;
      v60 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      if (swift_dynamicCast())
      {
        v148 = 0x8000000225D1ABA0;
        v145 = "ASCertificate returned nil";
        v61 = v60;
        v62 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v152 = swift_allocError();
        v64 = v63;
        swift_getErrorValue();
        v65 = v155;
        v41 = v61;
        sub_225B21FAC(v65, &v158);

        v66 = v159;
        if (v159)
        {
          v142 = v160;
          v143 = v161;
          v144 = v158;
          v67 = v162;
          v151 = v163;
        }

        else
        {
          v158 = v41;
          sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
          v89 = v41;
          if (swift_dynamicCast())
          {
            v90 = v154;
            v144 = v154;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v92 = [v90 code];
            v93 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v93;
            *(inited + 40) = v92;
            v67 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

            v94 = v89;
            v142 = 0;
            v143 = 0;
            v66 = MEMORY[0x277D84F90];
            v144 = 208;
          }

          else
          {
            v158 = v89;
            v104 = sub_225CCE954();
            v143 = v89;
            v105 = v136;
            v106 = swift_dynamicCast();
            v107 = *(v104 - 8);
            (*(v107 + 56))(v105, v106 ^ 1u, 1, v104);
            LODWORD(v107) = (*(v107 + 48))(v105, 1, v104);
            sub_2259CB640(v105, &unk_27D73B050, &unk_225CD3AD0);
            if (v107)
            {
              v108 = 208;
            }

            else
            {
              v108 = 23;
            }

            v144 = v108;
            v66 = MEMORY[0x277D84F90];
            v67 = sub_225B2C374(MEMORY[0x277D84F90]);
            v109 = v143;
            v142 = 0xD00000000000002FLL;
            v143 = v148;
          }
        }

        v110 = v145 | 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v158 = v67;
        sub_225B2C4A0(v62, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v158);

        v112 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_225B29AA0(0, *(v66 + 2) + 1, 1, v66);
        }

        v114 = *(v66 + 2);
        v113 = *(v66 + 3);
        if (v114 >= v113 >> 1)
        {
          v66 = sub_225B29AA0((v113 > 1), v114 + 1, 1, v66);
        }

        *(v66 + 2) = v114 + 1;
        v115 = &v66[56 * v114];
        v116 = v148;
        *(v115 + 4) = 0xD00000000000002FLL;
        *(v115 + 5) = v116;
        *(v115 + 6) = 0xD00000000000001FLL;
        *(v115 + 7) = 0x8000000225D1A7B0;
        *(v115 + 8) = 0xD00000000000002FLL;
        *(v115 + 9) = v110;
        *(v115 + 10) = 301;
        *v64 = v144;
        v118 = v142;
        v117 = v143;
        *(v64 + 8) = v66;
        *(v64 + 16) = v118;
        *(v64 + 24) = v117;
        *(v64 + 32) = v112;
        *(v64 + 40) = v151;
        swift_willThrow();

        sub_2259B97A8(v150, v149);
        (*(v140 + 8))(v146, v147);
      }

      else
      {

        v147 = "ASCertificate returned nil";
        v148 = 0x8000000225D1AB80;
        v68 = v60;
        v69 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v152 = swift_allocError();
        v41 = v70;
        swift_getErrorValue();
        v71 = v156;
        v72 = v68;
        sub_225B21FAC(v71, &v158);

        v73 = v159;
        if (v159)
        {
          v145 = v160;
          v146 = v158;
          v144 = v161;
          v74 = v162;
          v151 = v163;
        }

        else
        {
          v158 = v72;
          sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
          v95 = v72;
          if (swift_dynamicCast())
          {
            v96 = v157;
            v146 = v157;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            v97 = swift_initStackObject();
            *(v97 + 16) = xmmword_225CD30F0;
            *(v97 + 32) = 20;
            v98 = [v96 code];
            v99 = MEMORY[0x277D83BF8];
            *(v97 + 64) = MEMORY[0x277D83B88];
            *(v97 + 72) = v99;
            *(v97 + 40) = v98;
            v74 = sub_225B2C374(v97);
            swift_setDeallocating();
            sub_2259CB640(v97 + 32, &qword_27D73B060, &unk_225CD3AE0);

            v100 = v95;
            v144 = 0;
            v145 = 0;
            v73 = MEMORY[0x277D84F90];
            v146 = 207;
          }

          else
          {
            v158 = v95;
            v119 = sub_225CCE954();
            v145 = v95;
            v120 = v137;
            v121 = swift_dynamicCast();
            v122 = *(v119 - 8);
            (*(v122 + 56))(v120, v121 ^ 1u, 1, v119);
            LODWORD(v122) = (*(v122 + 48))(v120, 1, v119);
            sub_2259CB640(v120, &unk_27D73B050, &unk_225CD3AD0);
            if (v122)
            {
              v123 = 207;
            }

            else
            {
              v123 = 23;
            }

            v146 = v123;
            v73 = MEMORY[0x277D84F90];
            v74 = sub_225B2C374(MEMORY[0x277D84F90]);
            v124 = v145;
            v144 = v148;
            v145 = 0xD000000000000019;
          }
        }

        v125 = v147 | 0x8000000000000000;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v74;
        sub_225B2C4A0(v69, sub_225B2AC40, 0, v126, &v158);

        v127 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_225B29AA0(0, *(v73 + 2) + 1, 1, v73);
        }

        v129 = *(v73 + 2);
        v128 = *(v73 + 3);
        if (v129 >= v128 >> 1)
        {
          v73 = sub_225B29AA0((v128 > 1), v129 + 1, 1, v73);
        }

        *(v73 + 2) = v129 + 1;
        v130 = &v73[56 * v129];
        v131 = v148;
        *(v130 + 4) = 0xD000000000000019;
        *(v130 + 5) = v131;
        *(v130 + 6) = 0xD00000000000001FLL;
        *(v130 + 7) = 0x8000000225D1A7B0;
        *(v130 + 8) = 0xD00000000000002FLL;
        *(v130 + 9) = v125;
        *(v130 + 10) = 303;
        v132 = v145;
        *v41 = v146;
        v41[1] = v73;
        v41[2] = v132;
        v41[3] = v144;
        v41[4] = v127;
        v41[5] = v151;
        swift_willThrow();

        sub_2259B97A8(v150, v149);
      }

LABEL_52:
      v133 = v153;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v133);
      return v41;
    }

LABEL_23:
    v152 = 0x8000000225D1A7B0;
    v151 = 0x8000000225D1AB50;
    v75 = MEMORY[0x277D84F90];
    v76 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v78 = v77;
    v79 = sub_225CCE954();
    v80 = *(v79 - 8);
    v81 = v139;
    (*(v80 + 56))(v139, 1, 1, v79);
    LODWORD(v79) = (*(v80 + 48))(v81, 1, v79);
    sub_2259CB640(v81, &unk_27D73B050, &unk_225CD3AD0);
    if (v79)
    {
      v82 = 207;
    }

    else
    {
      v82 = 23;
    }

    v83 = sub_225B2C374(v75);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v83;
    sub_225B2C4A0(v76, sub_225B2AC40, 0, v84, &v158);

    v41 = v158;
    v85 = sub_225B29AA0(0, 1, 1, v75);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v85);
    }

    *(v85 + 2) = v87 + 1;
    v88 = &v85[56 * v87];
    *(v88 + 4) = 0xD00000000000002ALL;
    *(v88 + 5) = 0x8000000225D1AB20;
    *(v88 + 6) = 0xD00000000000001FLL;
    *(v88 + 7) = v152;
    *(v88 + 8) = 0xD00000000000002FLL;
    *(v88 + 9) = v151;
    *(v88 + 10) = 308;
    *v78 = v82;
    *(v78 + 8) = v85;
    *(v78 + 16) = 0xD00000000000002ALL;
    *(v78 + 24) = 0x8000000225D1AB20;
    *(v78 + 32) = v41;
    *(v78 + 40) = 0;
    swift_willThrow();
    goto LABEL_52;
  }

  v41 = sub_225CCCFA4();
  v43 = v42;

  if (v40)
  {
    v149 = v43;
    v44 = v152;
    goto LABEL_14;
  }

  if (v43 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v101 = v143;
  os_unfair_lock_lock(&v143[v22]);
  v102 = v138;
  v141(v138, &v22[v142], v30);
  os_unfair_lock_unlock(&v101[v22]);
  sub_2259CB6FC(v41, v43);
  sub_225B431EC();
  sub_2259B97A8(v41, v43);
  (v144)(v102, v30);
  v103 = v153;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v103);
  return v41;
}

unint64_t SESKeystore.KeyDesignation.description.getter()
{
  v1 = 0x74696E65676F7250;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

unint64_t sub_225A7B224()
{
  v1 = 0x74696E65676F7250;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_225A7B280(unint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v116 = a5;
  v107 = a4;
  v118 = a2;
  v117 = a1;
  v129 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v106 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v105 - v9;
  v115 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v115);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v105 - v19;
  v120 = *a3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v16 + 16);
  v110 = v22;
  v109 = v16 + 16;
  v108 = v24;
  v24(v20, &v21[v22], v15);
  v111 = v23;
  os_unfair_lock_unlock(&v21[v23]);
  v25 = sub_225CCD934();
  v26 = sub_225CCED04();
  v27 = os_log_type_enabled(v25, v26);
  v119 = v14;
  if (v27)
  {
    v112 = v16;
    v113 = v15;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v123 = v29;
    *v28 = 136315138;
    v30 = 0xEA0000000000726FLL;
    v31 = 0x74696E65676F7250;
    if (v120 != 1)
    {
      v31 = 0xD000000000000016;
      v30 = 0x8000000225D1ABD0;
    }

    if (v120)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1701736270;
    }

    if (v120)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0xE400000000000000;
    }

    v34 = sub_2259BE198(v32, v33, &v123);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_2259A7000, v25, v26, "SESKeystore designateKey with designation %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA6F950](v29, -1, -1);
    MEMORY[0x22AA6F950](v28, -1, -1);

    v16 = v112;
    v35 = *(v112 + 8);
    v15 = v113;
    v35(v20, v113);
    v14 = v119;
  }

  else
  {

    v35 = *(v16 + 8);
    v35(v20, v15);
  }

  if (qword_27D73A760 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v115, qword_27D741880);
  sub_2259CB588(v36, v11);
  DIPSignpost.init(_:)(v11, v14);
  if (v116 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_225CCCF74();
  }

  v38 = sub_225CCCF74();
  v123 = 0;
  v39 = SESKeyDesignate();

  if (v123)
  {
    v120 = v123;
    v40 = v123;
    v41 = v111;
    os_unfair_lock_lock(&v21[v111]);
    v42 = v114;
    v108(v114, &v21[v110], v15);
    os_unfair_lock_unlock(&v21[v41]);
    v43 = v40;
    v44 = sub_225CCD934();
    v45 = sub_225CCED14();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v113 = v15;
      v48 = v47;
      v123 = v47;
      *v46 = 136315138;
      v49 = [v43 localizedDescription];
      v50 = sub_225CCE474();
      v112 = v16;
      v52 = v51;

      v53 = sub_2259BE198(v50, v52, &v123);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_2259A7000, v44, v45, "Error from SESKeyDesignate: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA6F950](v48, -1, -1);
      MEMORY[0x22AA6F950](v46, -1, -1);

      v54 = v114;
      v55 = v113;
    }

    else
    {

      v54 = v42;
      v55 = v15;
    }

    v35(v54, v55);
    v57 = 0x8000000225D1AC70;
    v115 = "r but false result";
    v58 = v43;
    v116 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v61 = v60;
    swift_getErrorValue();
    v62 = v122;
    v63 = v58;
    sub_225B21FAC(v62, &v123);

    v64 = v124;
    v118 = v59;
    v117 = 0x8000000225D1AC70;
    if (v124)
    {
      v114 = v123;
      v57 = v126;
      v113 = v125;
      v66 = v127;
      v65 = v128;
      v67 = &v132;
    }

    else
    {
      v123 = v63;
      v68 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v69 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v71 = [v69 code];
        v72 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v72;
        *(inited + 40) = v71;
        v66 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v73 = v68;
        v113 = 0;
        v57 = 0;
        v64 = MEMORY[0x277D84F90];
        v65 = 209;
        v67 = &v131;
      }

      else
      {
        v123 = v68;
        v89 = sub_225CCE954();
        v90 = v68;
        v91 = v105;
        v92 = swift_dynamicCast();
        v93 = *(v89 - 8);
        (*(v93 + 56))(v91, v92 ^ 1u, 1, v89);
        LODWORD(v93) = (*(v93 + 48))(v91, 1, v89);
        sub_2259CB640(v91, &unk_27D73B050, &unk_225CD3AD0);
        if (v93)
        {
          v94 = 209;
        }

        else
        {
          v94 = 23;
        }

        v114 = v94;
        v64 = MEMORY[0x277D84F90];
        v66 = sub_225B2C374(MEMORY[0x277D84F90]);
        v95 = v90;
        v65 = 0xD00000000000001ALL;
        v67 = &v130;
      }
    }

    *(v67 - 32) = v65;
    v96 = v115 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v66;
    sub_225B2C4A0(v116, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v123);

    v98 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_225B29AA0(0, *(v64 + 2) + 1, 1, v64);
    }

    v100 = *(v64 + 2);
    v99 = *(v64 + 3);
    if (v100 >= v99 >> 1)
    {
      v64 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v64);
    }

    *(v64 + 2) = v100 + 1;
    v101 = &v64[56 * v100];
    v102 = v117;
    *(v101 + 4) = 0xD00000000000001ALL;
    *(v101 + 5) = v102;
    *(v101 + 6) = 0xD00000000000001FLL;
    *(v101 + 7) = 0x8000000225D1A7B0;
    *(v101 + 8) = 0xD000000000000030;
    *(v101 + 9) = v96;
    *(v101 + 10) = 384;
    *v61 = v114;
    v103 = v113;
    *(v61 + 8) = v64;
    *(v61 + 16) = v103;
    *(v61 + 24) = v57;
    *(v61 + 32) = v98;
    *(v61 + 40) = v120;
    swift_willThrow();
  }

  else
  {
    if (v39)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return sub_2259CB6A0(v14);
    }

    v120 = 0x8000000225D1A7B0;
    v74 = MEMORY[0x277D84F90];
    v75 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v77 = v76;
    v78 = sub_225CCE954();
    v79 = *(v78 - 8);
    v80 = v106;
    (*(v79 + 56))(v106, 1, 1, v78);
    LODWORD(v78) = (*(v79 + 48))(v80, 1, v78);
    sub_2259CB640(v80, &unk_27D73B050, &unk_225CD3AD0);
    if (v78)
    {
      v81 = 209;
    }

    else
    {
      v81 = 23;
    }

    v82 = sub_225B2C374(v74);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v82;
    sub_225B2C4A0(v75, sub_225B2AC40, 0, v83, &v123);

    v84 = v123;
    v85 = sub_225B29AA0(0, 1, 1, v74);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v85);
    }

    *(v85 + 2) = v87 + 1;
    v88 = &v85[56 * v87];
    *(v88 + 4) = 0xD000000000000032;
    *(v88 + 5) = 0x8000000225D1ABF0;
    *(v88 + 6) = 0xD00000000000001FLL;
    *(v88 + 7) = v120;
    *(v88 + 8) = 0xD000000000000030;
    *(v88 + 9) = 0x8000000225D1AC30;
    *(v88 + 10) = 387;
    *v77 = v81;
    *(v77 + 8) = v85;
    *(v77 + 16) = 0xD000000000000032;
    *(v77 + 24) = 0x8000000225D1ABF0;
    *(v77 + 32) = v84;
    *(v77 + 40) = 0;
    swift_willThrow();
  }

  v104 = v119;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return sub_2259CB6A0(v104);
}

uint64_t sub_225A7C02C(unsigned __int8 *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v103 = &v103 - v5;
  v112 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v112);
  v111 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v114 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  v19 = *(v11 + 16);
  v106 = v17;
  v105 = v19;
  v19(v15, &v16[v17], v10);
  v107 = v18;
  os_unfair_lock_unlock(&v16[v18]);
  v20 = sub_225CCD934();
  v21 = v11;
  v22 = sub_225CCED04();
  v23 = os_log_type_enabled(v20, v22);
  v113 = v9;
  if (v23)
  {
    v108 = v21;
    v109 = v10;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v117 = v25;
    *v24 = 136315138;
    v26 = 0xEA0000000000726FLL;
    v27 = 0x74696E65676F7250;
    if (v114 != 1)
    {
      v27 = 0xD000000000000016;
      v26 = 0x8000000225D1ABD0;
    }

    if (v114)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1701736270;
    }

    if (v114)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    v30 = sub_2259BE198(v28, v29, &v117);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_2259A7000, v20, v22, "SESKeystore clearKeyDesignation with designation %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA6F950](v25, -1, -1);
    MEMORY[0x22AA6F950](v24, -1, -1);

    v31 = v108;
    v32 = *(v108 + 8);
    v10 = v109;
    v32(v15, v109);
    v9 = v113;
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v15, v10);
    v31 = v21;
  }

  if (qword_27D73A768 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v112, qword_27D741898);
  v34 = v111;
  sub_2259CB588(v33, v111);
  DIPSignpost.init(_:)(v34, v9);
  v117 = 0;
  v35 = SESKeyRemoveDesignation();
  if (v117)
  {
    v114 = v117;
    v36 = v117;
    v37 = v107;
    os_unfair_lock_lock(&v107[v16]);
    v38 = v110;
    v105(v110, &v16[v106], v10);
    os_unfair_lock_unlock(&v37[v16]);
    v39 = v36;
    v40 = sub_225CCD934();
    v41 = sub_225CCED14();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v109 = v10;
      v44 = v43;
      v117 = v43;
      *v42 = 136315138;
      v45 = [v39 localizedDescription];
      v46 = sub_225CCE474();
      v108 = v31;
      v47 = v46;
      v49 = v48;

      v50 = sub_2259BE198(v47, v49, &v117);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_2259A7000, v40, v41, "Error from SESKeyRemoveDesignation: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA6F950](v44, -1, -1);
      MEMORY[0x22AA6F950](v42, -1, -1);

      v51 = v110;
      v52 = v109;
    }

    else
    {

      v51 = v38;
      v52 = v10;
    }

    v32(v51, v52);
    v54 = 0x8000000225D1ACF0;
    v109 = "sponse or an error";
    v108 = " no error but false result";
    v55 = v39;
    v110 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v56 = swift_allocError();
    v58 = v57;
    swift_getErrorValue();
    v59 = v116;
    v60 = v55;
    sub_225B21FAC(v59, &v117);

    v61 = v118;
    v112 = v56;
    v111 = 0x8000000225D1ACF0;
    if (v118)
    {
      v107 = v117;
      v54 = v120;
      v106 = v119;
      v63 = v121;
      v62 = v122;
      v64 = &v126;
    }

    else
    {
      v117 = v60;
      v65 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v66 = v115;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v68 = [v66 code];
        v69 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v69;
        *(inited + 40) = v68;
        v63 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v70 = v65;
        v106 = 0;
        v54 = 0;
        v61 = MEMORY[0x277D84F90];
        v62 = 210;
        v64 = &v125;
      }

      else
      {
        v117 = v65;
        v86 = sub_225CCE954();
        v87 = v65;
        v88 = v103;
        v89 = swift_dynamicCast();
        v90 = *(v86 - 8);
        (*(v90 + 56))(v88, v89 ^ 1u, 1, v86);
        LODWORD(v90) = (*(v90 + 48))(v88, 1, v86);
        sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
        if (v90)
        {
          v91 = 210;
        }

        else
        {
          v91 = 23;
        }

        v107 = v91;
        v61 = MEMORY[0x277D84F90];
        v63 = sub_225B2C374(MEMORY[0x277D84F90]);
        v92 = v87;
        v62 = 0xD000000000000022;
        v64 = &v124;
      }
    }

    *(v64 - 32) = v62;
    v93 = v109 | 0x8000000000000000;
    v94 = v108 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v63;
    sub_225B2C4A0(v110, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v117);

    v96 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_225B29AA0(0, *(v61 + 2) + 1, 1, v61);
    }

    v98 = *(v61 + 2);
    v97 = *(v61 + 3);
    if (v98 >= v97 >> 1)
    {
      v61 = sub_225B29AA0((v97 > 1), v98 + 1, 1, v61);
    }

    *(v61 + 2) = v98 + 1;
    v99 = &v61[56 * v98];
    v100 = v111;
    *(v99 + 4) = 0xD000000000000022;
    *(v99 + 5) = v100;
    *(v99 + 6) = 0xD00000000000001FLL;
    *(v99 + 7) = v93;
    *(v99 + 8) = 0xD000000000000017;
    *(v99 + 9) = v94;
    *(v99 + 10) = 405;
    *v58 = v107;
    v101 = v106;
    *(v58 + 8) = v61;
    *(v58 + 16) = v101;
    *(v58 + 24) = v54;
    *(v58 + 32) = v96;
    *(v58 + 40) = v114;
    swift_willThrow();
  }

  else
  {
    if (v35)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return sub_2259CB6A0(v9);
    }

    v114 = 0x8000000225D1A7B0;
    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v74 = v73;
    v75 = sub_225CCE954();
    v76 = *(v75 - 8);
    v77 = v104;
    (*(v76 + 56))(v104, 1, 1, v75);
    LODWORD(v75) = (*(v76 + 48))(v77, 1, v75);
    sub_2259CB640(v77, &unk_27D73B050, &unk_225CD3AD0);
    if (v75)
    {
      v78 = 210;
    }

    else
    {
      v78 = 23;
    }

    v79 = sub_225B2C374(v71);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v79;
    sub_225B2C4A0(v72, sub_225B2AC40, 0, v80, &v117);

    v81 = v117;
    v82 = sub_225B29AA0(0, 1, 1, v71);
    v84 = *(v82 + 2);
    v83 = *(v82 + 3);
    if (v84 >= v83 >> 1)
    {
      v82 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v82);
    }

    *(v82 + 2) = v84 + 1;
    v85 = &v82[56 * v84];
    *(v85 + 4) = 0xD00000000000003ALL;
    *(v85 + 5) = 0x8000000225D1AC90;
    *(v85 + 6) = 0xD00000000000001FLL;
    *(v85 + 7) = v114;
    *(v85 + 8) = 0xD000000000000017;
    *(v85 + 9) = 0x8000000225D1ACD0;
    *(v85 + 10) = 408;
    *v74 = v78;
    *(v74 + 8) = v82;
    *(v74 + 16) = 0xD00000000000003ALL;
    *(v74 + 24) = 0x8000000225D1AC90;
    *(v74 + 32) = v81;
    *(v74 + 40) = 0;
    swift_willThrow();
  }

  v102 = v113;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return sub_2259CB6A0(v102);
}

uint64_t SESKeystore.DesignatedKey.publicKeyIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

_BYTE *SESKeystore.DesignatedKey.init(designation:publicKeyIdentifier:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

char *sub_225A7CDC4()
{
  v127 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v107 = &v106 - v1;
  v2 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v117 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v106 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v106 - v13;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  v18 = v8;
  v19 = *(v8 + 16);
  v113 = v16;
  v112 = v8 + 16;
  v111 = v19;
  v19(v14, &v15[v16], v7);
  v114 = v17;
  os_unfair_lock_unlock(&v15[v17]);
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();
  v22 = os_log_type_enabled(v20, v21);
  v118 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2259A7000, v20, v21, "SESKeystore getDesignatedKeys", v23, 2u);
    v24 = v23;
    v7 = v118;
    MEMORY[0x22AA6F950](v24, -1, -1);
  }

  v25 = *(v18 + 8);
  v116 = v18 + 8;
  v115 = v25;
  (v25)(v14, v7);
  v26 = v108;
  if (qword_27D73A770 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v2, qword_27D7418B0);
  sub_2259CB588(v27, v4);
  DIPSignpost.init(_:)(v4, v26);
  v121 = 0;
  v28 = SESKeyGetDesignatedKeys();
  v29 = v121;
  v30 = v110;
  if (v28)
  {
    v31 = v28;
    sub_2259D8718(0, &qword_27D73BC58, 0x277D49388);
    v32 = sub_225CCE814();
    v33 = v29;

    if (!v33)
    {
      v34 = MEMORY[0x277D84F90];
      if (v32)
      {
        if (v32 >> 62)
        {
          v35 = sub_225CCF144();
          if (v35)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
LABEL_12:
            v107 = v15;
            v121 = v34;
            sub_2259D52E4(0, v35 & ~(v35 >> 63), 0);
            if (v35 < 0)
            {
              __break(1u);
            }

            v37 = 0;
            v34 = v121;
            v109 = v32 & 0xC000000000000001;
            *&v36 = 134217984;
            v106 = v36;
            v110 = v32;
            do
            {
              v38 = v35;
              if (v109)
              {
                v39 = MEMORY[0x22AA6DA80](v37, v32);
              }

              else
              {
                v39 = *(v32 + 8 * v37 + 32);
              }

              v40 = v39;
              v41 = [v39 designation];
              if (v41 >= 3)
              {
                v42 = v114;
                v43 = v107;
                os_unfair_lock_lock(&v114[v107]);
                v111(v117, &v43[v113], v7);
                os_unfair_lock_unlock(&v42[v43]);
                v44 = sub_225CCD934();
                v45 = sub_225CCED14();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  *v46 = v106;
                  *(v46 + 4) = v41;
                  _os_log_impl(&dword_2259A7000, v44, v45, "Unknown SESKeyDesignation: %ld", v46, 0xCu);
                  MEMORY[0x22AA6F950](v46, -1, -1);
                }

                (v115)(v117, v118);
                LOBYTE(v41) = 0;
              }

              v47 = [v40 keyIdentifier];
              v48 = sub_225CCCFA4();
              v50 = v49;

              v121 = v34;
              v52 = *(v34 + 2);
              v51 = *(v34 + 3);
              if (v52 >= v51 >> 1)
              {
                sub_2259D52E4((v51 > 1), v52 + 1, 1);
                v34 = v121;
              }

              *(v34 + 2) = v52 + 1;
              v53 = &v34[24 * v52];
              v53[32] = v41;
              ++v37;
              *(v53 + 5) = v48;
              *(v53 + 6) = v50;
              v35 = v38;
              v7 = v118;
              v32 = v110;
            }

            while (v38 != v37);
          }
        }
      }

LABEL_45:
      v104 = v108;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v104);
      return v34;
    }
  }

  else
  {
    v54 = v121;
    if (!v29)
    {
      v34 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }
  }

  v55 = v114;
  os_unfair_lock_lock(&v114[v15]);
  v111(v30, &v15[v113], v7);
  os_unfair_lock_unlock(&v55[v15]);

  v56 = v29;
  v57 = sub_225CCD934();
  v58 = sub_225CCED14();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v121 = v60;
    *v59 = 136315138;
    v61 = [v56 localizedDescription];
    v62 = sub_225CCE474();
    v64 = v63;

    v65 = sub_2259BE198(v62, v64, &v121);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_2259A7000, v57, v58, "Error from SESKeyGetDesignatedKeys: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AA6F950](v60, -1, -1);
    MEMORY[0x22AA6F950](v59, -1, -1);

    v66 = v110;
    v67 = v118;
  }

  else
  {

    v66 = v30;
    v67 = v7;
  }

  (v115)(v66, v67);
  v68 = 0x8000000225D1AD20;
  v116 = "sponse or an error";
  v115 = "yGetDesignatedKeys";
  v69 = v56;
  v70 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v118 = swift_allocError();
  v72 = v71;
  swift_getErrorValue();
  v73 = v120;
  v74 = v69;
  sub_225B21FAC(v73, &v121);

  v75 = v122;
  v117 = 0x8000000225D1AD20;
  if (v122)
  {
    v114 = v121;
    v68 = v124;
    v113 = v123;
    v77 = v125;
    v76 = v126;
    v78 = &v128;
  }

  else
  {
    v121 = v74;
    v79 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    v80 = swift_dynamicCast();
    v109 = v29;
    if (v80)
    {
      v81 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v83 = [v81 code];
      v84 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v84;
      *(inited + 40) = v83;
      v77 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v85 = v79;
      v68 = 0;
      v113 = 0;
      v75 = MEMORY[0x277D84F90];
      v76 = 211;
      v78 = &v130;
    }

    else
    {
      v121 = v79;
      v86 = sub_225CCE954();
      v87 = v79;
      v88 = v70;
      v89 = v107;
      v90 = swift_dynamicCast();
      v91 = *(v86 - 8);
      (*(v91 + 56))(v89, v90 ^ 1u, 1, v86);
      LODWORD(v91) = (*(v91 + 48))(v89, 1, v86);
      v92 = v89;
      v70 = v88;
      sub_2259CB640(v92, &unk_27D73B050, &unk_225CD3AD0);
      if (v91)
      {
        v93 = 211;
      }

      else
      {
        v93 = 23;
      }

      v114 = v93;
      v75 = MEMORY[0x277D84F90];
      v77 = sub_225B2C374(MEMORY[0x277D84F90]);
      v94 = v87;
      v76 = 0xD000000000000022;
      v78 = &v129;
    }
  }

  *(v78 - 32) = v76;
  v34 = (v116 | 0x8000000000000000);
  v95 = v115 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v77;
  sub_225B2C4A0(v70, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v121);

  v97 = v121;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = sub_225B29AA0(0, *(v75 + 2) + 1, 1, v75);
  }

  v99 = *(v75 + 2);
  v98 = *(v75 + 3);
  if (v99 >= v98 >> 1)
  {
    v75 = sub_225B29AA0((v98 > 1), v99 + 1, 1, v75);
  }

  *(v75 + 2) = v99 + 1;
  v100 = &v75[56 * v99];
  v101 = v117;
  *(v100 + 4) = 0xD000000000000022;
  *(v100 + 5) = v101;
  *(v100 + 6) = 0xD00000000000001FLL;
  *(v100 + 7) = v34;
  *(v100 + 8) = 0xD000000000000013;
  *(v100 + 9) = v95;
  *(v100 + 10) = 442;
  *v72 = v114;
  v102 = v113;
  *(v72 + 8) = v75;
  *(v72 + 16) = v102;
  *(v72 + 24) = v68;
  *(v72 + 32) = v97;
  *(v72 + 40) = v109;
  swift_willThrow();

  v103 = v108;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v103);
  return v34;
}

unint64_t sub_225A7DAC4(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v123 = a4;
  v122 = a3;
  v121 = a2;
  v120 = a1;
  v133 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v111 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v109 - v10;
  v119 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v119);
  v118 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v109 - v20;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v124 = v19;
  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  v25 = *(v16 + 16);
  v114 = v23;
  v113 = v16 + 16;
  v112 = v25;
  v25(v21, &v22[v23], v15);
  v115 = v24;
  os_unfair_lock_unlock(&v22[v24]);
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v116 = a5;
    v29 = v16;
    v30 = v15;
    v31 = v14;
    v32 = v28;
    *v28 = 0;
    _os_log_impl(&dword_2259A7000, v26, v27, "SESKeystore performKeyExchange", v28, 2u);
    v33 = v32;
    v14 = v31;
    v15 = v30;
    v16 = v29;
    MEMORY[0x22AA6F950](v33, -1, -1);
  }

  v35 = *(v16 + 8);
  v34 = v16 + 8;
  v117 = v15;
  v116 = v35;
  v35(v21, v15);
  if (qword_27D73A778 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v119, qword_27D7418C8);
  v37 = v118;
  sub_2259CB588(v36, v118);
  DIPSignpost.init(_:)(v37, v14);
  v38 = *MEMORY[0x277CDC288];
  v39 = sub_225CCCF74();
  v40 = sub_225CCCF74();
  v41 = sub_225CCCF74();
  v127 = 0;
  v42 = SESKeyExchange();

  v43 = v127;
  v44 = v127;
  v45 = v44;
  if (v42)
  {
    v123 = v43;
    v46 = sub_225CCCFA4();
    v48 = v47;

    v49 = v124;
    if (!v45)
    {
      if (v48 >> 60 != 15)
      {
        goto LABEL_35;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v49 = v124;
    if (!v44)
    {
LABEL_18:
      v124 = 0x8000000225D1A7B0;
      v123 = 0x8000000225D1ADA0;
      v73 = MEMORY[0x277D84F90];
      v74 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v76 = v75;
      v77 = sub_225CCE954();
      v78 = *(v77 - 8);
      v79 = v111;
      (*(v78 + 56))(v111, 1, 1, v77);
      LODWORD(v77) = (*(v78 + 48))(v79, 1, v77);
      sub_2259CB640(v79, &unk_27D73B050, &unk_225CD3AD0);
      if (v77)
      {
        v80 = 212;
      }

      else
      {
        v80 = 23;
      }

      v81 = sub_225B2C374(v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = v81;
      sub_225B2C4A0(v74, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v127);

      v83 = v127;
      v84 = sub_225B29AA0(0, 1, 1, v73);
      v46 = *(v84 + 2);
      v85 = *(v84 + 3);
      if (v46 >= v85 >> 1)
      {
        v84 = sub_225B29AA0((v85 > 1), v46 + 1, 1, v84);
      }

      *(v84 + 2) = v46 + 1;
      v86 = &v84[56 * v46];
      *(v86 + 4) = 0xD00000000000002BLL;
      *(v86 + 5) = 0x8000000225D1AD70;
      *(v86 + 6) = 0xD00000000000001FLL;
      *(v86 + 7) = v124;
      *(v86 + 8) = 0xD000000000000031;
      *(v86 + 9) = v123;
      *(v86 + 10) = 473;
      *v76 = v80;
      *(v76 + 8) = v84;
      *(v76 + 16) = 0xD00000000000002BLL;
      *(v76 + 24) = 0x8000000225D1AD70;
      *(v76 + 32) = v83;
      *(v76 + 40) = 0;
      swift_willThrow();
      goto LABEL_35;
    }

    v123 = v43;
    v46 = 0;
    v48 = 0xF000000000000000;
  }

  v50 = v115;
  os_unfair_lock_lock(&v22[v115]);
  v51 = v117;
  v112(v49, &v22[v114], v117);
  os_unfair_lock_unlock(&v22[v50]);
  v52 = v45;
  v53 = sub_225CCD934();
  v54 = sub_225CCED14();

  v55 = os_log_type_enabled(v53, v54);
  v110 = v14;
  v124 = v46;
  v122 = v48;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v127 = v57;
    *v56 = 136315138;
    v58 = [v52 localizedDescription];
    v59 = v49;
    v60 = sub_225CCE474();
    v121 = v34;
    v62 = v61;

    v63 = sub_2259BE198(v60, v62, &v127);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_2259A7000, v53, v54, "Error from SESKeyExchange: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x22AA6F950](v57, -1, -1);
    MEMORY[0x22AA6F950](v56, -1, -1);

    v116(v59, v117);
  }

  else
  {

    v116(v49, v51);
  }

  v118 = "eturned a nil shared secret";
  v64 = v52;
  v119 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v121 = swift_allocError();
  v66 = v65;
  swift_getErrorValue();
  v67 = v126;
  v68 = v64;
  sub_225B21FAC(v67, &v127);

  v69 = v128;
  v120 = 0x8000000225D1ADE0;
  if (v128)
  {
    v117 = v127;
    v46 = v130;
    v116 = v129;
    v71 = v131;
    v70 = v132;
    v72 = &v136;
  }

  else
  {
    v127 = v68;
    v87 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v88 = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v90 = [v88 code];
      v91 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v91;
      *(inited + 40) = v90;
      v71 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v92 = v87;
      v46 = 0;
      v116 = 0;
      v69 = MEMORY[0x277D84F90];
      v70 = 212;
      v72 = &v135;
    }

    else
    {
      v127 = v87;
      v93 = sub_225CCE954();
      v94 = v87;
      v95 = v109;
      v96 = swift_dynamicCast();
      v97 = *(v93 - 8);
      (*(v97 + 56))(v95, v96 ^ 1u, 1, v93);
      LODWORD(v97) = (*(v97 + 48))(v95, 1, v93);
      sub_2259CB640(v95, &unk_27D73B050, &unk_225CD3AD0);
      if (v97)
      {
        v98 = 212;
      }

      else
      {
        v98 = 23;
      }

      v117 = v98;
      v69 = MEMORY[0x277D84F90];
      v71 = sub_225B2C374(MEMORY[0x277D84F90]);
      v99 = v94;
      v46 = 0x8000000225D1ADE0;
      v70 = 0xD000000000000019;
      v72 = &v134;
    }
  }

  *(v72 - 32) = v70;
  v100 = v118 | 0x8000000000000000;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v127 = v71;
  sub_225B2C4A0(v119, sub_225B2AC40, 0, v101, &v127);

  v102 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_225B29AA0(0, *(v69 + 2) + 1, 1, v69);
  }

  v104 = *(v69 + 2);
  v103 = *(v69 + 3);
  if (v104 >= v103 >> 1)
  {
    v69 = sub_225B29AA0((v103 > 1), v104 + 1, 1, v69);
  }

  *(v69 + 2) = v104 + 1;
  v105 = &v69[56 * v104];
  v106 = v120;
  *(v105 + 4) = 0xD000000000000019;
  *(v105 + 5) = v106;
  *(v105 + 6) = 0xD00000000000001FLL;
  *(v105 + 7) = 0x8000000225D1A7B0;
  *(v105 + 8) = 0xD000000000000031;
  *(v105 + 9) = v100;
  *(v105 + 10) = 470;
  *v66 = v117;
  v107 = v116;
  *(v66 + 8) = v69;
  *(v66 + 16) = v107;
  *(v66 + 24) = v46;
  *(v66 + 32) = v102;
  *(v66 + 40) = v123;
  swift_willThrow();

  sub_2259B97A8(v124, v122);
  v14 = v110;
LABEL_35:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v14);
  return v46;
}

unint64_t sub_225A7E880()
{
  result = qword_27D73BC60;
  if (!qword_27D73BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC60);
  }

  return result;
}

unint64_t sub_225A7E8D8()
{
  result = qword_27D73BC68;
  if (!qword_27D73BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC68);
  }

  return result;
}

unint64_t sub_225A7E930()
{
  result = qword_27D73BC70;
  if (!qword_27D73BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC70);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_225A7ECF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A7ED34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t AsyncCoreDataContainer.__allocating_init(contextBuilder:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AsyncCoreDataContainer.init(contextBuilder:)(a1, a2);
  return v4;
}

void *AsyncCoreDataContainer.init(contextBuilder:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  v2[2] = AsyncQueue.init()();
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t AsyncCoreDataContainer.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225A7EE64, 0, 0);
}

uint64_t sub_225A7EE64()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_225A7EF68;
  v7 = v0[5];
  v8 = v0[2];

  return sub_225AFCF60(v8, &unk_225CDC510, v5, v7);
}

uint64_t sub_225A7EF68()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A812C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A7F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*a2 + 80);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7F174, 0, 0);
}

uint64_t sub_225A7F174()
{
  (*(v0[3] + 24))();
  v5 = (v0[4] + *v0[4]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_225A7F2D0;
  v2 = v0[8];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_225A7F2D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225A812AC;
  }

  else
  {
    v2 = sub_225A812A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AsyncCoreDataContainer.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7F4B4, 0, 0);
}

uint64_t sub_225A7F4B4()
{
  (*(v0[5] + 24))();
  v5 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_225A7F610;
  v2 = v0[8];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_225A7F610()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225A7F7A4;
  }

  else
  {
    v2 = sub_225A7F724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A7F724()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225A7F7A4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t AsyncCoreDataContainer.performWrite<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225A7F848, 0, 0);
}

uint64_t sub_225A7F848()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_225A7F94C;
  v7 = v0[5];
  v8 = v0[2];

  return sub_225AFCF60(v8, &unk_225CDC530, v5, v7);
}

uint64_t sub_225A7F94C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A7FA88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A7FA88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A7FAEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *a2;
  v5[7] = *a2;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A7FBFC, 0, 0);
}

uint64_t sub_225A7FBFC()
{
  (*(v0[3] + 24))();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v17 = v0[4];
  (*(v2 + 16))(v1, v0[12], v4);
  v7 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v9 = *(v3 + 88);
  *(v8 + 4) = v9;
  *(v8 + 5) = v17;
  *(v8 + 6) = v5;
  (*(v2 + 32))(&v8[v7], v1, v4);
  v10 = *(v9 + 8);

  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_225A7FE54;
  v12 = v0[8];
  v13 = v0[6];
  v14 = v0[2];

  return v16(v14, sub_225A812B0, v8, v13, v12, v9);
}

uint64_t sub_225A7FE54()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_225A812A8;
  }

  else
  {
    v2 = sub_225A812CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AsyncCoreDataContainer.performRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A80094, 0, 0);
}

uint64_t sub_225A80094()
{
  (*(v0[6] + 24))();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v17 = v0[3];
  (*(v2 + 16))(v1, v0[12], v4);
  v7 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v9 = *(v3 + 88);
  *(v8 + 4) = v9;
  *(v8 + 5) = v17;
  *(v8 + 6) = v5;
  (*(v2 + 32))(&v8[v7], v1, v4);
  v10 = *(v9 + 8);

  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_225A802EC;
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[2];

  return v16(v14, sub_225A80A50, v8, v13, v12, v9);
}

uint64_t sub_225A802EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_225A804A4;
  }

  else
  {
    v2 = sub_225A8041C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8041C()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225A804A4()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t AsyncCoreDataContainer.deinit()
{

  return v0;
}

uint64_t AsyncCoreDataContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225A80590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return AsyncCoreDataContainer.write<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A80654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return AsyncCoreDataContainer.read<A>(_:)(a1, a2, a3);
}

uint64_t sub_225A80708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return AsyncCoreDataContainer.performWrite<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A807CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2259FE39C;

  return AsyncCoreDataContainer.performRead<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_225A80890(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A7F0A4(a1, v4, v6, v5);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225A80990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2259FE39C;

  return sub_225A7FAEC(a1, v5, v7, v6, v4);
}

uint64_t dispatch thunk of AsyncCoreDataContexting.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t DeveloperTestDocumentResponseBuilder.documentType.getter()
{
  v1 = *v0;

  return v1;
}

CoreIDVShared::DeveloperTestDocumentResponseBuilder __swiftcall DeveloperTestDocumentResponseBuilder.init(documentType:payloadElements:)(Swift::String documentType, Swift::OpaquePointer payloadElements)
{
  *v2 = documentType;
  *(v2 + 16) = payloadElements;
  result.documentType = documentType;
  result.payloadElements = payloadElements;
  return result;
}

void *DeveloperTestDocumentResponseBuilder.buildResponse(requestedNamespaces:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_10:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v15 = *v13;
    v14 = v13[1];

    v17 = sub_225A827B8(v16, v15, v14);
    v28 = v3;

    v18 = *(v17 + 16);
    v19 = v11;
    v20 = *(v11 + 16);
    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v21 > v19[3] >> 1)
    {
      if (v20 <= v21)
      {
        v22 = v20 + v18;
      }

      else
      {
        v22 = v20;
      }

      result = sub_225B2A114(result, v22, 1, v19);
      v19 = result;
    }

    v7 &= v7 - 1;
    if (*(v17 + 16))
    {
      if ((v19[3] >> 1) - v19[2] < v18)
      {
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
      swift_arrayInitWithCopy();

      v11 = v19;
      v3 = v28;
      if (v18)
      {
        v23 = *(v11 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_27;
        }

        *(v11 + 16) = v25;
      }
    }

    else
    {

      v11 = v19;
      v3 = v28;
      if (v18)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)(v11, a2);
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = v2;
  v96 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78, &unk_225CDC630);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v92 - v10;
  v92 = type metadata accessor for ISO18013Response.Document(0);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v92 - v13;
  v14 = sub_225CCD354();
  v100 = *(v14 - 8);
  v101 = v14;
  MEMORY[0x28223BE20](v14);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC80, &qword_225CDC640);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88, &qword_225CDC648);
  v19 = MEMORY[0x28223BE20](v110);
  v112 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v111 = (&v92 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  MEMORY[0x28223BE20](v25);
  v103 = &v92 - v29;
  v30 = v2[1];
  v104 = *v2;
  v105 = v30;
  v31 = *(a1 + 16);
  v108 = v28;
  if (v31)
  {
    v3 = v28 + 48;
    v32 = (a1 + 56);
    v33 = MEMORY[0x277D84F90];
    v106 = v5[2];
    v102 = v27;
    do
    {
      v34 = *(v32 - 1);
      v4 = *v32;
      v35 = *(v32 - 3);
      a1 = *(v32 - 2);

      v36 = v34;
      v37 = v109;
      sub_225A821D4(v35, a1, v36, v4, v106, v18);
      if (v37)
      {
      }

      v38 = (*v3)(v18, 1, v110);
      v109 = 0;
      if (v38 == 1)
      {
        sub_2259CB640(v18, &qword_27D73BC80, &qword_225CDC640);
      }

      else
      {
        v39 = v103;
        v4 = &qword_27D73BC88;
        sub_2259D88EC(v18, v103, &qword_27D73BC88, &qword_225CDC648);
        sub_2259D88EC(v39, v107, &qword_27D73BC88, &qword_225CDC648);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_225B29EE4(0, *(v33 + 16) + 1, 1, v33);
        }

        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        a1 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v33 = sub_225B29EE4((v40 > 1), v41 + 1, 1, v33);
        }

        v27 = v102;
        *(v33 + 16) = a1;
        sub_2259D88EC(v107, v33 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v41, &qword_27D73BC88, &qword_225CDC648);
      }

      v32 += 4;
      --v31;
    }

    while (v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v43 = sub_225B2D578(MEMORY[0x277D84F90]);
  v107 = *(v33 + 16);
  if (v107)
  {
    v44 = 0;
    v45 = v108;
    v106 = v33 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    do
    {
      v46 = *(v33 + 16);
      if (v44 >= v46)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v3 = v33;
      sub_225A82A04(v106 + *(v45 + 72) * v44, v27);
      v47 = v111;
      sub_225A82A04(v27, v111);
      v4 = *v47;
      a1 = v47[1];
      sub_225A82A04(v27, v112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v43;
      v33 = sub_2259F18D4(v4, a1);
      v46 = v43[2];
      v50 = (v49 & 1) == 0;
      v51 = v46 + v50;
      if (__OFADD__(v46, v50))
      {
        goto LABEL_43;
      }

      v18 = v49;
      if (v43[3] >= v51)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v49)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_225A447CC();
          v43 = v113;
          if (v18)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_225A413C8(v51, isUniquelyReferenced_nonNull_native);
        v43 = v113;
        v52 = sub_2259F18D4(v4, a1);
        if ((v18 & 1) != (v53 & 1))
        {
          result = sub_225CCFAC4();
          __break(1u);
          return result;
        }

        v33 = v52;
        if (v18)
        {
LABEL_23:

          goto LABEL_27;
        }
      }

      v43[(v33 >> 6) + 8] |= 1 << v33;
      v54 = (v43[6] + 16 * v33);
      *v54 = v4;
      v54[1] = a1;
      *(v43[7] + 8 * v33) = MEMORY[0x277D84F90];
      v55 = v43[2];
      v56 = __OFADD__(v55, 1);
      v46 = v55 + 1;
      if (v56)
      {
        goto LABEL_44;
      }

      v43[2] = v46;
LABEL_27:
      v57 = v43[7];
      v58 = *(v57 + 8 * v33);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + 8 * v33) = v58;
      if ((v59 & 1) == 0)
      {
        v58 = sub_225B29F08(0, v58[2] + 1, 1, v58);
        *(v57 + 8 * v33) = v58;
      }

      v4 = v58[2];
      v60 = v58[3];
      if (v4 >= v60 >> 1)
      {
        *(v57 + 8 * v33) = sub_225B29F08((v60 > 1), v4 + 1, 1, v58);
      }

      ++v44;
      a1 = *(v110 + 48);
      sub_2259CB640(v27, &qword_27D73BC88, &qword_225CDC648);
      v61 = *(v57 + 8 * v33);
      *(v61 + 16) = v4 + 1;
      v18 = &qword_27D73B3D0;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650) - 8);
      sub_2259D88EC(v112 + a1, v61 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v4, &qword_27D73B3D0, &qword_225CDC650);
      sub_2259CB640(v111 + a1, &qword_27D73B3D0, &qword_225CDC650);
      v45 = v108;
      v33 = v3;
    }

    while (v107 != v44);
  }

  v63 = v99;
  sub_225CCD2F4();
  v65 = v100;
  v64 = v101;
  if ((*(v100 + 48))(v63, 1, v101))
  {

    sub_2259CB640(v63, &qword_27D73AC30, &unk_225CDCF40);
    v18 = 0x8000000225D1AED0;
    v112 = 0x8000000225D1AF10;
    v4 = 0x8000000225D1AF50;
    v66 = MEMORY[0x277D84F90];
    v67 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v27 = v68;
    v69 = sub_225CCE954();
    v70 = *(v69 - 8);
    v71 = v97;
    (*(v70 + 56))(v97, 1, 1, v69);
    LODWORD(v69) = (*(v70 + 48))(v71, 1, v69);
    sub_2259CB640(v71, &unk_27D73B050, &unk_225CD3AD0);
    if (v69)
    {
      LOWORD(v44) = 107;
    }

    else
    {
      LOWORD(v44) = 23;
    }

    v72 = sub_225B2C374(v66);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v72;
    sub_225B2C4A0(v67, sub_225B2AC40, 0, v73, &v113);

    v33 = v113;
    v42 = sub_225B29AA0(0, 1, 1, v66);
    v3 = *(v42 + 2);
    v46 = *(v42 + 3);
    a1 = v3 + 1;
    if (v3 >= v46 >> 1)
    {
LABEL_45:
      v42 = sub_225B29AA0((v46 > 1), a1, 1, v42);
    }

    *(v42 + 2) = a1;
    v74 = &v42[56 * v3];
    *(v74 + 4) = 0xD000000000000030;
    *(v74 + 5) = v18;
    v75 = v112;
    *(v74 + 6) = 0xD000000000000038;
    *(v74 + 7) = v75;
    *(v74 + 8) = 0xD000000000000021;
    *(v74 + 9) = v4;
    *(v74 + 10) = 55;
    *v27 = v44;
    *(v27 + 1) = v42;
    *(v27 + 2) = 0xD000000000000030;
    *(v27 + 3) = v18;
    *(v27 + 4) = v33;
    *(v27 + 5) = 0;
    return swift_willThrow();
  }

  else
  {
    v77 = v98;
    (*(v65 + 32))(v98, v63, v64);
    v78 = v92;
    v79 = v95;
    v80 = &v95[*(v92 + 20)];
    v81 = type metadata accessor for ISO18013Response.IssuerSigned(0);
    (*(v65 + 16))(&v80[*(v81 + 20)], v77, v64);
    *v80 = v43;
    v82 = type metadata accessor for ISO18013Response.DeviceSigned(0);
    v83 = *(*(v82 - 8) + 56);
    v84 = v93;
    v83(v93, 1, 1, v82);
    v85 = *(v78 + 24);
    v83(&v79[v85], 1, 1, v82);
    v86 = *(v78 + 28);
    v87 = v105;
    *v79 = v104;
    *(v79 + 1) = v87;

    sub_225A82A74(v84, &v79[v85]);
    *&v79[v86] = 0;
    if (qword_27D739F60 != -1)
    {
      swift_once();
    }

    v88 = xmmword_27D73CBC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC90, &qword_225CDC658);
    v89 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_225CD30F0;
    sub_225A82B7C(v79, v90 + v89, type metadata accessor for ISO18013Response.Document);
    result = (*(v65 + 8))(v98, v64);
    v91 = v96;
    *v96 = v88;
    *(v91 + 2) = v90;
    *(v91 + 3) = 0;
    *(v91 + 32) = 0;
  }

  return result;
}

uint64_t sub_225A821D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v58 = a2;
  v55 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v13 = MEMORY[0x28223BE20](v54);
  v57 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v50 = &v48 - v15;
  v53 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v16 = *(v53 - 8);
  v17 = MEMORY[0x28223BE20](v53);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v52 = &v48 - v20;
  v21 = type metadata accessor for AnyCodable(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v51 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  if (!*(a5 + 16))
  {
    goto LABEL_13;
  }

  v26 = sub_2259F18D4(a1, v58);
  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  v48 = a6;
  v49 = v6;
  v28 = *(*(a5 + 56) + 8 * v26);
  v29 = *(v28 + 16);

  if (!v29)
  {
LABEL_12:

    a6 = v48;
LABEL_13:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88, &qword_225CDC648);
    return (*(*(v33 - 8) + 56))(a6, 1, 1, v33);
  }

  v31 = 0;
  while (1)
  {
    if (v31 >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    sub_225A82BE4(v28 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v31, v19, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v32 = *v19 == a3 && v19[1] == a4;
    if (v32 || (sub_225CCF934() & 1) != 0)
    {
      break;
    }

    ++v31;
    result = sub_225A82CA4(v19, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    if (v29 == v31)
    {
      goto LABEL_12;
    }
  }

  v34 = v52;
  sub_225A82B7C(v19, v52, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  v35 = v51;
  sub_225A82BE4(v34 + *(v53 + 20), v51, type metadata accessor for AnyCodable);
  sub_225A82CA4(v34, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  sub_225A82B7C(v35, v25, type metadata accessor for AnyCodable);
  v36 = v56;
  sub_225A82BE4(v25, &v56[*(v55 + 28)], type metadata accessor for AnyCodable);
  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0xC000000000000000;
  v36[3] = a3;
  v36[4] = a4;
  sub_225CCD424();
  swift_allocObject();

  sub_225CCD414();
  v37 = v57;
  *v57 = 24;
  v38 = *(v54 + 48);
  sub_225A82BE4(v36, v37 + v38, type metadata accessor for ISO18013IssuerSignedItem);
  sub_225A82C4C();
  v39 = v49;
  v40 = sub_225CCD3F4();
  v42 = v41;

  sub_225A82CA4(v36, type metadata accessor for ISO18013IssuerSignedItem);
  sub_225A82CA4(v25, type metadata accessor for AnyCodable);
  if (v39)
  {
    return sub_225A82CA4(v37 + v38, type metadata accessor for ISO18013IssuerSignedItem);
  }

  *(v37 + 8) = v40;
  *(v37 + 16) = v42;
  v43 = v50;
  sub_2259D88EC(v37, v50, &qword_27D73B3D0, &qword_225CDC650);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88, &qword_225CDC648);
  v45 = *(v44 + 48);
  v46 = v48;
  v47 = v58;
  *v48 = a1;
  v46[1] = v47;
  sub_2259D88EC(v43, v46 + v45, &qword_27D73B3D0, &qword_225CDC650);
  (*(*(v44 - 8) + 56))(v46, 0, 1, v44);
}

uint64_t sub_225A827B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v6 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_2259D5334(0, v3, 0);
  v4 = v34;
  v7 = v6 + 64;
  result = sub_225CCF0F4();
  v9 = result;
  v10 = 0;
  v27 = v6 + 72;
  v28 = v3;
  v29 = v6 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v10;
    v32 = *(v6 + 36);
    v13 = (*(v6 + 48) + 16 * v9);
    v14 = v13[1];
    v33 = *v13;
    v15 = v6;
    v16 = a3;
    v18 = *(v34 + 16);
    v17 = *(v34 + 24);

    if (v18 >= v17 >> 1)
    {
      result = sub_2259D5334((v17 > 1), v18 + 1, 1);
    }

    *(v34 + 16) = v18 + 1;
    v19 = (v34 + 32 * v18);
    v19[4] = a2;
    v19[5] = v16;
    v19[6] = v33;
    v19[7] = v14;
    v11 = 1 << *(v15 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    a3 = v16;
    v6 = v15;
    v7 = v29;
    v20 = *(v29 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v27 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2259D8B18(v9, v32, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2259D8B18(v9, v32, 0);
    }

LABEL_4:
    v10 = v31 + 1;
    v9 = v11;
    if (v31 + 1 == v28)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_225A82A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC88, &qword_225CDC648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A82A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78, &unk_225CDC630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A82AE4(uint64_t a1, int a2)
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

uint64_t sub_225A82B2C(uint64_t result, int a2, int a3)
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

uint64_t sub_225A82B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A82BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_225A82C4C()
{
  result = qword_27D73BC98;
  if (!qword_27D73BC98)
  {
    type metadata accessor for ISO18013IssuerSignedItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BC98);
  }

  return result;
}

uint64_t sub_225A82CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.isoBirthDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 20);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(uint64_t a1)
{
  result = qword_27D73BCE0;
  if (!qword_27D73BCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.japanBirthDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 24));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.birthDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 28);
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 32));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.individualNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 36));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.japanSex.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 44));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.localGovernmentCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 48));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.portrait.getter()
{
  v1 = v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 52);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.residentAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0) + 56));

  return v1;
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter()
{
  type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0);
}

uint64_t DeveloperTestJapanNationalIDCardCredentialBuilder.init()@<X0>(uint64_t *a1@<X8>)
{
  v160 = sub_225CCCD84();
  v151 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_225CCD1C4();
  v149 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0, &unk_225CDC6D0);
  v150 = *(v156 - 8);
  v4 = MEMORY[0x28223BE20](v156);
  v155 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v154 = (&v132 - v7);
  MEMORY[0x28223BE20](v6);
  v153 = &v132 - v8;
  v165 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v152 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_225CCCEA4();
  v147 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v146 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v166 = &v132 - v14;
  v164 = sub_225CCCB74();
  v145 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v144 = (&v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v140 = &v132 - v17;
  v141 = sub_225CCD0B4();
  v139 = *(v141 - 8);
  v18 = MEMORY[0x28223BE20](v141);
  v143 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  *&v142 = &v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8, &qword_225CDC6E8);
  MEMORY[0x28223BE20](v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0, &unk_225CDC6F0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v132 - v23;
  v25 = sub_225CCD1E4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_225CCD284();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder(0);
  v34 = (a1 + v33[6]);
  *v34 = 0x1000000000000013;
  v34[1] = 0x8000000225D1AF80;
  v135 = 0x8000000225D1AF80;
  v35 = (a1 + v33[8]);
  *v35 = 0x80E3B78FE5AA95E7;
  v35[1] = 0xAF90ADE5B18AE880;
  v36 = a1 + v33[9];
  strcpy(v36, "123466789012");
  v36[13] = 0;
  *(v36 + 7) = -5120;
  *(a1 + v33[10]) = 2;
  v37 = (a1 + v33[11]);
  *v37 = 11773413;
  v37[1] = 0xA300000000000000;
  v38 = (a1 + v33[12]);
  *v38 = 0x3436333431;
  v38[1] = 0xE500000000000000;
  v39 = (a1 + v33[14]);
  *v39 = 0x1000000000000030;
  v39[1] = 0x8000000225D1AFA0;
  v136 = 0x8000000225D1AFA0;
  (*(v26 + 104))(v28, *MEMORY[0x277CC9830], v25);
  sub_225CCD1F4();
  (*(v26 + 8))(v28, v25);
  v40 = a1;
  v41 = *(v30 + 16);
  v148 = v32;
  v42 = v32;
  v43 = v33;
  v44 = v140;
  v41(v24, v42, v29);
  v137 = v30;
  v45 = v30;
  v46 = v139;
  v47 = *(v45 + 56);
  v138 = v29;
  v48 = v29;
  v49 = v141;
  v47(v24, 0, 1, v48);
  sub_225CCD294();
  sub_225CCCB44();
  sub_225CCCAE4();
  v50 = *(v46 + 48);
  if (v50(v44, 1, v49) != 1)
  {
    v54 = v142;
    (*(v46 + 32))(v142, v44, v49);
    goto LABEL_5;
  }

  v51 = v142;
  sub_225CCD014();
  v52 = v50(v44, 1, v49);
  v53 = v51;
  if (v52 != 1)
  {
    v54 = v51;
    sub_2259CB640(v44, &unk_27D73FD00, &qword_225CDC6E0);
LABEL_5:
    v53 = v54;
  }

  v55 = v43[5];
  (*(v46 + 32))(&v55[a1], v53, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v56 = sub_225CCD264();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = swift_allocObject();
  v142 = xmmword_225CD30F0;
  *(v59 + 16) = xmmword_225CD30F0;
  (*(v57 + 104))(v59 + v58, *MEMORY[0x277CC9988], v56);
  sub_2259F4D58(v59);
  swift_setDeallocating();
  (*(v57 + 8))(v59 + v58, v56);
  swift_deallocClassInstance();
  v60 = v143;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v61 = v144;
  sub_225CCD214();

  (*(v46 + 8))(v60, v49);
  v62 = sub_225CCCAF4();
  LOBYTE(v56) = v63;
  (v145[1])(v61, v164);
  if (v56)
  {
    v64 = -1;
  }

  else
  {
    v64 = v62;
  }

  v164 = v64;
  *v40 = v64;
  if (qword_28105B8B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v65 = qword_28105E338;
  v66 = sub_225CCE444();
  v67 = sub_225CCE444();
  v68 = [v65 URLForResource:v66 withExtension:v67];

  v69 = v162;
  v70 = v147;
  if (v68)
  {
    v71 = v166;
    sub_225CCCE34();

    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v166;
  }

  v73 = v146;
  (*(v70 + 56))(v71, v72, 1, v69);
  sub_225A33B7C(v71, v73);
  if ((*(v70 + 48))(v73, 1, v69) == 1)
  {
    v74 = 0;
    v75 = 0xC000000000000000;
  }

  else
  {
    (*(v70 + 32))(v161, v73, v69);
    v74 = sub_225CCCEC4();
    v75 = v76;
    (*(v70 + 8))(v161, v69);
    v71 = v166;
  }

  sub_2259CB640(v71, &unk_27D73E090, &qword_225CD8ED0);
  v144 = v43;
  v77 = (v40 + v43[13]);
  *v77 = v74;
  v77[1] = v75;
  v134 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8, &unk_225CDC700);
  inited = swift_initStackObject();
  v166 = xmmword_225CD73B0;
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x2E6F73692E67726FLL;
  v143 = (inited + 32);
  v140 = inited;
  *(inited + 40) = 0xEF312E3032323332;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60, &qword_225CD4300);
  v80 = *(v163 + 72);
  v81 = *(v163 + 80);
  v82 = (v81 + 32) & ~v81;
  v133 = 3 * v80;
  v146 = v81;
  v147 = v79;
  v83 = swift_allocObject();
  *(v83 + 16) = v166;
  v163 = v82;
  v132 = v83;
  v84 = (v83 + v82);
  v85 = v165;
  v86 = *(v46 + 16);
  v87 = v84 + *(v165 + 20);
  v145 = v40;
  v86(v87, &v55[v40], v49);
  v88 = type metadata accessor for AnyCodable(0);
  swift_storeEnumTagMultiPayload();
  *v84 = 0x61645F6874726962;
  v84[1] = 0xEA00000000006574;
  v162 = v80;
  v89 = (v84 + v80);
  *(v84 + v80 + *(v85 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v89 = 7890291;
  v89[1] = 0xE300000000000000;
  v141 = 2 * v80;
  v90 = v84 + 2 * v80;
  *&v90[*(v85 + 20)] = v164;
  v161 = v88;
  swift_storeEnumTagMultiPayload();
  strcpy(v90, "age_in_years");
  v90[13] = 0;
  *(v90 + 7) = -5120;
  v170 = MEMORY[0x277D84F90];
  v91 = 100;
  result = sub_2259D5354(0, 100, 0);
  v43 = 0;
  v93 = 0;
  v94 = v170;
  ++v151;
  ++v150;
  ++v149;
  v49 = v157;
  v40 = v154;
  while (1)
  {
    *&v166 = v91;
    if (v93)
    {
      break;
    }

    v167 = v43;
    sub_225CCD164();
    sub_225A84D38();
    v96 = v155;
    sub_225CCCBB4();
    v168 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0, &unk_225CDC710);
    sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0, &unk_225CDC710, MEMORY[0x277D84338]);
    v97 = v159;
    sub_225CCCD64();
    v46 = v156;
    MEMORY[0x22AA6B410](v97, v156);
    (*v151)(v97, v160);
    v55 = v150;
    v98 = *v150;
    (*v150)(v96, v46);
    sub_225CCD134();
    v99 = v153;
    MEMORY[0x22AA6B400](v49, v46);
    (*v149)(v49, v158);
    v98(v40, v46);
    sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0, &unk_225CDC6D0, MEMORY[0x277CC8CE8]);
    sub_225CCF084();
    v98(v99, v46);
    v100 = v168;
    v101 = v169;
    v168 = 0x7265766F5F656761;
    v169 = 0xE90000000000005FLL;
    MEMORY[0x22AA6CE70](v100, v101);

    v102 = v168;
    v103 = v169;
    v104 = v152;
    v152[*(v165 + 20)] = v164 >= v43;
    swift_storeEnumTagMultiPayload();
    *v104 = v102;
    v104[1] = v103;
    v170 = v94;
    v106 = *(v94 + 16);
    v105 = *(v94 + 24);
    if (v106 >= v105 >> 1)
    {
      sub_2259D5354((v105 > 1), v106 + 1, 1);
      v94 = v170;
    }

    *(v94 + 16) = v106 + 1;
    result = sub_225A84D8C(v104, v94 + v163 + v106 * v162);
    v93 = v43 == 99;
    if (v43 == 99)
    {
      v43 = 0;
      v95 = v166;
    }

    else
    {
      v107 = __OFADD__(v43, 1);
      v43 = (v43 + 1);
      v95 = v166;
      if (v107)
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    v91 = v95 - 1;
    if (!v91)
    {
      v168 = v132;
      sub_225A8472C(v94);
      v108 = v140;
      *(v140 + 6) = v168;
      v108[7] = 0xD000000000000012;
      v108[8] = 0x8000000225D0ACF0;
      v109 = v163;
      v110 = v162;
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_225CDC6C0;
      v112 = (v111 + v109);
      v113 = v165;
      v114 = (v111 + v109 + *(v165 + 20));
      *v114 = 0x80E3B78FE5AA95E7;
      v114[1] = 0xAF90ADE5B18AE880;
      swift_storeEnumTagMultiPayload();
      *v112 = 0xD000000000000011;
      v112[1] = 0x8000000225D0B490;
      v115 = (v111 + v109 + v110);
      v116 = (v115 + *(v113 + 20));
      *v116 = 0x1000000000000013;
      v116[1] = v135;
      swift_storeEnumTagMultiPayload();
      *v115 = 0xD000000000000012;
      v115[1] = 0x8000000225D0B4B0;
      v117 = (v111 + v109 + v141);
      v118 = (v117 + *(v113 + 20));
      *v118 = 0x3436333431;
      v118[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *v117 = 0xD000000000000016;
      v117[1] = 0x8000000225D0B470;
      v119 = (v111 + v109 + v133);
      v120 = v119 + *(v113 + 20);
      strcpy(v120, "123466789012");
      v120[13] = 0;
      *(v120 + 7) = -5120;
      swift_storeEnumTagMultiPayload();
      *v119 = 0xD000000000000019;
      v119[1] = 0x8000000225D0B4D0;
      v121 = (v111 + v109 + 4 * v110);
      v122 = (v121 + *(v113 + 20));
      *v122 = 11773413;
      v122[1] = 0xA300000000000000;
      swift_storeEnumTagMultiPayload();
      *v121 = 0x63696E755F786573;
      v121[1] = 0xEB0000000065646FLL;
      v123 = (v111 + v109 + 5 * v110);
      v124 = *v134;
      v125 = v134[1];
      v126 = (v123 + *(v113 + 20));
      *v126 = *v134;
      v126[1] = v125;
      swift_storeEnumTagMultiPayload();
      *v123 = 0x7469617274726F70;
      v123[1] = 0xE800000000000000;
      v127 = (v111 + v109 + 6 * v110);
      v128 = (v127 + *(v113 + 20));
      v129 = v136;
      *v128 = 0x1000000000000030;
      v128[1] = v129;
      swift_storeEnumTagMultiPayload();
      *v127 = 0xD000000000000018;
      v127[1] = 0x8000000225D0B410;
      v108[9] = v111;
      v108[10] = 0xD00000000000002DLL;
      v108[11] = 0x8000000225D1B000;
      v130 = swift_allocObject();
      *(v130 + 16) = v142;
      *(v130 + v109 + *(v113 + 20)) = 1;
      swift_storeEnumTagMultiPayload();
      strcpy((v130 + v109), "test_document");
      *(v130 + v109 + 14) = -4864;
      v108[12] = v130;
      sub_2259CB710(v124, v125);
      v131 = sub_225B2D58C(v108);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8, &qword_225CDC810);
      swift_arrayDestroy();
      result = (*(v137 + 8))(v148, v138);
      *(v145 + v144[15]) = v131;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225A8472C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_225B2A248(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_225A84858(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B2A398(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20, &qword_225CD42C8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_225A8495C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B2A6D0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD00, &unk_225CDC7C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_225A84A64(uint64_t result)
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

  result = sub_225B29CD4(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_225A84B50(uint64_t result)
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

  result = sub_225B2AB30(result, v11, 1, v3);
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

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

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

uint64_t sub_225A84C44(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_225B29BC8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_225A84D38()
{
  result = qword_28105B8F0;
  if (!qword_28105B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B8F0);
  }

  return result;
}

uint64_t sub_225A84D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225A84E18(uint64_t a1)
{
  sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    sub_225CCCB74();
    if (v2 <= 0x3F)
    {
      sub_225A84EEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225A84EEC(uint64_t a1)
{
  if (!qword_27D73BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BCF8, &qword_225CDCC10);
    v1 = sub_225CCE324();
    if (!v2)
    {
      atomic_store(v1, &qword_27D73BCF0);
    }
  }
}

void static DeveloperTestMDLCredentialBuilder.payloadElements.getter()
{
  v327 = sub_225CCCD84();
  v292 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v326 = v269 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_225CCD1C4();
  v291 = *(v325 - 1);
  MEMORY[0x28223BE20](v325);
  v324 = v269 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0, &unk_225CDC6D0);
  v290 = *(v323 - 8);
  v2 = MEMORY[0x28223BE20](v323);
  v322 = v269 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v321 = v269 - v5;
  MEMORY[0x28223BE20](v4);
  v320 = v269 - v6;
  v331 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v319 = v269 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = type metadata accessor for AnyCodable(0);
  v299 = *(v332 - 8);
  v8 = MEMORY[0x28223BE20](v332);
  v285 = (v269 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v289 = (v269 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v295 = v269 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v300 = v269 - v15;
  MEMORY[0x28223BE20](v14);
  v306 = (v269 - v16);
  v329 = sub_225CCCEA4();
  v317 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v318 = v269 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v316 = v269 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v333 = v269 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v22 - 8);
  v310 = v269 - v23;
  v24 = sub_225CCD1E4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v269 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_225CCD284();
  v315 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v29 = v269 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_225CCCB74();
  v309 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v308 = v269 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_225CCD0B4();
  v334 = *(v313 - 8);
  v31 = MEMORY[0x28223BE20](v313);
  v284 = v269 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v287 = v269 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v288 = v269 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v294 = v269 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v269 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v307 = v269 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = v269 - v44;
  v46 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v47 = sub_225CCE444();
  v48 = [v46 dateFromString_];

  if (!v48)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v301 = v45;
  sub_225CCD094();

  (*(v25 + 104))(v27, *MEMORY[0x277CC9830], v24);
  sub_225CCD1F4();
  (*(v25 + 8))(v27, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v49 = sub_225CCD264();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = swift_allocObject();
  v312 = xmmword_225CD30F0;
  *(v52 + 16) = xmmword_225CD30F0;
  (*(v50 + 104))(v52 + v51, *MEMORY[0x277CC9988], v49);
  sub_2259F4D58(v52);
  swift_setDeallocating();
  (*(v50 + 8))(v52 + v51, v49);
  swift_deallocClassInstance();
  v53 = sub_225CCE444();
  v314 = v46;
  v54 = [v46 dateFromString_];

  if (v54)
  {
    sub_225CCD094();

    v55 = v334;
    v56 = *(v334 + 32);
    v57 = v310;
    v58 = v313;
    v56(v310, v41, v313);
    (*(v55 + 56))(v57, 0, 1, v58);
    v59 = v307;
    v56(v307, v57, v58);
    v60 = v333;
  }

  else
  {
    v55 = v334;
    v61 = v310;
    v58 = v313;
    (*(v334 + 56))(v310, 1, 1, v313);
    v59 = v307;
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    v62 = (*(v55 + 48))(v61, 1, v58);
    v60 = v333;
    if (v62 != 1)
    {
      sub_2259CB640(v61, &unk_27D73FD00, &qword_225CDC6E0);
    }
  }

  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v63 = v308;
  sub_225CCD214();

  v64 = v59;
  v65 = v55 + 8;
  v66 = *(v55 + 8);
  v66(v41, v58);
  v66(v64, v58);
  (*(v315 + 8))(v29, v328);
  v67 = sub_225CCCAF4();
  v69 = v68;
  (*(v309 + 1))(v63, v311);
  v70 = 35;
  if ((v69 & 1) == 0)
  {
    v70 = v67;
  }

  v328 = v70;
  v71 = v331;
  if (qword_28105B8B8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v72 = qword_28105E338;
  v73 = sub_225CCE444();
  v74 = sub_225CCE444();
  v75 = [v72 URLForResource:v73 withExtension:v74];

  if (v75)
  {
    sub_225CCCE34();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v329;
  v78 = v316;
  v79 = v317;
  (*(v317 + 56))(v60, v76, 1, v329);
  sub_225A33B7C(v60, v78);
  v80 = (*(v79 + 48))(v78, 1, v77);
  v273 = v65;
  v272 = v66;
  if (v80 == 1)
  {
    v81 = 0;
    v82 = 0xF000000000000000;
  }

  else
  {
    (*(v79 + 32))(v318, v78, v77);
    v83 = (v79 + 8);
    v81 = sub_225CCCEC4();
    v85 = v84;
    (*v83)(v318, v77);
    v82 = v85;
  }

  sub_2259CB640(v333, &unk_27D73E090, &qword_225CD8ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8, &unk_225CDC700);
  inited = swift_initStackObject();
  v333 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  v271 = inited + 32;
  v305 = xmmword_225CD73B0;
  *(inited + 16) = xmmword_225CD73B0;
  v298 = inited;
  *(inited + 40) = 0x8000000225D0ACA0;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60, &qword_225CD4300);
  v88 = *(v330 + 72);
  v89 = (*(v330 + 80) + 32) & ~*(v330 + 80);
  v296 = *(v330 + 80);
  v297 = v87;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_225CDC7D0;
  v329 = v89;
  v286 = v90;
  v91 = (v90 + v89);
  v92 = (v90 + v89 + *(v71 + 5));
  *v92 = 0x796C6C654BLL;
  v92[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v91 = 0x616E5F6E65766967;
  v91[1] = 0xEA0000000000656DLL;
  v93 = (v91 + v88);
  v94 = (v91 + v88 + *(v71 + 5));
  *v94 = 0x616963726147;
  v94[1] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  *v93 = 0x6E5F796C696D6166;
  v93[1] = 0xEB00000000656D61;
  if (v82 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v95 = (v91 + 2 * v88);
  v96 = v306;
  *v306 = v81;
  *(v96 + 8) = v82;
  swift_storeEnumTagMultiPayload();
  *v95 = 0x7469617274726F70;
  v95[1] = 0xE800000000000000;
  sub_225A87A00(v96, v95 + *(v71 + 5), type metadata accessor for AnyCodable);
  v283 = 2 * v88;
  v97 = (v91 + 3 * v88);
  v303 = v82;
  v98 = (v97 + *(v71 + 5));
  *v98 = 0x6E69614D20353432;
  v98[1] = 0xEF74656572745320;
  swift_storeEnumTagMultiPayload();
  v304 = v81;
  *v97 = 0xD000000000000010;
  v97[1] = 0x8000000225D0AE10;
  v99 = v91 + 4 * v88;
  v100 = &v99[*(v71 + 5)];
  *v100 = 0x78696E656F6850;
  *(v100 + 1) = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(v99, "resident_city");
  *(v99 + 7) = -4864;
  v280 = 4 * v88;
  v101 = v91 + 5 * v88;
  v102 = &v101[*(v71 + 5)];
  *v102 = 23105;
  *(v102 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(v101, "resident_state");
  v101[15] = -18;
  v278 = 6 * v88;
  v103 = (v91 + 6 * v88);
  v104 = (v103 + *(v331 + 20));
  *v104 = 4281173;
  v104[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v103 = 0xD000000000000010;
  v103[1] = 0x8000000225D0AED0;
  v276 = 7 * v88;
  v105 = (v91 + 7 * v88);
  v106 = (v105 + *(v331 + 20));
  *v106 = 0x3435323538;
  v106[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v105 = 0xD000000000000014;
  v105[1] = 0x8000000225D0AEB0;
  v107 = &v91[v88];
  *(v107 + *(v331 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v107 = 7890291;
  v107[1] = 0xE300000000000000;
  v281 = 8 * v88;
  v277 = 9 * v88;
  v108 = (v91 + 9 * v88);
  v109 = (v108 + *(v331 + 20));
  *v109 = 0xD000000000000016;
  v109[1] = 0x8000000225D1B050;
  swift_storeEnumTagMultiPayload();
  *v108 = v333;
  v108[1] = 0x8000000225D0AD50;
  v110 = v331;
  v279 = 5 * v88;
  v275 = 10 * v88;
  v111 = (v91 + 10 * v88);
  v112 = (v111 + *(v331 + 20));
  *v112 = 0x58582D5858;
  v112[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v111 = 0xD000000000000014;
  v111[1] = 0x8000000225D0AE70;
  v270 = 11 * v88;
  v113 = (v91 + 11 * v88);
  v114 = (v113 + *(v110 + 20));
  *v114 = 22616;
  v114[1] = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v113 = 0x5F676E6975737369;
  v113[1] = 0xEF7972746E756F63;
  v282 = 3 * v88;
  v274 = 12 * v88;
  v115 = (v91 + 12 * v88);
  v116 = (v115 + *(v110 + 20));
  *v116 = 4271950;
  v116[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v115 = 0xD000000000000016;
  v115[1] = 0x8000000225D0ADA0;
  sub_2259CB710(v304, v303);
  v302 = "Test Issuing Authority";
  v117 = sub_225CCE444();
  v118 = [v314 dateFromString_];

  if (!v118)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v119 = (v91 + 13 * v88);
  v120 = v300;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v119 = 0x645F797269707865;
  v119[1] = 0xEB00000000657461;
  sub_225A87A00(v120, v119 + *(v110 + 20), type metadata accessor for AnyCodable);
  v121 = (v91 + 14 * v88);
  v122 = (v121 + *(v110 + 20));
  *v122 = 0x3736353433323144;
  v122[1] = 0xE900000000000038;
  swift_storeEnumTagMultiPayload();
  *v121 = 0x746E656D75636F64;
  v121[1] = 0xEF7265626D756E5FLL;
  v123 = sub_225CCE444();
  v124 = [v314 dateFromString_];

  if (!v124)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v125 = (v91 + 15 * v88);
  v126 = v295;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v125 = 0x61645F6575737369;
  v125[1] = 0xEA00000000006574;
  sub_225A87A00(v126, v125 + *(v110 + 20), type metadata accessor for AnyCodable);
  v127 = &v91[2 * v88];
  v128 = (v127 + *(v110 + 20));
  *v128 = 1702194274;
  v128[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v127 = 0x6F6C6F635F657965;
  v127[1] = 0xEA00000000007275;
  v129 = (v91 + 17 * v88);
  v130 = (v129 + *(v110 + 20));
  *v130 = 0x6E776F7262;
  v130[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v129 = 0x6C6F635F72696168;
  v129[1] = 0xEB0000000072756FLL;
  v131 = (v91 + 18 * v88);
  *(v131 + *(v110 + 20)) = 160;
  swift_storeEnumTagMultiPayload();
  *v131 = 0x746867696568;
  v131[1] = 0xE600000000000000;
  v330 = v88;
  v333 = v91;
  v132 = (v91 + 19 * v88);
  *(v132 + *(v110 + 20)) = 65;
  swift_storeEnumTagMultiPayload();
  *v132 = 0x746867696577;
  v132[1] = 0xE600000000000000;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD08, &qword_225CDC7F0);
  v134 = *(v299 + 72);
  v135 = *(v299 + 80);
  v300 = ((v135 + 32) & ~v135);
  v310 = v135;
  v311 = v133;
  v309 = &v300[v134];
  v318 = swift_allocObject();
  *(v318 + 16) = v312;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD10, &qword_225CDC7F8);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD18, &unk_225CDC800);
  v138 = *(*(v137 - 8) + 72);
  v139 = *(*(v137 - 8) + 80);
  v140 = (v139 + 32) & ~v139;
  v269[0] = 3 * v138;
  v307 = v139;
  v308 = v136;
  v269[1] = v140 + 3 * v138;
  v141 = swift_allocObject();
  *(v141 + 16) = v305;
  v295 = v140;
  v317 = v141;
  v142 = (v141 + v140);
  v143 = (v142 + *(v137 + 48));
  *v142 = 0xD000000000000015;
  v142[1] = 0x8000000225D0AF50;
  *v143 = 68;
  v143[1] = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  v144 = (v138 + v142);
  *v144 = 0x61645F6575737369;
  v144[1] = 0xEA00000000006574;
  v269[2] = "2052-02-10T00:00:00Z";
  v145 = sub_225CCE444();
  v146 = v314;
  v147 = [v314 dateFromString_];

  if (!v147)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v148 = *(v137 + 48);
  v149 = v294;
  sub_225CCD094();

  v150 = (v334 + 32);
  v299 = *(v334 + 32);
  (v299)(v144 + v148, v149, v313);
  swift_storeEnumTagMultiPayload();
  v306 = v138;
  v294 = (2 * v138);
  v151 = (v142 + 2 * v138);
  *v151 = 0x645F797269707865;
  v151[1] = 0xEB00000000657461;
  v152 = sub_225CCE444();
  v153 = [v146 dateFromString_];

  if (!v153)
  {
    goto LABEL_40;
  }

  v154 = v330;
  v155 = (v333 + 20 * v330);
  v316 = 0x8000000225D0AD80;
  v156 = *(v137 + 48);
  v157 = v137;
  v158 = v288;
  sub_225CCD094();

  v159 = v158;
  v160 = v313;
  v288 = v150;
  (v299)(v151 + v156, v159, v313);
  swift_storeEnumTagMultiPayload();
  v161 = sub_225B2D5A0(v317);
  swift_setDeallocating();
  v293 = v157;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v162 = v318;
  *&v300[v318] = v161;
  swift_storeEnumTagMultiPayload();
  v163 = v289;
  *v289 = v162;
  swift_storeEnumTagMultiPayload();
  v164 = v316;
  *v155 = 0xD000000000000012;
  v155[1] = v164;
  v165 = v331;
  sub_225A87A00(v163, v155 + *(v331 + 20), type metadata accessor for AnyCodable);
  v166 = v333;
  v167 = (v333 + 21 * v154);
  *&v167[*(v165 + 20)] = v328;
  swift_storeEnumTagMultiPayload();
  strcpy(v167, "age_in_years");
  v167[13] = 0;
  *(v167 + 7) = -5120;
  v168 = (v166 + 22 * v154);
  (*(v334 + 16))(&v168[*(v165 + 20)], v301, v160);
  swift_storeEnumTagMultiPayload();
  *v168 = 0x61645F6874726962;
  *(v168 + 1) = 0xEA00000000006574;
  v338 = MEMORY[0x277D84F90];
  v169 = 100;
  sub_2259D5354(0, 100, 0);
  v170 = 0;
  v171 = 0;
  v172 = v338;
  v318 = v292 + 8;
  v317 = v290 + 8;
  v316 = (v291 + 8);
  v315 = 0xE90000000000005FLL;
  v71 = v320;
  do
  {
    v334 = v169;
    if (v171)
    {
      __break(1u);
      goto LABEL_35;
    }

    LODWORD(v333) = v328 >= v170;
    v335 = v170;
    v173 = v324;
    sub_225CCD164();
    sub_225A84D38();
    v174 = v322;
    sub_225CCCBB4();
    v336 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0, &unk_225CDC710);
    sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0, &unk_225CDC710, MEMORY[0x277D84338]);
    v175 = v326;
    sub_225CCCD64();
    v176 = v321;
    v177 = v323;
    MEMORY[0x22AA6B410](v175, v323);
    (*v318)(v175, v327);
    v178 = *v317;
    (*v317)(v174, v177);
    sub_225CCD134();
    MEMORY[0x22AA6B400](v173, v177);
    (*v316)(v173, v325);
    v178(v176, v177);
    sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0, &unk_225CDC6D0, MEMORY[0x277CC8CE8]);
    sub_225CCF084();
    v178(v71, v177);
    v179 = v336;
    v180 = v337;
    v336 = 0x7265766F5F656761;
    v337 = v315;
    MEMORY[0x22AA6CE70](v179, v180);

    v181 = v336;
    v182 = v337;
    v183 = v319;
    v319[*(v331 + 20)] = v333;
    swift_storeEnumTagMultiPayload();
    *v183 = v181;
    v183[1] = v182;
    v338 = v172;
    v65 = *(v172 + 16);
    v184 = *(v172 + 24);
    v66 = (v65 + 1);
    if (v65 >= v184 >> 1)
    {
      sub_2259D5354((v184 > 1), v65 + 1, 1);
      v172 = v338;
    }

    *(v172 + 16) = v66;
    v185 = v330;
    sub_225A87A00(v183, v172 + v329 + v65 * v330, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v171 = v170 == 99;
    if (v170 == 99)
    {
      v170 = 0;
      v60 = v334;
    }

    else
    {
      v186 = __OFADD__(v170++, 1);
      v60 = v334;
      if (v186)
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    v169 = v60 - 1;
  }

  while (v169);
  v336 = v286;
  sub_225A8472C(v172);
  v187 = v298;
  v298[6] = v336;
  v187[7] = 0xD000000000000017;
  v187[8] = 0x8000000225D0ACC0;
  v188 = v329;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_225CDC7E0;
  v328 = v189;
  v190 = (v189 + v188);
  v191 = v331;
  v192 = (v189 + v188 + *(v331 + 20));
  *v192 = 78;
  v192[1] = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *v190 = 0xD000000000000015;
  *(v190 + 1) = 0x8000000225D0AFE0;
  v193 = &v190[v185 + *(v191 + 20)];
  *v193 = 0x796C6C654BLL;
  *(v193 + 1) = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  strcpy(&v190[v185], "aka_given_name");
  v190[v185 + 15] = -18;
  v194 = &v190[v283];
  v195 = &v190[v283 + *(v191 + 20)];
  *v195 = 21066;
  *(v195 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v194 = 0x6675735F656D616ELL;
  *(v194 + 1) = 0xEB00000000786966;
  v196 = &v190[v282];
  v197 = &v190[v282 + *(v191 + 20)];
  *v197 = 21066;
  *(v197 + 1) = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v196 = 0x666675735F616B61;
  *(v196 + 1) = 0xEA00000000007869;
  v198 = &v190[v280];
  v199 = &v190[v280 + *(v191 + 20)];
  *v199 = 78;
  *(v199 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *v198 = 0xD000000000000016;
  *(v198 + 1) = 0x8000000225D0AFC0;
  v200 = &v190[v279];
  v201 = &v190[v279 + *(v191 + 20)];
  *v201 = 0x616963726147;
  *(v201 + 1) = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  *v200 = 0x696D61665F616B61;
  *(v200 + 1) = 0xEF656D616E5F796CLL;
  v202 = &v190[v278];
  *&v190[v278 + *(v191 + 20)] = 2;
  swift_storeEnumTagMultiPayload();
  *v202 = 7890291;
  *(v202 + 1) = 0xE300000000000000;
  v203 = &v190[v276];
  *&v190[v276 + *(v191 + 20)] = 1;
  swift_storeEnumTagMultiPayload();
  strcpy(v203, "CDL_indicator");
  *(v203 + 7) = -4864;
  v204 = &v190[v281];
  v205 = &v190[v281 + *(v191 + 20)];
  *v205 = 70;
  *(v205 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  *&v190[8 * v185] = 0x706D6F635F534844;
  *(v204 + 1) = 0xEE0065636E61696CLL;
  v206 = &v190[v277];
  *&v190[v277 + *(v191 + 20)] = 1;
  swift_storeEnumTagMultiPayload();
  *v206 = 0x6F645F6E6167726FLL;
  *(v206 + 1) = 0xEB00000000726F6ELL;
  v207 = &v190[v275];
  *&v190[v275 + *(v191 + 20)] = 0;
  swift_storeEnumTagMultiPayload();
  *v207 = 0x6E617265746576;
  *(v207 + 1) = 0xE700000000000000;
  v333 = swift_allocObject();
  *(v333 + 16) = v312;
  v208 = swift_allocObject();
  *(v208 + 16) = v305;
  v209 = v295;
  v327 = v208;
  v210 = &v295[v208];
  *v210 = 0xD000000000000016;
  *(v210 + 1) = 0x8000000225D0B1D0;
  v334 = v210;
  v211 = v306;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_225CD73A0;
  v326 = v212;
  v213 = &v209[v212];
  v214 = v293;
  v215 = &v213[*(v293 + 48)];
  *v213 = 0xD00000000000001BLL;
  *(v213 + 1) = 0x8000000225D0B230;
  *v215 = 68;
  *(v215 + 1) = 0xE100000000000000;
  swift_storeEnumTagMultiPayload();
  v216 = (v211 + v213);
  v217 = (v211 + v213 + *(v214 + 48));
  *v216 = 0xD000000000000022;
  v216[1] = 0x8000000225D0B250;
  *v217 = 1701736270;
  v217[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v218 = &v294[v213];
  *v218 = 0x61645F6575737369;
  *(v218 + 1) = 0xEA00000000006574;
  v219 = sub_225CCE444();
  v220 = [v314 dateFromString_];

  if (!v220)
  {
    goto LABEL_41;
  }

  v221 = *(v214 + 48);
  v222 = v287;
  sub_225CCD094();

  v223 = v299;
  (v299)(&v218[v221], v222, v313);
  swift_storeEnumTagMultiPayload();
  v224 = &v213[v269[0]];
  *v224 = 0x645F797269707865;
  *(v224 + 1) = 0xEB00000000657461;
  v225 = sub_225CCE444();
  v226 = [v314 dateFromString_];

  if (v226)
  {
    v325 = &v190[v270];
    v324 = 0x8000000225D0AF80;
    v227 = *(v293 + 48);
    v228 = v293;
    v229 = v284;
    sub_225CCD094();

    v223(&v224[v227], v229, v313);
    swift_storeEnumTagMultiPayload();
    v230 = sub_225B2D5A0(v326);
    swift_setDeallocating();
    v231 = v228;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v232 = v334;
    *(v334 + v227) = v230;
    swift_storeEnumTagMultiPayload();
    v233 = (v306 + v232);
    v234 = v306;
    v235 = *(v231 + 48);
    v326 = 0xD00000000000001DLL;
    *v233 = 0xD00000000000001DLL;
    v233[1] = 0x8000000225D0B1F0;
    v236 = swift_allocObject();
    *(v236 + 16) = v312;
    v237 = v295;
    v238 = v294;
    v239 = swift_allocObject();
    v323 = xmmword_225CD4890;
    *(v239 + 16) = xmmword_225CD4890;
    v240 = &v237[v239];
    v241 = &v237[v239 + v235];
    v322 = 0xD000000000000021;
    *v240 = 0xD000000000000021;
    *(v240 + 1) = 0x8000000225D0B280;
    *v241 = 1701736270;
    *(v241 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v242 = &v237[v239 + v234];
    v243 = *(v231 + 48);
    v321 = 0xD000000000000028;
    *v242 = 0xD000000000000028;
    *(v242 + 1) = 0x8000000225D0B2B0;
    v244 = &v242[v243];
    *v244 = 1701736270;
    *(v244 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v245 = sub_225B2D5A0(v239);
    swift_setDeallocating();
    v246 = v231;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v247 = v300;
    *&v300[v236] = v245;
    swift_storeEnumTagMultiPayload();
    *(v233 + v235) = v236;
    swift_storeEnumTagMultiPayload();
    v248 = &v238[v334];
    v249 = *(v246 + 48);
    v250 = v246;
    *v248 = v326;
    *(v248 + 1) = 0x8000000225D0B210;
    v251 = swift_allocObject();
    *(v251 + 16) = v312;
    v252 = swift_allocObject();
    *(v252 + 16) = v323;
    v253 = &v237[v252];
    *v253 = v322;
    *(v253 + 1) = 0x8000000225D0B2E0;
    v254 = &v237[v252 + v249];
    *v254 = 1701736270;
    *(v254 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v255 = &v237[v252 + v306];
    v256 = *(v250 + 48);
    *v255 = v321;
    *(v255 + 1) = 0x8000000225D0B310;
    v257 = &v255[v256];
    *v257 = 1701736270;
    *(v257 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    v258 = sub_225B2D5A0(v252);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *&v247[v251] = v258;
    swift_storeEnumTagMultiPayload();
    *&v248[v249] = v251;
    swift_storeEnumTagMultiPayload();
    v259 = sub_225B2D5A0(v327);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v260 = v333;
    *&v247[v333] = v259;
    swift_storeEnumTagMultiPayload();
    v261 = v285;
    *v285 = v260;
    swift_storeEnumTagMultiPayload();
    v262 = v325;
    v263 = v324;
    *v325 = 0xD00000000000001BLL;
    *(v262 + 1) = v263;
    v264 = v331;
    sub_225A87A00(v261, &v262[*(v331 + 20)], type metadata accessor for AnyCodable);
    v265 = v298;
    v298[9] = v328;
    v265[10] = 0xD00000000000002DLL;
    v265[11] = 0x8000000225D1B000;
    v266 = v329;
    v267 = swift_allocObject();
    *(v267 + 16) = v312;
    v268 = v267 + v266;
    *(v268 + *(v264 + 20)) = 1;
    swift_storeEnumTagMultiPayload();
    strcpy(v268, "test_document");
    *(v268 + 14) = -4864;
    v265[12] = v267;
    sub_225B2D58C(v265);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8, &qword_225CDC810);
    swift_arrayDestroy();
    sub_2259B97A8(v304, v303);

    v272(v301, v313);
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_225A87A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.familyNameLatin1.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.givenName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.givenNameLatin1.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 36);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(uint64_t a1)
{
  result = qword_27D73BD20;
  if (!qword_27D73BD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 40);
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.portrait.getter()
{
  v1 = v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 48);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 52));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 56));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCityLatin1.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 60));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentPostalCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 64));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 68));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingAuthority.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 72));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingSubdivision.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 76));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.issuingCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 80));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 84));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.personID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 88));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthCountry.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 92));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthState.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 96));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.birthCity.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 100));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.administrativeNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 104));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentStreet.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 108));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentHouseNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 112));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.residentState.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 116));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.travelDocumentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0) + 120));

  return v1;
}

uint64_t DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter()
{
  type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0);
}

void DeveloperTestPhotoIDCredentialBuilder.init()(char *a1@<X8>)
{
  v230 = sub_225CCCD84();
  v206 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v229 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_225CCD1C4();
  v205 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v227 = &v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0, &unk_225CDC6D0);
  v204 = *(v226 - 8);
  v4 = MEMORY[0x28223BE20](v226);
  v225 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v224 = &v192 - v7;
  MEMORY[0x28223BE20](v6);
  v223 = &v192 - v8;
  v234 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v222 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for AnyCodable(0);
  v10 = MEMORY[0x28223BE20](v235);
  v203 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v207 = &v192 - v13;
  MEMORY[0x28223BE20](v12);
  v208 = &v192 - v14;
  v221 = sub_225CCCEA4();
  v218 = *(v221 - 1);
  MEMORY[0x28223BE20](v221);
  v220 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v215 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v219 = (&v192 - v19);
  v232 = sub_225CCCB74();
  v214 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v213 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v21 - 8);
  *&v210 = &v192 - v22;
  v236 = sub_225CCD0B4();
  v231 = *(v236 - 8);
  v23 = MEMORY[0x28223BE20](v236);
  v212 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v211 = &v192 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8, &qword_225CDC6E8);
  MEMORY[0x28223BE20](v26 - 8);
  v209 = &v192 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0, &unk_225CDC6F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v192 - v29;
  v31 = sub_225CCD1E4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v192 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_225CCD284();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 6647620;
  *(a1 + 1) = 0xE300000000000000;
  *(a1 + 2) = 6647620;
  *(a1 + 3) = 0xE300000000000000;
  *(a1 + 4) = 1701732682;
  *(a1 + 5) = 0xE400000000000000;
  *(a1 + 6) = 1701732682;
  *(a1 + 7) = 0xE400000000000000;
  v39 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder(0);
  *&a1[v39[11]] = 2;
  v40 = &a1[v39[13]];
  *v40 = 0x6E69614D20353432;
  *(v40 + 1) = 0xEF74656572745320;
  v41 = &a1[v39[14]];
  *v41 = 0x78696E656F6850;
  *(v41 + 1) = 0xE700000000000000;
  v42 = &a1[v39[15]];
  *v42 = 0x78696E656F6850;
  *(v42 + 1) = 0xE700000000000000;
  v43 = &a1[v39[16]];
  *v43 = 0x3435323538;
  *(v43 + 1) = 0xE500000000000000;
  v44 = &a1[v39[17]];
  *v44 = 21333;
  *(v44 + 1) = 0xE200000000000000;
  v45 = &a1[v39[18]];
  *v45 = 0xD000000000000016;
  *(v45 + 1) = 0x8000000225D1B050;
  v202 = 0x8000000225D1B050;
  v46 = &a1[v39[19]];
  *v46 = 0x58582D5858;
  *(v46 + 1) = 0xE500000000000000;
  v47 = &a1[v39[20]];
  *v47 = 22616;
  *(v47 + 1) = 0xE200000000000000;
  v48 = &a1[v39[21]];
  strcpy(v48, "PhotoID1234567");
  v48[15] = -18;
  v49 = &a1[v39[22]];
  strcpy(v49, "PersonID98765");
  *(v49 + 7) = -4864;
  v50 = &a1[v39[23]];
  *v50 = 21333;
  *(v50 + 1) = 0xE200000000000000;
  v51 = &a1[v39[24]];
  *v51 = 23105;
  *(v51 + 1) = 0xE200000000000000;
  v52 = &a1[v39[25]];
  *v52 = 0x78696E656F6850;
  *(v52 + 1) = 0xE700000000000000;
  v53 = &a1[v39[26]];
  *v53 = 0x3938373635323141;
  *(v53 + 1) = 0xE800000000000000;
  v54 = &a1[v39[27]];
  *v54 = 0x727453206E69614DLL;
  *(v54 + 1) = 0xEB00000000746565;
  v55 = &a1[v39[28]];
  *v55 = 3486770;
  *(v55 + 1) = 0xE300000000000000;
  v56 = &a1[v39[29]];
  *v56 = 23105;
  *(v56 + 1) = 0xE200000000000000;
  v57 = &a1[v39[30]];
  *v57 = 0x36353433323154;
  *(v57 + 1) = 0xE700000000000000;
  v216 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  (*(v32 + 104))(v34, *MEMORY[0x277CC9830], v31);
  sub_225CCD1F4();
  v58 = v34;
  v59 = v236;
  (*(v32 + 8))(v58, v31);
  v60 = *(v36 + 16);
  v217 = v38;
  v61 = v38;
  v62 = v231;
  v60(v30, v61, v35);
  v200 = v36;
  v63 = v36;
  v64 = v39;
  v65 = *(v63 + 56);
  v201 = v35;
  v65(v30, 0, 1, v35);
  sub_225CCD294();
  v66 = v210;
  sub_225CCCB44();
  sub_225CCCAE4();
  v67 = *(v62 + 48);
  if (v67(v66, 1, v59) == 1)
  {
    v68 = v211;
    sub_225CCD014();
    v69 = v67(v66, 1, v59);
    v70 = v68;
    if (v69 == 1)
    {
      goto LABEL_6;
    }

    v71 = v68;
    sub_2259CB640(v66, &unk_27D73FD00, &qword_225CDC6E0);
  }

  else
  {
    v71 = v211;
    (*(v62 + 32))(v211, v66, v59);
  }

  v70 = v71;
LABEL_6:
  v72 = *(v64 + 36);
  (*(v62 + 32))(&v72[a1], v70, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v73 = sub_225CCD264();
  v74 = *(v73 - 8);
  v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v76 = swift_allocObject();
  v210 = xmmword_225CD30F0;
  *(v76 + 16) = xmmword_225CD30F0;
  (*(v74 + 104))(v76 + v75, *MEMORY[0x277CC9988], v73);
  sub_2259F4D58(v76);
  swift_setDeallocating();
  (*(v74 + 8))(v76 + v75, v73);
  swift_deallocClassInstance();
  v77 = v212;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v211 = v72;
  v78 = v213;
  sub_225CCD214();

  (*(v62 + 8))(v77, v59);
  v79 = sub_225CCCAF4();
  LOBYTE(v73) = v80;
  (*(v214 + 8))(v78, v232);
  if (v73)
  {
    v81 = -1;
  }

  else
  {
    v81 = v79;
  }

  v232 = v81;
  *(a1 + 8) = v81;
  v82 = v219;
  if (qword_28105B8B8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v83 = qword_28105E338;
  v84 = sub_225CCE444();
  v85 = sub_225CCE444();
  v86 = [v83 URLForResource:v84 withExtension:v85];

  v87 = v221;
  v88 = v218;
  if (v86)
  {
    sub_225CCCE34();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = v215;
  (v88[7])(v82, v89, 1, v87);
  sub_225A33B7C(v82, v90);
  if ((v88[6])(v90, 1, v87) == 1)
  {
    v91 = 0;
    v92 = 0xC000000000000000;
  }

  else
  {
    (v88[4])(v220, v90, v87);
    v91 = sub_225CCCEC4();
    v92 = v93;
    (v88[1])(v220, v87);
  }

  sub_2259CB640(v82, &unk_27D73E090, &qword_225CD8ED0);
  v213 = v64;
  v94 = &a1[*(v64 + 48)];
  *v94 = v91;
  v94[1] = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB8, &unk_225CDC700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x2E6F73692E67726FLL;
  v212 = (inited + 32);
  v209 = inited;
  *(inited + 40) = 0xEF312E3032323332;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD60, &qword_225CD4300);
  v97 = *(v233 + 72);
  v98 = (*(v233 + 80) + 32) & ~*(v233 + 80);
  v214 = *(v233 + 80);
  v215 = v96;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_225CDC850;
  v233 = v98;
  v193 = v99;
  v100 = (v99 + v98);
  v101 = v234;
  v102 = (v99 + v98 + *(v234 + 20));
  *v102 = 1701732682;
  v102[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v100 = 0xD000000000000012;
  v100[1] = 0x8000000225D0B380;
  v103 = (v100 + v97);
  v104 = (v100 + v97 + *(v101 + 20));
  *v104 = 1701732682;
  v104[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *v103 = 0xD000000000000011;
  v103[1] = 0x8000000225D0B3A0;
  v105 = (v100 + 2 * v97);
  v106 = (v105 + *(v101 + 20));
  v218 = a1;
  *v106 = 6647620;
  v106[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  v221 = 0xD000000000000013;
  *v105 = 0xD000000000000013;
  v105[1] = 0x8000000225D0B340;
  v198 = 2 * v97;
  v107 = (v100 + 3 * v97);
  v108 = (v107 + *(v101 + 20));
  *v108 = 6647620;
  v108[1] = 0xE300000000000000;
  swift_storeEnumTagMultiPayload();
  *v107 = 0xD000000000000012;
  v107[1] = 0x8000000225D0B360;
  v109 = (v100 + 4 * v97);
  *(v109 + *(v101 + 20)) = 2;
  swift_storeEnumTagMultiPayload();
  *v109 = 7890291;
  v109[1] = 0xE300000000000000;
  v197 = 4 * v97;
  v199 = 5 * v97;
  v110 = v100 + 5 * v97;
  (*(v231 + 16))(&v110[*(v101 + 20)], &v211[v218], v236);
  swift_storeEnumTagMultiPayload();
  *v110 = 0x61645F6874726962;
  *(v110 + 1) = 0xEA00000000006574;
  v196 = 3 * v97;
  v195 = 6 * v97;
  v111 = (v100 + 6 * v97);
  v112 = v94[1];
  v236 = *v94;
  v113 = (v111 + *(v101 + 20));
  *v113 = v236;
  v113[1] = v112;
  swift_storeEnumTagMultiPayload();
  *v111 = 0x7469617274726F70;
  v111[1] = 0xE800000000000000;
  v194 = 7 * v97;
  v114 = (v100 + 7 * v97);
  v115 = (v114 + *(v101 + 20));
  *v115 = 0x6E69614D20353432;
  v115[1] = 0xEF74656572745320;
  swift_storeEnumTagMultiPayload();
  *v114 = 0xD000000000000018;
  v114[1] = 0x8000000225D0B410;
  v116 = &v100[v97];
  v117 = (v116 + *(v101 + 20));
  *v117 = 0x78696E656F6850;
  v117[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *v116 = 0xD000000000000015;
  v116[1] = 0x8000000225D0B430;
  v211 = (8 * v97);
  v192 = 9 * v97;
  v118 = (v100 + 9 * v97);
  v119 = (v118 + *(v101 + 20));
  *v119 = 0x78696E656F6850;
  v119[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *v118 = 0xD000000000000014;
  v118[1] = 0x8000000225D0B450;
  v120 = (v100 + 10 * v97);
  v121 = (v120 + *(v101 + 20));
  *v121 = 0x3435323538;
  v121[1] = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
  *v120 = 0xD000000000000014;
  v120[1] = 0x8000000225D0AEB0;
  v122 = (v100 + 11 * v97);
  v123 = (v122 + *(v101 + 20));
  *v123 = 21333;
  v123[1] = 0xE200000000000000;
  swift_storeEnumTagMultiPayload();
  *v122 = 0xD000000000000010;
  v122[1] = 0x8000000225D0AED0;
  sub_2259CB710(v236, v112);
  v124 = sub_225CCE444();
  v125 = v216;
  v126 = [v216 dateFromString_];

  if (!v126)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v127 = (v100 + 12 * v97);
  v128 = v208;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v127 = 0x61645F6575737369;
  v127[1] = 0xEA00000000006574;
  sub_225A87A00(v128, v127 + *(v101 + 20), type metadata accessor for AnyCodable);
  v129 = sub_225CCE444();
  v130 = [v125 dateFromString_];

  if (!v130)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v131 = (v100 + 13 * v97);
  v132 = v207;
  sub_225CCD094();

  swift_storeEnumTagMultiPayload();
  *v131 = 0x645F797269707865;
  v131[1] = 0xEB00000000657461;
  sub_225A87A00(v132, v131 + *(v101 + 20), type metadata accessor for AnyCodable);
  v133 = sub_225CCE444();
  v134 = [v125 dateFromString_];

  if (v134)
  {
    v135 = (v100 + 14 * v97);
    v136 = v203;
    sub_225CCD094();

    swift_storeEnumTagMultiPayload();
    *v135 = 0xD000000000000015;
    v135[1] = 0x8000000225D0AE30;
    sub_225A87A00(v136, v135 + *(v101 + 20), type metadata accessor for AnyCodable);
    v137 = (v100 + 15 * v97);
    v138 = v137 + *(v101 + 20);
    strcpy(v138, "PhotoID1234567");
    v138[15] = -18;
    swift_storeEnumTagMultiPayload();
    *v137 = 0x746E656D75636F64;
    v137[1] = 0xEF7265626D756E5FLL;
    v139 = &v100[2 * v97];
    v140 = (v139 + *(v101 + 20));
    v141 = v202;
    *v140 = 0xD000000000000016;
    v140[1] = v141;
    swift_storeEnumTagMultiPayload();
    *v139 = 0xD000000000000019;
    v139[1] = 0x8000000225D0B3D0;
    v142 = (v100 + 17 * v97);
    v143 = (v142 + *(v101 + 20));
    *v143 = 0x58582D5858;
    v143[1] = 0xE500000000000000;
    swift_storeEnumTagMultiPayload();
    *v142 = v221;
    v142[1] = 0x8000000225D0B3F0;
    v144 = (v100 + 18 * v97);
    v145 = (v144 + *(v101 + 20));
    *v145 = 22616;
    v145[1] = 0xE200000000000000;
    swift_storeEnumTagMultiPayload();
    *v144 = 0x5F676E6975737369;
    v144[1] = 0xEF7972746E756F63;
    v231 = v97;
    v146 = v100 + 19 * v97;
    *&v146[*(v101 + 20)] = v232;
    swift_storeEnumTagMultiPayload();
    strcpy(v146, "age_in_years");
    v146[13] = 0;
    *(v146 + 7) = -5120;
    v240 = MEMORY[0x277D84F90];
    v147 = 100;
    sub_2259D5354(0, 100, 0);
    v148 = 0;
    v149 = 0;
    v64 = v240;
    v221 = (v206 + 8);
    v220 = (v204 + 8);
    v219 = (v205 + 8);
    v82 = v223;
    while (1)
    {
      v236 = v147;
      if (v149)
      {
        break;
      }

      v237 = v148;
      v151 = v227;
      sub_225CCD164();
      sub_225A84D38();
      v152 = v225;
      sub_225CCCBB4();
      v238 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0, &unk_225CDC710);
      sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0, &unk_225CDC710, MEMORY[0x277D84338]);
      v153 = v229;
      sub_225CCCD64();
      v154 = v224;
      v155 = v226;
      MEMORY[0x22AA6B410](v153, v226);
      (*v221)(v153, v230);
      v156 = *v220;
      (*v220)(v152, v155);
      sub_225CCD134();
      MEMORY[0x22AA6B400](v151, v155);
      (*v219)(v151, v228);
      v156(v154, v155);
      sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0, &unk_225CDC6D0, MEMORY[0x277CC8CE8]);
      sub_225CCF084();
      v156(v82, v155);
      v157 = v238;
      v158 = v239;
      v238 = 0x7265766F5F656761;
      v239 = 0xE90000000000005FLL;
      MEMORY[0x22AA6CE70](v157, v158);

      v159 = v238;
      v160 = v239;
      v161 = v222;
      v222[*(v234 + 20)] = v232 >= v148;
      swift_storeEnumTagMultiPayload();
      *v161 = v159;
      v161[1] = v160;
      v240 = v64;
      v163 = *(v64 + 16);
      v162 = *(v64 + 24);
      a1 = (v163 + 1);
      if (v163 >= v162 >> 1)
      {
        sub_2259D5354((v162 > 1), v163 + 1, 1);
        v64 = v240;
      }

      *(v64 + 16) = a1;
      sub_225A87A00(v161, v64 + v233 + v163 * v231, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      v149 = v148 == 99;
      if (v148 == 99)
      {
        v148 = 0;
        v150 = v236;
      }

      else
      {
        v164 = __OFADD__(v148++, 1);
        v150 = v236;
        if (v164)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      v147 = v150 - 1;
      if (!v147)
      {
        v238 = v193;
        sub_225A8472C(v64);
        v165 = v209;
        *(v209 + 6) = v238;
        v165[7] = 0xD000000000000017;
        v165[8] = 0x8000000225D0AC80;
        v166 = v233;
        v167 = swift_allocObject();
        v236 = v167;
        *(v167 + 16) = xmmword_225CDC860;
        v168 = v167 + v166;
        v169 = v234;
        v170 = v167 + v166 + *(v234 + 20);
        strcpy(v170, "PersonID98765");
        *(v170 + 14) = -4864;
        swift_storeEnumTagMultiPayload();
        *v168 = 0x695F6E6F73726570;
        *(v168 + 8) = 0xE900000000000064;
        v171 = v231;
        v172 = (v168 + v231);
        v173 = (v168 + v231 + *(v169 + 20));
        *v173 = 0x78696E656F6850;
        v173[1] = 0xE700000000000000;
        swift_storeEnumTagMultiPayload();
        *v172 = 0x69635F6874726962;
        v172[1] = 0xEA00000000007974;
        v174 = (v168 + v198);
        v175 = (v168 + v198 + *(v169 + 20));
        *v175 = 23105;
        v175[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        *v174 = 0x74735F6874726962;
        v174[1] = 0xEB00000000657461;
        v176 = (v168 + v196);
        v177 = (v168 + v196 + *(v169 + 20));
        *v177 = 21333;
        v177[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        strcpy(v176, "birth_country");
        *(v176 + 7) = -4864;
        v178 = (v168 + v197);
        v179 = (v168 + v197 + *(v169 + 20));
        *v179 = 3486770;
        v179[1] = 0xE300000000000000;
        swift_storeEnumTagMultiPayload();
        *v178 = 0xD000000000000015;
        v178[1] = 0x8000000225D0B530;
        v180 = (v168 + v199);
        v181 = (v168 + v199 + *(v169 + 20));
        *v181 = 0x727453206E69614DLL;
        v181[1] = 0xEB00000000746565;
        swift_storeEnumTagMultiPayload();
        *v180 = 0x746E656469736572;
        v180[1] = 0xEF7465657274735FLL;
        v182 = (v168 + v195);
        v183 = (v168 + v195 + *(v169 + 20));
        *v183 = 23105;
        v183[1] = 0xE200000000000000;
        swift_storeEnumTagMultiPayload();
        strcpy(v182, "resident_state");
        v182[15] = -18;
        v184 = (v168 + v194);
        v185 = (v168 + v194 + *(v169 + 20));
        *v185 = 0x3938373635323141;
        v185[1] = 0xE800000000000000;
        swift_storeEnumTagMultiPayload();
        *v184 = 0xD000000000000015;
        v184[1] = 0x8000000225D0ADC0;
        v186 = &v211[v168];
        v187 = &v211[v168 + *(v169 + 20)];
        *v187 = 0x36353433323154;
        *(v187 + 1) = 0xE700000000000000;
        swift_storeEnumTagMultiPayload();
        *(v168 + 8 * v171) = 0xD000000000000016;
        *(v186 + 1) = 0x8000000225D0B550;
        v165[9] = v236;
        v165[10] = 0xD00000000000002DLL;
        v165[11] = 0x8000000225D1B000;
        v188 = v233;
        v189 = swift_allocObject();
        *(v189 + 16) = v210;
        v190 = v189 + v188;
        *(v190 + *(v169 + 20)) = 1;
        swift_storeEnumTagMultiPayload();
        strcpy(v190, "test_document");
        *(v190 + 14) = -4864;
        v165[12] = v189;
        v191 = sub_225B2D58C(v165);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCD8, &qword_225CDC810);
        swift_arrayDestroy();

        (*(v200 + 8))(v217, v201);
        *(v218 + *(v213 + 31)) = v191;
        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void sub_225A8A1D8(uint64_t a1)
{
  sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    sub_225CCCB74();
    if (v2 <= 0x3F)
    {
      sub_225A84EEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t CredentialBuilderPayloadDetails.Element.init(elementIdentifier:elementValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  return sub_225A91568(a3, a4 + *(v6 + 20), type metadata accessor for AnyCodable);
}

void *IdentityCredentialPayloadBuilder.__allocating_init(with:dateProvider:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_randomDataSize] = 32;
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_cborDataTag] = 24;
  v7 = &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_identifierStringData];
  *v7 = sub_2259D25B0(0x6E6564692D79656BLL, 0xEE00726569666974);
  v7[1] = v8;
  *&v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_kidRange] = xmmword_225CDC970;
  sub_225A32940(a1, &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate]);
  sub_225A32940(a2, &v6[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider]);
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

void *IdentityCredentialPayloadBuilder.init(with:dateProvider:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_randomDataSize] = 32;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_cborDataTag] = 24;
  v5 = &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_identifierStringData];
  *v5 = sub_2259D25B0(0x6E6564692D79656BLL, 0xEE00726569666974);
  v5[1] = v6;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_kidRange] = xmmword_225CDC970;
  sub_225A32940(a1, &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate]);
  sub_225A32940(a2, &v2[OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for IdentityCredentialPayloadBuilder();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_225A8A57C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for ISO18013Package.Document(0);
  v2[8] = swift_task_alloc();
  v3 = sub_225CCD354();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A8A66C, 0, 0);
}

uint64_t sub_225A8A66C()
{
  v1 = sub_225A8FB40(v0[5]);
  v0[12] = v1;
  v2 = v1;
  v0[13] = sub_225A90588(v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_225A8A77C;
  v4 = v0[11];
  v5 = v0[5];

  return sub_225A8AC64(v4, v5, v2);
}

uint64_t sub_225A8A77C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_225A8ABF4;
  }

  else
  {
    v2 = sub_225A8A8A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8A8A8()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  (*(*(v0 + 80) + 16))(&v2[*(*(v0 + 56) + 20)], *(v0 + 88), *(v0 + 72));
  *v2 = v1;
  if (qword_27D739F40 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 120);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = xmmword_27D73C538;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD60, &qword_225CDC990);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD68, &unk_225CDC998) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225CD30F0;
  v9 = (v8 + v7);
  v10 = v6[14];
  v11 = *(v4 + 16);
  *v9 = *(v4 + 8);
  v9[1] = v11;
  sub_225A90CF4(v3, v9 + v10, type metadata accessor for ISO18013Package.Document);

  v12 = sub_225B2DA9C(v8);
  swift_setDeallocating();
  sub_2259CB640(v9, &qword_27D73BD68, &unk_225CDC998);
  swift_deallocClassInstance();
  v24[0] = *v4;
  sub_225A8F648(v24);
  *(v0 + 16) = v5;
  *(v0 + 32) = v12;
  sub_225A90BDC();
  v13 = sub_225CCD3F4();
  v15 = v14;
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);

  if (v23)
  {
    sub_225A915D0(v18, type metadata accessor for ISO18013Package.Document);
    (*(v17 + 8))(v16, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    sub_225A915D0(v18, type metadata accessor for ISO18013Package.Document);
    (*(v17 + 8))(v16, v19);

    v22 = *(v0 + 8);

    return v22(v13, v15);
  }
}

uint64_t sub_225A8ABF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A8AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v4[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v5 = sub_225CCD954();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v6 = sub_225CCD3B4();
  v4[56] = v6;
  v4[57] = *(v6 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = type metadata accessor for ISO18013MobileSecurityObject(0);
  v4[60] = swift_task_alloc();
  v4[61] = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v4[64] = swift_task_alloc();
  v7 = sub_225CCD0B4();
  v4[65] = v7;
  v4[66] = *(v7 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v8 = sub_225CCE184();
  v4[73] = v8;
  v4[74] = *(v8 - 8);
  v4[75] = swift_task_alloc();
  v9 = sub_225CCDBC4();
  v4[76] = v9;
  v4[77] = *(v9 - 8);
  v4[78] = swift_task_alloc();
  v10 = sub_225CCE174();
  v4[79] = v10;
  v4[80] = *(v10 - 8);
  v4[81] = swift_task_alloc();
  v11 = sub_225CCDBB4();
  v4[82] = v11;
  v4[83] = *(v11 - 8);
  v4[84] = swift_task_alloc();
  v12 = sub_225CCE164();
  v4[85] = v12;
  v4[86] = *(v12 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v13 = sub_225CCDBA4();
  v4[89] = v13;
  v4[90] = *(v13 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v4[93] = v14;
  v4[94] = *(v14 - 8);
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A8B234, 0, 0);
}

uint64_t sub_225A8B234()
{
  v228 = v0;
  v227 = *MEMORY[0x277D85DE8];
  v209 = *(v0 + 760);
  v207 = *(v0 + 752);
  v205 = *(v0 + 744);
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 664);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  v6 = *(v0 + 592);
  v7 = *(v0 + 384);
  v204 = sub_225B2D97C(MEMORY[0x277D84F90]);
  v196 = v7 + 64;
  v8 = -1 << *(v7 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v7 + 64);
  v195 = (63 - v8) >> 6;
  v193 = (v5 + 8);
  v194 = (v6 + 8);
  v191 = (v3 + 8);
  v192 = (v4 + 8);
  v189 = (v1 + 8);
  v190 = (v2 + 8);
  v188 = v7;

  v11 = 0;
  v12 = &qword_27D73B3D0;
LABEL_6:
  if (!v10)
  {
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v195)
      {
        v103 = *(v0 + 376);

        v104 = type metadata accessor for CredentialBuilderPayloadDetails(0);
        v105 = (v103 + *(v104 + 44));
        v106 = *v105;
        if (*v105 == 1)
        {
          v107 = 0;
        }

        else
        {
          v107 = v105[1];
          if (v106 | v107)
          {
            v108 = v104;

            v104 = v108;
          }

          else
          {
            v107 = 0;
            v106 = 1;
          }
        }

        v109 = *(v0 + 576);
        v110 = *(v0 + 560);
        v111 = *(v0 + 528);
        v219 = *(v0 + 520);
        v223 = v104;
        v112 = *(v0 + 512);
        v113 = *(v0 + 392);
        v114 = *(v0 + 376);
        v115 = *(v104 + 40);
        v116 = sub_225CCD494();
        (*(*(v116 - 8) + 16))(v109, v114 + v115, v116);
        v117 = (v109 + *(v110 + 20));
        *v117 = v106;
        v117[1] = v107;
        *(v109 + *(v110 + 24)) = 0;
        v118 = *(v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider + 24);
        v119 = *(v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider + 32);
        __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_dateProvider), v118);
        (*(v119 + 8))(v118, v119);
        sub_225A0DE54(v114 + *(v223 + 28), v112, &unk_27D73FD00, &qword_225CDC6E0);
        v120 = *(v111 + 48);
        if (v120(v112, 1, v219) == 1)
        {
          v121 = *(v0 + 520);
          v122 = *(v0 + 512);
          (*(*(v0 + 528) + 16))(*(v0 + 544), *(v0 + 552), v121);
          if (v120(v122, 1, v121) != 1)
          {
            sub_2259CB640(*(v0 + 512), &unk_27D73FD00, &qword_225CDC6E0);
          }
        }

        else
        {
          (*(*(v0 + 528) + 32))(*(v0 + 544), *(v0 + 512), *(v0 + 520));
        }

        if (sub_225CCD044())
        {
          v123 = *(*(v0 + 528) + 32);
          v123(*(v0 + 536), *(v0 + 544), *(v0 + 520));
        }

        else
        {
          v124 = *(v0 + 552);
          v125 = *(v0 + 536);
          v126 = *(v0 + 528);
          v127 = *(v0 + 520);
          (*(v126 + 8))(*(v0 + 544), v127);
          (*(v126 + 16))(v125, v124, v127);
          v123 = *(v126 + 32);
        }

        v128 = *(v0 + 552);
        v129 = *(v0 + 544);
        v130 = *(v0 + 528);
        v131 = *(v0 + 520);
        v12 = *(v0 + 504);
        v132 = *(v0 + 488);
        v133 = *(v0 + 376);
        v123(v129, *(v0 + 536), v131);
        v134 = *(v130 + 16);
        v134(v12, v128, v131);
        v134(v12 + v132[5], v129, v131);
        v134(v12 + v132[6], v133 + *(v223 + 32), v131);
        v5 = v223;
        (*(v130 + 56))(v12 + v132[7], 1, 1, v131);
        LODWORD(v12) = *(v133 + *(v223 + 36));
        if (qword_27D739F38 == -1)
        {
          goto LABEL_112;
        }

        goto LABEL_139;
      }

      v10 = *(v196 + 8 * v14);
      ++v11;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    swift_once();
LABEL_112:
    v135 = *(v0 + 376);
    v213 = *(&xmmword_27D73C268 + 1);
    v216 = xmmword_27D73C268;
    v211 = *&aSha256_1[8 * *(v135 + *(v5 + 52))];
    v136 = *(v0 + 496);
    v137 = *(v0 + 504);
    sub_225A90CF4(*(v0 + 576), *(v0 + 568), type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    v138 = *(v135 + 16);
    v220 = *(v135 + 8);
    sub_225A90CF4(v137, v136, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v139 = (v135 + *(v5 + 56));
    v140 = v139[5];
    if (v140)
    {
      v141 = v139[3];
      v208 = v139[4];
      v142 = v139[2];
      v199 = *v139;
      v201 = v139[1];
      sub_2259CB710(*v139, v201);
      v203 = v142;
      v206 = v141;
      sub_2259CB710(v142, v141);
    }

    else
    {
      v199 = 0;
      v201 = 0;
      v203 = 0;
      v206 = 0;
      v208 = 0;
      v140 = 1;
    }

    v143 = v12 < 2;
    v144 = *(v0 + 568);
    v145 = *(v0 + 496);
    v147 = *(v0 + 472);
    v146 = *(v0 + 480);
    v149 = *(v0 + 456);
    v148 = *(v0 + 464);
    v210 = *(v0 + 448);
    v150 = *(v0 + 376);
    *v146 = v216;
    v146[1] = v213;
    v146[2] = v211;
    v146[3] = 0xE700000000000000;
    v146[4] = v204;
    sub_225A91568(v144, v146 + v147[7], type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    v151 = (v146 + v147[8]);
    *v151 = v220;
    v151[1] = v138;
    sub_225A91568(v145, v146 + v147[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    *(v146 + v147[10]) = v143;
    v152 = (v146 + v147[11]);
    *v152 = v199;
    v152[1] = v201;
    v152[2] = v203;
    v152[3] = v206;
    v152[4] = v208;
    v152[5] = v140;
    v225[0] = *v150;

    *(v0 + 776) = sub_225A8F648(v225);
    (*(v149 + 104))(v148, *MEMORY[0x277CF3970], v210);
    sub_225CCD3C4();
    sub_225A91708(&qword_27D73BDB8, type metadata accessor for ISO18013MobileSecurityObject, &protocol conformance descriptor for ISO18013MobileSecurityObject);
    v23 = 0;
    *(v0 + 344) = sub_225CCD3F4();
    *(v0 + 352) = v153;
    sub_2259D9454();
    v154 = sub_225CCD3E4();
    *(v0 + 784) = v154;
    *(v0 + 792) = v155;
    v22 = v154;
    v5 = v155;
    v158 = *(v0 + 376);
    sub_2259BEF00(*(v0 + 344), *(v0 + 352));
    v225[0] = *v158;
    *(v0 + 800) = sub_225A8F648(v225);
    v159 = *&v158[*(v223 + 48)];
    *(v0 + 808) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_225CD30F0;
    *(v160 + 32) = 1;
    *(v160 + 40) = v159;
    v161 = sub_225B2C828(v160);
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v0 + 360) = v161;
    sub_2259CB710(v22, v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
    sub_2259DB480();
    v24 = sub_225CCD3F4();
    *(v0 + 816) = v24;
    *(v0 + 824) = v25;
    goto LABEL_123;
  }

  v14 = v11;
LABEL_11:
  v198 = v14;
  v200 = (v10 - 1) & v10;
  v15 = __clz(__rbit64(v10)) | (v14 << 6);
  v16 = (*(v188 + 48) + 16 * v15);
  v17 = v16[1];
  v197 = *v16;
  v18 = *(*(v188 + 56) + 8 * v15);
  v223 = sub_225B2D990(MEMORY[0x277D84F90]);
  v19 = v18 + 64;
  v20 = -1 << *(v18 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v23 = (63 - v20) >> 6;
  v202 = v17;

  v218 = v18;

  v5 = 0;
  v212 = v23;
  v215 = v18 + 64;
  while (v22)
  {
LABEL_22:
    v31 = *(v0 + 768);
    v32 = *(v0 + 760);
    v33 = *(v0 + 376);
    sub_225A0DE54(*(v218 + 56) + *(v207 + 72) * (__clz(__rbit64(v22)) | (v5 << 6)), v31, &qword_27D73B3D0, &qword_225CDC650);
    sub_2259D88EC(v31, v32, &qword_27D73B3D0, &qword_225CDC650);
    v34 = *(v209 + 8);
    v35 = *(v209 + 16);
    v36 = *(v33 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 52));
    sub_225CCD424();
    swift_allocObject();
    sub_225CCD414();
    *(v0 + 328) = v34;
    *(v0 + 336) = v35;
    sub_2259D9454();
    v12 = sub_225CCD3E4();
    v38 = v37;

    v39 = v38 >> 62;
    if (!v36)
    {
      sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_225CCDB94();
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          *(v0 + 986) = 0;
          *(v0 + 992) = 0;
          goto LABEL_66;
        }

        v43 = *(v12 + 16);
        v44 = *(v12 + 24);

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v43, sub_225CCCA74()))
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (__OFSUB__(v44, v43))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (!v39)
        {
          *(v0 + 972) = v12;
          *(v0 + 980) = v38;
          *(v0 + 982) = BYTE2(v38);
          *(v0 + 983) = BYTE3(v38);
          *(v0 + 984) = BYTE4(v38);
          *(v0 + 985) = BYTE5(v38);
LABEL_66:
          sub_225CCDB74();
          sub_2259BEF00(v12, v38);
          v64 = *(v0 + 704);
          v65 = *(v0 + 680);
          sub_225CCDB84();
          (*v190)(v64, v65);
          sub_225A91708(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
          v66 = sub_225CCE154();
          v68 = sub_2259D732C(v66, v67);

          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0, &unk_225CDCF50);
          *(v0 + 312) = v69;
          *(v0 + 320) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0, &unk_225CDCF50, MEMORY[0x277CC9C28]);
          *(v0 + 288) = v68;
          v70 = __swift_project_boxed_opaque_existential_1((v0 + 288), v69);
          v71 = *v70;
          v72 = *(*v70 + 16);
          if (v72)
          {
            if (v72 < 0xF)
            {
              memset(v225, 0, sizeof(v225));
              v226 = v72;
              memcpy(v225, (v71 + 32), v72);
              v59 = v187 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
              v61 = (v0 + 712);
              v60 = (v0 + 736);
              v58 = *v225;
              v62 = (v0 + 288);
              v63 = v189;
              v187 = v59;
              goto LABEL_89;
            }

            sub_225CCCA94();
            swift_allocObject();
            v73 = sub_225CCCA34();
            v74 = v73;
            if (v72 >= 0x7FFFFFFF)
            {
              sub_225CCCF14();
              v58 = swift_allocObject();
              v59 = v74 | 0x8000000000000000;
              *(v58 + 16) = 0;
              *(v58 + 24) = v72;
            }

            else
            {
              v58 = v72 << 32;
              v59 = v73 | 0x4000000000000000;
            }
          }

          else
          {
            v58 = 0;
            v59 = 0xC000000000000000;
          }

          v61 = (v0 + 712);
          v60 = (v0 + 736);
          v62 = (v0 + 288);
          v63 = v189;
          goto LABEL_89;
        }

        if (v12 >> 32 < v12)
        {
          goto LABEL_135;
        }

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v12, sub_225CCCA74()))
        {
          goto LABEL_143;
        }
      }

      sub_225CCCA64();
      goto LABEL_66;
    }

    if (v36 == 1)
    {
      sub_225A91708(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      sub_225CCDB94();
      if (v39 > 1)
      {
        if (v39 != 2)
        {
          *(v0 + 958) = 0;
          *(v0 + 964) = 0;
          goto LABEL_55;
        }

        v40 = *(v12 + 16);
        v41 = *(v12 + 24);

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v40, sub_225CCCA74()))
        {
          goto LABEL_141;
        }

        if (__OFSUB__(v41, v40))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (!v39)
        {
          *(v0 + 944) = v12;
          *(v0 + 952) = v38;
          *(v0 + 954) = BYTE2(v38);
          *(v0 + 955) = BYTE3(v38);
          *(v0 + 956) = BYTE4(v38);
          *(v0 + 957) = BYTE5(v38);
LABEL_55:
          sub_225CCDB74();
          sub_2259BEF00(v12, v38);
          v47 = *(v0 + 648);
          v48 = *(v0 + 632);
          sub_225CCDB84();
          (*v192)(v47, v48);
          sub_225A91708(&qword_27D73AE68, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
          v49 = sub_225CCE154();
          v51 = sub_2259D732C(v49, v50);

          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0, &unk_225CDCF50);
          *(v0 + 272) = v52;
          *(v0 + 280) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0, &unk_225CDCF50, MEMORY[0x277CC9C28]);
          *(v0 + 248) = v51;
          v53 = __swift_project_boxed_opaque_existential_1((v0 + 248), v52);
          v54 = *v53;
          v55 = *(*v53 + 16);
          if (v55)
          {
            if (v55 < 0xF)
            {
              memset(v225, 0, sizeof(v225));
              v226 = v55;
              memcpy(v225, (v54 + 32), v55);
              v59 = v186 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
              v61 = (v0 + 656);
              v60 = (v0 + 672);
              v58 = *v225;
              v62 = (v0 + 248);
              v63 = v191;
              v186 = v59;
              goto LABEL_89;
            }

            sub_225CCCA94();
            swift_allocObject();
            v56 = sub_225CCCA34();
            v57 = v56;
            if (v55 >= 0x7FFFFFFF)
            {
              sub_225CCCF14();
              v58 = swift_allocObject();
              v59 = v57 | 0x8000000000000000;
              *(v58 + 16) = 0;
              *(v58 + 24) = v55;
            }

            else
            {
              v58 = v55 << 32;
              v59 = v56 | 0x4000000000000000;
            }
          }

          else
          {
            v58 = 0;
            v59 = 0xC000000000000000;
          }

          v61 = (v0 + 656);
          v60 = (v0 + 672);
          v62 = (v0 + 248);
          v63 = v191;
          goto LABEL_89;
        }

        if (v12 >> 32 < v12)
        {
          goto LABEL_133;
        }

        v42 = sub_225CCCA44();
        if (v42 && __OFSUB__(v12, sub_225CCCA74()))
        {
          goto LABEL_145;
        }
      }

      sub_225CCCA64();
      goto LABEL_55;
    }

    sub_225A91708(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    sub_225CCDB94();
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        *(v0 + 930) = 0;
        *(v0 + 936) = 0;
        goto LABEL_77;
      }

      v45 = *(v12 + 16);
      v46 = *(v12 + 24);

      v42 = sub_225CCCA44();
      if (v42 && __OFSUB__(v45, sub_225CCCA74()))
      {
        goto LABEL_142;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_136;
      }

      goto LABEL_75;
    }

    if (v39)
    {
      if (v12 >> 32 < v12)
      {
        goto LABEL_134;
      }

      v42 = sub_225CCCA44();
      if (v42 && __OFSUB__(v12, sub_225CCCA74()))
      {
        goto LABEL_144;
      }

LABEL_75:
      sub_225CCCA64();
      goto LABEL_77;
    }

    *(v0 + 916) = v12;
    *(v0 + 924) = v38;
    *(v0 + 926) = BYTE2(v38);
    *(v0 + 927) = BYTE3(v38);
    *(v0 + 928) = BYTE4(v38);
    *(v0 + 929) = BYTE5(v38);
LABEL_77:
    sub_225CCDB74();
    sub_2259BEF00(v12, v38);
    v75 = *(v0 + 600);
    v76 = *(v0 + 584);
    sub_225CCDB84();
    (*v194)(v75, v76);
    sub_225A91708(&qword_27D73AE78, MEMORY[0x277CC52E8], MEMORY[0x277CC52E0]);
    v77 = sub_225CCE154();
    v79 = sub_2259D732C(v77, v78);

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0, &unk_225CDCF50);
    *(v0 + 232) = v80;
    *(v0 + 240) = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0, &unk_225CDCF50, MEMORY[0x277CC9C28]);
    *(v0 + 208) = v79;
    v81 = __swift_project_boxed_opaque_existential_1((v0 + 208), v80);
    v82 = *v81;
    v83 = *(*v81 + 16);
    if (v83)
    {
      if (v83 < 0xF)
      {
        memset(v225, 0, sizeof(v225));
        v226 = v83;
        memcpy(v225, (v82 + 32), v83);
        v59 = v185 & 0xF00000000000000 | *&v225[8] | ((*&v225[12] | (v226 << 16)) << 32);
        v61 = (v0 + 608);
        v60 = (v0 + 624);
        v58 = *v225;
        v62 = (v0 + 208);
        v63 = v193;
        v185 = v59;
        goto LABEL_89;
      }

      sub_225CCCA94();
      swift_allocObject();
      v84 = sub_225CCCA34();
      v85 = v84;
      if (v83 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        v58 = swift_allocObject();
        v59 = v85 | 0x8000000000000000;
        *(v58 + 16) = 0;
        *(v58 + 24) = v83;
      }

      else
      {
        v58 = v83 << 32;
        v59 = v84 | 0x4000000000000000;
      }
    }

    else
    {
      v58 = 0;
      v59 = 0xC000000000000000;
    }

    v61 = (v0 + 608);
    v60 = (v0 + 624);
    v62 = (v0 + 208);
    v63 = v193;
LABEL_89:
    v86 = *v60;
    v87 = *v61;
    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_2259BEF00(v12, v38);
    (*v63)(v86, v87);
    v88 = *(*(v0 + 760) + *(v205 + 48));
    if (v88 < 0)
    {
      goto LABEL_130;
    }

    sub_2259CB710(v58, v59);
    v89 = v223;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v225 = v223;
    v91 = sub_2259F1900(v88);
    v93 = *(v223 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_131;
    }

    LODWORD(v12) = v92;
    if (*(v223 + 24) >= v96)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = v91;
        sub_225A44A40();
        v91 = v102;
        v89 = *v225;
      }
    }

    else
    {
      sub_225A41748(v96, isUniquelyReferenced_nonNull_native);
      v97 = *v225;
      v91 = sub_2259F1900(v88);
      if ((v12 & 1) != (v98 & 1))
      {

        return sub_225CCFAC4();
      }

      v89 = v97;
    }

    v19 = v215;
    v223 = v89;
    if (v12)
    {
      v26 = (v89[7] + 16 * v91);
      v27 = *v26;
      v28 = v26[1];
      *v26 = v58;
      v26[1] = v59;
      sub_2259BEF00(v27, v28);
    }

    else
    {
      v89[(v91 >> 6) + 8] |= 1 << v91;
      *(v89[6] + 8 * v91) = v88;
      v99 = (v89[7] + 16 * v91);
      *v99 = v58;
      v99[1] = v59;
      v100 = v89[2];
      v95 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v95)
      {
        goto LABEL_132;
      }

      v89[2] = v101;
    }

    v22 &= v22 - 1;
    v29 = *(v0 + 760);
    sub_2259BEF00(v58, v59);
    v12 = &qword_27D73B3D0;
    v24 = sub_2259CB640(v29, &qword_27D73B3D0, &qword_225CDC650);
    v23 = v212;
  }

  while (1)
  {
    v30 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v30 >= v23)
    {

      v13 = swift_isUniquelyReferenced_nonNull_native();
      *v225 = v204;
      sub_225A04510(v223, v197, v202, v13);

      v204 = *v225;
      v11 = v198;
      v10 = v200;
      goto LABEL_6;
    }

    v22 = *(v19 + 8 * v30);
    ++v5;
    if (v22)
    {
      v5 = v30;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_123:
  v162 = v24;
  v163 = v25;

  *(v0 + 64) = v162;
  *(v0 + 72) = v163;
  *(v0 + 80) = xmmword_225CD4150;
  *(v0 + 96) = v22;
  *(v0 + 104) = v5;
  sub_2259E44EC();
  v164 = sub_225CCD3F4();
  *(v0 + 832) = v164;
  *(v0 + 840) = v165;
  if (v23)
  {
    v221 = *(v0 + 552);
    v224 = *(v0 + 576);
    v166 = *(v0 + 528);
    v167 = *(v0 + 520);
    v214 = *(v0 + 504);
    v217 = *(v0 + 544);
    v168 = *(v0 + 480);

    sub_2259BEF00(v22, v5);
    sub_225A915D0(v168, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v214, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v169 = *(v166 + 8);
    v169(v217, v167);
    v169(v221, v167);
    sub_225A915D0(v224, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    sub_2259BEF00(v162, v163);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v22, v5);

    v156 = *(v0 + 8);

    return v156();
  }

  else
  {
    v38 = v164;
    v42 = v165;
    if (qword_28105B910 != -1)
    {
LABEL_146:
      swift_once();
    }

    v171 = *(v0 + 432);
    v170 = *(v0 + 440);
    v172 = *(v0 + 424);
    v173 = *(v0 + 392);
    v174 = off_28105B918;
    *(v0 + 848) = off_28105B918;
    v175 = *v174;
    v176 = *(*v174 + *MEMORY[0x277D841D0] + 16);
    *(v0 + 856) = v176;
    v177 = *(v175 + 48);
    *(v0 + 912) = v177;
    v178 = (v177 + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v174 + v178));
    v179 = *(v171 + 16);
    *(v0 + 864) = v179;
    *(v0 + 872) = (v171 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v179(v170, v174 + v176, v172);
    os_unfair_lock_unlock((v174 + v178));
    sub_2259CB710(v38, v42);
    sub_225B43440(v170, v38, v42);
    sub_2259BEF00(v38, v42);
    v180 = *(v171 + 8);
    *(v0 + 880) = v180;
    *(v0 + 888) = (v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v180(v170, v172);
    v181 = *(v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate + 24);
    v182 = *(v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate + 32);
    __swift_project_boxed_opaque_existential_1((v173 + OBJC_IVAR____TtC13CoreIDVShared32IdentityCredentialPayloadBuilder_delegate), v181);
    v222 = (*(v182 + 8) + **(v182 + 8));
    v183 = swift_task_alloc();
    *(v0 + 896) = v183;
    *v183 = v0;
    v183[1] = sub_225A8D0BC;
    v184 = *(v0 + 392);

    return v222(v0 + 112, v184, v38, v42, v181, v182);
  }
}

uint64_t sub_225A8D0BC()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_225A8E874;
  }

  else
  {
    v2 = sub_225A8D1FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A8D1FC()
{
  v167 = v0;
  v166 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 808);
  v2 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 144);
  if (*(v0 + 16) != v1)
  {
    v37 = *(v0 + 400);
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v19 = v40;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v37, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v37, 1, v41);
    sub_2259CB640(v37, &unk_27D73B050, &unk_225CD3AD0);
    if (v41)
    {
      v43 = 372;
    }

    else
    {
      v43 = 23;
    }

    v150 = v43;
    v44 = sub_225B2C374(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v165 = v44;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v165);

    v138 = v165;
    v25 = sub_225B29AA0(0, 1, 1, v38);
    v47 = *(v25 + 2);
    v46 = *(v25 + 3);
    if (v47 >= v46 >> 1)
    {
      v25 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v25);
    }

    v28 = *(v0 + 840);
    v29 = *(v0 + 832);
    v127 = *(v0 + 816);
    v130 = *(v0 + 824);
    v30 = *(v0 + 792);
    v31 = *(v0 + 784);
    v153 = *(v0 + 576);
    v143 = *(v0 + 544);
    v147 = *(v0 + 552);
    v32 = *(v0 + 528);
    v141 = *(v0 + 504);
    v142 = *(v0 + 520);
    v135 = *(v0 + 480);
    *(v25 + 2) = v47 + 1;
    v33 = &v25[56 * v47];
    v34 = 0xD000000000000062;
    v35 = 0x8000000225D1B180;
    *(v33 + 4) = 0xD000000000000062;
    *(v33 + 5) = 0x8000000225D1B180;
    *(v33 + 6) = 0xD000000000000022;
    *(v33 + 7) = 0x8000000225D1B1F0;
    *(v33 + 8) = 0xD000000000000023;
    *(v33 + 9) = 0x8000000225D1B220;
    v36 = 177;
    goto LABEL_16;
  }

  v3 = *(v0 + 880);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 848);
  v7 = *(v0 + 440);
  v8 = *(v0 + 424);
  v9 = (*(v0 + 912) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v9));
  v4(v7, v6 + v5, v8);
  os_unfair_lock_unlock((v6 + v9));
  sub_225A91660(v0 + 16, v0 + 160);
  sub_225B43660(v7, v0 + 16);
  sub_225A91630(v0 + 16);
  v3(v7, v8);
  if (*(v0 + 24))
  {
    v10 = *(v0 + 416);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    sub_2259CB710(*(v0 + 784), *(v0 + 792));

    sub_2259CB710(v11, v12);
    sub_225CCD2F4();
    v13 = sub_225CCD354();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      v15 = *(v0 + 400);
      sub_2259CB640(*(v0 + 416), &qword_27D73AC30, &unk_225CDCF40);
      v16 = MEMORY[0x277D84F90];
      v17 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v19 = v18;
      v20 = sub_225CCE954();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v15, 1, 1, v20);
      LODWORD(v20) = (*(v21 + 48))(v15, 1, v20);
      sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
      if (v20)
      {
        v22 = 370;
      }

      else
      {
        v22 = 23;
      }

      v150 = v22;
      v23 = sub_225B2C374(v16);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = v23;
      sub_225B2C4A0(v17, sub_225B2AC40, 0, v24, &v165);

      v138 = v165;
      v25 = sub_225B29AA0(0, 1, 1, v16);
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = *(v0 + 840);
      v29 = *(v0 + 832);
      v127 = *(v0 + 816);
      v130 = *(v0 + 824);
      v30 = *(v0 + 792);
      v31 = *(v0 + 784);
      v153 = *(v0 + 576);
      v143 = *(v0 + 544);
      v147 = *(v0 + 552);
      v32 = *(v0 + 528);
      v141 = *(v0 + 504);
      v142 = *(v0 + 520);
      v135 = *(v0 + 480);
      *(v25 + 2) = v27 + 1;
      v33 = &v25[56 * v27];
      v34 = 0xD00000000000004ALL;
      v35 = 0x8000000225D1B2C0;
      *(v33 + 4) = 0xD00000000000004ALL;
      *(v33 + 5) = 0x8000000225D1B2C0;
      *(v33 + 6) = 0xD000000000000022;
      *(v33 + 7) = 0x8000000225D1B1F0;
      *(v33 + 8) = 0xD000000000000023;
      *(v33 + 9) = 0x8000000225D1B220;
      v36 = 189;
LABEL_16:
      *(v33 + 10) = v36;
      *v19 = v150;
      *(v19 + 8) = v25;
      *(v19 + 16) = v34;
      *(v19 + 24) = v35;
      *(v19 + 32) = v138;
      *(v19 + 40) = 0;
      swift_willThrow();

      sub_2259BEF00(v29, v28);
      sub_2259BEF00(v127, v130);
      sub_2259BEF00(0, 0xC000000000000000);
      sub_2259BEF00(v31, v30);
      sub_225A91630(v0 + 16);

      sub_2259BEF00(v31, v30);
      sub_225A915D0(v135, type metadata accessor for ISO18013MobileSecurityObject);
      sub_225A915D0(v141, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      v48 = *(v32 + 8);
      v48(v143, v142);
      v48(v147, v142);
      sub_225A915D0(v153, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
LABEL_17:

      v49 = *(v0 + 8);
      goto LABEL_18;
    }

    v63 = *(v0 + 840);
    v64 = *(v0 + 832);
    v65 = *(v0 + 824);
    v66 = *(v0 + 816);
    v67 = *(v0 + 792);
    v68 = *(v0 + 784);
    v160 = *(v0 + 576);
    v156 = *(v0 + 552);
    v69 = *(v0 + 528);
    v151 = *(v0 + 520);
    v154 = *(v0 + 544);
    v144 = *(v0 + 480);
    v148 = *(v0 + 504);
    v162 = *(v0 + 416);
    v158 = *(v0 + 368);

    sub_2259BEF00(v64, v63);
    sub_2259BEF00(v66, v65);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v68, v67);
    sub_225A91630(v0 + 16);

    sub_2259BEF00(v68, v67);
    sub_225A915D0(v144, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v148, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v70 = *(v69 + 8);
    v70(v154, v151);
    v70(v156, v151);
    sub_225A915D0(v160, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    (*(v14 + 32))(v158, v162, v13);
  }

  else
  {
    v51 = *(v0 + 40);
    if (v51 >> 60 == 15)
    {
      v52 = *(v0 + 400);
      v53 = MEMORY[0x277D84F90];
      v54 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v19 = v55;
      v56 = sub_225CCE954();
      v57 = *(v56 - 8);
      (*(v57 + 56))(v52, 1, 1, v56);
      LODWORD(v56) = (*(v57 + 48))(v52, 1, v56);
      sub_2259CB640(v52, &unk_27D73B050, &unk_225CD3AD0);
      if (v56)
      {
        v58 = 0;
      }

      else
      {
        v58 = 23;
      }

      v150 = v58;
      v59 = sub_225B2C374(v53);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = v59;
      sub_225B2C4A0(v54, sub_225B2AC40, 0, v60, &v165);

      v138 = v165;
      v25 = sub_225B29AA0(0, 1, 1, v53);
      v62 = *(v25 + 2);
      v61 = *(v25 + 3);
      if (v62 >= v61 >> 1)
      {
        v25 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v25);
      }

      v28 = *(v0 + 840);
      v29 = *(v0 + 832);
      v127 = *(v0 + 816);
      v130 = *(v0 + 824);
      v30 = *(v0 + 792);
      v31 = *(v0 + 784);
      v153 = *(v0 + 576);
      v143 = *(v0 + 544);
      v147 = *(v0 + 552);
      v32 = *(v0 + 528);
      v141 = *(v0 + 504);
      v142 = *(v0 + 520);
      v135 = *(v0 + 480);
      *(v25 + 2) = v62 + 1;
      v33 = &v25[56 * v62];
      v34 = 0xD000000000000019;
      v35 = 0x8000000225D1B250;
      *(v33 + 4) = 0xD000000000000019;
      *(v33 + 5) = 0x8000000225D1B250;
      *(v33 + 6) = 0xD000000000000022;
      *(v33 + 7) = 0x8000000225D1B1F0;
      *(v33 + 8) = 0xD000000000000023;
      *(v33 + 9) = 0x8000000225D1B220;
      v36 = 209;
      goto LABEL_16;
    }

    v71 = *(v0 + 32);
    v165 = xmmword_225CD4150;
    sub_2259CB710(v71, v51);
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_225CCDB94();
    v159 = v71;
    v161 = v51;
    *(v0 + 1014) = 0;
    *(v0 + 1020) = 0;
    sub_225CCDB74();
    sub_2259BEF00(0, 0xC000000000000000);
    v72 = *(v0 + 792);
    v73 = *(v0 + 784);
    v74 = *(v0 + 728);
    v75 = *(v0 + 720);
    v76 = *(v0 + 712);
    v77 = *(v0 + 696);
    v78 = *(v0 + 688);
    v79 = *(v0 + 680);
    v145 = *(v0 + 408);
    sub_225CCDB84();
    (*(v78 + 8))(v77, v79);
    sub_225A91708(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v80 = sub_225CCE154();
    v82 = sub_2259D732C(v80, v81);

    v83 = sub_2259D8490(v82);
    v85 = v84;

    (*(v75 + 8))(v74, v76);
    v86 = sub_225CCCFD4();
    v88 = v87;
    v89 = *(v0 + 48);
    v90 = *(v0 + 56);
    sub_2259CB710(v73, v72);
    sub_2259CB710(v86, v88);
    sub_2259CB710(v89, v90);
    sub_225CCD2F4();
    v91 = sub_225CCD354();
    v92 = *(v91 - 8);
    v157 = v88;
    v152 = v85;
    v155 = v86;
    v149 = v83;
    if ((*(v92 + 48))(v145, 1, v91) == 1)
    {
      v93 = *(v0 + 400);
      sub_2259CB640(*(v0 + 408), &qword_27D73AC30, &unk_225CDCF40);
      v94 = MEMORY[0x277D84F90];
      v95 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v97 = v96;
      v98 = sub_225CCE954();
      v99 = *(v98 - 8);
      (*(v99 + 56))(v93, 1, 1, v98);
      LODWORD(v98) = (*(v99 + 48))(v93, 1, v98);
      sub_2259CB640(v93, &unk_27D73B050, &unk_225CD3AD0);
      if (v98)
      {
        v100 = 370;
      }

      else
      {
        v100 = 23;
      }

      v101 = sub_225B2C374(v94);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v164 = v101;
      sub_225B2C4A0(v95, sub_225B2AC40, 0, v102, &v164);

      v124 = v164;
      v103 = sub_225B29AA0(0, 1, 1, v94);
      v105 = *(v103 + 2);
      v104 = *(v103 + 3);
      v106 = v100;
      if (v105 >= v104 >> 1)
      {
        v103 = sub_225B29AA0((v104 > 1), v105 + 1, 1, v103);
      }

      v107 = *(v0 + 840);
      v108 = *(v0 + 832);
      v121 = *(v0 + 816);
      v122 = *(v0 + 824);
      v123 = *(v0 + 792);
      v109 = *(v0 + 784);
      v136 = *(v0 + 552);
      v139 = *(v0 + 576);
      v110 = *(v0 + 528);
      v131 = *(v0 + 520);
      v133 = *(v0 + 544);
      v128 = *(v0 + 504);
      v125 = *(v0 + 480);
      *(v103 + 2) = v105 + 1;
      v111 = &v103[56 * v105];
      *(v111 + 4) = 0xD000000000000042;
      *(v111 + 5) = 0x8000000225D1B270;
      *(v111 + 6) = 0xD000000000000022;
      *(v111 + 7) = 0x8000000225D1B1F0;
      *(v111 + 8) = 0xD000000000000023;
      *(v111 + 9) = 0x8000000225D1B220;
      *(v111 + 10) = 205;
      *v97 = v106;
      *(v97 + 8) = v103;
      *(v97 + 16) = 0xD000000000000042;
      *(v97 + 24) = 0x8000000225D1B270;
      *(v97 + 32) = v124;
      *(v97 + 40) = 0;
      swift_willThrow();

      sub_2259BEF00(v108, v107);
      sub_2259BEF00(v121, v122);
      sub_2259BEF00(0, 0xC000000000000000);
      sub_2259BEF00(v109, v123);
      sub_2259BEF00(v149, v85);
      sub_2259B97A8(v159, v161);
      sub_225A91630(v0 + 16);
      sub_2259BEF00(v155, v157);

      sub_2259BEF00(v109, v123);
      sub_225A915D0(v125, type metadata accessor for ISO18013MobileSecurityObject);
      sub_225A915D0(v128, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      v112 = *(v110 + 8);
      v112(v133, v131);
      v112(v136, v131);
      sub_225A915D0(v139, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      sub_2259BEF00(v165, *(&v165 + 1));
      goto LABEL_17;
    }

    v113 = *(v0 + 840);
    v114 = *(v0 + 832);
    v115 = *(v0 + 824);
    v116 = *(v0 + 816);
    v117 = *(v0 + 792);
    v118 = *(v0 + 784);
    v137 = *(v0 + 552);
    v140 = *(v0 + 576);
    v119 = *(v0 + 528);
    v132 = *(v0 + 520);
    v134 = *(v0 + 544);
    v129 = *(v0 + 504);
    v126 = *(v0 + 480);
    v163 = *(v0 + 408);
    v146 = *(v0 + 368);

    sub_2259BEF00(v114, v113);
    sub_2259BEF00(v116, v115);
    sub_2259BEF00(0, 0xC000000000000000);
    sub_2259BEF00(v118, v117);
    sub_2259BEF00(v149, v152);
    sub_2259B97A8(v159, v161);
    sub_225A91630(v0 + 16);
    sub_2259BEF00(v155, v157);

    sub_2259BEF00(v118, v117);
    sub_225A915D0(v126, type metadata accessor for ISO18013MobileSecurityObject);
    sub_225A915D0(v129, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
    v120 = *(v119 + 8);
    v120(v134, v132);
    v120(v137, v132);
    sub_225A915D0(v140, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    sub_2259BEF00(0, 0xC000000000000000);
    (*(v92 + 32))(v146, v163, v91);
  }

  v49 = *(v0 + 8);
LABEL_18:

  return v49();
}

uint64_t sub_225A8E874()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v15 = v0[69];
  v16 = v0[72];
  v7 = v0[66];
  v8 = v0[65];
  v13 = v0[63];
  v14 = v0[68];
  v12 = v0[60];

  sub_2259BEF00(v2, v1);
  sub_2259BEF00(v4, v3);
  sub_2259BEF00(0, 0xC000000000000000);
  sub_2259BEF00(v6, v5);

  sub_2259BEF00(v6, v5);
  sub_225A915D0(v12, type metadata accessor for ISO18013MobileSecurityObject);
  sub_225A915D0(v13, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  v9 = *(v7 + 8);
  v9(v14, v8);
  v9(v15, v8);
  sub_225A915D0(v16, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);

  v10 = v0[1];

  return v10();
}

uint64_t CredentialBuilderPayloadStatusDetails.asMSOStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = *(v1 + 24);
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  sub_2259CB710(v2, v3);
  sub_2259CB710(v4, v7);
}

unint64_t sub_225A8EBDC(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000001FLL;
}

unint64_t sub_225A8ECEC(uint64_t a1)
{
  sub_225CCF204();

  sub_225B34448(*(a1 + 32), *(a1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v2 = sub_225CCE384();
  v4 = v3;

  MEMORY[0x22AA6CE70](v2, v4);

  return 0xD000000000000024;
}

id IdentityCredentialPayloadBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityCredentialPayloadBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityCredentialPayloadBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CredentialBuilderPayloadDetails.docType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CredentialBuilderPayloadDetails.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 32);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CredentialBuilderPayloadDetails.timePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialBuilderPayloadDetails(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t CredentialBuilderPayloadDetails.deviceKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 40);
  v4 = sub_225CCD494();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CredentialBuilderPayloadDetails.deviceKeyAuthorizations.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_225A90C50(v4, v5);
}

uint64_t CredentialBuilderPayloadDetails.digestAlgorithm.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialBuilderPayloadDetails(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t CredentialBuilderPayloadDetails.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CredentialBuilderPayloadDetails(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225A90C98(v4, v5, v6, v7, v8, v9);
}

uint64_t CredentialBuilderPayloadDetails.KeyAuthorizations.init(namespaces:dataElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CredentialBuilderPayloadDetails.Element.elementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 CredentialBuilderPayloadDetails.init(format:docType:elements:validFrom:validUntil:timePolicy:deviceKey:deviceKeyAuthorizations:signingAlgorithm:digestAlgorithm:status:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char *a12, uint64_t a13)
{
  v16 = *a7;
  v18 = *a10;
  v17 = a10[1];
  v19 = *a12;
  v20 = *(a13 + 40);
  v31 = *(a13 + 32);
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for CredentialBuilderPayloadDetails(0);
  sub_2259D88EC(a5, a9 + v21[7], &unk_27D73FD00, &qword_225CDC6E0);
  v22 = v21[8];
  v23 = sub_225CCD0B4();
  v29 = *(a13 + 16);
  v30 = *a13;
  (*(*(v23 - 8) + 32))(a9 + v22, a6, v23);
  *(a9 + v21[9]) = v16;
  v24 = v21[10];
  v25 = sub_225CCD494();
  (*(*(v25 - 8) + 32))(a9 + v24, a8, v25);
  v26 = (a9 + v21[11]);
  *v26 = v18;
  v26[1] = v17;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = v19;
  v27 = a9 + v21[14];
  result = v30;
  *v27 = v30;
  *(v27 + 16) = v29;
  *(v27 + 32) = v31;
  *(v27 + 40) = v20;
  return result;
}

uint64_t CredentialBuilderSignatureDetails.issuerKey.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t CredentialBuilderSignatureDetails.signature.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

double CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerCertificate:signature:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = xmmword_225CD3100;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t CredentialBuilderSignatureDetails.init(signingAlgorithm:issuerKey:signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

CoreIDVShared::CredentialBuilderPayloadFormat_optional __swiftcall CredentialBuilderPayloadFormat.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

CoreIDVShared::CredentialBuilderTimePolicy_optional __swiftcall CredentialBuilderTimePolicy.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CredentialBuilderPayloadStatusDetails.identifier.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.certificate.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.uri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CredentialBuilderPayloadStatusDetails.init(identifier:certificate:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_225A8F568(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_225CCE164();
      sub_225A91708(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225A8F648(char *a1)
{
  v2 = sub_225CCF454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  sub_225CCD424();
  swift_allocObject();
  v7 = sub_225CCD414();
  if (v6)
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_27D73D120);
    (*(v3 + 16))(v5, v8, v2);
    v14 = &type metadata for ISO18013CodingKeyFormat;
    v13[0] = 1;
  }

  else
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_27D73D120);
    (*(v3 + 16))(v5, v9, v2);
    v14 = &type metadata for ISO18013CodingKeyFormat;
    v13[0] = 0;
  }

  v10 = sub_225CCD404();
  sub_225A0528C(v13, v5);
  v10(v12, 0);
  return v7;
}

uint64_t sub_225A8F830(size_t a1)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v9 = sub_225B29AA0((v10 > 1), v6, 1, v9);
LABEL_10:
    *(v9 + 2) = v6;
    v20 = &v9[56 * v3];
    *(v20 + 4) = 0xD000000000000024;
    *(v20 + 5) = v5;
    v21 = v26;
    *(v20 + 6) = 0xD000000000000022;
    *(v20 + 7) = v21;
    v22 = v25;
    *(v20 + 8) = 0xD000000000000020;
    *(v20 + 9) = v22;
    *(v20 + 10) = 219;
    *v2 = v4;
    *(v2 + 8) = v9;
    *(v2 + 16) = 0xD000000000000024;
    *(v2 + 24) = v5;
    *(v2 + 32) = v11;
    *(v2 + 40) = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v12 = sub_225CCE874();
    *(v12 + 16) = a1;
    bzero((v12 + 32), a1);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a1, (v12 + 32)))
  {

    v5 = 0x8000000225D1B360;
    v25 = 0x8000000225D1B390;
    v26 = 0x8000000225D1B1F0;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v15;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v11, 1, v16);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v16)
    {
      v4 = 371;
    }

    else
    {
      v4 = 23;
    }

    v18 = sub_225B2C374(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v18;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v27);

    v11 = v27;
    v9 = sub_225B29AA0(0, 1, 1, v13);
    v3 = *(v9 + 2);
    v10 = *(v9 + 3);
    v6 = v3 + 1;
    if (v3 < v10 >> 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v24 = sub_2259D8490(v12);

  return v24;
}

uint64_t sub_225A8FB40(uint64_t a1)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v97 = *(v103 - 8);
  v2 = MEMORY[0x28223BE20](v103);
  v110 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v84 - v5;
  MEMORY[0x28223BE20](v4);
  v98 = &v84 - v7;
  v102 = type metadata accessor for ISO18013IssuerSignedItem(0);
  v8 = MEMORY[0x28223BE20](v102);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = (&v84 - v11);
  v101 = type metadata accessor for CredentialBuilderPayloadDetails.Element(0);
  v94 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDD0, &qword_225CDCF70);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v93 = (&v84 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDD8, &unk_225CDCF78);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v108 = &v84 - v21;
  v92 = sub_225B2D788(MEMORY[0x277D84F90]);
  LOBYTE(v115) = *a1;
  v104 = sub_225A8F648(&v115);
  v22 = *(a1 + 24);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(a1 + 24) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v91 = (v26 + 63) >> 6;
  v105 = (v15 + 48);
  v106 = (v15 + 56);

  v30 = 0;
  v100 = v13;
  v96 = v14;
  v89 = v29;
  v95 = v20;
  v85 = v24;
LABEL_4:
  if (v28)
  {
    v31 = v30;
    v32 = v108;
  }

  else
  {
    v32 = v108;
    do
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_41;
      }

      if (v31 >= v91)
      {

        return v92;
      }

      v28 = *(v24 + 8 * v31);
      ++v30;
    }

    while (!v28);
  }

  v88 = (v28 - 1) & v28;
  v87 = v31;
  v33 = __clz(__rbit64(v28)) | (v31 << 6);
  v34 = *(v29 + 56);
  v35 = (*(v29 + 48) + 16 * v33);
  v36 = v35[1];
  v86 = *v35;
  v37 = *(v34 + 8 * v33);
  v90 = v36;

  v38 = sub_225B2D79C(MEMORY[0x277D84F90]);
  v39 = 0;
  v40 = *(v37 + 16);
  v107 = v37;
  v99 = v40;
  while (1)
  {
    if (v39 == v40)
    {
      v41 = 1;
      v111 = v40;
    }

    else
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v39 >= *(v37 + 16))
      {
        goto LABEL_43;
      }

      v42 = v39 + 1;
      v43 = v37 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v39;
      v44 = *(v14 + 48);
      v45 = v93;
      *v93 = v39;
      sub_225A90CF4(v43, v45 + v44, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      sub_2259D88EC(v45, v20, &qword_27D73BDD0, &qword_225CDCF70);
      v41 = 0;
      v111 = v42;
    }

    (*v106)(v20, v41, 1, v14);
    sub_2259D88EC(v20, v32, &qword_27D73BDD8, &unk_225CDCF78);
    if ((*v105)(v32, 1, v14) == 1)
    {

      v81 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v81;
      sub_225A044D0(v38, v86, v90, isUniquelyReferenced_nonNull_native);

      v92 = v115;
      v30 = v87;
      v29 = v89;
      v24 = v85;
      v28 = v88;
      goto LABEL_4;
    }

    v112 = v38;
    v46 = *v32;
    sub_225A91568(v32 + *(v14 + 48), v13, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v47 = v114;
    v48 = sub_225A8F830(0x20uLL);
    v114 = v47;
    if (v47)
    {

      sub_225A915D0(v13, type metadata accessor for CredentialBuilderPayloadDetails.Element);
LABEL_36:

      return v92;
    }

    if (v46 < 0)
    {
      break;
    }

    v50 = v48;
    v51 = v49;
    v52 = v6;
    v53 = v13;
    v55 = *v13;
    v54 = v13[1];
    v56 = v113;
    sub_225A90CF4(v53 + *(v101 + 20), v113 + *(v102 + 28), type metadata accessor for AnyCodable);
    *v56 = v46;
    v56[1] = v50;
    v56[2] = v51;
    v56[3] = v55;
    v109 = v55;
    v56[4] = v54;
    sub_225A90CF4(v56, v10, type metadata accessor for ISO18013IssuerSignedItem);
    *v52 = 24;
    v57 = *(v103 + 48);
    sub_225A90CF4(v10, &v52[v57], type metadata accessor for ISO18013IssuerSignedItem);
    sub_225A91708(&qword_27D73BC98, type metadata accessor for ISO18013IssuerSignedItem, &protocol conformance descriptor for ISO18013IssuerSignedItem);

    v58 = v114;
    v59 = sub_225CCD3F4();
    if (v58)
    {

      sub_225A915D0(v10, type metadata accessor for ISO18013IssuerSignedItem);
      sub_225A915D0(v113, type metadata accessor for ISO18013IssuerSignedItem);

      sub_225A915D0(v100, type metadata accessor for CredentialBuilderPayloadDetails.Element);
      sub_225A915D0(&v52[v57], type metadata accessor for ISO18013IssuerSignedItem);
      goto LABEL_36;
    }

    v61 = v59;
    v62 = v60;
    v114 = 0;
    v63 = v10;
    sub_225A915D0(v10, type metadata accessor for ISO18013IssuerSignedItem);

    *(v52 + 1) = v61;
    *(v52 + 2) = v62;
    v64 = v52;
    v65 = v98;
    sub_2259D88EC(v52, v98, &qword_27D73B3D0, &qword_225CDC650);
    sub_2259D88EC(v65, v110, &qword_27D73B3D0, &qword_225CDC650);
    v66 = v112;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v66;
    v68 = v109;
    v70 = sub_2259F18D4(v109, v54);
    v71 = v66[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_40;
    }

    v74 = v69;
    if (v66[3] >= v73)
    {
      v32 = v108;
      if (v67)
      {
        v38 = v115;
        if (v69)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_225A447F4();
        v38 = v115;
        if (v74)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_225A413F0(v73, v67);
      v75 = sub_2259F18D4(v68, v54);
      v32 = v108;
      if ((v74 & 1) != (v76 & 1))
      {
        goto LABEL_45;
      }

      v70 = v75;
      v38 = v115;
      if (v74)
      {
LABEL_11:
        sub_225A91698(v110, v38[7] + *(v97 + 72) * v70);
        sub_225A915D0(v113, type metadata accessor for ISO18013IssuerSignedItem);
        goto LABEL_12;
      }
    }

    v38[(v70 >> 6) + 8] |= 1 << v70;
    v77 = (v38[6] + 16 * v70);
    *v77 = v68;
    v77[1] = v54;
    sub_2259D88EC(v110, v38[7] + *(v97 + 72) * v70, &qword_27D73B3D0, &qword_225CDC650);

    sub_225A915D0(v113, type metadata accessor for ISO18013IssuerSignedItem);
    v78 = v38[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_44;
    }

    v38[2] = v80;
LABEL_12:
    v13 = v100;
    sub_225A915D0(v100, type metadata accessor for CredentialBuilderPayloadDetails.Element);
    v6 = v64;
    v10 = v63;
    v20 = v95;
    v14 = v96;
    v37 = v107;
    v40 = v99;
    v39 = v111;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225A90588(uint64_t a1)
{
  v2 = &qword_225CDC650;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v85 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC0, &qword_225CDCF60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = (&v70 - v12);
  v13 = sub_225B2D788(MEMORY[0x277D84F90]);
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v72 = a1;

  v19 = 0;
  v84 = v11;
  v70 = v18;
  v71 = a1 + 64;
  v79 = v6;
LABEL_6:
  if (v17)
  {
    v77 = v13;
    v22 = v19;
LABEL_12:
    v75 = v22;
    v76 = (v17 - 1) & v17;
    v23 = __clz(__rbit64(v17)) | (v22 << 6);
    v24 = *(v72 + 56);
    v25 = (*(v72 + 48) + 16 * v23);
    v26 = v25[1];
    v73 = *v25;
    v74 = v26;
    v27 = *(v24 + 8 * v23);

    v28 = sub_225B2D79C(MEMORY[0x277D84F90]);
    v29 = 0;
    v30 = *(v27 + 64);
    v78 = v27 + 64;
    v81 = v27;
    v31 = 1 << *(v27 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & v30;
    v34 = (v31 + 63) >> 6;
    v35 = v2;
    v82 = v34;
    while (v33)
    {
      v36 = v29;
LABEL_27:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = v39 | (v36 << 6);
      v41 = v80;
      v42 = (*(v81 + 48) + 16 * v40);
      v44 = *v42;
      v43 = v42[1];
      sub_225A0DE54(*(v81 + 56) + *(v85 + 72) * v40, v80, &qword_27D73B3D0, v35);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8, &qword_225CDCF68);
      v46 = *(v45 + 48);
      v47 = v84;
      *v84 = v44;
      *(v47 + 1) = v43;
      v11 = v47;
      sub_2259D88EC(v41, &v47[v46], &qword_27D73B3D0, v35);
      (*(*(v45 - 8) + 56))(v11, 0, 1, v45);

      v38 = v36;
      v6 = v79;
LABEL_28:
      v48 = v83;
      sub_2259D88EC(v11, v83, &qword_27D73BDC0, &qword_225CDCF60);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8, &qword_225CDCF68);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {
        v2 = v35;

        v20 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v20;
        sub_225A044D0(v28, v73, v74, isUniquelyReferenced_nonNull_native);

        v13 = v87;
        v19 = v75;
        v17 = v76;
        v18 = v70;
        v14 = v71;
        goto LABEL_6;
      }

      v86 = v38;
      v50 = v48;
      v52 = *v48;
      v51 = v48[1];
      sub_2259D88EC(v50 + *(v49 + 48), v6, &qword_27D73B3D0, v35);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v28;
      v55 = sub_2259F18D4(v52, v51);
      v56 = v28[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_41;
      }

      v59 = v54;
      if (v28[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          sub_225A447F4();
        }
      }

      else
      {
        sub_225A413F0(v58, v53);
        v60 = sub_2259F18D4(v52, v51);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_44;
        }

        v55 = v60;
      }

      if (v59)
      {

        v28 = v87;
        sub_225A91698(v6, v87[7] + *(v85 + 72) * v55);
        v29 = v86;
        v35 = &qword_225CDC650;
      }

      else
      {
        v28 = v87;
        v87[(v55 >> 6) + 8] |= 1 << v55;
        v62 = (v28[6] + 16 * v55);
        *v62 = v52;
        v62[1] = v51;
        v63 = v28[7] + *(v85 + 72) * v55;
        v35 = &qword_225CDC650;
        sub_2259D88EC(v6, v63, &qword_27D73B3D0, &qword_225CDC650);
        v64 = v28[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        v67 = v86;
        if (v65)
        {
          goto LABEL_42;
        }

        v28[2] = v66;
        v29 = v67;
      }

      v11 = v84;
      v34 = v82;
    }

    if (v34 <= v29 + 1)
    {
      v37 = v29 + 1;
    }

    else
    {
      v37 = v34;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v36 >= v34)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BDC8, &qword_225CDCF68);
        (*(*(v68 - 8) + 56))(v11, 1, 1, v68);
        v33 = 0;
        goto LABEL_28;
      }

      v33 = *(v78 + 8 * v36);
      ++v29;
      if (v33)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        return v13;
      }

      v17 = *(v14 + 8 * v22);
      ++v19;
      if (v17)
      {
        v77 = v13;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225A90BDC()
{
  result = qword_27D73BD70;
  if (!qword_27D73BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD70);
  }

  return result;
}

uint64_t sub_225A90C50(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_225A90C98(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2259CB710(result, a2);
    sub_2259CB710(a3, a4);
  }

  return result;
}

uint64_t sub_225A90CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_225A90D60()
{
  result = qword_27D73BD78;
  if (!qword_27D73BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD78);
  }

  return result;
}

unint64_t sub_225A90DB8()
{
  result = qword_27D73BD80;
  if (!qword_27D73BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BD80);
  }

  return result;
}

uint64_t dispatch thunk of IdentityCredentialPayloadBuilderDelegate.signPayload(builder:dataToSign:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2259FE39C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of IdentityCredentialPayloadBuilder.buildPayload(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A01DDC;

  return v7(a1);
}

void sub_225A910DC(uint64_t a1)
{
  sub_225A84EEC(319);
  if (v1 <= 0x3F)
  {
    sub_225A91220(319);
    if (v2 <= 0x3F)
    {
      sub_225CCD0B4();
      if (v3 <= 0x3F)
      {
        sub_225CCD494();
        if (v4 <= 0x3F)
        {
          sub_225A62224(319, &qword_27D73BD98, &type metadata for CredentialBuilderPayloadDetails.KeyAuthorizations);
          if (v5 <= 0x3F)
          {
            type metadata accessor for COSEAlgorithm(319);
            if (v6 <= 0x3F)
            {
              sub_225A62224(319, &qword_27D73BDA0, &type metadata for CredentialBuilderPayloadStatusDetails);
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

void sub_225A91220(uint64_t a1)
{
  if (!qword_28105B788)
  {
    sub_225CCD0B4();
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_28105B788);
    }
  }
}

uint64_t sub_225A91278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_225A912D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_225A9135C(uint64_t a1)
{
  result = type metadata accessor for AnyCodable(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225A913D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_225A91434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_225A914C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A9150C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A91568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A915D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225A91698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A91708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProofingDisplayMessageAction.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingDisplayMessageAction.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = [a1 objectID];
  v8 = [a1 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_225CCE474();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 actionType];
  v14 = [a1 actionURL];
  if (v14)
  {
    v15 = v14;
    sub_225CCCE34();

    v16 = sub_225CCCEA4();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  }

  else
  {

    v17 = sub_225CCCEA4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  *a2 = v7;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v13;
  v18 = type metadata accessor for ProofingDisplayMessageAction(0);
  return sub_2259D88EC(v6, a2 + *(v18 + 28), &unk_27D73E090, &qword_225CD8ED0);
}

uint64_t ProofingDisplayMessage.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingDisplayMessage.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void ProofingDisplayMessage.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for ProofingDisplayMessageAction(0);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = [a1 objectID];
  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_225CCE474();
    v52 = v13;
    v53 = v12;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v14 = [a1 message];
  if (v14)
  {
    v15 = v14;
    v16 = sub_225CCE474();
    v50 = v17;
    v51 = v16;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v18 = [a1 actions];
  if (!v18)
  {

LABEL_37:
    v28 = MEMORY[0x277D84F90];
LABEL_38:
    v46 = v53;
    *a2 = v54;
    a2[1] = v46;
    v47 = v51;
    a2[2] = v52;
    a2[3] = v47;
    a2[4] = v50;
    a2[5] = v28;
    return;
  }

  v49 = a1;
  v19 = v18;
  v20 = [v18 array];

  v21 = sub_225CCE814();
  v22 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + 32;
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_2259CB810(v24, v63);
      sub_2259B9624(v63, &v61);
      type metadata accessor for StoredProofingDisplayMessageAction();
      if ((swift_dynamicCast() & 1) != 0 && v62)
      {
        MEMORY[0x22AA6D020]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = v9;
          sub_225CCE844();
          v9 = v60;
        }

        sub_225CCE884();
        v25 = v64;
      }

      v24 += 32;
      --v23;
    }

    while (v23);

    if (!(v25 >> 62))
    {
LABEL_17:
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_17;
    }
  }

  v26 = sub_225CCF144();
  if (!v26)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_18:
  v57 = v25;
  *&v63[0] = v22;
  sub_2259D5398(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v48 = a2;
    v27 = 0;
    v28 = *&v63[0];
    v29 = v57;
    v55 = v57 & 0xC000000000000001;
    v56 = v26;
    do
    {
      if (v55)
      {
        v30 = MEMORY[0x22AA6DA80](v27);
      }

      else
      {
        v30 = *(v29 + 8 * v27 + 32);
      }

      v31 = v30;
      v60 = [v30 objectID];
      v32 = [v31 title];
      if (v32)
      {
        v33 = v32;
        v34 = sub_225CCE474();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = v9;
      v38 = [v31 actionType];
      v39 = [v31 actionURL];
      if (v39)
      {
        v40 = v39;
        sub_225CCCE34();

        v41 = 0;
        v31 = v40;
      }

      else
      {
        v41 = 1;
      }

      v42 = sub_225CCCEA4();
      (*(*(v42 - 8) + 56))(v6, v41, 1, v42);
      v9 = v37;
      v43 = v59;
      *v37 = v60;
      *(v37 + 1) = v34;
      *(v37 + 2) = v36;
      *(v37 + 3) = v38;
      sub_2259D88EC(v6, &v37[*(v43 + 28)], &unk_27D73E090, &qword_225CD8ED0);
      *&v63[0] = v28;
      v45 = *(v28 + 16);
      v44 = *(v28 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2259D5398((v44 > 1), v45 + 1, 1);
        v28 = *&v63[0];
      }

      ++v27;
      *(v28 + 16) = v45 + 1;
      sub_225A936EC(v37, v28 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45);
      v29 = v57;
    }

    while (v56 != v27);

    a2 = v48;
    goto LABEL_38;
  }

  __break(1u);
}

uint64_t ProofingSession.country.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProofingSession.credentialIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 40));

  return v1;
}

uint64_t ProofingSession.extendedReviewURLString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 56));

  return v1;
}

uint64_t ProofingSession.documentType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 64));

  return v1;
}

uint64_t ProofingSession.lastExecutedActionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 72));

  return v1;
}

uint64_t ProofingSession.learnMoreURLString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 76));

  return v1;
}

uint64_t ProofingSession.pairingID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 84));

  return v1;
}

uint64_t ProofingSession.partnerSchemeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 88));

  return v1;
}

uint64_t ProofingSession.productIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 92));

  return v1;
}

uint64_t ProofingSession.proofingSessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 100));

  return v1;
}

uint64_t ProofingSession.provisioningCredentialID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 108));

  return v1;
}

uint64_t ProofingSession.provisioningTargetInstanceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 116));

  return v1;
}

uint64_t ProofingSession.serverAttestedProvisioningData.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 120);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 132));

  return v1;
}

uint64_t ProofingSession.supplementalProvisioningData.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 136);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.workflowID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 148));

  return v1;
}

uint64_t ProofingSession.livenessManualReviewEncryptedMessage.getter()
{
  v1 = v0 + *(type metadata accessor for ProofingSession(0) + 152);
  v2 = *v1;
  sub_2259CB6FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ProofingSession.piiTokenIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProofingSession(0) + 156));

  return v1;
}

void *ProofingSession.proofingErrorMessage.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProofingSession(0) + 160);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225A93770(v4, v5, v6, v7, v8, v9);
}

uint64_t ProofingSession.uploadAssets.getter()
{
  type metadata accessor for ProofingSession(0);
}

uint64_t ProofingSession.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v206 = a2;
  v3 = sub_225CCCD54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v142 - v11;
  v203 = [a1 objectID];
  v202 = [a1 canUploadOnExpensiveNetwork];
  v201 = [a1 cloudKitUploadsMaxRetryCount];
  v200 = [a1 connectToWifiReminderInDays];
  v13 = [a1 country];
  if (v13)
  {
    v14 = v13;
    v199 = sub_225CCE474();
    v198 = v15;
  }

  else
  {
    v199 = 0;
    v198 = 0;
  }

  v16 = [a1 createdAt];
  if (v16)
  {
    v17 = v16;
    sub_225CCD094();

    v18 = sub_225CCD0B4();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  }

  else
  {
    v19 = sub_225CCD0B4();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  v20 = [a1 credentialIdentifier];
  if (v20)
  {
    v21 = v20;
    v197 = sub_225CCE474();
    v196 = v22;
  }

  else
  {
    v197 = 0;
    v196 = 0;
  }

  v195 = [a1 didAttemptComboProofing];
  v194 = [a1 didNotifyOnUploadsCompletion];
  v193 = [a1 didShowWifiReminderAlert];
  v23 = [a1 extendedReviewURLString];
  if (v23)
  {
    v24 = v23;
    v192 = sub_225CCE474();
    v191 = v25;
  }

  else
  {
    v192 = 0;
    v191 = 0;
  }

  v190 = [a1 hasUserConsentToShareBiomeData];
  v26 = [a1 documentType];
  if (v26)
  {
    v27 = v26;
    v189 = sub_225CCE474();
    v188 = v28;
  }

  else
  {
    v189 = 0;
    v188 = 0;
  }

  v187 = [a1 issuerCurrentCredentialCapacity];
  v29 = [a1 lastExecutedActionIdentifier];
  if (v29)
  {
    v30 = v29;
    v186 = sub_225CCE474();
    v185 = v31;
  }

  else
  {
    v186 = 0;
    v185 = 0;
  }

  v32 = [a1 learnMoreURLString];
  if (v32)
  {
    v33 = v32;
    v184 = sub_225CCE474();
    v183 = v34;
  }

  else
  {
    v184 = 0;
    v183 = 0;
  }

  v182 = [a1 manualCheckInterval];
  v35 = [a1 pairingID];
  if (v35)
  {
    v36 = v35;
    v181 = sub_225CCE474();
    v180 = v37;
  }

  else
  {
    v181 = 0;
    v180 = 0;
  }

  v38 = [a1 partnerSchemeID];
  if (v38)
  {
    v39 = v38;
    v179 = sub_225CCE474();
    v178 = v40;
  }

  else
  {
    v179 = 0;
    v178 = 0;
  }

  v41 = [a1 productIdentifier];
  if (v41)
  {
    v42 = v41;
    v177 = sub_225CCE474();
    v176 = v43;
  }

  else
  {
    v177 = 0;
    v176 = 0;
  }

  v175 = [a1 proofingActionStatus];
  v44 = [a1 proofingSessionID];
  if (v44)
  {
    v45 = v44;
    v174 = sub_225CCE474();
    v173 = v46;
  }

  else
  {
    v174 = 0;
    v173 = 0;
  }

  v47 = [a1 provisioningAttemptDate];
  if (v47)
  {
    v48 = v47;
    sub_225CCD094();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = sub_225CCD0B4();
  (*(*(v50 - 8) + 56))(v10, v49, 1, v50);
  v51 = [a1 provisioningCredentialID];
  if (v51)
  {
    v52 = v51;
    v172 = sub_225CCE474();
    v171 = v53;
  }

  else
  {
    v172 = 0;
    v171 = 0;
  }

  v170 = [a1 provisioningRetryTimeout];
  v54 = [a1 provisioningTargetInstanceID];
  if (v54)
  {
    v55 = v54;
    v169 = sub_225CCE474();
    v168 = v56;
  }

  else
  {
    v169 = 0;
    v168 = 0;
  }

  v57 = [a1 serverAttestedProvisioningData];
  if (v57)
  {
    v58 = v57;
    v167 = sub_225CCCFA4();
    v166 = v59;
  }

  else
  {
    v167 = 0;
    v166 = 0xF000000000000000;
  }

  v165 = [a1 shouldScheduleUploads];
  v164 = [a1 shouldShowNotificationOnWatch];
  v60 = [a1 state];
  if (v60)
  {
    v61 = v60;
    v163 = sub_225CCE474();
    v162 = v62;
  }

  else
  {
    v163 = 0;
    v162 = 0;
  }

  v63 = [a1 supplementalProvisioningData];
  if (v63)
  {
    v64 = v63;
    v161 = sub_225CCCFA4();
    v160 = v65;
  }

  else
  {
    v161 = 0;
    v160 = 0xF000000000000000;
  }

  v159 = [a1 target];
  v158 = [a1 totalUploadAssetsFileSizeInBytes];
  v66 = [a1 workflowID];
  if (v66)
  {
    v67 = v66;
    v157 = sub_225CCE474();
    v156 = v68;
  }

  else
  {
    v157 = 0;
    v156 = 0;
  }

  v69 = [a1 livenessManualReviewEncryptedMessage];
  if (v69)
  {
    v70 = v69;
    v155 = sub_225CCCFA4();
    v154 = v71;
  }

  else
  {
    v155 = 0;
    v154 = 0xF000000000000000;
  }

  v72 = [a1 piiTokenIdentifier];
  if (v72)
  {
    v73 = v72;
    v153 = sub_225CCE474();
    v152 = v74;
  }

  else
  {
    v153 = 0;
    v152 = 0;
  }

  v75 = [a1 proofingErrorMessage];
  if (v75)
  {
    ProofingDisplayMessage.init(_:)(v75, &v210);
    v150 = *(&v210 + 1);
    v151 = v210;
    v149 = v211;
    v148 = v212;
    v147 = v213;
    v146 = v214;
  }

  else
  {
    v151 = 0;
    v150 = 0;
    v149 = 0;
    v148 = 0;
    v147 = 0;
    v146 = 0;
  }

  v205 = v10;
  v76 = [a1 uploadAssets];
  v204 = v12;
  if (v76)
  {
    v144 = v4;
    v145 = a1;
    v143 = v76;
    sub_225CCEEF4();
    v77 = sub_225A937D0();
    sub_225CCF014();
    if (v212)
    {
      v78 = MEMORY[0x277D84F90];
      v207 = v77;
      do
      {
        sub_2259B9624(&v210, &v217);
        sub_2259CB810(&v217, v216);
        type metadata accessor for StoredUploadAsset();
        if (swift_dynamicCast())
        {
          v79 = v215;
          v209 = [v79 objectID];
          v80 = [v79 assetFileURL];
          if (v80)
          {
            v81 = v80;
            v208 = sub_225CCE474();
            v83 = v82;
          }

          else
          {
            v208 = 0;
            v83 = 0;
          }

          v84 = [v79 assetType];
          if (v84)
          {
            v85 = v84;
            v86 = sub_225CCE474();
            v88 = v87;
          }

          else
          {
            v86 = 0;
            v88 = 0;
          }

          v89 = v3;
          v90 = [v79 recordUUID];
          if (v90)
          {
            v91 = v90;
            v92 = sub_225CCE474();
            v94 = v93;
          }

          else
          {

            v92 = 0;
            v94 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(&v217);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_225B2A270(0, *(v78 + 2) + 1, 1, v78);
          }

          v96 = *(v78 + 2);
          v95 = *(v78 + 3);
          if (v96 >= v95 >> 1)
          {
            v78 = sub_225B2A270((v95 > 1), v96 + 1, 1, v78);
          }

          *(v78 + 2) = v96 + 1;
          v97 = &v78[56 * v96];
          v98 = v208;
          *(v97 + 4) = v209;
          *(v97 + 5) = v98;
          *(v97 + 6) = v83;
          *(v97 + 7) = v86;
          *(v97 + 8) = v88;
          *(v97 + 9) = v92;
          *(v97 + 10) = v94;
          v3 = v89;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v217);
        }

        sub_225CCF014();
      }

      while (v212);
    }

    else
    {
      v78 = MEMORY[0x277D84F90];
    }

    (*(v144 + 8))(v6, v3);
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v99 = v206;
  *v206 = v203;
  *(v99 + 8) = v202;
  v100 = v200;
  v99[2] = v201;
  v99[3] = v100;
  v101 = v198;
  v99[4] = v199;
  v99[5] = v101;
  v102 = type metadata accessor for ProofingSession(0);
  sub_2259D88EC(v204, v99 + v102[9], &unk_27D73FD00, &qword_225CDC6E0);
  v103 = (v99 + v102[10]);
  v104 = v196;
  *v103 = v197;
  v103[1] = v104;
  *(v99 + v102[11]) = v195;
  *(v99 + v102[12]) = v194;
  *(v99 + v102[13]) = v193;
  v105 = (v99 + v102[14]);
  v106 = v191;
  *v105 = v192;
  v105[1] = v106;
  *(v99 + v102[15]) = v190;
  v107 = (v99 + v102[16]);
  v108 = v188;
  *v107 = v189;
  v107[1] = v108;
  *(v99 + v102[17]) = v187;
  v109 = (v99 + v102[18]);
  v110 = v185;
  *v109 = v186;
  v109[1] = v110;
  v111 = (v99 + v102[19]);
  v112 = v183;
  *v111 = v184;
  v111[1] = v112;
  *(v99 + v102[20]) = v182;
  v113 = (v99 + v102[21]);
  v114 = v180;
  *v113 = v181;
  v113[1] = v114;
  v115 = (v99 + v102[22]);
  v116 = v178;
  *v115 = v179;
  v115[1] = v116;
  v117 = (v99 + v102[23]);
  v118 = v176;
  *v117 = v177;
  v117[1] = v118;
  *(v99 + v102[24]) = v175;
  v119 = (v99 + v102[25]);
  v120 = v173;
  *v119 = v174;
  v119[1] = v120;
  result = sub_2259D88EC(v205, v99 + v102[26], &unk_27D73FD00, &qword_225CDC6E0);
  v122 = (v99 + v102[27]);
  v123 = v171;
  *v122 = v172;
  v122[1] = v123;
  *(v99 + v102[28]) = v170;
  v124 = (v99 + v102[29]);
  v125 = v168;
  *v124 = v169;
  v124[1] = v125;
  v126 = (v99 + v102[30]);
  v127 = v166;
  *v126 = v167;
  v126[1] = v127;
  *(v99 + v102[31]) = v165;
  *(v99 + v102[32]) = v164;
  v128 = (v99 + v102[33]);
  v129 = v162;
  *v128 = v163;
  v128[1] = v129;
  v130 = (v99 + v102[34]);
  v131 = v160;
  *v130 = v161;
  v130[1] = v131;
  *(v99 + v102[35]) = v159;
  *(v99 + v102[36]) = v158;
  v132 = (v99 + v102[37]);
  v133 = v156;
  *v132 = v157;
  v132[1] = v133;
  v134 = (v99 + v102[38]);
  v135 = v154;
  *v134 = v155;
  v134[1] = v135;
  v136 = (v99 + v102[39]);
  v137 = v152;
  *v136 = v153;
  v136[1] = v137;
  v138 = (v99 + v102[40]);
  v139 = v150;
  *v138 = v151;
  v138[1] = v139;
  v140 = v148;
  v138[2] = v149;
  v138[3] = v140;
  v141 = v146;
  v138[4] = v147;
  v138[5] = v141;
  *(v99 + v102[41]) = v78;
  return result;
}