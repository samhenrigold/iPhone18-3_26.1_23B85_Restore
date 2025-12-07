uint64_t sub_2386104D0()
{
  v1[2] = v0;
  v2 = sub_23875C1E0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_238758680();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11638, &qword_238778B78);
  v1[10] = swift_task_alloc();
  v4 = sub_2387591E0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = sub_238759400();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  sub_23875ED50();
  v1[17] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v1[18] = v7;
  v1[19] = v6;

  return MEMORY[0x2822009F8](sub_23861071C, v7, v6);
}

uint64_t sub_23861071C()
{
  v1 = v0[10];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11640, &unk_238778B80);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2387591D0();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_238610840;
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x282116D98](v4, v5);
}

uint64_t sub_238610840()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_238610D60;
  }

  else
  {
    v8 = sub_2386109D8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

void sub_2386109D8()
{
  v30 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_2387593F0();
  (*(v1 + 8))(v2, v3);
  v5 = *(v4 + 16);
  v26 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = v0[7];
    v27 = (v7 + 32);
    v8 = MEMORY[0x277D84F90];
    v25 = v4;
    while (v6 < *(v4 + 16))
    {
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = *(v7 + 72);
      (*(v7 + 16))(v0[9], v4 + v9 + v10 * v6, v0[6]);
      if (sub_238758610())
      {
        v11 = *v27;
        (*v27)(v0[8], v0[9], v0[6]);
        v29 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2385FE488(0, *(v8 + 16) + 1, 1);
          v8 = v29;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_2385FE488((v12 > 1), v13 + 1, 1);
          v8 = v29;
        }

        v14 = v0[8];
        v15 = v0[6];
        *(v8 + 16) = v13 + 1;
        v11(v8 + v9 + v13 * v10, v14, v15);
        v4 = v25;
        v5 = v26;
      }

      else
      {
        (*(v7 + 8))(v0[9], v0[6]);
      }

      if (v5 == ++v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_13:
    v16 = v0[21];
    v29 = v8;

    sub_23861C6FC(&v29);
    if (v16)
    {
    }

    else
    {

      v28 = v29;
      v17 = *(v29 + 16);
      sub_23875C140();
      v18 = sub_23875C1B0();
      v19 = sub_23875F000();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218241;
        *(v20 + 4) = v17;
        *(v20 + 12) = 2049;
        *(v20 + 14) = v26;
        _os_log_impl(&dword_2383F8000, v18, v19, "Got %ld accounts (%{private}ld)", v20, 0x16u);
        MEMORY[0x23EE64DF0](v20, -1, -1);
      }

      v21 = v0[4];
      v22 = v0[5];
      v23 = v0[3];

      (*(v21 + 8))(v22, v23);
      sub_23860EBAC(v28);
      sub_238610E14();

      v24 = v0[1];

      v24();
    }
  }
}

uint64_t sub_238610D60()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_238610E14()
{
  v1 = v0;
  v84 = sub_238757FD0();
  v2 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  MEMORY[0x28223BE20](v85);
  v6 = v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v67 - v10;
  MEMORY[0x28223BE20](v12);
  v74 = v67 - v13;
  v14 = sub_238758680();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v87 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = v67 - v18;
  MEMORY[0x28223BE20](v19);
  v90 = v67 - v20;
  MEMORY[0x28223BE20](v21);
  v88 = v67 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v96 = v67 - v25;
  swift_getKeyPath(asc_238778A90, v24);
  v26 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v98 = v1;
  v27 = sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  v67[2] = v26;
  v67[1] = v27;
  sub_23875BE90();

  v68 = v1;
  v28 = *(*(v1 + 32) + 16);

  v83 = v28;
  if (v28)
  {
    v30 = 0;
    v80 = v15 + 16;
    v79 = (v2 + 104);
    v78 = *MEMORY[0x277CC6D50];
    v77 = (v2 + 56);
    v76 = (v2 + 48);
    v70 = (v2 + 32);
    v72 = (v2 + 8);
    v89 = (v15 + 32);
    v71 = (v15 + 8);
    v31 = MEMORY[0x277D84F90];
    v69 = v4;
    v32 = v74;
    v81 = v29;
    v82 = v15;
    v91 = v11;
    v75 = v14;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      v95 = v31;
      v93 = ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v92 = *(v15 + 72);
      (*(v15 + 16))(v96, &v93[v29 + v92 * v30], v14);
      sub_23875ED50();
      v94 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_2387585D0();
      v33 = v32;
      v34 = v91;
      v35 = v84;
      (*v79)(v91, v78, v84);
      (*v77)(v34, 0, 1, v35);
      v36 = *(v85 + 48);
      sub_23843981C(v33, v6, &qword_27DF11628, &qword_238778B70);
      sub_23843981C(v34, &v6[v36], &qword_27DF11628, &qword_238778B70);
      v37 = *v76;
      if ((*v76)(v6, 1, v35) == 1)
      {
        sub_238439884(v34, &qword_27DF11628, &qword_238778B70);
        sub_238439884(v33, &qword_27DF11628, &qword_238778B70);
        v38 = v37(&v6[v36], 1, v35);
        v32 = v33;
        v14 = v75;
        if (v38 != 1)
        {
          goto LABEL_14;
        }

        sub_238439884(v6, &qword_27DF11628, &qword_238778B70);
      }

      else
      {
        v39 = v73;
        sub_23843981C(v6, v73, &qword_27DF11628, &qword_238778B70);
        if (v37(&v6[v36], 1, v35) == 1)
        {
          sub_238439884(v91, &qword_27DF11628, &qword_238778B70);
          v32 = v74;
          sub_238439884(v74, &qword_27DF11628, &qword_238778B70);
          (*v72)(v39, v35);
          v14 = v75;
LABEL_14:
          sub_238439884(v6, &qword_27DF11620, &qword_238778B68);

LABEL_15:
          v40 = *v89;
          (*v89)(v90, v96, v14);
          v31 = v95;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2385FE488(0, *(v31 + 16) + 1, 1);
            v31 = v98;
          }

          v43 = v92;
          v42 = v93;
          v45 = *(v31 + 16);
          v44 = *(v31 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2385FE488((v44 > 1), v45 + 1, 1);
            v31 = v98;
          }

          *(v31 + 16) = v45 + 1;
          v40(&v42[v31 + v45 * v43], v90, v14);
          goto LABEL_5;
        }

        v46 = v69;
        (*v70)(v69, &v6[v36], v35);
        sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
        v47 = sub_23875E9E0();
        v48 = *v72;
        (*v72)(v46, v35);
        sub_238439884(v91, &qword_27DF11628, &qword_238778B70);
        v32 = v74;
        sub_238439884(v74, &qword_27DF11628, &qword_238778B70);
        v48(v39, v35);
        sub_238439884(v6, &qword_27DF11628, &qword_238778B70);

        v14 = v75;
        if ((v47 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      (*v71)(v96, v14);
      v31 = v95;
LABEL_5:
      v29 = v81;
      v15 = v82;
      if (v83 == ++v30)
      {
        goto LABEL_23;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_23:

  v98 = MEMORY[0x277D84FA0];
  v49 = *(v31 + 16);
  if (v49)
  {
    v50 = sub_23875ED50();
    v95 = v31;
    v96 = v50;
    v53 = *(v15 + 16);
    v52 = v15 + 16;
    v51 = v53;
    v54 = v31 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v55 = *(v52 + 56);
    v93 = (v52 - 8);
    v94 = v55;
    v56 = v88;
    do
    {
      v62 = v14;
      v51(v56, v54, v14);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v57 = v87;
      v56 = v88;
      v51(v87, v88, v14);
      v58 = v51;
      v59 = v86;
      sub_238709400(v86, v57);
      v60 = *v93;
      v61 = v59;
      v51 = v58;
      v14 = v62;
      (*v93)(v61, v62);
      v60(v56, v62);

      v54 += v94;
      --v49;
    }

    while (v49);
  }

  v63 = v68;
  v64 = sub_23860EEA4(v98);
  swift_getKeyPath(byte_238778B18, v64);
  v98 = v63;
  sub_23875BE90();

  swift_beginAccess();
  v65 = *(*(v63 + 40) + 16);
  if (*(v63 + 48) != v65)
  {
    KeyPath = swift_getKeyPath(byte_238778B40);
    MEMORY[0x28223BE20](KeyPath);
    v67[-2] = v63;
    v67[-1] = v65;
    v97 = v63;
    sub_23875BE80();
  }
}

unint64_t sub_238611904()
{
  v1 = v0;
  v2 = sub_238758A00();
  v146 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v125 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v124 = v116 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v116 - v7;
  MEMORY[0x28223BE20](v9);
  v130 = v116 - v10;
  MEMORY[0x28223BE20](v11);
  v129 = v116 - v12;
  MEMORY[0x28223BE20](v13);
  v147 = v116 - v14;
  v126 = sub_238757FD0();
  v15 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v118 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  MEMORY[0x28223BE20](v142);
  v141 = v116 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v131 = v116 - v22;
  MEMORY[0x28223BE20](v23);
  v148 = v116 - v24;
  v156 = sub_238758680();
  v25 = *(v156 - 1);
  MEMORY[0x28223BE20](v156);
  v150 = v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v157 = (v116 - v28);
  v29 = MEMORY[0x277D84F90];
  v151 = sub_23854BC50(MEMORY[0x277D84F90]);
  v145 = sub_23854BC50(v29);
  swift_getKeyPath(asc_238778A90);
  v30 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v159 = v1;
  v31 = sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  v121 = v30;
  v120 = v31;
  sub_23875BE90();

  v32 = *(v1 + 32);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277CC7160];
  v143 = v8;
  v140 = v33;
  if (!v33)
  {
LABEL_36:
    v85 = sub_23854B138(MEMORY[0x277D84F90]);
    v86 = sub_2387589E0();
    v87 = *(v86 + 16);
    if (v87)
    {
      v88 = *(v146 + 16);
      v89 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v133 = v86;
      v90 = v86 + v89;
      v156 = (v146 + 104);
      v91 = (v146 + 8);
      v152 = (v146 + 88);
      v155 = *(v146 + 72);
      LODWORD(v154) = *MEMORY[0x277CC7160];
      LODWORD(v150) = *MEMORY[0x277CC7158];
      LODWORD(v148) = *MEMORY[0x277CC7170];
      LODWORD(v142) = *MEMORY[0x277CC7178];
      LODWORD(v138) = *MEMORY[0x277CC7168];
      v132 = "FINANCIAL_DATA_SELECT_ALL";
      v131 = "connectedCardAvailable";
      v135 = "appleSavingsAvailable";
      v137 = "appleCashAvailable";
      v141 = "appleCardSelected";
      v144 = *MEMORY[0x277D38528];
      v130 = "nknown_available";
      v149 = *MEMORY[0x277D38520];
      v129 = "connectedCardSelected";
      v134 = "appleSavingsSelected";
      v136 = "appleCashSelected";
      v140 = "account_origin_unknown_selected";
      v146 += 16;
      v153 = v88;
      v157 = (v146 - 8);
      v88(v8, v86 + v89, v2);
      while (1)
      {
        v98 = v147;
        (*v156)(v147, v154, v2);
        sub_23861C5F4(&qword_27DF0DE00, MEMORY[0x277CC7180], MEMORY[0x277CC7190]);
        v99 = sub_23875E9E0();
        v100 = *v91;
        v100(v98, v2);
        if ((v99 & 1) == 0)
        {
          v101 = v124;
          v88(v124, v8, v2);
          v102 = *v152;
          v103 = (*v152)(v101, v2);
          if (v103 == v150 || v103 == v148 || v103 == v142 || v103 == v138)
          {
            v104 = sub_23875EA50();
          }

          else
          {
            v104 = sub_23875EA50();
            v100(v124, v2);
          }

          if (v151[2])
          {
            sub_238547B0C(v8);
          }

          v105 = sub_23875EA80();
          v107 = v106;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v158 = v85;
          v109 = v105;
          v110 = v143;
          sub_2386CCCEC(v109, v107, v104, isUniquelyReferenced_nonNull_native);

          v111 = v158;
          v112 = v125;
          v153(v125, v110, v2);
          v113 = v102(v112, v2);
          if (v113 == v150 || v113 == v148 || v113 == v142 || v113 == v138)
          {
            v114 = sub_23875EA50();
          }

          else
          {
            v114 = sub_23875EA50();
            v100(v125, v2);
          }

          if (*(v145 + 16))
          {
            sub_238547B0C(v110);
          }

          v92 = sub_23875EA80();
          v94 = v93;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v111;
          v96 = v92;
          v8 = v143;
          sub_2386CCCEC(v96, v94, v114, v95);

          v85 = v158;
          v88 = v153;
        }

        v97 = v157;
        v100(v8, v2);
        v91 = v97;
        v90 += v155;
        if (!--v87)
        {
          break;
        }

        v88(v8, v90, v2);
      }
    }

    return v85;
  }

  v123 = v20;
  v138 = v32 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v144 = v32;

  v119 = v1;
  swift_beginAccess();
  v35 = v144;
  v36 = 0;
  v155 = v25 + 16;
  v137 = (v15 + 104);
  LODWORD(v136) = *MEMORY[0x277CC6D50];
  v135 = (v15 + 56);
  v37 = (v15 + 48);
  v117 = (v15 + 32);
  v122 = (v15 + 8);
  v128 = *v34;
  v127 = (v146 + 104);
  v132 = (v146 + 8);
  v116[1] = v146 + 16;
  v154 = (v25 + 8);
  v38 = v126;
  v39 = v131;
  v40 = v148;
  v133 = v37;
  v139 = v2;
  v134 = v25;
  while (v36 < *(v35 + 16))
  {
    v153 = *(v25 + 9);
    v149 = v36;
    v152 = *(v25 + 2);
    (v152)(v157, v138 + v153 * v36, v156);
    sub_2387585D0();
    (*v137)(v39, v136, v38);
    (*v135)(v39, 0, 1, v38);
    v41 = v141;
    v42 = *(v142 + 48);
    sub_23843981C(v40, v141, &qword_27DF11628, &qword_238778B70);
    sub_23843981C(v39, &v41[v42], &qword_27DF11628, &qword_238778B70);
    v43 = v40;
    v44 = *v37;
    if ((*v37)(v41, 1, v38) == 1)
    {
      sub_238439884(v39, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v43, &qword_27DF11628, &qword_238778B70);
      v45 = v44(&v41[v42], 1, v38);
      v46 = v157;
      if (v45 == 1)
      {
        sub_238439884(v41, &qword_27DF11628, &qword_238778B70);
        v2 = v139;
LABEL_4:
        (*v154)(v46, v156);
        v40 = v148;
        goto LABEL_5;
      }

      goto LABEL_12;
    }

    v47 = v123;
    sub_23843981C(v41, v123, &qword_27DF11628, &qword_238778B70);
    if (v44(&v41[v42], 1, v38) == 1)
    {
      v39 = v131;
      sub_238439884(v131, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v148, &qword_27DF11628, &qword_238778B70);
      (*v122)(v47, v38);
      v46 = v157;
LABEL_12:
      sub_238439884(v41, &qword_27DF11620, &qword_238778B68);
      v2 = v139;
      goto LABEL_13;
    }

    v63 = v118;
    (*v117)(v118, &v41[v42], v38);
    sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
    v64 = sub_23875E9E0();
    v65 = *v122;
    (*v122)(v63, v38);
    v39 = v131;
    sub_238439884(v131, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v148, &qword_27DF11628, &qword_238778B70);
    v65(v47, v38);
    sub_238439884(v41, &qword_27DF11628, &qword_238778B70);
    v2 = v139;
    v46 = v157;
    if (v64)
    {
      goto LABEL_4;
    }

LABEL_13:
    v48 = v147;
    sub_238758580();
    v49 = v129;
    (*v127)(v129, v128, v2);
    sub_23861C5F4(&qword_27DF0DE00, MEMORY[0x277CC7180], MEMORY[0x277CC7190]);
    v50 = sub_23875E9E0();
    v51 = *v132;
    (*v132)(v49, v2);
    v51(v48, v2);
    if (v50)
    {
      goto LABEL_4;
    }

    v52 = v130;
    sub_238758580();
    v53 = v151;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v53;
    v55 = sub_238547B0C(v52);
    v57 = v53[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_61;
    }

    v61 = v56;
    if (v53[3] >= v60)
    {
      if ((v54 & 1) == 0)
      {
        v84 = v55;
        sub_23854A8C0();
        v55 = v84;
      }
    }

    else
    {
      sub_238549140(v60, v54);
      v55 = sub_238547B0C(v130);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_63;
      }
    }

    v38 = v126;
    v40 = v148;
    v151 = v158;
    if (v61)
    {
      *(v158[7] + v55) = 1;
      v51(v130, v2);
    }

    else
    {
      v158[(v55 >> 6) + 8] |= 1 << v55;
      v66 = v55;
      v67 = v130;
      (*(v146 + 16))(v151[6] + *(v146 + 72) * v55, v130, v2);
      *(v151[7] + v66) = 1;
      v51(v67, v2);
      v68 = v151[2];
      v59 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v59)
      {
        goto LABEL_62;
      }

      v151[2] = v69;
    }

    swift_getKeyPath(byte_238778B18);
    v70 = v119;
    v158 = v119;
    sub_23875BE90();

    v71 = *(v70 + 40);
    if (*(v71 + 16))
    {
      sub_23861C5F4(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);

      v72 = sub_23875E950();
      v73 = -1 << *(v71 + 32);
      v74 = v72 & ~v73;
      if ((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
      {
        v75 = ~v73;
        while (1)
        {
          v76 = v150;
          v77 = v156;
          (v152)(v150, *(v71 + 48) + v74 * v153, v156);
          sub_23861C5F4(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
          v78 = sub_23875E9E0();
          v79 = *v154;
          (*v154)(v76, v77);
          if (v78)
          {
            break;
          }

          v74 = (v74 + 1) & v75;
          if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v80 = v147;
        v81 = v157;
        sub_238758580();
        v82 = v145;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v82;
        sub_2386CCE60(1, v80, v83);
        v51(v80, v2);
        v79(v81, v156);
        v145 = v158;
      }

      else
      {
LABEL_31:

        (*v154)(v157, v156);
      }

      v38 = v126;
      v39 = v131;
      v40 = v148;
    }

    else
    {
      (*v154)(v46, v156);
      v39 = v131;
    }

LABEL_5:
    v36 = v149 + 1;
    v35 = v144;
    v37 = v133;
    v25 = v134;
    if ((v149 + 1) == v140)
    {

      v8 = v143;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_23875F680();
  __break(1u);
  return result;
}

uint64_t sub_238612C58()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_238612D24()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = sub_23854BE38(MEMORY[0x277D84F90]);
  sub_2387579D0();
  v0[3] = sub_2387579A0();
  v0[4] = v2;
  v3 = MEMORY[0x277D84FA0];
  v1[5] = MEMORY[0x277D84FA0];
  v1[6] = 0;
  v1[7] = sub_23875EA50();
  v1[8] = v3;
  sub_23875BEC0();
  return v1;
}

uint64_t SelectAccountsView.init(applicationRecord:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for AccountsModel(0);
  swift_allocObject();
  sub_238612D24();
  sub_23875E1A0();
  *a4 = v9;
  a4[1] = v10;
  type metadata accessor for SelectAccountsView(0);
  result = sub_23875D490();
  a4[3] = a3;
  a4[4] = a1;
  a4[2] = a2;
  return result;
}

uint64_t sub_238612E98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  swift_getKeyPath(asc_238778A90);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  v0 = *(v9 + 32);

  v1 = *(v0 + 16);

  if (v1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
  }

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_23875EA80();
  return v7;
}

uint64_t sub_2386130A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  swift_getKeyPath(asc_238778A90);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  v2 = *(v24 + 32);

  v3 = *(v2 + 16);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2387632F0;
    v5 = [*(v1 + 32) localizedName];
    v6 = sub_23875EA80();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_238448C58(v9, v10, v11);
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v12 = qword_2814F1B90;
    v13 = sub_23875EA50();
    v14 = sub_23875EA50();
    v15 = sub_23875EA50();
    v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

    sub_23875EA80();
    v17 = sub_23875EAA0();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v18 = qword_2814F1B90;
    v19 = sub_23875EA50();
    v20 = sub_23875EA50();
    v21 = sub_23875EA50();
    v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

    v17 = sub_23875EA80();
  }

  return v17;
}

id sub_2386133E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for SelectAccountsResult(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = sub_238759510();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v10(v9);
  sub_23861F3B4(v9, type metadata accessor for SelectAccountsResult);
  sub_2387579D0();
  sub_2387579A0();
  if ((sub_2387577C0() & 1) == 0)
  {
    sub_2387577D0();
  }

  sub_23875B910();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    sub_23843981C(v6, v3, &qword_27DF0D040, &qword_2387676A0);
    v14 = sub_23875B940();
    v15 = *(v14 - 8);
    v16 = 0;
    if ((*(v15 + 48))(v3, 1, v14) != 1)
    {
      v16 = sub_23875B860();
      (*(v15 + 8))(v3, v14);
    }

    sub_23853BB18(MEMORY[0x277D84F90]);
    v17 = sub_23875E910();

    [v13 openSensitiveURL:v16 withOptions:v17];

    return sub_238439884(v6, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2386136F0(uint64_t a1)
{
  v3 = [*(v1 + 32) bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23875EA80();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v10 = sub_238611904();
  v8 = sub_23875EA50();
  sub_2386C41A8(v5, v7, v8);
  sub_23844C218(*(a1 + 56), 21, v10);

  return result;
}

uint64_t SelectAccountsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E60, &qword_238761CE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840, MEMORY[0x277CE1198]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

double sub_23861397C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_23875ED50();
  v50 = sub_23875ED40();
  v42 = v3;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v37 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E60, &qword_238761CE8);
  v46 = &v37;
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11528, &qword_238778840);
  v41 = &v37;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  *v10 = sub_23875D020();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11648, &qword_238778B90);
  sub_238614160(a1, &v10[*(v11 + 44)]);
  v40 = a1;
  MEMORY[0x28223BE20](v12);
  *(&v37 - 2) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840, MEMORY[0x277CE1198]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v15 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  v53 = v14;
  v54 = v15;
  swift_getOpaqueTypeConformance2();
  v43 = v7;
  sub_23875DEF0();
  sub_238439884(v10, &qword_27DF11528, &qword_238778840);
  v41 = sub_23875ED80();
  v16 = *(v41 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v37 - v39;
  sub_23875ED60();
  v19 = type metadata accessor for SelectAccountsView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  sub_23861E93C(v40, &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAccountsView);
  v22 = sub_23875ED40();
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = MEMORY[0x277D85700];
  sub_23861E9A4(&v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for SelectAccountsView);
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v40 = sub_23875C830();
    v42 = &v37;
    v38 = *(v40 - 8);
    MEMORY[0x28223BE20](v40);
    v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_23875F470();

    v53 = 0xD000000000000032;
    v54 = 0x800000023878DC90;
    v52 = 344;
    v27 = sub_23875F600();
    MEMORY[0x23EE63650](v27);

    v37 = &v37;
    v29 = MEMORY[0x28223BE20](v28);
    v30 = v41;
    (*(v16 + 16))(&v37 - v39, v18, v41, v29);
    sub_23875C820();
    (*(v16 + 8))(v18, v30);
    v31 = v47;
    (*(v44 + 32))(v47, v43, v45);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E68, &unk_238761CF0);
    (*(v38 + 32))(&v31[*(v32 + 36)], v26, v40);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E70, &qword_238778BB0);
    v31 = v47;
    v34 = &v47[*(v33 + 36)];
    v35 = sub_23875C6E0();
    (*(v16 + 32))(&v34[*(v35 + 20)], v18, v41);
    *v34 = &unk_238778BA0;
    *(v34 + 1) = v24;
    (*(v44 + 32))(v31, v43, v45);
  }

  (*(v48 + 32))(v51, v31, v49);

  return result;
}

void sub_238614160(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11658, &qword_238778BC8);
  MEMORY[0x28223BE20](v43);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11660, &qword_238778BD0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v39 - 2) = a1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11668, &qword_238778BD8);
  sub_23843A3E8(&qword_27DF11670, &qword_27DF11668, &qword_238778BD8, MEMORY[0x277CE1198]);
  v40 = v12;
  v14 = sub_23875C410();
  MEMORY[0x28223BE20](v14);
  *(&v39 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11678, &unk_238778BE0);
  sub_23861EB2C();
  sub_23875D1D0();
  v15 = sub_23875D770();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116A8, &qword_238778C08) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_23875D7A0();
  sub_23875C3D0();
  v26 = v42;
  v27 = &v6[*(v43 + 36)];
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v40;
  v33 = v41;
  v34 = *(v41 + 16);
  v34(v9, v40, v26);
  v35 = v46;
  sub_23843981C(v6, v46, &qword_27DF11658, &qword_238778BC8);
  v36 = v45;
  v34(v45, v9, v26);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116B0, &qword_238778C10);
  sub_23843981C(v35, &v36[*(v37 + 48)], &qword_27DF11658, &qword_238778BC8);
  sub_238439884(v6, &qword_27DF11658, &qword_238778BC8);
  v38 = *(v33 + 8);
  v38(v32, v26);
  sub_238439884(v35, &qword_27DF11658, &qword_238778BC8);
  v38(v9, v26);
}

double sub_2386145D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116C8, &qword_238778C50);
  sub_2386146A8(a1, a2 + *(v4 + 44));

  return result;
}

void sub_2386146A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116D0, &qword_238778C58);
  v167 = *(v3 - 8);
  v168 = v3;
  MEMORY[0x28223BE20](v3);
  v152 = &v136 - v4;
  v5 = type metadata accessor for AccountListView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v146 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116D8, &qword_238778C60);
  MEMORY[0x28223BE20](v145);
  v149 = &v136 - v7;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116E0, &qword_238778C68);
  MEMORY[0x28223BE20](v148);
  v151 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = &v136 - v10;
  MEMORY[0x28223BE20](v11);
  v150 = &v136 - v12;
  v13 = type metadata accessor for SubHeaderView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v137 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116E8, &qword_238778C70);
  MEMORY[0x28223BE20](v136);
  v140 = &v136 - v15;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116F0, &qword_238778C78);
  MEMORY[0x28223BE20](v138);
  v142 = &v136 - v16;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116F8, &qword_238778C80);
  MEMORY[0x28223BE20](v141);
  v144 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v136 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11700, &qword_238778C88);
  MEMORY[0x28223BE20](v22 - 8);
  v166 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v165 = &v136 - v25;
  v26 = sub_238758850();
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11708, &qword_238778C90);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v157 = &v136 - v29;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11710, &qword_238778C98);
  MEMORY[0x28223BE20](v156);
  v162 = &v136 - v30;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11718, &qword_238778CA0);
  MEMORY[0x28223BE20](v160);
  v164 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v158 = &v136 - v33;
  MEMORY[0x28223BE20](v34);
  v170 = &v136 - v35;
  sub_23875ED50();
  v163 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(a1 + 32);
  v37 = sub_238612E98();
  v39 = v38;
  v40 = sub_2386130A4();
  v155 = a1;
  v41 = v40;
  v43 = v42;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_2387587F0();
  v44 = sub_238758840();
  v46 = v45;
  (*(v153 + 8))(v28, v154);
  v47 = sub_23860E554(v44, v46);
  *&v179 = v36;
  *(&v179 + 1) = v47;
  *&v180 = v37;
  *(&v180 + 1) = v39;
  *&v181 = v41;
  *(&v181 + 1) = v43;
  v182 = vdupq_n_s64(0x4054000000000000uLL);
  type metadata accessor for SelectAccountsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  v48 = v155;
  v49 = sub_23875D480();
  sub_23861EF78(v49, v50, v51);
  v52 = v157;
  sub_23875DD70();

  v171[0] = v179;
  v171[1] = v180;
  v171[2] = v181;
  v171[3] = v182;
  sub_23861EFCC(v171);
  sub_23875E4A0();
  v53 = 1;
  sub_23875C9C0();
  v54 = v162;
  (*(v159 + 32))(v162, v52, v161);
  v55 = &v54[*(v156 + 36)];
  v56 = v171[8];
  v57 = v171[10];
  v58 = v171[11];
  *(v55 + 4) = v171[9];
  *(v55 + 5) = v57;
  *(v55 + 6) = v58;
  v59 = v171[6];
  *v55 = v171[5];
  *(v55 + 1) = v59;
  *(v55 + 2) = v171[7];
  *(v55 + 3) = v56;
  LOBYTE(v44) = sub_23875D7A0();
  sub_23875C3D0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v54;
  v69 = v158;
  sub_2384396E4(v68, v158, &qword_27DF11710, &qword_238778C98);
  v70 = v69 + *(v160 + 36);
  *v70 = v44;
  *(v70 + 8) = v61;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  sub_2384396E4(v69, v170, &qword_27DF11718, &qword_238778CA0);
  v72 = *v48;
  v71 = v48[1];
  *&v179 = *v48;
  *(&v179 + 1) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v73 = v172;
  swift_getKeyPath(asc_238778A90);
  *&v179 = v73;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  v74 = *(v73 + 32);

  v75 = *(v74 + 16);

  if (v75)
  {
    *&v179 = v72;
    *(&v179 + 1) = v71;
    sub_23875E1B0();
    type metadata accessor for AccountsModel(0);
    v76 = v137;
    sub_23875E420();
    sub_23875E4A0();
    sub_23875C9C0();
    v77 = v76;
    v78 = v140;
    sub_23861E9A4(v77, v140, type metadata accessor for SubHeaderView);
    v79 = (v78 + *(v136 + 36));
    v80 = v177;
    v79[4] = v176;
    v79[5] = v80;
    v79[6] = v178;
    v81 = v173;
    *v79 = v172;
    v79[1] = v81;
    v82 = v175;
    v79[2] = v174;
    v79[3] = v82;
    v83 = sub_23875D7A0();
    sub_23875C3D0();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v78;
    v93 = v142;
    sub_2384396E4(v92, v142, &qword_27DF116E8, &qword_238778C70);
    v94 = v93 + *(v138 + 36);
    *v94 = v83;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    v95 = sub_23875D770();
    sub_23875C3D0();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v93;
    v105 = v139;
    sub_2384396E4(v104, v139, &qword_27DF116F0, &qword_238778C78);
    v106 = v105 + *(v141 + 36);
    *v106 = v95;
    *(v106 + 8) = v97;
    *(v106 + 16) = v99;
    *(v106 + 24) = v101;
    *(v106 + 32) = v103;
    *(v106 + 40) = 0;
    v107 = v105;
    v108 = v143;
    sub_2384396E4(v107, v143, &qword_27DF116F8, &qword_238778C80);
    *&v179 = v72;
    *(&v179 + 1) = v71;
    sub_23875E1B0();
    v109 = v146;
    sub_23875E420();
    sub_23875E4A0();
    sub_23875C9C0();
    v110 = v149;
    sub_23861E9A4(v109, v149, type metadata accessor for AccountListView);
    v111 = (v110 + *(v145 + 36));
    v112 = v184;
    v111[4] = v183;
    v111[5] = v112;
    v111[6] = v185;
    v113 = v180;
    *v111 = v179;
    v111[1] = v113;
    v114 = v182;
    v111[2] = v181;
    v111[3] = v114;
    LOBYTE(v109) = sub_23875D770();
    sub_23875C3D0();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = v147;
    sub_2384396E4(v110, v147, &qword_27DF116D8, &qword_238778C60);
    v124 = v123 + *(v148 + 36);
    *v124 = v109;
    *(v124 + 8) = v116;
    *(v124 + 16) = v118;
    *(v124 + 24) = v120;
    *(v124 + 32) = v122;
    *(v124 + 40) = 0;
    v125 = v150;
    sub_2384396E4(v123, v150, &qword_27DF116E0, &qword_238778C68);
    v126 = v144;
    sub_23843981C(v108, v144, &qword_27DF116F8, &qword_238778C80);
    v127 = v151;
    sub_23843981C(v125, v151, &qword_27DF116E0, &qword_238778C68);
    v128 = v152;
    sub_23843981C(v126, v152, &qword_27DF116F8, &qword_238778C80);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11728, &qword_238778CA8);
    sub_23843981C(v127, v128 + *(v129 + 48), &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v125, &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v108, &qword_27DF116F8, &qword_238778C80);
    sub_238439884(v127, &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v126, &qword_27DF116F8, &qword_238778C80);
    v130 = v165;
    sub_2384396E4(v128, v165, &qword_27DF116D0, &qword_238778C58);
    v53 = 0;
  }

  else
  {
    v130 = v165;
  }

  (*(v167 + 56))(v130, v53, 1, v168);
  v131 = v170;
  v132 = v164;
  sub_23843981C(v170, v164, &qword_27DF11718, &qword_238778CA0);
  v133 = v166;
  sub_23843981C(v130, v166, &qword_27DF11700, &qword_238778C88);
  v134 = v169;
  sub_23843981C(v132, v169, &qword_27DF11718, &qword_238778CA0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11730, &qword_238778CB0);
  sub_23843981C(v133, v134 + *(v135 + 48), &qword_27DF11700, &qword_238778C88);
  sub_238439884(v130, &qword_27DF11700, &qword_238778C88);
  sub_238439884(v131, &qword_27DF11718, &qword_238778CA0);
  sub_238439884(v133, &qword_27DF11700, &qword_238778C88);
  sub_238439884(v132, &qword_27DF11718, &qword_238778CA0);
}

double sub_238615540@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11690, &qword_238778BF0);
  MEMORY[0x28223BE20](v38);
  v4 = &v33 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116B8, &qword_238778C18);
  MEMORY[0x28223BE20](v37);
  v6 = &v33 - v5;
  v7 = type metadata accessor for SelectAccountsView(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  MEMORY[0x28223BE20](v9);
  v11 = (&v33 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11678, &unk_238778BE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v16 = v40;
  swift_getKeyPath(asc_238778A90);
  v41 = v16;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  v17 = *(v16 + 32);

  v18 = *(v17 + 16);

  if (v18)
  {
    sub_238615B30(v4);
    sub_23843981C(v4, v6, &qword_27DF11690, &qword_238778BF0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900, &unk_23877E960);
    sub_23861EBE4();
    sub_23875D1B0();
    sub_238439884(v4, &qword_27DF11690, &qword_238778BF0);
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v19 = qword_2814F1B90;
    v20 = sub_23875EA50();
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

    v24 = sub_23875EA80();
    v26 = v25;

    sub_23875CFC0();
    v27 = a1;
    v28 = v35;
    sub_23861E93C(v27, v35, type metadata accessor for SelectAccountsView);
    v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v30 = swift_allocObject();
    sub_23861E9A4(v28, v30 + v29, type metadata accessor for SelectAccountsView);
    *v11 = v24;
    v11[1] = v26;
    *(v11 + *(v9 + 40)) = 0;
    v31 = (v11 + *(v9 + 44));
    *v31 = sub_23861EEC0;
    v31[1] = v30;
    sub_23843981C(v11, v6, &qword_27DF09580, &qword_238763900);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900, &unk_23877E960);
    sub_23861EBE4();
    sub_23875D1B0();
    sub_238439884(v11, &qword_27DF09580, &qword_238763900);
  }

  sub_2384396E4(v14, v39, &qword_27DF11678, &unk_238778BE0);

  return result;
}

uint64_t sub_238615B30@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_23875D620();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11698, &unk_238778BF8);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = v1[4];
  v11 = v1[1];
  v42 = *v1;
  v43 = v11;
  v12 = v42;
  v34 = v11;
  v35 = v42;
  v13 = v11;
  v33 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v14 = v49;
  v42 = v12;
  v43 = v13;
  sub_23875E1B0();
  v15 = *(v49 + 56);

  v17 = v1[2];
  v16 = v1[3];
  type metadata accessor for SharingStartDateModel(0);
  swift_allocObject();

  v49 = sub_2384CA5A4();
  sub_23875E1A0();
  v18 = v42;
  v19 = v43;
  v42 = v33;
  v43 = v14;
  v44 = v15;
  v45 = v17;
  v46 = v16;
  v47 = v18;
  v48 = v19;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
  v20 = sub_2384D3460();
  sub_23861EF24(v20, v21, v22);
  sub_23875C750();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF116A0, &qword_27DF11698, &unk_238778BF8, MEMORY[0x277CDD938]);
  sub_23861C5F4(&qword_27DF0DB38, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v23 = v40;
  v24 = v36;
  v25 = v38;
  sub_23875DB30();
  (*(v39 + 8))(v5, v25);
  (*(v37 + 8))(v9, v24);
  v42 = v35;
  v43 = v34;
  sub_23875E1B0();
  v26 = v49;
  swift_getKeyPath(byte_238778B18);
  v42 = v26;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v27 = *(v26 + 40);

  v28 = *(v27 + 16);

  LOBYTE(v25) = v28 == 0;
  KeyPath = swift_getKeyPath(byte_238778C20);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11690, &qword_238778BF0);
  v32 = (v23 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = sub_238477BAC;
  v32[2] = v30;
  return result;
}

double sub_238615F8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D250();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_23875C990();
  v9 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_238616200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for SelectAccountsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_23861E93C(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAccountsView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_23861E9A4(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SelectAccountsView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

double sub_23861652C(uint64_t a1)
{
  v2 = type metadata accessor for SelectAccountsResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + 16);
  v6 = sub_238759510();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v5(v4);
  sub_23861F3B4(v4, type metadata accessor for SelectAccountsResult);

  return result;
}

uint64_t sub_238616674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  sub_23875ED50();
  v3[13] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x2822009F8](sub_23861670C, v5, v4);
}

uint64_t sub_23861670C()
{
  v1 = v0[12];
  v2 = *v1;
  v0[16] = *v1;
  v3 = v1[1];
  v0[17] = v3;
  v0[5] = v2;
  v0[6] = v3;
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v0[19] = v0[9];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2386167E0;

  return sub_2386104D0();
}

uint64_t sub_2386167E0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_2386169E0;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_2386168FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2386168FC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  sub_23875E1B0();
  sub_2386136F0(*(v0 + 88));

  type metadata accessor for SelectAccountsView(0);
  *(v0 + 176) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D470();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2386169E0()
{
  v1 = *(v0 + 168);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  swift_getErrorValue();
  v3 = sub_23875F690();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_23875F6E0();

  v5 = *(v0 + 8);

  return v5();
}

__n128 sub_238616ADC@<Q0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_23875EA80();
  v9 = v8;

  *&v33 = v7;
  *(&v33 + 1) = v9;
  sub_2384397A8(v10, v11, v12);
  v13 = sub_23875DAA0();
  v15 = v14;
  v17 = v16;
  sub_23875D890();
  v18 = sub_23875D9E0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a1 + 96) = v37;
  *(a1 + 112) = v38;
  result = v39;
  *(a1 + 32) = v33;
  *(a1 + 48) = v34;
  *(a1 + 64) = v35;
  *(a1 + 80) = v36;
  *(a1 + 192) = v29;
  *(a1 + 208) = v30;
  *(a1 + 224) = v31;
  *(a1 + 240) = v32;
  *(a1 + 128) = v39;
  *(a1 + 144) = v26;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  *(a1 + 160) = v27;
  *(a1 + 176) = v28;
  *(a1 + 256) = 256;
  return result;
}

uint64_t sub_238616DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E60, &qword_238761CE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840, MEMORY[0x277CE1198]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

uint64_t sub_238616F8C(uint64_t a1)
{
  result = sub_23875BED0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386170A0(uint64_t a1)
{
  v1 = sub_238759510();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_238617120(uint64_t a1)
{
  sub_238617248(319, &qword_27DF11570, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_23846D0DC();
    if (v2 <= 0x3F)
    {
      sub_238449184(319, &qword_27DF0BF98, 0x277CC1E70);
      if (v3 <= 0x3F)
      {
        sub_238596E28();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238617248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AccountsModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2386173E4(uint64_t a1)
{
  sub_238617248(319, &qword_27DF115A0, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL sub_238617488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath(byte_238778B18);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v0 = *(v5 + 40);

  v1 = *(v0 + 16);

  sub_23875E400();
  swift_getKeyPath(byte_238778B40);
  sub_23875BE90();

  v2 = *(v4 + 48);

  return v1 < v2;
}

uint64_t sub_2386175EC()
{
  if (sub_238617488())
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v0 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v0 = qword_2814F1B90;
  }

  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_23875EA80();
  return v5;
}

uint64_t sub_23861773C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath(byte_238778B18);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v1 = *(v11 + 40);

  v2 = *(v1 + 16);

  v3 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

double sub_23861797C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v39[-v6];
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v8 = sub_23875E400();
  MEMORY[0x28223BE20](v8);
  *&v39[-16] = a1;
  sub_23875E200();
  v46 = sub_23861773C();
  v47 = v9;
  sub_2384397A8(v46, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D920();
  v16 = sub_23875DA60();
  v18 = v17;
  v41 = v7;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D850();
  v21 = sub_23875D9E0();
  v23 = v22;
  v40 = v24;
  v26 = v25;
  sub_2384397FC(v16, v18, v20 & 1);

  v27 = *(v3 + 16);
  v29 = v44;
  v28 = v45;
  v30 = v41;
  v27(v44, v41, v45);
  v31 = v43;
  v27(v43, v29, v28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11618, &unk_238778B08);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v31 + *(v32 + 64);
  *v34 = v21;
  *(v34 + 8) = v23;
  v35 = v40;
  v36 = v40 & 1;
  *(v34 + 16) = v40 & 1;
  *(v34 + 24) = v26;
  sub_23843980C(v21, v23, v35 & 1);
  v37 = *(v3 + 8);

  v37(v30, v28);
  sub_2384397FC(v21, v23, v36);

  v37(v29, v28);

  return result;
}

void sub_238617D14(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_2386175EC();
  sub_2384397A8(v21, v2, v3);
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  sub_23875D920();
  v9 = sub_23875DA60();
  v11 = v10;
  v13 = v12;

  sub_2384397FC(v4, v6, v8 & 1);

  sub_23875D850();
  v14 = sub_23875D9E0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
}

uint64_t sub_238617E9C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875CE60();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11608, &qword_238778AF0);
  sub_23861797C(v2, a2 + *(v4 + 44));
  v5 = sub_23875D770();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11610, &unk_238778AF8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_238617F68@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_23875D310();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115B8, &qword_238778A58);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115C0, &qword_238778A60);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115C8, &qword_238778A68);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115D0, &qword_238778A70);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115D8, &qword_238778A78);
  sub_23861C468();
  sub_23875D9C0();
  sub_23875D300();
  v18 = sub_23843A3E8(&qword_27DF11600, &qword_27DF115B8, &qword_238778A58, MEMORY[0x277CDE5A0]);
  v19 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v34 + 8))(v4, v2);
  (*(v28 + 8))(v7, v5);
  v37 = v5;
  v38 = v2;
  v39 = v18;
  v40 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_23875DD80();
  (*(v29 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  sub_23875DB70();
  (*(v31 + 8))(v13, v23);
  v37 = v23;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  sub_23875DE10();
  return (*(v33 + 8))(v17, v24);
}

double sub_23861842C(uint64_t a1)
{
  v2 = type metadata accessor for AccountListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath(asc_238778A90);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  v5 = *(v10 + 32);

  v10 = v5;
  swift_getKeyPath(asc_238778AB8);
  sub_23861E93C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23861E9A4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AccountListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115F0, &unk_238778A80);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0, MEMORY[0x277D83980]);
  sub_23861C5F4(&qword_27DF09508, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
  sub_23861C4EC();
  sub_23875E370();

  return result;
}

uint64_t sub_238618748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v4 = type metadata accessor for AccountListView.AccountRow(0);
  v5 = *(v4 + 20);
  v6 = sub_238758680();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for AccountsModel(0);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875E420();
  v7 = a2 + *(v4 + 24);
  sub_23875E1A0();
  *v7 = v10;
  *(v7 + 8) = v11;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v8 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115F0, &unk_238778A80);
  *(a2 + *(result + 36)) = v8;
  return result;
}

double sub_238618958@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v33 = sub_23875D990();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875E0E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11870, &qword_238778ED8);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11838, &qword_238778DF8) - 8;
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v16 = v40;
  swift_getKeyPath(byte_238778B18);
  *&v40 = v16;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v17 = *(v16 + 40);

  v18 = type metadata accessor for AccountListView.AccountRow(0);
  sub_23860E844(v2 + *(v18 + 20), v17);

  sub_23875E0D0();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v19 = sub_23875E150();

  (*(v10 + 8))(v12, v9);
  v20 = v33;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A68], v33);
  v21 = sub_23875D840();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = sub_23875D8D0();
  sub_238439884(v5, &qword_27DF0C7F0, &qword_23877B880);
  (*(v6 + 8))(v8, v20);
  KeyPath = swift_getKeyPath(byte_238778E20);
  v40 = v19;
  LOWORD(v41) = 1;
  *(&v41 + 1) = KeyPath;
  *&v42 = v22;
  sub_23875D860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11840, &unk_238778E00);
  sub_23861F91C();
  v24 = v34;
  sub_23875DAF0();

  v25 = sub_23875DFC0();
  v26 = swift_getKeyPath(asc_238778E50);
  v27 = v35;
  (*(v37 + 32))(v35, v24, v38);
  v28 = (v27 + *(v36 + 44));
  *v28 = v26;
  v28[1] = v25;
  sub_23875E4A0();
  sub_23875C5C0();
  v29 = v39;
  sub_2384396E4(v27, v39, &qword_27DF11838, &qword_238778DF8);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0) + 36));
  v31 = v41;
  *v30 = v40;
  v30[1] = v31;
  result = *&v42;
  v30[2] = v42;
  return result;
}

uint64_t sub_238618F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for AccountListView.AccountRow(0);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11760, &qword_238778D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11768, &qword_238778D28);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11770, &qword_238778D30);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  *v7 = sub_23875CE60();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11778, &unk_238778D38);
  sub_2386193D0(v2, &v7[*(v15 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v7, v11, &qword_27DF11760, &qword_238778D20);
  v16 = &v11[*(v9 + 44)];
  v17 = v45;
  *(v16 + 4) = v44;
  *(v16 + 5) = v17;
  *(v16 + 6) = v46;
  v18 = v41;
  *v16 = v40;
  *(v16 + 1) = v18;
  v19 = v43;
  *(v16 + 2) = v42;
  *(v16 + 3) = v19;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v20 = qword_27DF2F920;
  v21 = sub_23875D780();
  sub_2384396E4(v11, v14, &qword_27DF11768, &qword_238778D28);
  v22 = &v14[*(v12 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = v2 + *(v3 + 24);
  v24 = *v23;
  v25 = *(v23 + 8);
  v38 = v24;
  v39 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  sub_23861E93C(v2, &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView.AccountRow);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_23861E9A4(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AccountListView.AccountRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11780, &unk_238778D48);
  sub_23861F244();
  v28 = type metadata accessor for AccountInfoView(255);
  v29 = sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView, &protocol conformance descriptor for AccountInfoView);
  v34 = v28;
  v35 = MEMORY[0x277CDF950];
  v36 = v29;
  v37 = MEMORY[0x277CDF948];
  swift_getOpaqueTypeConformance2();
  sub_23875DED0();

  return sub_238439884(v14, &qword_27DF11770, &qword_238778D30);
}

double sub_2386193D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a1;
  v150 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117A8, &qword_238778D90);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v111 - v2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117B0, &qword_238778D98);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v160 = &v111 - v3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117B8, &qword_238778DA0);
  MEMORY[0x28223BE20](v142);
  v146 = &v111 - v4;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117C0, &qword_238778DA8);
  MEMORY[0x28223BE20](v145);
  v149 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v147 = &v111 - v7;
  MEMORY[0x28223BE20](v8);
  v148 = &v111 - v9;
  v10 = sub_238757FD0();
  v159 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v114 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  MEMORY[0x28223BE20](v156);
  v141 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v135 = &v111 - v19;
  MEMORY[0x28223BE20](v20);
  v153 = &v111 - v21;
  MEMORY[0x28223BE20](v22);
  v112 = &v111 - v23;
  MEMORY[0x28223BE20](v24);
  v152 = &v111 - v25;
  MEMORY[0x28223BE20](v26);
  v128 = &v111 - v27;
  v155 = sub_23875C950();
  v161 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for AccountListView.AccountRow(0);
  v134 = *(v123 - 8);
  v29 = *(v134 + 64);
  MEMORY[0x28223BE20](v123);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117C8, &qword_238778DB0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v111 - v32;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117D0, &qword_238778DB8);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v151 = &v111 - v34;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117D8, &qword_238778DC0);
  MEMORY[0x28223BE20](v127);
  v132 = &v111 - v35;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E0, &qword_238778DC8);
  MEMORY[0x28223BE20](v131);
  v140 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v133 = &v111 - v38;
  MEMORY[0x28223BE20](v39);
  v158 = &v111 - v40;
  sub_23875ED50();
  v137 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = v157;
  sub_23861E93C(v157, &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView.AccountRow);
  v42 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v125 = *(v134 + 80);
  v124 = v42 + v29;
  v43 = swift_allocObject();
  v126 = v42;
  v134 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23861E9A4(v134, v43 + v42, type metadata accessor for AccountListView.AccountRow);
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E8, &qword_238778DD0);
  sub_23861F600();
  sub_23875E200();
  v45 = v154;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF11818, &qword_27DF117C8, &qword_238778DB0, MEMORY[0x277CDF028]);
  v46 = sub_23861C5F4(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v47 = v151;
  v48 = v155;
  v122 = v46;
  sub_23875DB30();
  v49 = *(v161 + 8);
  v161 += 8;
  v121 = v49;
  v49(v45, v48);
  (*(v31 + 8))(v33, v30);
  v50 = v128;
  v120 = v41 + *(v123 + 20);
  sub_2387585D0();
  v51 = v159;
  v52 = *(v159 + 104);
  v53 = v152;
  v119 = *MEMORY[0x277CC6D50];
  v118 = v159 + 104;
  v117 = v52;
  v52(v152);
  v54 = *(v51 + 56);
  v116 = v51 + 56;
  v115 = v54;
  v54(v53, 0, 1, v10);
  v55 = *(v156 + 48);
  sub_23843981C(v50, v15, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v53, &v15[v55], &qword_27DF11628, &qword_238778B70);
  v56 = *(v51 + 48);
  v57 = v56(v15, 1, v10);
  v123 = v56;
  if (v57 == 1)
  {
    sub_238439884(v53, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v50, &qword_27DF11628, &qword_238778B70);
    v58 = v56(&v15[v55], 1, v10);
    v59 = v158;
    if (v58 == 1)
    {
      sub_238439884(v15, &qword_27DF11628, &qword_238778B70);
      v60 = 1;
LABEL_9:
      v62 = v141;
      goto LABEL_11;
    }

LABEL_8:
    sub_238439884(v15, &qword_27DF11620, &qword_238778B68);
    v60 = 0;
    goto LABEL_9;
  }

  v61 = v112;
  sub_23843981C(v15, v112, &qword_27DF11628, &qword_238778B70);
  if (v56(&v15[v55], 1, v10) == 1)
  {
    sub_238439884(v152, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v50, &qword_27DF11628, &qword_238778B70);
    (*(v159 + 8))(v61, v10);
    v59 = v158;
    goto LABEL_8;
  }

  v63 = v50;
  v64 = v159;
  v65 = v114;
  (*(v159 + 32))(v114, &v15[v55], v10);
  sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
  v60 = sub_23875E9E0();
  v66 = *(v64 + 8);
  v66(v65, v10);
  sub_238439884(v152, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v63, &qword_27DF11628, &qword_238778B70);
  v66(v61, v10);
  v47 = v151;
  sub_238439884(v15, &qword_27DF11628, &qword_238778B70);
  v62 = v141;
  v59 = v158;
LABEL_11:
  v67 = v153;
  KeyPath = swift_getKeyPath(byte_238778C20);
  v69 = swift_allocObject();
  *(v69 + 16) = v60 & 1;
  v70 = v132;
  (*(v129 + 32))(v132, v47, v130);
  v71 = &v70[*(v127 + 36)];
  *v71 = KeyPath;
  v71[1] = sub_238562718;
  v71[2] = v69;
  sub_23875E4A0();
  sub_23875C9C0();
  v72 = v70;
  v73 = v133;
  sub_2384396E4(v72, v133, &qword_27DF117D8, &qword_238778DC0);
  v74 = (v73 + *(v131 + 36));
  v75 = v167;
  v74[4] = v166;
  v74[5] = v75;
  v74[6] = v168;
  v76 = v163;
  *v74 = v162;
  v74[1] = v76;
  v77 = v165;
  v74[2] = v164;
  v74[3] = v77;
  sub_2384396E4(v73, v59, &qword_27DF117E0, &qword_238778DC8);
  v78 = v134;
  sub_23861E93C(v157, v134, type metadata accessor for AccountListView.AccountRow);
  v79 = swift_allocObject();
  sub_23861E9A4(v78, v79 + v126, type metadata accessor for AccountListView.AccountRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0);
  sub_23861F79C();
  v80 = v136;
  sub_23875E200();
  v81 = v154;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF11850, &qword_27DF117A8, &qword_238778D90, MEMORY[0x277CDF028]);
  v82 = v139;
  v83 = v155;
  sub_23875DB30();
  v121(v81, v83);
  (*(v138 + 8))(v80, v82);
  sub_2387585D0();
  v84 = v135;
  v117(v135, v119, v10);
  v115(v84, 0, 1, v10);
  v85 = *(v156 + 48);
  sub_23843981C(v67, v62, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v84, v62 + v85, &qword_27DF11628, &qword_238778B70);
  v86 = v123;
  if ((v123)(v62, 1, v10) != 1)
  {
    v90 = v113;
    sub_23843981C(v62, v113, &qword_27DF11628, &qword_238778B70);
    if (v86(v62 + v85, 1, v10) != 1)
    {
      v91 = v84;
      v92 = v159;
      v93 = v114;
      (*(v159 + 32))(v114, v62 + v85, v10);
      sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
      v89 = sub_23875E9E0();
      v94 = *(v92 + 8);
      v94(v93, v10);
      sub_238439884(v91, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v153, &qword_27DF11628, &qword_238778B70);
      v94(v90, v10);
      sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
      v88 = v158;
      goto LABEL_18;
    }

    sub_238439884(v84, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v153, &qword_27DF11628, &qword_238778B70);
    (*(v159 + 8))(v90, v10);
    v88 = v158;
    goto LABEL_16;
  }

  sub_238439884(v84, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v67, &qword_27DF11628, &qword_238778B70);
  v87 = v86(v62 + v85, 1, v10);
  v88 = v158;
  if (v87 != 1)
  {
LABEL_16:
    sub_238439884(v62, &qword_27DF11620, &qword_238778B68);
    v89 = 0;
    goto LABEL_18;
  }

  sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
  v89 = 1;
LABEL_18:
  v95 = v160;
  v96 = swift_getKeyPath(byte_238778C20);
  v97 = swift_allocObject();
  *(v97 + 16) = v89 & 1;
  v98 = v146;
  (*(v143 + 32))(v146, v95, v144);
  v99 = (v98 + *(v142 + 36));
  *v99 = v96;
  v99[1] = sub_238562718;
  v99[2] = v97;
  sub_23875E4C0();
  sub_23875C9C0();
  v100 = v147;
  sub_2384396E4(v98, v147, &qword_27DF117B8, &qword_238778DA0);
  v101 = (v100 + *(v145 + 36));
  v102 = v174;
  v101[4] = v173;
  v101[5] = v102;
  v101[6] = v175;
  v103 = v170;
  *v101 = v169;
  v101[1] = v103;
  v104 = v172;
  v101[2] = v171;
  v101[3] = v104;
  v105 = v148;
  sub_2384396E4(v100, v148, &qword_27DF117C0, &qword_238778DA8);
  v106 = v140;
  sub_23843981C(v88, v140, &qword_27DF117E0, &qword_238778DC8);
  v107 = v149;
  sub_23843981C(v105, v149, &qword_27DF117C0, &qword_238778DA8);
  v108 = v150;
  sub_23843981C(v106, v150, &qword_27DF117E0, &qword_238778DC8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11858, &unk_238778E10);
  sub_23843981C(v107, v108 + *(v109 + 48), &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v105, &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v88, &qword_27DF117E0, &qword_238778DC8);
  sub_238439884(v107, &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v106, &qword_27DF117E0, &qword_238778DC8);

  return result;
}

double sub_23861A9D0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v2 = type metadata accessor for AccountListView.AccountRow(0);
  sub_23860F2A0(a1 + *(v2 + 20));

  return result;
}

double sub_23861AAA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11810, &unk_238778DE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11800, &qword_238778DD8);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E8, &qword_238778DD0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v6 = sub_23875CE60();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11860, &unk_238778E80);
  sub_23861AD48(a1, &v6[*(v13 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_2384396E4(v6, v9, &qword_27DF11810, &unk_238778DE0);
  v14 = &v9[*(v7 + 36)];
  v15 = v19[5];
  *(v14 + 4) = v19[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v19[6];
  v16 = v19[1];
  *v14 = v19[0];
  *(v14 + 1) = v16;
  v17 = v19[3];
  *(v14 + 2) = v19[2];
  *(v14 + 3) = v17;
  sub_2384396E4(v9, v12, &qword_27DF11800, &qword_238778DD8);
  v12[*(v10 + 36)] = 0;
  sub_2384396E4(v12, a2, &qword_27DF117E8, &qword_238778DD0);

  return result;
}

double sub_23861AD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v47);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = sub_23875A9F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountLogo(0);
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0);
  MEMORY[0x28223BE20](v15 - 8);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = v19;
  sub_238618958(v19);
  type metadata accessor for AccountListView.AccountRow(0);
  sub_238758580();
  sub_238758530();
  v20 = sub_23875A9B0();
  v22 = v21;
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath(asc_238778E90);
  v24 = &v14[v10[5]];
  *v24 = v20;
  v24[1] = v22;
  v14[v10[6]] = 4;
  v25 = &v14[v10[7]];
  *v25 = KeyPath;
  v25[8] = 0;
  v26 = &v14[v10[8]];
  LOBYTE(v55[0]) = 0;
  sub_23875E1A0();
  v27 = *(&v57 + 1);
  *v26 = v57;
  *(v26 + 1) = v27;
  v28 = sub_238757B60();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_23843981C(v5, v46, &qword_27DF0A0C0, &qword_238771EF0);
  sub_23875E1A0();
  sub_238439884(v5, &qword_27DF0A0C0, &qword_238771EF0);
  v29 = v10[10];
  v55[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v14[v29] = v57;
  v47 = sub_23875D030();
  LOBYTE(v57) = 1;
  sub_23861B350(v54);
  *&v53[7] = v54[0];
  *&v53[23] = v54[1];
  *&v53[39] = v54[2];
  *&v53[55] = v54[3];
  v30 = v57;
  v31 = v45;
  v32 = v51;
  sub_23843981C(v45, v51, &qword_27DF11820, &qword_238778DF0);
  v33 = v52;
  sub_23861E93C(v14, v52, type metadata accessor for AccountLogo);
  v34 = v48;
  sub_23843981C(v32, v48, &qword_27DF11820, &qword_238778DF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11868, &unk_238778EC8);
  sub_23861E93C(v33, v34 + v35[12], type metadata accessor for AccountLogo);
  v36 = v34 + v35[16];
  v37 = v47;
  v55[0] = v47;
  v55[1] = 0;
  v56[0] = v30;
  *&v56[1] = *v53;
  *&v56[17] = *&v53[16];
  *&v56[33] = *&v53[32];
  *&v56[49] = *&v53[48];
  v38 = *&v53[63];
  *&v56[64] = *&v53[63];
  v39 = *v56;
  *v36 = v47;
  *(v36 + 16) = v39;
  v40 = *&v56[16];
  v41 = *&v56[32];
  v42 = *&v56[48];
  *(v36 + 80) = v38;
  *(v36 + 48) = v41;
  *(v36 + 64) = v42;
  *(v36 + 32) = v40;
  v43 = v34 + v35[20];
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_23843981C(v55, &v57, &qword_27DF0B3F8, &unk_238768110);
  sub_23861F3B4(v14, type metadata accessor for AccountLogo);
  sub_238439884(v31, &qword_27DF11820, &qword_238778DF0);
  v57 = v37;
  v58 = v30;
  v60 = *&v53[16];
  v61 = *&v53[32];
  *v62 = *&v53[48];
  *&v62[15] = *&v53[63];
  v59 = *v53;
  sub_238439884(&v57, &qword_27DF0B3F8, &unk_238768110);
  sub_23861F3B4(v33, type metadata accessor for AccountLogo);
  sub_238439884(v32, &qword_27DF11820, &qword_238778DF0);

  return result;
}

double sub_23861B350@<D0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v1 = sub_238757FC0();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_238758A00();
  v63 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v61 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = v55 - v5;
  sub_23875ED50();
  v64 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(type metadata accessor for AccountListView.AccountRow(0) + 20);
  v67 = sub_2387585B0();
  v68 = v7;
  v55[1] = sub_2384397A8(v67, v7, v8);
  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  LODWORD(v67) = sub_23875D420();
  v14 = sub_23875DA20();
  v16 = v15;
  v18 = v17;
  sub_2384397FC(v9, v11, v13 & 1);

  sub_23875D820();
  v19 = sub_23875DA60();
  v21 = v20;
  v62 = v22;
  v24 = v23;

  sub_2384397FC(v14, v16, v18 & 1);

  v55[0] = v6;
  v25 = v60;
  sub_238758580();
  v26 = v63;
  v27 = v61;
  v28 = v59;
  (*(v63 + 104))(v61, *MEMORY[0x277CC7158], v59);
  sub_23861C5F4(&unk_27DF0B400, MEMORY[0x277CC7180], MEMORY[0x277CC7198]);
  sub_23875EC40();
  sub_23875EC40();
  v29 = *(v26 + 8);
  v29(v27, v28);
  v29(v25, v28);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v67 == v66)
  {
    v34 = v56;
    sub_2387585C0();
    v35 = sub_238757FB0();
    v37 = v36;
    (*(v57 + 8))(v34, v58);
    v67 = v35;
    v68 = v37;
    v38 = sub_23875DAA0();
    v40 = v39;
    LOBYTE(v34) = v41;
    LODWORD(v67) = sub_23875D440();
    v42 = sub_23875DA20();
    v44 = v43;
    v46 = v45;
    v63 = v24;
    sub_2384397FC(v38, v40, v34 & 1);

    sub_23875D970();
    v30 = sub_23875DA60();
    v31 = v47;
    v61 = v21;
    v48 = v19;
    v50 = v49;
    v33 = v51;

    sub_2384397FC(v42, v44, v46 & 1);
    v24 = v63;

    v32 = v50 & 1;
    v19 = v48;
    v21 = v61;
    sub_23843980C(v30, v31, v32);
  }

  v52 = v62 & 1;
  sub_23843980C(v19, v21, v62 & 1);

  sub_238476F5C(v30, v31, v32, v33);
  sub_238476FA0(v30, v31, v32, v33);
  LOBYTE(v67) = v52;
  v53 = v65;
  *v65 = v19;
  v53[1] = v21;
  *(v53 + 16) = v52;
  v53[3] = v24;
  v53[4] = v30;
  v53[5] = v31;
  v53[6] = v32;
  v53[7] = v33;
  sub_238476FA0(v30, v31, v32, v33);
  sub_2384397FC(v19, v21, v52);

  return result;
}

double sub_23861B8C4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v2 = *(v19[0] + 56);

  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v6;
  v7 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 1868983913;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v8;
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v12;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v19);

  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v15 = sub_23875E910();

  [v14 subject:v2 sendEvent:v15];

  v16 = a1 + *(type metadata accessor for AccountListView.AccountRow(0) + 24);
  v17 = *(v16 + 8);
  LOBYTE(v19[0]) = *v16;
  v19[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();

  return result;
}

double sub_23861BC04@<D0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_23875D990();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875E0E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v12 = sub_23875E150();

  (*(v9 + 8))(v11, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A68], v4);
  v13 = sub_23875D840();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = sub_23875D8D0();
  sub_238439884(v3, &qword_27DF0C7F0, &qword_23877B880);
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath(byte_238778E20);
  v25 = v12;
  LOWORD(v26) = 1;
  *(&v26 + 1) = KeyPath;
  *&v27 = v14;
  sub_23875D860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11840, &unk_238778E00);
  sub_23861F91C();
  v16 = v24;
  sub_23875DAF0();

  v17 = sub_23875DFC0();
  v18 = swift_getKeyPath(asc_238778E50);
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11838, &qword_238778DF8) + 36));
  *v19 = v18;
  v19[1] = v17;
  sub_23875E4A0();
  sub_23875C5C0();

  v20 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0) + 36));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  result = *&v27;
  v20[2] = v27;
  return result;
}

double sub_23861C02C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v2 = sub_23875A9F0();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_238757FC0();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758680();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountInfoView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for AccountListView.AccountRow(0);
  (*(v9 + 16))(v11, &v30[*(v15 + 20)], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v30 = *(v36 + 56);

  v16 = v12[9];
  *&v14[v16] = swift_getKeyPath(aH_9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v17 = sub_2387585B0();
  v18 = &v14[v12[5]];
  *v18 = v17;
  v18[1] = v19;
  sub_2387585C0();
  v20 = sub_238757FB0();
  v22 = v21;
  (*(v5 + 8))(v7, v32);
  v23 = &v14[v12[6]];
  *v23 = v20;
  v23[1] = v22;
  sub_238758580();
  sub_238758530();
  v24 = sub_23875A9B0();
  v26 = v25;
  (*(v33 + 8))(v4, v34);
  (*(v9 + 8))(v11, v8);
  v27 = &v14[v12[7]];
  *v27 = v24;
  v27[1] = v26;
  *&v14[v12[8]] = v30;
  sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView, &protocol conformance descriptor for AccountInfoView);
  sub_23875DDF0();
  sub_23861F3B4(v14, type metadata accessor for AccountInfoView);

  return result;
}

unint64_t sub_23861C468()
{
  result = qword_27DF115E0;
  if (!qword_27DF115E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115D8, &qword_238778A78);
    sub_23861C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF115E0);
  }

  return result;
}

unint64_t sub_23861C4EC()
{
  result = qword_27DF115E8;
  if (!qword_27DF115E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115F0, &unk_238778A80);
    sub_23861C5F4(&qword_27DF115F8, type metadata accessor for AccountListView.AccountRow, &unk_238778CD0);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF115E8);
  }

  return result;
}

uint64_t sub_23861C5F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23861C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AccountListView(0);

  return sub_238618748(a1, a2);
}

void sub_23861C6FC(uint64_t *a1)
{
  v2 = *(sub_238758680() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23861C7A4(v5);
  *a1 = v3;
}

void sub_23861C7A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238758680();
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_238758680() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_23861CDCC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23861C8D0(0, v2, 1, a1);
  }
}

void sub_23861C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_23875BCB0();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v48 - v11;
  v67 = sub_238758680();
  v12 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v50 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = sub_23875ED50();
    v23 = *(v12 + 16);
    v22 = v12 + 16;
    v64 = v23;
    v65 = v21;
    v24 = *(v22 + 56);
    v55 = (v8 + 8);
    v63 = (v22 - 8);
    v66 = v22;
    v25 = (v20 + v24 * (a3 - 1));
    v59 = -v24;
    v60 = (v22 + 16);
    v26 = a1 - a3;
    v61 = v20;
    v49 = v24;
    v27 = v20 + v24 * a3;
LABEL_5:
    v54 = a3;
    v51 = v27;
    v52 = v26;
    v53 = v25;
    v28 = v26;
    v29 = v67;
    while (1)
    {
      v73 = v28;
      v30 = v64;
      v64(v19, v27, v29);
      v30(v16, v25, v29);
      v68 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v71 = sub_2387585B0();
      v72 = v31;
      v69 = sub_2387585B0();
      v70 = v32;
      sub_2384397A8(v69, v32, v33);
      v34 = sub_23875F290();

      if (v34)
      {
        v71 = sub_2387585B0();
        v72 = v35;
        v69 = sub_2387585B0();
        v70 = v36;
        v37 = sub_23875F290();

        LOBYTE(v37) = v37 == -1;
      }

      else
      {
        v38 = v56;
        sub_238758640();
        v39 = v57;
        sub_238758640();
        v37 = MEMORY[0x23EE60750](v38, v39);
        v40 = *v55;
        v41 = v39;
        v42 = v58;
        (*v55)(v41, v58);
        v40(v38, v42);
      }

      v43 = *v63;
      v29 = v67;
      (*v63)(v16, v67);
      v43(v19, v29);
      v44 = v73;
      if ((v37 & 1) == 0)
      {
LABEL_4:
        a3 = v54 + 1;
        v25 = &v53[v49];
        v26 = v52 - 1;
        v27 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v45 = *v60;
      v46 = v62;
      (*v60)(v62, v27, v29);
      swift_arrayInitWithTakeFrontToBack();
      v45(v25, v46, v29);
      v25 += v59;
      v27 += v59;
      v47 = __CFADD__(v44, 1);
      v28 = v44 + 1;
      if (v47)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23861CDCC(char **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v157 = a1;
  v174 = sub_23875BCB0();
  v8 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v172 = &v153 - v11;
  v185 = sub_238758680();
  v12 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v161 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v177 = &v153 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v153 - v20;
  MEMORY[0x28223BE20](v22);
  v155 = &v153 - v23;
  v28.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v154 = &v153 - v29;
  v30 = *(a3 + 8);
  v162 = a3;
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_106:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_139:
      v32 = sub_238490ED4(v32);
    }

    v149 = v5;
    v192 = v32;
    v150 = *(v32 + 2);
    if (v150 >= 2)
    {
      do
      {
        v151 = *a3;
        if (!*a3)
        {
          goto LABEL_143;
        }

        v5 = *&v32[16 * v150];
        a3 = *&v32[16 * v150 + 24];
        sub_23861DD7C((v151 + *(v12 + 72) * v5), (v151 + *(v12 + 72) * *&v32[16 * v150 + 16]), v151 + *(v12 + 72) * a3, a4);
        if (v149)
        {
          break;
        }

        if (a3 < v5)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_238490ED4(v32);
        }

        if (v150 - 2 >= *(v32 + 2))
        {
          goto LABEL_133;
        }

        v152 = &v32[16 * v150];
        *v152 = v5;
        v152[1] = a3;
        v192 = v32;
        sub_238490E48(v150 - 1);
        v32 = v192;
        v150 = *(v192 + 2);
        a3 = v162;
      }

      while (v150 > 1);
    }

LABEL_116:

    return;
  }

  v169 = v21;
  v170 = v27;
  v180 = v26;
  v181 = v25;
  v31 = 0;
  v183 = (v12 + 8);
  v184 = v12 + 16;
  v171 = (v8 + 8);
  v182 = (v12 + 32);
  v32 = MEMORY[0x277D84F90];
  v166 = v12;
  v156 = a4;
  while (1)
  {
    v33 = v31 + 1;
    v168 = v32;
    if (v31 + 1 >= v30)
    {
      goto LABEL_32;
    }

    v175 = v30;
    v153 = v5;
    v34 = *a3;
    v35 = *(v12 + 72);
    v36 = (v31 + 1);
    v37 = v34 + v35 * v33;
    v38 = *(v12 + 16);
    v39 = v185;
    v38(v154, v37, v185, v28);
    v158 = v31;
    v178 = v35;
    v167 = v38;
    (v38)(v155, v34 + v35 * v31, v39);
    v40 = sub_23875ED50();
    sub_23875ED40();
    v165 = v40;
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    a3 = v154;
    v41 = v155;
    LODWORD(v176) = sub_23861E71C();

    v42 = *v183;
    v5 = v185;
    (*v183)(v41, v185);
    v164 = v42;
    (v42)(a3, v5);
    v43 = v158 + 2;
    v44 = v178 * (v158 + 2);
    v45 = v34 + v44;
    v46 = v36;
    v47 = (v178 * v36);
    v48 = v34 + v178 * v36;
    do
    {
      v33 = v43;
      v58 = v46;
      a4 = v47;
      v59 = v44;
      v187 = v43;
      if (v43 >= v175)
      {
        break;
      }

      v186 = v46;
      v60 = v167;
      v167(v169, v45, v5);
      v60(v170, v48, v5);
      v179 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v190 = sub_2387585B0();
      v191 = v49;
      v188 = sub_2387585B0();
      v189 = v50;
      sub_2384397A8(v188, v50, v51);
      v52 = sub_23875F290();

      if (v52)
      {
        v190 = sub_2387585B0();
        v191 = v53;
        v188 = sub_2387585B0();
        v189 = v54;
        v55 = sub_23875F290();

        LOBYTE(v55) = v55 == -1;
      }

      else
      {
        v61 = v172;
        sub_238758640();
        v62 = v173;
        sub_238758640();
        v55 = MEMORY[0x23EE60750](v61, v62);
        v63 = *v171;
        v64 = v62;
        v65 = v174;
        (*v171)(v64, v174);
        v63(v61, v65);
      }

      v12 = v166;
      v5 = v185;
      a3 = v183;
      v56 = v164;
      (v164)(v170, v185);
      (v56)(v169, v5);
      v57 = v55 & 1;
      v58 = v186;
      v33 = v187;
      v43 = v187 + 1;
      v45 += v178;
      v48 += v178;
      v46 = v186 + 1;
      v47 = &a4[v178];
      v44 = v59 + v178;
      v32 = v168;
    }

    while ((v176 & 1) == v57);
    if ((v176 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v33 < v158)
    {
      goto LABEL_136;
    }

    if (v158 < v33)
    {
      v66 = v158 * v178;
      v67 = v158;
      do
      {
        if (v67 != v58)
        {
          v70 = *v162;
          if (!*v162)
          {
            goto LABEL_142;
          }

          v71 = v58;
          v72 = *v182;
          (*v182)(v161, v70 + v66, v185);
          if (v66 < a4 || v70 + v66 >= (v70 + v59))
          {
            v68 = v185;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v68 = v185;
            if (v66 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v72(&a4[v70], v161, v68);
          v32 = v168;
          v58 = v71;
          v12 = v166;
        }

        ++v67;
        a4 -= v178;
        v59 -= v178;
        v66 += v178;
      }

      while (v67 < v58--);
      v33 = v187;
LABEL_30:
      v5 = v153;
      a3 = v162;
      v31 = v158;
      goto LABEL_31;
    }

    v5 = v153;
    a3 = v162;
    v31 = v158;
LABEL_31:
    a4 = v156;
LABEL_32:
    v73 = *(a3 + 8);
    if (v33 < v73)
    {
      if (__OFSUB__(v33, v31))
      {
        goto LABEL_135;
      }

      if (v33 - v31 < a4)
      {
        if (__OFADD__(v31, a4))
        {
          goto LABEL_137;
        }

        if (&a4[v31] >= v73)
        {
          a4 = *(a3 + 8);
        }

        else
        {
          a4 += v31;
        }

        if (a4 < v31)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v33 != a4)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v33 < v31)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_238490EE8(0, *(v32 + 2) + 1, 1, v32);
    }

    a4 = *(v32 + 2);
    v103 = *(v32 + 3);
    v104 = (a4 + 1);
    if (a4 >= v103 >> 1)
    {
      v32 = sub_238490EE8((v103 > 1), (a4 + 1), 1, v32);
    }

    *(v32 + 2) = v104;
    v105 = &v32[16 * a4];
    v106 = v167;
    *(v105 + 4) = v31;
    *(v105 + 5) = v106;
    v107 = *v157;
    if (!*v157)
    {
      goto LABEL_144;
    }

    if (a4)
    {
      while (1)
      {
        v108 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v109 = *(v32 + 4);
          v110 = *(v32 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_75:
          if (v112)
          {
            goto LABEL_123;
          }

          v125 = &v32[16 * v104];
          v127 = *v125;
          v126 = *(v125 + 1);
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_126;
          }

          v131 = &v32[16 * v108 + 32];
          v133 = *v131;
          v132 = *(v131 + 1);
          v119 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v119)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v129, v134))
          {
            goto LABEL_130;
          }

          if (v129 + v134 >= v111)
          {
            if (v111 < v134)
            {
              v108 = v104 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v135 = &v32[16 * v104];
        v137 = *v135;
        v136 = *(v135 + 1);
        v119 = __OFSUB__(v136, v137);
        v129 = v136 - v137;
        v130 = v119;
LABEL_89:
        if (v130)
        {
          goto LABEL_125;
        }

        v138 = &v32[16 * v108];
        v140 = *(v138 + 4);
        v139 = *(v138 + 5);
        v119 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v119)
        {
          goto LABEL_128;
        }

        if (v141 < v129)
        {
          goto LABEL_3;
        }

LABEL_96:
        a4 = (v108 - 1);
        if (v108 - 1 >= v104)
        {
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v146 = *&v32[16 * a4 + 32];
        v147 = *&v32[16 * v108 + 40];
        sub_23861DD7C((*a3 + *(v12 + 72) * v146), (*a3 + *(v12 + 72) * *&v32[16 * v108 + 32]), *a3 + *(v12 + 72) * v147, v107);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v147 < v146)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_238490ED4(v32);
        }

        if (a4 >= *(v32 + 2))
        {
          goto LABEL_120;
        }

        v148 = &v32[16 * a4];
        *(v148 + 4) = v146;
        *(v148 + 5) = v147;
        v192 = v32;
        sub_238490E48(v108);
        v32 = v192;
        v104 = *(v192 + 2);
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v113 = &v32[16 * v104 + 32];
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_121;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_122;
      }

      v120 = &v32[16 * v104];
      v122 = *v120;
      v121 = *(v120 + 1);
      v119 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v119)
      {
        goto LABEL_124;
      }

      v119 = __OFADD__(v111, v123);
      v124 = v111 + v123;
      if (v119)
      {
        goto LABEL_127;
      }

      if (v124 >= v116)
      {
        v142 = &v32[16 * v108 + 32];
        v144 = *v142;
        v143 = *(v142 + 1);
        v119 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v119)
        {
          goto LABEL_131;
        }

        if (v111 < v145)
        {
          v108 = v104 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v30 = *(a3 + 8);
    v31 = v167;
    a4 = v156;
    if (v167 >= v30)
    {
      goto LABEL_106;
    }
  }

  v153 = v5;
  v74 = *a3;
  v75 = sub_23875ED50();
  v76 = *(v12 + 72);
  v178 = *(v12 + 16);
  v179 = v75;
  v77 = v74 + v76 * (v33 - 1);
  v175 = -v76;
  v158 = v31;
  v78 = (v31 - v33);
  v176 = v74;
  v159 = v76;
  v79 = v74 + v33 * v76;
  v80 = v185;
  v81 = v180;
  v82 = v181;
  v160 = a4;
LABEL_43:
  v167 = v33;
  v163 = v79;
  v164 = v78;
  v83 = v78;
  v165 = v77;
  while (1)
  {
    v186 = v83;
    v84 = v178;
    (v178)(v81, v79, v80);
    v84(v82, v77, v80);
    v187 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v81 = v180;
    v190 = sub_2387585B0();
    v191 = v85;
    v82 = v181;
    v188 = sub_2387585B0();
    v189 = v86;
    sub_2384397A8(v188, v86, v87);
    v88 = sub_23875F290();

    if (v88)
    {
      v190 = sub_2387585B0();
      v191 = v89;
      v188 = sub_2387585B0();
      v189 = v90;
      v91 = sub_23875F290();

      LOBYTE(v91) = v91 == -1;
    }

    else
    {
      v92 = v172;
      sub_238758640();
      v93 = v173;
      sub_238758640();
      v91 = MEMORY[0x23EE60750](v92, v93);
      v94 = *v171;
      v95 = v93;
      v96 = v174;
      (*v171)(v95, v174);
      v94(v92, v96);
    }

    v97 = *v183;
    v80 = v185;
    (*v183)(v82, v185);
    (v97)(v81, v80);
    if ((v91 & 1) == 0)
    {
LABEL_42:
      v33 = v167 + 1;
      v77 = v165 + v159;
      v78 = v164 - 1;
      v79 = v163 + v159;
      a4 = v160;
      if (v167 + 1 != v160)
      {
        goto LABEL_43;
      }

      v33 = v160;
      v5 = v153;
      a3 = v162;
      v12 = v166;
      v32 = v168;
      v31 = v158;
      goto LABEL_55;
    }

    v98 = v186;
    if (!v176)
    {
      break;
    }

    v99 = *v182;
    v100 = v177;
    (*v182)(v177, v79, v80);
    swift_arrayInitWithTakeFrontToBack();
    v99(v77, v100, v80);
    v77 += v175;
    v79 += v175;
    v101 = __CFADD__(v98, 1);
    v83 = v98 + 1;
    if (v101)
    {
      goto LABEL_42;
    }
  }

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
}

void sub_23861DD7C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v85 = a3;
  v80 = sub_23875BCB0();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v72 - v10;
  v89 = sub_238758680();
  v11 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_73;
  }

  v23 = v85 - a2;
  if (v85 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_74;
  }

  v24 = (a2 - a1) / v22;
  v96 = a1;
  v95 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || &a2[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v85;
    }

    else
    {
      v27 = v85;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v26 < 1)
    {
      v50 = &a4[v26];
    }

    else
    {
      v48 = -v22;
      v77 = (v11 + 16);
      v74 = (v7 + 8);
      v76 = (v11 + 8);
      v49 = &a4[v26];
      v50 = &a4[v26];
      v87 = a4;
      v85 = v48;
      while (2)
      {
        while (1)
        {
          v73 = v50;
          v51 = a2;
          a2 += v48;
          v88 = a2;
          v81 = v51;
          while (1)
          {
            if (v51 <= a1)
            {
              v96 = v51;
              v94 = v73;
              goto LABEL_71;
            }

            v52 = v27;
            v75 = v50;
            v53 = *v77;
            v83 = &v49[v48];
            v54 = v89;
            v53(v86);
            v55 = v82;
            (v53)(v82, a2, v54);
            sub_23875ED50();
            v84 = sub_23875ED40();
            sub_23875ECE0();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v92 = sub_2387585B0();
            v93 = v56;
            v90 = sub_2387585B0();
            v91 = v57;
            sub_2384397A8(v90, v57, v58);
            v59 = sub_23875F290();

            if (v59)
            {
              v92 = sub_2387585B0();
              v93 = v60;
              v90 = sub_2387585B0();
              v91 = v61;
              v62 = sub_23875F290();

              LOBYTE(v62) = v62 == -1;
            }

            else
            {
              v63 = v78;
              sub_238758640();
              v64 = v79;
              sub_238758640();
              v62 = MEMORY[0x23EE60750](v63, v64);
              v65 = *v74;
              v66 = v64;
              v67 = v80;
              (*v74)(v66, v80);
              v65(v63, v67);
            }

            v27 = &v52[v85];
            v68 = *v76;
            v69 = v89;
            (*v76)(v55, v89);
            v68(v86, v69);
            v70 = v87;
            a2 = v88;
            if (v62)
            {
              break;
            }

            v71 = v83;
            v50 = v83;
            if (v52 < v49 || v27 >= v49)
            {
              swift_arrayInitWithTakeFrontToBack();
              v48 = v85;
            }

            else
            {
              v48 = v85;
              if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v49 = v50;
            v51 = v81;
            if (v71 <= v70)
            {
              a2 = v81;
              goto LABEL_70;
            }
          }

          if (v52 < v81 || v27 >= v81)
          {
            break;
          }

          v50 = v75;
          v48 = v85;
          if (v52 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v49 <= v70)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v50 = v75;
        v48 = v85;
        if (v49 > v70)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v96 = a2;
    v94 = v50;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || &a1[v25] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = &a4[v25];
    v94 = &a4[v25];
    if (v25 >= 1 && a2 < v85)
    {
      v29 = *(v11 + 16);
      v77 = (v7 + 8);
      v83 = v22;
      v84 = v11 + 16;
      v81 = (v11 + 8);
      v82 = v29;
      do
      {
        v88 = a2;
        v30 = a2;
        v31 = v89;
        v32 = v82;
        (v82)(v20, v30, v89);
        v87 = a4;
        v32(v17, a4, v31);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v92 = sub_2387585B0();
        v93 = v33;
        v90 = sub_2387585B0();
        v91 = v34;
        sub_2384397A8(v90, v34, v35);
        v36 = sub_23875F290();

        if (v36)
        {
          v92 = sub_2387585B0();
          v93 = v37;
          v90 = sub_2387585B0();
          v91 = v38;
          v39 = sub_23875F290();

          LOBYTE(v39) = v39 == -1;
        }

        else
        {
          v40 = v78;
          sub_238758640();
          v41 = v79;
          sub_238758640();
          v39 = MEMORY[0x23EE60750](v40, v41);
          v42 = *v77;
          v43 = v41;
          v44 = v80;
          (*v77)(v43, v80);
          (v42)(v40, v44);
        }

        a2 = v88;
        v45 = v89;
        v46 = *v81;
        (*v81)(v17, v89);
        v46(v20, v45);
        a4 = v87;
        v47 = v83;
        if (v39)
        {
          if (a1 < a2 || a1 >= &a2[v83])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v47;
        }

        else
        {
          if (a1 < v87 || a1 >= &v87[v83])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v87)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v95 = &a4[v47];
          a4 += v47;
        }

        a1 += v47;
        v96 = a1;
      }

      while (a4 < v86 && a2 < v85);
    }
  }

LABEL_71:
  sub_238709008(&v96, &v95, &v94);
}

uint64_t sub_23861E71C()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v18 = sub_2387585B0();
  v19 = v7;
  v16 = sub_2387585B0();
  v17 = v8;
  sub_2384397A8(v16, v8, v9);
  v10 = sub_23875F290();

  if (v10)
  {
    v18 = sub_2387585B0();
    v19 = v11;
    v16 = sub_2387585B0();
    v17 = v12;
    v13 = sub_23875F290();

    LOBYTE(v13) = v13 == -1;
  }

  else
  {
    sub_238758640();
    sub_238758640();
    v13 = MEMORY[0x23EE60750](v6, v3);
    v14 = *(v1 + 8);
    v14(v3, v0);
    v14(v6, v0);
  }

  return v13 & 1;
}

uint64_t sub_23861E93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23861E9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23861EA0C()
{
  v2 = *(type metadata accessor for SelectAccountsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_238616674(v4, v5, v0 + v3);
}

unint64_t sub_23861EB2C()
{
  result = qword_27DF11680;
  if (!qword_27DF11680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11678, &unk_238778BE0);
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900, &unk_23877E960);
    sub_23861EBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11680);
  }

  return result;
}

unint64_t sub_23861EBE4()
{
  result = qword_27DF11688;
  if (!qword_27DF11688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11690, &qword_238778BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11698, &unk_238778BF8);
    sub_23875D620();
    sub_23843A3E8(&qword_27DF116A0, &qword_27DF11698, &unk_238778BF8, MEMORY[0x277CDD938]);
    sub_23861C5F4(&qword_27DF0DB38, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11688);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = (type metadata accessor for SelectAccountsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = sub_23875D530();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23861EF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF116C0;
  if (!qword_27DF116C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF116C0);
  }

  return result;
}

unint64_t sub_23861EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11720;
  if (!qword_27DF11720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11720);
  }

  return result;
}

void sub_23861F048(uint64_t a1)
{
  sub_238617248(319, &qword_27DF115A0, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_238758680();
    if (v2 <= 0x3F)
    {
      sub_2384B49C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23861F100()
{
  result = qword_27DF11748;
  if (!qword_27DF11748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11610, &unk_238778AF8);
    sub_23843A3E8(&qword_27DF11750, &qword_27DF11758, &qword_238778CC8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11748);
  }

  return result;
}

double sub_23861F1D4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountListView.AccountRow(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_23861C02C(v4, a1);
}

unint64_t sub_23861F244()
{
  result = qword_27DF11788;
  if (!qword_27DF11788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11770, &qword_238778D30);
    sub_23861F2FC();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11788);
  }

  return result;
}

unint64_t sub_23861F2FC()
{
  result = qword_27DF11790;
  if (!qword_27DF11790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11768, &qword_238778D28);
    sub_23843A3E8(&qword_27DF11798, &qword_27DF11760, &qword_238778D20, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11790);
  }

  return result;
}

uint64_t sub_23861F3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_110Tm()
{
  v1 = (type metadata accessor for AccountListView.AccountRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_238758680();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23861F57C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23861F600()
{
  result = qword_27DF117F0;
  if (!qword_27DF117F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF117E8, &qword_238778DD0);
    sub_23861F6B8();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF117F0);
  }

  return result;
}

unint64_t sub_23861F6B8()
{
  result = qword_27DF117F8;
  if (!qword_27DF117F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11800, &qword_238778DD8);
    sub_23843A3E8(&qword_27DF11808, &qword_27DF11810, &unk_238778DE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF117F8);
  }

  return result;
}

unint64_t sub_23861F79C()
{
  result = qword_27DF11828;
  if (!qword_27DF11828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11820, &qword_238778DF0);
    sub_23861F828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11828);
  }

  return result;
}

unint64_t sub_23861F828()
{
  result = qword_27DF11830;
  if (!qword_27DF11830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11838, &qword_238778DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11840, &unk_238778E00);
    sub_23861F91C();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11830);
  }

  return result;
}

unint64_t sub_23861F91C()
{
  result = qword_27DF11848;
  if (!qword_27DF11848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11840, &unk_238778E00);
    sub_238464BD4();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11848);
  }

  return result;
}

uint64_t sub_23861FA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2384397A8(a1, a2, a3);

  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D8E0();
  v10 = sub_23875DA60();
  v12 = v11;
  v14 = v13;

  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875D890();
  v15 = sub_23875D9E0();
  v17 = v16;
  LOBYTE(v7) = v18;
  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D420();
  v19 = sub_23875DA20();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v15, v17, v7 & 1);

  v26 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830) + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v28 = sub_23875DA40();
  (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
  result = swift_getKeyPath(byte_238778F68);
  *v26 = result;
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
  return result;
}

uint64_t sub_23861FC94(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23861FD28(uint64_t a1)
{
  result = sub_2387590B0();
  if (v2 <= 0x3F)
  {
    result = sub_23875B0A0();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ProductImage.ViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23861FDFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118A0, &qword_238779080);
  MEMORY[0x28223BE20](v1);
  v3 = v7 - v2;
  *v3 = sub_23875CE60();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118A8, &qword_238779088);
  sub_23861FF78(v0, &v3[*(v4 + 44)]);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_23875F470();

  v8 = 0xD00000000000002DLL;
  v9 = 0x800000023878DDB0;
  v7[1] = *(v0 + 24);
  v5 = sub_23875F600();
  MEMORY[0x23EE63650](v5);

  sub_238620D24();
  sub_23875DE00();

  return sub_238439884(v3, &qword_27DF118A0, &qword_238779080);
}

double sub_23861FF78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_23875DFD0();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090);
  MEMORY[0x28223BE20](v33);
  v34 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v29[-v9];
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_23875D030();
  v37 = 1;
  sub_238620538(a1, &v50);
  v44 = *&v51[80];
  v45[0] = *&v51[96];
  *(v45 + 12) = *&v51[108];
  v40 = *&v51[16];
  v41 = *&v51[32];
  v42 = *&v51[48];
  v43 = *&v51[64];
  v38 = v50;
  v39 = *v51;
  v46[6] = *&v51[80];
  v47[0] = *&v51[96];
  *(v47 + 12) = *&v51[108];
  v46[2] = *&v51[16];
  v46[3] = *&v51[32];
  v46[4] = *&v51[48];
  v46[5] = *&v51[64];
  v46[0] = v50;
  v46[1] = *v51;
  sub_23843981C(&v38, &v48, &qword_27DF092F0, &qword_238763090);
  sub_238439884(v46, &qword_27DF092F0, &qword_238763090);
  *&v36[87] = v43;
  *&v36[103] = v44;
  *&v36[119] = v45[0];
  *&v36[131] = *(v45 + 12);
  *&v36[23] = v39;
  *&v36[39] = v40;
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[7] = v38;
  v30 = v37;
  v11 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  sub_238620D88(a1 + *(v11 + 32), v10);
  v12 = *(type metadata accessor for ProductImage(0) + 20);
  *&v10[v12] = swift_getKeyPath(a0_10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v31);
  v13 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_2387790D8);
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36)];
  v16 = type metadata accessor for OrderImageStyleModifier(0);
  *&v15[*(v16 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v15[*(v16 + 40)] = swift_getKeyPath(a0_10);
  swift_storeEnumTagMultiPayload();
  *v15 = xmmword_238762FA0;
  *(v15 + 2) = 0;
  v15[24] = 1;
  *(v15 + 4) = v13;
  v15[40] = 1;
  v17 = swift_getKeyPath(a0_10);
  v18 = &v10[*(v33 + 36)];
  *v18 = v17;
  swift_storeEnumTagMultiPayload();
  *(v18 + *(type metadata accessor for OrderImageVignette(0) + 20)) = 1;
  v19 = v34;
  sub_23843981C(v10, v34, &qword_27DF10B10, &unk_238779090);
  v20 = v32;
  v48 = v32;
  v21 = v30;
  v49[0] = v30;
  *&v49[113] = *&v36[112];
  *&v49[97] = *&v36[96];
  *&v49[129] = *&v36[128];
  *&v49[144] = *&v36[143];
  *&v49[33] = *&v36[32];
  *&v49[49] = *&v36[48];
  *&v49[65] = *&v36[64];
  *&v49[81] = *&v36[80];
  *&v49[1] = *v36;
  *&v49[17] = *&v36[16];
  v22 = *&v49[128];
  *(a2 + 128) = *&v49[112];
  *(a2 + 144) = v22;
  *(a2 + 160) = *&v49[144];
  v23 = *&v49[64];
  *(a2 + 64) = *&v49[48];
  *(a2 + 80) = v23;
  v24 = *&v49[96];
  *(a2 + 96) = *&v49[80];
  *(a2 + 112) = v24;
  v25 = *v49;
  *a2 = v48;
  *(a2 + 16) = v25;
  v26 = *&v49[32];
  *(a2 + 32) = *&v49[16];
  *(a2 + 48) = v26;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118B8, &unk_238779108);
  sub_23843981C(v19, a2 + *(v27 + 64), &qword_27DF10B10, &unk_238779090);
  sub_23843981C(&v48, &v50, &qword_27DF09308, &qword_238763110);
  sub_238439884(v10, &qword_27DF10B10, &unk_238779090);
  sub_238439884(v19, &qword_27DF10B10, &unk_238779090);
  *&v51[97] = *&v36[96];
  *&v51[113] = *&v36[112];
  v52[0] = *&v36[128];
  *&v51[33] = *&v36[32];
  *&v51[49] = *&v36[48];
  *&v51[65] = *&v36[64];
  *&v51[81] = *&v36[80];
  *&v51[1] = *v36;
  v50 = v20;
  v51[0] = v21;
  *(v52 + 15) = *&v36[143];
  *&v51[17] = *&v36[16];
  sub_238439884(&v50, &qword_27DF09308, &qword_238763110);

  return result;
}

double sub_238620538@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v83 = sub_2387590C0();
  MEMORY[0x28223BE20](v83);
  v81 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2387590B0();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BD20();
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2387595E0();
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_23875B1B0();
  MEMORY[0x28223BE20](v73);
  v16 = sub_23875B0A0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v82 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v76 = *(a1 + 32);
  v77 = v21;
  v22 = *(a1 + 40);
  v74 = v20;
  v75 = v22;
  v71 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  (*(v17 + 16))(v19, a1 + *(v71 + 28), v16);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_238620FB4(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
  sub_238620FB4(&qword_27DF118C0, MEMORY[0x277CC8540], MEMORY[0x277CC8548]);
  v23 = sub_23875DA80();
  v25 = v24;
  v27 = v26;
  sub_23875D8E0();
  v28 = sub_23875DA60();
  v67 = a1;
  v68 = v11;
  v29 = v28;
  v31 = v30;
  v69 = v8;
  v33 = v32;

  sub_2384397FC(v23, v25, v27 & 1);

  sub_23875D890();
  v34 = sub_23875D9E0();
  v36 = v35;
  v38 = v37;
  sub_2384397FC(v29, v31, v33 & 1);

  LODWORD(v95[0]) = sub_23875D420();
  v39 = sub_23875DA20();
  v72 = v40;
  v73 = v41;
  v70 = v42;
  sub_2384397FC(v34, v36, v38 & 1);

  (*(v78 + 16))(v80, v67 + *(v71 + 24), v79);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_238620FB4(&qword_27DF0A030, MEMORY[0x277CC7708], MEMORY[0x277CC76E8]);
  sub_238620FB4(&qword_27DF0A038, MEMORY[0x277CC76F0], MEMORY[0x277CC76F8]);
  v43 = sub_23875DA80();
  v45 = v44;
  LOBYTE(v23) = v46;
  v48 = v47;
  KeyPath = swift_getKeyPath(byte_238779118);
  v50 = sub_23875D820();
  v51 = swift_getKeyPath(byte_238779148);
  v52 = v23 & 1;
  LOBYTE(v95[0]) = v23 & 1;
  LOBYTE(v91) = 0;
  v53 = sub_23875D420();
  LOBYTE(v23) = v70 & 1;
  v88 = v70 & 1;
  *&v91 = v43;
  *(&v91 + 1) = v45;
  LOBYTE(v92) = v52;
  v54 = v90[0];
  *(&v92 + 1) = v90[0];
  DWORD1(v92) = *(v90 + 3);
  *(&v92 + 1) = v48;
  *&v93 = KeyPath;
  *&v94[4] = *&v89[3];
  v55 = *v89;
  *&v94[1] = *v89;
  *(&v93 + 1) = 1;
  v94[0] = 0;
  *&v94[8] = v51;
  *&v94[16] = v50;
  *&v94[24] = v53;
  v56 = v84;
  *v84 = v74;
  v57 = v88;
  v58 = v76;
  *(v56 + 1) = v77;
  *(v56 + 2) = v58;
  v56[24] = v75;
  v59 = v72;
  *(v56 + 4) = v39;
  *(v56 + 5) = v59;
  v56[48] = v57;
  *(v56 + 7) = v73;
  v60 = v91;
  v61 = v92;
  v62 = v93;
  *(v56 + 124) = *&v94[12];
  v63 = *v94;
  *(v56 + 6) = v62;
  *(v56 + 7) = v63;
  *(v56 + 4) = v60;
  *(v56 + 5) = v61;
  v95[0] = v43;
  v95[1] = v45;
  v96 = v52;
  *&v97[3] = *(v90 + 3);
  *v97 = v54;
  v98 = v48;
  v99 = KeyPath;
  v100 = 1;
  v101 = 0;
  *&v102[3] = *&v89[3];
  *v102 = v55;
  v103 = v51;
  v104 = v50;
  v105 = v53;
  v64 = v59;
  sub_23843980C(v39, v59, v23);

  sub_23843981C(&v91, &v87, &qword_27DF09318, &unk_23877D280);
  sub_238439884(v95, &qword_27DF09318, &unk_23877D280);
  sub_2384397FC(v39, v64, v23);

  return result;
}

unint64_t sub_238620D24()
{
  result = qword_27DF118B0;
  if (!qword_27DF118B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF118A0, &qword_238779080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF118B0);
  }

  return result;
}

uint64_t sub_238620D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238620DEC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 16) == *(a2 + 16) && a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v6 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
    if (MEMORY[0x23EE5DB60](a1 + v6[6], a2 + v6[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](a1 + v6[7], a2 + v6[7]))
    {
      v7 = v6[8];
      v8 = a1 + v7;
      v9 = a2 + v7;
      if (MEMORY[0x23EE5FA60](v8, v9))
      {
        v10 = type metadata accessor for ProductImage.ViewModel(0);
        if (sub_238518C1C(*&v8[*(v10 + 20)], *(v9 + *(v10 + 20))))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_238620EF8()
{
  result = qword_27DF118C8;
  if (!qword_27DF118C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF118D0, &unk_238779180);
    sub_238620D24();
    sub_238620FB4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF118C8);
  }

  return result;
}

uint64_t sub_238620FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_238620FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_23844ACFC(a1, a2, a3);
  result = sub_23875CDC0();
  *a4 = v6;
  return result;
}

uint64_t sub_23862104C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_23844ACFC(a1, a2, a3);

  return sub_23875CDD0();
}

uint64_t SavedOrderDetails.init(managedOrder:fulfillmentIdentifier:sourceApplication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = swift_getKeyPath(byte_238779230);
  *(a6 + 48) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = result;
  return result;
}

void *sub_23862110C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  while (v5)
  {
LABEL_4:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 56) + 16 * v10);
    v12 = v11[1];
    if (v12)
    {
      v14 = *(*(a1 + 48) + 8 * v10);
      v31 = *v11;
      swift_bridgeObjectRetain_n();
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_2385477FC();
      v19 = v8[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_22;
      }

      v23 = v18;
      if (v8[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v17;
          sub_23854A0B4();
          v17 = v29;
        }
      }

      else
      {
        sub_2385483BC(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_2385477FC();
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }
      }

      if (v23)
      {
        v25 = (v8[7] + 16 * v17);
        *v25 = v31;
        v25[1] = v12;
      }

      else
      {
        v8[(v17 >> 6) + 8] |= 1 << v17;
        *(v8[6] + 8 * v17) = v15;
        v26 = (v8[7] + 16 * v17);
        *v26 = v31;
        v26[1] = v12;

        v27 = v8[2];
        v21 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v21)
        {
          goto LABEL_23;
        }

        v8[2] = v28;
      }
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v13);
    ++v7;
    if (v5)
    {
      v7 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for PKAnalyticsKey(0);
  result = sub_23875F680();
  __break(1u);
  return result;
}

void SavedOrderDetails.body.getter(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v15[2] = *(v1 + 32);
  v16 = *(v1 + 48);
  v4 = *&v15[0];
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = *(v1 + 48);
  sub_23862196C(v15, v14);
  sub_23862196C(v15, v14);

  v9 = [v4 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118D8, &qword_238779258);
    swift_allocObject();
    v11 = v4;
    v13 = sub_2386280B0(v4, v10, sub_2386218E0, v5, v12);

    *a1 = v13;
    a1[1] = 0;
    a1[2] = sub_238621964;
    a1[3] = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_2386214A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875CDB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758FA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a1;
  sub_238757D90();
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277CC76A8])
  {
    (*(v11 + 96))(v13, v10);
    v14 = *v13;
    v15 = *(a2 + 16);
    v32 = *(a2 + 8);
    v37 = *(a2 + 48);
    v16 = *(a2 + 40);
    v36 = v16;
    v17 = v37;

    sub_23843981C(&v36, &v35, &qword_27DF11A20, &qword_2387794F0);
    if (v17 != 1)
    {
      sub_23875EFF0();
      v18 = v6;
      v19 = sub_23875D730();
      sub_23875C110();

      sub_23875CDA0();
      swift_getAtKeyPath();
      sub_238439884(&v36, &qword_27DF11A20, &qword_2387794F0);
      (*(v7 + 8))(v9, v18);
      v16 = v35;
    }

    v20 = *(a2 + 24);
    v33 = *(a2 + 32);
    v21 = v34;
    v22 = v14;
    sub_2385259B8(v21, v22, v32, v15, 0, a3);
    v23 = type metadata accessor for SavedOrderDetails.ViewModel(0);
    v24 = v23[5];
    v25 = v21;
    v26 = v22;
    sub_23853E82C(v25, v26, a3 + v24);
    v27 = a3 + v23[7];
    *v27 = 1;
    v28 = type metadata accessor for OrderActionsMenuContext(0);
    v29 = v26;
    sub_238757D40();
    v27[v28[6]] = [v25 notificationsEnabled];
    v27[v28[7]] = [v25 isActive];
    v27[v28[8]] = sub_2385BA98C() & 1;
    v27[v28[9]] = [v25 isMarkedAsComplete];
    v27[v28[10]] = sub_238757DC0() & 1;
    LOBYTE(v26) = [v25 automaticUpdatesEnabled];

    v27[v28[11]] = v26;
    sub_238623B7C(v25, v29, v20, v33, v16);
    *(a3 + v23[6]) = v30;
    LOBYTE(v26) = [v25 isActive];

    *(a3 + v23[8]) = v26;
  }

  else
  {
    sub_23875F520();
    __break(1u);
  }
}

uint64_t sub_2386218E8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  sub_2386219A4(a2, a3, a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11968, &qword_2387793D8) + 36);
  sub_238757D40();
  v5 = v4 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  result = swift_getKeyPath(byte_2387793E0);
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

double sub_2386219A4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v61 = a3;
  v4 = sub_23875ED50();
  v62 = sub_23875ED40();
  v51 = v4;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for SavedOrderDetails.ContentItem(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23862F0B8(a1, v7, type metadata accessor for SavedOrderDetails.ContentItem);
  v8 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v60 = v47;
  v59 = *(v8 - 8);
  v49 = *(v59 + 8);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v47 - v50;
  sub_23862F054(v7, v47 - v50);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11970, &unk_238779408);
  v58 = v47;
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v47 - v11;
  v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E78, &unk_238761D00) - 8);
  v54 = v47;
  MEMORY[0x28223BE20](v53);
  v13 = v47 - v12;
  v14 = type metadata accessor for OrderDetails(0);
  v48 = v47;
  MEMORY[0x28223BE20](v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23862F0B8(v10, v16, type metadata accessor for OrderDetails.ViewModel);
  v47[1] = v47;
  MEMORY[0x28223BE20](v17);
  v47[-2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11978, &qword_238779418);
  sub_23862F330(&qword_27DF11980, type metadata accessor for OrderDetails, &unk_23876D558);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11988, &unk_238779420);
  v19 = sub_23843A3E8(&qword_27DF11990, &qword_27DF11988, &unk_238779420, MEMORY[0x277CDDB60]);
  v64 = v18;
  v65 = v19;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  v20 = sub_23862F268(v16, type metadata accessor for OrderDetails);
  MEMORY[0x28223BE20](v20);
  v21 = v50;
  sub_23862F0B8(v10, v47 - v50, type metadata accessor for SavedOrderDetails.ViewModel);
  v22 = v59[80];
  v23 = swift_allocObject();
  v24 = sub_23862F054(v47 - v21, v23 + ((v22 + 16) & ~v22));
  v25 = *(v53 + 11);
  v53 = v13;
  v26 = &v13[v25];
  *v26 = sub_23862F128;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  MEMORY[0x28223BE20](v24);
  v59 = v10;
  sub_23862F0B8(v10, v47 - v21, type metadata accessor for SavedOrderDetails.ViewModel);
  v27 = v52;
  sub_23862196C(v52, &v64);
  v28 = sub_23875ED40();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = MEMORY[0x277D85700];
  v30 = *(v27 + 16);
  *(v29 + 32) = *v27;
  *(v29 + 48) = v30;
  *(v29 + 64) = *(v27 + 32);
  *(v29 + 80) = *(v27 + 48);
  sub_23862F054(v47 - v21, v29 + ((v22 + 81) & ~v22));
  v31 = sub_23875ED80();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v47 - v34;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v50 = sub_23875C830();
    v51 = v47;
    v49 = *(v50 - 8);
    MEMORY[0x28223BE20](v50);
    v52 = v47;
    v48 = v47 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_23875F470();

    v64 = 0xD000000000000031;
    v65 = 0x800000023878DE30;
    v63 = 97;
    v37 = sub_23875F600();
    MEMORY[0x23EE63650](v37);

    v39 = MEMORY[0x28223BE20](v38);
    (*(v32 + 16))(v47 - v34, v35, v31, v39);
    v40 = v48;
    sub_23875C820();
    (*(v32 + 8))(v35, v31);
    v41 = v55;
    sub_2384217C4(v53, v55);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E80, &qword_238779440);
    (*(v49 + 32))(v41 + *(v42 + 36), v40, v50);
  }

  else
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E88, &unk_238761D10);
    v41 = v55;
    v44 = (v55 + *(v43 + 36));
    v45 = sub_23875C6E0();
    (*(v32 + 32))(&v44[*(v45 + 20)], v47 - v34, v31);
    *v44 = &unk_238779438;
    *(v44 + 1) = v29;
    sub_2384217C4(v53, v41);
  }

  (*(v56 + 32))(v61, v41, v57);
  sub_23862F268(v59, type metadata accessor for SavedOrderDetails.ViewModel);

  return result;
}

double sub_2386222A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11988, &unk_238779420);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D270();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119A8, &qword_238779448);
  sub_23843A3E8(&qword_27DF119B0, &qword_27DF119A8, &qword_238779448, MEMORY[0x277CE14C0]);
  sub_23875C990();
  v9 = sub_23843A3E8(&qword_27DF11990, &qword_27DF11988, &unk_238779420, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_238622514@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v59 = a2;
  v56 = type metadata accessor for OrderActionsMenu(0);
  MEMORY[0x28223BE20](v56);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119B8, &qword_238779450);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v47 - v7;
  v8 = sub_23875D2E0();
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderShareLink(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119C0, &qword_238779458);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119C8, &qword_238779460);
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x28223BE20](v18);
  v54 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v24 = v55;
  sub_23862F0B8(v55 + *(v23 + 20), v14, type metadata accessor for OrderShareLink.ViewModel);
  v25 = &v14[v12[5]];
  *v25 = swift_getKeyPath(byte_2387793E0);
  v25[8] = 0;
  v26 = v12[6];
  *&v14[v26] = swift_getKeyPath(asc_238779468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v27 = v12[7];
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v14[v27] = v63;
  sub_23862F330(&qword_27DF119D0, type metadata accessor for OrderShareLink, &unk_23876E024);
  sub_23875DE00();
  sub_23862F268(v14, type metadata accessor for OrderShareLink);
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119D8, &qword_238779498) + 36)] = xmmword_238779190;
  sub_23875E4A0();
  sub_23875C5C0();
  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119E0, &qword_2387794A0) + 36)];
  v29 = v64;
  *v28 = v63;
  *(v28 + 1) = v29;
  *(v28 + 2) = v65;
  v17[*(v15 + 36)] = 0;
  sub_23875D2D0();
  sub_23862F380();
  sub_23862F330(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v30 = v22;
  v48 = v22;
  v31 = v49;
  sub_23875DB30();
  (*(v50 + 8))(v11, v31);
  sub_238439884(v17, &qword_27DF119C0, &qword_238779458);
  sub_23862F0B8(v24 + *(v23 + 28), v3, type metadata accessor for OrderActionsMenuContext);
  v32 = v56;
  v33 = *(v56 + 20);
  *&v3[v33] = swift_getKeyPath(byte_2387794B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v34 = &v3[*(v32 + 24)];
  v60 = 0;
  sub_23875E1A0();
  v35 = v62;
  *v34 = v61;
  *(v34 + 1) = v35;
  sub_23862F330(&qword_27DF11A10, type metadata accessor for OrderActionsMenu, &unk_23876BF54);
  v36 = v57;
  sub_23875DE00();
  sub_23862F268(v3, type metadata accessor for OrderActionsMenu);
  v37 = v51;
  v38 = *(v51 + 16);
  v39 = v54;
  v40 = v30;
  v41 = v52;
  v38(v54, v40, v52);
  v42 = v58;
  sub_23843981C(v36, v58, &qword_27DF119B8, &qword_238779450);
  v43 = v59;
  v38(v59, v39, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A18, &qword_2387794E8);
  sub_23843981C(v42, &v43[*(v44 + 48)], &qword_27DF119B8, &qword_238779450);
  sub_238439884(v36, &qword_27DF119B8, &qword_238779450);
  v45 = *(v37 + 8);
  v45(v48, v41);
  sub_238439884(v42, &qword_27DF119B8, &qword_238779450);
  v45(v39, v41);

  return result;
}

void sub_238622CA4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for SavedOrderDetails.ViewModel(0) + 24));
  v18 = *(v2 + 16);
  if (v18)
  {
    v3 = 0;
    v17 = *MEMORY[0x277D38548];
    v4 = *MEMORY[0x277D383D8];
    v5 = *MEMORY[0x277D384B8];
    while (v3 < *(v2 + 16))
    {
      v6 = *(v2 + 32 + 8 * v3);
      v7 = sub_23875EA80();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 32) = v4;
      *(inited + 16) = xmmword_238763B60;
      *(inited + 40) = v7;
      *(inited + 48) = v9;
      *(inited + 56) = v5;
      strcpy((inited + 64), "orderDetails");
      *(inited + 77) = 0;
      *(inited + 78) = -5120;

      v11 = v4;
      v12 = v5;
      v13 = sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v13;
      sub_2385C3214(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

      ++v3;
      v15 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_23862F330(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
      v16 = sub_23875E910();

      [v15 subject:v17 sendEvent:v16];

      if (v18 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t sub_238622F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[11] = sub_23875ED50();
  v4[12] = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23862301C, v6, v5);
}

uint64_t sub_23862301C()
{
  v1 = v0[10];

  v2 = *(v1 + *(type metadata accessor for SavedOrderDetails.ViewModel(0) + 32));
  if (sub_238623458(v2))
  {
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 connectedScenes];

    sub_238449184(0, &qword_27DF11998, 0x277D75940);
    sub_23862F2C8();
    v5 = sub_23875EE60();

    if ((v5 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_23875F360();
      sub_23875EEA0();
      v5 = v0[2];
      v6 = v0[3];
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[6];
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v11 = ~v10;
      v12 = -v10;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v9 = v13 & *(v5 + 56);

      v7 = v11;
      v8 = 0;
    }

    v14 = (v7 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v15 = v8;
    v16 = v9;
    if (v9)
    {
LABEL_13:
      v17 = (v16 - 1) & v16;
      v18 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
      if (v18)
      {
        while (1)
        {
          sub_23875ED40();
          sub_23875ECE0();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v20 = [v18 activationState];

          if (!v20)
          {
            break;
          }

          v9 = v17;
          if ((v5 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          v19 = sub_23875F3D0();
          if (v19)
          {
            v0[8] = v19;
            swift_dynamicCast();
            v18 = v0[7];
            v17 = v9;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        sub_238434840(v5);

        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          v22 = [objc_allocWithZone(MEMORY[0x277D38B90]) init];
          [v22 requestReviewInScene:v28 trigger:3];

LABEL_26:
          goto LABEL_27;
        }
      }

      else
      {
LABEL_22:
        sub_238434840(v5);
      }

      if (qword_27DF08CD8 == -1)
      {
LABEL_24:
        v21 = sub_23875C1E0();
        __swift_project_value_buffer(v21, qword_27DF2F690);
        v22 = sub_23875C1B0();
        v23 = sub_23875EFE0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2383F8000, v22, v23, "Cannot find active window scene", v24, 2u);
          MEMORY[0x23EE64DF0](v24, -1, -1);
        }

        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v14)
        {
          goto LABEL_22;
        }

        v16 = *(v6 + 8 * v8);
        ++v15;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_27:
  v25 = v0[1];

  return v25();
}

uint64_t sub_238623458(char a1)
{
  v2 = sub_23875BD30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_23875BC40();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  if (a1)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v21 = sub_23875C1E0();
    __swift_project_value_buffer(v21, qword_27DF2F690);
    v22 = sub_23875C1B0();
    v23 = sub_23875EFC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2383F8000, v22, v23, "App Store review prompt not shown since order is still active.", v24, 2u);
      MEMORY[0x23EE64DF0](v24, -1, -1);
    }
  }

  else
  {
    v25 = PKLastReviewPromptDate();
    if (v25)
    {
      v26 = v25;
      sub_23875BBE0();

      v38 = v3;
      v27 = v2;
      v28 = v20;
      v29 = *(v13 + 32);
      v29(v11, v17, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      v29(v28, v11, v12);
      v20 = v28;
      v2 = v27;
      v3 = v38;
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
      sub_23875BAE0();
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        sub_238439884(v11, &qword_27DF12E00, &unk_238763FC0);
      }
    }

    (*(v3 + 104))(v5, *MEMORY[0x277CC9810], v2);
    sub_23875BD40();
    (*(v3 + 8))(v5, v2);
    v30 = v41;
    sub_23875B9E0();
    (*(v39 + 8))(v8, v40);
    sub_23875BBF0();
    v31 = sub_23875BB50();
    v32 = *(v13 + 8);
    v32(v17, v12);
    if (v31)
    {
      v32(v30, v12);
      v32(v20, v12);
      return 1;
    }

    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v34 = sub_23875C1E0();
    __swift_project_value_buffer(v34, qword_27DF2F690);
    v35 = sub_23875C1B0();
    v36 = sub_23875EFC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2383F8000, v35, v36, "App Store review prompt not shown since last review prompt was less than 30 days ago.", v37, 2u);
      MEMORY[0x23EE64DF0](v37, -1, -1);
    }

    v32(v30, v12);
    v32(v20, v12);
  }

  return 0;
}

void sub_238623A14(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v15[2] = *(v1 + 32);
  v16 = *(v1 + 48);
  v4 = *&v15[0];
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = *(v1 + 48);
  sub_23862196C(v15, v14);
  sub_23862196C(v15, v14);

  v9 = [v4 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118D8, &qword_238779258);
    swift_allocObject();
    v11 = v4;
    v13 = sub_2386280B0(v4, v10, sub_23862F984, v5, v12);

    *a1 = v13;
    a1[1] = 0;
    a1[2] = sub_23862F988;
    a1[3] = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_238623B7C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v375 = a5;
  v383 = a2;
  v380 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v347 = v335 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v335 - v10;
  MEMORY[0x28223BE20](v12);
  v345 = v335 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v335 - v15;
  MEMORY[0x28223BE20](v17);
  v338 = v335 - v18;
  MEMORY[0x28223BE20](v19);
  v337 = v335 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A28, &qword_2387794F8);
  MEMORY[0x28223BE20](v21 - 8);
  v336 = v335 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v23 - 8);
  v339 = v335 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v352 = v335 - v26;
  v27 = sub_23875BC40();
  v377 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v353 = v335 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_238758090();
  v378 = *(v29 - 8);
  v379 = v29;
  MEMORY[0x28223BE20](v29);
  v359 = v335 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v31 - 8);
  v381 = v335 - v32;
  v33 = sub_238758D20();
  v370 = *(v33 - 8);
  v371 = v33;
  MEMORY[0x28223BE20](v33);
  v369 = v335 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D648, &unk_238779500);
  MEMORY[0x28223BE20](v35 - 8);
  v372 = v335 - v36;
  v37 = sub_23875A710();
  v367 = *(v37 - 8);
  v368 = v37;
  MEMORY[0x28223BE20](v37);
  v366 = v335 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_23875B940();
  v376 = *(v374 - 8);
  MEMORY[0x28223BE20](v374);
  v364 = v335 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = v335 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = v335 - v44;
  if (a4)
  {

    LODWORD(v365) = sub_23844CC84(a3, a4);
  }

  else
  {
    LODWORD(v365) = 7;
  }

  v46 = sub_23875A540();
  v47 = v46;
  v346 = v11;
  v343 = v42;
  v344 = v16;
  v373 = v27;
  if (v46 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
  {
    v49 = 0;
    v382 = v47 & 0xC000000000000001;
    v50 = (v376 + 56);
    while (1)
    {
      if (v382)
      {
        v51 = MEMORY[0x23EE63F70](v49, v47);
      }

      else
      {
        if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v51 = *(v47 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v54 = [v51 launchURL];
      if (v54)
      {
        v55 = v54;

        v56 = v364;
        sub_23875B8B0();

        v57 = v376 + 32;
        v58 = v56;
        v59 = v374;
        (*(v376 + 32))(v45, v58, v374);
        (*(v57 + 24))(v45, 0, 1, v59);
        sub_238439884(v45, &qword_27DF0D040, &qword_2387676A0);
        v60 = MEMORY[0x277D38528];
        goto LABEL_20;
      }

      (*v50)(v45, 1, 1, v374);
      sub_238439884(v45, &qword_27DF0D040, &qword_2387676A0);
      ++v49;
      if (v53 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v60 = MEMORY[0x277D38520];
LABEL_20:
  v61 = sub_23875A540();
  v62 = v61;
  v382 = v60;
  if (v61 >> 62)
  {
    goto LABEL_34;
  }

  for (j = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23875F3A0())
  {
    v64 = 0;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x23EE63F70](v64, v62);
      }

      else
      {
        if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v65 = *(v62 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v68 = [v65 customProductPageIdentifier];
      if (v68)
      {
        v69 = v68;

        v70 = MEMORY[0x277D38528];
        goto LABEL_36;
      }

      ++v64;
      if (v67 == j)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  v70 = MEMORY[0x277D38520];
LABEL_36:
  v364 = v70;
  v71 = v383;
  v72 = sub_23875A540();
  if (v72 >> 62)
  {
    goto LABEL_53;
  }

  for (k = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23875F3A0())
  {

    v74 = [v71 payment];
    v75 = MEMORY[0x277D38520];
    v363 = k;
    if (!v74)
    {
      break;
    }

    v76 = v74;
    v77 = sub_238758FC0();

    if (v77 >> 62)
    {
      v71 = sub_23875F3A0();
      if (!v71)
      {
LABEL_55:

        v75 = MEMORY[0x277D38520];
        break;
      }
    }

    else
    {
      v71 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_55;
      }
    }

    v78 = 0;
    while (1)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x23EE63F70](v78, v77);
      }

      else
      {
        if (v78 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v79 = *(v77 + 8 * v78 + 32);
      }

      v80 = v79;
      v81 = (v78 + 1);
      if (__OFADD__(v78, 1))
      {
        break;
      }

      v82 = [v79 receiptName];
      if (v82)
      {
        v83 = v82;

        v75 = MEMORY[0x277D38528];
        goto LABEL_56;
      }

      ++v78;
      if (v81 == v71)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_56:
  v84 = v366;
  v85 = sub_238757D40();
  v86 = *(v375 + 16);
  MEMORY[0x28223BE20](v85);
  v335[-2] = v84;
  v87 = (*(*v86 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v86 + v87));
  sub_23862F63C(&v385);
  os_unfair_lock_unlock((v86 + v87));
  v361.i64[0] = v385;
  v360.i64[0] = v386;
  (*(v367 + 1))(v84, v368);
  v88 = v372;
  sub_23875A500();
  v89 = sub_23875A4E0();
  LODWORD(v368) = (*(*(v89 - 8) + 48))(v88, 1, v89);
  sub_238439884(v88, &qword_27DF0D648, &unk_238779500);
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD60, &qword_2387744A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387791A0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = xmmword_2387791B0;
  *(inited + 56) = sub_23875EA50();
  v91 = v369;
  sub_23875A570();
  v93 = v370;
  v92 = v371;
  v94 = (*(v370 + 88))(v91, v371);
  v95 = *MEMORY[0x277CC7480];
  *&v362 = v75;
  v375 = inited + 32;
  if (v94 == v95)
  {
    v96 = xmmword_2387791C0;
    v97 = v381;
  }

  else
  {
    v97 = v381;
    if (v94 == *MEMORY[0x277CC7490])
    {
      v96 = xmmword_2387791D0;
    }

    else if (v94 == *MEMORY[0x277CC7488])
    {
      v96 = xmmword_2387791E0;
    }

    else
    {
      (*(v93 + 8))(v91, v92);
      v96 = 0uLL;
    }
  }

  v381 = 0;
  v98 = MEMORY[0x277D38528];
  *(inited + 64) = v96;
  *(inited + 80) = sub_23875EA50();
  v99 = [v383 statusDescription];
  if (v99)
  {
    v100 = v99;
    v101 = v98;
    v102 = sub_23875EA80();
    v104 = v103;
  }

  else
  {
    v101 = v98;
    v102 = sub_23875EA80();
    v104 = v105;
  }

  *(inited + 88) = v102;
  *(inited + 96) = v104;
  *(inited + 104) = sub_23875EA50();
  v106 = v383;
  v107 = [v383 orderNumber];
  if (v107)
  {
    v108 = v107;
    v109 = sub_23875EA80();
    v111 = v110;
  }

  else
  {
    v109 = 0;
    v111 = 0;
  }

  v112 = sub_2385C0B98(v109, v111);
  v114 = v113;

  *(inited + 112) = v112;
  *(inited + 120) = v114;
  *(inited + 128) = sub_23875EA50();
  v115 = [v106 merchant];
  v116 = [v115 logoName];

  if (v116)
  {
    v117 = sub_23875EA80();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0;
  }

  v120 = sub_2385C0B98(v117, v119);
  v122 = v121;

  *(inited + 136) = v120;
  *(inited + 144) = v122;
  *(inited + 152) = sub_23875EA50();
  v123 = [v106 payment];
  if (v123)
  {
    v124 = v123;
    sub_238758FD0();

    v125 = 0;
  }

  else
  {
    v125 = 1;
  }

  (*(v378 + 56))(v97, v125, 1, v379);
  v126 = sub_23875EA80();
  v128 = v127;
  sub_238439884(v97, &unk_27DF0B080, &unk_2387662A0);
  *(inited + 160) = v126;
  *(inited + 168) = v128;
  *(inited + 176) = sub_23875EA50();
  v129 = v383;
  sub_23843B030(v380);
  *(inited + 184) = v130;
  *(inited + 192) = v131;
  *(inited + 200) = sub_23875EA50();
  v132 = [v129 merchant];
  sub_238759210();

  *(inited + 208) = sub_23875EA80();
  *(inited + 216) = v133;
  *(inited + 224) = sub_23875EA50();
  v134 = sub_23875A540();
  if (v134 >> 62)
  {
    v140 = v134;
    v141 = sub_23875F3A0();
    v134 = v140;
    if (v141)
    {
      goto LABEL_77;
    }

LABEL_82:

    v137 = sub_23875EA80();
    v139 = v142;
    goto LABEL_83;
  }

  if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

LABEL_77:
  if ((v134 & 0xC000000000000001) != 0)
  {
    v135 = MEMORY[0x23EE63F70](0);
  }

  else
  {
    if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_180;
    }

    v135 = *(v134 + 32);
  }

  v136 = v135;

  v137 = sub_23875EA80();
  v139 = v138;

LABEL_83:
  *(inited + 232) = v137;
  *(inited + 240) = v139;
  *(inited + 248) = sub_23875EA50();
  v143 = v383;
  *(inited + 256) = sub_23843AD74();
  *(inited + 264) = v144;
  *(inited + 272) = sub_23875EA50();
  v145 = [v143 payment];
  if (v145)
  {
    v146 = v145;
    v147 = v359;
    sub_238758FD0();

    v148 = sub_238758040();
    v150 = v149;
    (*(v378 + 8))(v147, v379);
  }

  else
  {
    v150 = 0xE700000000000000;
    v148 = 0x6E776F6E6B6E75;
  }

  *(inited + 280) = v148;
  *(inited + 288) = v150;
  *(inited + 296) = sub_23875EA50();
  sub_23875A4F0();

  *(inited + 304) = sub_23875EA80();
  *(inited + 312) = v151;
  *(inited + 320) = sub_23875EA50();
  *(inited + 328) = sub_23843B254();
  *(inited + 336) = v152;
  *(inited + 344) = sub_23875EA50();
  if (v365 <= 3u)
  {
    if (v365 > 1u)
    {
      if (v365 == 2)
      {
        v153 = 0xE600000000000000;
        v154 = 0x746567646977;
      }

      else
      {
        v153 = 0xE400000000000000;
        v154 = 1818845549;
      }
    }

    else if (v365)
    {
      v153 = 0x800000023878E100;
      v154 = 0xD000000000000014;
    }

    else
    {
      v153 = 0xE600000000000000;
      v154 = 0x697261666173;
    }

    v155 = v363;
    goto LABEL_101;
  }

  if (v365 <= 5u)
  {
    v155 = v363;
    if (v365 == 4)
    {
      v153 = 0xE800000000000000;
      v154 = 0x6567617373654D69;
    }

    else
    {
      v153 = 0xE400000000000000;
      v154 = 1936744813;
    }

    goto LABEL_101;
  }

  v155 = v363;
  if (v365 == 6)
  {
    v153 = 0xE500000000000000;
    v154 = 0x7070416E69;
LABEL_101:
    *(inited + 352) = v154;
    *(inited + 360) = v153;
    goto LABEL_102;
  }

  *(inited + 352) = 0;
  *(inited + 360) = 0;
LABEL_102:
  *(inited + 368) = sub_23875EA50();
  *(inited + 376) = sub_23875EA80();
  *(inited + 384) = v156;
  *(inited + 392) = sub_23875EA50();
  v157 = v101;
  if (v155 < 2)
  {
    v385 = v155;
    v159 = sub_23875F600();
  }

  else
  {
    v384[0] = 1;
    v385 = sub_23875F600();
    v386 = v158;
    MEMORY[0x23EE63650](43, 0xE100000000000000);
    v159 = v385;
    v160 = v386;
  }

  *(inited + 400) = v159;
  *(inited + 408) = v160;
  *(inited + 416) = sub_23875EA50();
  v161 = v383;
  v162 = [v383 createdDate];
  v163 = v353;
  sub_23875BBE0();

  v164 = sub_23844C544(v163);
  v166 = v165;
  v168 = v377 + 8;
  v167 = *(v377 + 8);
  v169 = v373;
  v167(v163, v373);
  *(inited + 424) = v164;
  *(inited + 432) = v166;
  *(inited + 440) = sub_23875EA50();
  v170 = [v161 updatedDate];
  sub_23875BBE0();

  v171 = sub_23844C544(v163);
  v173 = v172;
  v350 = v167;
  v351 = v168;
  v167(v163, v169);
  *(inited + 448) = v171;
  *(inited + 456) = v173;
  *(inited + 464) = sub_23875EA50();
  *(inited + 472) = sub_23875EA80();
  *(inited + 480) = v174;
  *(inited + 488) = sub_23875EA50();
  *(inited + 496) = sub_23875EA80();
  *(inited + 504) = v175;
  *(inited + 512) = sub_23875EA50();
  *(inited + 520) = v361.i64[0];
  *(inited + 528) = v360.i64[0];
  *(inited + 536) = sub_23875EA50();
  v176 = v157;
  *(inited + 544) = sub_23875EA80();
  *(inited + 552) = v177;
  *(inited + 560) = sub_23875EA50();
  v178 = [v161 merchant];
  v179 = [v178 displayName];

  v180 = sub_2387586A0();
  v182 = v181;

  *(inited + 568) = v180;
  *(inited + 576) = v182;
  *(inited + 584) = sub_23875EA50();
  *(inited + 592) = xmmword_2387791F0;
  v183 = sub_23854BB54(inited);
  swift_setDeallocating();
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD68, &qword_2387744A8);
  swift_arrayDestroy();
  v184 = sub_23862110C(v183);

  v185 = sub_23875EA50();
  v186 = sub_238757DE0();
  if (!(v186 >> 62))
  {
    if (*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_113:

    v189 = sub_23875EA80();
    v191 = v194;
    goto LABEL_114;
  }

  v192 = v186;
  v193 = sub_23875F3A0();
  v186 = v192;
  if (!v193)
  {
    goto LABEL_113;
  }

LABEL_107:
  if ((v186 & 0xC000000000000001) != 0)
  {
    v187 = MEMORY[0x23EE63F70](0);
    goto LABEL_110;
  }

  if (!*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v187 = *(v186 + 32);
LABEL_110:
  v188 = v187;

  v189 = sub_23875EA80();
  v191 = v190;

LABEL_114:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v385 = v184;
  sub_2386CCCEC(v189, v191, v185, isUniquelyReferenced_nonNull_native);

  v196 = v385;
  v197 = *(sub_23875A4F0() + 16);

  if (!v197)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
    v334 = swift_allocObject();
    *(v334 + 16) = xmmword_2387632F0;
    *(v334 + 32) = v196;
    return;
  }

  v198 = sub_23875A4F0();
  v199 = v198;
  v200 = *(v198 + 16);
  if (!v200)
  {
LABEL_174:

    return;
  }

  v368 = "poweredByPlatformProvided";
  v369 = "orderEmailAvailable";
  v366 = "trackingNumberSpecified";
  v367 = "fulfillmentStatus";
  v357 = "deliveryETASpecified";
  v358 = "productIconCount";
  v364 = "pickupLocationSpecified";
  v365 = "trackingUrlSpecified";
  v355 = "orderShippingAddressSpecified";
  v356 = "pickupBarcodeSpecified";
  v354 = "howToPickupSpecified";
  v363 = "pickupDurationSpecified";
  v382 = *v176;
  v201 = (v376 + 56);
  v376 = v377 + 56;
  v375 = v377 + 48;
  v349 = (v377 + 32);
  v335[1] = "productSubtitleSpecified";
  v341 = "carrierSpecified";
  v342 = v201;
  v340 = "daysSinceDelivered";
  v202 = MEMORY[0x277D84F90];
  v203 = 32;
  v362 = xmmword_238779200;
  v361 = xmmword_238779210;
  v360 = xmmword_238779220;
  v359 = v196;
  v370 = v198;
  while (1)
  {
    v379 = v202;
    v380 = v200;
    v378 = v203;
    v204 = *(v199 + v203);
    v205 = swift_allocObject();
    *(v205 + 16) = v362;
    v206 = (v204 & 0x7FFFFFFFFFFFFFFFLL);
    *(v205 + 32) = sub_23875EA50();
    v377 = v205 + 32;
    *(v205 + 40) = sub_23843A644(v204);
    *(v205 + 48) = v207;
    v208 = sub_23875EA50();
    v209 = vdup_n_s32(v204 >= 0);
    *(v205 + 56) = v208;
    v210.i64[0] = v209.u32[0];
    v210.i64[1] = v209.u32[1];
    *(v205 + 64) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v210, 0x3FuLL)), v360, v361);
    *(v205 + 80) = sub_23875EA50();
    *(v205 + 88) = sub_23843A430();
    *(v205 + 96) = v211;
    *(v205 + 104) = sub_23875EA50();
    v383 = v206;
    if (v204 < 0)
    {
      *(v205 + 112) = 0;
      *(v205 + 120) = 0;
      v220 = 0;
      v221 = 0;
      *(v205 + 128) = sub_23875EA50();
    }

    else
    {
      v212 = v343;
      v213 = v206;
      v214 = v204;
      v215 = [v214 trackingNumber];
      if (v215)
      {
        v216 = v215;
        v217 = sub_23875EA80();
        v219 = v218;
      }

      else
      {

        v217 = 0;
        v219 = 0;
      }

      v222 = sub_23875EA80();
      v224 = v223;

      sub_23862F658(v217, v219);
      *(v205 + 112) = v222;
      *(v205 + 120) = v224;
      *(v205 + 128) = sub_23875EA50();
      v225 = v213;
      v226 = [v214 trackingURL];
      if (v226)
      {
        v227 = v212;
        v228 = v226;
        sub_23875B8B0();

        v229 = 0;
      }

      else
      {
        v229 = 1;
        v227 = v212;
      }

      v206 = v383;
      (*v342)(v227, v229, 1, v374);
      sub_238439884(v227, &qword_27DF0D040, &qword_2387676A0);

      v220 = sub_23875EA80();
      v221 = v230;
    }

    *(v205 + 136) = v220;
    *(v205 + 144) = v221;
    *(v205 + 152) = sub_23875EA50();
    if (v204 < 0)
    {
      *(v205 + 160) = 0;
      *(v205 + 168) = 0;
      v242 = 0;
      v243 = 0;
      *(v205 + 176) = sub_23875EA50();
    }

    else
    {
      v231 = v204;
      v232 = v352;
      sub_23875AA20();
      sub_238439884(v232, &qword_27DF0D5D0, &unk_238770FE0);
      v233 = sub_23875EA80();
      v235 = v234;

      *(v205 + 160) = v233;
      *(v205 + 168) = v235;
      *(v205 + 176) = sub_23875EA50();
      v236 = v206;
      v237 = [v231 recipientFamilyName];
      if (v237)
      {
        v238 = v237;
        v239 = sub_23875EA80();
        v241 = v240;
      }

      else
      {

        v239 = 0;
        v241 = 0;
      }

      v242 = sub_23875EA80();
      v243 = v244;

      sub_23862F658(v239, v241);
    }

    *(v205 + 184) = v242;
    *(v205 + 192) = v243;
    *(v205 + 200) = sub_23875EA50();
    if (v204 < 0)
    {
      v247 = v383;
      v248 = [v247 barcode];
      v249 = sub_23875EA80();
      v251 = v250;

      *(v205 + 208) = v249;
      *(v205 + 216) = v251;
      *(v205 + 224) = sub_23875EA50();
      v252 = v247;
      v253 = [v252 address];
      v245 = sub_23875EA80();
      v246 = v254;
    }

    else
    {
      *(v205 + 208) = 0;
      *(v205 + 216) = 0;
      v245 = 0;
      v246 = 0;
      *(v205 + 224) = sub_23875EA50();
    }

    v255 = v373;
    *(v205 + 232) = v245;
    *(v205 + 240) = v246;
    *(v205 + 248) = sub_23875EA50();
    if (v204 < 0)
    {
      v262 = v383;
      v263 = [v262 notes];
      v264 = sub_23875EA80();
      v266 = v265;

      *(v205 + 256) = v264;
      *(v205 + 264) = v266;
      v267 = sub_23875EA50();
      *(v205 + 280) = 0;
      *(v205 + 288) = 0;
      *(v205 + 272) = v267;
      *(v205 + 296) = sub_23875EA50();
      v268 = v262;
      v269 = v339;
      v348 = v268;
      sub_23875A7B0();
      v270 = v269;
      v271 = sub_23875AEB0();
      v272 = *(v271 - 8);
      if ((*(v272 + 48))(v270, 1, v271) == 1)
      {
        v273 = sub_23875B2B0();
        v274 = v336;
        (*(*(v273 - 8) + 56))(v336, 1, 1, v273);
      }

      else
      {
        v280 = v352;
        sub_23843981C(v270, v352, &qword_27DF0D5D0, &unk_238770FE0);
        v274 = v336;
        sub_23875AE70();
        v270 = v339;
        v281 = v280;
        v255 = v373;
        (*(v272 + 8))(v281, v271);
      }

      sub_238439884(v270, &qword_27DF0D5D0, &unk_238770FE0);
      sub_238439884(v274, &qword_27DF11A28, &qword_2387794F8);
      v278 = sub_23875EA80();
      v279 = v282;
    }

    else
    {
      *(v205 + 256) = 0;
      *(v205 + 264) = 0;
      *(v205 + 272) = sub_23875EA50();
      v256 = v383;
      v257 = [v204 carrier];
      if (v257)
      {
        v258 = v257;
        v259 = sub_23875EA80();
        v261 = v260;
      }

      else
      {

        v259 = 0;
        v261 = 0;
      }

      v275 = sub_23875EA80();
      v277 = v276;

      sub_23862F658(v259, v261);
      *(v205 + 280) = v275;
      *(v205 + 288) = v277;
      v278 = 0;
      v279 = 0;
      *(v205 + 296) = sub_23875EA50();
    }

    *(v205 + 304) = v278;
    *(v205 + 312) = v279;
    *(v205 + 320) = sub_23875EA50();
    *(v205 + 328) = sub_23843A7EC(v204);
    *(v205 + 336) = v283;
    *(v205 + 344) = sub_23875EA50();
    *(v205 + 352) = sub_23843A7F8(v204);
    *(v205 + 360) = v284;
    *(v205 + 368) = sub_23875EA50();
    *(v205 + 376) = sub_23843A894(v204);
    *(v205 + 384) = v285;
    v286 = sub_23854BB54(v205);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v287 = sub_23862110C(v286);

    v385 = v287;
    if (v204 < 0)
    {
      v293 = [v383 pickedUpDate];
      v294 = v337;
      if (v293)
      {
        v295 = v293;
        sub_23875BBE0();

        v296 = 0;
      }

      else
      {
        v296 = 1;
      }

      (*v376)(v294, v296, 1, v255);
      v322 = v338;
      sub_23843981C(v294, v338, &qword_27DF12E00, &unk_238763FC0);
      if ((*v375)(v322, 1, v255) == 1)
      {
        sub_238439884(v294, &qword_27DF12E00, &unk_238763FC0);
        v323 = 0;
        v324 = 0;
      }

      else
      {
        v325 = v353;
        (*v349)(v353, v322, v255);
        v323 = sub_23844C544(v325);
        v324 = v326;
        v350(v325, v255);
        sub_238439884(v294, &qword_27DF12E00, &unk_238763FC0);
      }

      v315 = v359;
      v316 = v383;
      v321 = sub_23875EA50();
      v319 = v323;
      v320 = v324;
    }

    else
    {
      v288 = v204;
      v289 = [v288 deliveryDate];
      v290 = v344;
      if (v289)
      {
        v291 = v289;
        sub_23875BBE0();

        v292 = 0;
      }

      else
      {
        v292 = 1;
      }

      v297 = *v376;
      (*v376)(v290, v292, 1, v255);
      v298 = v345;
      sub_23843981C(v290, v345, &qword_27DF12E00, &unk_238763FC0);
      v299 = *v375;
      if ((*v375)(v298, 1, v255) == 1)
      {
        sub_238439884(v290, &qword_27DF12E00, &unk_238763FC0);
        v300 = 0;
        v301 = 0;
      }

      else
      {
        v302 = v353;
        (*v349)(v353, v298, v255);
        v300 = sub_23844C544(v302);
        v301 = v303;
        v350(v302, v255);
        sub_238439884(v290, &qword_27DF12E00, &unk_238763FC0);
      }

      v304 = sub_23875EA50();
      sub_2386C41A8(v300, v301, v304);
      v305 = [v288 shippedDate];
      if (v305)
      {
        v306 = v346;
        v307 = v305;
        sub_23875BBE0();

        v308 = 0;
      }

      else
      {
        v308 = 1;
        v306 = v346;
      }

      v297(v306, v308, 1, v255);
      v309 = v347;
      sub_23843981C(v306, v347, &qword_27DF12E00, &unk_238763FC0);
      if (v299(v309, 1, v255) == 1)
      {
        sub_238439884(v306, &qword_27DF12E00, &unk_238763FC0);
        v310 = 0;
        v311 = 0;
      }

      else
      {
        v312 = v353;
        (*v349)(v353, v309, v255);
        v310 = sub_23844C544(v312);
        v313 = v306;
        v311 = v314;
        v350(v312, v255);
        sub_238439884(v313, &qword_27DF12E00, &unk_238763FC0);
      }

      v315 = v359;
      v316 = v383;
      v317 = sub_23875EA50();
      sub_2386C41A8(v310, v311, v317);
      v318 = sub_23875EA50();
      v319 = (sub_23875AA00() & 1) != 0 ? 0x79726576696C6564 : 0x676E697070696873;
      v320 = 0xE800000000000000;
      v321 = v318;
    }

    sub_2386C41A8(v319, v320, v321);
    v327 = v381;

    v328 = v385;

    v329 = swift_isUniquelyReferenced_nonNull_native();
    v384[0] = v315;
    sub_2385C33E4(v328, sub_2386E31DC, 0, v329, v384);

    v330 = v384[0];
    v202 = v379;
    if (v327)
    {
      break;
    }

    v331 = swift_isUniquelyReferenced_nonNull_native();
    v381 = 0;
    if ((v331 & 1) == 0)
    {
      v202 = sub_2384989EC(0, v202[2] + 1, 1, v202);
    }

    v333 = v202[2];
    v332 = v202[3];
    if (v333 >= v332 >> 1)
    {
      v202 = sub_2384989EC((v332 > 1), v333 + 1, 1, v202);
    }

    v202[2] = v333 + 1;
    v202[v333 + 4] = v330;
    v203 = v378 + 8;
    v200 = v380 - 1;
    v199 = v370;
    if (v380 == 1)
    {
      goto LABEL_174;
    }
  }

LABEL_181:

  __break(1u);
}

uint64_t sub_238626118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(*a1 + 104);
  swift_beginAccess();
  sub_23862F8F0(a2, a1 + v8, a3, a4);
  return swift_endAccess();
}

char *sub_2386261A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderArchiveMonthContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F6C8;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_116;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_2386266D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F894;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_166;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238626C04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862EE94;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_38;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_23862712C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  active = type metadata accessor for OrderListContent.ActiveContentItem(0);
  v11 = *(*(active - 8) + 56);
  v11(&v4[v9], 1, 1, active);
  v11(&v4[*(*v4 + 112)], 1, 1, active);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F838;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_156;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238627654(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F7DC;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_146;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238627B7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F66C;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_106;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_2386280B0(void *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = *(*v5 + 104);
  v11 = type metadata accessor for SavedOrderDetails.ContentItem(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v5[v10], 1, 1, v11);
  v12(&v5[*(*v5 + 112)], 1, 1, v11);
  v13 = *(*v5 + 120);
  *&v5[v13] = 0;
  v14 = &v5[*(*v5 + 128)];
  *(v14 + 4) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  sub_23875BEC0();
  v15 = *&v5[v13];
  *&v5[v13] = a1;
  v40 = a1;

  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  v16 = objc_opt_self();

  v41 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v46[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v46[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v39 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862EFF8;
  *(v21 + 24) = v18;
  sub_23843981C(v46, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v43 + 1));
    v38 = &v38;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = MEMORY[0x28223BE20](v23);
    v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);

    v29 = sub_23875F620();
    (*(v25 + 8))(v28, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v29 = 0;
  }

  v44 = sub_23862F9B8;
  v45 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_23862ED54;
  *(&v43 + 1) = &block_descriptor_76;
  v30 = _Block_copy(&aBlock);

  v31 = [v41 addObserverForName:v17 object:v29 queue:v20 usingBlock:v30];
  _Block_release(v30);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v46, &qword_27DF0A4A8, &qword_238767840);
  v33 = &v5[*(*v5 + 128)];
  swift_beginAccess();
  if (*v33)
  {
    v34 = *(v33 + 1);
    aBlock = *v33;
    v43 = v34;
    v44 = *(v33 + 4);
    v35 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v44);
    v36 = v35;
    [v36 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v33 = v41;
  *(v33 + 1) = v31;
  *(v33 + 1) = aBlock;
  *(v33 + 4) = ObjectType;
  swift_endAccess();
  return v5;
}

uint64_t sub_238628600(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_238628648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2386286A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedOrderDetails.ViewModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm_0);
}

uint64_t sub_238628720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SavedOrderDetails.ViewModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm_0);
}

uint64_t sub_2386287A8(uint64_t a1)
{
  result = type metadata accessor for SavedOrderDetails.ViewModel(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OrderShareLink.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for OrderActionsMenuContext(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderDetails.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for OrderShareLink.ViewModel(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for OrderActionsMenuContext(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_238628B5C(uint64_t a1)
{
  type metadata accessor for OrderDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OrderShareLink.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_2385C3738(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OrderActionsMenuContext(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *sub_238628C18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238758BB0();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862EF40;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_56;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629140(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238757B60();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862EF9C;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_66;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629668(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238758680();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862A654;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862EE48;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_12;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629B90(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  active = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  v11 = *(*(active - 8) + 56);
  v11(&v4[v9], 1, 1, active);
  v11(&v4[*(*v4 + 112)], 1, 1, active);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F780;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_136;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_23862A0B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_23875BEC0();
  v14 = *&v4[v12];
  *&v4[v12] = a1;
  v39 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v15 = objc_opt_self();

  v40 = [v15 defaultCenter];
  v16 = *MEMORY[0x277CBE1A0];
  v45[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v45[0] = a2;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_opt_self();
  v38 = a2;

  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23862F724;
  *(v20 + 24) = v17;
  sub_23843981C(v45, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v21 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v42 + 1));
    v37 = &v37;
    v23 = v16;
    v24 = *(v21 - 8);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);

    v28 = sub_23875F620();
    (*(v24 + 8))(v27, v21);
    v16 = v23;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v28 = 0;
  }

  v43 = sub_23862F9B8;
  v44 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_23862ED54;
  *(&v42 + 1) = &block_descriptor_126;
  v29 = _Block_copy(&aBlock);

  v30 = [v40 addObserverForName:v16 object:v28 queue:v19 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v45, &qword_27DF0A4A8, &qword_238767840);
  v32 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v32)
  {
    v33 = *(v32 + 1);
    aBlock = *v32;
    v42 = v33;
    v43 = *(v32 + 4);
    v34 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v43);
    v35 = v34;
    [v35 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v32 = v40;
  *(v32 + 1) = v30;
  *(v32 + 1) = aBlock;
  *(v32 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

double sub_23862A5E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  return result;
}

void sub_23862A684()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A50, &unk_238779520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = type metadata accessor for OrderArchiveMonthContentItem(0);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238759C20();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11A58, &qword_27DF0CE38, &qword_23876C678, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11A50, &unk_238779520);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11A50, &unk_238779520);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862AC68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AB0, &qword_238779568);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_23875A4C0();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11AB8, &qword_27DF0DA50, &qword_238779570, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11AB0, &qword_238779568);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11AB0, &qword_238779568);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862B258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11928, &qword_2387793C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238759480();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11930, &qword_27DF0FD10, &qword_2387743E8, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11928, &qword_2387793C0);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11928, &qword_2387793C0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862B83C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AA0, &qword_238779560);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          active = type metadata accessor for OrderListContent.ActiveContentItem(0);
                          v30 = *(active - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, active);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238759C20();
                          *(&v34 - 1) = active;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11AA8, &qword_27DF10D70, &qword_238776C48, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11AA0, &qword_238779560);
                          v35(v4, 1, 1, active);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11AA0, &qword_238779560);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862BE20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A90, &unk_238779550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238759C20();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11A98, &qword_27DF10D48, &unk_238776BF0, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11A90, &unk_238779550);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11A90, &unk_238779550);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}