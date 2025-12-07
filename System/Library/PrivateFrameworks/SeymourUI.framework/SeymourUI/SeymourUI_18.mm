void sub_20B72900C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8, &unk_20C1566C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1341A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B7344F4(v7);
      sub_20B520158(v7, &qword_27C7649A8, &unk_20C1566C0);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D57C(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D57C((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B7344F4(v7);
        sub_20B520158(v7, &qword_27C7649A8, &unk_20C1566C0);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D57C(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D57C((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D90BC(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618], MEMORY[0x277D50628]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D57C(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D57C((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618], MEMORY[0x277D50628]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D57C(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D57C((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B729CE0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28, &qword_20C156738);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1365F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B73514C(v7);
      sub_20B520158(v7, &qword_27C764A28, &qword_20C156738);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D5C0(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D5C0((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B73514C(v7);
        sub_20B520158(v7, &qword_27C764A28, &qword_20C156738);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D5C0(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D5C0((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D90E8(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D5C0(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D5C0((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D5C0(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D5C0((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72A9B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8, &qword_20C1567D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C138244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B735E44(v7);
      sub_20B520158(v7, &qword_27C764AC8, &qword_20C1567D8);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D648(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D648((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B735E44(v7);
        sub_20B520158(v7, &qword_27C764AC8, &qword_20C1567D8);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D648(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D648((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D9114(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D648(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D648((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D648(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D648((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72B688(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60, &unk_20C175920);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1382B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B736B3C(v7);
      sub_20B520158(v7, &qword_27C764A60, &unk_20C175920);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D68C(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D68C((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B736B3C(v7);
        sub_20B520158(v7, &qword_27C764A60, &unk_20C175920);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D68C(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D68C((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D9140(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D68C(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D68C((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D68C(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D68C((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72C35C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0, &unk_20C175910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1333E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B737834(v7);
      sub_20B520158(v7, &qword_27C764AB0, &unk_20C175910);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D6D0(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D6D0((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B737834(v7);
        sub_20B520158(v7, &qword_27C764AB0, &unk_20C175910);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D6D0(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D6D0((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D916C(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D6D0(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D6D0((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D6D0(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D6D0((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72D030(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08, &qword_20C156718);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1334D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B73852C(v7);
      sub_20B520158(v7, &qword_27C764A08, &qword_20C156718);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D714(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D714((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B73852C(v7);
        sub_20B520158(v7, &qword_27C764A08, &qword_20C156718);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D714(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D714((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D9198(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D714(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D714((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D714(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D714((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72DD04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0, &qword_20C1567F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C1370C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B739224(v7);
      sub_20B520158(v7, &qword_27C764AF0, &qword_20C1567F8);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D824(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D824((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B739224(v7);
        sub_20B520158(v7, &qword_27C764AF0, &qword_20C1567F8);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D824(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D824((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D91C4(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128], MEMORY[0x277D53138]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D824(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D824((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128], MEMORY[0x277D53138]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D824(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D824((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

void sub_20B72E9D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40, &unk_20C175900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = sub_20C133A74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v125 = &v104 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v104 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v104 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  swift_endAccess();
  v35 = *(v2 + *(*v2 + 216));
  v112 = *(v35 + 16);
  v113 = v9;
  v118 = v2;
  if (v112)
  {
    v36 = 0;
    v116 = (v9 + 56);
    v117 = (v9 + 16);
    v115 = (v9 + 32);
    v109 = (v9 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v111;
    v110 = v35;
    v39 = v105;
    do
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v40 = *(v9 + 72);
      v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v123 = v40;
      v41 = *(v9 + 16);
      v41(v39, v35 + v122 + v40 * v36, v8);
      v41(v7, v39, v8);
      v114 = *(v9 + 56);
      (v114)(v7, 0, 1, v8);
      v42 = sub_20B739F1C(v7);
      sub_20B520158(v7, &qword_27C764A40, &unk_20C175900);
      if (v42 == 2)
      {
        (*v109)(v39, v8);
      }

      else
      {
        v43 = *v115;
        (*v115)(v124, v39, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D868(0, *(v37 + 2) + 1, 1);
          v39 = v105;
          v37 = v126;
        }

        v45 = v123;
        v47 = *(v37 + 2);
        v46 = *(v37 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_20BB5D868((v46 > 1), v47 + 1, 1);
          v39 = v105;
          v45 = v123;
          v37 = v126;
        }

        *(v37 + 2) = v47 + 1;
        v43(&v37[v122 + v47 * v45], v124, v8);
        v9 = v113;
        v35 = v110;
        v38 = v111;
      }

      v36 = (v36 + 1);
    }

    while (v112 != v36);
    v48 = *(v35 + 16);
    if (v48)
    {
      v49 = 0;
      v50 = v35 + v122;
      v124 = MEMORY[0x277D84F90];
      while (v49 < *(v35 + 16))
      {
        v41(v38, v50, v8);
        v41(v7, v38, v8);
        (v114)(v7, 0, 1, v8);
        v52 = sub_20B739F1C(v7);
        sub_20B520158(v7, &qword_27C764A40, &unk_20C175900);
        if (v52 == 2)
        {
          v53 = *v115;
          (*v115)(v108, v38, v8);
          v54 = v124;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54;
          v126 = v54;
          if ((v55 & 1) == 0)
          {
            sub_20BB5D868(0, *(v54 + 2) + 1, 1);
            v56 = v126;
          }

          v51 = v123;
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          v59 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v124 = (v58 + 1);
            sub_20BB5D868((v57 > 1), v58 + 1, 1);
            v51 = v123;
            v59 = v124;
            v56 = v126;
          }

          *(v56 + 2) = v59;
          v124 = v56;
          v53(&v56[v122 + v58 * v51], v108, v8);
          v35 = v110;
          v38 = v111;
        }

        else
        {
          (*v109)(v38, v8);
          v51 = v123;
        }

        ++v49;
        v50 += v51;
        if (v48 == v49)
        {
          v9 = v113;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v124 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v118;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
  }

  v110 = *(*v32 + 224);
  *(v32 + v110) = v35;

  v60 = *(v32 + *(*v32 + 200));
  if (v60)
  {
    v126 = v37;

    sub_20B8D91F0(v61);
    *(v32 + v110) = v126;
  }

  if ((v60 & 4) != 0)
  {
    v109 = v60;
    v62 = *(v32 + v110);
    v63 = *(v62 + 2);

    v114 = v63;
    if (v63)
    {
      v64 = 0;
      v122 = v9 + 16;
      v65 = (v9 + 8);
      v112 = (v9 + 32);
      v115 = MEMORY[0x277D84F90];
      v111 = v62;
      v66 = v120;
      while (v64 < *(v62 + 2))
      {
        v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v70 = *(v9 + 72);
        v117 = (v64 + 1);
        v123 = v70;
        v71 = *(v9 + 16);
        v71(v125, &v62[v69 + v70 * v64], v8);
        v72 = *(v37 + 2);
        v116 = v69;
        v73 = &v37[v69];
        v74 = -v72;
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v37 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v76 = v37;
          v77 = &v73[v123];
          (v71)(v66);
          sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278], MEMORY[0x277D50288]);
          v78 = sub_20C13C894();
          v79 = *v65;
          (*v65)(v66, v8);
          v73 = v77;
          v37 = v76;
          if (v78)
          {
            v79(v125, v8);
            v32 = v118;
            v62 = v111;
            goto LABEL_37;
          }
        }

        v80 = *v112;
        (*v112)(v107, v125, v8);
        v82 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v82;
        v32 = v118;
        if ((v81 & 1) == 0)
        {
          sub_20BB5D868(0, v82[2] + 1, 1);
          v82 = v126;
        }

        v62 = v111;
        v68 = v82[2];
        v67 = v82[3];
        if (v68 >= v67 >> 1)
        {
          sub_20BB5D868((v67 > 1), v68 + 1, 1);
          v82 = v126;
        }

        v82[2] = (v68 + 1);
        v115 = v82;
        v80(&v116[v82 + v68 * v123], v107, v8);
LABEL_37:
        v64 = v117;
        v9 = v113;
        if (v117 == v114)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v110) = v115;

    if ((v109 & 2) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if ((v60 & 2) == 0)
    {
LABEL_31:

      return;
    }
  }

  v83 = *(v32 + v110);
  v84 = v83[2];

  v117 = v84;
  if (v84)
  {
    v85 = 0;
    v125 = (v9 + 16);
    v86 = (v9 + 8);
    v116 = (v9 + 32);
    v120 = MEMORY[0x277D84F90];
    v115 = v83;
    v87 = v119;
    while (v85 < v83[2])
    {
      v90 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v91 = *(v9 + 72);
      v123 = v85 + 1;
      v92 = *(v9 + 16);
      v92(v121, v83 + v90 + v91 * v85, v8);
      v93 = *(v124 + 2);
      v122 = v90;
      v94 = &v124[v90];
      v95 = -v93;
      v96 = -1;
      while (v95 + v96 != -1)
      {
        if (++v96 >= *(v124 + 2))
        {
          goto LABEL_65;
        }

        v97 = &v94[v91];
        (v92)(v87);
        sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278], MEMORY[0x277D50288]);
        v98 = sub_20C13C894();
        v99 = *v86;
        (*v86)(v87, v8);
        v94 = v97;
        if (v98)
        {
          v99(v121, v8);
          v32 = v118;
          v83 = v115;
          goto LABEL_53;
        }
      }

      v100 = *v116;
      (*v116)(v106, v121, v8);
      v101 = v120;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v101;
      v126 = v101;
      if ((v102 & 1) == 0)
      {
        sub_20BB5D868(0, *(v101 + 2) + 1, 1);
        v103 = v126;
      }

      v89 = *(v103 + 2);
      v88 = *(v103 + 3);
      v83 = v115;
      if (v89 >= v88 >> 1)
      {
        sub_20BB5D868((v88 > 1), v89 + 1, 1);
        v103 = v126;
      }

      *(v103 + 2) = v89 + 1;
      v120 = v103;
      v100(&v103[v122 + v89 * v91], v106, v8);
      v32 = v118;
LABEL_53:
      v85 = v123;
      v9 = v113;
      if (v123 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return;
  }

  v120 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v110) = v120;
}

uint64_t sub_20B72F6AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78, &qword_20C156788);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B728338(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B7414BC(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764A78, &qword_20C156788);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764A78, &qword_20C156788);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764A78, &qword_20C156788);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B72FC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72900C(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B741980(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C7627B8, &unk_20C170A90);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C7627B8, &unk_20C170A90);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C7627B8, &unk_20C170A90);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B7301BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B729CE0(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B741E00(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C771090, &qword_20C15A040);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C771090, &qword_20C15A040);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C771090, &qword_20C15A040);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B730744()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72A9B4(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B7422C4(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C762710, &qword_20C176710);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C762710, &qword_20C176710);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C762710, &qword_20C176710);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B730CCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72B688(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B742788(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C7627E8, &unk_20C1643F0);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C7627E8, &unk_20C1643F0);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C7627E8, &unk_20C1643F0);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B731254()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0, &unk_20C1643E0);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72C35C(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B742C4C(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764AA0, &unk_20C1643E0);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764AA0, &unk_20C1643E0);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764AA0, &unk_20C1643E0);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B7317DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72D030(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B743110(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C762758, &unk_20C176700);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C762758, &unk_20C176700);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C762758, &unk_20C176700);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B731D64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0, &unk_20C1643D0);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72DD04(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B7435D4(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764AE0, &unk_20C1643D0);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764AE0, &unk_20C1643D0);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764AE0, &unk_20C1643D0);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B7322EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600, &unk_20C175400);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72E9D8(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v24(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v25;
  sub_20B743A98(v15, v13, v25);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &unk_27C767600, &unk_20C175400);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &unk_27C767600, &unk_20C175400);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &unk_27C767600, &unk_20C175400);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {
    v20 = *(v1 + 7);

    v19(v21);
    sub_20B583ECC(v19, v20);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

double sub_20B732874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v35 = a3;
  v39 = a1;
  v4 = sub_20C134EC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  swift_beginAccess();
  v37 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(v5 + 16);
    v19(v17, Strong + *(*Strong + 248), v4);

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
    v19 = *(v5 + 16);
  }

  v19(v14, v39, v4);
  v20(v14, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_20B52F9E8(v17, v9, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v14, &v9[v21], &qword_27C7649E0, &unk_20C1643C0);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v23 = v38;
    sub_20B52F9E8(v9, v38, &qword_27C7649E0, &unk_20C1643C0);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v36;
      (*(v5 + 32))(v36, &v9[v21], v4);
      sub_20B753124(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
      v26 = sub_20C13C894();
      v27 = *(v5 + 8);
      v27(v25, v4);
      sub_20B520158(v14, &qword_27C7649E0, &unk_20C1643C0);
      sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
      v27(v23, v4);
      sub_20B520158(v9, &qword_27C7649E0, &unk_20C1643C0);
      if ((v26 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v14, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
    (*(v5 + 8))(v23, v4);
LABEL_9:
    sub_20B520158(v9, &qword_27C7649D8, &unk_20C1566E0);
    return result;
  }

  sub_20B520158(v14, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
  if (v22(&v9[v21], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20B520158(v9, &qword_27C7649E0, &unk_20C1643C0);
LABEL_11:
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = type metadata accessor for FilterResultUpdated(0);
    v35(v39 + *(v30 + 20), v39 + *(v30 + 24));
    v31 = *(v29 + 64);
    if (v31)
    {
      v32 = *(v29 + 72);

      v31(v33);

      sub_20B583ECC(v31, v32);
    }

    else
    {
    }
  }

  return result;
}

double sub_20B732DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(void (*)(void, __n128), uint64_t))
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v39 = a1;
  v7 = sub_20C134EC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  swift_beginAccess();
  v37 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(v8 + 16);
    v22(v20, Strong + *(*Strong + 248), v7);

    v23 = *(v8 + 56);
    v23(v20, 0, 1, v7);
  }

  else
  {
    v23 = *(v8 + 56);
    v23(v20, 1, 1, v7);
    v22 = *(v8 + 16);
  }

  v22(v17, v39, v7);
  v23(v17, 0, 1, v7);
  v24 = *(v10 + 48);
  sub_20B52F9E8(v20, v12, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v17, &v12[v24], &qword_27C7649E0, &unk_20C1643C0);
  v25 = *(v8 + 48);
  if (v25(v12, 1, v7) != 1)
  {
    v26 = v38;
    sub_20B52F9E8(v12, v38, &qword_27C7649E0, &unk_20C1643C0);
    if (v25(&v12[v24], 1, v7) != 1)
    {
      v28 = v36;
      (*(v8 + 32))(v36, &v12[v24], v7);
      sub_20B753124(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
      v29 = v26;
      v30 = sub_20C13C894();
      v31 = *(v8 + 8);
      v31(v28, v7);
      sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
      sub_20B520158(v20, &qword_27C7649E0, &unk_20C1643C0);
      v31(v29, v7);
      sub_20B520158(v12, &qword_27C7649E0, &unk_20C1643C0);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v20, &qword_27C7649E0, &unk_20C1643C0);
    (*(v8 + 8))(v26, v7);
LABEL_9:
    sub_20B520158(v12, &qword_27C7649D8, &unk_20C1566E0);
    return result;
  }

  sub_20B520158(v17, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v20, &qword_27C7649E0, &unk_20C1643C0);
  if (v25(&v12[v24], 1, v7) != 1)
  {
    goto LABEL_9;
  }

  sub_20B520158(v12, &qword_27C7649E0, &unk_20C1643C0);
LABEL_11:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B733324(v32, v33, v34, v35);
  }

  return result;
}

void sub_20B733324(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void (*)(void, __n128), uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  if (*(*(v4 + *(*v4 + 224)) + 16))
  {
    v16 = (a3)(0, v13);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = *(*v4 + 176);
    swift_beginAccess();
    sub_20B5DF2D4(v15, v4 + v17, a1, a2);
    swift_endAccess();
    sub_20B52F9E8(v4 + v17, v11, a1, a2);
    if ((*(v4 + *(*v4 + 200)) & 0x10) == 0)
    {
      v18 = v4[10];
      if (v18)
      {
        v19 = v4[11];

        v18(v11);
        a4(v18, v19);
      }
    }

    sub_20B520158(v11, a1, a2);
  }
}

void sub_20B733510(uint64_t *a1, uint64_t *a2, void (*a3)(void (*)(void, __n128), uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  if (*(*(v3 + *(*v3 + 224)) + 16))
  {
    v13 = *(*v3 + 192);
    swift_beginAccess();
    sub_20B52F9E8(v3 + v13, v12, a1, a2);
    v14 = *(*v3 + 176);
    swift_beginAccess();
    sub_20B5DF2D4(v12, v3 + v14, a1, a2);
    swift_endAccess();
    sub_20B52F9E8(v3 + v14, v9, a1, a2);
    if ((*(v3 + *(*v3 + 200)) & 0x10) == 0)
    {
      v15 = v3[10];
      if (v15)
      {
        v16 = v3[11];

        v15(v9);
        a3(v15, v16);
      }
    }

    sub_20B520158(v9, a1, a2);
  }
}

uint64_t sub_20B7337FC(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70, &qword_20C156780);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78, &qword_20C156788);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88, &qword_20C156798);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C134E04();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764A88, &qword_20C156798);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A88;
    v34 = &qword_20C156798;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C764A78, &qword_20C156788);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C764A78, &qword_20C156788);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130], MEMORY[0x277D51140]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C134DD4();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C134DD4();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D51130], &qword_27C764A78, &qword_20C156788, MEMORY[0x277D510F8], 0xAu, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C764A78, &qword_20C156788);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C764A78, &qword_20C156788);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C764A78, &qword_20C156788);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C764A78, &qword_20C156788);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A70;
    v34 = &qword_20C156780;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C764A78, &qword_20C156788);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C764A78, &qword_20C156788);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130], MEMORY[0x277D51140]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C764A78, &qword_20C156788);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C764A78, &qword_20C156788);
  return (v80 & 1) != 0;
}

uint64_t sub_20B7344F4(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998, &qword_20C1566B0);
  MEMORY[0x28223BE20](v92);
  v93 = v79 - v2;
  v3 = sub_20C135524();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v90);
  v91 = v79 - v5;
  v6 = sub_20C135C84();
  MEMORY[0x28223BE20](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = v79 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v79 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8, &unk_20C1566C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v79 - v21;
  v23 = sub_20C1341A4();
  MEMORY[0x28223BE20](v23);
  v86 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = v79 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v79 - v28;
  v31 = v30;
  sub_20B52F9E8(a1, v22, &qword_27C7649A8, &unk_20C1566C0);
  v32 = *(v31 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    sub_20B520158(v22, &qword_27C7649A8, &unk_20C1566C0);
    return 0;
  }

  v79[0] = v8;
  v34 = v31 + 48;
  v36 = v31 + 32;
  v35 = *(v31 + 32);
  v83 = v6;
  v84 = v35;
  v35(v29, v22, v23);
  v37 = v98;
  v38 = v31;
  v39 = *(*v98 + 176);
  swift_beginAccess();
  v40 = v32;
  v41 = v37;
  v80 = v39;
  v42 = v37 + v39;
  v43 = v38;
  sub_20B52F9E8(v42, v19, &qword_27C7627B8, &unk_20C170A90);
  v82 = v40;
  v81 = v34;
  v44 = v40(v19, 1, v23);
  v85 = v38;
  v79[1] = v36;
  if (v44 == 1)
  {
    sub_20B520158(v19, &qword_27C7627B8, &unk_20C170A90);
LABEL_7:
    v47 = v41;
    v48 = v99;
    v49 = v23;
    goto LABEL_8;
  }

  v45 = v94;
  v46 = v84;
  v84(v94, v19, v23);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618], MEMORY[0x277D50628]);
  if (sub_20C13C894())
  {
    (*(v43 + 8))(v45, v23);
    goto LABEL_7;
  }

  v53 = v88;
  v46(v88, v45, v23);
  swift_storeEnumTagMultiPayload();
  v54 = v89;
  v49 = v23;
  (*(v43 + 16))(v89, v29, v23);
  swift_storeEnumTagMultiPayload();
  v55 = *(v90 + 48);
  v56 = v53;
  v57 = v91;
  sub_20B7479A0(v56, v91);
  sub_20B7479A0(v54, v57 + v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    v59 = v99;
    if (EnumCaseMultiPayload > 3)
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_63;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v47 = v41;
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_67;
        }

        goto LABEL_63;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_63:
        (*(v43 + 8))(v29, v49);
        sub_20B747A68(v57 + v55, MEMORY[0x277D52060]);
        goto LABEL_64;
      }
    }
  }

  else
  {
    v59 = v99;
    if (EnumCaseMultiPayload <= 7)
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 6)
      {
        v75 = v79[0];
        sub_20B747A04(v57, v79[0]);
        v76 = swift_getEnumCaseMultiPayload();
        v77 = *(v43 + 8);
        if (v76 == 6)
        {
          v77(v29, v49);
          v77((v57 + v55), v49);
          v77(v75, v49);
LABEL_64:
          sub_20B747A68(v57, MEMORY[0x277D52060]);
          return 2;
        }

        v77(v75, v49);
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 8)
      {
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 9)
        {
          if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_63;
        }
      }
    }
  }

LABEL_67:
  v78 = MEMORY[0x277D52060];
  sub_20B747A68(v57 + v55, MEMORY[0x277D52060]);
  sub_20B747A68(v57, v78);
  v48 = v59;
LABEL_8:
  v50 = v95;
  sub_20B73FED0(v95);
  v51 = *(v47 + *(*v47 + 208));
  if (v51 <= 3)
  {
    if (*(v47 + *(*v47 + 208)) > 1u)
    {
      if (v51 == 2)
      {
        v52 = sub_20C1354A4();
      }

      else
      {
        v52 = sub_20C1354B4();
      }
    }

    else if (*(v47 + *(*v47 + 208)))
    {
      v52 = sub_20C1354E4();
    }

    else
    {
      v52 = sub_20C1354D4();
    }
  }

  else if (*(v47 + *(*v47 + 208)) <= 5u)
  {
    if (v51 == 4)
    {
      v52 = sub_20C1354F4();
    }

    else
    {
      v52 = sub_20C135504();
    }
  }

  else if (v51 == 6)
  {
    v52 = sub_20C135484();
  }

  else if (v51 == 7)
  {
    v52 = sub_20C135514();
  }

  else
  {
    v52 = sub_20C135494();
  }

  v60 = v52;
  (*(v96 + 8))(v50, v97);
  v61 = sub_20C1362C4();
  v63 = sub_20B8D7150(v61, v62, v60);

  if ((v63 & 1) == 0)
  {
    (*(v85 + 8))(v29, v49);
    return 2;
  }

  v64 = v85;
  (*(v85 + 16))(v48, v29, v49);
  (*(v64 + 56))(v48, 0, 1, v49);
  v65 = *(v92 + 48);
  v66 = v29;
  v67 = v93;
  sub_20B52F9E8(v48, v93, &qword_27C7627B8, &unk_20C170A90);
  sub_20B52F9E8(v47 + v80, v67 + v65, &qword_27C7627B8, &unk_20C170A90);
  v68 = v82;
  if (v82(v67, 1, v49) == 1)
  {
    sub_20B520158(v48, &qword_27C7627B8, &unk_20C170A90);
    (*(v64 + 8))(v66, v49);
    if (v68(v67 + v65, 1, v49) == 1)
    {
      sub_20B520158(v67, &qword_27C7627B8, &unk_20C170A90);
      return 1;
    }

    goto LABEL_44;
  }

  v69 = v87;
  sub_20B52F9E8(v67, v87, &qword_27C7627B8, &unk_20C170A90);
  if (v68(v67 + v65, 1, v49) == 1)
  {
    sub_20B520158(v99, &qword_27C7627B8, &unk_20C170A90);
    v70 = *(v85 + 8);
    v70(v66, v49);
    v70(v69, v49);
LABEL_44:
    sub_20B520158(v67, &qword_27C764998, &qword_20C1566B0);
    return 0;
  }

  v71 = (v67 + v65);
  v72 = v86;
  v84(v86, v71, v49);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618], MEMORY[0x277D50628]);
  v73 = sub_20C13C894();
  v74 = *(v85 + 8);
  v74(v72, v49);
  sub_20B520158(v99, &qword_27C7627B8, &unk_20C170A90);
  v74(v66, v49);
  v74(v69, v49);
  sub_20B520158(v67, &qword_27C7627B8, &unk_20C170A90);
  return (v73 & 1) != 0;
}

uint64_t sub_20B73514C(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18, &unk_20C156720);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28, &qword_20C156738);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C1365F4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764A28, &qword_20C156738);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A28;
    v34 = &qword_20C156738;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C771090, &qword_20C15A040);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C771090, &qword_20C15A040);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C1365A4();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C1365A4();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D52AF8], &qword_27C771090, &qword_20C15A040, MEMORY[0x277D52AC8], 4u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C771090, &qword_20C15A040);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C771090, &qword_20C15A040);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C771090, &qword_20C15A040);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C771090, &qword_20C15A040);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A18;
    v34 = &unk_20C156720;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C771090, &qword_20C15A040);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C771090, &qword_20C15A040);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C771090, &qword_20C15A040);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C771090, &qword_20C15A040);
  return (v80 & 1) != 0;
}

uint64_t sub_20B735E44(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8, &unk_20C1567C0);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8, &qword_20C1567D8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C138244();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764AC8, &qword_20C1567D8);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AC8;
    v34 = &qword_20C1567D8;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C762710, &qword_20C176710);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C762710, &qword_20C176710);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C138224();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C138224();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53E10], &qword_27C762710, &qword_20C176710, MEMORY[0x277D53DE0], 1u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C762710, &qword_20C176710);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C762710, &qword_20C176710);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C762710, &qword_20C176710);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C762710, &qword_20C176710);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764AB8;
    v34 = &unk_20C1567C0;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C762710, &qword_20C176710);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C762710, &qword_20C176710);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C762710, &qword_20C176710);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C762710, &qword_20C176710);
  return (v80 & 1) != 0;
}

uint64_t sub_20B736B3C(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50, &unk_20C156760);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60, &unk_20C175920);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C1382B4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764A60, &unk_20C175920);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A60;
    v34 = &unk_20C175920;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C7627E8, &unk_20C1643F0);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C7627E8, &unk_20C1643F0);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C138294();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C138294();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53E88], &qword_27C7627E8, &unk_20C1643F0, MEMORY[0x277D53E58], 3u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C7627E8, &unk_20C1643F0);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C7627E8, &unk_20C1643F0);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C7627E8, &unk_20C1643F0);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C7627E8, &unk_20C1643F0);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A50;
    v34 = &unk_20C156760;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C7627E8, &unk_20C1643F0);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C7627E8, &unk_20C1643F0);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C7627E8, &unk_20C1643F0);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C7627E8, &unk_20C1643F0);
  return (v80 & 1) != 0;
}

uint64_t sub_20B737834(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98, &unk_20C1567A0);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0, &unk_20C1643E0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0, &unk_20C175910);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C1333E4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764AB0, &unk_20C175910);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AB0;
    v34 = &unk_20C175910;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C764AA0, &unk_20C1643E0);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C764AA0, &unk_20C1643E0);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C1333B4();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C1333B4();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D4FE80], &qword_27C764AA0, &unk_20C1643E0, MEMORY[0x277D4FE50], 5u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C764AA0, &unk_20C1643E0);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C764AA0, &unk_20C1643E0);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C764AA0, &unk_20C1643E0);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C764AA0, &unk_20C1643E0);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A98;
    v34 = &unk_20C1567A0;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C764AA0, &unk_20C1643E0);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C764AA0, &unk_20C1643E0);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C764AA0, &unk_20C1643E0);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C764AA0, &unk_20C1643E0);
  return (v80 & 1) != 0;
}

uint64_t sub_20B73852C(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8, &unk_20C156700);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08, &qword_20C156718);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C1334D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764A08, &qword_20C156718);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A08;
    v34 = &qword_20C156718;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C762758, &unk_20C176700);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C762758, &unk_20C176700);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C1334A4();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C1334A4();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D4FF18], &qword_27C762758, &unk_20C176700, MEMORY[0x277D4FEF0], 7u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C762758, &unk_20C176700);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C762758, &unk_20C176700);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C762758, &unk_20C176700);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C762758, &unk_20C176700);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C7649F8;
    v34 = &unk_20C156700;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C762758, &unk_20C176700);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C762758, &unk_20C176700);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C762758, &unk_20C176700);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C762758, &unk_20C176700);
  return (v80 & 1) != 0;
}

uint64_t sub_20B739224(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8, &unk_20C1567E0);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0, &unk_20C1643D0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0, &qword_20C1567F8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C1370C4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764AF0, &qword_20C1567F8);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AF0;
    v34 = &qword_20C1567F8;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &qword_27C764AE0, &unk_20C1643D0);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &qword_27C764AE0, &unk_20C1643D0);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128], MEMORY[0x277D53138]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C1370A4();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C1370A4();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53128], &qword_27C764AE0, &unk_20C1643D0, MEMORY[0x277D53108], 9u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &qword_27C764AE0, &unk_20C1643D0);
  sub_20B52F9E8(v66 + v87, v74 + v72, &qword_27C764AE0, &unk_20C1643D0);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &qword_27C764AE0, &unk_20C1643D0);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &qword_27C764AE0, &unk_20C1643D0);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764AD8;
    v34 = &unk_20C1567E0;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &qword_27C764AE0, &unk_20C1643D0);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &qword_27C764AE0, &unk_20C1643D0);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128], MEMORY[0x277D53138]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &qword_27C764AE0, &unk_20C1643D0);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &qword_27C764AE0, &unk_20C1643D0);
  return (v80 & 1) != 0;
}

uint64_t sub_20B739F1C(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30, &unk_20C156740);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v3;
  v4 = sub_20C135524();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0, &qword_20C1566D8);
  MEMORY[0x28223BE20](v95);
  v96 = &v82 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = (&v82 - v10);
  MEMORY[0x28223BE20](v11);
  v93 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600, &unk_20C175400);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40, &unk_20C175900);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - v21;
  v23 = sub_20C133A74();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v91 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_20B52F9E8(v103, v22, &qword_27C764A40, &unk_20C175900);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A40;
    v34 = &unk_20C175900;
    v35 = v22;
LABEL_3:
    sub_20B520158(v35, v33, v34);
    return 0;
  }

  v89 = v7;
  v103 = v24;
  v37 = *(v24 + 32);
  v37(v31, v22, v23);
  v38 = *(*v2 + 176);
  swift_beginAccess();
  v87 = v38;
  sub_20B52F9E8(v2 + v38, v19, &unk_27C767600, &unk_20C175400);
  v88 = v32;
  v39 = v32(v19, 1, v23);
  v40 = v2;
  v86 = v24 + 32;
  v85 = v37;
  if (v39 == 1)
  {
    sub_20B520158(v19, &unk_27C767600, &unk_20C175400);
    v41 = v103;
    v42 = v101;
    v43 = v23;
    goto LABEL_39;
  }

  v37(v28, v19, v23);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278], MEMORY[0x277D50288]);
  v43 = v23;
  if (sub_20C13C894())
  {
    v41 = v103;
    (*(v103 + 8))(v28, v23);
    v42 = v101;
    goto LABEL_39;
  }

  v44 = v2;
  v45 = sub_20C133A34();
  v46 = v93;
  *v93 = v45;
  v46[1] = v47;
  swift_storeEnumTagMultiPayload();
  v48 = sub_20C133A34();
  v50 = v49;
  v51 = *(v103 + 8);
  v84 = v103 + 8;
  v83 = v51;
  v51(v28, v43);
  v52 = v94;
  *v94 = v48;
  *(v52 + 8) = v50;
  swift_storeEnumTagMultiPayload();
  v53 = *(v95 + 48);
  v54 = v46;
  v55 = v96;
  sub_20B7479A0(v54, v96);
  sub_20B7479A0(v52, v55 + v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 4)
      {
        v42 = v101;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v57 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v40 = v44;
      if (EnumCaseMultiPayload != 1)
      {
        v42 = v101;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v57 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v42 = v101;
    if (v57)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v40 = v44;
    if (EnumCaseMultiPayload == 6)
    {
      v58 = v90;
      sub_20B747A04(v55, v90);
      v59 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      if (v59 == 6)
      {
        v83(v31, v43);
        v60 = sub_20C1341A4();
        v61 = *(*(v60 - 8) + 8);
        v61(v55 + v53, v60);
        v61(v58, v60);
LABEL_36:
        sub_20B747A68(v55, MEMORY[0x277D52060]);
        return 2;
      }

      v62 = sub_20C1341A4();
      (*(*(v62 - 8) + 8))(v58, v62);
    }

    else
    {
      v42 = v101;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v40 = v44;
  if (EnumCaseMultiPayload == 8)
  {
    v57 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v42 = v101;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v83(v31, v43);
    sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v63 = MEMORY[0x277D52060];
  sub_20B747A68(v55 + v53, MEMORY[0x277D52060]);
  sub_20B747A68(v55, v63);
  v41 = v103;
LABEL_39:
  sub_20B740984(MEMORY[0x277D50278], &unk_27C767600, &unk_20C175400, MEMORY[0x277D50240], 8u, v42);
  v64 = *(v40 + *(*v40 + 208));
  if (v64 <= 3)
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) > 1u)
    {
      if (v64 == 2)
      {
        v67 = sub_20C1354A4();
      }

      else
      {
        v67 = sub_20C1354B4();
      }
    }

    else if (*(v40 + *(*v40 + 208)))
    {
      v67 = sub_20C1354E4();
    }

    else
    {
      v67 = sub_20C1354D4();
    }
  }

  else
  {
    v65 = v102;
    v66 = v40;
    if (*(v40 + *(*v40 + 208)) <= 5u)
    {
      if (v64 == 4)
      {
        v67 = sub_20C1354F4();
      }

      else
      {
        v67 = sub_20C135504();
      }
    }

    else if (v64 == 6)
    {
      v67 = sub_20C135484();
    }

    else if (v64 == 7)
    {
      v67 = sub_20C135514();
    }

    else
    {
      v67 = sub_20C135494();
    }
  }

  v68 = v67;
  (*(v99 + 8))(v42, v100);
  v69 = sub_20C1362C4();
  v71 = sub_20B8D7150(v69, v70, v68);

  if ((v71 & 1) == 0)
  {
    (*(v41 + 8))(v31, v43);
    return 2;
  }

  (*(v41 + 16))(v65, v31, v43);
  (*(v41 + 56))(v65, 0, 1, v43);
  v72 = *(v97 + 48);
  v73 = v31;
  v74 = v98;
  sub_20B52F9E8(v65, v98, &unk_27C767600, &unk_20C175400);
  sub_20B52F9E8(v66 + v87, v74 + v72, &unk_27C767600, &unk_20C175400);
  v75 = v88;
  if (v88(v74, 1, v43) == 1)
  {
    sub_20B520158(v65, &unk_27C767600, &unk_20C175400);
    (*(v41 + 8))(v73, v43);
    if (v75(v74 + v72, 1, v43) == 1)
    {
      sub_20B520158(v74, &unk_27C767600, &unk_20C175400);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A30;
    v34 = &unk_20C156740;
    v35 = v74;
    goto LABEL_3;
  }

  v103 = v73;
  v76 = v92;
  sub_20B52F9E8(v74, v92, &unk_27C767600, &unk_20C175400);
  if (v75(v74 + v72, 1, v43) == 1)
  {
    sub_20B520158(v102, &unk_27C767600, &unk_20C175400);
    v77 = *(v41 + 8);
    v77(v103, v43);
    v77(v76, v43);
    goto LABEL_64;
  }

  v78 = v74 + v72;
  v79 = v91;
  v85(v91, v78, v43);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278], MEMORY[0x277D50288]);
  v80 = sub_20C13C894();
  v81 = *(v41 + 8);
  v81(v79, v43);
  sub_20B520158(v102, &unk_27C767600, &unk_20C175400);
  v81(v103, v43);
  v81(v76, v43);
  sub_20B520158(v74, &unk_27C767600, &unk_20C175400);
  return (v80 & 1) != 0;
}

uint64_t sub_20B73AC14(void (*a1)(__n128), uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v114 = a1;
  v127 = sub_20C133E24();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = &v101 - v6;
  MEMORY[0x28223BE20](v7);
  v122 = &v101 - v8;
  MEMORY[0x28223BE20](v9);
  v119 = &v101 - v10;
  v132 = sub_20C135C84();
  v135 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v118 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v101 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  v14 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v116 = &v101 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  MEMORY[0x28223BE20](v21);
  v131 = (&v101 - v22);
  v23 = sub_20C1341A4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v27 - 8);
  v112 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v110 = &v101 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v101 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v101 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8, &qword_20C1566D0);
  v38 = *(v14 + 72);
  v39 = *(v14 + 80);
  v40 = (v39 + 32) & ~v39;
  v134 = v38;
  v107 = v39;
  v109 = v37;
  v106 = v40 + 2 * v38;
  v41 = swift_allocObject();
  v108 = v40;
  v103 = v41;
  v42 = v41 + v40;
  v43 = *(*v3 + 176);
  swift_beginAccess();
  v133 = v3;
  v105 = v43;
  sub_20B52F9E8(v3 + v43, v36, &qword_27C7627B8, &unk_20C170A90);
  v123 = v24;
  v129 = *(v24 + 48);
  v130 = v24 + 48;
  if (v129(v36, 1, v23))
  {
    sub_20B520158(v36, &qword_27C7627B8, &unk_20C170A90);
    v44 = 1;
    v45 = v132;
  }

  else
  {
    v46 = v123;
    (*(v123 + 16))(v26, v36, v23);
    sub_20B520158(v36, &qword_27C7627B8, &unk_20C170A90);
    (*(v46 + 32))(v42, v26, v23);
    v45 = v132;
    swift_storeEnumTagMultiPayload();
    v44 = 0;
  }

  v128 = *(v135 + 56);
  v128(v42, v44, 1, v45);
  v47 = v133;
  v48 = *(*v133 + 184);
  swift_beginAccess();
  v104 = v48;
  sub_20B52F9E8(v47 + v48, v33, &qword_27C7627B8, &unk_20C170A90);
  v49 = v129(v33, 1, v23);
  v50 = v134;
  v115 = v23;
  if (v49)
  {
    sub_20B520158(v33, &qword_27C7627B8, &unk_20C170A90);
    v51 = 1;
  }

  else
  {
    v52 = v123;
    (*(v123 + 16))(v26, v33, v23);
    sub_20B520158(v33, &qword_27C7627B8, &unk_20C170A90);
    (*(v52 + 32))(v42 + v50, v26, v23);
    swift_storeEnumTagMultiPayload();
    v51 = 0;
  }

  v53 = v131;
  v128(v42 + v50, v51, 1, v45);
  sub_20B52F9E8(v42, v53, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v53, v20, &unk_27C7629B0, &unk_20C1510C0);
  v54 = v135 + 48;
  v131 = *(v135 + 48);
  v55 = v131(v20, 1, v45);
  v102 = v26;
  if (v55 == 1)
  {
    sub_20B520158(v20, &unk_27C7629B0, &unk_20C1510C0);
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v20, v124);
    v56 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_20BC05D14(0, v56[2] + 1, 1, v56);
    }

    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_20BC05D14((v57 > 1), v58 + 1, 1, v56);
    }

    v56[2] = v58 + 1;
    sub_20B7479A0(v124, v56 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v58);
    v45 = v132;
  }

  sub_20B52F9E8(v42 + v134, v53, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v53, v20, &unk_27C7629B0, &unk_20C1510C0);
  v111 = v54;
  if (v131(v20, 1, v45) == 1)
  {
    sub_20B520158(v20, &unk_27C7629B0, &unk_20C1510C0);
    v59 = v117;
    v60 = v115;
    v61 = v112;
  }

  else
  {
    sub_20B7479A0(v20, v124);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v115;
    v61 = v112;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_20BC05D14(0, v56[2] + 1, 1, v56);
    }

    v59 = v117;
    v64 = v56[2];
    v63 = v56[3];
    if (v64 >= v63 >> 1)
    {
      v56 = sub_20BC05D14((v63 > 1), v64 + 1, 1, v56);
    }

    v56[2] = v64 + 1;
    sub_20B7479A0(v124, v56 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v64);
    v45 = v132;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v124 = sub_20B716268(v56);

  (v114)(v65);
  v117 = swift_allocObject();
  v66 = &v117[v108];
  v67 = v110;
  sub_20B52F9E8(v133 + v105, v110, &qword_27C7627B8, &unk_20C170A90);
  v68 = v129(v67, 1, v60);
  v69 = v134;
  if (v68)
  {
    sub_20B520158(v67, &qword_27C7627B8, &unk_20C170A90);
    v70 = 1;
  }

  else
  {
    v71 = v123;
    v72 = v102;
    (*(v123 + 16))(v102, v67, v60);
    sub_20B520158(v67, &qword_27C7627B8, &unk_20C170A90);
    (*(v71 + 32))(v66, v72, v60);
    swift_storeEnumTagMultiPayload();
    v70 = 0;
  }

  v73 = v118;
  v128(v66, v70, 1, v45);
  sub_20B52F9E8(v133 + v104, v61, &qword_27C7627B8, &unk_20C170A90);
  if (v129(v61, 1, v60))
  {
    sub_20B520158(v61, &qword_27C7627B8, &unk_20C170A90);
    v74 = 1;
  }

  else
  {
    v75 = v123;
    v76 = v102;
    (*(v123 + 16))(v102, v61, v60);
    sub_20B520158(v61, &qword_27C7627B8, &unk_20C170A90);
    (*(v75 + 32))(v66 + v69, v76, v60);
    swift_storeEnumTagMultiPayload();
    v74 = 0;
  }

  v128(v66 + v69, v74, 1, v45);
  v77 = v116;
  sub_20B52F9E8(v66, v116, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v77, v59, &unk_27C7629B0, &unk_20C1510C0);
  if (v131(v59, 1, v45) == 1)
  {
    sub_20B520158(v59, &unk_27C7629B0, &unk_20C1510C0);
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v59, v73);
    v78 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_20BC05D14(0, v78[2] + 1, 1, v78);
    }

    v80 = v78[2];
    v79 = v78[3];
    if (v80 >= v79 >> 1)
    {
      v78 = sub_20BC05D14((v79 > 1), v80 + 1, 1, v78);
    }

    v78[2] = v80 + 1;
    sub_20B7479A0(v73, v78 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v80);
  }

  sub_20B52F9E8(v66 + v134, v77, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v77, v59, &unk_27C7629B0, &unk_20C1510C0);
  if (v131(v59, 1, v132) == 1)
  {
    sub_20B520158(v59, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    sub_20B7479A0(v59, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_20BC05D14(0, v78[2] + 1, 1, v78);
    }

    v82 = v78[2];
    v81 = v78[3];
    if (v82 >= v81 >> 1)
    {
      v78 = sub_20BC05D14((v81 > 1), v82 + 1, 1, v78);
    }

    v78[2] = v82 + 1;
    sub_20B7479A0(v73, v78 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v82);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v83 = sub_20B716268(v78);

  v84 = qword_27C79BF30;
  v85 = v133;
  swift_beginAccess();
  v86 = v126;
  v87 = *(v126 + 16);
  v88 = v85;
  v89 = v85 + v84;
  v90 = v119;
  v91 = v127;
  v87(v119, v89, v127);
  v92 = sub_20C133E04();
  v93 = *(v86 + 8);
  v93(v90, v91);
  if (*(v124 + 16) <= *(v92 + 16) >> 3)
  {
    v136 = v92;
    sub_20B6CEA94(v124);

    v94 = v136;
  }

  else
  {
    v94 = sub_20B6D1890(v124, v92);
  }

  sub_20B722CF0(v83, v94);
  v135 = v95;
  v96 = v120;
  v97 = v127;
  v87(v120, v88 + v84, v127);
  sub_20C133DF4();
  v93(v96, v97);
  sub_20C134EB4();
  v98 = v121;
  v87(v121, v88 + v84, v97);
  sub_20C133E14();
  v93(v98, v97);
  v99 = v122;
  sub_20C133DE4();
  swift_beginAccess();
  (*(v126 + 40))(v88 + v84, v99, v97);
  return swift_endAccess();
}

uint64_t sub_20B73BCD4(void (*a1)(__n128), uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t), unsigned int a7)
{
  v174 = a7;
  v182 = a6;
  v11 = v7;
  v161 = a2;
  v162 = a1;
  v12 = sub_20C133E24();
  v180 = *(v12 - 8);
  v181 = v12;
  MEMORY[0x28223BE20](v12);
  v168 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v167 = &v149 - v15;
  MEMORY[0x28223BE20](v16);
  v169 = &v149 - v17;
  MEMORY[0x28223BE20](v18);
  v166 = &v149 - v19;
  v187 = sub_20C135C84();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v165 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v176 = &v149 - v22;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  v186 = *(v179 - 8);
  v23 = v186;
  MEMORY[0x28223BE20](v179);
  v164 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v178 = &v149 - v26;
  MEMORY[0x28223BE20](v27);
  v159 = (&v149 - v28);
  v30 = MEMORY[0x28223BE20](v29);
  v175 = &v149 - v31;
  v32 = (a3)(0, v30);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v149 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v36 - 8);
  v160 = &v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v158 = &v149 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v149 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v149 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8, &qword_20C1566D0);
  v47 = v23;
  v48 = a5;
  v49 = v186[80];
  v50 = (v49 + 32) & ~v49;
  v177 = *(v47 + 9);
  v155 = v49;
  v157 = v46;
  v154 = v50 + 2 * v177;
  v51 = swift_allocObject();
  v156 = v50;
  v151 = v51;
  v52 = (v51 + v50);
  v53 = *(*v11 + 176);
  swift_beginAccess();
  v186 = v11;
  v153 = v53;
  v54 = &v11[v53];
  v55 = v182;
  sub_20B52F9E8(v54, v45, a4, v48);
  v183 = *(v33 + 48);
  v184 = (v33 + 48);
  v56 = v183(v45, 1, v32);
  v57 = v187;
  v171 = v48;
  v172 = v33;
  v170 = v35;
  if (v56)
  {
    sub_20B520158(v45, a4, v48);
    v58 = v185;
    v59 = *(v185 + 56);
    v60 = v52;
    v61 = 1;
  }

  else
  {
    (*(v33 + 16))(v35, v45, v32);
    v62 = sub_20B520158(v45, a4, v48);
    v63 = v55(v62);
    v65 = v64;
    (*(v33 + 8))(v35, v32);
    *v52 = v63;
    v52[1] = v65;
    v48 = v171;
    swift_storeEnumTagMultiPayload();
    v58 = v185;
    v59 = *(v185 + 56);
    v60 = v52;
    v61 = 0;
  }

  v66 = v57;
  v67 = v59;
  v59(v60, v61, 1, v66);
  v150 = v52;
  v68 = (v52 + v177);
  v69 = v186;
  v70 = *(*v186 + 184);
  swift_beginAccess();
  v152 = v70;
  sub_20B52F9E8(&v69[v70], v42, a4, v48);
  v71 = v183(v42, 1, v32);
  v173 = v32;
  v163 = a4;
  if (v71)
  {
    sub_20B520158(v42, a4, v48);
    v72 = v187;
    v67(v68, 1, 1, v187);
  }

  else
  {
    v73 = v172;
    v74 = v67;
    v75 = v170;
    (*(v172 + 16))(v170, v42, v32);
    v76 = sub_20B520158(v42, a4, v48);
    v77 = v182(v76);
    v79 = v78;
    v80 = v75;
    v67 = v74;
    (*(v73 + 8))(v80, v32);
    *v68 = v77;
    v68[1] = v79;
    v72 = v187;
    swift_storeEnumTagMultiPayload();
    v74(v68, 0, 1, v72);
  }

  v81 = v159;
  v82 = v175;
  sub_20B52F9E8(v150, v175, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v82, v81, &unk_27C7629B0, &unk_20C1510C0);
  v83 = *(v58 + 48);
  if (v83(v81, 1, v72) == 1)
  {
    sub_20B520158(v81, &unk_27C7629B0, &unk_20C1510C0);
    v84 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v81, v176);
    v84 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_20BC05D14(0, v84[2] + 1, 1, v84);
    }

    v86 = v84[2];
    v85 = v84[3];
    if (v86 >= v85 >> 1)
    {
      v84 = sub_20BC05D14((v85 > 1), v86 + 1, 1, v84);
    }

    v84[2] = v86 + 1;
    sub_20B7479A0(v176, v84 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v86);
  }

  v87 = v175;
  sub_20B52F9E8(v68, v175, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v87, v81, &unk_27C7629B0, &unk_20C1510C0);
  v88 = v83(v81, 1, v187);
  v159 = v83;
  if (v88 == 1)
  {
    sub_20B520158(v81, &unk_27C7629B0, &unk_20C1510C0);
    v89 = v173;
    v90 = v172;
  }

  else
  {
    sub_20B7479A0(v81, v176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v185;
    v90 = v172;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_20BC05D14(0, v84[2] + 1, 1, v84);
    }

    v94 = v84[2];
    v93 = v84[3];
    if (v94 >= v93 >> 1)
    {
      v84 = sub_20BC05D14((v93 > 1), v94 + 1, 1, v84);
    }

    v84[2] = v94 + 1;
    sub_20B7479A0(v176, v84 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94);
    v89 = v173;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v176 = sub_20B716268(v84);

  (v162)(v95);
  v175 = swift_allocObject();
  v96 = (v175 + v156);
  v97 = v158;
  v98 = v163;
  v99 = v171;
  sub_20B52F9E8(&v186[v153], v158, v163, v171);
  if (v183(v97, 1, v89))
  {
    sub_20B520158(v97, v98, v99);
    v67(v96, 1, 1, v187);
  }

  else
  {
    v100 = v67;
    v101 = v170;
    (*(v90 + 16))(v170, v97, v89);
    v102 = sub_20B520158(v97, v98, v99);
    v103 = v182(v102);
    v105 = v104;
    v106 = v101;
    v67 = v100;
    (*(v90 + 8))(v106, v173);
    *v96 = v103;
    v96[1] = v105;
    v89 = v173;
    v107 = v187;
    swift_storeEnumTagMultiPayload();
    v67(v96, 0, 1, v107);
  }

  v108 = (v96 + v177);
  v109 = v160;
  sub_20B52F9E8(&v186[v152], v160, v98, v99);
  if (v183(v109, 1, v89))
  {
    sub_20B520158(v109, v98, v99);
    v110 = v187;
    v67(v108, 1, 1, v187);
  }

  else
  {
    v111 = v109;
    v112 = v172;
    v113 = *(v172 + 16);
    v184 = v67;
    v114 = v170;
    v113(v170, v111, v89);
    v115 = sub_20B520158(v111, v98, v99);
    v116 = v182(v115);
    v117 = v89;
    v119 = v118;
    (*(v112 + 8))(v114, v117);
    *v108 = v116;
    v108[1] = v119;
    v110 = v187;
    swift_storeEnumTagMultiPayload();
    v184(v108, 0, 1, v110);
  }

  v120 = v165;
  v121 = v178;
  sub_20B52F9E8(v96, v178, &unk_27C7629B0, &unk_20C1510C0);
  v122 = v164;
  sub_20B5DF134(v121, v164, &unk_27C7629B0, &unk_20C1510C0);
  v123 = v159;
  if (v159(v122, 1, v110) == 1)
  {
    sub_20B520158(v122, &unk_27C7629B0, &unk_20C1510C0);
    v124 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v122, v120);
    v124 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_20BC05D14(0, v124[2] + 1, 1, v124);
    }

    v126 = v124[2];
    v125 = v124[3];
    if (v126 >= v125 >> 1)
    {
      v124 = sub_20BC05D14((v125 > 1), v126 + 1, 1, v124);
    }

    v124[2] = v126 + 1;
    sub_20B7479A0(v120, v124 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v126);
  }

  v127 = v108;
  v128 = v178;
  sub_20B52F9E8(v127, v178, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B5DF134(v128, v122, &unk_27C7629B0, &unk_20C1510C0);
  if (v123(v122, 1, v110) == 1)
  {
    sub_20B520158(v122, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    sub_20B7479A0(v122, v120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_20BC05D14(0, v124[2] + 1, 1, v124);
    }

    v130 = v124[2];
    v129 = v124[3];
    if (v130 >= v129 >> 1)
    {
      v124 = sub_20BC05D14((v129 > 1), v130 + 1, 1, v124);
    }

    v124[2] = v130 + 1;
    sub_20B7479A0(v120, v124 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v130);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v131 = sub_20B716268(v124);

  v132 = qword_27C79BF30;
  v133 = v186;
  swift_beginAccess();
  v134 = v180;
  v135 = *(v180 + 16);
  v136 = v133;
  v137 = &v133[v132];
  v138 = v166;
  v139 = v181;
  v135(v166, v137, v181);
  v140 = sub_20C133E04();
  v141 = *(v134 + 8);
  v141(v138, v139);
  if (*(v176 + 16) <= *(v140 + 16) >> 3)
  {
    v188 = v140;
    sub_20B6CEA94(v176);

    v142 = v188;
  }

  else
  {
    v142 = sub_20B6D1890(v176, v140);
  }

  sub_20B722CF0(v131, v142);
  v187 = v143;
  v144 = v167;
  v145 = v181;
  v135(v167, &v136[v132], v181);
  sub_20C133DF4();
  v141(v144, v145);
  sub_20C134EB4();
  v146 = v168;
  v135(v168, &v136[v132], v145);
  sub_20C133E14();
  v141(v146, v145);
  v147 = v169;
  sub_20C133DE4();
  swift_beginAccess();
  (*(v180 + 40))(&v136[v132], v147, v145);
  return swift_endAccess();
}

uint64_t sub_20B73CE9C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C134E04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70, &qword_20C156780);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88, &qword_20C156798);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78, &qword_20C156788);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A88, &qword_20C156798);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A88, &qword_20C156798);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764A78, &qword_20C156788);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764A78, &qword_20C156788);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764A78, &qword_20C156788);
LABEL_12:
      sub_20B520158(v25, &qword_27C764A78, &qword_20C156788);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764A78, &qword_20C156788);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A70, &qword_20C156780);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130], MEMORY[0x277D51140]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764A78, &qword_20C156788);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764A78, &qword_20C156788);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764A78, &qword_20C156788);
  return swift_endAccess();
}

uint64_t sub_20B73D3E8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1341A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998, &qword_20C1566B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8, &unk_20C1566C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C7649A8, &unk_20C1566C0);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C7649A8, &unk_20C1566C0);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C7627B8, &unk_20C170A90);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C7627B8, &unk_20C170A90);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C7627B8, &unk_20C170A90);
LABEL_12:
      sub_20B520158(v25, &qword_27C7627B8, &unk_20C170A90);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C7627B8, &unk_20C170A90);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764998, &qword_20C1566B0);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618], MEMORY[0x277D50628]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C7627B8, &unk_20C170A90);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C7627B8, &unk_20C170A90);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C7627B8, &unk_20C170A90);
  return swift_endAccess();
}

uint64_t sub_20B73D934(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1365F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18, &unk_20C156720);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28, &qword_20C156738);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A28, &qword_20C156738);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A28, &qword_20C156738);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C771090, &qword_20C15A040);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C771090, &qword_20C15A040);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C771090, &qword_20C15A040);
LABEL_12:
      sub_20B520158(v25, &qword_27C771090, &qword_20C15A040);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C771090, &qword_20C15A040);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A18, &unk_20C156720);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C771090, &qword_20C15A040);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C771090, &qword_20C15A040);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C771090, &qword_20C15A040);
  return swift_endAccess();
}

uint64_t sub_20B73DE80(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C138244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8, &unk_20C1567C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8, &qword_20C1567D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AC8, &qword_20C1567D8);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AC8, &qword_20C1567D8);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C762710, &qword_20C176710);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C762710, &qword_20C176710);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C762710, &qword_20C176710);
LABEL_12:
      sub_20B520158(v25, &qword_27C762710, &qword_20C176710);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C762710, &qword_20C176710);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764AB8, &unk_20C1567C0);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C762710, &qword_20C176710);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C762710, &qword_20C176710);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C762710, &qword_20C176710);
  return swift_endAccess();
}

uint64_t sub_20B73E3CC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1382B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50, &unk_20C156760);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60, &unk_20C175920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A60, &unk_20C175920);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A60, &unk_20C175920);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C7627E8, &unk_20C1643F0);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C7627E8, &unk_20C1643F0);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C7627E8, &unk_20C1643F0);
LABEL_12:
      sub_20B520158(v25, &qword_27C7627E8, &unk_20C1643F0);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C7627E8, &unk_20C1643F0);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A50, &unk_20C156760);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C7627E8, &unk_20C1643F0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C7627E8, &unk_20C1643F0);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C7627E8, &unk_20C1643F0);
  return swift_endAccess();
}

uint64_t sub_20B73E918(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1333E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98, &unk_20C1567A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0, &unk_20C175910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0, &unk_20C1643E0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AB0, &unk_20C175910);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AB0, &unk_20C175910);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764AA0, &unk_20C1643E0);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764AA0, &unk_20C1643E0);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764AA0, &unk_20C1643E0);
LABEL_12:
      sub_20B520158(v25, &qword_27C764AA0, &unk_20C1643E0);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764AA0, &unk_20C1643E0);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A98, &unk_20C1567A0);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764AA0, &unk_20C1643E0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764AA0, &unk_20C1643E0);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764AA0, &unk_20C1643E0);
  return swift_endAccess();
}

uint64_t sub_20B73EE64(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1334D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8, &unk_20C156700);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08, &qword_20C156718);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A08, &qword_20C156718);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A08, &qword_20C156718);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C762758, &unk_20C176700);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C762758, &unk_20C176700);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C762758, &unk_20C176700);
LABEL_12:
      sub_20B520158(v25, &qword_27C762758, &unk_20C176700);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C762758, &unk_20C176700);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C7649F8, &unk_20C156700);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C762758, &unk_20C176700);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C762758, &unk_20C176700);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C762758, &unk_20C176700);
  return swift_endAccess();
}

uint64_t sub_20B73F3B0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1370C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8, &unk_20C1567E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0, &qword_20C1567F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0, &unk_20C1643D0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AF0, &qword_20C1567F8);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AF0, &qword_20C1567F8);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764AE0, &unk_20C1643D0);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764AE0, &unk_20C1643D0);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764AE0, &unk_20C1643D0);
LABEL_12:
      sub_20B520158(v25, &qword_27C764AE0, &unk_20C1643D0);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764AE0, &unk_20C1643D0);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764AD8, &unk_20C1567E0);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128], MEMORY[0x277D53138]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764AE0, &unk_20C1643D0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764AE0, &unk_20C1643D0);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764AE0, &unk_20C1643D0);
  return swift_endAccess();
}

uint64_t sub_20B73F8FC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C133A74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30, &unk_20C156740);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40, &unk_20C175900);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600, &unk_20C175400);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A40, &unk_20C175900);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A40, &unk_20C175900);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &unk_27C767600, &unk_20C175400);
  sub_20B52F9E8(v25, &v8[v23], &unk_27C767600, &unk_20C175400);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &unk_27C767600, &unk_20C175400);
LABEL_12:
      sub_20B520158(v25, &unk_27C767600, &unk_20C175400);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &unk_27C767600, &unk_20C175400);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A30, &unk_20C156740);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278], MEMORY[0x277D50288]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &unk_27C767600, &unk_20C175400);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &unk_27C767600, &unk_20C175400);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &unk_27C767600, &unk_20C175400);
  return swift_endAccess();
}

uint64_t sub_20B73FE48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(*a1 + 184);
  swift_beginAccess();
  sub_20B606B6C(a2, a1 + v8, a3, a4);
  return swift_endAccess();
}

void sub_20B73FED0(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v84 = sub_20C133E24();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135C84();
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  MEMORY[0x28223BE20](v4);
  v94 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v99 = &v79 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  v11 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  MEMORY[0x28223BE20](v16);
  v98 = &v79 - v17;
  v18 = sub_20C1341A4();
  v89 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v79 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8, &qword_20C1566D0);
  v27 = *(v11 + 72);
  v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v87 = swift_allocObject();
  v29 = v87 + v28;
  sub_20C134E84();
  v30 = *(*v2 + 176);
  swift_beginAccess();
  v31 = &v2[v30];
  v32 = v89;
  sub_20B52F9E8(v31, v26, &qword_27C7627B8, &unk_20C170A90);
  v92 = *(v32 + 48);
  v33 = (v92)(v26, 1, v18);
  v80 = v20;
  if (v33)
  {
    sub_20B520158(v26, &qword_27C7627B8, &unk_20C170A90);
    v34 = 1;
    v35 = v95;
  }

  else
  {
    (*(v32 + 16))(v20, v26, v18);
    sub_20B520158(v26, &qword_27C7627B8, &unk_20C170A90);
    (*(v32 + 32))(v29 + v27, v20, v18);
    v35 = v95;
    swift_storeEnumTagMultiPayload();
    v34 = 0;
  }

  v36 = *(v96 + 56);
  v91 = v96 + 56;
  v90 = v36;
  v36(v29 + v27, v34, 1, v35);
  v97 = v27;
  v93 = v29;
  v37 = v29 + 2 * v27;
  v38 = *(*v2 + 184);
  swift_beginAccess();
  sub_20B52F9E8(&v2[v38], v23, &qword_27C7627B8, &unk_20C170A90);
  v39 = (v92)(v23, 1, v18);
  v92 = v2;
  if (v39)
  {
    sub_20B520158(v23, &qword_27C7627B8, &unk_20C170A90);
    v40 = 1;
  }

  else
  {
    v41 = v89;
    v42 = v80;
    (*(v89 + 16))(v80, v23, v18);
    sub_20B520158(v23, &qword_27C7627B8, &unk_20C170A90);
    (*(v41 + 32))(v37, v42, v18);
    swift_storeEnumTagMultiPayload();
    v40 = 0;
  }

  v43 = v35;
  v90(v37, v40, 1, v35);
  v44 = (v96 + 48);
  v45 = MEMORY[0x277D84F90];
  v46 = 3;
  v47 = v93;
  do
  {
    v48 = v98;
    sub_20B52F9E8(v47, v98, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B5DF134(v48, v15, &unk_27C7629B0, &unk_20C1510C0);
    v49 = *v44;
    if ((*v44)(v15, 1, v43) == 1)
    {
      sub_20B520158(v15, &unk_27C7629B0, &unk_20C1510C0);
    }

    else
    {
      sub_20B7479A0(v15, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_20BC05D14(0, v45[2] + 1, 1, v45);
      }

      v51 = v45[2];
      v50 = v45[3];
      if (v51 >= v50 >> 1)
      {
        v45 = sub_20BC05D14((v50 > 1), v51 + 1, 1, v45);
      }

      v45[2] = v51 + 1;
      sub_20B7479A0(v99, v45 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v51);
      v43 = v95;
    }

    v47 += v97;
    --v46;
  }

  while (v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v92;
  if ((v52[*(*v52 + 200)] & 0x20) != 0)
  {

    v74 = &v52[*(*v52 + 232)];
LABEL_35:
    v78 = sub_20C135524();
    (*(*(v78 - 8) + 16))(v86, v74, v78);
    return;
  }

  v53 = qword_27C79BF30;
  swift_beginAccess();
  v54 = v83;
  v55 = &v52[v53];
  v56 = v82;
  v57 = v84;
  (*(v83 + 16))(v82, v55, v84);
  v58 = sub_20C133E04();
  (*(v54 + 8))(v56, v57);
  v59 = v58 + 56;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v58 + 56);
  v63 = (v60 + 63) >> 6;

  v64 = 0;
  v99 = v58;
  if (v62)
  {
LABEL_20:
    v65 = v64;
LABEL_24:
    v66 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v67 = *(v58 + 48);
    v68 = *(v96 + 72);
    v69 = v85;
    sub_20B747A04(v67 + v68 * (v66 | (v65 << 6)), v85);
    sub_20B7479A0(v69, v94);
    v70 = v45[2] + 1;
    v71 = v45;
    while (--v70)
    {
      v72 = (v71 + v68);
      v73 = MEMORY[0x20F2ED3D0](v71 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), v94);
      v71 = v72;
      if (v73)
      {
        sub_20B747A68(v94, MEMORY[0x277D52060]);
        v64 = v65;
        v58 = v99;
        if (!v62)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v75 = v81;
    sub_20B7479A0(v94, v81);
    v76 = 0;
LABEL_32:
    v77 = v95;
    v90(v75, v76, 1, v95);

    LODWORD(v77) = v49(v75, 1, v77);
    sub_20B520158(v75, &unk_27C7629B0, &unk_20C1510C0);
    if (v77 == 1)
    {
      v74 = &v92[*(*v92 + 240)];
    }

    else
    {
      v74 = &v92[qword_27C79BF38];
      swift_beginAccess();
    }

    goto LABEL_35;
  }

LABEL_21:
  while (1)
  {
    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v65 >= v63)
    {

      v76 = 1;
      v75 = v81;
      goto LABEL_32;
    }

    v62 = *(v59 + 8 * v65);
    ++v64;
    if (v62)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_20B740984(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v118 = a5;
  v117 = a4;
  v120 = a3;
  v10 = v6;
  v119 = a6;
  v114 = sub_20C133E24();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C135C84();
  v130 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v128 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v109 - v15;
  MEMORY[0x28223BE20](v16);
  v132 = &v109 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  v18 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v109 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v131 = &v109 - v25;
  v26 = (a1)(0, v24);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v116 = &v109 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v29 - 8);
  v122 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v109 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8, &qword_20C1566D0);
  v34 = *(v18 + 72);
  v35 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v123 = swift_allocObject();
  v36 = v123 + v35;
  sub_20C134E84();
  v133 = v34;
  v127 = v36;
  v37 = (v36 + v34);
  v38 = v27;
  v39 = *(*v10 + 176);
  swift_beginAccess();
  v126 = v10;
  v40 = v10 + v39;
  v41 = v120;
  sub_20B52F9E8(v40, v33, a2, v120);
  v42 = *(v27 + 48);
  v43 = v26;
  v121 = v42;
  v44 = v42(v33, 1, v26);
  v129 = a2;
  v110 = v38;
  if (v44)
  {
    v45 = a2;
    v46 = v41;
    sub_20B520158(v33, v45, v41);
    v47 = v130;
    v48 = *(v130 + 56);
    v49 = v37;
    v50 = 1;
  }

  else
  {
    v51 = v116;
    (*(v38 + 16))(v116, v33, v43);
    v52 = a2;
    v46 = v41;
    v53 = sub_20B520158(v33, v52, v41);
    v54 = v117(v53);
    v55 = v38;
    v57 = v56;
    (*(v55 + 8))(v51, v43);
    *v37 = v54;
    v37[1] = v57;
    swift_storeEnumTagMultiPayload();
    v47 = v130;
    v48 = *(v130 + 56);
    v49 = v37;
    v50 = 0;
  }

  v125 = v48;
  v48(v49, v50, 1, v12);
  v58 = v43;
  v59 = v126;
  v60 = (v127 + 2 * v133);
  v61 = *(*v126 + 184);
  swift_beginAccess();
  v62 = v59 + v61;
  v63 = v122;
  v64 = v129;
  v65 = v46;
  sub_20B52F9E8(v62, v122, v129, v46);
  if (v121(v63, 1, v58))
  {
    sub_20B520158(v63, v64, v46);
    v66 = v60;
    v67 = 1;
  }

  else
  {
    v68 = v110;
    v69 = v116;
    (*(v110 + 16))(v116, v63, v58);
    v70 = sub_20B520158(v63, v64, v65);
    v71 = v117(v70);
    v73 = v72;
    (*(v68 + 8))(v69, v58);
    *v60 = v71;
    v60[1] = v73;
    swift_storeEnumTagMultiPayload();
    v66 = v60;
    v67 = 0;
  }

  v125(v66, v67, 1, v12);
  v74 = (v47 + 48);
  v75 = MEMORY[0x277D84F90];
  v76 = 3;
  v77 = v127;
  v129 = v12;
  do
  {
    v78 = v131;
    sub_20B52F9E8(v77, v131, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B5DF134(v78, v22, &unk_27C7629B0, &unk_20C1510C0);
    v79 = *v74;
    if ((*v74)(v22, 1, v12) == 1)
    {
      sub_20B520158(v22, &unk_27C7629B0, &unk_20C1510C0);
    }

    else
    {
      sub_20B7479A0(v22, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_20BC05D14(0, v75[2] + 1, 1, v75);
      }

      v81 = v75[2];
      v80 = v75[3];
      if (v81 >= v80 >> 1)
      {
        v75 = sub_20BC05D14((v80 > 1), v81 + 1, 1, v75);
      }

      v75[2] = v81 + 1;
      sub_20B7479A0(v132, v75 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v81);
      v12 = v129;
    }

    v77 += v133;
    --v76;
  }

  while (v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v82 = v126;
  if ((*(v82 + *(*v82 + 200)) & 0x20) != 0)
  {

    v104 = v82 + *(*v82 + 232);
LABEL_35:
    v108 = sub_20C135524();
    (*(*(v108 - 8) + 16))(v119, v104, v108);
    return;
  }

  v83 = qword_27C79BF30;
  swift_beginAccess();
  v84 = v113;
  v85 = v82 + v83;
  v86 = v112;
  v87 = v114;
  (*(v113 + 16))(v112, v85, v114);
  v88 = sub_20C133E04();
  (*(v84 + 8))(v86, v87);
  v89 = v88 + 56;
  v90 = 1 << *(v88 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v88 + 56);
  v93 = (v90 + 63) >> 6;
  v133 = v88;

  v94 = 0;
  v95 = v130;
  if (v92)
  {
LABEL_20:
    v96 = v94;
LABEL_24:
    v97 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v98 = *(v95 + 72);
    v99 = v115;
    sub_20B747A04(*(v133 + 48) + v98 * (v97 | (v96 << 6)), v115);
    sub_20B7479A0(v99, v128);
    v100 = v75[2] + 1;
    v101 = v75;
    while (--v100)
    {
      v102 = (v101 + v98);
      v103 = MEMORY[0x20F2ED3D0](v101 + ((*(v130 + 80) + 32) & ~*(v130 + 80)), v128);
      v101 = v102;
      if (v103)
      {
        sub_20B747A68(v128, MEMORY[0x277D52060]);
        v94 = v96;
        v95 = v130;
        if (!v92)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v105 = v111;
    sub_20B7479A0(v128, v111);
    v106 = 0;
LABEL_32:
    v107 = v129;
    v125(v105, v106, 1, v129);

    LODWORD(v107) = v79(v105, 1, v107);
    sub_20B520158(v105, &unk_27C7629B0, &unk_20C1510C0);
    if (v107 == 1)
    {
      v104 = v126 + *(*v126 + 240);
    }

    else
    {
      v104 = v126 + qword_27C79BF38;
      swift_beginAccess();
    }

    goto LABEL_35;
  }

LABEL_21:
  while (1)
  {
    v96 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      break;
    }

    if (v96 >= v93)
    {

      v106 = 1;
      v105 = v111;
      goto LABEL_32;
    }

    v92 = *(v89 + 8 * v96);
    ++v94;
    if (v92)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_20B7414BC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v43 = a1;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78, &qword_20C156788);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_20C134E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - v10;
  v11 = sub_20C135C84();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v40 = v7;
  v38 = (v7 + 32);

  v21 = 0;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v42 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v44, v43, MEMORY[0x277D51130], MEMORY[0x277D51110], sub_20B752D20, sub_20B6B6F84, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C764A78, &qword_20C156788);
    }

    else
    {
      v35 = *v38;
      v35(v36, v5, v6);
      v35(v37, v36, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_20BC05E48(0, *(v41 + 2) + 1, 1, v41);
      }

      v24 = *(v41 + 2);
      v23 = *(v41 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v33 = *(v41 + 2);
        v34 = v24 + 1;
        v28 = sub_20BC05E48((v23 > 1), v24 + 1, 1, v41);
        v24 = v33;
        v25 = v34;
        v41 = v28;
      }

      v26 = v40;
      v27 = v41;
      *(v41 + 2) = v25;
      v35(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v37, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v41 + 2))
  {
    v29 = v39;
    v30 = v40;
    (*(v40 + 16))(v39, &v41[(*(v40 + 80) + 32) & ~*(v40 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v39;
    v30 = v40;
  }

  (*(v30 + 56))(v29, v31, 1, v6);
}

void sub_20B741980(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v43 = a1;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_20C1341A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - v10;
  v11 = sub_20C135C84();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v40 = v7;
  v38 = (v7 + 32);

  v21 = 0;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v42 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B743F5C(v13, v44, v43, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C7627B8, &unk_20C170A90);
    }

    else
    {
      v35 = *v38;
      v35(v36, v5, v6);
      v35(v37, v36, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_20BC05E70(0, *(v41 + 2) + 1, 1, v41);
      }

      v24 = *(v41 + 2);
      v23 = *(v41 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v33 = *(v41 + 2);
        v34 = v24 + 1;
        v28 = sub_20BC05E70((v23 > 1), v24 + 1, 1, v41);
        v24 = v33;
        v25 = v34;
        v41 = v28;
      }

      v26 = v40;
      v27 = v41;
      *(v41 + 2) = v25;
      v35(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v37, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v41 + 2))
  {
    v29 = v39;
    v30 = v40;
    (*(v40 + 16))(v39, &v41[(*(v40 + 80) + 32) & ~*(v40 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v39;
    v30 = v40;
  }

  (*(v30 + 56))(v29, v31, 1, v6);
}

void sub_20B741E00(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v43 = a1;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - v10;
  v11 = sub_20C135C84();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v40 = v7;
  v38 = (v7 + 32);

  v21 = 0;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v42 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v44, v43, MEMORY[0x277D52AF8], MEMORY[0x277D52AD8], sub_20B74F4CC, sub_20B6B6FDC, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C771090, &qword_20C15A040);
    }

    else
    {
      v35 = *v38;
      v35(v36, v5, v6);
      v35(v37, v36, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_20BC05E98(0, *(v41 + 2) + 1, 1, v41);
      }

      v24 = *(v41 + 2);
      v23 = *(v41 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v33 = *(v41 + 2);
        v34 = v24 + 1;
        v28 = sub_20BC05E98((v23 > 1), v24 + 1, 1, v41);
        v24 = v33;
        v25 = v34;
        v41 = v28;
      }

      v26 = v40;
      v27 = v41;
      *(v41 + 2) = v25;
      v35(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v37, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v41 + 2))
  {
    v29 = v39;
    v30 = v40;
    (*(v40 + 16))(v39, &v41[(*(v40 + 80) + 32) & ~*(v40 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v39;
    v30 = v40;
  }

  (*(v30 + 56))(v29, v31, 1, v6);
}