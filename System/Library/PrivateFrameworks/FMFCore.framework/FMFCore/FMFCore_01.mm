uint64_t sub_24A38F514()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24A42AC94;
  }

  else
  {
    v2 = sub_24A38F628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A38F644()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_8:

    v19 = v0[1];

    return v19();
  }

  (*(v3 + 32))(v0[15], v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    goto LABEL_8;
  }

  v5 = Strong;
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  *(Strong + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences) = sub_24A4AAF40();

  sub_24A38F8A0();
  sub_24A39FD18();

  (*(v7 + 8))(v6, v8);
  v9 = sub_24A38D32C(&unk_27EF402A0, MEMORY[0x277D091D8], MEMORY[0x277D091E0]);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_24A38F514;
  v11 = v0[16];
  v12 = v0[17];

  return MEMORY[0x282200308](v11, v12, v9);
}

uint64_t sub_24A38F8A0()
{
  v1 = type metadata accessor for FMFLocationAlert(0);
  v170 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v145 = (&v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v147 = (&v144 - v4);
  MEMORY[0x28223BE20](v5);
  v146 = (&v144 - v6);
  MEMORY[0x28223BE20](v7);
  v144 = (&v144 - v8);
  v9 = sub_24A4AAEF0();
  v149 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v144 - v13;
  v15 = sub_24A4AB1B0();
  v171 = *(v15 - 8);
  v172 = v15;
  MEMORY[0x28223BE20](v15);
  v169 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v155 = &v144 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v144 - v20;
  MEMORY[0x28223BE20](v22);
  v156 = &v144 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v144 - v25;
  MEMORY[0x28223BE20](v27);
  v157 = &v144 - v28;
  MEMORY[0x28223BE20](v29);
  v151 = &v144 - v30;
  MEMORY[0x28223BE20](v31);
  v158 = &v144 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v144 - v34;
  v36 = sub_24A4AA700();
  v173[3] = v36;
  v173[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v37 = sub_24A38D3BC(v173);
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D089F8], v36);
  LOBYTE(v36) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v173);
  if (v36)
  {
    v166 = v26;
    v161 = v21;
    v150 = v0;
    v148 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences;
    v39 = *(*(v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences) + 16);

    v164 = v39;
    if (v39)
    {
      v40 = 0;
      v162 = (v171 + 16);
      LODWORD(v168) = *MEMORY[0x277D091C8];
      v167 = (v149 + 104);
      v41 = (v149 + 8);
      v160 = v171 + 8;
      v154 = (v171 + 32);
      v159 = MEMORY[0x277D84F90];
      v163 = result;
      while (v40 < *(result + 16))
      {
        v165 = (*(v171 + 80) + 32) & ~*(v171 + 80);
        v42 = *(v171 + 72);
        (*(v171 + 16))(v35, result + v165 + v42 * v40, v172);
        sub_24A4AB070();
        v43 = *v167;
        (*v167)(v11, v168, v9);
        v44 = sub_24A4AAEE0();
        v45 = v35;
        v46 = *v41;
        (*v41)(v11, v9);
        v46(v14, v9);
        if (v44 & 1) != 0 && (sub_24A4AB180(), v43(v11, v168, v9), v47 = sub_24A4AAEE0(), v46(v11, v9), v46(v14, v9), (v47))
        {
          v153 = *v154;
          v153(v158, v45, v172);
          v48 = v159;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v173[0] = v48;
          v35 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v48 + 16) + 1, 1);
            v48 = v173[0];
          }

          v51 = *(v48 + 16);
          v50 = *(v48 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_24A3DBE2C((v50 > 1), v51 + 1, 1);
            v48 = v173[0];
          }

          *(v48 + 16) = v51 + 1;
          v159 = v48;
          v153((v48 + v165 + v51 * v42), v158, v172);
        }

        else
        {
          (*v160)(v45, v172);
          v35 = v45;
        }

        ++v40;
        result = v163;
        if (v164 == v40)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v159 = MEMORY[0x277D84F90];
LABEL_15:

    v52 = *(*(v150 + v148) + 16);

    v165 = v52;
    if (v52)
    {
      v53 = 0;
      v163 = v171 + 16;
      LODWORD(v162) = *MEMORY[0x277D091C8];
      v168 = (v149 + 104);
      v54 = (v149 + 8);
      LODWORD(v154) = *MEMORY[0x277D091D0];
      v160 = v171 + 8;
      v153 = (v171 + 32);
      v158 = MEMORY[0x277D84F90];
      v55 = v151;
      v164 = result;
      while (v53 < *(result + 16))
      {
        v167 = ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v57 = *(v171 + 72);
        (*(v171 + 16))(v55, &v167[result + v57 * v53], v172);
        sub_24A4AB070();
        v58 = *v168;
        (*v168)(v11, v162, v9);
        v59 = sub_24A4AAEE0();
        v60 = *v54;
        (*v54)(v11, v9);
        v60(v14, v9);
        if (v59 & 1) != 0 && (sub_24A4AB180(), v58(v11, v154, v9), v61 = sub_24A4AAEE0(), v60(v11, v9), v60(v14, v9), (v61))
        {
          v62 = *v153;
          (*v153)(v157, v55, v172);
          v63 = v158;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v173[0] = v63;
          v152 = v62;
          if ((v64 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v63 + 16) + 1, 1);
            v63 = v173[0];
          }

          v65 = v167;
          v67 = *(v63 + 16);
          v66 = *(v63 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_24A3DBE2C((v66 > 1), v67 + 1, 1);
            v63 = v173[0];
          }

          *(v63 + 16) = v67 + 1;
          v158 = v63;
          v152(&v65[v63 + v67 * v57], v157, v172);
          v55 = v151;
        }

        else
        {
          (*v160)(v55, v172);
        }

        ++v53;
        v56 = v166;
        result = v164;
        if (v165 == v53)
        {
          goto LABEL_28;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    v158 = MEMORY[0x277D84F90];
    v56 = v166;
LABEL_28:

    v68 = *(*(v150 + v148) + 16);

    v165 = v68;
    if (v68)
    {
      v69 = 0;
      v163 = v171 + 16;
      LODWORD(v162) = *MEMORY[0x277D091D0];
      v168 = (v149 + 104);
      v70 = (v149 + 8);
      LODWORD(v154) = *MEMORY[0x277D091C8];
      v160 = v171 + 8;
      v153 = (v171 + 32);
      v157 = MEMORY[0x277D84F90];
      v164 = result;
      while (v69 < *(result + 16))
      {
        v167 = ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v71 = *(v171 + 72);
        (*(v171 + 16))(v56, &v167[result + v71 * v69], v172);
        sub_24A4AB070();
        v72 = v56;
        v73 = *v168;
        (*v168)(v11, v162, v9);
        v74 = sub_24A4AAEE0();
        v75 = *v70;
        (*v70)(v11, v9);
        v75(v14, v9);
        if (v74 & 1) != 0 && (sub_24A4AB180(), v73(v11, v154, v9), v76 = sub_24A4AAEE0(), v75(v11, v9), v75(v14, v9), (v76))
        {
          v77 = v72;
          v78 = *v153;
          (*v153)(v156, v77, v172);
          v79 = v157;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v173[0] = v79;
          if ((v80 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v79 + 16) + 1, 1);
            v79 = v173[0];
          }

          v82 = *(v79 + 16);
          v81 = *(v79 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_24A3DBE2C((v81 > 1), v82 + 1, 1);
            v79 = v173[0];
          }

          *(v79 + 16) = v82 + 1;
          v157 = v79;
          v78(&v167[v79 + v82 * v71], v156, v172);
          v56 = v166;
        }

        else
        {
          (*v160)(v72, v172);
          v56 = v72;
        }

        ++v69;
        result = v164;
        if (v165 == v69)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_86;
    }

    v157 = MEMORY[0x277D84F90];
LABEL_41:

    v83 = *(*(v150 + v148) + 16);

    v165 = v83;
    if (v83)
    {
      v84 = 0;
      v163 = v171 + 16;
      LODWORD(v168) = *MEMORY[0x277D091D0];
      v167 = (v149 + 104);
      v85 = (v149 + 8);
      v162 = (v171 + 8);
      v156 = (v171 + 32);
      v160 = MEMORY[0x277D84F90];
      v164 = result;
      while (v84 < *(result + 16))
      {
        v166 = (*(v171 + 80) + 32) & ~*(v171 + 80);
        v86 = *(v171 + 72);
        v87 = v161;
        (*(v171 + 16))(v161, result + v166 + v86 * v84, v172);
        sub_24A4AB070();
        v88 = *v167;
        (*v167)(v11, v168, v9);
        v89 = sub_24A4AAEE0();
        v90 = *v85;
        (*v85)(v11, v9);
        v90(v14, v9);
        if (v89 & 1) != 0 && (sub_24A4AB180(), v88(v11, v168, v9), v91 = sub_24A4AAEE0(), v90(v11, v9), v90(v14, v9), (v91))
        {
          v92 = v87;
          v93 = *v156;
          (*v156)(v155, v92, v172);
          v94 = v160;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v173[0] = v94;
          if ((v95 & 1) == 0)
          {
            sub_24A3DBE2C(0, *(v94 + 16) + 1, 1);
            v94 = v173[0];
          }

          v97 = *(v94 + 16);
          v96 = *(v94 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_24A3DBE2C((v96 > 1), v97 + 1, 1);
            v94 = v173[0];
          }

          *(v94 + 16) = v97 + 1;
          v160 = v94;
          v93(v94 + v166 + v97 * v86, v155, v172);
        }

        else
        {
          (*v162)(v87, v172);
        }

        ++v84;
        result = v164;
        if (v165 == v84)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_87;
    }

    v160 = MEMORY[0x277D84F90];
LABEL_54:

    v98 = v150;

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    v168 = v173[0];
    v99 = *(v159 + 16);
    if (v99)
    {
      v173[0] = MEMORY[0x277D84F90];
      v100 = v159;
      sub_24A3DBDE8(0, v99, 0);
      v101 = v173[0];
      v167 = *(v171 + 16);
      v102 = v100 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v103 = *(v171 + 72);
      v104 = (v171 + 8);
      v105 = v144;
      do
      {
        v106 = v169;
        v107 = v172;
        (v167)(v169, v102, v172);
        sub_24A42B034(v168, v105);
        (*v104)(v106, v107);
        v173[0] = v101;
        v109 = *(v101 + 16);
        v108 = *(v101 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_24A3DBDE8((v108 > 1), v109 + 1, 1);
          v101 = v173[0];
        }

        *(v101 + 16) = v109 + 1;
        sub_24A3B587C(v105, v101 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v109, type metadata accessor for FMFLocationAlert);
        v102 += v103;
        --v99;
      }

      while (v99);

      v98 = v150;
    }

    else
    {

      v101 = MEMORY[0x277D84F90];
    }

    *(v98 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe) = v101;

    v110 = *(v158 + 2);
    v111 = v146;
    if (v110)
    {
      v173[0] = MEMORY[0x277D84F90];
      v112 = v158;
      sub_24A3DBDE8(0, v110, 0);
      v113 = v173[0];
      v167 = *(v171 + 16);
      v114 = &v112[(*(v171 + 80) + 32) & ~*(v171 + 80)];
      v115 = *(v171 + 72);
      v116 = (v171 + 8);
      do
      {
        v117 = v169;
        v118 = v172;
        (v167)(v169, v114, v172);
        sub_24A42B034(v168, v111);
        (*v116)(v117, v118);
        v173[0] = v113;
        v120 = *(v113 + 16);
        v119 = *(v113 + 24);
        if (v120 >= v119 >> 1)
        {
          sub_24A3DBDE8((v119 > 1), v120 + 1, 1);
          v113 = v173[0];
        }

        *(v113 + 16) = v120 + 1;
        sub_24A3B587C(v111, v113 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v120, type metadata accessor for FMFLocationAlert);
        v114 += v115;
        --v110;
      }

      while (v110);

      v98 = v150;
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    *(v98 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends) = v113;

    v121 = *(v157 + 2);
    v122 = v147;
    if (v121)
    {
      v173[0] = MEMORY[0x277D84F90];
      v123 = v157;
      sub_24A3DBDE8(0, v121, 0);
      v124 = v173[0];
      v167 = *(v171 + 16);
      v125 = &v123[(*(v171 + 80) + 32) & ~*(v171 + 80)];
      v126 = *(v171 + 72);
      v127 = (v171 + 8);
      do
      {
        v128 = v169;
        v129 = v172;
        (v167)(v169, v125, v172);
        sub_24A42B034(v168, v122);
        (*v127)(v128, v129);
        v173[0] = v124;
        v131 = *(v124 + 16);
        v130 = *(v124 + 24);
        if (v131 >= v130 >> 1)
        {
          sub_24A3DBDE8((v130 > 1), v131 + 1, 1);
          v124 = v173[0];
        }

        *(v124 + 16) = v131 + 1;
        sub_24A3B587C(v122, v124 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v131, type metadata accessor for FMFLocationAlert);
        v125 += v126;
        --v121;
      }

      while (v121);

      v98 = v150;
    }

    else
    {

      v124 = MEMORY[0x277D84F90];
    }

    *(v98 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe) = v124;

    v132 = *(v160 + 16);
    if (v132)
    {
      v173[0] = MEMORY[0x277D84F90];
      v133 = v160;
      sub_24A3DBDE8(0, v132, 0);
      v134 = v173[0];
      v135 = v171 + 16;
      v171 = *(v171 + 16);
      v136 = v133 + ((*(v135 + 64) + 32) & ~*(v135 + 64));
      v137 = *(v135 + 56);
      v138 = (v135 - 8);
      v139 = v145;
      do
      {
        v140 = v169;
        v141 = v172;
        (v171)(v169, v136, v172);
        sub_24A42B034(v168, v139);
        (*v138)(v140, v141);
        v173[0] = v134;
        v143 = *(v134 + 16);
        v142 = *(v134 + 24);
        if (v143 >= v142 >> 1)
        {
          sub_24A3DBDE8((v142 > 1), v143 + 1, 1);
          v134 = v173[0];
        }

        *(v134 + 16) = v143 + 1;
        sub_24A3B587C(v139, v134 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v143, type metadata accessor for FMFLocationAlert);
        v136 += v137;
        --v132;
      }

      while (v132);

      v98 = v150;
    }

    else
    {

      v134 = MEMORY[0x277D84F90];
    }

    *(v98 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends) = v134;
  }

  return result;
}

uint64_t sub_24A390DA0()
{
  v1 = sub_24A3C9CEC(&qword_27EF405C8, &qword_24A4BACD8);
  MEMORY[0x28223BE20](v1 - 8);
  v866 = &v859 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v883 = (&v859 - v4);
  MEMORY[0x28223BE20](v5);
  v913 = (&v859 - v6);
  MEMORY[0x28223BE20](v7);
  v911 = (&v859 - v8);
  MEMORY[0x28223BE20](v9);
  v914 = (&v859 - v10);
  MEMORY[0x28223BE20](v11);
  *&v971 = &v859 - v12;
  MEMORY[0x28223BE20](v13);
  v897 = &v859 - v14;
  MEMORY[0x28223BE20](v15);
  v930 = (&v859 - v16);
  MEMORY[0x28223BE20](v17);
  v934 = (&v859 - v18);
  MEMORY[0x28223BE20](v19);
  v931 = (&v859 - v20);
  v987 = type metadata accessor for FMFLocation(0);
  v874 = *(v987 - 8);
  MEMORY[0x28223BE20](v987);
  v898 = (&v859 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v22 - 8);
  v964 = (&v859 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v909 = &v859 - v25;
  MEMORY[0x28223BE20](v26);
  v952 = &v859 - v27;
  v28 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v28 - 8);
  v864 = &v859 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v979 = &v859 - v31;
  MEMORY[0x28223BE20](v32);
  v963 = (&v859 - v33);
  MEMORY[0x28223BE20](v34);
  v962 = (&v859 - v35);
  MEMORY[0x28223BE20](v36);
  v960 = (&v859 - v37);
  MEMORY[0x28223BE20](v38);
  v951 = &v859 - v39;
  MEMORY[0x28223BE20](v40);
  v950 = &v859 - v41;
  MEMORY[0x28223BE20](v42);
  v949 = &v859 - v43;
  v44 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  MEMORY[0x28223BE20](v44 - 8);
  v873 = &v859 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v978 = &v859 - v47;
  MEMORY[0x28223BE20](v48);
  v905 = &v859 - v49;
  MEMORY[0x28223BE20](v50);
  v973 = &v859 - v51;
  MEMORY[0x28223BE20](v52);
  v896 = &v859 - v53;
  MEMORY[0x28223BE20](v54);
  v948 = &v859 - v55;
  v56 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v56 - 8);
  v860 = &v859 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v862 = &v859 - v59;
  MEMORY[0x28223BE20](v60);
  v875 = (&v859 - v61);
  MEMORY[0x28223BE20](v62);
  v912 = &v859 - v63;
  MEMORY[0x28223BE20](v64);
  v885 = &v859 - v65;
  MEMORY[0x28223BE20](v66);
  v872 = &v859 - v67;
  MEMORY[0x28223BE20](v68);
  v904 = &v859 - v69;
  MEMORY[0x28223BE20](v70);
  v961 = &v859 - v71;
  MEMORY[0x28223BE20](v72);
  v985 = &v859 - v73;
  MEMORY[0x28223BE20](v74);
  v895 = &v859 - v75;
  MEMORY[0x28223BE20](v76);
  v894 = &v859 - v77;
  MEMORY[0x28223BE20](v78);
  v893 = &v859 - v79;
  MEMORY[0x28223BE20](v80);
  v953 = &v859 - v81;
  v991 = type metadata accessor for FMFFriend(0);
  v988 = *(v991 - 1);
  MEMORY[0x28223BE20](v991);
  v865 = &v859 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v910 = &v859 - v84;
  MEMORY[0x28223BE20](v85);
  v938 = &v859 - v86;
  MEMORY[0x28223BE20](v87);
  j = &v859 - v88;
  MEMORY[0x28223BE20](v89);
  v986 = &v859 - v90;
  MEMORY[0x28223BE20](v91);
  v868 = (&v859 - v92);
  MEMORY[0x28223BE20](v93);
  v863 = (&v859 - v94);
  MEMORY[0x28223BE20](v95);
  v880 = &v859 - v96;
  MEMORY[0x28223BE20](v97);
  v884 = (&v859 - v98);
  MEMORY[0x28223BE20](v99);
  v879 = &v859 - v100;
  MEMORY[0x28223BE20](v101);
  v878 = (&v859 - v102);
  MEMORY[0x28223BE20](v103);
  v975 = (&v859 - v104);
  MEMORY[0x28223BE20](v105);
  v867 = (&v859 - v106);
  MEMORY[0x28223BE20](v107);
  v908 = &v859 - v108;
  MEMORY[0x28223BE20](v109);
  v983 = (&v859 - v110);
  MEMORY[0x28223BE20](v111);
  v984 = &v859 - v112;
  MEMORY[0x28223BE20](v113);
  v870 = &v859 - v114;
  MEMORY[0x28223BE20](v115);
  v907 = (&v859 - v116);
  MEMORY[0x28223BE20](v117);
  v877 = &v859 - v118;
  MEMORY[0x28223BE20](v119);
  v932 = (&v859 - v120);
  MEMORY[0x28223BE20](v121);
  v869 = &v859 - v122;
  MEMORY[0x28223BE20](v123);
  v906 = (&v859 - v124);
  MEMORY[0x28223BE20](v125);
  v876 = &v859 - v126;
  MEMORY[0x28223BE20](v127);
  v990 = (&v859 - v128);
  MEMORY[0x28223BE20](v129);
  v965 = &v859 - v130;
  MEMORY[0x28223BE20](v131);
  v972 = &v859 - v132;
  MEMORY[0x28223BE20](v133);
  v903 = (&v859 - v134);
  MEMORY[0x28223BE20](v135);
  v882 = (&v859 - v136);
  MEMORY[0x28223BE20](v137);
  v892 = &v859 - v138;
  MEMORY[0x28223BE20](v139);
  v891 = &v859 - v140;
  MEMORY[0x28223BE20](v141);
  v881 = (&v859 - v142);
  MEMORY[0x28223BE20](v143);
  v959 = (&v859 - v144);
  MEMORY[0x28223BE20](v145);
  v947 = (&v859 - v146);
  MEMORY[0x28223BE20](v147);
  v890 = &v859 - v148;
  MEMORY[0x28223BE20](v149);
  v889 = &v859 - v150;
  v989 = type metadata accessor for FMFIntermediateFriend(0);
  v929 = *(v989 - 8);
  MEMORY[0x28223BE20](v989);
  v937 = (&v859 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v152);
  v936 = (&v859 - v153);
  MEMORY[0x28223BE20](v154);
  v156 = (&v859 - v155);
  MEMORY[0x28223BE20](v157);
  v159 = &v859 - v158;
  MEMORY[0x28223BE20](v160);
  v162 = &v859 - v161;
  MEMORY[0x28223BE20](v163);
  v165 = &v859 - v164;
  v166 = type metadata accessor for FMFLocationAlert(0);
  v167 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  MEMORY[0x28223BE20](v168);
  v170 = &v859 - v169;
  MEMORY[0x28223BE20](v171);
  MEMORY[0x28223BE20](v172);
  v177 = &v859 - v176;
  v178 = *(v0 + 576);
  if (v178)
  {

    return v178;
  }

  v977 = v175;
  v980 = v174;
  v982 = v173;
  v902 = v165;
  v871 = v162;
  v888 = v159;
  v933 = v156;
  v1010 = MEMORY[0x277D84F98];
  v935 = v0;
  v179 = sub_24A397C64();
  v981 = *(v179 + 16);
  if (v981)
  {
    v180 = 0;
    v181 = MEMORY[0x277D84F90];
    v182 = v977;
    while (v180 < *(v179 + 16))
    {
      v183 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v184 = *(v167 + 72);
      sub_24A3992EC(v179 + v183 + v184 * v180, v177, type metadata accessor for FMFLocationAlert);
      if (*(v177 + *(v982 + 96)) != 1 || (*(v177 + *(v982 + 100)) & 1) != 0)
      {
        sub_24A39A7B8(v177, type metadata accessor for FMFLocationAlert);
      }

      else
      {
        sub_24A39983C(v177, v182, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v1006 = v181;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v181 + 16) + 1, 1);
          v181 = v1006;
        }

        v187 = *(v181 + 16);
        v186 = *(v181 + 24);
        v188 = v187 + 1;
        if (v187 >= v186 >> 1)
        {
          v976 = (v187 + 1);
          sub_24A3DBDE8((v186 > 1), v187 + 1, 1);
          v188 = v976;
          v181 = v1006;
        }

        *(v181 + 16) = v188;
        v189 = v181 + v183 + v187 * v184;
        v182 = v977;
        sub_24A39983C(v977, v189, type metadata accessor for FMFLocationAlert);
      }

      ++v180;
      v165 = v986;
      v156 = v975;
      if (v981 == v180)
      {
        goto LABEL_16;
      }
    }

LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    swift_once();
LABEL_80:
    v346 = sub_24A4AB630();
    v922 = sub_24A378E18(v346, qword_27EF4E260);
    v347 = sub_24A4AB600();
    v348 = sub_24A4ABCB0();
    if (os_log_type_enabled(v347, v348))
    {
      v349 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      *v349 = 138412290;
      swift_beginAccess();

      v351 = sub_24A4AB760();
      v177 = v984;

      *(v349 + 4) = v351;
      *v350 = v351;
      v179 = v991;
      _os_log_impl(&dword_24A376000, v347, v348, "Follower friends - %@", v349, 0xCu);
      sub_24A37EF2C(v350, &qword_27EF403C0, &unk_24A4B5050);
      v352 = v350;
      v180 = v965;
      MEMORY[0x24C219130](v352, -1, -1);
      v353 = v349;
      v156 = v975;
      MEMORY[0x24C219130](v353, -1, -1);
    }

    v354 = *(v935 + 552);
    v355 = *(v354 + 16);
    if (v355)
    {
      v356 = v354 + ((*(v929 + 80) + 32) & ~*(v929 + 80));
      v357 = v988 + 56;
      v358 = *(v988 + 56);
      v359 = (v929 + 56);
      v927 = *(v929 + 72);
      v360 = (v874 + 56);
      v925 = (v988 + 48);
      v924 = (v929 + 48);
      v923 = (v874 + 48);
      v920 = v354;

      v921 = xmmword_24A4B4E10;
      v928 = v357;
      v960 = v358;
      v959 = v359;
      v926 = v360;
      do
      {
        v958 = v355;
        v372 = v961;
        (v358)(v961, 1, 1, v179);
        v957 = v356;
        v373 = v973;
        sub_24A3992EC(v356, v973, type metadata accessor for FMFIntermediateFriend);
        v955 = *v359;
        (v955)(v373, 0, 1, v989);
        v374 = *v360;
        v375 = v987;
        (*v360)(v962, 1, 1, v987);
        v376 = *(v179 + 84);
        *(v972 + v376) = 7;
        v377 = sub_24A4AAAD0();
        v378 = v964;
        (*(*(v377 - 8) + 56))(v964, 1, 1, v377);
        v379 = v963;
        v956 = v374;
        v374(v963, 1, 1, v375);
        v380 = v372;
        v381 = v904;
        sub_24A37B740(v380, v904, &qword_27EF3F2D0, &qword_24A4B4F50);
        if ((*v925)(v381, 1, v179) == 1)
        {
          sub_24A37EF2C(v381, &qword_27EF3F2D0, &qword_24A4B4F50);
          LODWORD(v951) = 0;
          LODWORD(v952) = 0;
          v382 = 0;
          v383 = 0;
          v953 = 0;
          v949 = 0;
          v948 = 0;
          v946 = 0;
          v967 = 0;
          v945 = 0;
          v968 = 0;
          v944 = 0;
          v969 = 0;
          v981 = 0;
          v970 = 0;
          v980 = 0xE000000000000000;
          LODWORD(v940) = 2;
          v950 = 0x7FFFFFFFFFFFFFFFLL;
          LODWORD(v939) = 2;
          LODWORD(v942) = 2;
          LODWORD(v947) = 2;
          v976 = MEMORY[0x277D84FA0];
          v384 = 1;
        }

        else
        {
          sub_24A37EF2C(v379, &qword_27EF3F480, &unk_24A4B8C20);
          sub_24A37EF2C(v378, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A39983C(v381, v180, type metadata accessor for FMFFriend);
          v385 = *(v180 + 8);
          v970 = *v180;
          v980 = v385;
          v386 = *(v180 + 24);
          v969 = *(v180 + 16);
          v981 = v386;
          v976 = *(v180 + 32);
          sub_24A37B740(v180 + *(v179 + 32), v378, &qword_27EF3F460, &unk_24A4B53B0);
          v387 = *(v179 + 40);
          v954 = *(v180 + *(v179 + 36));
          LODWORD(v947) = *(v180 + v387);
          v388 = *(v179 + 48);
          LODWORD(v942) = *(v180 + *(v179 + 44));
          LODWORD(v939) = *(v180 + v388);
          LODWORD(v952) = *(v180 + *(v179 + 72));
          v389 = *(v179 + 56);
          LODWORD(v951) = *(v180 + *(v179 + 52));
          LODWORD(v940) = *(v180 + v389);
          v950 = *(v180 + *(v179 + 60));
          sub_24A37B740(v180 + *(v179 + 80), v379, &qword_27EF3F480, &unk_24A4B8C20);
          v390 = (v180 + *(v179 + 76));
          v391 = *v390;
          v392 = v390[1];
          v393 = v390[2];
          v967 = v390[3];
          v394 = v390[4];
          v968 = v390[5];
          v395 = v376;
          v396 = v390[6];
          v397 = *(v180 + *(v179 + 64));
          v398 = *(v180 + *(v179 + 68));
          *(v972 + v395) = *(v180 + *(v179 + 84));
          v399 = *(v180 + 40);

          v949 = v391;
          v948 = v392;
          v946 = v393;
          v400 = v393;
          v383 = v398;
          v945 = v394;
          v382 = v399;
          v944 = v396;
          sub_24A39AED0(v391, v392, v400, v967, v394, v968, v396);

          v953 = v397;

          sub_24A39A7B8(v180, type metadata accessor for FMFFriend);
          v384 = v954 | 1;
        }

        v401 = v905;
        v402 = v973;
        sub_24A37B740(v973, v905, &qword_27EF3F2E0, &qword_24A4BACE0);
        v403 = v989;
        v404 = (*v924)(v401, 1, v989);
        v954 = v383;
        v943 = v384;
        if (v404 == 1)
        {
          v941 = v382;
          sub_24A37EF2C(v402, &qword_27EF3F2E0, &qword_24A4BACE0);
          sub_24A37EF2C(v961, &qword_27EF3F2D0, &qword_24A4B4F50);
          sub_24A37EF2C(v401, &qword_27EF3F2E0, &qword_24A4BACE0);
          v405 = v964;
          v406 = v940;
          v407 = v939;
          v408 = v942;
        }

        else
        {

          v409 = v888;
          sub_24A39983C(v401, v888, type metadata accessor for FMFIntermediateFriend);
          if (v942 == 2 || (v942 & 1) == 0)
          {
            v410 = *(v409 + v403[14]);
          }

          else
          {
            v410 = 1;
          }

          v411 = *v409;
          v980 = v409[1];
          v412 = v409[2];
          v981 = v409[3];
          if (v939 == 2 || (v939 & 1) == 0)
          {
            v413 = *(v409 + v403[15]);
          }

          else
          {
            v413 = 1;
          }

          LODWORD(v942) = v413;
          if (v940 == 2 || (v940 & 1) == 0)
          {
            v414 = *(v409 + v403[16]);
          }

          else
          {
            v414 = 1;
          }

          LODWORD(v940) = v414;
          v415 = *(v409 + v403[17]);
          v416 = v409[9];
          v970 = v411;
          v969 = v412;
          v941 = v415;
          if (v416)
          {
            v417 = v409[8];
            sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
            v418 = swift_allocObject();
            *(v418 + 16) = v921;
            *(v418 + 32) = v417;
            *(v418 + 40) = v416;

            v976 = sub_24A48A0F4(v418, v976);
            swift_setDeallocating();
            sub_24A406964(v418 + 32);
            v403 = v989;
            swift_deallocClassInstance();
            v419 = v973;
          }

          else
          {
            v420 = v409[4];

            if (v420)
            {

              v421 = sub_24A3999E0(v420);

              v976 = sub_24A399BC8(v421, v976);
            }

            v419 = v973;
            v409 = v888;
          }

          v408 = v410 & 1;
          v407 = v942 & 1;
          v406 = v940 & 1;
          v405 = v964;
          sub_24A37EF2C(v964, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A37EF2C(v419, &qword_27EF3F2E0, &qword_24A4BACE0);
          sub_24A37EF2C(v961, &qword_27EF3F2D0, &qword_24A4B4F50);
          sub_24A37B740(v409 + v403[12], v405, &qword_27EF3F460, &unk_24A4B53B0);
          sub_24A39A7B8(v409, type metadata accessor for FMFIntermediateFriend);
        }

        v422 = v991;
        v423 = v991[14];
        v424 = v972;
        v425 = v980;
        *v972 = v970;
        v424[1] = v425;
        v426 = v981;
        v424[2] = v969;
        v424[3] = v426;
        v424[4] = v976;
        sub_24A37BE24(v405, v424 + v422[8], &qword_27EF3F460, &unk_24A4B53B0);
        *(v424 + v422[9]) = v943;
        *(v424 + v422[10]) = v947;
        *(v424 + v422[11]) = v408;
        *(v424 + v422[12]) = v407;
        v427 = (v424 + v422[19]);
        v428 = v948;
        *v427 = v949;
        v427[1] = v428;
        v429 = v967;
        v427[2] = v946;
        v427[3] = v429;
        v430 = v968;
        v427[4] = v945;
        v427[5] = v430;
        v427[6] = v944;
        *(v424 + v423) = v406;
        *(v424 + v422[18]) = v952;
        *(v424 + v422[13]) = v951;
        v424[5] = v941;
        *(v424 + v422[15]) = v950;
        v431 = v962;
        v432 = v987;
        if ((*v923)(v962, 1, v987) == 1)
        {
          sub_24A37EF2C(v431, &qword_27EF3F480, &unk_24A4B8C20);
          sub_24A37BE24(v963, v424 + v422[20], &qword_27EF3F480, &unk_24A4B8C20);
          v361 = v903;
          v360 = v926;
          v362 = v956;
        }

        else
        {
          sub_24A37EF2C(v963, &qword_27EF3F480, &unk_24A4B8C20);
          v433 = v422[20];
          sub_24A39983C(v431, v424 + v433, type metadata accessor for FMFLocation);
          v434 = v424 + v433;
          v360 = v926;
          v362 = v956;
          v956(v434, 0, 1, v432);
          v361 = v903;
        }

        *(v424 + v422[16]) = v953;
        *(v424 + v422[17]) = v954;
        v981 = type metadata accessor for FMFFriend;
        sub_24A39983C(v424, v361, type metadata accessor for FMFFriend);
        v363 = v985;
        sub_24A3992EC(v361, v985, type metadata accessor for FMFFriend);
        (v960)(v363, 0, 1, v422);
        v364 = v978;
        (v955)(v978, 1, 1, v989);
        v1004 = 0;
        v1005 = 1;
        v1002 = 0;
        v1003 = 1;
        v365 = v979;
        v362(v979, 1, 1, v432);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;

        v366 = v990;
        v179 = v991;
        sub_24A39B7E4(v363, v364, &v1004, &v1002, v365, 0, 1, &v1006, v990, 0, v858, 2u, 2u, 2);
        sub_24A39A7B8(v361, type metadata accessor for FMFFriend);
        sub_24A39983C(v366, v361, v981);
        v367 = *v361;
        v368 = v361[1];
        sub_24A3992EC(v361, v366, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v369 = swift_isUniquelyReferenced_nonNull_native();
        v1004 = v1010;
        v370 = v366;
        v359 = v959;
        sub_24A39B15C(v370, v367, v368, v369);
        v1010 = v1004;
        swift_endAccess();
        v371 = v361;
        v358 = v960;
        sub_24A39A7B8(v371, type metadata accessor for FMFFriend);
        v356 = v957 + v927;
        v355 = v958 - 1;
        v180 = v965;
      }

      while (v958 != 1);

      v165 = v986;
      v156 = v975;
      v182 = v983;
      v177 = v984;
    }

    v435 = sub_24A4AB600();
    v436 = sub_24A4ABCB0();
    v437 = os_log_type_enabled(v435, v436);
    v438 = v933;
    if (v437)
    {
      v439 = swift_slowAlloc();
      v440 = swift_slowAlloc();
      *v439 = 138412290;
      swift_beginAccess();

      v441 = sub_24A4AB760();
      v177 = v984;

      *(v439 + 4) = v441;
      *v440 = v441;
      v179 = v991;
      _os_log_impl(&dword_24A376000, v435, v436, "Follower friends with pending - %@", v439, 0xCu);
      sub_24A37EF2C(v440, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v440, -1, -1);
      v442 = v439;
      v156 = v975;
      MEMORY[0x24C219130](v442, -1, -1);
    }

    v443 = *(v935 + 680);
    v444 = *(v443 + 16);
    if (v444)
    {
      v445 = *(v935 + 536);
      v446 = v929;
      v447 = v443 + ((*(v929 + 80) + 32) & ~*(v929 + 80));
      v961 = *(v935 + 680);

      v973 = v445;
      swift_beginAccess();
      v972 = *(v446 + 72);
      v976 = (v988 + 56);
      v963 = (v446 + 56);
      v962 = (v874 + 56);
      while (1)
      {
        sub_24A3992EC(v447, v438, type metadata accessor for FMFIntermediateFriend);
        v451 = *v438;
        v452 = v438[1];
        v453 = *(v973 + 24);
        v454 = *(v453 + 16);
        v455 = v906;
        v981 = v444;
        if (!v454)
        {
          goto LABEL_121;
        }

        v456 = sub_24A39B2C8(v451, v452);
        if ((v457 & 1) == 0)
        {
          break;
        }

        v448 = v876;
        sub_24A3992EC(*(v453 + 56) + *(v988 + 72) * v456, v876, type metadata accessor for FMFFriend);

        v449 = v990;
        sub_24A3992EC(v448, v990, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v450 = swift_isUniquelyReferenced_nonNull_native();
        v1002 = v1010;
        sub_24A39B15C(v449, v451, v452, v450);
        v1010 = v1002;
        swift_endAccess();
        sub_24A39A7B8(v448, type metadata accessor for FMFFriend);
        v438 = v933;
        sub_24A39A7B8(v933, type metadata accessor for FMFIntermediateFriend);
LABEL_117:
        v447 += v972;
        v444 = (v981 - 1);
        v177 = v984;
        if (v981 == 1)
        {

          v179 = v991;
          v156 = v975;
          goto LABEL_127;
        }
      }

LABEL_121:
      swift_beginAccess();
      v458 = v1010;
      if (*(v1010 + 16) && (v459 = sub_24A39B2C8(v451, v452), (v460 & 1) != 0))
      {
        v461 = v988;
        v462 = v869;
        sub_24A3992EC(*(v458 + 56) + *(v988 + 72) * v459, v869, type metadata accessor for FMFFriend);
        sub_24A39983C(v462, v455, type metadata accessor for FMFFriend);
        swift_endAccess();
        v463 = v985;
        sub_24A3992EC(v455, v985, type metadata accessor for FMFFriend);
        (*(v461 + 56))(v463, 0, 1, v991);
        v980 = type metadata accessor for FMFIntermediateFriend;
        v464 = v933;
        v465 = v978;
        sub_24A3992EC(v933, v978, type metadata accessor for FMFIntermediateFriend);
        (*v963)(v465, 0, 1, v989);
        v1002 = 2;
        v1003 = 0;
        v1000 = 0;
        v1001 = 1;
        v466 = v979;
        (*v962)(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v467 = v990;
        sub_24A39B7E4(v463, v465, &v1002, &v1000, v466, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v455, type metadata accessor for FMFFriend);
        sub_24A39983C(v467, v455, type metadata accessor for FMFFriend);
        v468 = *v455;
        v469 = v455[1];
        swift_beginAccess();
        sub_24A3992EC(v455, v467, type metadata accessor for FMFFriend);

        v470 = swift_isUniquelyReferenced_nonNull_native();
        v1002 = v1010;
        sub_24A39B15C(v467, v468, v469, v470);

        v1010 = v1002;
        swift_endAccess();
        v471 = v455;
        v438 = v464;
        sub_24A39A7B8(v471, type metadata accessor for FMFFriend);
        v472 = v464;
        v473 = v980;
      }

      else
      {
        swift_endAccess();
        v980 = *v976;
        v474 = v985;
        (v980)(v985, 1, 1, v991);
        v969 = type metadata accessor for FMFIntermediateFriend;
        v475 = v978;
        sub_24A3992EC(v933, v978, type metadata accessor for FMFIntermediateFriend);
        v970 = v447;
        v968 = *v963;
        (v968)(v475, 0, 1, v989);
        v1002 = 2;
        v1003 = 0;
        v1000 = 0;
        v1001 = 1;
        v967 = *v962;
        v476 = v979;
        v477 = v987;
        v967(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v478 = v990;
        sub_24A39B7E4(v474, v475, &v1002, &v1000, v476, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);

        v480 = v982;
        v965 = sub_24A39A8F4(v479, v478);

        sub_24A448AF0(v481, v478);
        v483 = v482;
        v982 = v480;
        v964 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v478, v474, type metadata accessor for FMFFriend);
        (v980)(v474, 0, 1, v991);
        (v968)(v475, 1, 1, v989);
        v447 = v970;
        v1002 = 0;
        v1003 = 1;
        v1000 = 0;
        v1001 = 1;
        v967(v476, 1, 1, v477);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v484 = v932;
        sub_24A39B7E4(v474, v475, &v1002, &v1000, v476, 0, 1, &v1006, v932, v965, v483, 2u, 2u, 2);
        sub_24A39AF20(v484, v478, type metadata accessor for FMFFriend);
        v485 = *v478;
        v486 = v478[1];
        v487 = v964;
        sub_24A3992EC(v478, v474, v964);
        (v980)(v474, 0, 1, v991);
        swift_beginAccess();

        v488 = v474;
        v438 = v933;
        sub_24A39AF88(v488, v485, v486);
        swift_endAccess();
        sub_24A39A7B8(v438, v969);
        v472 = v478;
        v473 = v487;
      }

      sub_24A39A7B8(v472, v473);
      v165 = v986;
      v182 = v983;
      goto LABEL_117;
    }

LABEL_127:
    v489 = sub_24A4AB600();
    v490 = sub_24A4ABCB0();
    if (os_log_type_enabled(v489, v490))
    {
      v491 = swift_slowAlloc();
      v492 = swift_slowAlloc();
      *v491 = 138412290;
      swift_beginAccess();

      v493 = sub_24A4AB760();
      v177 = v984;

      *(v491 + 4) = v493;
      *v492 = v493;
      v179 = v991;
      _os_log_impl(&dword_24A376000, v489, v490, "Follower+following friends - %@", v491, 0xCu);
      sub_24A37EF2C(v492, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v492, -1, -1);
      v494 = v491;
      v156 = v975;
      MEMORY[0x24C219130](v494, -1, -1);
    }

    v495 = *(v935 + 568);
    v496 = *(v495 + 16);
    if (v496)
    {
      v497 = *(v935 + 536);
      v498 = v929;
      v499 = v495 + ((*(v929 + 80) + 32) & ~*(v929 + 80));
      v961 = *(v935 + 568);

      v976 = v497;
      swift_beginAccess();
      v973 = *(v498 + 72);
      v980 = (v988 + 56);
      v963 = (v498 + 56);
      v962 = (v874 + 56);
      v500 = v936;
      while (1)
      {
        sub_24A3992EC(v499, v500, type metadata accessor for FMFIntermediateFriend);
        v504 = *v500;
        v505 = v500[1];
        v506 = v976[3];
        v507 = *(v506 + 2);
        v508 = v907;
        v981 = v496;
        if (!v507)
        {
          goto LABEL_136;
        }

        v509 = sub_24A39B2C8(v504, v505);
        if ((v510 & 1) == 0)
        {
          break;
        }

        v501 = v877;
        sub_24A3992EC(*(v506 + 7) + *(v988 + 72) * v509, v877, type metadata accessor for FMFFriend);

        v502 = v990;
        sub_24A3992EC(v501, v990, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v503 = swift_isUniquelyReferenced_nonNull_native();
        v1000 = v1010;
        sub_24A39B15C(v502, v504, v505, v503);
        v1010 = v1000;
        swift_endAccess();
        sub_24A39A7B8(v501, type metadata accessor for FMFFriend);
        v500 = v936;
        sub_24A39A7B8(v936, type metadata accessor for FMFIntermediateFriend);
LABEL_132:
        v499 += v973;
        v496 = (v981 - 1);
        v177 = v984;
        if (v981 == 1)
        {

          v179 = v991;
          v156 = v975;
          goto LABEL_142;
        }
      }

LABEL_136:
      swift_beginAccess();
      v511 = v1010;
      if (*(v1010 + 16) && (v512 = sub_24A39B2C8(v504, v505), (v513 & 1) != 0))
      {
        v514 = v988;
        v515 = v870;
        sub_24A3992EC(*(v511 + 56) + *(v988 + 72) * v512, v870, type metadata accessor for FMFFriend);
        sub_24A39983C(v515, v508, type metadata accessor for FMFFriend);
        swift_endAccess();
        v516 = v985;
        sub_24A3992EC(v508, v985, type metadata accessor for FMFFriend);
        (*(v514 + 56))(v516, 0, 1, v991);
        v972 = type metadata accessor for FMFIntermediateFriend;
        v500 = v936;
        v517 = v978;
        sub_24A3992EC(v936, v978, type metadata accessor for FMFIntermediateFriend);
        (*v963)(v517, 0, 1, v989);
        v1000 = 8;
        v1001 = 0;
        v998 = 0;
        v999 = 1;
        v518 = v979;
        (*v962)(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v519 = v990;
        sub_24A39B7E4(v516, v517, &v1000, &v998, v518, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v508, type metadata accessor for FMFFriend);
        sub_24A39983C(v519, v508, type metadata accessor for FMFFriend);
        v520 = *v508;
        v521 = v508[1];
        swift_beginAccess();
        sub_24A3992EC(v508, v519, type metadata accessor for FMFFriend);

        v522 = swift_isUniquelyReferenced_nonNull_native();
        v1000 = v1010;
        sub_24A39B15C(v519, v520, v521, v522);

        v1010 = v1000;
        swift_endAccess();
        sub_24A39A7B8(v508, type metadata accessor for FMFFriend);
        v523 = v500;
        v524 = v972;
      }

      else
      {
        swift_endAccess();
        v969 = *v980;
        v525 = v985;
        (v969)(v985, 1, 1, v991);
        v972 = type metadata accessor for FMFIntermediateFriend;
        v526 = v978;
        sub_24A3992EC(v936, v978, type metadata accessor for FMFIntermediateFriend);
        v968 = *v963;
        (v968)(v526, 0, 1, v989);
        v1000 = 8;
        v1001 = 0;
        v998 = 0;
        v999 = 1;
        v967 = *v962;
        v527 = v979;
        v967(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v528 = v990;
        sub_24A39B7E4(v525, v526, &v1000, &v998, v527, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);

        v530 = v982;
        v965 = sub_24A39A8F4(v529, v528);

        sub_24A39AB44(v531, v528, sub_24A454B90, sub_24A454B90);
        v533 = v532;
        v982 = v530;
        v964 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v528, v525, type metadata accessor for FMFFriend);
        v970 = v499;
        v534 = v969;
        (v969)(v525, 0, 1, v991);
        (v968)(v526, 1, 1, v989);
        v1000 = 0;
        v1001 = 1;
        v998 = 0;
        v999 = 1;
        v967(v527, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v535 = v932;
        sub_24A39B7E4(v525, v526, &v1000, &v998, v527, 0, 1, &v1006, v932, v965, v533, 2u, 2u, 2);
        sub_24A39AF20(v535, v528, type metadata accessor for FMFFriend);
        v536 = *v528;
        v537 = v528[1];
        v538 = v964;
        sub_24A3992EC(v528, v525, v964);
        (v534)(v525, 0, 1, v991);
        v499 = v970;
        swift_beginAccess();

        sub_24A39AF88(v525, v536, v537);
        v500 = v936;
        swift_endAccess();
        sub_24A39A7B8(v500, v972);
        v523 = v528;
        v524 = v538;
      }

      sub_24A39A7B8(v523, v524);
      v165 = v986;
      v182 = v983;
      goto LABEL_132;
    }

LABEL_142:
    v539 = sub_24A4AB600();
    v540 = sub_24A4ABCB0();
    if (os_log_type_enabled(v539, v540))
    {
      v541 = swift_slowAlloc();
      v542 = swift_slowAlloc();
      *v541 = 138412290;
      swift_beginAccess();

      v543 = sub_24A4AB760();
      v177 = v984;

      *(v541 + 4) = v543;
      *v542 = v543;
      v179 = v991;
      _os_log_impl(&dword_24A376000, v539, v540, "FMFDataManager: Follower+following+futureFollower friends - %@", v541, 0xCu);
      sub_24A37EF2C(v542, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v542, -1, -1);
      v544 = v541;
      v156 = v975;
      MEMORY[0x24C219130](v544, -1, -1);
    }

    v545 = *(v935 + 560);
    v546 = *(v545 + 16);
    if (v546)
    {
      v547 = *(v935 + 536);
      v548 = v929;
      v549 = v545 + ((*(v929 + 80) + 32) & ~*(v929 + 80));
      v961 = *(v935 + 560);

      v976 = v547;
      swift_beginAccess();
      v973 = *(v548 + 72);
      v980 = (v988 + 56);
      v963 = (v548 + 56);
      v962 = (v874 + 56);
      v550 = v937;
      while (1)
      {
        v981 = v546;
        sub_24A3992EC(v549, v550, type metadata accessor for FMFIntermediateFriend);
        v555 = *v550;
        v556 = v550[1];
        v557 = v976[3];
        v558 = v908;
        if (!*(v557 + 2))
        {
          goto LABEL_151;
        }

        v559 = sub_24A39B2C8(v555, v556);
        if ((v560 & 1) == 0)
        {
          break;
        }

        sub_24A3992EC(*(v557 + 7) + *(v988 + 72) * v559, v177, type metadata accessor for FMFFriend);

        v551 = v177;
        v552 = v990;
        sub_24A3992EC(v551, v990, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v553 = swift_isUniquelyReferenced_nonNull_native();
        v998 = v1010;
        v554 = v552;
        v177 = v984;
        sub_24A39B15C(v554, v555, v556, v553);
        v1010 = v998;
        swift_endAccess();
        sub_24A39A7B8(v177, type metadata accessor for FMFFriend);
        v550 = v937;
        sub_24A39A7B8(v937, type metadata accessor for FMFIntermediateFriend);
LABEL_147:
        v549 += v973;
        v546 = (v981 - 1);
        if (v981 == 1)
        {

          v179 = v991;
          v156 = v975;
          goto LABEL_158;
        }
      }

LABEL_151:
      swift_beginAccess();
      v561 = v1010;
      if (*(v1010 + 16) && (v562 = sub_24A39B2C8(v555, v556), (v563 & 1) != 0))
      {
        v564 = v988;
        sub_24A3992EC(*(v561 + 56) + *(v988 + 72) * v562, v558, type metadata accessor for FMFFriend);
        sub_24A39983C(v558, v182, type metadata accessor for FMFFriend);
        swift_endAccess();
        v565 = v182;
        v566 = v985;
        sub_24A3992EC(v565, v985, type metadata accessor for FMFFriend);
        (*(v564 + 56))(v566, 0, 1, v991);
        v567 = type metadata accessor for FMFIntermediateFriend;
        v550 = v937;
        v568 = v978;
        sub_24A3992EC(v937, v978, type metadata accessor for FMFIntermediateFriend);
        (*v963)(v568, 0, 1, v989);
        v998 = 4;
        v999 = 0;
        v996 = 0;
        v997 = 1;
        v569 = v979;
        (*v962)(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v570 = v990;
        sub_24A39B7E4(v566, v568, &v998, &v996, v569, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);
        sub_24A39A7B8(v983, type metadata accessor for FMFFriend);
        sub_24A39983C(v570, v983, type metadata accessor for FMFFriend);
        v571 = *v983;
        v572 = v983[1];
        swift_beginAccess();
        sub_24A3992EC(v983, v570, type metadata accessor for FMFFriend);

        v573 = swift_isUniquelyReferenced_nonNull_native();
        v998 = v1010;
        sub_24A39B15C(v570, v571, v572, v573);
        v182 = v983;

        v1010 = v998;
        swift_endAccess();
        sub_24A39A7B8(v182, type metadata accessor for FMFFriend);
        v574 = v550;
      }

      else
      {
        swift_endAccess();
        v969 = *v980;
        v575 = v985;
        (v969)(v985, 1, 1, v991);
        v972 = type metadata accessor for FMFIntermediateFriend;
        v576 = v978;
        sub_24A3992EC(v937, v978, type metadata accessor for FMFIntermediateFriend);
        v968 = *v963;
        (v968)(v576, 0, 1, v989);
        v998 = 4;
        v999 = 0;
        v996 = 0;
        v997 = 1;
        v967 = *v962;
        v577 = v979;
        v967(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v578 = v990;
        sub_24A39B7E4(v575, v576, &v998, &v996, v577, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);

        v580 = v982;
        v965 = sub_24A39A8F4(v579, v578);

        sub_24A39AB44(v581, v578, sub_24A454B90, sub_24A4543D4);
        v583 = v582;
        v982 = v580;
        v964 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v578, v575, type metadata accessor for FMFFriend);
        v970 = v549;
        v584 = v969;
        (v969)(v575, 0, 1, v991);
        (v968)(v576, 1, 1, v989);
        v998 = 0;
        v999 = 1;
        v996 = 0;
        v997 = 1;
        v967(v577, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v585 = v932;
        sub_24A39B7E4(v575, v576, &v998, &v996, v577, 0, 1, &v1006, v932, v965, v583, 2u, 2u, 2);
        sub_24A39AF20(v585, v578, type metadata accessor for FMFFriend);
        v586 = *v578;
        v587 = v578[1];
        v567 = v964;
        sub_24A3992EC(v578, v575, v964);
        (v584)(v575, 0, 1, v991);
        v549 = v970;
        swift_beginAccess();

        v588 = v587;
        v182 = v983;
        sub_24A39AF88(v575, v586, v588);
        v550 = v937;
        swift_endAccess();
        sub_24A39A7B8(v550, v972);
        v574 = v578;
      }

      sub_24A39A7B8(v574, v567);
      v165 = v986;
      v177 = v984;
      goto LABEL_147;
    }

LABEL_158:
    v589 = sub_24A4AB600();
    v590 = sub_24A4ABCB0();
    if (os_log_type_enabled(v589, v590))
    {
      v591 = swift_slowAlloc();
      v592 = swift_slowAlloc();
      *v591 = 138412290;
      swift_beginAccess();

      v593 = sub_24A4AB760();

      *(v591 + 4) = v593;
      *v592 = v593;
      v179 = v991;
      _os_log_impl(&dword_24A376000, v589, v590, "Follower+following+futureFollower+futureFollowing friends - %@", v591, 0xCu);
      sub_24A37EF2C(v592, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v592, -1, -1);
      v594 = v591;
      v156 = v975;
      MEMORY[0x24C219130](v594, -1, -1);
    }

    v595 = sub_24A39CB88();
    v596 = v595[2];
    if (v596)
    {
      v597 = *(v874 + 80);
      v977 = v595;
      v598 = v595 + ((v597 + 32) & ~v597);
      v984 = *(v874 + 72);
      v983 = (v988 + 56);
      v981 = (v929 + 56);
      v980 = (v874 + 56);
      v599 = v898;
      do
      {
        sub_24A3992EC(v598, v599, type metadata accessor for FMFLocation);
        v600 = v599[1];
        if (v600)
        {
          v601 = *v599;
          swift_beginAccess();
          v602 = v1010;
          if (*(v1010 + 16) && (v603 = sub_24A39B2C8(v601, v600), (v604 & 1) != 0))
          {
            v605 = v988;
            sub_24A3992EC(*(v602 + 56) + *(v988 + 72) * v603, v156, type metadata accessor for FMFFriend);
            v606 = v867;
            sub_24A39983C(v156, v867, type metadata accessor for FMFFriend);
            swift_endAccess();
            v607 = v985;
            sub_24A3992EC(v606, v985, type metadata accessor for FMFFriend);
            (*(v605 + 56))(v607, 0, 1, v179);
            v608 = v978;
            (*v981)(v978, 1, 1, v989);
            v998 = 0;
            v999 = 1;
            v996 = 0;
            v997 = 1;
            v609 = v979;
            sub_24A3992EC(v898, v979, type metadata accessor for FMFLocation);
            (*v980)(v609, 0, 1, v987);
            v1009 = 0;
            v1007 = 0u;
            v1008 = 0u;
            v1006 = 0u;
            v610 = v990;
            v611 = v607;
            v156 = v975;
            sub_24A39B7E4(v611, v608, &v998, &v996, v609, 0, 1, &v1006, v990, 0, 0, 2u, 2u, 2);
            sub_24A39A7B8(v606, type metadata accessor for FMFFriend);
            sub_24A39983C(v610, v606, type metadata accessor for FMFFriend);
            v612 = *v606;
            v613 = v606[1];
            swift_beginAccess();
            sub_24A3992EC(v606, v610, type metadata accessor for FMFFriend);

            v614 = swift_isUniquelyReferenced_nonNull_native();
            v998 = v1010;
            v615 = v610;
            v165 = v986;
            sub_24A39B15C(v615, v612, v613, v614);
            v616 = v606;
            v599 = v898;
            v179 = v991;

            v1010 = v998;
            swift_endAccess();
            sub_24A39A7B8(v616, type metadata accessor for FMFFriend);
          }

          else
          {
            swift_endAccess();
            v599 = v898;
          }
        }

        sub_24A39A7B8(v599, type metadata accessor for FMFLocation);
        v598 += v984;
        --v596;
      }

      while (v596);
    }

    v617 = v935;
    v618 = *(*(v935 + 608) + 16);
    v619 = v874;
    if (v618)
    {
      v983 = (v988 + 56);
      v981 = (v929 + 56);
      v980 = (v874 + 56);

      v620 = (v977 + 6);
      v621 = v985;
      while (1)
      {
        v631 = *(v620 - 2);
        v630 = *(v620 - 1);
        v632 = *v620;
        swift_beginAccess();
        v633 = v1010;
        v634 = *(v1010 + 16);

        if (!v634)
        {
          break;
        }

        v635 = sub_24A39B2C8(v631, v630);
        if ((v636 & 1) == 0)
        {
          break;
        }

        v637 = *(v633 + 56) + *(v988 + 72) * v635;
        v638 = v879;
        sub_24A3992EC(v637, v879, type metadata accessor for FMFFriend);
        v639 = v878;
        sub_24A39983C(v638, v878, type metadata accessor for FMFFriend);
        swift_endAccess();
        v640 = v991;
        if ((*(v639 + v991[9]) & 2) == 0)
        {
          sub_24A39A7B8(v639, type metadata accessor for FMFFriend);
LABEL_177:

          goto LABEL_171;
        }

        v984 = type metadata accessor for FMFFriend;
        sub_24A3992EC(v639, v621, type metadata accessor for FMFFriend);
        (*v983)(v621, 0, 1, v640);
        v622 = v978;
        (*v981)(v978, 1, 1, v989);
        v998 = 0;
        v999 = 1;
        v996 = 0;
        v997 = 1;
        v623 = v979;
        (*v980)(v979, 1, 1, v987);
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        v1006 = 0u;
        v624 = v990;
        sub_24A39B7E4(v621, v622, &v998, &v996, v623, 0, 1, &v1006, v990, 0, 0, v632, 2u, 2);

        v625 = v984;
        sub_24A39A7B8(v639, v984);
        sub_24A39983C(v624, v639, type metadata accessor for FMFFriend);
        v626 = *v639;
        v627 = v639[1];
        swift_beginAccess();
        sub_24A3992EC(v639, v624, v625);

        v628 = swift_isUniquelyReferenced_nonNull_native();
        v998 = v1010;
        v629 = v624;
        v165 = v986;
        sub_24A39B15C(v629, v626, v627, v628);

        v1010 = v998;
        swift_endAccess();
        sub_24A39A7B8(v639, v625);
LABEL_171:
        v620 += 24;
        if (!--v618)
        {

          v617 = v935;
          v619 = v874;
          goto LABEL_179;
        }
      }

      swift_endAccess();
      goto LABEL_177;
    }

LABEL_179:
    v179 = *(*(v617 + 600) + 16);
    if (!v179)
    {
      goto LABEL_193;
    }

    v984 = v988 + 56;
    v983 = (v929 + 56);
    v641 = (v619 + 56);

    v642 = v981 + 48;
    v643 = v884;
    while (1)
    {
      v645 = *(v642 - 2);
      v644 = *(v642 - 1);
      v646 = *v642;
      swift_beginAccess();
      v647 = v1010;
      v648 = *(v1010 + 16);

      if (v648 && (v649 = sub_24A39B2C8(v645, v644), (v650 & 1) != 0))
      {
        v651 = *(v647 + 56) + *(v988 + 72) * v649;
        v652 = v880;
        sub_24A3992EC(v651, v880, type metadata accessor for FMFFriend);
        v653 = v884;
        sub_24A39983C(v652, v884, type metadata accessor for FMFFriend);
        swift_endAccess();
        v654 = v991;
        if ((*(v653 + v991[9]) & 2) != 0)
        {
          v655 = v653;
          v656 = v872;
          sub_24A3992EC(v655, v872, type metadata accessor for FMFFriend);
          (*v984)(v656, 0, 1, v654);
          v657 = v873;
          (*v983)(v873, 1, 1, v989);
          v998 = 0;
          v999 = 1;
          v996 = 0;
          v997 = 1;
          v658 = v864;
          (*v641)(v864, 1, 1, v987);
          v1009 = 0;
          v1007 = 0u;
          v1008 = 0u;
          v1006 = 0u;
          if (v646)
          {
            v659 = sub_24A4AC270();

            v660 = v659 ^ 1;
            v656 = v872;
            v657 = v873;
          }

          else
          {

            v660 = 0;
          }

          v661 = v863;
          sub_24A39B7E4(v656, v657, &v998, &v996, v658, 0, 1, &v1006, v863, 0, 0, 2u, v660 & 1, 2);
          sub_24A39A7B8(v643, type metadata accessor for FMFFriend);
          sub_24A39983C(v661, v643, type metadata accessor for FMFFriend);
          v662 = *v643;
          v663 = v643[1];
          swift_beginAccess();
          v664 = v990;
          sub_24A3992EC(v643, v990, type metadata accessor for FMFFriend);

          v665 = swift_isUniquelyReferenced_nonNull_native();
          v998 = v1010;
          sub_24A39B15C(v664, v662, v663, v665);

          v1010 = v998;
          swift_endAccess();
          sub_24A39A7B8(v643, type metadata accessor for FMFFriend);
          goto LABEL_183;
        }

        sub_24A39A7B8(v653, type metadata accessor for FMFFriend);
      }

      else
      {
        swift_endAccess();
      }

LABEL_183:
      v642 += 24;
      if (!--v179)
      {

        v617 = v935;
        v165 = v986;
LABEL_193:
        v666 = *(v617 + 536);
        v667 = v666[5];
        v668 = v666[6];
        v669 = v666[7];
        v670 = v666[8];
        v976 = v666;
        v671 = v929;
        if (!v669)
        {
          sub_24A388B00(v667, v668, 0, v670);
          sub_24A37F110(v667, v668, 0, v670);
          v672 = v988;
          goto LABEL_197;
        }

        sub_24A388B00(v667, v668, v669, v670);

        sub_24A37F110(v667, v668, v669, v670);
        v672 = v988;
        if (!v670)
        {
LABEL_197:
          v673 = *(v935 + 744);
          v674 = *(v935 + 752);
          v675 = *(v935 + 760);
          v670 = *(v935 + 768);
          if (v675)
          {
            sub_24A388B00(v673, v674, *(v935 + 760), *(v935 + 768));

            sub_24A37F110(v673, v674, v675, v670);

            if (v670)
            {
              goto LABEL_199;
            }

LABEL_213:
            v156 = v931;
            goto LABEL_214;
          }

          sub_24A388B00(v673, v674, 0, *(v935 + 768));
          sub_24A37F110(v673, v674, 0, v670);
LABEL_212:

          goto LABEL_213;
        }

LABEL_199:
        v179 = *(v670 + 2);
        if (!v179)
        {
          goto LABEL_212;
        }

        v983 = (v672 + 56);
        v981 = (v671 + 56);
        v980 = (v874 + 56);
        v977 = v670;
        v676 = (v670 + 48);
        v156 = v931;
        while (2)
        {
          v688 = *(v676 - 2);
          v687 = *(v676 - 1);
          v689 = *v676;
          swift_beginAccess();
          v690 = v1010;
          v691 = *(v1010 + 16);

          if (v691 && (v692 = sub_24A39B2C8(v688, v687), (v693 & 1) != 0))
          {
            sub_24A3992EC(*(v690 + 56) + *(v988 + 72) * v692, v165, type metadata accessor for FMFFriend);
            v694 = v868;
            sub_24A39983C(v165, v868, type metadata accessor for FMFFriend);
            swift_endAccess();
            v695 = v991;
            if ((*(v694 + v991[9]) & 2) == 0)
            {
              sub_24A39A7B8(v694, type metadata accessor for FMFFriend);
              goto LABEL_208;
            }

            v984 = type metadata accessor for FMFFriend;
            v677 = v985;
            sub_24A3992EC(v694, v985, type metadata accessor for FMFFriend);
            (*v983)(v677, 0, 1, v695);
            v678 = v978;
            (*v981)(v978, 1, 1, v989);
            v998 = 0;
            v999 = 1;
            v996 = 0;
            v997 = 1;
            v679 = v979;
            (*v980)(v979, 1, 1, v987);
            v1009 = 0;
            v1007 = 0u;
            v1008 = 0u;
            v1006 = 0u;
            v680 = v990;
            v681 = v677;
            v165 = v986;
            sub_24A39B7E4(v681, v678, &v998, &v996, v679, v689, 0, &v1006, v990, 0, 0, 2u, 2u, 2);

            v682 = v984;
            sub_24A39A7B8(v694, v984);
            sub_24A39983C(v680, v694, type metadata accessor for FMFFriend);
            v683 = *v694;
            v684 = v694[1];
            swift_beginAccess();
            sub_24A3992EC(v694, v680, v682);

            v685 = swift_isUniquelyReferenced_nonNull_native();
            v998 = v1010;
            v686 = v680;
            v156 = v931;
            sub_24A39B15C(v686, v683, v684, v685);

            v1010 = v998;
            swift_endAccess();
            sub_24A39A7B8(v694, v682);
          }

          else
          {
            swift_endAccess();
LABEL_208:
          }

          v676 += 3;
          if (--v179)
          {
            continue;
          }

          break;
        }

LABEL_214:
        v696 = v976[2];
        v177 = v696 + 64;
        v697 = 1 << *(v696 + 32);
        v698 = -1;
        if (v697 < 64)
        {
          v698 = ~(-1 << v697);
        }

        v699 = v698 & *(v696 + 8);
        swift_beginAccess();
        v182 = (v697 + 63) >> 6;
        v986 = v696;

        for (i = 0; ; i = v702)
        {
          v180 = &qword_27EF405D0;
          if (!v699)
          {
            break;
          }

          v165 = i;
LABEL_226:
          v703 = __clz(__rbit64(v699));
          v699 &= v699 - 1;
          v704 = v703 | (v165 << 6);
          v705 = (*(v986 + 6) + 16 * v704);
          v707 = *v705;
          v706 = v705[1];
          v708 = v990;
          sub_24A3992EC(*(v986 + 7) + *(v988 + 72) * v704, v990, type metadata accessor for FMFFriend);
          v709 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
          v710 = *(v709 + 48);
          v711 = v934;
          *v934 = v707;
          v711[1] = v706;
          sub_24A39983C(v708, v711 + v710, type metadata accessor for FMFFriend);
          (*(*(v709 - 8) + 56))(v711, 0, 1, v709);

          v702 = v165;
          v712 = v711;
          v156 = v931;
LABEL_227:
          sub_24A37BE24(v712, v156, &qword_27EF405C8, &qword_24A4BACD8);
          v180 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
          v713 = *(v180 - 8);
          v165 = v713 + 48;
          v714 = *(v713 + 48);
          if ((v714)(v156, 1, v180) == 1)
          {
            v981 = v714;
            v983 = (v713 + 48);
            swift_endAccess();

            v721 = v976;
            swift_beginAccess();
            v156 = *(v721 + 24);
            v177 = (v156 + 8);
            v722 = 1 << *(v156 + 32);
            v723 = -1;
            if (v722 < 64)
            {
              v723 = ~(-1 << v722);
            }

            v724 = v723 & v156[8];
            v182 = (v722 + 63) >> 6;
            v984 = v713 + 56;
            v977 = (v988 + 56);

            v725 = 0;
            v986 = v180;
            v179 = v897;
            while (1)
            {
              if (v724)
              {
                v730 = v725;
                goto LABEL_245;
              }

              v731 = v182 <= v725 + 1 ? v725 + 1 : v182;
              v732 = v731 - 1;
              do
              {
                v730 = v725 + 1;
                if (__OFADD__(v725, 1))
                {
                  goto LABEL_341;
                }

                if (v730 >= v182)
                {
                  v980 = *v984;
                  (v980)(v179, 1, 1, v180);
                  v724 = 0;
                  v725 = v732;
                  goto LABEL_246;
                }

                v724 = *(v177 + 8 * v730);
                ++v725;
              }

              while (!v724);
              v725 = v730;
LABEL_245:
              v733 = __clz(__rbit64(v724));
              v724 &= v724 - 1;
              v734 = v733 | (v730 << 6);
              v735 = (v156[6] + 16 * v734);
              v737 = *v735;
              v736 = v735[1];
              v165 = v990;
              sub_24A3992EC(v156[7] + *(v988 + 72) * v734, v990, type metadata accessor for FMFFriend);
              v738 = v986;
              v739 = *(v986 + 12);
              *v179 = v737;
              *(v179 + 8) = v736;
              v180 = v738;
              sub_24A39983C(v165, v179 + v739, type metadata accessor for FMFFriend);
              v980 = *v984;
              (v980)(v179, 0, 1, v180);

LABEL_246:
              v740 = v930;
              sub_24A37BE24(v179, v930, &qword_27EF405C8, &qword_24A4BACD8);
              if ((v981)(v740, 1, v180) == 1)
              {
                break;
              }

              v741 = v180;
              v165 = *v740;
              v742 = v740[1];
              v743 = v740 + *(v741 + 48);
              v744 = j;
              sub_24A39983C(v743, j, type metadata accessor for FMFFriend);
              if (*&v744[v991[9]])
              {
                v726 = v990;
                sub_24A3992EC(v744, v990, type metadata accessor for FMFFriend);
                swift_beginAccess();
                v727 = swift_isUniquelyReferenced_nonNull_native();
                v996 = v1010;
                v1010 = 0x8000000000000000;
                v728 = v726;
                v179 = v897;
                sub_24A39B15C(v728, v165, v742, v727);
                v729 = j;

                v1010 = v996;
                swift_endAccess();
              }

              else
              {
                swift_beginAccess();
                v165 = sub_24A39B2C8(v165, v742);
                v746 = v745;

                if (v746)
                {
                  v747 = swift_isUniquelyReferenced_nonNull_native();
                  v996 = v1010;
                  v1010 = 0x8000000000000000;
                  sub_24A4537B8(v747, *(v996 + 24));
                  v748 = v996;

                  v749 = v885;
                  sub_24A39983C(*(v748 + 56) + *(v988 + 72) * v165, v885, type metadata accessor for FMFFriend);
                  sub_24A4A7450(v165, v748, v750);
                  v751 = 0;
                  v1010 = v748;
                }

                else
                {
                  v751 = 1;
                  v749 = v885;
                }

                (*v977)(v749, v751, 1, v991);
                sub_24A37EF2C(v749, &qword_27EF3F2D0, &qword_24A4B4F50);
                swift_endAccess();
                v729 = j;
              }

              sub_24A39A7B8(v729, type metadata accessor for FMFFriend);
              v180 = v986;
            }

            v752 = v976;
            swift_beginAccess();
            v156 = *(v752 + 32);
            v177 = (v156 + 8);
            v753 = 1 << *(v156 + 32);
            v754 = -1;
            if (v753 < 64)
            {
              v754 = ~(-1 << v753);
            }

            v755 = v754 & v156[8];
            v182 = (v753 + 63) >> 6;

            v756 = 0;
            while (1)
            {
              if (v755)
              {
                v762 = v756;
                goto LABEL_268;
              }

              v763 = v182 <= v756 + 1 ? v756 + 1 : v182;
              v764 = v763 - 1;
              do
              {
                v762 = v756 + 1;
                if (__OFADD__(v756, 1))
                {
                  goto LABEL_342;
                }

                if (v762 >= v182)
                {
                  v773 = v914;
                  (v980)(v914, 1, 1, v180);
                  v755 = 0;
                  v756 = v764;
                  goto LABEL_269;
                }

                v755 = *(v177 + 8 * v762);
                ++v756;
              }

              while (!v755);
              v756 = v762;
LABEL_268:
              v765 = __clz(__rbit64(v755));
              v755 &= v755 - 1;
              v766 = v765 | (v762 << 6);
              v767 = (v156[6] + 16 * v766);
              v769 = *v767;
              v768 = v767[1];
              v770 = v990;
              sub_24A3992EC(v156[7] + *(v988 + 72) * v766, v990, type metadata accessor for FMFFriend);
              v771 = v986;
              v772 = *(v986 + 12);
              v773 = v914;
              *v914 = v769;
              *(v773 + 8) = v768;
              v180 = v771;
              sub_24A39983C(v770, v773 + v772, type metadata accessor for FMFFriend);
              (v980)(v773, 0, 1, v180);

LABEL_269:
              v774 = v971;
              sub_24A37BE24(v773, v971, &qword_27EF405C8, &qword_24A4BACD8);
              if ((v981)(v774, 1, v180) == 1)
              {
                break;
              }

              v775 = *v774;
              v165 = v774[1];
              swift_beginAccess();
              v776 = sub_24A39B2C8(v775, v165);
              v778 = v777;

              if (v778)
              {
                v757 = swift_isUniquelyReferenced_nonNull_native();
                v994 = v1010;
                v1010 = 0x8000000000000000;
                sub_24A4537B8(v757, *(v994 + 24));
                v758 = v994;

                v179 = v912;
                sub_24A39983C(*(v758 + 56) + *(v988 + 72) * v776, v912, type metadata accessor for FMFFriend);
                sub_24A4A7450(v776, v758, v759);
                v760 = 0;
                v1010 = v758;
              }

              else
              {
                v760 = 1;
                v179 = v912;
              }

              (*v977)(v179, v760, 1, v991);
              v180 = v986;
              v761 = *(v986 + 12);
              sub_24A37EF2C(v179, &qword_27EF3F2D0, &qword_24A4B4F50);
              swift_endAccess();
              sub_24A39A7B8(v971 + v761, type metadata accessor for FMFFriend);
            }

            v165 = v1010 + 64;
            v779 = 1 << *(v1010 + 32);
            v780 = -1;
            if (v779 < 64)
            {
              v780 = ~(-1 << v779);
            }

            v179 = v780 & *(v1010 + 64);
            v182 = (v779 + 63) >> 6;
            v973 = v1010;

            v177 = 0;
            *&v781 = 136315138;
            v971 = v781;
            v782 = v985;
            v783 = v990;
            v156 = v913;
            for (j = v165; ; v165 = j)
            {
              while (2)
              {
                if (v179)
                {
                  v784 = v177;
                  goto LABEL_287;
                }

                if (v182 <= v177 + 1)
                {
                  v785 = v177 + 1;
                }

                else
                {
                  v785 = v182;
                }

                v786 = v785 - 1;
                do
                {
                  v784 = v177 + 1;
                  if (__OFADD__(v177, 1))
                  {
                    goto LABEL_343;
                  }

                  if (v784 >= v182)
                  {
                    (v980)(v156, 1, 1, v180);
                    v179 = 0;
                    v177 = v786;
                    goto LABEL_288;
                  }

                  v179 = *(v165 + 8 * v784);
                  ++v177;
                }

                while (!v179);
                v177 = v784;
LABEL_287:
                v787 = __clz(__rbit64(v179));
                v179 &= v179 - 1;
                v788 = v787 | (v784 << 6);
                v789 = (*(v973 + 48) + 16 * v788);
                v791 = *v789;
                v790 = v789[1];
                sub_24A3992EC(*(v973 + 56) + *(v988 + 72) * v788, v783, type metadata accessor for FMFFriend);
                v792 = *(v180 + 48);
                v793 = v913;
                *v913 = v791;
                *(v793 + 1) = v790;
                v156 = v793;
                sub_24A39983C(v783, &v793[v792], type metadata accessor for FMFFriend);
                (v980)(v156, 0, 1, v180);

LABEL_288:
                v794 = v911;
                sub_24A37BE24(v156, v911, &qword_27EF405C8, &qword_24A4BACD8);
                if ((v981)(v794, 1, v180) == 1)
                {

                  v812 = *(v935 + 744);
                  v813 = *(v935 + 745) | ((*(v935 + 749) | (*(v935 + 751) << 16)) << 32);
                  v814 = *(v935 + 744);
                  v815 = *(v935 + 752);
                  v816 = *(v935 + 760);
                  v817 = *(v935 + 768);
                  if (v816)
                  {
                    v818 = v812 | (v813 << 8);
                    sub_24A388B00(v814, *(v935 + 752), *(v935 + 760), *(v935 + 768));
                    sub_24A37F110(v818, v815, v816, v817);
                    if ((v812 & 1) == 0)
                    {
                      v156 = (v1010 + 64);
                      v819 = 1 << *(v1010 + 32);
                      v820 = -1;
                      if (v819 < 64)
                      {
                        v820 = ~(-1 << v819);
                      }

                      v179 = v820 & *(v1010 + 64);
                      v180 = (v819 + 63) >> 6;
                      v970 = (v929 + 56);
                      v969 = (v874 + 56);
                      *&v971 = v988 + 48;
                      v973 = v1010;

                      v821 = 0;
                      v165 = v865;
                      v177 = v866;
                      v822 = v883;
                      v972 = v156;
                      if (!v179)
                      {
LABEL_311:
                        if (v180 <= v821 + 1)
                        {
                          v825 = v821 + 1;
                        }

                        else
                        {
                          v825 = v180;
                        }

                        v826 = v825 - 1;
                        while (1)
                        {
                          v824 = v821 + 1;
                          if (__OFADD__(v821, 1))
                          {
                            goto LABEL_344;
                          }

                          if (v824 >= v180)
                          {
                            v182 = v986;
                            (v980)(v177, 1, 1, v986);
                            v179 = 0;
                            v821 = v826;
                            goto LABEL_320;
                          }

                          v179 = v156[v824];
                          ++v821;
                          if (v179)
                          {
                            v823 = v165;
                            v821 = v824;
                            goto LABEL_319;
                          }
                        }
                      }

                      while (1)
                      {
                        v823 = v165;
                        v824 = v821;
LABEL_319:
                        v827 = __clz(__rbit64(v179));
                        v179 &= v179 - 1;
                        v828 = v827 | (v824 << 6);
                        v829 = (*(v973 + 48) + 16 * v828);
                        v831 = *v829;
                        v830 = v829[1];
                        v832 = v990;
                        sub_24A3992EC(*(v973 + 56) + *(v988 + 72) * v828, v990, type metadata accessor for FMFFriend);
                        v182 = v986;
                        v833 = *(v986 + 12);
                        *v177 = v831;
                        *(v177 + 8) = v830;
                        sub_24A39983C(v832, v177 + v833, type metadata accessor for FMFFriend);
                        (v980)(v177, 0, 1, v182);

                        v822 = v883;
                        v165 = v823;
                        v156 = v972;
LABEL_320:
                        sub_24A37BE24(v177, v822, &qword_27EF405C8, &qword_24A4BACD8);
                        if ((v981)(v822, 1, v182) == 1)
                        {
                          break;
                        }

                        v834 = v822[1];
                        v976 = *v822;
                        sub_24A39983C(v822 + *(v182 + 48), v165, type metadata accessor for FMFFriend);
                        v835 = *(v165 + v991[9]);
                        if ((v835 & 8) != 0)
                        {
                          v975 = v834;
                          if ((v835 & 2) != 0)
                          {
                            v838 = v985;
                            sub_24A3992EC(v165, v985, type metadata accessor for FMFFriend);
                            j = *v977;
                            v837 = v991;
                            (j)(v838, 0, 1, v991);
                            v839 = v978;
                            (*v970)(v978, 1, 1, v989);
                            v994 = 0;
                            v995 = 1;
                            v992 = 8;
                            v993 = 0;
                            v840 = v979;
                            (*v969)(v979, 1, 1, v987);
                            v1009 = 0;
                            v1007 = 0u;
                            v1008 = 0u;
                            v1006 = 0u;
                            v836 = v875;
                            sub_24A39B7E4(v838, v839, &v994, &v992, v840, 0, 1, &v1006, v875, 0, 0, 2u, 2u, 2);
                            (j)(v836, 0, 1, v837);
                          }

                          else
                          {
                            v836 = v875;
                            v837 = v991;
                            j = *v977;
                            (j)(v875, 1, 1, v991);
                          }

                          v841 = v862;
                          v182 = &qword_27EF3F2D0;
                          sub_24A37B740(v836, v862, &qword_27EF3F2D0, &qword_24A4B4F50);
                          swift_beginAccess();
                          if ((*v971)(v841, 1, v837) == 1)
                          {
                            sub_24A37EF2C(v841, &qword_27EF3F2D0, &qword_24A4B4F50);
                            v842 = sub_24A39B2C8(v976, v975);
                            v844 = v843;

                            v165 = v865;
                            if (v844)
                            {
                              v845 = swift_isUniquelyReferenced_nonNull_native();
                              v994 = v1010;
                              v1010 = 0x8000000000000000;
                              sub_24A4537B8(v845, *(v994 + 24));
                              v846 = v994;

                              v847 = v860;
                              sub_24A39983C(*(v846 + 56) + *(v988 + 72) * v842, v860, type metadata accessor for FMFFriend);
                              sub_24A4A7450(v842, v846, v848);
                              v849 = 0;
                              v1010 = v846;
                              v850 = v875;
                              v822 = v883;
                            }

                            else
                            {
                              v849 = 1;
                              v850 = v875;
                              v822 = v883;
                              v847 = v860;
                            }

                            (j)(v847, v849, 1, v991);
                            sub_24A37EF2C(v847, &qword_27EF3F2D0, &qword_24A4B4F50);
                          }

                          else
                          {
                            v851 = v990;
                            sub_24A39983C(v841, v990, type metadata accessor for FMFFriend);
                            v852 = swift_isUniquelyReferenced_nonNull_native();
                            v994 = v1010;
                            v1010 = 0x8000000000000000;
                            sub_24A39B15C(v851, v976, v975, v852);

                            v1010 = v994;
                            v850 = v875;
                            v822 = v883;
                            v165 = v865;
                          }

                          swift_endAccess();
                          sub_24A37EF2C(v850, &qword_27EF3F2D0, &qword_24A4B4F50);
                          sub_24A39A7B8(v165, type metadata accessor for FMFFriend);
                          v177 = v866;
                          if (!v179)
                          {
                            goto LABEL_311;
                          }
                        }

                        else
                        {
                          sub_24A39A7B8(v165, type metadata accessor for FMFFriend);

                          if (!v179)
                          {
                            goto LABEL_311;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v853 = v812 | (v813 << 8);
                    sub_24A388B00(v814, *(v935 + 752), 0, *(v935 + 768));
                    sub_24A37F110(v853, v815, 0, v817);
                  }

                  v854 = v935;

                  v178 = sub_24A39DF4C(v855, v854);

                  if ((*(v854[6] + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) & 1) == 0)
                  {
                    v856 = v854[90];

                    sub_24A39F9FC(v178, v856);

                    v854 = v935;
                  }

                  v854[72] = v178;

                  return v178;
                }

                v795 = v794[1];
                v975 = *v794;
                v976 = v795;
                v796 = v794 + *(v180 + 48);
                v797 = v938;
                sub_24A39983C(v796, v938, type metadata accessor for FMFFriend);
                v798 = *(v797 + v991[9]);
                if ((v798 & 2) != 0 && (v799 = *(v797 + v991[10]), v799 != 2))
                {
                  v800 = v910;
                  if ((v798 & 8) != 0 || (v799 & 1) == 0)
                  {
LABEL_292:
                    sub_24A3992EC(v797, v800, type metadata accessor for FMFFriend);
                    v801 = sub_24A4AB600();
                    v802 = sub_24A4ABCE0();
                    if (os_log_type_enabled(v801, v802))
                    {
                      v803 = swift_slowAlloc();
                      v972 = swift_slowAlloc();
                      *&v1006 = v972;
                      *v803 = v971;
                      v804 = FMFFriend.name.getter();
                      v806 = v805;
                      sub_24A39A7B8(v800, type metadata accessor for FMFFriend);
                      v807 = sub_24A37BD58(v804, v806, &v1006);
                      v156 = v913;

                      *(v803 + 4) = v807;
                      _os_log_impl(&dword_24A376000, v801, v802, "FMFDataManager: checking if person is blocked %s", v803, 0xCu);
                      v808 = v972;
                      sub_24A37EEE0(v972);
                      MEMORY[0x24C219130](v808, -1, -1);
                      v809 = v803;
                      v782 = v985;
                      MEMORY[0x24C219130](v809, -1, -1);
                    }

                    else
                    {

                      sub_24A39A7B8(v800, type metadata accessor for FMFFriend);
                    }

                    v810 = v938;
                    v811 = FMFFriend.isBlocked()();
                    v783 = v990;
                    v165 = j;
                    if (v811)
                    {
                      (*v977)(v782, 1, 1, v991);
                      swift_beginAccess();
                      sub_24A39AF88(v782, v975, v976);
                      swift_endAccess();
                      sub_24A39A7B8(v810, type metadata accessor for FMFFriend);
                    }

                    else
                    {
                      sub_24A39A7B8(v810, type metadata accessor for FMFFriend);
                    }

                    v180 = v986;
                    continue;
                  }
                }

                else
                {
                  v800 = v910;
                  if ((v798 & 8) != 0)
                  {
                    goto LABEL_292;
                  }
                }

                break;
              }

              sub_24A39A7B8(v797, type metadata accessor for FMFFriend);
            }
          }

          v715 = v180;
          v716 = *v156;
          v717 = v156[1];
          v179 = v990;
          sub_24A39983C(v156 + *(v715 + 48), v990, type metadata accessor for FMFFriend);
          v718 = swift_isUniquelyReferenced_nonNull_native();
          v998 = v1010;
          v1010 = 0x8000000000000000;
          sub_24A39B15C(v179, v716, v717, v718);

          v1010 = v998;
        }

        if (v182 <= i + 1)
        {
          v701 = i + 1;
        }

        else
        {
          v701 = v182;
        }

        v702 = v701 - 1;
        while (1)
        {
          v165 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v165 >= v182)
          {
            v719 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
            v720 = v934;
            (*(*(v719 - 8) + 56))(v934, 1, 1, v719);
            v712 = v720;
            v699 = 0;
            goto LABEL_227;
          }

          v699 = *(v177 + 8 * v165);
          ++i;
          if (v699)
          {
            goto LABEL_226;
          }
        }

        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
        goto LABEL_345;
      }
    }
  }

  v181 = MEMORY[0x277D84F90];
  v165 = v986;
  v156 = v975;
LABEL_16:
  v966 = v181;

  v180 = sub_24A397C64();
  v981 = *(v180 + 16);
  if (v981)
  {
    v182 = 0;
    v977 = MEMORY[0x277D84F90];
    v177 = v984;
    v190 = v982;
    do
    {
      if (v182 >= *(v180 + 16))
      {
        goto LABEL_346;
      }

      v191 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v192 = *(v167 + 72);
      sub_24A3992EC(v180 + v191 + v192 * v182, v170, type metadata accessor for FMFLocationAlert);
      if (v170[*(v190 + 96)] == 1 && v170[*(v190 + 100)] == 1)
      {
        sub_24A39983C(v170, v980, type metadata accessor for FMFLocationAlert);
        v193 = v977;
        v194 = swift_isUniquelyReferenced_nonNull_native();
        *&v1006 = v193;
        if ((v194 & 1) == 0)
        {
          sub_24A3DBDE8(0, (v193[2] + 1), 1);
          v193 = v1006;
        }

        v196 = v193[2];
        v195 = v193[3];
        if (v196 >= v195 >> 1)
        {
          sub_24A3DBDE8((v195 > 1), v196 + 1, 1);
          v193 = v1006;
        }

        v193[2] = (v196 + 1);
        v977 = v193;
        sub_24A39983C(v980, v193 + v191 + v196 * v192, type metadata accessor for FMFLocationAlert);
        v165 = v986;
        v156 = v975;
        v177 = v984;
        v190 = v982;
      }

      else
      {
        sub_24A39A7B8(v170, type metadata accessor for FMFLocationAlert);
        v165 = v986;
      }

      ++v182;
      v179 = v991;
    }

    while (v981 != v182);
  }

  else
  {
    v977 = MEMORY[0x277D84F90];
    v179 = v991;
    v177 = v984;
  }

  v197 = *(v935 + 544);
  v901 = *(v197 + 16);
  if (!v901)
  {
    v982 = 0;
    v182 = v983;
    v180 = v965;
LABEL_79:
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_350;
  }

  v900 = v197 + ((*(v929 + 80) + 32) & ~*(v929 + 80));
  v970 = (v988 + 56);
  v887 = (v929 + 56);
  v969 = (v874 + 56);
  v946 = (v988 + 48);
  v886 = (v929 + 48);
  v945 = (v874 + 48);

  v199 = 0;
  v982 = 0;
  v861 = xmmword_24A4B4E10;
  v200 = v953;
  v182 = v902;
  v899 = v198;
  while (1)
  {
    if (v199 >= *(v198 + 16))
    {
      goto LABEL_347;
    }

    v212 = *(v929 + 72);
    v967 = v199;
    sub_24A3992EC(v900 + v212 * v199, v182, type metadata accessor for FMFIntermediateFriend);
    v213 = *(v935 + 536);
    v214 = *v182;
    v156 = *(v182 + 8);
    swift_beginAccess();
    v215 = *(v213 + 24);
    v216 = v969;
    if (!*(v215 + 16))
    {
      goto LABEL_44;
    }

    v217 = sub_24A39B2C8(v214, v156);
    if ((v218 & 1) == 0)
    {

LABEL_44:
      v968 = *v970;
      (v968)(v200, 1, 1, v179);
      v232 = v948;
      sub_24A3992EC(v182, v948, type metadata accessor for FMFIntermediateFriend);
      (*v887)(v232, 0, 1, v989);
      v233 = *v216;
      v234 = v200;
      v235 = v987;
      (*v216)(v949, 1, 1, v987);
      v236 = *(v179 + 84);
      *(v959 + v236) = 7;
      v237 = sub_24A4AAAD0();
      v238 = *(v237 - 8);
      v239 = *(v238 + 56);
      v240 = v952;
      v944 = v237;
      v943 = v239;
      v942 = v238 + 56;
      v239(v952, 1, 1);
      v241 = v950;
      v958 = v233;
      (v233)(v950, 1, 1, v235);
      v242 = v893;
      sub_24A37B740(v234, v893, &qword_27EF3F2D0, &qword_24A4B4F50);
      v941 = *v946;
      if (v941(v242, 1, v179) == 1)
      {
        sub_24A37EF2C(v242, &qword_27EF3F2D0, &qword_24A4B4F50);
        LODWORD(v928) = 0;
        LODWORD(v939) = 0;
        v243 = 0;
        v957 = 0;
        v940 = 0;
        v956 = 0;
        v926 = 0;
        v925 = 0;
        v924 = 0;
        v923 = 0;
        v922 = 0;
        *&v921 = 0;
        v954 = 0;
        v980 = 0;
        v955 = 0;
        v981 = 0xE000000000000000;
        v919 = 2;
        v927 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v917) = 2;
        v915 = 2;
        LODWORD(v918) = 2;
        v976 = MEMORY[0x277D84FA0];
        v920 = 1;
      }

      else
      {
        sub_24A37EF2C(v241, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v240, &qword_27EF3F460, &unk_24A4B53B0);
        v245 = v242;
        v246 = v881;
        sub_24A39983C(v245, v881, type metadata accessor for FMFFriend);
        v247 = v246[1];
        v955 = *v246;
        v981 = v247;
        v248 = v246[3];
        v954 = v246[2];
        v980 = v248;
        v976 = v246[4];
        sub_24A37B740(v246 + *(v179 + 32), v240, &qword_27EF3F460, &unk_24A4B53B0);
        v249 = *(v179 + 40);
        v920 = *(v246 + *(v179 + 36));
        LODWORD(v918) = *(v246 + v249);
        v250 = *(v179 + 48);
        v251 = v179;
        v915 = *(v246 + *(v179 + 44));
        LODWORD(v917) = *(v246 + v250);
        LODWORD(v939) = *(v246 + *(v179 + 72));
        v252 = *(v179 + 56);
        LODWORD(v928) = *(v246 + *(v179 + 52));
        v919 = *(v246 + v252);
        v927 = *(v246 + *(v179 + 60));
        sub_24A37B740(v246 + *(v179 + 80), v241, &qword_27EF3F480, &unk_24A4B8C20);
        v253 = v246 + *(v179 + 76);
        v254 = *(v253 + 1);
        v956 = *v253;
        v255 = v236;
        v256 = *(v253 + 2);
        v257 = *(v253 + 3);
        v258 = *(v253 + 4);
        v259 = *(v253 + 5);
        v260 = *(v253 + 6);
        v261 = *(v246 + v251[16]);
        v957 = *(v246 + v251[17]);
        *(v959 + v255) = *(v246 + v251[21]);
        v243 = v246[5];

        v926 = v254;
        v925 = v256;
        v924 = v257;
        v923 = v258;
        v922 = v259;
        *&v921 = v260;
        sub_24A39AED0(v956, v254, v256, v257, v258, v259, v260);

        v940 = v261;

        sub_24A39A7B8(v246, type metadata accessor for FMFFriend);
        v920 |= 1uLL;
        v232 = v948;
      }

      v244 = v896;
      sub_24A37B740(v232, v896, &qword_27EF3F2E0, &qword_24A4BACE0);
      if ((*v886)(v244, 1, v989) == 1)
      {
        v916 = v243;
        sub_24A37EF2C(v232, &qword_27EF3F2E0, &qword_24A4BACE0);
        sub_24A37EF2C(v953, &qword_27EF3F2D0, &qword_24A4B4F50);
        sub_24A37EF2C(v244, &qword_27EF3F2E0, &qword_24A4BACE0);
        v262 = v952;
        v263 = v919;
        v264 = v917;
        v265 = v915;
      }

      else
      {

        v266 = v244;
        v267 = v871;
        sub_24A39983C(v266, v871, type metadata accessor for FMFIntermediateFriend);
        if (v915 == 2 || (v915 & 1) == 0)
        {
          v269 = v989;
          v268 = *(v267 + *(v989 + 56));
        }

        else
        {
          v268 = 1;
          v269 = v989;
        }

        v270 = v267[1];
        v955 = *v267;
        v981 = v270;
        v271 = v267[3];
        v954 = v267[2];
        v980 = v271;
        if (v917 == 2 || (v917 & 1) == 0)
        {
          v272 = *(v267 + v269[15]);
        }

        else
        {
          v272 = 1;
        }

        if (v919 == 2 || (v919 & 1) == 0)
        {
          v273 = *(v267 + v269[16]);
        }

        else
        {
          v273 = 1;
        }

        v274 = v267[9];
        v916 = *(v267 + v269[17]);
        if (v274)
        {
          v275 = v267[8];
          sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
          v276 = v272;
          v277 = v273;
          v278 = swift_allocObject();
          *(v278 + 16) = v861;
          *(v278 + 32) = v275;
          *(v278 + 40) = v274;

          v976 = sub_24A48A0F4(v278, v976);
          swift_setDeallocating();
          sub_24A406964(v278 + 32);
          v273 = v277;
          v272 = v276;
          swift_deallocClassInstance();
        }

        else
        {
          v279 = v267[4];

          if (v279)
          {

            v280 = v273;
            v281 = sub_24A3999E0(v279);

            v282 = v281;
            v273 = v280;
            v976 = sub_24A399BC8(v282, v976);
          }
        }

        v283 = v952;
        v265 = v268 & 1;
        v264 = v272 & 1;
        v263 = v273 & 1;
        sub_24A37EF2C(v952, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37EF2C(v948, &qword_27EF3F2E0, &qword_24A4BACE0);
        sub_24A37EF2C(v953, &qword_27EF3F2D0, &qword_24A4B4F50);
        sub_24A37B740(v267 + *(v989 + 48), v283, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39A7B8(v267, type metadata accessor for FMFIntermediateFriend);
        v262 = v283;
      }

      v284 = v991;
      v285 = v991[14];
      v286 = v959;
      v287 = v981;
      *v959 = v955;
      v286[1] = v287;
      v288 = v980;
      v286[2] = v954;
      v286[3] = v288;
      v286[4] = v976;
      sub_24A37BE24(v262, v286 + v284[8], &qword_27EF3F460, &unk_24A4B53B0);
      *(v286 + v284[9]) = v920;
      *(v286 + v284[10]) = v918;
      *(v286 + v284[11]) = v265;
      v179 = v284;
      *(v286 + v284[12]) = v264;
      v289 = (v286 + v284[19]);
      v290 = v926;
      *v289 = v956;
      v289[1] = v290;
      v291 = v924;
      v289[2] = v925;
      v289[3] = v291;
      v292 = v922;
      v289[4] = v923;
      v289[5] = v292;
      v289[6] = v921;
      *(v286 + v285) = v263;
      *(v286 + v284[18]) = v939;
      *(v286 + v284[13]) = v928;
      v286[5] = v916;
      v293 = v286;
      *(v286 + v284[15]) = v927;
      v294 = v949;
      v295 = v987;
      v980 = *v945;
      if ((v980)(v949, 1, v987) == 1)
      {
        sub_24A37EF2C(v294, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v950, v286 + v284[20], &qword_27EF3F480, &unk_24A4B8C20);
        v296 = v982;
        v297 = v895;
        v298 = v958;
      }

      else
      {
        sub_24A37EF2C(v950, &qword_27EF3F480, &unk_24A4B8C20);
        v299 = v284[20];
        sub_24A39983C(v294, v293 + v299, type metadata accessor for FMFLocation);
        v298 = v958;
        (v958)(v293 + v299, 0, 1, v295);
        v296 = v982;
        v297 = v895;
      }

      *(v293 + v284[16]) = v940;
      *(v293 + v284[17]) = v957;
      v300 = v293;
      v301 = v947;
      sub_24A39983C(v300, v947, type metadata accessor for FMFFriend);

      v976 = sub_24A39A8F4(v302, v301);

      sub_24A39AB44(v303, v301, sub_24A454B90, sub_24A454B90);
      v957 = v304;
      v982 = v296;
      v305 = v894;
      sub_24A3992EC(v301, v894, type metadata accessor for FMFFriend);
      (v968)(v305, 0, 1, v284);
      (v298)(v951, 1, 1, v295);
      v306 = v295;
      v307 = v284[21];
      v308 = v892;
      v892[v307] = 7;
      v309 = v909;
      v943(v909, 1, 1, v944);
      (v298)(v960, 1, 1, v306);
      sub_24A37BE24(v305, v297, &qword_27EF3F2D0, &qword_24A4B4F50);
      if (v941(v297, 1, v284) == 1)
      {
        sub_24A37EF2C(v297, &qword_27EF3F2D0, &qword_24A4B4F50);
        v310 = 0;
        v939 = 0;
        v981 = 0;
        v956 = 0;
        v954 = 0;
        v944 = 0;
        v311 = 0;
        v312 = v309;
        v928 = 0;
        v313 = 0;
        v926 = 0;
        v314 = 0;
        v315 = 0;
        v316 = 0;
        v317 = 0;
        v318 = 0xE000000000000000;
        LODWORD(v927) = 2;
        v955 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v943) = 2;
        LODWORD(v941) = 2;
        LODWORD(v940) = 2;
        LODWORD(v942) = 2;
        v319 = MEMORY[0x277D84FA0];
        v320 = 0;
      }

      else
      {
        v321 = v960;
        sub_24A37EF2C(v960, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v309, &qword_27EF3F460, &unk_24A4B53B0);
        v322 = v882;
        sub_24A39983C(v297, v882, type metadata accessor for FMFFriend);
        v323 = v322[1];
        v922 = *v322;
        v925 = v323;
        v324 = v322[3];
        *&v921 = v322[2];
        v924 = v324;
        v923 = v322[4];
        sub_24A37B740(v322 + v284[8], v309, &qword_27EF3F460, &unk_24A4B53B0);
        v325 = v284[10];
        v920 = *(v322 + v284[9]);
        LODWORD(v942) = *(v322 + v325);
        v326 = v284[12];
        LODWORD(v940) = *(v322 + v284[11]);
        LODWORD(v941) = *(v322 + v326);
        LODWORD(v927) = *(v322 + v284[18]);
        v327 = v284[14];
        v919 = *(v322 + v284[13]);
        LODWORD(v943) = *(v322 + v327);
        v955 = *(v322 + v284[15]);
        sub_24A37B740(v322 + v284[20], v321, &qword_27EF3F480, &unk_24A4B8C20);
        v328 = (v322 + v284[19]);
        v330 = *v328;
        v329 = v328[1];
        v331 = v328[2];
        v917 = v328[3];
        v918 = v331;
        v332 = v328[4];
        v916 = v328[5];
        v333 = v328[6];
        v334 = *(v322 + *(v179 + 64));
        v981 = *(v322 + *(v179 + 68));
        *(v308 + v307) = *(v322 + *(v179 + 84));
        v335 = v322[5];

        v954 = v330;
        v336 = v330;
        v944 = v329;
        v337 = v329;
        v311 = v917;
        v320 = v918;
        v928 = v332;
        v338 = v332;
        v339 = v916;
        v926 = v333;
        sub_24A39AED0(v336, v337, v918, v917, v338, v916, v333);
        v939 = v335;
        v313 = v339;

        v956 = v334;
        v310 = v919;

        v317 = v920;

        sub_24A39A7B8(v322, type metadata accessor for FMFFriend);
        v312 = v909;
        v319 = v923;
        v318 = v925;
        v315 = v924;
        v316 = v922;
        v314 = v921;
      }

      v340 = *(v179 + 56);
      *v308 = v316;
      v308[1] = v318;
      v308[2] = v314;
      v308[3] = v315;
      v308[4] = v319;
      sub_24A37BE24(v312, v308 + *(v179 + 32), &qword_27EF3F460, &unk_24A4B53B0);
      *(v308 + *(v179 + 36)) = v317;
      *(v308 + *(v179 + 40)) = v942;
      *(v308 + *(v179 + 44)) = v940;
      *(v308 + *(v179 + 48)) = v941;
      v341 = (v308 + *(v179 + 76));
      v342 = v944;
      *v341 = v954;
      v341[1] = v342;
      v341[2] = v320;
      v341[3] = v311;
      v341[4] = v928;
      v341[5] = v313;
      v341[6] = v926;
      *(v308 + v340) = v943;
      *(v308 + *(v179 + 72)) = (v927 == 2) | v927 & 1;
      *(v308 + *(v179 + 52)) = v310;
      v308[5] = v939;
      *(v308 + *(v179 + 60)) = v955;
      v343 = v951;
      v344 = v987;
      if ((v980)(v951, 1, v987) == 1)
      {
        sub_24A37EF2C(v343, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v960, v308 + *(v179 + 80), &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A37EF2C(v960, &qword_27EF3F480, &unk_24A4B8C20);
        v345 = *(v179 + 80);
        sub_24A39983C(v343, v308 + v345, type metadata accessor for FMFLocation);
        (v958)(v308 + v345, 0, 1, v344);
      }

      v165 = v983;
      v200 = v953;
      v201 = v891;
      v202 = v947;
      v203 = v976;
      v204 = v957;

      *(v308 + *(v179 + 64)) = v203;
      *(v308 + *(v179 + 68)) = v204;
      sub_24A39983C(v308, v201, type metadata accessor for FMFFriend);
      sub_24A39AF20(v201, v202, type metadata accessor for FMFFriend);
      v205 = *v202;
      v206 = v202[1];
      v207 = v202;
      v208 = v202;
      v209 = v985;
      sub_24A3992EC(v207, v985, type metadata accessor for FMFFriend);
      (v968)(v209, 0, 1, v179);

      sub_24A39AF88(v209, v205, v206);
      v210 = v902;
      sub_24A39A7B8(v902, type metadata accessor for FMFIntermediateFriend);
      v211 = v208;
      v182 = v210;
      sub_24A39A7B8(v211, type metadata accessor for FMFFriend);
      v156 = v975;
      goto LABEL_33;
    }

    v182 = *(v988 + 72);
    v180 = type metadata accessor for FMFFriend;
    v219 = v889;
    sub_24A3992EC(*(v215 + 56) + v182 * v217, v889, type metadata accessor for FMFFriend);

    sub_24A3992EC(v219, v890, type metadata accessor for FMFFriend);
    v179 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v1010;
    *&v1006 = v1010;
    v1010 = 0x8000000000000000;
    v221 = sub_24A39B2C8(v214, v156);
    v177 = v222;
    v223 = *(v220 + 16);
    v224 = (v222 & 1) == 0;
    if (__OFADD__(v223, v224))
    {
      goto LABEL_348;
    }

    v180 = v221;
    if (sub_24A4537B8(v179, v223 + v224))
    {
      break;
    }

    v179 = v991;
    v227 = v1006;
    if ((v177 & 1) == 0)
    {
LABEL_41:
      v227[(v180 >> 6) + 8] |= 1 << v180;
      v228 = (v227[6] + 16 * v180);
      *v228 = v214;
      v228[1] = v156;
      sub_24A39983C(v890, v227[7] + v180 * v182, type metadata accessor for FMFFriend);

      sub_24A39A7B8(v889, type metadata accessor for FMFFriend);
      v229 = v227[2];
      v230 = __OFADD__(v229, 1);
      v231 = v229 + 1;
      if (v230)
      {
        goto LABEL_349;
      }

      v227[2] = v231;
      goto LABEL_65;
    }

LABEL_64:
    sub_24A39AF20(v890, v227[7] + v180 * v182, type metadata accessor for FMFFriend);
    sub_24A39A7B8(v889, type metadata accessor for FMFFriend);
LABEL_65:
    v182 = v902;
    sub_24A39A7B8(v902, type metadata accessor for FMFIntermediateFriend);
    v1010 = v227;

    v156 = v975;
    v165 = v983;
LABEL_33:
    v177 = v984;
    v180 = v965;
    v198 = v899;
    v199 = v967 + 1;
    if (v901 == v967 + 1)
    {

      v182 = v165;
      v165 = v986;
      goto LABEL_79;
    }
  }

  v225 = sub_24A39B2C8(v214, v156);
  v179 = v991;
  if ((v177 & 1) == (v226 & 1))
  {
    v180 = v225;
    v227 = v1006;
    if ((v177 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A397C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A390DA0();
  *a1 = result;
  return result;
}

void *sub_24A397C64()
{
  v1 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v207 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = v207 - v14;
  MEMORY[0x28223BE20](v16);
  v28 = v207 - v27;
  v29 = v0[86];
  if (v29)
  {
  }

  else
  {
    v213 = v22;
    *&v214 = v20;
    v216 = v24;
    v217 = v21;
    v227 = v19;
    v228 = v11;
    v215 = v17;
    v224 = v25;
    v225 = v26;
    v30 = v0[80];
    v31 = *(v30 + 16);
    v208 = v23;
    v209 = v0;
    v223 = v18;
    if (v31)
    {
      *&v212 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v32 = v30 + v212;
      v211 = *(v23 + 72);
      v207[1] = v30;

      v33 = v32;
      v222 = v31 - 1;
      v226 = MEMORY[0x277D84F90];
      *&v34 = 136315138;
      v210 = v34;
      while (1)
      {
        *&v218 = v33;
        sub_24A3992EC(v33, v15, type metadata accessor for FMFLocationAlert);
        v35 = *v15;
        v221 = *(v15 + 1);
        v36 = v221;
        *v28 = v35;
        *(v28 + 1) = v36;
        v28[42] = v15[42];
        v28[43] = v15[43];
        sub_24A37B740(&v15[v1[12]], &v28[v1[12]], &qword_27EF3F470, &qword_24A4B6960);
        v28[40] = v15[40];
        v28[41] = v15[41];
        v37 = v1[13];
        v39 = *&v15[v37];
        v220 = *&v15[v37 + 8];
        v38 = v220;
        v40 = &v28[v37];
        *v40 = v39;
        *(v40 + 1) = v38;
        v41 = v1[14];
        v42 = *&v15[v41];
        v43 = *&v15[v41 + 8];
        v44 = &v28[v41];
        *v44 = v42;
        *(v44 + 1) = v43;
        v28[v1[15]] = v15[v1[15]];
        *&v28[v1[16]] = *&v15[v1[16]];
        *&v28[v1[17]] = *&v15[v1[17]];
        v45 = v1[18];
        v219 = *&v15[v45];
        *&v28[v45] = v219;
        v46 = v1[19];
        v47 = *&v15[v46];
        v48 = *&v15[v46 + 8];
        v49 = &v28[v46];
        *v49 = v47;
        *(v49 + 1) = v48;
        *(v28 + 1) = *(v15 + 1);
        *(v28 + 4) = *(v15 + 4);
        sub_24A37B740(&v15[v1[26]], &v28[v1[26]], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(&v15[v1[27]], &v28[v1[27]], &qword_27EF3F460, &unk_24A4B53B0);
        v50 = v1[22];
        v51 = *&v15[v50];
        v52 = *&v15[v50 + 8];
        v53 = &v28[v50];
        *v53 = v51;
        *(v53 + 1) = v52;
        v54 = v1[23];
        memcpy(v230, &v15[v54], 0x130uLL);
        memcpy(&v28[v1[23]], &v15[v54], 0x130uLL);
        v55 = v1[20];
        v56 = *&v15[v55];
        v57 = *&v15[v55 + 8];
        v58 = *&v15[v55 + 16];
        v59 = &v28[v55];
        *v59 = v56;
        *(v59 + 1) = v57;
        *(v59 + 8) = v58;
        v28[v1[21]] = v15[v1[21]];
        v28[v1[24]] = 1;
        v28[v1[25]] = 1;

        sub_24A37B740(v230, v229, &unk_27EF404E0, &unk_24A4B5230);

        v60 = FMFLocationAlert.debugDescription.getter();
        v62 = v61;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v63 = sub_24A4AB630();
        sub_24A378E18(v63, qword_27EF4E260);

        v64 = sub_24A4AB600();
        v65 = sub_24A4ABCE0();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v229[0] = v67;
          *v66 = v210;
          v68 = sub_24A37BD58(v60, v62, v229);

          *(v66 + 4) = v68;
          v69 = v213;
          _os_log_impl(&dword_24A376000, v64, v65, "FMFFence: initialized from fence %s", v66, 0xCu);
          sub_24A37EEE0(v67);
          MEMORY[0x24C219130](v67, -1, -1);
          MEMORY[0x24C219130](v66, -1, -1);

          sub_24A39A7B8(v15, type metadata accessor for FMFLocationAlert);
          v29 = v226;
          v11 = v228;
        }

        else
        {

          sub_24A39A7B8(v15, type metadata accessor for FMFLocationAlert);
          v29 = v226;
          v11 = v228;
          v69 = v213;
        }

        sub_24A3992EC(v28, v69, type metadata accessor for FMFLocationAlert);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24A3EDEAC(0, v29[2] + 1, 1, v29);
        }

        v71 = v29[2];
        v70 = v29[3];
        if (v71 >= v70 >> 1)
        {
          v29 = sub_24A3EDEAC((v70 > 1), v71 + 1, 1, v29);
        }

        sub_24A39A7B8(v28, type metadata accessor for FMFLocationAlert);
        v29[2] = v71 + 1;
        v72 = v211;
        sub_24A39983C(v69, v29 + v212 + v71 * v211, type metadata accessor for FMFLocationAlert);
        if (!v222)
        {
          break;
        }

        v226 = v29;
        --v222;
        v33 = v218 + v72;
      }

      v23 = v208;
      v0 = v209;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v73 = v0[81];
    v74 = *(v73 + 16);
    v75 = v227;
    v76 = v217;
    if (v74)
    {
      v226 = v29;
      *&v218 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v77 = v73 + v218;
      v213 = *(v23 + 72);
      v211 = v73;

      v78 = v77;
      v222 = v74 - 1;
      *&v79 = 136315138;
      v212 = v79;
      while (1)
      {
        v219 = v78;
        sub_24A3992EC(v78, v76, type metadata accessor for FMFLocationAlert);
        v80 = *v76;
        v221 = *(v76 + 8);
        v81 = v221;
        *v11 = v80;
        *(v11 + 1) = v81;
        v11[42] = *(v76 + 42);
        v11[43] = *(v76 + 43);
        sub_24A37B740(v76 + v1[12], &v11[v1[12]], &qword_27EF3F470, &qword_24A4B6960);
        v11[40] = *(v76 + 40);
        v11[41] = *(v76 + 41);
        v82 = v1[13];
        v84 = *(v76 + v82);
        v220 = *(v76 + v82 + 8);
        v83 = v220;
        v85 = &v11[v82];
        *v85 = v84;
        *(v85 + 1) = v83;
        v86 = v1[14];
        v87 = *(v76 + v86);
        v88 = *(v76 + v86 + 8);
        v89 = &v228[v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        v228[v1[15]] = *(v76 + v1[15]);
        *&v228[v1[16]] = *(v76 + v1[16]);
        *&v228[v1[17]] = *(v76 + v1[17]);
        *&v228[v1[18]] = *(v76 + v1[18]);
        v90 = v1[19];
        v91 = *(v76 + v90);
        v92 = *(v76 + v90 + 8);
        v93 = &v228[v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        *(v228 + 1) = *(v76 + 16);
        *(v228 + 4) = *(v76 + 32);
        sub_24A37B740(v76 + v1[26], &v228[v1[26]], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v76 + v1[27], &v228[v1[27]], &qword_27EF3F460, &unk_24A4B53B0);
        v94 = v1[22];
        v95 = *(v76 + v94);
        v96 = *(v76 + v94 + 8);
        v97 = &v228[v94];
        *v97 = v95;
        *(v97 + 1) = v96;
        v98 = v1[23];
        memcpy(v230, (v76 + v98), 0x130uLL);
        memcpy(&v228[v1[23]], (v76 + v98), 0x130uLL);
        v99 = v1[20];
        v100 = *(v76 + v99);
        v101 = *(v76 + v99 + 8);
        v102 = *(v76 + v99 + 16);
        v103 = &v228[v99];
        *v103 = v100;
        *(v103 + 1) = v101;
        *(v103 + 8) = v102;
        v228[v1[21]] = *(v76 + v1[21]);
        v228[v1[24]] = 0;
        v228[v1[25]] = 1;

        v11 = v228;

        sub_24A37B740(v230, v229, &unk_27EF404E0, &unk_24A4B5230);

        v104 = FMFLocationAlert.debugDescription.getter();
        v106 = v105;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v107 = sub_24A4AB630();
        sub_24A378E18(v107, qword_27EF4E260);

        v108 = sub_24A4AB600();
        v109 = sub_24A4ABCE0();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v229[0] = v111;
          *v110 = v212;
          v112 = sub_24A37BD58(v104, v106, v229);

          *(v110 + 4) = v112;
          _os_log_impl(&dword_24A376000, v108, v109, "FMFFence: initialized from fence %s", v110, 0xCu);
          sub_24A37EEE0(v111);
          MEMORY[0x24C219130](v111, -1, -1);
          MEMORY[0x24C219130](v110, -1, -1);
        }

        else
        {
        }

        v76 = v217;
        sub_24A39A7B8(v217, type metadata accessor for FMFLocationAlert);
        v75 = v227;
        v113 = v214;
        sub_24A3992EC(v11, v214, type metadata accessor for FMFLocationAlert);
        v29 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24A3EDEAC(0, v29[2] + 1, 1, v29);
        }

        v115 = v29[2];
        v114 = v29[3];
        if (v115 >= v114 >> 1)
        {
          v29 = sub_24A3EDEAC((v114 > 1), v115 + 1, 1, v29);
        }

        sub_24A39A7B8(v11, type metadata accessor for FMFLocationAlert);
        v29[2] = v115 + 1;
        v116 = v213;
        sub_24A39983C(v113, v29 + v218 + v115 * v213, type metadata accessor for FMFLocationAlert);
        if (!v222)
        {
          break;
        }

        v226 = v29;
        --v222;
        v78 = v219 + v116;
      }

      v23 = v208;
      v0 = v209;
    }

    v117 = v0[82];
    v118 = *(v117 + 16);
    if (v118)
    {
      v226 = v29;
      *&v218 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v119 = v117 + v218;
      v217 = *(v23 + 72);
      v213 = v117;

      v120 = v119;
      v228 = (v118 - 1);
      *&v121 = 136315138;
      v214 = v121;
      while (1)
      {
        v219 = v120;
        v122 = v223;
        sub_24A3992EC(v120, v223, type metadata accessor for FMFLocationAlert);
        v123 = *v122;
        v222 = *(v122 + 8);
        v124 = v222;
        *v75 = v123;
        *(v75 + 8) = v124;
        *(v75 + 42) = *(v122 + 42);
        *(v75 + 43) = *(v122 + 43);
        sub_24A37B740(v122 + v1[12], v75 + v1[12], &qword_27EF3F470, &qword_24A4B6960);
        *(v75 + 40) = *(v122 + 40);
        *(v75 + 41) = *(v122 + 41);
        v125 = v1[13];
        v127 = *(v122 + v125);
        v221 = *(v122 + v125 + 8);
        v126 = v221;
        v128 = (v75 + v125);
        *v128 = v127;
        v128[1] = v126;
        v129 = v1[14];
        v131 = *(v122 + v129);
        v220 = *(v122 + v129 + 8);
        v130 = v220;
        v132 = (v75 + v129);
        *v132 = v131;
        v132[1] = v130;
        *(v75 + v1[15]) = *(v122 + v1[15]);
        *(v75 + v1[16]) = *(v122 + v1[16]);
        *(v75 + v1[17]) = *(v122 + v1[17]);
        *(v75 + v1[18]) = *(v122 + v1[18]);
        v133 = v1[19];
        v134 = *(v122 + v133);
        v135 = *(v122 + v133 + 8);
        v136 = (v75 + v133);
        *v136 = v134;
        v136[1] = v135;
        *(v75 + 16) = *(v122 + 16);
        *(v75 + 32) = *(v122 + 32);
        sub_24A37B740(v122 + v1[26], v75 + v1[26], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v122 + v1[27], v75 + v1[27], &qword_27EF3F460, &unk_24A4B53B0);
        v137 = v1[22];
        v138 = *(v122 + v137);
        v139 = *(v122 + v137 + 8);
        v140 = (v227 + v137);
        *v140 = v138;
        v140[1] = v139;
        v141 = v1[23];
        memcpy(v230, (v122 + v141), 0x130uLL);
        memcpy((v227 + v1[23]), (v122 + v141), 0x130uLL);
        v142 = v1[20];
        v143 = *(v122 + v142);
        v144 = *(v122 + v142 + 8);
        v145 = *(v122 + v142 + 16);
        v146 = v227 + v142;
        *v146 = v143;
        *(v146 + 8) = v144;
        *(v146 + 16) = v145;
        *(v227 + v1[21]) = *(v122 + v1[21]);
        *(v227 + v1[24]) = 1;
        *(v227 + v1[25]) = 0;
        v75 = v227;

        sub_24A37B740(v230, v229, &unk_27EF404E0, &unk_24A4B5230);

        v147 = FMFLocationAlert.debugDescription.getter();
        v149 = v148;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v150 = sub_24A4AB630();
        sub_24A378E18(v150, qword_27EF4E260);

        v151 = sub_24A4AB600();
        v152 = sub_24A4ABCE0();

        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v229[0] = v154;
          *v153 = v214;
          v155 = sub_24A37BD58(v147, v149, v229);

          *(v153 + 4) = v155;
          _os_log_impl(&dword_24A376000, v151, v152, "FMFFence: initialized from fence %s", v153, 0xCu);
          sub_24A37EEE0(v154);
          MEMORY[0x24C219130](v154, -1, -1);
          v156 = v153;
          v75 = v227;
          MEMORY[0x24C219130](v156, -1, -1);
        }

        else
        {
        }

        sub_24A39A7B8(v223, type metadata accessor for FMFLocationAlert);
        v157 = v215;
        sub_24A3992EC(v75, v215, type metadata accessor for FMFLocationAlert);
        v29 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24A3EDEAC(0, v29[2] + 1, 1, v29);
        }

        v159 = v29[2];
        v158 = v29[3];
        if (v159 >= v158 >> 1)
        {
          v29 = sub_24A3EDEAC((v158 > 1), v159 + 1, 1, v29);
        }

        sub_24A39A7B8(v75, type metadata accessor for FMFLocationAlert);
        v29[2] = v159 + 1;
        v160 = v217;
        sub_24A39983C(v157, v29 + v218 + v159 * v217, type metadata accessor for FMFLocationAlert);
        if (!v228)
        {
          break;
        }

        v226 = v29;
        --v228;
        v120 = v219 + v160;
      }

      v23 = v208;
      v0 = v209;
    }

    v161 = v0[83];
    v162 = *(v161 + 16);
    if (v162)
    {
      v226 = v29;
      v220 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v163 = v161 + v220;
      v219 = *(v23 + 72);
      v217 = v161;

      v164 = v163;
      v228 = (v162 - 1);
      *&v165 = 136315138;
      v218 = v165;
      while (1)
      {
        v221 = v164;
        v166 = v224;
        sub_24A3992EC(v164, v224, type metadata accessor for FMFLocationAlert);
        v167 = *v166;
        v227 = *(v166 + 8);
        v168 = v227;
        v169 = v225;
        *v225 = v167;
        v169[1] = v168;
        *(v169 + 42) = *(v166 + 42);
        *(v169 + 43) = *(v166 + 43);
        sub_24A37B740(v166 + v1[12], v169 + v1[12], &qword_27EF3F470, &qword_24A4B6960);
        *(v169 + 40) = *(v166 + 40);
        *(v169 + 41) = *(v166 + 41);
        v170 = v1[13];
        v172 = *(v166 + v170);
        v223 = *(v166 + v170 + 8);
        v171 = v223;
        v173 = (v169 + v170);
        *v173 = v172;
        v173[1] = v171;
        v174 = v1[14];
        v176 = *(v166 + v174);
        v222 = *(v166 + v174 + 8);
        v175 = v222;
        v177 = (v169 + v174);
        *v177 = v176;
        v177[1] = v175;
        *(v169 + v1[15]) = *(v166 + v1[15]);
        *(v169 + v1[16]) = *(v166 + v1[16]);
        *(v169 + v1[17]) = *(v166 + v1[17]);
        *(v169 + v1[18]) = *(v166 + v1[18]);
        v178 = v1[19];
        v179 = *(v166 + v178);
        v180 = *(v166 + v178 + 8);
        v181 = (v169 + v178);
        *v181 = v179;
        v181[1] = v180;
        *(v169 + 1) = *(v166 + 16);
        v169[4] = *(v166 + 32);
        sub_24A37B740(v166 + v1[26], v169 + v1[26], &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A37B740(v166 + v1[27], v169 + v1[27], &qword_27EF3F460, &unk_24A4B53B0);
        v182 = v1[22];
        v183 = *(v166 + v182);
        v184 = *(v166 + v182 + 8);
        v185 = (v169 + v182);
        *v185 = v183;
        v185[1] = v184;
        v186 = v1[23];
        memcpy(v230, (v166 + v186), 0x130uLL);
        memcpy(v169 + v1[23], (v166 + v186), 0x130uLL);
        v187 = v1[20];
        v188 = *(v166 + v187);
        v189 = *(v166 + v187 + 8);
        v190 = *(v166 + v187 + 16);
        v191 = v169 + v187;
        *v191 = v188;
        *(v191 + 1) = v189;
        *(v191 + 8) = v190;
        *(v169 + v1[21]) = *(v166 + v1[21]);
        *(v169 + v1[24]) = 0;
        *(v169 + v1[25]) = 0;

        sub_24A37B740(v230, v229, &unk_27EF404E0, &unk_24A4B5230);

        v192 = FMFLocationAlert.debugDescription.getter();
        v194 = v193;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v195 = sub_24A4AB630();
        sub_24A378E18(v195, qword_27EF4E260);

        v196 = sub_24A4AB600();
        v197 = sub_24A4ABCE0();

        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v229[0] = v199;
          *v198 = v218;
          v200 = sub_24A37BD58(v192, v194, v229);

          *(v198 + 4) = v200;
          _os_log_impl(&dword_24A376000, v196, v197, "FMFFence: initialized from fence %s", v198, 0xCu);
          sub_24A37EEE0(v199);
          MEMORY[0x24C219130](v199, -1, -1);
          MEMORY[0x24C219130](v198, -1, -1);
        }

        else
        {
        }

        sub_24A39A7B8(v224, type metadata accessor for FMFLocationAlert);
        v201 = v216;
        sub_24A3992EC(v225, v216, type metadata accessor for FMFLocationAlert);
        v29 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24A3EDEAC(0, v29[2] + 1, 1, v29);
        }

        v203 = v29[2];
        v202 = v29[3];
        v204 = v225;
        if (v203 >= v202 >> 1)
        {
          v29 = sub_24A3EDEAC((v202 > 1), v203 + 1, 1, v29);
          v204 = v225;
        }

        sub_24A39A7B8(v204, type metadata accessor for FMFLocationAlert);
        v29[2] = v203 + 1;
        v205 = v219;
        sub_24A39983C(v201, v29 + v220 + v203 * v219, type metadata accessor for FMFLocationAlert);
        if (!v228)
        {
          break;
        }

        v226 = v29;
        --v228;
        v164 = v221 + v205;
      }

      v0 = v209;
    }

    v0[86] = v29;

    v0[72] = 0;
  }

  return v29;
}

uint64_t sub_24A39921C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A399284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3992EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A399368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A39942C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3994F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24A399640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A3996FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A39976C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3997D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39983C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3998A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A39997C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A3999E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C218010](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24A399A78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24A399A78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24A4AC360();
  sub_24A4AB8F0();
  v8 = sub_24A4AC3A0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24A4AC270() & 1) != 0)
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

    sub_24A399D18(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24A399BC8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24A399A78(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FMFMyLocationController(uint64_t a1)
{
  result = qword_27EF40860;
  if (!qword_27EF40860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A399D18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24A4865F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24A487BF4();
      goto LABEL_16;
    }

    sub_24A399FCC(v8 + 1);
  }

  v10 = *v4;
  sub_24A4AC360();
  sub_24A4AB8F0();
  v11 = sub_24A4AC3A0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24A4AC270() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24A4AC2A0();
  __break(1u);
}

void sub_24A399E98(uint64_t a1)
{
  sub_24A399F74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A399F74(uint64_t a1)
{
  if (!qword_27EF40870)
  {
    type metadata accessor for FMFLocation(255);
    v1 = sub_24A4ABDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF40870);
    }
  }
}

uint64_t sub_24A399FCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF00();
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
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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

char *sub_24A39A204(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_24A4ABD50();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v6 - 8);
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation] = 0;
  *&v1[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = 0;
  v7 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
  v8 = type metadata accessor for FMFLocation(0);
  v9 = *(*(v8 - 8) + 56);
  v9(&v2[v7], 1, 1, v8);
  v9(&v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation], 1, 1, v8);
  v10 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v2[v10] = FMLocationShifter.init()();
  v11 = &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
  *v12 = 0;
  v12[8] = 1;
  v21 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue;
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v27 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
  *&v2[v21] = sub_24A4ABD90();
  v13 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  *&v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager] = v13;
  v14 = v25;
  sub_24A39997C(v25, &v2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController]);
  v15 = type metadata accessor for FMFMyLocationController(0);
  v26.receiver = v2;
  v26.super_class = v15;
  v16 = objc_msgSendSuper2(&v26, sel_init);
  v17 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager;
  v18 = *&v16[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager];
  v19 = v16;
  [v18 setDelegate_];
  [*&v16[v17] setDesiredAccuracy_];
  [*&v16[v17] setDistanceFilter_];

  sub_24A37EEE0(v14);
  return v19;
}

uint64_t sub_24A39A638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A39A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A39A8F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v8 + 72);
  v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v23;
  v14 = MEMORY[0x277D84F90];
  v24 = v4;
  do
  {
    sub_24A3992EC(v13, v10, type metadata accessor for FMFLocationAlert);
    v15 = &v10[*(v4 + 76)];
    v16 = *(v15 + 1);
    if (v16 && (*v15 == *a2 ? (v17 = v16 == a2[1]) : (v17 = 0), v17 || (sub_24A4AC270() & 1) != 0))
    {
      sub_24A39983C(v10, v6, type metadata accessor for FMFLocationAlert);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A3DBDE8(0, *(v14 + 16) + 1, 1);
        v14 = v25;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24A3DBDE8((v19 > 1), v20 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v20 + 1;
      sub_24A39983C(v6, v14 + v23 + v20 * v12, type metadata accessor for FMFLocationAlert);
      v4 = v24;
    }

    else
    {
      sub_24A39A7B8(v10, type metadata accessor for FMFLocationAlert);
    }

    v13 += v12;
    --v11;
  }

  while (v11);
  return v14;
}

void sub_24A39AB44(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *, __n128), uint64_t (*a4)(void *, __n128))
{
  v25 = a2;
  v26 = a3;
  v7 = type metadata accessor for FMFLocationAlert(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21 = a4;
    v22 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v16 = *(v8 + 72);
      sub_24A3992EC(a1 + v15 + v16 * v13, v12, type metadata accessor for FMFLocationAlert);
      sub_24A44F860(v12, v25, v26, a4);
      if (v4)
      {
        sub_24A39A7B8(v12, type metadata accessor for FMFLocationAlert);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_24A39983C(v12, v24, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v14 + 16) + 1, 1);
          v14 = v27;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24A3DBDE8((v19 > 1), v20 + 1, 1);
          v14 = v27;
        }

        *(v14 + 16) = v20 + 1;
        sub_24A39983C(v24, v14 + v15 + v20 * v16, type metadata accessor for FMFLocationAlert);
        a4 = v21;
        a1 = v22;
      }

      else
      {
        sub_24A39A7B8(v12, type metadata accessor for FMFLocationAlert);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

unint64_t sub_24A39ADC8()
{
  result = qword_27EF3FE18;
  if (!qword_27EF3FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE18);
  }

  return result;
}

unint64_t sub_24A39AE1C()
{
  result = qword_27EF3F340;
  if (!qword_27EF3F340)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A38B7D4(&qword_27EF3F348, type metadata accessor for FMFLabelledLocation, &protocol conformance descriptor for FMFLabelledLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F340);
  }

  return result;
}

double sub_24A39AED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A39AF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FMFFriend(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A4A471C(a2, a3, v9);

    return sub_24A37EF2C(v9, &qword_27EF3F2D0, &qword_24A4B4F50);
  }

  else
  {
    sub_24A3998A4(a1, v13, type metadata accessor for FMFFriend);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24A39B15C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void sub_24A39B15C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FMFFriend(0);
      sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FMFFriend);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A91D8();
    goto LABEL_7;
  }

  sub_24A4A5AB4(v15, a4 & 1);
  v21 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24A4AC2B0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A8218(v12, a2, a3, a1, v18);
}

unint64_t sub_24A39B2C8(uint64_t a1, uint64_t a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  v4 = sub_24A4AC3A0();

  return sub_24A39B680(a1, a2, v4);
}

uint64_t sub_24A39B340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  sub_24A3C9CEC(a4, a5);
  v47 = v10;
  result = sub_24A4AC080();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_24A3998A4(v34, v48, v49);
      }

      else
      {
        sub_24A399284(v34, v48, v49);
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_24A3998A4(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

unint64_t sub_24A39B680(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A4AC270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A39B738(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_24A3998A4(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24A39B7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, char a14)
{
  v176 = a7;
  v177 = a6;
  v170 = a5;
  v188 = a2;
  v191 = a1;
  v18 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  MEMORY[0x28223BE20](v18 - 8);
  v171 = &v146 - v19;
  v180 = type metadata accessor for FMFIntermediateFriend(0);
  v151 = *(v180 - 1);
  MEMORY[0x28223BE20](v180);
  v150 = (&v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v146 - v22;
  v24 = type metadata accessor for FMFFriend(0);
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = (&v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v146 - v29;
  v31 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v146 - v32;
  v161 = *a3;
  v183 = *(a3 + 8);
  v166 = *a4;
  v165 = *(a4 + 8);
  v34 = a8[1];
  v160 = *a8;
  v194 = v34;
  v35 = a8[3];
  v159 = a8[2];
  v158 = v35;
  v36 = a8[5];
  v157 = a8[4];
  v156 = v36;
  v155 = a8[6];
  v37 = v24[21];
  v38 = a9;
  *(a9 + v37) = 7;
  v39 = v37;
  v40 = sub_24A4AAAD0();
  (*(*(v40 - 8) + 56))(v33, 1, 1, v40);
  v41 = type metadata accessor for FMFLocation(0);
  v174 = *(v41 - 8);
  v42 = *(v174 + 56);
  v169 = v41;
  v154 = v174 + 56;
  v153 = v42;
  (v42)(v30, 1, 1);
  sub_24A37B740(v191, v23, &qword_27EF3F2D0, &qword_24A4B4F50);
  v43 = (*(v25 + 48))(v23, 1, v24);
  v175 = v30;
  v179 = v33;
  if (v43 == 1)
  {
    sub_24A37EF2C(v23, &qword_27EF3F2D0, &qword_24A4B4F50);
    v173 = 0;
    v189 = 0;
    v187 = 0;
    v168 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v167 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v181 = 0;
    v193 = 0;
    v182 = 0;
    v50 = 0;
    v192 = 0xE000000000000000;
    v51 = MEMORY[0x277D84FA0];
    v152 = 2;
    v172 = 0x7FFFFFFFFFFFFFFFLL;
    v186 = 2;
    v185 = 2;
    v184 = 2;
    v178 = 2;
    v52 = v38;
  }

  else
  {
    sub_24A37EF2C(v30, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v33, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A39CAB8(v23, v27, type metadata accessor for FMFFriend);
    v53 = v27[1];
    v182 = *v27;
    v192 = v53;
    v54 = v27[3];
    v181 = v27[2];
    v193 = v54;
    v147 = v27[4];
    sub_24A37B740(v27 + v24[8], v33, &qword_27EF3F460, &unk_24A4B53B0);
    v55 = v24[10];
    v148 = *(v27 + v24[9]);
    v178 = *(v27 + v55);
    v56 = v24[12];
    v184 = *(v27 + v24[11]);
    v185 = *(v27 + v56);
    v152 = *(v27 + v24[18]);
    v57 = v24[14];
    v173 = *(v27 + v24[13]);
    v186 = *(v27 + v57);
    v172 = *(v27 + v24[15]);
    sub_24A37B740(v27 + v24[20], v30, &qword_27EF3F480, &unk_24A4B8C20);
    v58 = (v27 + v24[19]);
    v59 = v38;
    v149 = v38;
    v60 = *v58;
    v163 = v58[1];
    v61 = v163;
    v46 = v58[2];
    v62 = v58[3];
    v164 = v58[4];
    v63 = v58[6];
    v162 = v58[5];
    v64 = *(v27 + v24[16]);
    v187 = *(v27 + v24[17]);
    *(v59 + v39) = *(v27 + v24[21]);
    v65 = v62;
    v66 = v27[5];

    v51 = v147;

    v67 = v61;
    v167 = v65;
    v68 = v65;
    v69 = v164;
    v70 = v162;
    sub_24A39AED0(v60, v67, v46, v68, v164, v162, v63);
    v189 = v66;

    v168 = v64;

    v71 = v27;
    v44 = v60;
    sub_24A39A698(v71, type metadata accessor for FMFFriend);
    v45 = v163;
    v50 = v148;
    v49 = v63;
    v48 = v70;
    v47 = v69;
    v52 = v149;
  }

  v72 = v180;
  v73 = v171;
  v190 = v24;
  if ((v183 & 1) == 0)
  {
    v163 = v45;
    v148 = v49;
    v162 = v48;
    v77 = v51;
    v164 = v47;
    v78 = v161;
    if ((v161 & ~v50) != 0)
    {
      v79 = v161;
    }

    else
    {
      v79 = 0;
    }

    v80 = v79 | v50;
    sub_24A37B740(v188, v171, &qword_27EF3F2E0, &qword_24A4BACE0);
    if ((*(v151 + 48))(v73, 1, v72) == 1)
    {
      sub_24A37EF2C(v73, &qword_27EF3F2E0, &qword_24A4BACE0);
      v74 = v194;
      v75 = v166;
      v76 = v165;
      v47 = v164;
      v51 = v77;
      v48 = v162;
      v49 = v148;
      v50 = v80;
      v45 = v163;
      goto LABEL_44;
    }

    v81 = v46;

    v82 = v150;
    sub_24A39CAB8(v73, v150, type metadata accessor for FMFIntermediateFriend);
    if (v184 == 2 || (v184 & 1) == 0)
    {
      v83 = *(v82 + v72[14]);
    }

    else
    {
      v83 = 1;
    }

    if (v185 == 2 || (v185 & 1) == 0)
    {
      v84 = *(v82 + v72[15]);
    }

    else
    {
      v84 = 1;
    }

    v85 = *v82;
    v192 = v82[1];
    v86 = v83 & 1;
    v87 = v82[2];
    v193 = v82[3];
    if (v186 == 2 || (v186 & 1) == 0)
    {
      v88 = *(v82 + v72[16]);
    }

    else
    {
      v88 = 1;
    }

    result = *(v82 + v72[17]);
    v186 = v88 & 1;
    v182 = v85;
    v181 = v87;
    v189 = result;
    if (v78 > 3)
    {
      if (v78 == 4)
      {
        v147 = v44;
        v184 = v86;
        v185 = v84 & 1;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        result = swift_initStackObject();
        *(result + 16) = xmmword_24A4B4E10;
        v94 = v82[7];
        if (!v94)
        {
LABEL_80:
          __break(1u);
          return result;
        }

        v95 = v82[6];
      }

      else
      {
        if (v78 != 8)
        {
          goto LABEL_32;
        }

        v147 = v44;
        v184 = v86;
        v185 = v84 & 1;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        result = swift_initStackObject();
        *(result + 16) = xmmword_24A4B4E10;
        v94 = v82[9];
        if (!v94)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v95 = v82[8];
      }

      v101 = v82;
      *(result + 32) = v95;
      v102 = result + 32;
      *(result + 40) = v94;
      v103 = result;

      v104 = sub_24A3999E0(v103);
      swift_setDeallocating();
      sub_24A406964(v102);
      v51 = sub_24A399BC8(v104, v77);
      sub_24A39A698(v101, type metadata accessor for FMFIntermediateFriend);
      v74 = v194;
      v75 = v166;
      v76 = v165;
      v47 = v164;
    }

    else
    {
      if (v78 != 1)
      {
        if (v78 == 2)
        {
          v90 = v82[5];
          if (v90)
          {
            v91 = v82;

            v92 = sub_24A3999E0(v90);

            v51 = sub_24A399BC8(v92, v77);
            v93 = v180[14];
            v178 = *(v91 + v180[13]);
            v184 = *(v91 + v93);
            v185 = *(v91 + v180[15]);
            sub_24A39A698(v91, type metadata accessor for FMFIntermediateFriend);
LABEL_33:
            v74 = v194;
            v75 = v166;
            v76 = v165;
            v47 = v164;
            v48 = v162;
            v49 = v148;
            v50 = v80;
            v45 = v163;
            v46 = v81;
            goto LABEL_44;
          }

          __break(1u);
          goto LABEL_79;
        }

LABEL_32:
        v184 = v86;
        v185 = v84 & 1;

        sub_24A39A698(v82, type metadata accessor for FMFIntermediateFriend);
        v51 = MEMORY[0x277D84FA0];
        goto LABEL_33;
      }

      v96 = v82[9];
      v147 = v44;
      v185 = v84 & 1;
      v184 = v86;
      if (v96)
      {
        v149 = v52;
        v171 = v81;
        v97 = v82[8];
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v98 = v82;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        *(inited + 32) = v97;
        v81 = v171;
        v52 = v149;
        *(inited + 40) = v96;

        v77 = sub_24A48A0F4(inited, v77);
        swift_setDeallocating();
        sub_24A406964(inited + 32);
        v100 = v179;
      }

      else
      {
        v105 = v82[4];

        if (v105)
        {

          v106 = sub_24A3999E0(v105);

          v77 = sub_24A399BC8(v106, v77);
        }

        v100 = v179;
        v98 = v150;
      }

      sub_24A37EF2C(v100, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A37B740(v98 + v180[12], v100, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A698(v98, type metadata accessor for FMFIntermediateFriend);
      v74 = v194;
      v75 = v166;
      v76 = v165;
      v47 = v164;
      v51 = v77;
    }

    v48 = v162;
    v49 = v148;
    v50 = v80;
    v45 = v163;
    v46 = v81;
    v44 = v147;
    goto LABEL_44;
  }

  v74 = v194;
  v75 = v166;
  v76 = v165;
LABEL_44:
  v107 = v52;
  LODWORD(v171) = a13;
  if ((v50 & v75) == 0)
  {
    v76 = 1;
  }

  v108 = v76 == 0;
  v109 = -1;
  if (v108)
  {
    v109 = ~v75;
  }

  v166 = v109 & v50;
  if (v74)
  {
    sub_24A40D4E4(v44, v45, v46, v167, v47, v48, v49);
    v110 = v160;
    v111 = v159;
    v112 = v158;
    v113 = v157;
    v114 = v156;
    v115 = v155;
  }

  else
  {
    v194 = v45;
    v111 = v46;
    v110 = v44;
    v112 = v167;
    v113 = v47;
    v114 = v48;
    v115 = v49;
  }

  LODWORD(v180) = a12;
  v116 = v192;
  *v107 = v182;
  v107[1] = v116;
  v117 = v193;
  v107[2] = v181;
  v107[3] = v117;
  v107[4] = v51;
  v118 = v190;
  v119 = v179;
  sub_24A37B740(v179, v107 + v190[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v107 + v118[9]) = v166;
  v120 = v178;
  if (a14 != 2)
  {
    v120 = a14;
  }

  v121 = v118[14];
  v122 = v118[18];
  *(v107 + v118[10]) = v120;
  *(v107 + v118[11]) = v184;
  *(v107 + v118[12]) = v185;
  v123 = (v107 + v118[19]);
  v124 = v194;
  *v123 = v110;
  v123[1] = v124;
  v123[2] = v111;
  v123[3] = v112;
  v123[4] = v113;
  v123[5] = v114;
  v123[6] = v115;
  *(v107 + v121) = v186;
  v125 = v171;
  if (v171 == 2)
  {
    sub_24A37EF2C(v188, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v191, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v119, &qword_27EF3F460, &unk_24A4B53B0);
    LOBYTE(v126) = v152;
    v127 = v190;
    v128 = v175;
    if (v152 == 2)
    {
      v129 = v177;
      v130 = v176;
      v131 = v174;
      v132 = v173;
      v133 = v172;
      v134 = v189;
      v135 = v180;
      if (v183)
      {
        LOBYTE(v126) = 1;
      }

      else
      {
        v126 = (v161 >> 1) & 1;
      }
    }

    else
    {
      v129 = v177;
      v130 = v176;
      v131 = v174;
      v132 = v173;
      v133 = v172;
      v134 = v189;
      v135 = v180;
    }

    v136 = v126 & 1;
  }

  else
  {
    sub_24A37EF2C(v188, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v191, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v119, &qword_27EF3F460, &unk_24A4B53B0);
    v136 = v125 & 1;
    v129 = v177;
    v130 = v176;
    v131 = v174;
    v132 = v173;
    v133 = v172;
    v134 = v189;
    v127 = v190;
    v128 = v175;
    v135 = v180;
  }

  v137 = a10;
  *(v107 + v122) = v136;
  v138 = v135;
  v139 = v135 & 1;
  if (v138 == 2)
  {
    v140 = v132;
  }

  else
  {
    v140 = v139;
  }

  *(v107 + v127[13]) = v140;
  v107[5] = v134;
  if (v130)
  {
    v141 = v133;
  }

  else
  {
    v141 = v129;
  }

  *(v107 + v127[15]) = v141;
  v142 = v170;
  v143 = v169;
  if ((*(v131 + 48))(v170, 1, v169) == 1)
  {
    sub_24A37EF2C(v142, &qword_27EF3F480, &unk_24A4B8C20);
    result = sub_24A37BE24(v128, v107 + v127[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v128, &qword_27EF3F480, &unk_24A4B8C20);
    v144 = v127[20];
    sub_24A39CAB8(v142, v107 + v144, type metadata accessor for FMFLocation);
    result = v153(v107 + v144, 0, 1, v143);
  }

  v145 = a11;
  if (a10)
  {
  }

  else
  {
    v137 = v168;
  }

  *(v107 + v127[16]) = v137;
  if (a11)
  {
  }

  else
  {
    v145 = v187;
  }

  *(v107 + v127[17]) = v145;
  return result;
}

uint64_t sub_24A39CA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39CAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A39CB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t *sub_24A39CB88()
{
  v224 = sub_24A3C9CEC(&qword_27EF405C0, &unk_24A4BACC8);
  MEMORY[0x28223BE20](v224);
  v231 = &v204 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v222 = (&v204 - v2);
  MEMORY[0x28223BE20](v3);
  v223 = &v204 - v4;
  v5 = type metadata accessor for FMFIntermediateFriend(0);
  v227 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v228 = (&v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FMFLocation(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v204 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v204 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v204 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v204 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v204 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = (&v204 - v34);
  MEMORY[0x28223BE20](v36);
  v48 = (&v204 - v47);
  if (v215[78])
  {
  }

  v225 = v35;
  v219 = v32;
  v220 = v26;
  v211 = v29;
  v212 = v23;
  v213 = v20;
  v214 = v43;
  v209 = v46;
  v210 = v42;
  v207 = v41;
  v208 = v38;
  v204 = v40;
  v205 = v39;
  v206 = v7;
  v216 = v37;
  v217 = v45;
  v221 = v44;
  swift_beginAccess();
  v50 = v215;
  v51 = v215[77];
  v52 = *(v51 + 16);
  v229 = v8;
  v230 = v52;
  if (v52)
  {
    v226 = v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

    v53 = 0;
    v54 = MEMORY[0x277D84F98];
    v55 = v228;
    v56 = v225;
    v218 = v51;
    while (v53 < *(v51 + 16))
    {
      v57 = *(v8 + 72);
      sub_24A3992EC(v226 + v57 * v53, v48, type metadata accessor for FMFLocation);
      v58 = v48[1];
      if (v58)
      {
        v59 = *v48;
        sub_24A3992EC(v48, v56, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v233[0] = v54;
        v62 = sub_24A39B2C8(v59, v58);
        v63 = v54[2];
        v64 = (v61 & 1) == 0;
        v65 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          goto LABEL_112;
        }

        v66 = v61;
        if (v54[3] >= v65)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A4A919C();
          }
        }

        else
        {
          sub_24A3B740C(v65, isUniquelyReferenced_nonNull_native);
          v67 = sub_24A39B2C8(v59, v58);
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_120;
          }

          v62 = v67;
        }

        v56 = v225;
        v54 = v233[0];
        if (v66)
        {
          sub_24A39AF20(v225, *(v233[0] + 56) + v62 * v57, type metadata accessor for FMFLocation);
        }

        else
        {
          *(v233[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
          v69 = (v54[6] + 16 * v62);
          *v69 = v59;
          v69[1] = v58;
          sub_24A39983C(v56, v54[7] + v62 * v57, type metadata accessor for FMFLocation);
          v70 = v54[2];
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_113;
          }

          v54[2] = v72;
        }

        sub_24A39A7B8(v48, type metadata accessor for FMFLocation);
        v55 = v228;
        v8 = v229;
        v51 = v218;
      }

      else
      {
        sub_24A39A7B8(v48, type metadata accessor for FMFLocation);
        v8 = v229;
      }

      if (v230 == ++v53)
      {

        v50 = v215;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v54 = MEMORY[0x277D84F98];
  v55 = v228;
LABEL_22:
  v73 = v213;
  v230 = *(v50[74] + 16);
  if (!v230)
  {
    goto LABEL_41;
  }

  v75 = 0;
  v76 = (v74 + 48);
  v226 = v74;
  do
  {
    if (v75 >= *(v74 + 16))
    {
      goto LABEL_104;
    }

    if (v54[2])
    {
      v78 = *(v76 - 2);
      v77 = *(v76 - 1);
      v79 = *v76;
      swift_bridgeObjectRetain_n();
      v80 = sub_24A39B2C8(v78, v77);
      v82 = v81;

      if ((v82 & 1) == 0)
      {

        v55 = v228;
LABEL_25:
        v74 = v226;
        goto LABEL_26;
      }

      v83 = v54[7];
      v84 = v73;
      v225 = *(v229 + 72);
      v85 = v211;
      sub_24A3992EC(v83 + v225 * v80, v211, type metadata accessor for FMFLocation);
      v86 = v85;
      v87 = v219;
      sub_24A39983C(v86, v219, type metadata accessor for FMFLocation);
      v88 = v87;
      v89 = v212;
      sub_24A3992EC(v88, v212, type metadata accessor for FMFLocation);

      v90 = v89;
      v91 = v220;
      sub_24A3EA97C(v90, v79, v220);
      sub_24A3992EC(v91, v84, type metadata accessor for FMFLocation);
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v233[0] = v54;
      v93 = sub_24A39B2C8(v78, v77);
      v95 = v54[2];
      v96 = (v94 & 1) == 0;
      v71 = __OFADD__(v95, v96);
      v97 = v95 + v96;
      if (v71)
      {
        goto LABEL_114;
      }

      v98 = v94;
      if (v54[3] >= v97)
      {
        if ((v92 & 1) == 0)
        {
          v102 = v93;
          sub_24A4A919C();
          v93 = v102;
          v55 = v228;
          if (v98)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_24A3B740C(v97, v92);
        v93 = sub_24A39B2C8(v78, v77);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_120;
        }
      }

      v55 = v228;
      if (v98)
      {
LABEL_36:
        v100 = v93;

        v101 = v233[0];
        v73 = v213;
        sub_24A39AF20(v213, *(v233[0] + 56) + v100 * v225, type metadata accessor for FMFLocation);
        sub_24A39A7B8(v220, type metadata accessor for FMFLocation);
        v54 = v101;
        sub_24A39A7B8(v219, type metadata accessor for FMFLocation);
        goto LABEL_25;
      }

LABEL_38:
      v103 = v233[0];
      *(v233[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v104 = (v103[6] + 16 * v93);
      *v104 = v78;
      v104[1] = v77;
      v73 = v213;
      sub_24A39983C(v213, v103[7] + v93 * v225, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v220, type metadata accessor for FMFLocation);
      v54 = v103;
      sub_24A39A7B8(v219, type metadata accessor for FMFLocation);
      v105 = v103[2];
      v71 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v71)
      {
        goto LABEL_116;
      }

      v103[2] = v106;
      goto LABEL_25;
    }

LABEL_26:
    v75 = (v75 + 1);
    v76 += 24;
  }

  while (v230 != v75);

  v50 = v215;
  v8 = v229;
LABEL_41:
  v107 = v50[73];
  v108 = *(v107 + 16);
  if (!v108)
  {
    goto LABEL_62;
  }

  v109 = 0;
  v110 = (v107 + 48);
  v213 = v107;
  v218 = v108;
  while (2)
  {
    if (v109 >= *(v107 + 16))
    {
      goto LABEL_105;
    }

    if (!v54[2])
    {
      goto LABEL_45;
    }

    v112 = *(v110 - 2);
    v111 = *(v110 - 1);
    LODWORD(v226) = *v110;
    swift_bridgeObjectRetain_n();
    v230 = v112;
    v113 = v54;
    v114 = sub_24A39B2C8(v112, v111);
    LOBYTE(v112) = v115;

    if ((v112 & 1) == 0)
    {
LABEL_44:

      v54 = v113;
      goto LABEL_45;
    }

    v116 = *(v8 + 72);
    v117 = v113[7] + v116 * v114;
    v118 = v210;
    sub_24A3992EC(v117, v210, type metadata accessor for FMFLocation);
    v119 = v118;
    v120 = v214;
    sub_24A39983C(v119, v214, type metadata accessor for FMFLocation);
    if (*(v120 + 33))
    {
      sub_24A39A7B8(v120, type metadata accessor for FMFLocation);
      goto LABEL_44;
    }

    v219 = v116;
    v225 = type metadata accessor for FMFLocation;
    v121 = v204;
    sub_24A3992EC(v120, v204, type metadata accessor for FMFLocation);
    v122 = v206;
    v123 = v206[8];
    v220 = v123;
    v124 = sub_24A4AAB20();
    v125 = v205;
    (*(*(v124 - 8) + 56))(v205 + v123, 1, 1, v124);
    v126 = *(v121 + 8);
    *v125 = *v121;
    *(v125 + 8) = v126;
    v127 = v122[11];
    memcpy(v233, (v121 + v127), 0x161uLL);
    memcpy((v125 + v122[11]), (v121 + v127), 0x161uLL);
    v128 = v122[8];

    sub_24A37B740(v233, &v232, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE6D0(v121 + v128, &v220[v125]);
    *(v125 + 33) = *(v121 + 33);
    v129 = *(v121 + 32);
    *(v125 + 24) = *(v121 + 24);
    *(v125 + 32) = v129;
    v130 = v122[9];
    v131 = *(v121 + v130);
    *(v125 + 16) = (v226 - 1) < 2;
    *(v125 + v130) = v131;
    LOBYTE(v126) = *(v121 + v122[10]);
    v132 = v121;
    v133 = v225;
    sub_24A39A7B8(v132, v225);
    *(v125 + v122[10]) = v126;
    v134 = v207;
    sub_24A39983C(v125, v207, type metadata accessor for FMFLocation);
    sub_24A3992EC(v134, v208, v133);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v232 = v113;
    v136 = sub_24A39B2C8(v230, v111);
    v138 = v113[2];
    v139 = (v137 & 1) == 0;
    v71 = __OFADD__(v138, v139);
    v140 = v138 + v139;
    if (v71)
    {
      goto LABEL_118;
    }

    v141 = v137;
    if (v113[3] >= v140)
    {
      v8 = v229;
      if (v135)
      {
        goto LABEL_55;
      }

      v145 = v136;
      sub_24A4A919C();
      v136 = v145;
      v108 = v218;
      if ((v141 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_56:
      v143 = v136;

      v144 = v232;
      sub_24A39AF20(v208, v232[7] + v143 * v219, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v207, type metadata accessor for FMFLocation);
      v54 = v144;
      sub_24A39A7B8(v214, type metadata accessor for FMFLocation);
    }

    else
    {
      sub_24A3B740C(v140, v135);
      v136 = sub_24A39B2C8(v230, v111);
      v8 = v229;
      if ((v141 & 1) != (v142 & 1))
      {
        goto LABEL_120;
      }

LABEL_55:
      v108 = v218;
      if (v141)
      {
        goto LABEL_56;
      }

LABEL_58:
      v146 = v232;
      v232[(v136 >> 6) + 8] |= 1 << v136;
      v147 = (v146[6] + 16 * v136);
      *v147 = v230;
      v147[1] = v111;
      sub_24A39983C(v208, v146[7] + v136 * v219, type metadata accessor for FMFLocation);
      sub_24A39A7B8(v207, type metadata accessor for FMFLocation);
      v54 = v146;
      sub_24A39A7B8(v214, type metadata accessor for FMFLocation);
      v148 = v146[2];
      v71 = __OFADD__(v148, 1);
      v149 = v148 + 1;
      if (v71)
      {
        goto LABEL_119;
      }

      v146[2] = v149;
    }

    v107 = v213;
LABEL_45:
    ++v109;
    v110 += 24;
    if (v108 != v109)
    {
      continue;
    }

    break;
  }

  v50 = v215;
  v55 = v228;
LABEL_62:
  v150 = v50[85];
  v151 = *(v150 + 16);
  v230 = v54;
  if (v151)
  {
    v226 = v150 + ((*(v227 + 80) + 32) & ~*(v227 + 80));

    v152 = 0;
    v153 = MEMORY[0x277D84F98];
    v225 = v150;
    v220 = v151;
    while (1)
    {
      if (v152 >= *(v150 + 16))
      {
        goto LABEL_106;
      }

      sub_24A3992EC(v226 + *(v227 + 72) * v152, v55, type metadata accessor for FMFIntermediateFriend);
      if (v54[2])
      {
        v155 = *v55;
        v154 = v55[1];
        v156 = sub_24A39B2C8(*v55, v154);
        v54 = v230;
        if (v157)
        {
          break;
        }
      }

      sub_24A39A7B8(v55, type metadata accessor for FMFIntermediateFriend);
LABEL_65:
      if (v151 == ++v152)
      {

        v50 = v215;
        goto LABEL_82;
      }
    }

    v158 = *(v8 + 72);
    v159 = v153;
    v160 = v209;
    sub_24A3992EC(v230[7] + v158 * v156, v209, type metadata accessor for FMFLocation);
    v161 = v160;
    v162 = v216;
    sub_24A39983C(v161, v216, type metadata accessor for FMFLocation);
    sub_24A3992EC(v162, v217, type metadata accessor for FMFLocation);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    v233[0] = v159;
    v164 = sub_24A39B2C8(v155, v154);
    v166 = *(v159 + 16);
    v167 = (v165 & 1) == 0;
    v71 = __OFADD__(v166, v167);
    v168 = v166 + v167;
    if (v71)
    {
      goto LABEL_115;
    }

    v169 = v165;
    if (*(v159 + 24) >= v168)
    {
      v54 = v230;
      if ((v163 & 1) == 0)
      {
        v175 = v164;
        sub_24A4A919C();
        v54 = v230;
        v164 = v175;
      }

      v55 = v228;
      v171 = v233[0];
      if ((v169 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      sub_24A3B740C(v168, v163);
      v164 = sub_24A39B2C8(v155, v154);
      if ((v169 & 1) != (v170 & 1))
      {
        goto LABEL_120;
      }

      v55 = v228;
      v54 = v230;
      v171 = v233[0];
      if ((v169 & 1) == 0)
      {
LABEL_73:
        v171[(v164 >> 6) + 8] |= 1 << v164;
        v172 = (v171[6] + 16 * v164);
        *v172 = v155;
        v172[1] = v154;
        sub_24A39983C(v217, v171[7] + v164 * v158, type metadata accessor for FMFLocation);

        sub_24A39A7B8(v216, type metadata accessor for FMFLocation);
        v173 = v171[2];
        v71 = __OFADD__(v173, 1);
        v174 = v173 + 1;
        if (v71)
        {
          goto LABEL_117;
        }

        v153 = v171;
        v171[2] = v174;
        goto LABEL_79;
      }
    }

    sub_24A39AF20(v217, v171[7] + v164 * v158, type metadata accessor for FMFLocation);
    sub_24A39A7B8(v216, type metadata accessor for FMFLocation);
    v153 = v171;
LABEL_79:
    sub_24A39A7B8(v55, type metadata accessor for FMFIntermediateFriend);
    v150 = v225;
    v151 = v220;
    goto LABEL_65;
  }

  v153 = MEMORY[0x277D84F98];
LABEL_82:
  v176 = *(v153 + 16);
  v49 = MEMORY[0x277D84F90];
  if (!v176)
  {
LABEL_101:
    v50[78] = v49;

    return v49;
  }

  v233[0] = MEMORY[0x277D84F90];
  sub_24A3B57CC(0, v176, 0);
  v49 = v233[0];
  v177 = v153 + 64;
  v178 = sub_24A4ABEA0();
  v179 = 0;
  v217 = v153 + 72;
  v218 = v176;
  v181 = v223;
  v180 = v224;
  v219 = v153;
  v220 = (v153 + 64);
  while ((v178 & 0x8000000000000000) == 0 && v178 < 1 << *(v153 + 32))
  {
    v226 = v179;
    v183 = v178 >> 6;
    if ((*(v177 + 8 * (v178 >> 6)) & (1 << v178)) == 0)
    {
      goto LABEL_108;
    }

    v225 = *(v153 + 36);
    v184 = *(v180 + 48);
    v185 = v180;
    v186 = *(v153 + 56);
    v187 = (*(v153 + 48) + 16 * v178);
    v228 = v49;
    v189 = *v187;
    v188 = v187[1];
    v227 = *(v8 + 72);
    v190 = v181;
    sub_24A3992EC(v186 + v227 * v178, &v181[v184], type metadata accessor for FMFLocation);
    v191 = v222;
    *v222 = v189;
    *(v191 + 8) = v188;
    sub_24A39983C(&v190[v184], v191 + *(v185 + 48), type metadata accessor for FMFLocation);
    sub_24A37BE24(v191, v231, &qword_27EF405C0, &unk_24A4BACC8);

    v192 = v221;
    v49 = v228;
    sub_24A39983C(v231 + *(v185 + 48), v221, type metadata accessor for FMFLocation);
    v233[0] = v49;
    v194 = v49[2];
    v193 = v49[3];
    if (v194 >= v193 >> 1)
    {
      sub_24A3B57CC((v193 > 1), v194 + 1, 1);
      v49 = v233[0];
    }

    v49[2] = v194 + 1;
    v195 = v229;
    sub_24A39983C(v192, v49 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + v194 * v227, type metadata accessor for FMFLocation);
    v153 = v219;
    v177 = v220;
    v182 = 1 << *(v219 + 32);
    if (v178 >= v182)
    {
      goto LABEL_109;
    }

    v196 = *&v220[8 * v183];
    if ((v196 & (1 << v178)) == 0)
    {
      goto LABEL_110;
    }

    if (v225 != *(v219 + 36))
    {
      goto LABEL_111;
    }

    v8 = v195;
    v197 = v196 & (-2 << (v178 & 0x3F));
    if (v197)
    {
      v182 = __clz(__rbit64(v197)) | v178 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v198 = v183 << 6;
      v199 = v183 + 1;
      v200 = (v217 + 8 * v183);
      while (v199 < (v182 + 63) >> 6)
      {
        v202 = *v200++;
        v201 = v202;
        v198 += 64;
        ++v199;
        if (v202)
        {
          sub_24A406830(v178, v225, 0);
          v182 = __clz(__rbit64(v201)) + v198;
          goto LABEL_85;
        }
      }

      sub_24A406830(v178, v225, 0);
    }

LABEL_85:
    v179 = v226 + 1;
    v178 = v182;
    v181 = v223;
    v180 = v224;
    if (v226 + 1 == v218)
    {
      v50 = v215;
      goto LABEL_101;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
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
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A39DF4C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v48 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
  MEMORY[0x28223BE20](v48);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v46 = &v43 - v6;
  v7 = type metadata accessor for FMFFriend(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v55 = v2;
    v57 = MEMORY[0x277D84F90];
    v50 = a1;
    sub_24A39E574(0, v11, 0);
    v13 = v50;
    v54 = v57;
    v14 = v50 + 64;
    v15 = sub_24A4ABEA0();
    v16 = 0;
    v56 = *(v13 + 36);
    v43 = v13 + 72;
    v44 = v11;
    v45 = v14;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v56 != *(v13 + 36))
      {
        goto LABEL_25;
      }

      v52 = 1 << v15;
      v53 = v15 >> 6;
      v51 = v16;
      v19 = v10;
      v20 = v48;
      v21 = *(v48 + 48);
      v22 = *(v13 + 56);
      v23 = (*(v13 + 48) + 16 * v15);
      v24 = *v23;
      v25 = v23[1];
      v26 = v8;
      v27 = *(v8 + 72);
      v28 = v46;
      sub_24A3992EC(v22 + v27 * v15, &v46[v21], type metadata accessor for FMFFriend);
      v29 = v47;
      *v47 = v24;
      v29[1] = v25;
      v13 = v29;
      v30 = *(v20 + 48);
      v10 = v19;
      sub_24A39983C(&v28[v21], v13 + v30, type metadata accessor for FMFFriend);

      v31 = v55;
      sub_24A39E5B8(v13, v49, v19);
      v55 = v31;
      if (v31)
      {
        goto LABEL_29;
      }

      sub_24A37EF2C(v13, &qword_27EF405D0, &unk_24A4BACE8);
      v32 = v54;
      v57 = v54;
      v34 = *(v54 + 16);
      v33 = *(v54 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24A39E574((v33 > 1), v34 + 1, 1);
        v32 = v57;
      }

      *(v32 + 16) = v34 + 1;
      v8 = v26;
      v35 = *(v26 + 80);
      v54 = v32;
      sub_24A39983C(v19, v32 + ((v35 + 32) & ~v35) + v34 * v27, type metadata accessor for FMFFriend);
      v13 = v50;
      v17 = 1 << *(v50 + 32);
      if (v15 >= v17)
      {
        goto LABEL_26;
      }

      v14 = v45;
      v36 = *(v45 + 8 * v53);
      if ((v36 & v52) == 0)
      {
        goto LABEL_27;
      }

      if (v56 != *(v50 + 36))
      {
        goto LABEL_28;
      }

      v37 = v36 & (-2 << (v15 & 0x3F));
      if (v37)
      {
        v17 = __clz(__rbit64(v37)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v44;
      }

      else
      {
        v38 = v53 << 6;
        v39 = v53 + 1;
        v18 = v44;
        v40 = (v43 + 8 * v53);
        while (v39 < (v17 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_24A406830(v15, v56, 0);
            v17 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        sub_24A406830(v15, v56, 0);
      }

LABEL_4:
      v16 = v51 + 1;
      v15 = v17;
      if (v51 + 1 == v18)
      {
        return v54;
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
LABEL_28:
    __break(1u);
LABEL_29:
    sub_24A37EF2C(v13, &qword_27EF405D0, &unk_24A4BACE8);

    __break(1u);
  }

  return result;
}

void *sub_24A39E398(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A3C9CEC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_24A39E574(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F500, &qword_24A4BA270, type metadata accessor for FMFFriend);
  *v3 = result;
  return result;
}

uint64_t sub_24A39E5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v189 = a1;
  v190 = a3;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v4 - 8);
  v183 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v188 = &v149 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v8 - 8);
  v180 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v149 - v11;
  MEMORY[0x28223BE20](v12);
  v187 = &v149 - v13;
  MEMORY[0x28223BE20](v14);
  v186 = &v149 - v15;
  v16 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v178 = &v149 - v20;
  MEMORY[0x28223BE20](v21);
  v181 = &v149 - v22;
  MEMORY[0x28223BE20](v23);
  v185 = &v149 - v24;
  v25 = type metadata accessor for FMFFriend(0);
  v184 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v175 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v176 = &v149 - v28;
  MEMORY[0x28223BE20](v29);
  v177 = &v149 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v149 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = (&v149 - v35);
  MEMORY[0x28223BE20](v37);
  v182 = &v149 - v38;
  v39 = sub_24A3C9CEC(&qword_27EF405D0, &unk_24A4BACE8);
  v40 = v39 - 8;
  MEMORY[0x28223BE20](v39);
  v42 = &v149 - v41;
  sub_24A37B740(v189, &v149 - v41, &qword_27EF405D0, &unk_24A4BACE8);

  v43 = *(v40 + 56);
  v44 = v190;
  sub_24A39983C(&v42[v43], v190, type metadata accessor for FMFFriend);
  v45 = *(a2 + 720);
  if (*(v45 + 16))
  {
    v47 = *v44;
    v46 = v44[1];

    v48 = sub_24A39B2C8(v47, v46);
    if (v49)
    {
      v50 = *(v45 + 56) + 56 * v48;
      v51 = *(v50 + 8);
      v178 = *v50;
      v179 = v51;
      v52 = *(v50 + 16);
      v53 = *(v50 + 24);
      v175 = *(v50 + 32);
      v176 = v52;
      v54 = *(v50 + 48);
      v173 = *(v50 + 40);

      v177 = v53;

      v174 = v54;

      v55 = v44;
      v56 = v185;
      sub_24A3992EC(v55, v185, type metadata accessor for FMFFriend);
      v57 = v184;
      (*(v184 + 56))(v56, 0, 1, v25);
      v58 = type metadata accessor for FMFLocation(0);
      v172 = *(v58 - 8);
      v60 = v172 + 56;
      v59 = *(v172 + 56);
      v59(v186, 1, 1, v58);
      v171 = v25[21];
      *(v36 + v171) = 7;
      v61 = sub_24A4AAAD0();
      (*(*(v61 - 8) + 56))(v188, 1, 1, v61);
      v62 = v187;
      v189 = v58;
      v156 = v60;
      v155 = v59;
      v59(v187, 1, 1, v58);
      v63 = v181;
      sub_24A37B740(v56, v181, &qword_27EF3F2D0, &qword_24A4B4F50);
      if ((*(v57 + 48))(v63, 1, v25) == 1)
      {
        sub_24A37EF2C(v63, &qword_27EF3F2D0, &qword_24A4B4F50);
        v64 = 0;
        v164 = 0;
        v171 = 0;
        v170 = 0;
        v160 = 0;
        v159 = 0;
        v180 = 0;
        v65 = 0;
        v157 = 0;
        v158 = 0;
        v66 = 0;
        v169 = 0;
        v184 = 0;
        v168 = 0;
        v166 = 0;
        v181 = 0xE000000000000000;
        v183 = MEMORY[0x277D84FA0];
        LODWORD(v167) = 2;
        v161 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v163) = 2;
        LODWORD(v165) = 2;
        v67 = 2;
        v162 = 2;
      }

      else
      {
        sub_24A37EF2C(v62, &qword_27EF3F480, &unk_24A4B8C20);
        v93 = v188;
        sub_24A37EF2C(v188, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39983C(v63, v33, type metadata accessor for FMFFriend);
        v94 = v33[1];
        v168 = *v33;
        v181 = v94;
        v95 = v33[3];
        v169 = v33[2];
        v183 = v33[4];
        v184 = v95;
        sub_24A37B740(v33 + v25[8], v93, &qword_27EF3F460, &unk_24A4B53B0);
        v96 = v25[10];
        v166 = *(v33 + v25[9]);
        v162 = *(v33 + v96);
        v97 = v25[12];
        LODWORD(v154) = *(v33 + v25[11]);
        LODWORD(v165) = *(v33 + v97);
        LODWORD(v167) = *(v33 + v25[18]);
        v98 = v25[14];
        LODWORD(v153) = *(v33 + v25[13]);
        LODWORD(v163) = *(v33 + v98);
        v161 = *(v33 + v25[15]);
        sub_24A37B740(v33 + v25[20], v62, &qword_27EF3F480, &unk_24A4B8C20);
        v99 = (v33 + v25[19]);
        v100 = *v99;
        v101 = v99[1];
        v102 = v99[3];
        v180 = v99[2];
        v152 = v102;
        v103 = v99[4];
        v104 = v99[5];
        v151 = v99[6];
        v105 = *(v33 + v25[16]);
        v106 = *(v33 + v25[17]);
        *(v36 + v171) = *(v33 + v25[21]);
        v107 = v33[5];

        v160 = v100;
        v159 = v101;
        v108 = v101;
        v65 = v152;
        v157 = v103;
        v109 = v103;
        v66 = v151;
        v158 = v104;
        sub_24A39AED0(v100, v108, v180, v152, v109, v104, v151);
        v164 = v107;
        v67 = v154;

        v170 = v105;
        v64 = v153;

        v171 = v106;

        sub_24A39A7B8(v33, type metadata accessor for FMFFriend);
      }

      v110 = v188;
      v111 = v25[14];
      sub_24A37EF2C(v185, &qword_27EF3F2D0, &qword_24A4B4F50);
      sub_24A40D4E4(v160, v159, v180, v65, v157, v158, v66);
      v112 = v181;
      *v36 = v168;
      v36[1] = v112;
      v113 = v183;
      v114 = v184;
      v36[2] = v169;
      v36[3] = v114;
      v36[4] = v113;
      sub_24A37BE24(v110, v36 + v25[8], &qword_27EF3F460, &unk_24A4B53B0);
      *(v36 + v25[9]) = v166;
      *(v36 + v25[10]) = v162;
      *(v36 + v25[11]) = v67;
      *(v36 + v25[12]) = v165;
      v115 = (v36 + v25[19]);
      v116 = v179;
      *v115 = v178;
      v115[1] = v116;
      v117 = v177;
      v115[2] = v176;
      v115[3] = v117;
      v119 = v173;
      v118 = v174;
      v115[4] = v175;
      v115[5] = v119;
      v115[6] = v118;
      *(v36 + v111) = v163;
      *(v36 + v25[18]) = (v167 == 2) | v167 & 1;
      *(v36 + v25[13]) = v64;
      v36[5] = v164;
      *(v36 + v25[15]) = v161;
      v120 = v186;
      if ((*(v172 + 48))(v186, 1, v189) == 1)
      {
        sub_24A37EF2C(v120, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37BE24(v187, v36 + v25[20], &qword_27EF3F480, &unk_24A4B8C20);
      }

      else
      {
        sub_24A37EF2C(v187, &qword_27EF3F480, &unk_24A4B8C20);
        v121 = v25[20];
        sub_24A39983C(v120, v36 + v121, type metadata accessor for FMFLocation);
        v155(v36 + v121, 0, 1, v189);
      }

      v122 = v190;
      *(v36 + v25[16]) = v170;
      *(v36 + v25[17]) = v171;
      v123 = v182;
      sub_24A39983C(v36, v182, type metadata accessor for FMFFriend);
      goto LABEL_23;
    }
  }

  result = sub_24A39F92C(v44[4]);
  if (!v69)
  {
    return result;
  }

  v70 = v69;
  v71 = v18;
  v72 = result;
  swift_beginAccess();
  v73 = *(a2 + 728);
  if (!*(v73 + 16))
  {
  }

  v74 = sub_24A39B2C8(v72, v70);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
  }

  v77 = *(v73 + 56) + 56 * v74;
  v78 = *(v77 + 8);
  v181 = *v77;
  v79 = *(v77 + 24);
  v173 = *(v77 + 16);
  v172 = *(v77 + 32);
  v80 = *(v77 + 48);
  v170 = *(v77 + 40);
  v182 = v78;

  v174 = v79;

  v171 = v80;

  v81 = v178;
  sub_24A3992EC(v44, v178, type metadata accessor for FMFFriend);
  v82 = v184;
  (*(v184 + 56))(v81, 0, 1, v25);
  v83 = type metadata accessor for FMFLocation(0);
  v169 = *(v83 - 8);
  v84 = v169 + 56;
  v85 = *(v169 + 56);
  v85(v179, 1, 1, v83);
  v86 = v176;
  v168 = v25[21];
  v176[v168] = 7;
  v87 = sub_24A4AAAD0();
  (*(*(v87 - 8) + 56))(v183, 1, 1, v87);
  v88 = v180;
  v189 = v83;
  v154 = v84;
  v153 = v85;
  v85(v180, 1, 1, v83);
  sub_24A37B740(v81, v71, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v82 + 48))(v71, 1, v25) == 1)
  {
    sub_24A37EF2C(v71, &qword_27EF3F2D0, &qword_24A4B4F50);
    v89 = 0;
    v160 = 0;
    v184 = 0;
    v168 = 0;
    v157 = 0;
    v156 = 0;
    v185 = 0;
    v186 = 0;
    v90 = 0;
    v155 = 0;
    v91 = 0;
    v167 = 0;
    v165 = 0;
    v166 = 0;
    v163 = 0;
    v187 = 0xE000000000000000;
    v188 = MEMORY[0x277D84FA0];
    LODWORD(v164) = 2;
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    LODWORD(v159) = 2;
    LODWORD(v161) = 2;
    v92 = 2;
    v162 = 2;
  }

  else
  {
    sub_24A37EF2C(v88, &qword_27EF3F480, &unk_24A4B8C20);
    v124 = v183;
    sub_24A37EF2C(v183, &qword_27EF3F460, &unk_24A4B53B0);
    v125 = v175;
    sub_24A39983C(v71, v175, type metadata accessor for FMFFriend);
    v126 = v125[1];
    v166 = *v125;
    v187 = v126;
    v127 = v125[3];
    v167 = v125[2];
    v188 = v125[4];
    sub_24A37B740(v125 + v25[8], v124, &qword_27EF3F460, &unk_24A4B53B0);
    v128 = v25[10];
    v163 = *(v125 + v25[9]);
    v162 = *(v125 + v128);
    v129 = v25[12];
    LODWORD(v152) = *(v125 + v25[11]);
    LODWORD(v161) = *(v125 + v129);
    LODWORD(v164) = *(v125 + v25[18]);
    v130 = v25[14];
    LODWORD(v151) = *(v125 + v25[13]);
    LODWORD(v159) = *(v125 + v130);
    v158 = *(v125 + v25[15]);
    sub_24A37B740(v125 + v25[20], v88, &qword_27EF3F480, &unk_24A4B8C20);
    v131 = (v125 + v25[19]);
    v132 = *v131;
    v133 = v131[1];
    v134 = v131[3];
    v185 = v131[2];
    v150 = v134;
    v135 = v131[5];
    v186 = v131[4];
    v149 = v131[6];
    v136 = *(v125 + v25[16]);
    v137 = *(v125 + v25[17]);
    *(v86 + v168) = *(v125 + v25[21]);
    v138 = v125[5];
    v165 = v127;

    v157 = v132;
    v156 = v133;
    v139 = v133;
    v90 = v150;
    v91 = v149;
    v155 = v135;
    sub_24A39AED0(v132, v139, v185, v150, v186, v135, v149);
    v160 = v138;
    v92 = v152;

    v168 = v136;
    v89 = v151;

    v184 = v137;

    sub_24A39A7B8(v125, type metadata accessor for FMFFriend);
  }

  v140 = v25[14];
  sub_24A37EF2C(v178, &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A40D4E4(v157, v156, v185, v90, v186, v155, v91);
  v141 = v187;
  *v86 = v166;
  v86[1] = v141;
  v142 = v165;
  v86[2] = v167;
  v86[3] = v142;
  v86[4] = v188;
  sub_24A37BE24(v183, v86 + v25[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v86 + v25[9]) = v163;
  *(v86 + v25[10]) = v162;
  *(v86 + v25[11]) = v92;
  *(v86 + v25[12]) = v161;
  v143 = (v86 + v25[19]);
  v144 = v182;
  *v143 = v181;
  v143[1] = v144;
  v145 = v174;
  v143[2] = v173;
  v143[3] = v145;
  v146 = v170;
  v143[4] = v172;
  v143[5] = v146;
  v143[6] = v171;
  *(v86 + v140) = v159;
  *(v86 + v25[18]) = (v164 == 2) | v164 & 1;
  *(v86 + v25[13]) = v89;
  v86[5] = v160;
  *(v86 + v25[15]) = v158;
  v147 = v179;
  if ((*(v169 + 48))(v179, 1, v189) == 1)
  {
    sub_24A37EF2C(v147, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v180, v86 + v25[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v180, &qword_27EF3F480, &unk_24A4B8C20);
    v148 = v25[20];
    sub_24A39983C(v147, v86 + v148, type metadata accessor for FMFLocation);
    v153(v86 + v148, 0, 1, v189);
  }

  *(v86 + v25[16]) = v168;
  *(v86 + v25[17]) = v184;
  v123 = v177;
  sub_24A39983C(v86, v177, type metadata accessor for FMFFriend);
  v122 = v190;
LABEL_23:
  sub_24A39A7B8(v122, type metadata accessor for FMFFriend);
  return sub_24A39983C(v123, v122, type metadata accessor for FMFFriend);
}

uint64_t sub_24A39F92C(uint64_t a1)
{
  v2 = sub_24A4ABEA0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_24A39F9A8(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_24A39F9A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_24A39F9FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 64);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_24A3A0AD0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D886B0;
  v13 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_24A39FCD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A39FD18()
{

  v2 = sub_24A3A00EC(v1);

  if (v2)
  {
    MEMORY[0x28223BE20](v3);

    sub_24A4ABD70();

    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  v6 = sub_24A3A00EC(v5);

  if (v6)
  {
    MEMORY[0x28223BE20](v7);

    sub_24A4ABD70();

    v4 |= v18;
  }

  v9 = sub_24A3A00EC(v8);

  if (v9)
  {
    MEMORY[0x28223BE20](v10);

    sub_24A4ABD70();

    v4 |= v18;
  }

  v12 = sub_24A3A00EC(v11);

  if (v12)
  {
    MEMORY[0x28223BE20](result);

    sub_24A4ABD70();

    if (((v4 | v18) & 1) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  v14 = v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();

    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A4ABD70();

    (*(v15 + 64))(v17, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_24A3A00EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v24 = type metadata accessor for FMFLocationAlert(0);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = sub_24A4AA700();
  v25[3] = v12;
  v25[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v13 = sub_24A38D3BC(v25);
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D089F8], v12);
  LOBYTE(v12) = sub_24A4AA6C0();
  sub_24A37EEE0(v25);
  v14 = 0;
  if ((v12 & 1) != 0 && a1)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = *(v7 + 72);
      v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = a1 + v21;
      v14 = MEMORY[0x277D84F90];
      v22 = v2;
      do
      {
        sub_24A42C7D0(v17, v2, v6);
        if ((*(v7 + 48))(v6, 1, v24) == 1)
        {
          sub_24A37EF2C(v6, &qword_27EF3F7A0, &qword_24A4B6430);
        }

        else
        {
          sub_24A3B587C(v6, v11, type metadata accessor for FMFLocationAlert);
          sub_24A3B587C(v11, v23, type metadata accessor for FMFLocationAlert);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_24A3EDEAC(0, v14[2] + 1, 1, v14);
          }

          v19 = v14[2];
          v18 = v14[3];
          if (v19 >= v18 >> 1)
          {
            v14 = sub_24A3EDEAC((v18 > 1), v19 + 1, 1, v14);
          }

          v14[2] = v19 + 1;
          sub_24A3B587C(v23, v14 + v21 + v19 * v16, type metadata accessor for FMFLocationAlert);
          v2 = v22;
        }

        v17 += v16;
        --v15;
      }

      while (v15);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v14;
}

void sub_24A3A0444(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{

  v7 = sub_24A3A04EC(v6, a2);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    a1[86] = 0;

    a1[72] = 0;

    a1[80] = a2;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A3A0548(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[81];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    a2[86] = 0;

    a2[72] = 0;

    a2[81] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A3A0610(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[82];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    a2[86] = 0;

    a2[72] = 0;

    a2[82] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A3A06BC(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[83];

  v7 = sub_24A3A04EC(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    a2[86] = 0;

    a2[72] = 0;

    a2[83] = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

uint64_t sub_24A3A0784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMFFriend(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v33 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = *(v7 + 72);
    v14 = MEMORY[0x277D84F98];
    v15 = a3;
    v36 = a2;
    while (1)
    {
      sub_24A3A0ADC(v13, v9);
      v17 = *v9;
      v18 = v9[1];
      if (*(a2 + 16) && (v19 = sub_24A39B2C8(*v9, v9[1]), (v20 & 1) != 0))
      {
        v21 = (*(a2 + 56) + 56 * v19);
        v22 = *v21;
        v23 = v21[1];

        v24 = sub_24A3AB248(v22, v23, 0);

        if (v24)
        {
          v25 = v24;
          v26 = sub_24A431978(v9, v25);

          if (v26)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_24A3A0B40(v9, 0);

      if (!v25)
      {
        sub_24A3A16E4(v9);
        a3 = v15;
        goto LABEL_4;
      }

LABEL_3:
      a3 = v15;
      sub_24A42E63C(v25, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v14;
      sub_24A430ACC(v38, v17, v18, isUniquelyReferenced_nonNull_native);

      sub_24A3A16E4(v9);
      v14 = v37;
LABEL_4:
      a2 = v36;
      v13 += v35;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = MEMORY[0x277D84F98];
LABEL_14:
  v27 = v34;
  sub_24A4AAAC0();
  v28 = sub_24A4AAAD0();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate;
  swift_beginAccess();
  sub_24A431910(v27, a3 + v29, &qword_27EF3F460, &unk_24A4B53B0);
  swift_endAccess();
  if ((sub_24A38B528(v14, a2) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  v30 = *(a3 + 48);
  ObjectType = swift_getObjectType();
  (*(v30 + 16))(v14, ObjectType, v30);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A0ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFFriend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24A3A0B40(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v51 = &v49 - v6;
  v52 = a2;
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v10 = sub_24A3A11D8(v9, 0);
  v11 = sub_24A3A1268(&v59, v10 + 4, v9, v8);
  v12 = v59;
  v13 = v60;
  v2 = v61;

  sub_24A3A13C0(v12);
  if (v11 == v9)
  {
    v7 = v51;
    a2 = v52;
LABEL_5:
    v59 = v10;
    v8 = 0;
    sub_24A3A13C8(&v59);
    v15 = v59;
    v56 = *(v59 + 2);
    if (!v56)
    {
LABEL_20:

      return 0;
    }

    v16 = 0;
    v17 = v59 + 40;
    v55 = *(v50 + 56);
    v13 = 0x27EF3E000uLL;
    *&v14 = 136315138;
    v49 = v14;
    v54 = v59;
    while (1)
    {
      if (v16 >= *(v15 + 2))
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *v17;
      v59 = *(v17 - 1);
      v60 = v25;
      v57 = 64;
      v58 = 0xE100000000000000;
      v26 = sub_24A4AAB80();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
      sub_24A3A1434();

      sub_24A4ABE50();
      v28 = v27;
      sub_24A37EF2C(v7, &qword_27EF3F650, &qword_24A4B5A10);
      v29 = objc_opt_self();
      if (v28)
      {
        v30 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v31 = sub_24A4AB820();

        v32 = [v30 initWithStringValue_];

        v15 = v54;
        v33 = &selRef_predicateForContactsMatchingPhoneNumber_;
      }

      else
      {
        v32 = sub_24A4AB820();

        v33 = &selRef_predicateForContactsMatchingEmailAddress_;
      }

      v34 = [v29 *v33];

      if (!a2)
      {
        sub_24A3A1488();
      }

      v2 = v34;

      sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
      v35 = sub_24A4ABA50();

      v59 = 0;
      v36 = [v55 unifiedContactsMatchingPredicate:v2 keysToFetch:v35 error:&v59];

      v37 = v59;
      if (v36)
      {
        break;
      }

      v38 = v37;
      v39 = sub_24A4AA950();

      swift_willThrow();
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v40 = sub_24A4AB630();
      sub_24A378E18(v40, qword_27EF4E260);
      v41 = v39;
      v42 = sub_24A4AB600();
      v8 = sub_24A4ABCE0();

      if (os_log_type_enabled(v42, v8))
      {
        v18 = swift_slowAlloc();
        v53 = v2;
        v2 = v18;
        v19 = swift_slowAlloc();
        v59 = v19;
        *v2 = v49;
        v57 = v39;
        v20 = v39;
        sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
        v21 = sub_24A4AB870();
        v23 = sub_24A37BD58(v21, v22, &v59);
        v15 = v54;

        *(v2 + 1) = v23;
        a2 = v52;
        _os_log_impl(&dword_24A376000, v42, v8, "Error getting contact - %s", v2, 0xCu);
        sub_24A37EEE0(v19);
        v24 = v19;
        v7 = v51;
        MEMORY[0x24C219130](v24, -1, -1);
        MEMORY[0x24C219130](v2, -1, -1);
      }

      else
      {
      }

      ++v16;
      v17 += 16;
      if (v56 == v16)
      {
        goto LABEL_20;
      }
    }

    sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
    v8 = sub_24A4ABA70();

    if (v8 >> 62)
    {
      goto LABEL_27;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_28:

    if (*(v13 + 3064) != -1)
    {
      swift_once();
    }

    v45 = sub_24A4AB630();
    sub_24A378E18(v45, qword_27EF4E260);
    v46 = sub_24A4AB600();
    v47 = sub_24A4ABCE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_24A376000, v46, v47, "No contact found in store", v48, 2u);
      MEMORY[0x24C219130](v48, -1, -1);
    }

    return 0;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  if (!sub_24A4AC060())
  {
    goto LABEL_28;
  }

LABEL_24:
  v44 = sub_24A42F78C(v8);

  return v44;
}

void *sub_24A3A11EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_24A3A1268(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_24A3A13C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A41ED24(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24A3ABAD8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_24A3A1434()
{
  result = qword_27EF3FBB0;
  if (!qword_27EF3FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBB0);
  }

  return result;
}

uint64_t sub_24A3A1488()
{
  v1 = *(v0 + 32);
  sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24A4B9F90;
    v34 = *MEMORY[0x277CBD000];
    v3 = *MEMORY[0x277CBD000];
    v35 = *MEMORY[0x277CBD068];
    *(v2 + 32) = *MEMORY[0x277CBD068];
    *(v2 + 40) = v3;
    v4 = *MEMORY[0x277CBCFF8];
    v33 = *MEMORY[0x277CBD058];
    *(v2 + 48) = *MEMORY[0x277CBD058];
    *(v2 + 56) = v4;
    v5 = *MEMORY[0x277CBD0E0];
    v6 = *MEMORY[0x277CBD070];
    *(v2 + 64) = *MEMORY[0x277CBD0E0];
    *(v2 + 72) = v6;
    v7 = *MEMORY[0x277CBD078];
    v8 = *MEMORY[0x277CBD020];
    *(v2 + 80) = *MEMORY[0x277CBD078];
    *(v2 + 88) = v8;
    v9 = *MEMORY[0x277CBD160];
    v10 = *MEMORY[0x277CBD158];
    *(v2 + 96) = *MEMORY[0x277CBD160];
    *(v2 + 104) = v10;
    v11 = *MEMORY[0x277CBCFC0];
    *(v2 + 112) = v7;
    *(v2 + 120) = v11;
    v12 = *MEMORY[0x277CBD098];
    v13 = v7;
    *(v2 + 128) = *MEMORY[0x277CBD098];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24A4B9F80;
    v13 = *MEMORY[0x277CBD068];
    v14 = *MEMORY[0x277CBD000];
    *(v2 + 32) = *MEMORY[0x277CBD068];
    *(v2 + 40) = v14;
    v35 = v14;
    v16 = MEMORY[0x277CBD0E0];
    v33 = *MEMORY[0x277CBCFF8];
    v15 = *MEMORY[0x277CBCFF8];
    v34 = *MEMORY[0x277CBD058];
    *(v2 + 48) = *MEMORY[0x277CBD058];
    *(v2 + 56) = v15;
    v4 = *v16;
    v5 = *MEMORY[0x277CBD070];
    *(v2 + 64) = *v16;
    *(v2 + 72) = v5;
    v17 = *MEMORY[0x277CBD078];
    v6 = *MEMORY[0x277CBD020];
    *(v2 + 80) = *MEMORY[0x277CBD078];
    *(v2 + 88) = v6;
    v8 = *MEMORY[0x277CBD160];
    v9 = *MEMORY[0x277CBD028];
    v18 = MEMORY[0x277CBD158];
    *(v2 + 96) = *MEMORY[0x277CBD160];
    *(v2 + 104) = v9;
    v10 = *v18;
    *(v2 + 112) = *v18;
    *(v2 + 120) = v17;
    v11 = *MEMORY[0x277CBCFC0];
    v12 = *MEMORY[0x277CBD098];
    *(v2 + 128) = *MEMORY[0x277CBCFC0];
    *(v2 + 136) = v12;
    v7 = v17;
  }

  v19 = v7;
  v20 = v13;
  v21 = v35;
  v22 = v34;
  v23 = v33;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  return v2;
}

uint64_t sub_24A3A16E4(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24A3A1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(type metadata accessor for FMAPSConnectionHandler());

  return sub_24A3A17EC(a1, a2, a3, a4, a5, v15, a7, a8);
}

void *sub_24A3A17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a5;
  v62 = a4;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v9 = sub_24A4AB690();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24A4ABD50();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v14);
  v54 = sub_24A4AB6E0();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v60 = OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue;
  v17 = sub_24A3785D4();
  v58 = "v40@0:8@16@24@32";
  v59 = v17;
  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v11 + 104))(v13, *MEMORY[0x277D85260], v61);
  v18 = v62;
  *&a6[v60] = sub_24A4ABD90();
  v19 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
  v23 = v64;
  *v22 = v63;
  *(v22 + 1) = v23;
  v24 = &a6[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore];
  v25 = v66;
  *v24 = v65;
  *(v24 + 1) = v25;
  v26 = v67;
  *v19 = v18;
  *(v19 + 1) = v26;
  v27 = type metadata accessor for FMAPSConnectionHandler();
  v70.receiver = a6;
  v70.super_class = v27;
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v70, sel_init);
  v29 = v28;
  if (v18)
  {
    if (*&v28[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection])
    {
      v30 = *&v28[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection + 8];
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 16);
      v33 = v29;
      swift_unknownObjectRetain();
      v32(v29, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v34 = sub_24A4AB630();
    sub_24A378E18(v34, qword_27EF4E260);
    v35 = v29;
    v36 = sub_24A4AB600();
    v37 = sub_24A4ABCE0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = &v35[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
      v41 = *&v35[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic];
      v42 = *(v40 + 1);

      v43 = sub_24A37BD58(v41, v42, aBlock);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_24A376000, v36, v37, "FMAPSConnectionHandler: initialized with topic %s", v38, 0xCu);
      sub_24A37EEE0(v39);
      MEMORY[0x24C219130](v39, -1, -1);
      MEMORY[0x24C219130](v38, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v44 = *&v28[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
    v45 = swift_allocObject();
    *(v45 + 16) = v29;
    aBlock[4] = sub_24A3A494C;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89E78;
    v46 = _Block_copy(aBlock);
    v47 = v44;
    v48 = v29;
    sub_24A4AB6B0();
    v68 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v49 = v55;
    v50 = v57;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v16, v49, v46);
    _Block_release(v46);

    (*(v56 + 8))(v49, v50);
    (*(v53 + 8))(v16, v54);
  }

  return v29;
}

uint64_t type metadata accessor for FMFRefreshController(uint64_t a1)
{
  result = qword_27EF3F2B8;
  if (!qword_27EF3F2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A1F50(uint64_t a1)
{
  sub_24A37B644(319);
  if (v1 <= 0x3F)
  {
    sub_24A4AAAD0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_24A3A20A8(uint64_t a1, void *a2, char *a3, int a4, int a5)
{
  v6 = v5;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v67 = a1;
  v68 = a2;
  v7 = sub_24A4ABD50();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v60);
  v59[1] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24A4AAD70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AAB20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v19 = sub_24A4AAAF0();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  *(v6 + 2) = v19;
  *(v6 + 3) = v21;
  sub_24A4AB3B0();
  (*(v12 + 104))(v14, *MEMORY[0x277D09048], v11);
  v22 = sub_24A4AB260();
  (*(v12 + 8))(v14, v11);
  *(v6 + 4) = v22;
  *(v6 + 6) = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  v24 = type metadata accessor for FMFFriend(0);
  (*(*(v24 - 8) + 56))(&v6[v23], 1, 1, v24);
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason] = 2;
  swift_weakInit();
  v25 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts] = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData] = v26;
  v27 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue;
  sub_24A3785D4();
  sub_24A4AB6B0();
  v69[1] = v25;
  sub_24A37EF8C(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v62 + 104))(v61, *MEMORY[0x277D85260], v63);
  *&v6[v27] = sub_24A4ABD90();
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval] = 0x40E86A0000000000;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval] = 0x40B3880000000000;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval] = 0x40ED4C0000000000;
  sub_24A4AAA40();
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted] = 0;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing] = 0;
  swift_weakAssign();
  sub_24A39997C(v68, &v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController]);
  v28 = v64;
  *&v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_apsConnectionHandler] = v64;
  v29 = v66;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isSnapshotMode] = v65;
  v6[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch] = v29;
  v30 = &v28[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate];
  v31 = v28;
  swift_beginAccess();
  *(v30 + 1) = &off_285D858F8;
  swift_unknownObjectWeakAssign();
  v32 = qword_27EF3EBF8;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_24A4AB630();
  sub_24A378E18(v34, qword_27EF4E260);

  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 136315650;
    v64 = v33;
    v39 = *(v6 + 2);
    v40 = *(v6 + 3);

    v41 = sub_24A37E99C(0xCuLL, v39, v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x24C217CD0](v41, v43, v45, v47);
    v50 = v49;

    v51 = sub_24A37BD58(v48, v50, v69);

    *(v37 + 4) = v51;
    *(v37 + 12) = 2080;
    if (v65)
    {
      v52 = 0x70616E7320736120;
    }

    else
    {
      v52 = 0;
    }

    if (v65)
    {
      v53 = 0xEC000000746F6873;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v54 = sub_24A37BD58(v52, v53, v69);

    *(v37 + 14) = v54;
    *(v37 + 22) = 2080;
    if (v66)
    {
      v55 = 0x4620676E69737520;
    }

    else
    {
      v55 = 0;
    }

    if (v66)
    {
      v56 = 0xEB0000000044464DLL;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = sub_24A37BD58(v55, v56, v69);

    *(v37 + 24) = v57;
    _os_log_impl(&dword_24A376000, v35, v36, "FMFRefreshController<%s>.init%s%s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v38, -1, -1);
    MEMORY[0x24C219130](v37, -1, -1);
  }

  else
  {
  }

  sub_24A37EEE0(v68);
  return v6;
}

uint64_t sub_24A3A28AC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24A3C9CEC(&qword_27EF40340, qword_24A4BA0F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24A3A28DC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24A3C9CEC(&qword_27EF40568, "0E");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24A3A290C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCC0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24A37BD58(0xD000000000000019, 0x800000024A4B1DC0, &v14);
      _os_log_impl(&dword_24A376000, v9, v10, "FindMyMessagesAppViewController: %s - No Bundle Identifier", v11, 0xCu);
      sub_24A37EEE0(v12);
      MEMORY[0x24C219130](v12, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = sub_24A4AB850();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x800000024A4B1DE0 == v4)
  {

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  v6 = sub_24A4AC270();

  v7 = v6 ^ 1;
  return v7 & 1;
}

uint64_t sub_24A3A2B24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A2B5C(uint64_t a1)
{
  sub_24A37E944(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_24A3A2C20()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F98];
  *(v0 + 14) = 0;
  *(v0 + 15) = v1;
  *(v0 + 16) = v1;
  *(v0 + 17) = 0;
  *(v0 + 18) = 0;
  *(v0 + 19) = v1;
  *(v0 + 20) = v1;
  v2 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  v3 = sub_24A4AAAD0();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_24A3A2CE4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24A3A2D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A2DC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a2;
  swift_unknownObjectWeakAssign();
  v4 = v2[9];
  v5 = v2[10];
  v7[0] = v2[8];
  v7[1] = v4;
  v7[2] = v5;

  sub_24A3A2E74(v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A3A2E74(uint64_t *a1)
{
  v3 = sub_24A4AB690();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  aBlock[4] = sub_24A3A3938;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D887B8;
  v13 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v8, v5, v13);
  _Block_release(v13);
  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_24A3A3168()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3A31B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A3A357C;

  return sub_24A3A3270(a1, v4);
}

uint64_t sub_24A3A3270(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24A3A369C;

  return v5(v2 + 32);
}

uint64_t sub_24A3A3364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A3A3418(a1, v4, v5, v6);
}

uint64_t sub_24A3A3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24A3A3438, 0, 0);
}

uint64_t sub_24A3A3438()
{
  v1 = *(*(v0 + 24) + 208);
  *(v0 + 32) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A3A34F0, v1, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24A3A34F0()
{
  *(*(v0 + 32) + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate + 8) = &off_285D88AF8;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_24A3A3580, 0, 0);
}

uint64_t sub_24A3A35A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A3A369C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24A3A37BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a1 + 88) + 704) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: loaded cached data", v11, 2u);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    v12 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
    swift_beginAccess();
    v13 = *(a1 + v12);
    *(a1 + v12) = 1;
    sub_24A3A3944(v13);
  }

  v14 = *(a1 + 128);

  v16 = MEMORY[0x24C2189A0](v15);
  sub_24A3A3C54(v14, a2, a3, a4);
  objc_autoreleasePoolPop(v16);
}

uint64_t sub_24A3A3944(char a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24A3A76D8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88C20;
  v11 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v15 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_24A3A3C18()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_24A3A3C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41[-v10];
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41[-v13];
  v15 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress) & 1) == 0)
  {
    if (*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_useOptimizedFetch) == 1)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v16 = sub_24A4AB630();
      sub_24A378E18(v16, qword_27EF4E260);
      v17 = sub_24A4AB600();
      v18 = sub_24A4ABCE0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24A376000, v17, v18, "FMFRefreshController: asking fmfd about followers and following…", v19, 2u);
        MEMORY[0x24C219130](v19, -1, -1);
      }

      v20 = sub_24A4AA700();
      v43[3] = v20;
      v43[4] = sub_24A37EF8C(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
      v21 = sub_24A38D3BC(v43);
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D089F8], v20);
      LOBYTE(v20) = sub_24A4AA6C0();
      sub_24A37EEE0(v43);
      if (v20)
      {
        v22 = sub_24A4ABB70();
        (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = a1;

        sub_24A432370(0, 0, v14, &unk_24A4B4F60, v23);
      }

      *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) = 1;
    }

    else
    {
      v43[6] = v4;
      v42 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce);
      v24 = type metadata accessor for FMFFriend(0);
      (*(*(v24 - 8) + 56))(v11, 1, 1, v24);

      v25 = MEMORY[0x277D84F90];
      v26 = sub_24A3A424C(MEMORY[0x277D84F90]);
      v27 = sub_24A3A424C(v25);
      type metadata accessor for FMFInitRefreshClientRequest(0);
      v28 = swift_allocObject();
      sub_24A3A4548(v11, v28 + qword_27EF4E2F0);
      *(v28 + qword_27EF4E2F8) = 0;
      *(v28 + qword_27EF4E300) = v26;
      *(v28 + qword_27EF4E308) = v27;
      v29 = (v28 + qword_27EF4E310);
      *v29 = a2;
      v29[1] = a3;
      v29[2] = a4;
      *(v28 + qword_27EF4E318) = 1;
      if (v42)
      {
        v30 = 0x65696C4374696E69;
        v31 = 0xEA0000000000746ELL;
      }

      else
      {
        v31 = 0x800000024A4AF5B0;
        v30 = 0xD000000000000010;
      }

      v32 = sub_24A3A45B8(v30, v31);
      sub_24A37EF2C(v11, &qword_27EF3F2D0, &qword_24A4B4F50);
      *(a1 + v15) = 1;
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v33 = sub_24A4AB630();
      sub_24A378E18(v33, qword_27EF4E260);
      v34 = sub_24A4AB600();
      v35 = sub_24A4ABCE0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24A376000, v34, v35, "FMFRefreshController: sending initClient request…", v36, 2u);
        MEMORY[0x24C219130](v36, -1, -1);
      }

      v37 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
      v38 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
      sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v37);
      v39 = *(v38 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

      v39(v32, sub_24A3BB614, a1, refreshed, v37, v38);
    }
  }
}

unint64_t sub_24A3A424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t type metadata accessor for FMFInitRefreshClientRequest(uint64_t a1)
{
  result = qword_27EF40D08;
  if (!qword_27EF40D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3A4394(uint64_t a1)
{
  sub_24A37B644(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFBaseRequest(uint64_t a1)
{
  result = qword_27EF3FC28;
  if (!qword_27EF3FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3A4498(uint64_t a1)
{
  result = sub_24A4AAAD0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A3A4548(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_24A3A45B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A4AABF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F98];
  *(v2 + qword_27EF3FC00) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF3FC08) = v9;
  *(v2 + qword_27EF3FC10) = v9;
  *(v2 + qword_27EF3FC18) = v9;
  *(v2 + qword_27EF3FC20) = v9;
  sub_24A4AAA40();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "BaseEndpoint: initialized", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 deviceUDID];

  if (v15)
  {
    v16 = sub_24A4AB850();
    v18 = v17;

    v22 = 0xD000000000000018;
    v23 = 0x800000024A4B0880;
    MEMORY[0x24C217D50](v16, v18);

    MEMORY[0x24C217D50](47, 0xE100000000000000);

    MEMORY[0x24C217D50](a1, a2);
  }

  else
  {
    v22 = 0xD000000000000018;
    v23 = 0x800000024A4B0880;
    MEMORY[0x24C217D50](a1, a2);
  }

  v19 = sub_24A4AAC10();
  (*(v6 + 104))(v8, *MEMORY[0x277D07CF8], v5);

  sub_24A4AAC00();
  sub_24A3A4D78();
  v20 = sub_24A3A55D8();
  (*(*v19 + qword_27EF4E0E0 + 256))(v20);

  return v19;
}

void sub_24A3A4954(char *a1)
{
  v25 = a1;
  v26 = sub_24A4ABD50();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *MEMORY[0x277CEE9F0];
  v7 = *MEMORY[0x277CEE9D8];
  v8 = sub_24A3785D4();
  v23[0] = ".fmapsconnectionhandler.serial";
  v23[1] = v8;
  v24 = v6;
  v9 = v7;
  sub_24A4AB6B0();
  v27 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  v10 = v25;
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v26);
  v11 = sub_24A4ABD90();
  v12 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v13 = v24;
  v14 = [v12 initWithEnvironmentName:v24 namedDelegatePort:v9 queue:v11];

  v15 = &off_285D89CE0;
  v16 = &v10[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  if (!v14)
  {
    v15 = 0;
  }

  *v16 = v14;
  *(v16 + 1) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v14)
  {
    swift_unknownObjectRetain();
    [v14 setDelegate_];

    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);
  v18 = v10;
  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCE0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_24A37BD58(*&v18[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic], *&v18[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8], &v27);
    _os_log_impl(&dword_24A376000, v19, v20, "FMAPSConnectionHandler: initialized with default connection for topic %s", v21, 0xCu);
    sub_24A37EEE0(v22);
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v21, -1, -1);
  }
}

void sub_24A3A4D78()
{
  v1 = v0;
  v2 = qword_27EF3FC08;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(3157553, 0xE300000000000000, 0xD000000000000015, 0x800000024A4B07A0, isUniquelyReferenced_nonNull_native);
  *(v0 + v2) = v19;
  v4 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(49, 0xE100000000000000, 0xD000000000000013, 0x800000024A4B07C0, v4);
  *(v0 + v2) = v20;
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(3157554, 0xE300000000000000, 0xD000000000000014, 0x800000024A4B07E0, v5);
  *(v0 + v2) = v21;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_24A3A50C0(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x800000024A4B0800, v6);
  *(v0 + v2) = v22;
  swift_endAccess();
  v7 = [objc_opt_self() currentDevice];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 serverFriendlyDescription];

    if (v9)
    {
      v10 = sub_24A4AB850();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    swift_beginAccess();
    sub_24A3A54D0(v10, v12, 0xD000000000000011, 0x800000024A4B0820);
    swift_endAccess();
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 isInternalBuild];

    if (v14)
    {
      v15 = [objc_opt_self() standardUserDefaults];
      v16 = sub_24A4AB820();
      v17 = [v15 BOOLForKey_];

      if (v17)
      {
        swift_beginAccess();
        v18 = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v1 + v2);
        *(v1 + v2) = 0x8000000000000000;
        sub_24A3A50C0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000024A4B0860, v18);
        *(v1 + v2) = v23;
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24A3A50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24A39B2C8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24A4A8348();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24A3A5210(v18, a5 & 1);
    v13 = sub_24A39B2C8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_24A4A7F70(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_24A3A5210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
  v37 = v4;
  result = sub_24A4AC080();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}