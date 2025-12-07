uint64_t createZipFor(directory:at:fileLimit:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v141) = a3;
  v131 = a4;
  v144[2] = *MEMORY[0x277D85DE8];
  v6 = sub_24158CBDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v142 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = &v124 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v124 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v124 - v15;
  MEMORY[0x28223BE20](v14);
  v136 = &v124 - v16;
  v143 = sub_24158CC2C();
  v17 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24158CC5C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() defaultManager];
  sub_24158CC4C();
  v140 = a1;
  if (sub_241586E64(a1, a2, v24))
  {
    v129 = v7;
    v135 = v23;
    v127 = v21;
    v126 = v20;
    v133 = v6;
    v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v26 = sub_24158CC8C();
    [v25 setDateFormat_];

    sub_24158CC1C();
    v27 = sub_24158CBFC();
    (*(v17 + 8))(v19, v143);
    v28 = [v25 stringFromDate_];

    v29 = sub_24158CCBC();
    v31 = v30;

    v144[0] = 0x72756F4874736170;
    v144[1] = 0xE90000000000005FLL;
    MEMORY[0x245CEA040](v29, v31);

    v32 = v136;
    sub_24158CB8C();

    v33 = sub_24158CB7C();
    v144[0] = 0;
    v34 = [v24 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v144];

    v35 = v24;
    if (v34)
    {
      v36 = v144[0];
      v37 = v135;
      v38 = sub_241587328(v140, v24, v135, v141);
      v40 = *(v38 + 16);
      v41 = v127;
      if (v40)
      {
        v125 = v25;
        v141 = v24;
        v42 = *(v129 + 16);
        v43 = (*(v129 + 80) + 32) & ~*(v129 + 80);
        v124 = v38;
        v44 = v38 + v43;
        v137 = *(v129 + 72);
        v140 = (v129 + 8);
        *&v39 = 136315394;
        v130 = v39;
        v45 = v133;
        v46 = v134;
        v47 = v132;
        v139 = v129 + 16;
        v138 = v42;
        v48 = v136;
        do
        {
          v143 = v40;
          v42(v47, v44, v45);
          sub_24158CB6C();
          sub_24158CB9C();

          v52 = sub_24158CB7C();
          v53 = sub_24158CB7C();
          v144[0] = 0;
          v54 = v47;
          v55 = v46;
          v56 = [v141 moveItemAtURL:v52 toURL:v53 error:{v144, v124}];

          if (v56)
          {
            v49 = *v140;
            v50 = v144[0];
            v49(v55, v45);
            v49(v54, v45);
            v51 = v49;
            v46 = v55;
            v47 = v54;
          }

          else
          {
            v57 = v144[0];
            v58 = sub_24158CB2C();

            swift_willThrow();
            v42(v142, v54, v45);
            v59 = v58;
            v60 = sub_24158CC3C();
            v61 = sub_24158CDBC();
            MEMORY[0x245CEA480](v58);
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v144[0] = v63;
              *v62 = v130;
              v64 = sub_24158CBCC();
              v66 = v65;
              v67 = *v140;
              (*v140)(v142, v133);
              v68 = sub_241589774(v64, v66, v144);

              *(v62 + 4) = v68;
              *(v62 + 12) = 2080;
              swift_getErrorValue();
              v69 = sub_24158CEBC();
              v71 = sub_241589774(v69, v70, v144);

              *(v62 + 14) = v71;
              _os_log_impl(&dword_241585000, v60, v61, "Failed to move file: %s - %s", v62, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245CEA560](v63, -1, -1);
              v72 = v62;
              v47 = v132;
              v45 = v133;
              MEMORY[0x245CEA560](v72, -1, -1);

              v51 = v67;
              MEMORY[0x245CEA480](v58);
              v46 = v134;
              v67(v134, v45);
              v67(v47, v45);
            }

            else
            {
              v47 = v54;

              MEMORY[0x245CEA480](v58);
              v51 = *v140;
              (*v140)(v142, v45);
              v46 = v134;
              v51(v134, v45);
              v51(v54, v45);
            }

            v48 = v136;
          }

          v44 += v137;
          v40 = (v143 - 1);
          v42 = v138;
        }

        while (v143 != 1);
        v93 = v45;
        v143 = v51;

        v94 = v48;
        v95 = v128;
        sub_24158CBAC();
        v96 = v135;
        v97 = sub_2415886A0(v94, v95, v135);
        v98 = sub_24158CB7C();
        v144[0] = 0;
        v99 = v141;
        v100 = [v141 removeItemAtURL:v98 error:v144];

        if (v100)
        {
          v101 = v144[0];

          v102 = v143;
          v143(v94, v93);
          (*(v127 + 8))(v96, v126);
          v103 = v129;
        }

        else
        {
          LODWORD(v142) = v97;
          v107 = v144[0];
          v108 = sub_24158CB2C();

          swift_willThrow();
          v109 = sub_24158CBCC();
          v111 = v110;
          swift_getErrorValue();
          v112 = sub_24158CEBC();
          v114 = v113;

          v115 = sub_24158CC3C();
          v116 = sub_24158CDBC();

          v117 = os_log_type_enabled(v115, v116);
          v103 = v129;
          if (v117)
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v144[0] = v119;
            *v118 = v130;
            v120 = sub_241589774(v109, v111, v144);

            *(v118 + 4) = v120;
            *(v118 + 12) = 2080;
            v121 = sub_241589774(v112, v114, v144);

            *(v118 + 14) = v121;
            _os_log_impl(&dword_241585000, v115, v116, "Failed to remove temp folder: %s  - %s", v118, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CEA560](v119, -1, -1);
            v122 = v118;
            v95 = v128;
            MEMORY[0x245CEA560](v122, -1, -1);

            MEMORY[0x245CEA480](v108);
            v93 = v133;
            v102 = v143;
            (v143)(v136);
            (*(v127 + 8))(v135, v126);
          }

          else
          {

            MEMORY[0x245CEA480](v108);

            v93 = v133;
            v102 = v143;
            (v143)(v136);
            (*(v127 + 8))(v96, v126);
          }

          LOBYTE(v97) = v142;
        }

        v123 = v131;
        if (v97)
        {
          (*(v103 + 32))(v131, v95, v93);
          return (*(v103 + 56))(v123, 0, 1, v93);
        }

        else
        {
          v102(v95, v93);
          return (*(v103 + 56))(v123, 1, 1, v93);
        }
      }

      else
      {

        v105 = v129;
        v106 = v133;
        (*(v129 + 8))(v136, v133);
        (*(v41 + 8))(v37, v126);
        return (*(v105 + 56))(v131, 1, 1, v106);
      }
    }

    else
    {
      v74 = v129;
      v125 = v25;
      v141 = v35;
      v75 = v144[0];
      v76 = sub_24158CB2C();

      swift_willThrow();
      v77 = sub_24158CBCC();
      v79 = v78;
      swift_getErrorValue();
      v80 = sub_24158CEBC();
      v82 = v81;

      v83 = v135;
      v84 = sub_24158CC3C();
      v85 = sub_24158CDBC();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v144[0] = v87;
        *v86 = 136315394;
        v88 = sub_241589774(v77, v79, v144);

        *(v86 + 4) = v88;
        *(v86 + 12) = 2080;
        v89 = sub_241589774(v80, v82, v144);

        *(v86 + 14) = v89;
        _os_log_impl(&dword_241585000, v84, v85, "Failed to create temp folder %s - %s", v86, 0x16u);
        swift_arrayDestroy();
        v90 = v129;
        MEMORY[0x245CEA560](v87, -1, -1);
        MEMORY[0x245CEA560](v86, -1, -1);

        MEMORY[0x245CEA480](v76);
        v91 = *(v90 + 8);
        v92 = v136;
      }

      else
      {

        MEMORY[0x245CEA480](v76);

        v90 = v74;
        v91 = *(v74 + 8);
        v92 = v32;
      }

      v104 = v133;
      v91(v92, v133);
      (*(v127 + 8))(v83, v126);
      return (*(v90 + 56))(v131, 1, 1, v104);
    }
  }

  else
  {
    (*(v21 + 8))(v23, v20);

    return (*(v7 + 56))(v131, 1, 1, v6);
  }
}

uint64_t sub_241586E64(uint64_t a1, uint64_t a2, void *a3)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24158CBDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  sub_24158CBCC();
  v13 = sub_24158CC8C();

  v14 = [a3 fileExistsAtPath_];

  if (v14)
  {
    v15 = sub_24158CB7C();
    v44[0] = 0;
    v16 = [a3 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v44];

    if (v16)
    {
      v17 = v44[0];
      return 1;
    }

    v27 = v44[0];
    v28 = sub_24158CB2C();

    swift_willThrow();
    swift_getErrorValue();
    v29 = sub_24158CEBC();
    v31 = v30;
    (*(v7 + 16))(v10, a2, v6);
    v32 = sub_24158CC3C();
    v33 = sub_24158CDBC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v34 = 136315394;
      v35 = sub_24158CBCC();
      v42 = v29;
      v37 = v36;
      (*(v7 + 8))(v10, v6);
      v38 = sub_241589774(v35, v37, v44);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = sub_241589774(v42, v31, v44);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_241585000, v32, v33, "Failed to create destination: %s - %s", v34, 0x16u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x245CEA560](v40, -1, -1);
      MEMORY[0x245CEA560](v34, -1, -1);

      MEMORY[0x245CEA480](v28);
    }

    else
    {

      MEMORY[0x245CEA480](v28);

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v7 + 16))(v12, a1, v6);
    v19 = sub_24158CC3C();
    v20 = sub_24158CDAC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v23 = sub_24158CE9C();
      v25 = v24;
      (*(v7 + 8))(v12, v6);
      v26 = sub_241589774(v23, v25, v44);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_241585000, v19, v20, "Source directory does not exist: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245CEA560](v22, -1, -1);
      MEMORY[0x245CEA560](v21, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  return 0;
}

uint64_t sub_241587328(id a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v146) = a4;
  v139 = a3;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v157 = *(v154 - 8);
  v6 = MEMORY[0x28223BE20](v154);
  v153 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v152 = &v118 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v151 = &v118 - v11;
  MEMORY[0x28223BE20](v10);
  v132 = &v118 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E0, &qword_24158D318);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v118 - v14;
  v135 = sub_24158CB1C();
  v15 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v147 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E8, &qword_24158D320);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v118 - v18;
  v20 = sub_24158CBDC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v136 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v156 = &v118 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v150 = &v118 - v27;
  MEMORY[0x28223BE20](v26);
  v155 = &v118 - v28;
  v141 = sub_24158CB4C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v159 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24158CC2C();
  v145 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v118 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v118 - v36;
  sub_24158CC1C();
  v144 = v35;
  v143 = v37;
  sub_24158CBEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484F0, &qword_24158D328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24158D2E0;
  v39 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v40 = *MEMORY[0x277CBE7C0];
  *(inited + 40) = *MEMORY[0x277CBE7C0];
  v41 = v39;
  v42 = v40;
  v43 = sub_24158B5D4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v44 = *(v43 + 16);
  v158 = v21;
  v149 = v43;
  if (v44)
  {
    v137 = v15;
    v138 = a2;
    v142 = a1;
    v45 = v30;
    v21 = v20;
    v46 = sub_2415896F0(v44, 0);
    v148 = sub_24158B480(&v161, v46 + 4, v44, v43);
    v47 = v161;
    v20 = v162;
    v30 = v163;

    sub_24158B9D0(v47);
    if (v148 != v44)
    {
      goto LABEL_51;
    }

    v20 = v21;
    v21 = v158;
    v30 = v45;
    a1 = v142;
    v15 = v137;
  }

  v48 = sub_24158CD9C();

  v49 = v155;
  if (v48)
  {
    v142 = v48;
    sub_24158CD8C();
    sub_24158CB3C();
    v45 = MEMORY[0x277D84F90];
    if (v164)
    {
      v148 = 0;
      v51 = (v21 + 56);
      v137 = (v21 + 32);
      v130 = (v21 + 16);
      v131 = (v21 + 8);
      v129 = (v15 + 1);
      v126 = (v145 + 48);
      v125 = (v145 + 32);
      v123 = (v145 + 16);
      v124 = (v145 + 8);
      *&v50 = 136315394;
      v128 = v50;
      v52 = v147;
      while (1)
      {
        v53 = swift_dynamicCast();
        v54 = *v51;
        if (v53)
        {
          v54(v19, 0, 1, v20);
          (*v137)(v49, v19, v20);
          v55 = v148;
          sub_24158CB5C();
          if (v55)
          {
            v138 = v45;
            swift_getErrorValue();
            v122 = sub_24158CEBC();
            v127 = v56;
            v57 = v136;
            (*v130)(v136, v155, v20);
            v58 = v55;
            v59 = sub_24158CC3C();
            v60 = sub_24158CDBC();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v148 = v58;
              v62 = v61;
              v120 = swift_slowAlloc();
              v160 = v120;
              *v62 = v128;
              v119 = v59;
              v63 = sub_24158CBCC();
              v156 = v30;
              v64 = v20;
              v66 = v65;
              v121 = *v131;
              v121(v57, v64);
              v67 = sub_241589774(v63, v66, &v160);
              v20 = v64;
              v30 = v156;

              *(v62 + 4) = v67;
              *(v62 + 12) = 2080;
              v68 = sub_241589774(v122, v127, &v160);

              *(v62 + 14) = v68;
              v69 = v119;
              _os_log_impl(&dword_241585000, v119, v60, "Failed to get resource values for %s: %s", v62, 0x16u);
              v70 = v120;
              swift_arrayDestroy();
              MEMORY[0x245CEA560](v70, -1, -1);
              MEMORY[0x245CEA560](v62, -1, -1);

              MEMORY[0x245CEA480](v148);
              v49 = v155;
              v121(v155, v20);
              v21 = v158;
            }

            else
            {

              MEMORY[0x245CEA480](v58);

              v72 = *v131;
              (*v131)(v57, v20);
              v49 = v155;
              v72(v155, v20);
            }

            v148 = 0;
            v52 = v147;
            v45 = v138;
            goto LABEL_9;
          }

          v148 = 0;
          v71 = sub_24158CB0C();
          if (v71 == 2)
          {
            (*v129)(v52, v135);
            v49 = v155;
            (*v131)(v155, v20);
          }

          else
          {
            v49 = v155;
            if ((v71 & 1) == 0)
            {
              (*v129)(v52, v135);
LABEL_22:
              (*v131)(v49, v20);
              goto LABEL_9;
            }

            v73 = v52;
            v74 = v134;
            sub_24158CAFC();
            if ((*v126)(v74, 1, v30) != 1)
            {
              v75 = v133;
              (*v125)();
              sub_24158BAA0(&qword_27E5484F8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              if ((sub_24158CC7C() & 1) == 0)
              {
                v76 = *(v154 + 48);
                v77 = v132;
                (*v130)(v132, v49, v20);
                v78 = v77 + v76;
                v79 = v133;
                (*v123)(v78, v133, v30);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v45 = sub_2415893FC(0, v45[2] + 1, 1, v45);
                }

                v81 = v45[2];
                v80 = v45[3];
                v156 = (v81 + 1);
                if (v81 >= v80 >> 1)
                {
                  v45 = sub_2415893FC((v80 > 1), v81 + 1, 1, v45);
                }

                (*v124)(v79, v30);
                v52 = v147;
                (*v129)(v147, v135);
                v49 = v155;
                (*v131)(v155, v20);
                v82 = v157;
                v45[2] = v156;
                sub_24158BAE8(v132, v45 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81);
                goto LABEL_9;
              }

              (*v124)(v75, v30);
              v52 = v147;
              (*v129)(v147, v135);
              goto LABEL_22;
            }

            (*v129)(v73, v135);
            (*v131)(v49, v20);
            sub_24158BA40(v74, &qword_27E5484E0, &qword_24158D318);
            v52 = v73;
          }
        }

        else
        {
          v54(v19, 1, 1, v20);
          sub_24158BA40(v19, &qword_27E5484E8, &qword_24158D320);
        }

LABEL_9:
        sub_24158CB3C();
        if (!v164)
        {
          goto LABEL_33;
        }
      }
    }

    v148 = 0;
LABEL_33:
    (*(v140 + 8))(v159, v141);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v96 = v142;
      v97 = v45[2];
      v161 = (v45 + ((*(v157 + 80) + 32) & ~*(v157 + 80)));
      v162 = v97;
      sub_241589DF8(&v161);
      result = sub_241588F5C(v146, v45);
      v149 = v100;
      v155 = (v101 >> 1);
      v102 = (v101 >> 1) - v99;
      if (__OFSUB__(v101 >> 1, v99))
      {
        break;
      }

      v103 = result;
      if (!v102)
      {

        swift_unknownObjectRelease();
        v116 = *(v145 + 8);
        v116(v144, v30);
        v116(v143, v30);

        return MEMORY[0x277D84F90];
      }

      v104 = v99;
      v161 = MEMORY[0x277D84F90];

      result = sub_24158B274(0, v102 & ~(v102 >> 63), 0);
      if (v102 < 0)
      {
        goto LABEL_54;
      }

      v141 = v103;
      v138 = v45;
      v156 = v30;
      v105 = (v21 + 32);
      v106 = v161;
      v45 = v145;
      v147 = (v145 + 32);
      v146 = (v21 + 16);
      v107 = v155;
      if (v104 > v155)
      {
        v107 = v104;
      }

      v148 = v107;
      while (v148 != v104)
      {
        v108 = v151;
        sub_24158B9D8(v149 + *(v157 + 72) * v104, v151, &qword_27E5484D8, &qword_24158D310);
        v109 = v152;
        sub_24158B9D8(v108, v152, &qword_27E5484D8, &qword_24158D310);
        v45 = v20;
        v110 = *(v154 + 48);
        v111 = v153;
        v159 = *v105;
        (v159)(v153, v109, v45);
        (*v147)(v111 + v110, v109 + v110, v156);
        v21 = v150;
        (*v146)(v150, v111, v45);
        sub_24158BA40(v111, &qword_27E5484D8, &qword_24158D310);
        sub_24158BA40(v108, &qword_27E5484D8, &qword_24158D310);
        v161 = v106;
        v113 = *(v106 + 16);
        v112 = *(v106 + 24);
        v30 = v113 + 1;
        if (v113 >= v112 >> 1)
        {
          sub_24158B274((v112 > 1), v113 + 1, 1);
          v106 = v161;
        }

        *(v106 + 16) = v30;
        (v159)(v106 + ((v158[80] + 32) & ~v158[80]) + *(v158 + 9) * v113, v21, v45);
        ++v104;
        v20 = v45;
        if (v155 == v104)
        {

          swift_unknownObjectRelease();
          v114 = *(v145 + 8);
          v115 = v156;
          v114(v144, v156);
          v114(v143, v115);

          return v106;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v45 = sub_24158B46C(v45);
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

    v83 = v156;
    (*(v21 + 2))(v156, a1, v20);
    v84 = v20;
    v85 = sub_24158CC3C();
    v86 = sub_24158CDBC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = v30;
      v89 = swift_slowAlloc();
      v161 = v89;
      *v87 = 136315138;
      sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v90 = sub_24158CE9C();
      v91 = v83;
      v93 = v92;
      (*(v21 + 1))(v91, v84);
      v94 = sub_241589774(v90, v93, &v161);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_241585000, v85, v86, "Failed to create enumerator for directory: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      v95 = v89;
      v30 = v88;
      MEMORY[0x245CEA560](v95, -1, -1);
      MEMORY[0x245CEA560](v87, -1, -1);
    }

    else
    {

      (*(v21 + 1))(v83, v84);
    }

    v117 = *(v145 + 8);
    v117(v144, v30);
    v117(v143, v30);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2415886A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v5 = sub_24158CCDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24158CBDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  if (BOMCopierNew())
  {
    v65 = v8;
    v66 = v6;
    v67 = v5;
    sub_24158CBCC();
    v19 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v20 = sub_24158CC8C();

    v21 = [v19 initToFileAtPath:v20 append:1];

    if (v21)
    {
      [v21 open];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548498, &qword_24158D2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24158D2E0;
      *(inited + 32) = sub_24158CC8C();
      v64 = a3;
      v23 = *MEMORY[0x277CBED28];
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484A0, &qword_24158D2F8);
      *(inited + 40) = v23;
      sub_241589DB0(0, &qword_27E5484A8, 0x277CCACA8);
      v24 = v23;
      *(inited + 72) = sub_24158CDFC();
      *(inited + 104) = sub_241589DB0(0, &qword_27E5484B0, 0x277CBEB78);
      *(inited + 80) = v21;
      v63 = v21;
      sub_24158B7C8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484B8, &qword_24158D300);
      swift_arrayDestroy();
      sub_24158B8F0();
      v62 = sub_24158CC6C();

      v25 = *(v10 + 16);
      v25(v18, v69, v9);
      v25(v16, a2, v9);
      v26 = sub_24158CC3C();
      v27 = sub_24158CDAC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v70[0] = v61;
        *v28 = 136315394;
        v29 = sub_24158CBCC();
        v31 = v30;
        v32 = *(v10 + 8);
        v32(v18, v9);
        v33 = sub_241589774(v29, v31, v70);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v34 = sub_24158CE9C();
        v36 = v35;
        v32(v16, v9);
        v37 = sub_241589774(v34, v36, v70);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_241585000, v26, v27, "Zipping file. { from=%s, to=%s }", v28, 0x16u);
        v38 = v61;
        swift_arrayDestroy();
        MEMORY[0x245CEA560](v38, -1, -1);
        MEMORY[0x245CEA560](v28, -1, -1);
      }

      else
      {

        v50 = *(v10 + 8);
        v50(v16, v9);
        v50(v18, v9);
      }

      v70[0] = sub_24158CBCC();
      v70[1] = v51;
      v52 = v65;
      sub_24158CCCC();
      sub_24158B958();
      sub_24158CE1C();
      (*(v66 + 8))(v52, v67);

      v53 = v62;
      v54 = BOMCopierCopyWithOptions();

      if (!v54)
      {

        v59 = v63;
        [v63 close];

        BOMCopierFree();
        return 1;
      }

      v55 = sub_24158CC3C();
      v56 = sub_24158CDBC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 67109120;
        *(v57 + 4) = v54;
        _os_log_impl(&dword_241585000, v55, v56, "BOMCopier failed: %d", v57, 8u);
        MEMORY[0x245CEA560](v57, -1, -1);
      }

      v58 = v63;
      [v63 close];
    }

    else
    {
      (*(v10 + 16))(v13, a2, v9);
      v42 = sub_24158CC3C();
      v43 = sub_24158CDBC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v70[0] = v45;
        *v44 = 136315138;
        sub_24158BAA0(&qword_27E548490, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v46 = sub_24158CE9C();
        v48 = v47;
        (*(v10 + 8))(v13, v9);
        v49 = sub_241589774(v46, v48, v70);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_241585000, v42, v43, "Failed to open output stream: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x245CEA560](v45, -1, -1);
        MEMORY[0x245CEA560](v44, -1, -1);
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }
    }

    BOMCopierFree();
  }

  else
  {
    v39 = sub_24158CC3C();
    v40 = sub_24158CDBC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_241585000, v39, v40, "Failed to create BOMCopier", v41, 2u);
      MEMORY[0x245CEA560](v41, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_241588F5C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
    return a2;
  }

  return result;
}

uint64_t sub_241589004(uint64_t a1, id *a2)
{
  result = sub_24158CC9C();
  *a2 = 0;
  return result;
}

uint64_t sub_24158907C(uint64_t a1, id *a2)
{
  v3 = sub_24158CCAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2415890FC@<X0>(uint64_t *a2@<X8>)
{
  sub_24158CCBC();
  v3 = sub_24158CC8C();

  *a2 = v3;
  return result;
}

uint64_t sub_241589140()
{
  v0 = sub_24158CCBC();
  v1 = MEMORY[0x245CEA060](v0);

  return v1;
}

uint64_t sub_24158917C(uint64_t a1)
{
  sub_24158CCBC();
  sub_24158CCFC();
}

uint64_t sub_2415891D0(uint64_t a1)
{
  sub_24158CCBC();
  sub_24158CECC();
  sub_24158CCFC();
  v1 = sub_24158CEDC();

  return v1;
}

uint64_t sub_241589244(void *a1, uint64_t *a2)
{
  v2 = sub_24158CCBC();
  v4 = v3;
  if (v2 == sub_24158CCBC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24158CEAC();
  }

  return v7 & 1;
}

uint64_t sub_2415892CC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24158CC8C();

  *a2 = v3;
  return result;
}

uint64_t sub_241589314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24158CCBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_241589340(uint64_t a1)
{
  v2 = sub_24158BAA0(&qword_27E548550, type metadata accessor for URLResourceKey, &unk_24158D4A0);
  v3 = sub_24158BAA0(&qword_27E548558, type metadata accessor for URLResourceKey, &unk_24158D440);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_2415893FC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548500, &qword_24158D330);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
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

char *sub_2415895EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548510, &qword_24158D340);
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

void *sub_2415896F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484F0, &qword_24158D328);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_241589774(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241589840(v11, 0, 0, 1, a1, a2);
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
    sub_24158BB5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_241589840(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24158994C(a5, a6);
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
    result = sub_24158CE4C();
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

void *sub_24158994C(uint64_t a1, unint64_t a2)
{
  v3 = sub_241589998(a1, a2);
  sub_241589AC8(&unk_28533D2B0);
  return v3;
}

void *sub_241589998(uint64_t a1, unint64_t a2)
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

  v6 = sub_241589BB4(v5, 0);
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

  result = sub_24158CE4C();
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
        v10 = sub_24158CD1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241589BB4(v10, 0);
        result = sub_24158CE3C();
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

uint64_t sub_241589AC8(uint64_t result)
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

  result = sub_241589C28(result, v11, 1, v3);
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

void *sub_241589BB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548520, &qword_24158D350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241589C28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548520, &qword_24158D350);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_241589DB0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_241589DF8(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_24158CE8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
        v6 = sub_24158CD5C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24158A18C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_241589F3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241589F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_24158B9D8(v21, v16, &qword_27E5484D8, &qword_24158D310);
      sub_24158B9D8(v19, v12, &qword_27E5484D8, &qword_24158D310);
      v22 = sub_24158CC0C();
      sub_24158BA40(v12, &qword_27E5484D8, &qword_24158D310);
      result = sub_24158BA40(v16, &qword_27E5484D8, &qword_24158D310);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_24158BAE8(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24158BAE8(v23, v19);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24158A18C(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v100 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v100 - v13;
  result = MEMORY[0x28223BE20](v12);
  v117 = &v100 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v120 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *(result + 16 * v6);
          v98 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_24158AAB4(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v96 + 72) * v7, a4);
          if (v30)
          {
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_24158B058(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_24158AFCC(v6 - 1);
          result = v120;
          v6 = *(v120 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_24158B058(v6);
    goto LABEL_102;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v19 = v17 + 1;
    v109 = v18;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
      v30 = v105;
    }

    else
    {
      v20 = v17;
      v6 = *a3;
      v21 = *(v7 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v117;
      sub_24158B9D8(v22, v117, &qword_27E5484D8, &qword_24158D310);
      v24 = v118;
      sub_24158B9D8(v6 + v21 * v20, v118, &qword_27E5484D8, &qword_24158D310);
      LODWORD(v114) = sub_24158CC0C();
      sub_24158BA40(v24, &qword_27E5484D8, &qword_24158D310);
      result = sub_24158BA40(v23, &qword_27E5484D8, &qword_24158D310);
      v102 = v20;
      v25 = v20 + 2;
      v115 = v21;
      v26 = v6 + v21 * (v20 + 2);
      while (v16 != v25)
      {
        v27 = v117;
        sub_24158B9D8(v26, v117, &qword_27E5484D8, &qword_24158D310);
        v28 = v118;
        sub_24158B9D8(v22, v118, &qword_27E5484D8, &qword_24158D310);
        v6 = sub_24158CC0C() & 1;
        sub_24158BA40(v28, &qword_27E5484D8, &qword_24158D310);
        result = sub_24158BA40(v27, &qword_27E5484D8, &qword_24158D310);
        ++v25;
        v26 += v115;
        v22 += v115;
        if ((v114 & 1) != v6)
        {
          v29 = v25 - 1;
          goto LABEL_12;
        }
      }

      v29 = v16;
LABEL_12:
      v17 = v102;
      a4 = v103;
      v30 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v29 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v29)
      {
        v31 = v115 * (v29 - 1);
        v32 = v29 * v115;
        v114 = v29;
        v33 = v29;
        v34 = v102;
        v35 = v102 * v115;
        v6 = v119;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_24158BAE8(v36 + v35, v108);
            if (v35 < v31 || v36 + v35 >= v36 + v32)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24158BAE8(v108, v36 + v31);
            v6 = v119;
          }

          ++v34;
          v31 -= v115;
          v32 -= v115;
          v35 += v115;
        }

        while (v34 < v33);
        v30 = v105;
        a3 = v106;
        v7 = v101;
        v17 = v102;
        a4 = v103;
        v29 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v37 = a3[1];
    if (v29 >= v37)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v29, v17))
    {
      goto LABEL_129;
    }

    if (v29 - v17 >= a4)
    {
LABEL_35:
      v38 = v29;
      if (v29 < v17)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v17, a4))
    {
      goto LABEL_131;
    }

    if (v17 + a4 < v37)
    {
      v37 = v17 + a4;
    }

    if (v37 < v17)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v29 == v37)
    {
      goto LABEL_35;
    }

    v110 = v37;
    v105 = v30;
    v84 = *a3;
    v85 = *(v7 + 72);
    v86 = *a3 + v85 * (v29 - 1);
    v87 = -v85;
    v102 = v17;
    v88 = v17 - v29;
    v107 = v85;
    v115 = v84;
    a4 = v84 + v29 * v85;
LABEL_89:
    v113 = v86;
    v114 = v29;
    v111 = a4;
    v112 = v88;
    v89 = v86;
LABEL_90:
    v90 = v117;
    sub_24158B9D8(a4, v117, &qword_27E5484D8, &qword_24158D310);
    v91 = v118;
    sub_24158B9D8(v89, v118, &qword_27E5484D8, &qword_24158D310);
    v92 = sub_24158CC0C();
    sub_24158BA40(v91, &qword_27E5484D8, &qword_24158D310);
    result = sub_24158BA40(v90, &qword_27E5484D8, &qword_24158D310);
    if (v92)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v29 = v114 + 1;
    v86 = v113 + v107;
    v88 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v30 = v105;
    a3 = v106;
    v7 = v101;
    v17 = v102;
    v38 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v109;
    }

    else
    {
      result = sub_2415895EC(0, *(v109 + 2) + 1, 1, v109);
      v18 = result;
    }

    v40 = *(v18 + 2);
    v39 = *(v18 + 3);
    a4 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2415895EC((v39 > 1), v40 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v41 = &v18[16 * v40];
    *(v41 + 4) = v17;
    *(v41 + 5) = v38;
    v110 = v38;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v40)
    {
      v42 = *v104;
      v6 = v119;
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v18 + 4);
          v45 = *(v18 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_56:
          if (v47)
          {
            goto LABEL_117;
          }

          v60 = &v18[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_120;
          }

          v66 = &v18[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_124;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v70 = &v18[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_70:
        if (v65)
        {
          goto LABEL_119;
        }

        v73 = &v18[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v76 < v64)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v43 - 1;
        if (v43 - 1 >= a4)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v81 = v18;
        a4 = *&v18[16 * v6 + 32];
        v82 = *&v18[16 * v43 + 40];
        sub_24158AAB4(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v18[16 * v43 + 32], *a3 + *(v7 + 72) * v82, v42);
        if (v30)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_24158B058(v81);
        }

        if (v6 >= *(v81 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v81[16 * v6];
        *(v83 + 4) = a4;
        *(v83 + 5) = v82;
        v120 = v81;
        result = sub_24158AFCC(v43);
        v18 = v120;
        a4 = *(v120 + 16);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v48 = &v18[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_115;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_116;
      }

      v55 = &v18[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_118;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_121;
      }

      if (v59 >= v51)
      {
        v77 = &v18[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v30;
    v16 = a3[1];
    v17 = v110;
    a4 = v103;
    if (v110 >= v16)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v93 = v116;
    sub_24158BAE8(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_24158BAE8(v93, v89);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
  __break(1u);
  return result;
}

uint64_t sub_24158AAB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_24158B9D8(v30, v11, &qword_27E5484D8, &qword_24158D310);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_24158B9D8(v32, v43, &qword_27E5484D8, &qword_24158D310);
          v35 = sub_24158CC0C();
          v36 = v34;
          v11 = v33;
          sub_24158BA40(v36, &qword_27E5484D8, &qword_24158D310);
          sub_24158BA40(v33, &qword_27E5484D8, &qword_24158D310);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_24158B9D8(a2, v11, &qword_27E5484D8, &qword_24158D310);
        v19 = v43;
        sub_24158B9D8(a4, v43, &qword_27E5484D8, &qword_24158D310);
        v20 = sub_24158CC0C();
        sub_24158BA40(v19, &qword_27E5484D8, &qword_24158D310);
        sub_24158BA40(v11, &qword_27E5484D8, &qword_24158D310);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_24158B06C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_24158AFCC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24158B058(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24158B06C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_24158B15C(uint64_t a1)
{
  v2 = sub_24158CDDC();

  return sub_24158B1A0(a1, v2);
}

unint64_t sub_24158B1A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_241589DB0(0, &qword_27E5484A8, 0x277CCACA8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24158CDEC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_24158B274(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24158B294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24158B294(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548508, &qword_24158D338);
  v10 = *(sub_24158CBDC() - 8);
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
  v15 = *(sub_24158CBDC() - 8);
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

void *sub_24158B480(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24158B5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E548518, &qword_24158D348);
    v3 = sub_24158CE2C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_24158CCBC();
      sub_24158CECC();
      v27 = v7;
      sub_24158CCFC();
      v8 = sub_24158CEDC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_24158CCBC();
        v18 = v17;
        if (v16 == sub_24158CCBC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_24158CEAC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24158B7C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D0, &qword_24158D308);
    v3 = sub_24158CE6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24158B9D8(v4, &v11, &qword_27E5484B8, &qword_24158D300);
      v5 = v11;
      result = sub_24158B15C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24158B9AC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24158B8F0()
{
  result = qword_27E5484C0;
  if (!qword_27E5484C0)
  {
    sub_241589DB0(255, &qword_27E5484A8, 0x277CCACA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5484C0);
  }

  return result;
}

unint64_t sub_24158B958()
{
  result = qword_27E5484C8;
  if (!qword_27E5484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5484C8);
  }

  return result;
}

_OWORD *sub_24158B9AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24158B9D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24158BA40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24158BAA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24158BAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484D8, &qword_24158D310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24158BB5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24158BBCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id createAttachments(paths:zipFolder:)(uint64_t a1, uint64_t a2)
{
  v95 = sub_24158CCDC();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5484E8, &qword_24158D320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v92 - v6;
  v8 = sub_24158CBDC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v96 = &v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v101 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v92 - v19;
  v100 = sub_24158CC5C();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24158CC4C();
  v116 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  v108 = v8;
  v92 = v12;
  v103 = v22;
  v98 = v9;
  if (v24)
  {
    v25 = (a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
    v26 = (v9 + 48);
    v113 = (v9 + 32);
    v111 = (v9 + 8);
    v109 = MEMORY[0x277D84F90];
    v27 = *(v9 + 72);
    *&v23 = 136315394;
    v102 = v23;
    v106 = v7;
    v107 = a2;
    v105 = v20;
    v112 = v26;
    v110 = v27;
    while (1)
    {
      createZipFor(directory:at:fileLimit:)(v25, a2, 100, v7);
      if ((*v26)(v7, 1, v8) == 1)
      {
        sub_24158BA40(v7, &qword_27E5484E8, &qword_24158D320);
      }

      else
      {
        (*v113)(v20, v7, v8);
        v28 = objc_opt_self();
        sub_24158CBCC();
        v29 = sub_24158CC8C();

        v30 = [v28 attachmentWithPath_];

        if (v30)
        {
          sub_24158CAB0();
          v31 = sub_24158CDCC();
          [v30 setDeleteOnAttach_];

          v32 = v30;
          MEMORY[0x245CEA070]();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24158CD4C();
          }

          sub_24158CD6C();
          v109 = v116;
          v33 = [v32 displayName];
          if (v33)
          {
            v34 = v33;
            v35 = sub_24158CCBC();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }

          v114 = v35;
          v115 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E548570, &qword_24158D548);
          v38 = sub_24158CCEC();
          v40 = v39;
          result = [v32 filesize];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v42 = result;
          [result doubleValue];

          v43 = sub_24158CD7C();
          v45 = v44;

          v46 = sub_24158CC3C();
          v47 = sub_24158CDAC();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v104 = v32;
            v50 = v43;
            v51 = v49;
            v114 = v49;
            *v48 = v102;
            v52 = sub_241589774(v38, v40, &v114);

            *(v48 + 4) = v52;
            *(v48 + 12) = 2080;
            v53 = sub_241589774(v50, v45, &v114);

            *(v48 + 14) = v53;
            _os_log_impl(&dword_241585000, v46, v47, "Created attachment. { name=%s,size=%s }", v48, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CEA560](v51, -1, -1);
            v54 = v48;
            v22 = v103;
            MEMORY[0x245CEA560](v54, -1, -1);
          }

          else
          {
          }

          v20 = v105;
          v8 = v108;
          (*v111)(v105, v108);
          v7 = v106;
          a2 = v107;
        }

        else
        {
          (*v111)(v20, v8);
        }

        v26 = v112;
        v27 = v110;
      }

      v25 = (v25 + v27);
      if (!--v24)
      {
        goto LABEL_20;
      }
    }
  }

  v109 = MEMORY[0x277D84F90];
LABEL_20:
  v55 = v109;
  if (v109 >> 62)
  {
    v89 = sub_24158CE5C();
    v56 = v101;
    if (!v89)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v56 = v101;
    if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      v57 = objc_opt_self();
      v58 = [v57 defaultManager];
      v59 = [v58 temporaryDirectory];

      v60 = v97;
      sub_24158CBBC();

      sub_24158CB9C();
      v61 = v98;
      v62 = *(v98 + 8);
      v62(v60, v8);
      v63 = [v57 defaultManager];
      sub_24158CBCC();
      v64 = sub_24158CC8C();

      LOBYTE(v60) = [v63 fileExistsAtPath_];

      if ((v60 & 1) == 0)
      {
        v65 = *(v61 + 16);
        v66 = v96;
        (v65)(v96, v56, v8);
        v67 = sub_24158CC3C();
        v68 = sub_24158CDAC();
        v69 = os_log_type_enabled(v67, v68);
        v98 = v61 + 16;
        if (v69)
        {
          v70 = v66;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v114 = v72;
          *v71 = 136315138;
          v73 = sub_24158CBCC();
          v113 = v65;
          v75 = v74;
          v62(v70, v108);
          v76 = sub_241589774(v73, v75, &v114);

          *(v71 + 4) = v76;
          _os_log_impl(&dword_241585000, v67, v68, "No attachment found. Creating placeholder. { path=%s }", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          v8 = v108;
          MEMORY[0x245CEA560](v72, -1, -1);
          MEMORY[0x245CEA560](v71, -1, -1);
        }

        else
        {

          v62(v66, v8);
        }

        v77 = v93;
        v114 = 0xD00000000000001DLL;
        v115 = 0x800000024158D590;
        sub_24158CCCC();
        sub_24158B958();
        sub_24158CE0C();
        (*(v94 + 8))(v77, v95);
      }

      v78 = objc_opt_self();
      sub_24158CBCC();
      v79 = sub_24158CC8C();

      v80 = [v78 attachmentWithPath_];

      if (v80)
      {
        sub_24158CAB0();
        v81 = sub_24158CDCC();
        [v80 setDeleteOnAttach_];

        v82 = v80;
        MEMORY[0x245CEA070]();
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24158CD4C();
        }

        sub_24158CD6C();

        v62(v56, v8);
        v55 = v116;
        v22 = v103;
      }

      else
      {
        v62(v56, v8);
        v22 = v103;
        v55 = v109;
      }
    }
  }

  v83 = sub_24158CC3C();
  v84 = sub_24158CDAC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    if (v55 >> 62)
    {
      v90 = v55;
      v91 = v85;
      v86 = sub_24158CE5C();
      v85 = v91;
      v55 = v90;
    }

    else
    {
      v86 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v85 + 4) = v86;
    v87 = v84;
    v88 = v85;
    _os_log_impl(&dword_241585000, v83, v87, "Returning attachments. { count=%ld }", v85, 0xCu);
    MEMORY[0x245CEA560](v88, -1, -1);
  }

  (*(v99 + 8))(v22, v100);

  return v55;
}

unint64_t sub_24158CAB0()
{
  result = qword_27E548560;
  if (!qword_27E548560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E548560);
  }

  return result;
}