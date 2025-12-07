uint64_t sub_22C545710(uint64_t a1, uint64_t a2, NSObject *a3, int a4, int a5, NSObject *a6, int a7)
{
  v59 = a6;
  LODWORD(v55) = a7;
  LODWORD(v54) = a5;
  LODWORD(v57) = a4;
  v58 = a3;
  v61 = a1;
  v62 = a2;
  v64 = sub_22C9081CC();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C901FAC();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9063DC();
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - v16;
  v18 = sub_22C90952C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v63 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C3A7214();
  if (sub_22C370B74(v17, 1, v18) == 1)
  {
    sub_22C36DD28(v17, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C903F7C();

    v21 = sub_22C9063CC();
    v22 = sub_22C90AACC();

    v23 = v14;
    if (os_log_type_enabled(v21, v22))
    {
      LODWORD(v58) = v22;
      v59 = v12;
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69 = v55;
      v57 = v24;
      *v24 = 136315138;
      v25 = *(v62 + 16);
      v26 = MEMORY[0x277D84F90];
      if (v25)
      {
        v53 = v21;
        v54 = v14;
        v68 = MEMORY[0x277D84F90];
        sub_22C3B6EDC();
        v26 = v68;
        v27 = *(v67 + 16);
        v28 = v62 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v62 = *(v67 + 72);
        v63 = v27;
        v67 += 16;
        v29 = (v67 - 8);
        v61 = v65 + 32;
        do
        {
          v30 = v64;
          (v63)(v8, v28, v64);
          sub_22C9068FC();
          (*v29)(v8, v30);
          v68 = v26;
          v31 = *(v26 + 16);
          if (v31 >= *(v26 + 24) >> 1)
          {
            sub_22C3B6EDC();
            v26 = v68;
          }

          *(v26 + 16) = v31 + 1;
          (*(v65 + 32))(v26 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v31, v11, v66);
          v28 += v62;
          --v25;
        }

        while (v25);
        v21 = v53;
        v23 = v54;
      }

      v46 = MEMORY[0x2318B7AD0](v26, v66);
      v48 = v47;

      v49 = sub_22C36F9F4(v46, v48, &v69);

      v50 = v57;
      *(v57 + 1) = v49;
      _os_log_impl(&dword_22C366000, v21, v58, "Skipping rendering of contextual entity group with no type identifier. StatementIDs: %s", v50, 0xCu);
      v51 = v55;
      sub_22C36FF94(v55);
      MEMORY[0x2318B9880](v51, -1, -1);
      MEMORY[0x2318B9880](v50, -1, -1);

      (*(v56 + 8))(v23, v59);
      return 0xF000000000000007;
    }

    else
    {

      (*(v56 + 8))(v14, v12);
      return 0xF000000000000007;
    }
  }

  else
  {
    v32 = (*(v19 + 32))(v63, v17, v18);
    MEMORY[0x28223BE20](v32);
    v33 = v58;
    *(&v53 - 2) = v58;
    v34 = v57;
    LOBYTE((&v53)[-1]) = v57;
    v35 = v62;

    v36 = v60;
    sub_22C47B610(sub_22C54C948, &(&v53)[-4], v35);

    v38 = sub_22C546928(v37);
    v40 = v39;
    v41 = MEMORY[0x28223BE20](v38);
    *(&v53 - 6) = v33;
    LOBYTE((&v53)[-5]) = v54 & 1;
    *(&v53 - 4) = v59;
    *(&v53 - 3) = v41;
    *(&v53 - 2) = v40;
    LOBYTE((&v53)[-1]) = v34;
    v42 = v55 & 1;
    BYTE1((&v53)[-1]) = v55 & 1;
    sub_22C7936D8();
    if (v36)
    {
      (*(v19 + 8))(v63, v18);
    }

    else
    {
      v44 = v43;

      v38 = sub_22C5484B0(v44, v62, v42, v63, v57, v59);

      if ((~v38 & 0xF000000000000007) == 0)
      {
        sub_22C54C9B8();
        swift_allocError();
        *v45 = 1;
        swift_willThrow();
      }

      (*(v19 + 8))(v63, v18);
    }
  }

  return v38;
}

uint64_t sub_22C545E98(void *a1, char a2)
{
  v4 = sub_22C90399C();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v98 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C901FAC();
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x28223BE20](v6);
  v102 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = sub_22C9081CC();
  v107 = *(v109 - 8);
  v11 = MEMORY[0x28223BE20](v109);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v101 = &v88[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v88[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v88[-v19];
  v21 = sub_22C9063DC();
  v105 = *(v21 - 8);
  v106 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22);
  v97 = &v88[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = &v88[-v27];
  v108 = a1;
  v29 = sub_22C544484(a1);
  if (v29 & 1) != 0 && (a2)
  {
    v30 = v108;
    if (sub_22C549778())
    {
      v31 = sub_22C54993C();
      v32 = v30;
      v96 = type metadata accessor for FullPlannerPreferences(0);
      v95 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
      sub_22C901EDC();
      if (*v111 < v31)
      {
LABEL_18:
        v29 = 1;
        return v29 & 1;
      }

      sub_22C903F7C();
      v34 = v107 + 16;
      v33 = *(v107 + 16);
      v35 = v109;
      v33(v20, v32, v109);
      v93 = v33;
      v94 = v34;
      v33(v18, v32, v35);
      sub_22C54CA2C();
      v36 = sub_22C9063CC();
      v37 = sub_22C90AACC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v38 = 136315650;
        v39 = v102;
        v90 = v36;
        sub_22C9068FC();
        sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v89 = v37;
        v40 = v104;
        v41 = sub_22C90B47C();
        v43 = v42;
        (*(v103 + 8))(v39, v40);
        v44 = *(v107 + 8);
        v44(v20, v109);
        v45 = sub_22C36F9F4(v41, v43, v111);

        *(v38 + 4) = v45;
        *(v38 + 12) = 2048;
        v46 = sub_22C54993C();
        v92 = v44;
        v44(v18, v109);
        *(v38 + 14) = v46;
        *(v38 + 22) = 2048;
        sub_22C901EDC();
        sub_22C54CA84(v10, type metadata accessor for ContextEventPromptGenerator_v5_0);
        *(v38 + 24) = v110;
        v47 = v90;
        _os_log_impl(&dword_22C366000, v90, v89, "Entity %s is under the visibility threshold: %f%% visible (threshold=%f%%)", v38, 0x20u);
        v48 = v91;
        sub_22C36FF94(v91);
        MEMORY[0x2318B9880](v48, -1, -1);
        v49 = v38;
        v35 = v109;
        MEMORY[0x2318B9880](v49, -1, -1);
      }

      else
      {

        sub_22C54CA84(v10, type metadata accessor for ContextEventPromptGenerator_v5_0);
        v64 = *(v107 + 8);
        v64(v18, v35);
        v92 = v64;
        v64(v20, v35);
      }

      v65 = *(v105 + 1);
      v66 = v28;
      v67 = v106;
      v65(v66, v106);
      v68 = v98;
      v69 = v108;
      sub_22C9081AC();
      v70 = sub_22C50D9B8();
      (*(v99 + 8))(v68, v100);
      v71 = v101;
      if (v70)
      {
        v72 = v97;
        sub_22C903F7C();
        v93(v71, v69, v35);
        v73 = sub_22C9063CC();
        v74 = sub_22C90AACC();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v105 = v75;
          v108 = swift_slowAlloc();
          v111[0] = v108;
          *v75 = 136315138;
          LODWORD(v106) = v74;
          v76 = v102;
          sub_22C9068FC();
          sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
          v77 = v104;
          v78 = sub_22C90B47C();
          v79 = v35;
          v81 = v80;
          (*(v103 + 8))(v76, v77);
          v92(v71, v79);
          v82 = sub_22C36F9F4(v78, v81, v111);

          v83 = v105;
          *(v105 + 1) = v82;
          v84 = v83;
          _os_log_impl(&dword_22C366000, v73, v106, "Entity %s is under the visibility threshold but should be rendered in the prompt based on the entity type", v83, 0xCu);
          v85 = v108;
          sub_22C36FF94(v108);
          MEMORY[0x2318B9880](v85, -1, -1);
          MEMORY[0x2318B9880](v84, -1, -1);

          v86 = v97;
        }

        else
        {

          v92(v71, v35);
          v86 = v72;
        }

        v65(v86, v67);
        goto LABEL_18;
      }
    }

    else
    {
      sub_22C903F7C();
      v50 = v107;
      v51 = v109;
      (*(v107 + 16))(v13, v30, v109);
      v52 = sub_22C9063CC();
      v53 = sub_22C90AACC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v108 = v54;
        v55 = swift_slowAlloc();
        v111[0] = v55;
        *v54 = 136315138;
        v56 = v102;
        sub_22C9068FC();
        sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v57 = v104;
        v58 = sub_22C90B47C();
        v60 = v59;
        (*(v103 + 8))(v56, v57);
        (*(v50 + 8))(v13, v109);
        v61 = sub_22C36F9F4(v58, v60, v111);

        v62 = v108;
        *(v108 + 4) = v61;
        v63 = v62;
        _os_log_impl(&dword_22C366000, v52, v53, "Entity %s is not in view. Skipping rendering since this is the current turn.", v62, 0xCu);
        sub_22C36FF94(v55);
        MEMORY[0x2318B9880](v55, -1, -1);
        MEMORY[0x2318B9880](v63, -1, -1);
      }

      else
      {

        (*(v50 + 8))(v13, v51);
      }

      (*(v105 + 1))(v24, v106);
    }

    v29 = 0;
  }

  return v29 & 1;
}

void *sub_22C546928(uint64_t a1)
{
  v2 = sub_22C90399C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v6);
  v8 = &v107 - v7;
  v9 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v120 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v107 - v13;
  v15 = sub_22C9081CC();
  sub_22C369824();
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v116 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v107 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v115 = v2;
  v118 = v19;
  v121 = v22;
  v108 = a1;
  v117 = v24;
  v107 = v4;
  if (v22)
  {
    v25 = 0;
    sub_22C36BA94();
    v112 = a1 + v26;
    v113 = v27;
    v111 = *(v28 + 56);
    v29 = (v4 + 8);
    v119 = *(v30 + 8);
    v114 = v28;
    v31 = (v28 - 8);
    v109 = v29;
    do
    {
      (v113)(v21, v112 + v111 * v25, v15);
      sub_22C9081AC();
      sub_22C90397C();
      (*v29)(v8, v2);
      v32 = v15;
      v33 = sub_22C9038BC();
      if (sub_22C370B74(v14, 1, v33) == 1)
      {
        sub_22C36DD28(v14, &qword_27D9BDBE0, &qword_22C9275D0);
        v34 = sub_22C36BA00();
        v35(v34);
        v15 = v32;
      }

      else
      {
        sub_22C90389C();
        sub_22C54CE54();
        sub_22C38BAAC();
        if (v2)
        {
          v36 = v14 + 56;
          sub_22C38BAAC();
          do
          {
            v123.origin.x = sub_22C37191C();
            CGRectUnion(v123, v129);
            sub_22C376724();
            v36 += 32;
            --v2;
          }

          while (v2);
        }

        v124.origin.x = sub_22C37191C();
        MidX = CGRectGetMidX(v124);
        sub_22C90389C();
        sub_22C54CE54();
        sub_22C54CE34();

        v125.origin.x = sub_22C377E68();
        MidY = CGRectGetMidY(v125);
        sub_22C36BBA8();
        (*(v39 + 8))(v14, v33);
        (*v31)(v21, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22C36D270();
          sub_22C593544(v43, v44, v45, v23);
          v23 = v46;
        }

        v2 = v115;
        v41 = *(v23 + 16);
        v40 = *(v23 + 24);
        v29 = v109;
        if (v41 >= v40 >> 1)
        {
          v47 = sub_22C369AB0(v40);
          sub_22C593544(v47, v41 + 1, 1, v23);
          v23 = v48;
        }

        *(v23 + 16) = v41 + 1;
        v42 = v23 + 16 * v41;
        *(v42 + 32) = MidX;
        *(v42 + 40) = MidY;
        v15 = v118;
      }

      ++v25;
    }

    while (v25 != v121);
  }

  if (*(v23 + 16))
  {
    sub_22C37F28C(MEMORY[0x277D84F90]);
    v49 = v122[0];
    do
    {
      sub_22C3722C8();
      if (v51)
      {
        sub_22C3B7454(v50 > 1, v8, 1);
        v49 = v122[0];
      }

      sub_22C374C5C();
    }

    while (!v52);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v122[0] = v49;

  sub_22C549D0C(v122);
  v109 = 0;

  v119 = sub_22C7F54FC();
  v54 = v53;
  v55 = *(v53 + 16);
  if (v55)
  {
    v56 = 0;
    v57 = MEMORY[0x277D84F98];
    while (v56 < *(v54 + 16))
    {
      v58 = *(v54 + 32 + 8 * v56);
      swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v57;
      v59 = sub_22C628B5C(v58);
      if (__OFADD__(v57[2], (v60 & 1) == 0))
      {
        goto LABEL_72;
      }

      v61 = v59;
      v62 = v60;
      sub_22C3A5908(&qword_27D9BDC10, &unk_22C91ADB0);
      if (sub_22C90B15C())
      {
        v63 = sub_22C628B5C(v58);
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_77;
        }

        v61 = v63;
      }

      v57 = v122[0];
      if (v62)
      {
        *(*(v122[0] + 56) + 8 * v61) = v56;
      }

      else
      {
        *(v122[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
        *(v57[6] + 8 * v61) = v58;
        *(v57[7] + 8 * v61) = v56;
        v65 = v57[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_75;
        }

        v57[2] = v67;
      }

      if (v55 == ++v56)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v57 = MEMORY[0x277D84F98];
LABEL_36:

    v68 = MEMORY[0x277D84F90];
    if (v121)
    {
      v69 = v2;
      v70 = 0;
      v114 = *(v117 + 16);
      sub_22C36BA94();
      v113 = (v108 + v71);
      v112 = *(v72 + 56);
      v111 = (v107 + 8);
      v119 = *(MEMORY[0x277CBF398] + 8);
      v117 = v72;
      v73 = (v72 - 8);
      v74 = v118;
      v75 = v116;
      do
      {
        v114(v75, &v113[v112 * v70], v74);
        v54 = v110;
        sub_22C9081AC();
        v76 = v120;
        sub_22C90397C();
        v77 = v76;
        (*v111)(v54, v69);
        v78 = sub_22C9038BC();
        if (sub_22C370B74(v77, 1, v78) == 1)
        {
          sub_22C36DD28(v77, &qword_27D9BDBE0, &qword_22C9275D0);
          (*v73)(v75, v74);
        }

        else
        {
          sub_22C90389C();
          sub_22C54CE54();
          sub_22C38BAAC();
          if (v75)
          {
            v79 = v77 + 56;
            sub_22C38BAAC();
            do
            {
              v126.origin.x = sub_22C37191C();
              CGRectUnion(v126, v130);
              sub_22C376724();
              v79 += 32;
              --v75;
            }

            while (v75);
          }

          v127.origin.x = sub_22C37191C();
          v80 = CGRectGetMidX(v127);
          sub_22C90389C();
          sub_22C54CE54();
          sub_22C54CE34();

          v128.origin.x = sub_22C377E68();
          v81 = CGRectGetMidY(v128);
          sub_22C36BBA8();
          (*(v82 + 8))(v120, v78);
          v74 = v118;
          (*v73)(v116, v118);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_22C36D270();
            sub_22C593544(v85, v86, v87, v68);
            v68 = v88;
          }

          v69 = v115;
          v54 = *(v68 + 16);
          v83 = *(v68 + 24);
          if (v54 >= v83 >> 1)
          {
            v89 = sub_22C369AB0(v83);
            sub_22C593544(v89, v54 + 1, 1, v68);
            v68 = v90;
          }

          *(v68 + 16) = v54 + 1;
          v84 = v68 + 16 * v54;
          *(v84 + 32) = v80;
          *(v84 + 40) = v81;
          v75 = v116;
        }

        ++v70;
      }

      while (v70 != v121);
    }

    if (*(v68 + 16))
    {
      sub_22C37F28C(MEMORY[0x277D84F90]);
      v91 = v122[0];
      do
      {
        sub_22C3722C8();
        if (v51)
        {
          sub_22C3B7454(v92 > 1, v54, 1);
          v91 = v122[0];
        }

        sub_22C374C5C();
      }

      while (!v52);
    }

    else
    {

      v91 = MEMORY[0x277D84F90];
    }

    v122[0] = v91;

    v54 = v109;
    sub_22C549D0C(v122);
    if (v54)
    {
      goto LABEL_78;
    }

    v121 = sub_22C7F54FC();
    v54 = v93;
    v94 = *(v93 + 16);
    if (!v94)
    {
LABEL_70:

      return v57;
    }

    v95 = 0;
    v96 = MEMORY[0x277D84F98];
    while (v95 < *(v54 + 16))
    {
      v97 = *(v54 + 32 + 8 * v95);
      swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v96;
      v98 = sub_22C628B5C(v97);
      if (__OFADD__(v96[2], (v99 & 1) == 0))
      {
        goto LABEL_74;
      }

      v100 = v98;
      v101 = v99;
      sub_22C3A5908(&qword_27D9BDC10, &unk_22C91ADB0);
      if (sub_22C90B15C())
      {
        v102 = sub_22C628B5C(v97);
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_77;
        }

        v100 = v102;
      }

      v96 = v122[0];
      if (v101)
      {
        *(*(v122[0] + 56) + 8 * v100) = v95;
      }

      else
      {
        *(v122[0] + 8 * (v100 >> 6) + 64) |= 1 << v100;
        *(v96[6] + 8 * v100) = v97;
        *(v96[7] + 8 * v100) = v95;
        v104 = v96[2];
        v66 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v66)
        {
          goto LABEL_76;
        }

        v96[2] = v105;
      }

      if (v94 == ++v95)
      {
        goto LABEL_70;
      }
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  sub_22C90B54C();
  __break(1u);
LABEL_78:

  __break(1u);
  return result;
}

uint64_t sub_22C547424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, _DWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v104 = a8;
  v102 = a7;
  v105 = a6;
  v103 = a5;
  v120 = a4;
  v119 = a3;
  v118 = a2;
  v109 = a9;
  v10 = sub_22C9081CC();
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x28223BE20](v10);
  v121 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9063DC();
  v125 = *(v12 - 8);
  v126 = v12;
  MEMORY[0x28223BE20](v12);
  v124 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C901FAC();
  v113 = *(v14 - 8);
  v114 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v112 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v94 - v17;
  v18 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  MEMORY[0x28223BE20](v18 - 8);
  v108 = &v94 - v19;
  v117 = sub_22C902D0C();
  v20 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DirectionalTypedValue(0);
  MEMORY[0x28223BE20](v115);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v94 - v25;
  v27 = sub_22C90399C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v106 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v94 - v31;
  v33 = sub_22C9093BC();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v134 = (&v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = a1;
  sub_22C9081AC();
  sub_22C90391C();
  v36 = v33;
  v37 = *(v28 + 8);
  v107 = v28 + 8;
  v37(v32, v27);
  if (sub_22C370B74(v26, 1, v36) == 1)
  {
    sub_22C36DD28(v26, &qword_27D9BB908, &qword_22C910960);
LABEL_7:
    v54 = v127;
    v55 = v124;
    sub_22C903F7C();
    v57 = v121;
    v56 = v122;
    v58 = v123;
    (*(v122 + 16))(v121, v54, v123);
    v59 = sub_22C9063CC();
    v60 = sub_22C90AADC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v120 = v61;
      v134 = swift_slowAlloc();
      v128 = v134;
      *v61 = 136315138;
      v62 = v112;
      LODWORD(v127) = v60;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v63 = v114;
      v64 = sub_22C90B47C();
      v65 = v57;
      v67 = v66;
      (*(v113 + 8))(v62, v63);
      (*(v56 + 8))(v65, v58);
      v68 = sub_22C36F9F4(v64, v67, &v128);

      v69 = v120;
      *(v120 + 1) = v68;
      v70 = v69;
      _os_log_impl(&dword_22C366000, v59, v127, "Unable to build ContextualEntityRenderingData for entity with statementID: %s", v69, 0xCu);
      v71 = v134;
      sub_22C36FF94(v134);
      MEMORY[0x2318B9880](v71, -1, -1);
      MEMORY[0x2318B9880](v70, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v57, v58);
    }

    (*(v125 + 8))(v55, v126);
    sub_22C54C9B8();
    swift_allocError();
    *v72 = 0;
    return swift_willThrow();
  }

  v96 = v37;
  v97 = v27;
  v38 = v134;
  (*(v34 + 32))(v134, v26, v36);
  v39 = v118[21];
  ObjectType = swift_getObjectType();
  v40 = *(v34 + 16);
  v110 = v36;
  v100 = v40;
  v40(v23, v38, v36);
  swift_storeEnumTagMultiPayload();
  v41 = *(v20 + 104);
  v42 = v116;
  v99 = *MEMORY[0x277D1D7F8];
  v43 = v117;
  v98 = v41;
  v41(v116);
  (*(v39 + 8))(&v128, v23, v119 & 1, v120, v42, ObjectType, v39);
  v44 = *(v20 + 8);
  v44(v42, v43);
  sub_22C54CA84(v23, type metadata accessor for DirectionalTypedValue);
  if (v133 == 1)
  {
    (*(v34 + 8))(v134, v110);
    goto LABEL_7;
  }

  ObjectType = v34;
  v95 = v44;
  v45 = v131;
  v46 = v132;
  v48 = v129;
  v47 = v130;
  v49 = v128;

  sub_22C456CE4(v49, v48, v47, v45, v46, 0);
  v50 = v118[23];
  v51 = swift_getObjectType();
  v100(v23, v134, v110);
  swift_storeEnumTagMultiPayload();
  v52 = v116;
  v53 = v117;
  v98(v116, v99, v117);
  (*(v50 + 8))(&v128, v23, v119 & 1, v120, v52, v51, v50);
  v95(v52, v53);
  sub_22C54CA84(v23, type metadata accessor for DirectionalTypedValue);
  if (v133)
  {
    (*(ObjectType + 8))(v134, v110);

    goto LABEL_7;
  }

  v126 = v49;
  v74 = v131;
  v75 = v132;
  v77 = v129;
  v76 = v130;
  v78 = v128;

  v125 = v78;
  sub_22C456CE4(v78, v77, v76, v74, v75, 0);
  v79 = v106;
  sub_22C9081AC();
  v80 = v108;
  sub_22C90397C();
  v96(v79, v97);
  v81 = sub_22C9038BC();
  if (sub_22C370B74(v80, 1, v81) == 1)
  {
    sub_22C36DD28(v80, &qword_27D9BDBE0, &qword_22C9275D0);
    v82 = swift_allocObject();
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    *(v82 + 16) = 0;
    *(v82 + 24) = 0xE000000000000000;
    v87 = 0xF000000000000007;
  }

  else
  {
    sub_22C548070(v103, v105, v102 == 0, v104 & 1, &v128);
    v88 = v80;
    v82 = v128;
    v83 = v129;
    v84 = v130;
    v85 = v131;
    v86 = v132;
    (*(*(v81 - 8) + 8))(v88, v81);

    v87 = v82;
  }

  sub_22C9068FC();
  (*(ObjectType + 8))(v134, v110);
  if ((~v87 & 0xF000000000000007) != 0)
  {
    sub_22C4546F8(v87);
  }

  else
  {
    v85 = 0;
    v83 = 0;
    v86 = 1;
    v84 = 1;
  }

  v89 = v109;
  v90 = v126;
  *v109 = v125;
  *(v89 + 8) = v90;
  *(v89 + 16) = v82;
  v91 = type metadata accessor for ContextualEntityRenderingData(0);
  (*(v113 + 32))(v89 + v91[7], v111, v114);
  v92 = v89 + v91[8];
  *v92 = v83;
  *(v92 + 8) = v84;
  v93 = v89 + v91[9];
  *v93 = v85;
  *(v93 + 8) = v86;
  return sub_22C36C640(v89, 0, 1, v91);
}

uint64_t sub_22C548070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a3 & 1) == 0 || (sub_22C90386C(), (v23) || (v24.origin.x = sub_22C549C64(), !CGRectIntersectsRect(v24, v22)))
  {
    v10 = 0;
    v15 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  v25.origin.x = sub_22C549C64();
  CGRectGetMidX(v25);
  v26.origin.x = sub_22C549C64();
  MidY = CGRectGetMidY(v26);
  v10 = sub_22C605904(a2, MidY);
  v12 = v11;
  v27.origin.x = sub_22C549C64();
  MidX = CGRectGetMidX(v27);
  v28.origin.x = sub_22C549C64();
  CGRectGetMidY(v28);
  v15 = sub_22C605904(a1, MidX);
  v16 = v14;
  if (*(a1 + 16) >= 2uLL && *(a2 + 16) >= 2uLL)
  {
    if ((v14 & 1) == 0)
    {
      if (v12)
      {
        v16 = 0;
        v12 = 1;
      }

      else
      {
        v20 = sub_22C90B47C();
        MEMORY[0x2318B7850](v20);

        MEMORY[0x2318B7850](44, 0xE100000000000000);
        v21 = sub_22C90B47C();
        MEMORY[0x2318B7850](v21);

        MEMORY[0x2318B7850](32, 0xE100000000000000);

        v12 = 0;
        v16 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    v16 = 1;
  }

LABEL_11:
  if (sub_22C549AE4(a4 & 1))
  {
    MEMORY[0x2318B7850](0x657463656C657320, 0xE900000000000064);
  }

  v17 = swift_allocObject();
  result = sub_22C90A49C();
  *(v17 + 16) = result;
  *(v17 + 24) = v19;
  *a5 = v17;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16 & 1;
  *(a5 + 24) = v10;
  *(a5 + 32) = v12 & 1;
  return result;
}

uint64_t sub_22C5484B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  v140 = a5;
  v149 = a3;
  v159 = sub_22C90399C();
  v139 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  MEMORY[0x28223BE20](v10 - 8);
  v162 = &v136 - v11;
  v169 = sub_22C9081CC();
  v165 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v161 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ContextualEntityRenderingData(0);
  v144 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C901FAC();
  v166 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v155 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v167 = &v136 - v19;
  MEMORY[0x28223BE20](v18);
  v138 = &v136 - v20;
  v163 = type metadata accessor for PromptTreeIdentifier(0);
  v21 = MEMORY[0x28223BE20](v163);
  v160 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v148 = &v136 - v23;
  v152 = sub_22C90963C();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  MEMORY[0x28223BE20](v142);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C90952C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22C9063DC();
  v145 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v143 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v136 - v34;
  sub_22C903F7C();
  v36 = *(v28 + 16);
  v154 = a4;
  v36(v30, a4, v27);
  v146 = v26;
  sub_22C54CA2C();
  v37 = a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v147 = v35;
  v38 = sub_22C9063CC();
  v39 = sub_22C90AACC();
  v40 = os_log_type_enabled(v38, v39);
  v164 = v15;
  v141 = v31;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v174 = v137;
    *v41 = 136315906;
    v136 = v38;
    v42 = sub_22C9094FC();
    v43 = a2;
    v45 = v44;
    (*(v28 + 8))(v30, v27);
    v46 = sub_22C36F9F4(v42, v45, &v174);
    a2 = v43;

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    v47 = *(v43 + 16);

    *(v41 + 14) = v47;

    *(v41 + 22) = 2048;
    a1 = v37;
    v48 = *(v37 + 16);

    *(v41 + 24) = v48;

    *(v41 + 32) = 2048;
    type metadata accessor for FullPlannerPreferences(0);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    v49 = v39;
    v50 = v146;
    sub_22C901EDC();
    if (v48 >= v173)
    {
      v51 = v173;
    }

    else
    {
      v51 = v48;
    }

    sub_22C54CA84(v50, type metadata accessor for ContextEventPromptGenerator_v5_0);

    *(v41 + 34) = v51;

    v52 = v136;
    _os_log_impl(&dword_22C366000, v136, v49, "Generating context group item for TypeIdentifier %s with %ld entities (%ld renderable). After list truncation, there will be %ld entities rendered (assuming no pruning).", v41, 0x2Au);
    v53 = v137;
    sub_22C36FF94(v137);
    MEMORY[0x2318B9880](v53, -1, -1);
    MEMORY[0x2318B9880](v41, -1, -1);
  }

  else
  {
    sub_22C54CA84(v146, type metadata accessor for ContextEventPromptGenerator_v5_0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v28 + 8))(v30, v27);
  }

  v54 = *(v145 + 8);
  v54(v147, v31);
  v55 = a2;
  *&v174 = a1;

  sub_22C549D78(&v174);
  v56 = v174;
  v57 = *(v153 + 256);
  v58 = *(v153 + 264);
  sub_22C374168((v153 + 232), v57);
  v59 = v151;
  v60 = v150;
  v61 = v152;
  (*(v151 + 104))(v150, *MEMORY[0x277D72E08], v152);
  (*(v58 + 24))(&v174, v154, v60, v172, v57, v58);
  (*(v59 + 8))(v60, v61);
  if (v178)
  {

    v62 = v143;
    sub_22C903F7C();
    v63 = sub_22C9063CC();
    v64 = sub_22C90AADC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22C366000, v63, v64, "Unable to render the TypeIdentifier for a collection of contextual entities. Skipping.", v65, 2u);
      MEMORY[0x2318B9880](v65, -1, -1);
    }

    v54(v62, v141);
    return 0xF000000000000007;
  }

  else
  {
    v152 = v55;
    v68 = v176;
    v67 = v177;
    v70 = *(&v174 + 1);
    v69 = v175;
    v71 = v174;

    v146 = v71;
    sub_22C456CE4(v71, v70, v69, v68, v67, 0);
    v72 = *(v56 + 2);
    v73 = MEMORY[0x277D84F90];
    v74 = v148;
    v147 = v56;
    v172 = v72;
    if (v72)
    {
      *&v174 = MEMORY[0x277D84F90];
      sub_22C3B6EDC();
      v75 = v174;
      v76 = &v56[(*(v144 + 80) + 32) & ~*(v144 + 80)];
      v154 = *(v144 + 72);
      v77 = (v166 + 16);
      v78 = v72;
      v79 = v164;
      v80 = v138;
      do
      {
        v81 = v170;
        sub_22C54CA2C();
        (*v77)(v80, v81 + *(v171 + 28), v79);
        sub_22C54CA84(v81, type metadata accessor for ContextualEntityRenderingData);
        *&v174 = v75;
        v82 = *(v75 + 16);
        if (v82 >= *(v75 + 24) >> 1)
        {
          sub_22C3B6EDC();
          v75 = v174;
        }

        *(v75 + 16) = v82 + 1;
        (*(v166 + 32))(v75 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v82, v80, v79);
        v76 += v154;
        --v78;
      }

      while (v78);
      v74 = v148;
      v72 = v172;
      v73 = MEMORY[0x277D84F90];
    }

    else
    {
      v79 = v164;
    }

    sub_22C3ADC38();
    v84 = v83;
    sub_22C378A4C(v153 + 272, &v174);
    v85 = v152;
    v86 = *(v152 + 16);
    v87 = v162;
    if (v86)
    {
      v154 = v84;
      v173 = v73;
      sub_22C3B71E0(0, v86, 0);
      v88 = v173;
      v153 = *(v165 + 16);
      v89 = v85 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
      v152 = *(v165 + 72);
      v151 = v139 + 8;
      v150 = (v166 + 8);
      v165 += 16;
      v90 = (v165 - 8);
      v91 = (v166 + 32);
      do
      {
        (v153)(v168, v89, v169);
        sub_22C9068FC();
        v92 = v158;
        sub_22C9081AC();
        sub_22C90397C();
        (*v151)(v92, v159);
        v93 = sub_22C9038BC();
        if (sub_22C370B74(v87, 1, v93) == 1)
        {
          sub_22C36DD28(v87, &qword_27D9BDBE0, &qword_22C9275D0);
          v94 = 0;
        }

        else
        {
          v95 = sub_22C549AE4(v149 & 1);
          v96 = v87;
          v94 = v95;
          (*(*(v93 - 8) + 8))(v96, v93);
        }

        v97 = v155;
        v98 = v168;
        sub_22C9068FC();
        sub_22C5E9614();
        v100 = v99;
        (*v150)(v97, v79);
        (*v90)(v98, v169);
        v101 = v161;
        (*v91)(v161, v167, v79);
        v102 = v157;
        v101[*(v157 + 20)] = v94 & 1;
        v101[*(v102 + 24)] = v100 & 1;
        v173 = v88;
        v104 = *(v88 + 16);
        v103 = *(v88 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_22C3B71E0(v103 > 1, v104 + 1, 1);
          v88 = v173;
        }

        *(v88 + 16) = v104 + 1;
        sub_22C54CADC();
        v89 += v152;
        --v86;
        v87 = v162;
      }

      while (v86);

      v74 = v148;
      v72 = v172;
      v73 = MEMORY[0x277D84F90];
    }

    else
    {

      v88 = MEMORY[0x277D84F90];
    }

    sub_22C36C730(&v174, v74);
    *(v74 + 40) = v146;
    *(v74 + 48) = v88;
    swift_storeEnumTagMultiPayload();
    v105 = v144;
    if (v72)
    {
      *&v174 = v73;

      sub_22C3B63D4(0, v72, 0);
      LODWORD(v168) = v140 == 0;
      v106 = v174;
      v107 = &v147[(*(v105 + 80) + 32) & ~*(v105 + 80)];
      v108 = (v166 + 16);
      v166 = *(v105 + 72);
      v167 = v108;
      do
      {
        v169 = v106;
        v172 = v72;
        v109 = v170;
        sub_22C54CA2C();
        v110 = *(v109 + 2);
        v111 = *(v171 + 28);
        v112 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
        v113 = v160;
        (*v167)(&v160[*(v112 + 20)], &v109[v111], v79);
        v114 = *(v109 + 1);
        *v113 = v110;
        *(v113 + *(v112 + 24)) = v114;
        swift_storeEnumTagMultiPayload();
        v115 = *v109;
        v116 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
        v117 = swift_allocBox();
        v119 = v118;
        v120 = *(v116 + 48);
        sub_22C54CADC();
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v121 = swift_allocObject();
        *(v121 + 16) = v115;
        *(v119 + v120) = v121;
        v122 = swift_allocObject();
        *(v122 + 16) = v168;
        v123 = swift_allocObject();
        *(v123 + 16) = v117 | 0x4000000000000000;
        *(v122 + 24) = v123;
        v106 = v169;

        sub_22C54CA84(v109, type metadata accessor for ContextualEntityRenderingData);
        *&v174 = v106;
        v125 = *(v106 + 16);
        v124 = *(v106 + 24);
        if (v125 >= v124 >> 1)
        {
          sub_22C3B63D4(v124 > 1, v125 + 1, 1);
          v106 = v174;
        }

        *(v106 + 16) = v125 + 1;
        *(v106 + 8 * v125 + 32) = v122 | 0x8000000000000000;
        v107 += v166;
        v72 = v172 - 1;
        v79 = v164;
      }

      while (v172 != 1);
    }

    else
    {

      v106 = MEMORY[0x277D84F90];
    }

    v126 = sub_22C3DB9B0(v106);

    v127 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v128 = swift_allocObject();
    *(v128 + 16) = v126;
    *(v127 + 16) = v128;
    v129 = v127 | 0x6000000000000000;
    v130 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v131 = swift_allocBox();
    v133 = v132;
    v134 = *(v130 + 48);
    sub_22C54CADC();
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v135 = swift_allocObject();
    *(v135 + 16) = v129;
    *(v133 + v134) = v135;
    return v131 | 0x4000000000000000;
  }
}

BOOL sub_22C549778()
{
  v1 = sub_22C90399C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C385658();
  sub_22C90397C();
  (*(v3 + 8))(v7, v1);
  v10 = sub_22C9038BC();
  if (sub_22C370B74(v0, 1, v10) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BDBE0, &qword_22C9275D0);
    return 1;
  }

  else
  {
    sub_22C90386C();
    if (v15)
    {
      v11 = 0;
    }

    else
    {
      v16.origin.x = sub_22C549C64();
      v11 = CGRectIntersectsRect(v16, v14);
    }

    sub_22C36BBA8();
    (*(v12 + 8))(v0, v10);
  }

  return v11;
}

double sub_22C54993C()
{
  v1 = sub_22C90399C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C385658();
  sub_22C90397C();
  (*(v3 + 8))(v7, v1);
  v10 = sub_22C9038BC();
  if (sub_22C370B74(v0, 1, v10) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BDBE0, &qword_22C9275D0);
    return 0.0;
  }

  else
  {
    v12 = COERCE_DOUBLE(sub_22C90388C());
    v14 = v13;
    sub_22C36BBA8();
    (*(v15 + 8))(v0, v10);
    result = 0.0;
    if ((v14 & 1) == 0)
    {
      return v12 * 100.0;
    }
  }

  return result;
}

uint64_t sub_22C549AE4(char a1)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return sub_22C90385C();
  }

  else
  {
    sub_22C903F7C();
    v7 = sub_22C9063CC();
    v8 = sub_22C90AACC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x2318B9880](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return sub_22C9038AC() & 1;
  }
}

double sub_22C549C64()
{
  v0 = sub_22C90389C();
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = v0 + 56;
    do
    {
      v8.origin.x = x;
      v8.origin.y = y;
      v8.size.width = width;
      v8.size.height = height;
      v9 = CGRectUnion(v8, *(v6 - 24));
      x = v9.origin.x;
      y = v9.origin.y;
      width = v9.size.width;
      height = v9.size.height;
      v6 += 32;
      --v5;
    }

    while (v5);
  }

  return x;
}

uint64_t sub_22C549D0C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C438();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C549E20(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C549D78(uint64_t *a1)
{
  v2 = *(type metadata accessor for ContextualEntityRenderingData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C450();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C549F14(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C549E20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C54A36C(v7, v8, a1, v4);
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
    return sub_22C54A044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C549F14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        type metadata accessor for ContextualEntityRenderingData(0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ContextualEntityRenderingData(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_22C54A81C(v8, v9, a1, v4);
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
    return sub_22C54A0A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C54A044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C54A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v37 - v16;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v44 = v18;
    v38 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v42 = v20;
      v43 = a3;
      v40 = v23;
      v41 = v22;
      while (1)
      {
        sub_22C54CA2C();
        sub_22C54CA2C();
        v24 = *(v8 + 32);
        v25 = &v17[v24];
        if (v17[v24 + 8])
        {
          break;
        }

        v26 = *(v8 + 36);
        v27 = &v17[v26];
        if (v17[v26 + 8])
        {
          break;
        }

        v28 = &v13[v24];
        if (v28[8])
        {
          break;
        }

        v29 = &v13[v26];
        if (v29[8])
        {
          break;
        }

        v30 = *v27;
        v31 = *v29;
        v32 = *v25 < *v28;
        v33 = v30 == v31;
        v34 = v30 < v31;
        if (v33)
        {
          v35 = v32;
        }

        else
        {
          v35 = v34;
        }

        sub_22C54CA84(v13, type metadata accessor for ContextualEntityRenderingData);
        result = sub_22C54CA84(v17, type metadata accessor for ContextualEntityRenderingData);
        if (v35)
        {
          if (!v44)
          {
            __break(1u);
            return result;
          }

          sub_22C54CADC();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C54CADC();
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      sub_22C54CA84(v13, type metadata accessor for ContextualEntityRenderingData);
      result = sub_22C54CA84(v17, type metadata accessor for ContextualEntityRenderingData);
LABEL_17:
      a3 = v43 + 1;
      v20 = v42 + v38;
      v22 = v41 - 1;
      v23 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C54A36C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v7[2] + 1, 1, v7);
        v7 = v73;
      }

      v30 = v7[2];
      v29 = v7[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_22C590218(v29 > 1, v30 + 1, 1, v7);
        v7 = v74;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v6;
      v33[1] = v8;
      v78 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_56:
            if (v40)
            {
              goto LABEL_96;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_99;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_104;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v31 < 2)
          {
            goto LABEL_98;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_71:
          if (v55)
          {
            goto LABEL_101;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_103;
          }

          if (v62 < v54)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v34 - 1 >= v31)
          {
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
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v66 = &v32[2 * v34 - 2];
          v67 = *v66;
          v68 = &v32[2 * v34];
          v69 = v68[1];
          sub_22C54B440((*a3 + 8 * *v66), (*a3 + 8 * *v68), (*a3 + 8 * v69), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v69 < v67)
          {
            goto LABEL_91;
          }

          v70 = v7;
          v71 = v7[2];
          if (v34 > v71)
          {
            goto LABEL_92;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v34 >= v71)
          {
            goto LABEL_93;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v68 + 2, 16 * (v71 - 1 - v34));
          v70[2] = v71 - 1;
          v72 = v71 > 2;
          v7 = v70;
          if (!v72)
          {
            goto LABEL_85;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_94;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_95;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_97;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_100;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_22C54B314(&v80, *result, a3);
LABEL_89:
}

void sub_22C54A81C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v160 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v157 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v166 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v148 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v169 = &v148 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v164 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v150 = &v148 - v22;
  MEMORY[0x28223BE20](v21);
  v149 = &v148 - v24;
  v162 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_123:
    v169 = *v153;
    if (!v169)
    {
      goto LABEL_164;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_125:
      v140 = v27 + 16;
      v141 = *(v27 + 2);
      while (v141 >= 2)
      {
        if (!*v162)
        {
          goto LABEL_161;
        }

        v142 = v27;
        v143 = &v27[16 * v141];
        v144 = *v143;
        v145 = &v140[2 * v141];
        v146 = *(v145 + 1);
        sub_22C54B5B4(*v162 + *(v160 + 72) * *v143, *v162 + *(v160 + 72) * *v145, *v162 + *(v160 + 72) * v146, v169);
        if (v5)
        {
          break;
        }

        if (v146 < v144)
        {
          goto LABEL_149;
        }

        if (v141 - 2 >= *v140)
        {
          goto LABEL_150;
        }

        *v143 = v144;
        *(v143 + 1) = v146;
        v147 = *v140 - v141;
        if (*v140 < v141)
        {
          goto LABEL_151;
        }

        v141 = *v140 - 1;
        sub_22C56BFF0(v145 + 16, v147, v145);
        *v140 = v141;
        v27 = v142;
      }

LABEL_133:

      return;
    }

LABEL_158:
    v27 = sub_22C56BFD8();
    goto LABEL_125;
  }

  v163 = v23;
  v148 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v167 = v15;
  v168 = v8;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v161 = v25;
      v152 = v5;
      v30 = *v162;
      v5 = *(v160 + 72);
      v31 = v26 + 1;
      v32 = v149;
      sub_22C54CA2C();
      v154 = v28;
      v33 = v150;
      sub_22C54CA2C();
      v34 = *(v8 + 32);
      v35 = (v32 + v34);
      if (*(v32 + v34 + 8) & 1) != 0 || (v36 = *(v8 + 36), (*(v32 + v36 + 8)) || (v37 = v33 + v34, (*(v37 + 8)))
      {
        LODWORD(v165) = 0;
      }

      else
      {
        v133 = *(v32 + v36);
        v134 = (v33 + v36);
        v135 = *v134;
        v136 = *(v134 + 8);
        v137 = *v35 < *v37;
        if (v133 != v135)
        {
          v137 = v133 < v135;
        }

        if (v136)
        {
          v137 = 0;
        }

        LODWORD(v165) = v137;
      }

      v151 = v27;
      sub_22C54CA84(v33, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v32, type metadata accessor for ContextualEntityRenderingData);
      v38 = v154 + 2;
      v39 = v5 * (v154 + 2);
      v40 = v30 + v39;
      v41 = v31;
      v42 = v5 * v31;
      v43 = v30 + v5 * v31;
      do
      {
        v44 = v38;
        v45 = v41;
        v46 = v42;
        v47 = v39;
        if (v38 >= v161)
        {
          break;
        }

        v48 = v163;
        sub_22C54CA2C();
        sub_22C54CA2C();
        v49 = *(v168 + 32);
        v50 = (v48 + v49);
        if (*(v48 + v49 + 8) & 1) != 0 || (v51 = *(v168 + 36), v52 = (v48 + v51), (*(v48 + v51 + 8)))
        {
          v53 = 0;
          v54 = v164;
        }

        else
        {
          v54 = v164;
          v55 = &v164[v49];
          if (v55[8] & 1) != 0 || (v56 = &v164[v51], (v56[8]))
          {
            v53 = 0;
          }

          else
          {
            v57 = *v52;
            v58 = *v56;
            v59 = *v50 < *v55;
            v53 = v57 == v58 ? v59 : v57 < v58;
          }
        }

        sub_22C54CA84(v54, type metadata accessor for ContextualEntityRenderingData);
        sub_22C54CA84(v163, type metadata accessor for ContextualEntityRenderingData);
        v38 = v44 + 1;
        v40 += v5;
        v43 += v5;
        v41 = v45 + 1;
        v42 = v46 + v5;
        v39 = v47 + v5;
      }

      while (v165 == v53);
      if (v165)
      {
        v28 = v154;
        if (v44 < v154)
        {
          goto LABEL_155;
        }

        if (v154 >= v44)
        {
          v29 = v44;
          v27 = v151;
          v5 = v152;
          v15 = v167;
          v8 = v168;
          goto LABEL_39;
        }

        v60 = v154 * v5;
        do
        {
          if (v28 != v45)
          {
            v61 = *v162;
            if (!*v162)
            {
              goto LABEL_162;
            }

            sub_22C54CADC();
            v62 = v60 < v46 || v61 + v60 >= (v61 + v47);
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C54CADC();
          }

          ++v28;
          v46 -= v5;
          v47 -= v5;
          v60 += v5;
          v63 = v28 < v45--;
        }

        while (v63);
      }

      v29 = v44;
      v27 = v151;
      v5 = v152;
      v15 = v167;
      v8 = v168;
      v28 = v154;
    }

LABEL_39:
    v64 = v162[1];
    v161 = v29;
    if (v29 < v64)
    {
      v107 = __OFSUB__(v29, v28);
      v65 = v29 - v28;
      if (v107)
      {
        goto LABEL_154;
      }

      if (v65 < v148)
      {
        break;
      }
    }

LABEL_66:
    if (v161 < v28)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v27 + 2) + 1, 1, v27);
      v27 = v138;
    }

    v89 = *(v27 + 2);
    v88 = *(v27 + 3);
    v90 = v89 + 1;
    if (v89 >= v88 >> 1)
    {
      sub_22C590218(v88 > 1, v89 + 1, 1, v27);
      v27 = v139;
    }

    *(v27 + 2) = v90;
    v91 = v27 + 32;
    v92 = &v27[16 * v89 + 32];
    v93 = v161;
    *v92 = v28;
    *(v92 + 1) = v93;
    v165 = *v153;
    if (!v165)
    {
      goto LABEL_163;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v27[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v27 + 4);
          v98 = *(v27 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_86:
          if (v100)
          {
            goto LABEL_140;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_143;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_146;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_148;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v90 < 2)
        {
          goto LABEL_142;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_101:
        if (v115)
        {
          goto LABEL_145;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_147;
        }

        if (v122 < v114)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v94 - 1 >= v90)
        {
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
LABEL_140:
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!*v162)
        {
          goto LABEL_160;
        }

        v126 = v27;
        v127 = &v91[16 * v94 - 16];
        v128 = *v127;
        v129 = v94;
        v130 = &v91[16 * v94];
        v131 = *(v130 + 1);
        sub_22C54B5B4(*v162 + *(v160 + 72) * *v127, *v162 + *(v160 + 72) * *v130, *v162 + *(v160 + 72) * v131, v165);
        if (v5)
        {
          goto LABEL_133;
        }

        if (v131 < v128)
        {
          goto LABEL_135;
        }

        v5 = *(v126 + 2);
        if (v129 > v5)
        {
          goto LABEL_136;
        }

        *v127 = v128;
        *(v127 + 1) = v131;
        if (v129 >= v5)
        {
          goto LABEL_137;
        }

        v132 = v129;
        v90 = v5 - 1;
        sub_22C56BFF0(v130 + 16, v5 - 1 - v132, v130);
        v27 = v126;
        *(v126 + 2) = v5 - 1;
        v63 = v5 > 2;
        v5 = 0;
        v15 = v167;
        v8 = v168;
        if (!v63)
        {
          goto LABEL_115;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_138;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_139;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_141;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_144;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_152;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v26 = v161;
    v25 = v162[1];
    if (v161 >= v25)
    {
      goto LABEL_123;
    }
  }

  if (__OFADD__(v28, v148))
  {
    goto LABEL_156;
  }

  if (v28 + v148 >= v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v28 + v148;
  }

  if (v66 < v28)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v67 = v161;
  if (v161 == v66)
  {
    goto LABEL_66;
  }

  v151 = v27;
  v152 = v5;
  v68 = *v162;
  v69 = *(v160 + 72);
  v70 = *v162 + v69 * (v161 - 1);
  v71 = -v69;
  v154 = v28;
  v155 = v69;
  v72 = v28 - v161;
  v165 = v68;
  v73 = v68 + v161 * v69;
  v156 = v66;
LABEL_49:
  v161 = v67;
  v74 = v73;
  v158 = v72;
  v159 = v70;
  while (1)
  {
    v75 = v169;
    sub_22C54CA2C();
    sub_22C54CA2C();
    v76 = *(v8 + 32);
    v77 = (v75 + v76);
    if (*(v75 + v76 + 8) & 1) != 0 || (v78 = *(v8 + 36), v79 = (v169 + v78), (*(v169 + v78 + 8)) || (v80 = &v15[v76], (v80[8]) || (v81 = &v15[v78], (v81[8]))
    {
      sub_22C54CA84(v15, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v169, type metadata accessor for ContextualEntityRenderingData);
      goto LABEL_63;
    }

    v82 = *v79;
    v83 = *v81;
    v84 = *v77 < *v80;
    v85 = v82 == v83;
    v86 = v82 < v83;
    if (v85)
    {
      v87 = v84;
    }

    else
    {
      v87 = v86;
    }

    sub_22C54CA84(v15, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v169, type metadata accessor for ContextualEntityRenderingData);
    if (!v87)
    {
      v8 = v168;
LABEL_63:
      v67 = v161 + 1;
      v70 = v159 + v155;
      v72 = v158 - 1;
      v73 += v155;
      if (v161 + 1 == v156)
      {
        v161 = v156;
        v27 = v151;
        v5 = v152;
        v28 = v154;
        goto LABEL_66;
      }

      goto LABEL_49;
    }

    if (!v165)
    {
      break;
    }

    sub_22C54CADC();
    v8 = v168;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C54CADC();
    v70 += v71;
    v74 += v71;
    v62 = __CFADD__(v72++, 1);
    v15 = v167;
    if (v62)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
}

uint64_t sub_22C54B314(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22C54B440((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22C54B440(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_22C3A4FA0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_22C3A4FA0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 8;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_22C54B5B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v69 = &v62 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v62 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_80;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_81;
  }

  v73 = a1;
  v72 = a4;
  v24 = v22 / v20;
  if ((a2 - a1) / v20 < v22 / v20)
  {
    v70 = a3;
    sub_22C3D760C(a1, (a2 - a1) / v20, a4);
    v25 = a4 + (a2 - a1) / v20 * v20;
    v71 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= v70)
      {
        goto LABEL_78;
      }

      sub_22C54CA2C();
      sub_22C54CA2C();
      v27 = *(v8 + 32);
      v28 = &v18[v27];
      if (v18[v27 + 8])
      {
        break;
      }

      v29 = *(v8 + 36);
      v30 = &v18[v29];
      if (v18[v29 + 8])
      {
        break;
      }

      v31 = &v14[v27];
      if (v31[8])
      {
        break;
      }

      v32 = &v14[v29];
      if (v32[8])
      {
        break;
      }

      v34 = *v30;
      v35 = *v32;
      v36 = *v28 < *v31;
      v21 = v34 == v35;
      v37 = v34 < v35;
      v67 = a2;
      if (v21)
      {
        v38 = v36;
      }

      else
      {
        v38 = v37;
      }

      sub_22C54CA84(v14, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v18, type metadata accessor for ContextualEntityRenderingData);
      v21 = v38;
      a2 = v67;
      if (!v21)
      {
        goto LABEL_21;
      }

      if (a1 < v67 || a1 >= v67 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v67)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v20;
LABEL_30:
      a1 += v20;
      v73 = a1;
    }

    sub_22C54CA84(v14, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v18, type metadata accessor for ContextualEntityRenderingData);
LABEL_21:
    if (a1 < a4 || a1 >= a4 + v20)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v20;
    a4 += v20;
    goto LABEL_30;
  }

  v68 = v16;
  sub_22C3D760C(a2, v22 / v20, a4);
  v40 = a4 + v24 * v20;
  v41 = -v20;
  v42 = v40;
  v65 = v8;
LABEL_46:
  v66 = a2 + v41;
  v67 = a2;
  v70 = a3;
  v63 = v42;
  while (1)
  {
    if (v40 <= a4)
    {
      v73 = a2;
      v71 = v42;
      goto LABEL_78;
    }

    if (a2 <= a1)
    {
      break;
    }

    v64 = v42;
    v43 = v40 + v41;
    v44 = v69;
    sub_22C54CA2C();
    sub_22C54CA2C();
    v45 = *(v8 + 32);
    v46 = (v44 + v45);
    if (*(v44 + v45 + 8) & 1) != 0 || (v47 = *(v8 + 36), (*(v44 + v47 + 8)))
    {
      v48 = 0;
      v49 = v68;
      v50 = v70;
    }

    else
    {
      v49 = v68;
      v53 = v68 + v45;
      v50 = v70;
      if (*(v53 + 8))
      {
        v48 = 0;
      }

      else
      {
        v54 = *(v44 + v47);
        v55 = (v68 + v47);
        v56 = *v55;
        v57 = *(v55 + 8);
        v58 = *v46 < *v53;
        if (v54 != v56)
        {
          v58 = v54 < v56;
        }

        v48 = (v57 & 1) == 0 && v58;
      }
    }

    v51 = v50 + v41;
    sub_22C54CA84(v49, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v69, type metadata accessor for ContextualEntityRenderingData);
    if (v48)
    {
      if (v50 < v67 || v51 >= v67)
      {
        v8 = v65;
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v42 = v64;
        a3 = v51;
      }

      else
      {
        v42 = v64;
        v21 = v50 == v67;
        v8 = v65;
        v60 = v66;
        a2 = v66;
        a3 = v51;
        if (!v21)
        {
          v61 = v64;
          swift_arrayInitWithTakeBackToFront();
          a2 = v60;
          v42 = v61;
        }
      }

      goto LABEL_46;
    }

    if (v50 < v40 || v51 >= v40)
    {
      v8 = v65;
      swift_arrayInitWithTakeFrontToBack();
      v70 = v51;
      v40 += v41;
      v42 = v43;
      a2 = v67;
    }

    else
    {
      v42 = v40 + v41;
      v21 = v40 == v50;
      v70 = v50 + v41;
      v40 += v41;
      a2 = v67;
      v8 = v65;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v70 = v51;
        v40 = v43;
        v42 = v43;
      }
    }
  }

  v73 = a2;
  v71 = v63;
LABEL_78:
  sub_22C8381E4(&v73, &v72, &v71);
  return 1;
}

void sub_22C54BB58(uint64_t a1)
{
  v70 = sub_22C90952C();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = sub_22C90399C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v73 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v83 = sub_22C9081CC();
  v18 = MEMORY[0x28223BE20](v83);
  v68 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v59 - v21;
  MEMORY[0x28223BE20](v20);
  v82 = &v59 - v22;
  v23 = 0;
  v84 = 0;
  v85 = MEMORY[0x277D84F90];
  v80 = v24 + 16;
  v61 = (v2 + 16);
  v60 = (v2 + 8);
  v74 = *(a1 + 16);
  v75 = v17;
  v71 = (v10 + 8);
  v72 = v24;
  v65 = (v24 + 8);
  v66 = (v24 + 32);
  v81 = MEMORY[0x277D84F90];
  for (i = a1; ; a1 = i)
  {
    if (v74 == v23)
    {

      return;
    }

    if (v23 >= *(a1 + 16))
    {
      break;
    }

    v25 = *(v72 + 72);
    v77 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v78 = v23;
    v76 = v25;
    v79 = *(v72 + 16);
    v79(v82, a1 + v77 + v25 * v23, v83);
    sub_22C9081AC();
    sub_22C90391C();
    v26 = sub_22C9093BC();
    if (sub_22C370B74(v8, 1, v26) == 1)
    {
      sub_22C36C640(v69, 1, 1, v70);
    }

    else
    {
      v27 = v12;
      v28 = v8;
      v29 = v62;
      sub_22C3A7214();
      v30 = v63;
      sub_22C90935C();
      v32 = v69;
      v31 = v70;
      (*v61)(v69, v30, v70);
      sub_22C36C640(v32, 0, 1, v31);
      (*v60)(v30, v31);
      v33 = v29;
      v8 = v28;
      v12 = v27;
      (*(*(v26 - 8) + 8))(v33, v26);
    }

    sub_22C36DD28(v8, &qword_27D9BB908, &qword_22C910960);
    (*v71)(v12, v9);
    sub_22C407C2C();
    if (v84)
    {

      sub_22C7DB87C();
      v35 = v34;
      v37 = v36;

      if (v37)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_22C7D9774();
      if (v39)
      {
LABEL_11:
        sub_22C7D4D7C();
        v40 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B6D48(0, *(v40 + 16) + 1, 1);
          v40 = v86;
        }

        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22C3B6D48(v42 > 1, v43 + 1, 1);
          v40 = v86;
        }

        *(v40 + 16) = v43 + 1;
        v44 = v40 + 32;
        *(v40 + 32 + 8 * v43) = MEMORY[0x277D84F90];
        v79(v68, v82, v83);
        v45 = *(v40 + 32 + 8 * v43);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 32 + 8 * v43) = v45;
        v81 = v40;
        if ((v46 & 1) == 0)
        {

          sub_22C59238C();
          *(v44 + 8 * v43) = v55;

          v45 = *(v44 + 8 * v43);
        }

        v47 = *(v45 + 16);
        v48 = v47 + 1;
        if (v47 >= *(v45 + 24) >> 1)
        {
          sub_22C59238C();
          v45 = v56;
          *(v44 + 8 * v43) = v56;
        }

        v49 = v68;
        goto LABEL_30;
      }

      v35 = v38;
    }

    v50 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C270();
      v50 = v51;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v35 >= *(v50 + 16))
    {
      goto LABEL_34;
    }

    v52 = v50 + 32;
    v79(v64, v82, v83);
    v45 = *(v50 + 32 + 8 * v35);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 32 + 8 * v35) = v45;
    v81 = v50;
    if ((v53 & 1) == 0)
    {

      sub_22C59238C();
      *(v52 + 8 * v35) = v57;

      v45 = *(v52 + 8 * v35);
    }

    v47 = *(v45 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v45 + 24) >> 1)
    {
      sub_22C59238C();
      v45 = v58;
      *(v52 + 8 * v35) = v58;
    }

    v49 = v64;
LABEL_30:
    *(v45 + 16) = v48;
    v54 = v83;
    (*v66)(v45 + v77 + v47 * v76, v49, v83);
    sub_22C36DD28(v75, &qword_27D9BB0C0, &qword_22C90D960);
    (*v65)(v82, v54);
    v23 = v78 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C54C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v42 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = v34 - v5;
  v39 = sub_22C3A5908(&qword_27D9BDBE8, &qword_22C91AD88);
  v6 = MEMORY[0x28223BE20](v39);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v34 - v8;
  v9 = sub_22C3A5908(&qword_27D9BDBF0, &qword_22C91AD90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v47 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v43 = *(a3 + 16);
  if (!v43)
  {
    return 6109787;
  }

  v48 = 91;
  v49 = 0xE100000000000000;
  v36 = a3 + 32;
  v34[1] = a1;

  v34[0] = a3;

  v15 = 0;
  LODWORD(v16) = 1;
  v45 = xmmword_22C90F800;
  v35 = v13;
  while (1)
  {
    if (v15 >= v43)
    {
      v27 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
      sub_22C36C640(v47, 1, 1, v27);
      goto LABEL_8;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(v44 + 16))
    {
      goto LABEL_16;
    }

    v17 = v47;
    v41 = v16;
    v16 = v39;
    v18 = *(v39 + 48);
    v19 = v37;
    sub_22C3A7214();
    *&v19[v18] = *(v36 + 8 * v15);
    v20 = v15 + 1;
    v21 = v38;
    sub_22C407C2C();
    v22 = *(v16 + 48);
    LOBYTE(v16) = v41;
    v23 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
    v24 = *(v23 + 48);
    sub_22C407C2C();
    v25 = *&v21[v22];
    v15 = v20;
    *(v17 + v24) = v25;
    v26 = v17;
    v13 = v35;
    sub_22C36C640(v26, 0, 1, v23);

LABEL_8:
    sub_22C407C2C();
    v28 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
    if (sub_22C370B74(v13, 1, v28) == 1)
    {

      MEMORY[0x2318B7850](93, 0xE100000000000000);
      return v48;
    }

    v29 = *(v28 + 48);
    sub_22C407C2C();
    v30 = *&v13[v29];
    if ((v16 & 1) == 0)
    {
      MEMORY[0x2318B7850](8236, 0xE200000000000000);
    }

    sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
    v31 = swift_allocObject();
    *(v31 + 16) = v45;
    *(v31 + 56) = v42;
    sub_22C36D548((v31 + 32));
    v32 = v46;
    sub_22C3A7214();
    sub_22C90AE9C();

    MEMORY[0x2318B7850](8250, 0xE200000000000000);
    v33 = swift_allocObject();
    *(v33 + 16) = v45;
    *(v33 + 56) = sub_22C3A5908(&qword_27D9BB090, &unk_22C90D930);
    *(v33 + 32) = v30;

    sub_22C90AE9C();

    result = sub_22C36DD28(v32, &qword_27D9BB0C0, &qword_22C90D960);
    LODWORD(v16) = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_22C54C9B8()
{
  result = qword_27D9BDC00;
  if (!qword_27D9BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC00);
  }

  return result;
}

uint64_t sub_22C54CA2C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C54CA84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C54CADC()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

void sub_22C54CB5C(uint64_t a1)
{
  sub_22C45924C(319);
  if (v1 <= 0x3F)
  {
    sub_22C48425C(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_22C901FAC();
      if (v5 <= 0x3F)
      {
        sub_22C54CC58();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C54CC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C54CC58()
{
  if (!qword_27D9BDC38)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDC38);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ContextEventPromptGeneratorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C54CD8C()
{
  result = qword_27D9BDC40;
  if (!qword_27D9BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC40);
  }

  return result;
}

unint64_t sub_22C54CDE0()
{
  result = qword_27D9BDC48;
  if (!qword_27D9BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC48);
  }

  return result;
}

void sub_22C54CE60()
{
  sub_22C370030();
  v3 = v1;
  sub_22C369A48();
  v4 = sub_22C8FFDEC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C36BE24();
  v45 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v48 = v10;
  v11 = *(v0 + 16);
  if (v11)
  {
    v44 = v2;
    v49 = MEMORY[0x277D84F90];
    v46 = v9;
    sub_22C3B6AF0(0, v11, 0);
    v13 = sub_22C36C88C();
    v14 = v46;
    v15 = 0;
    v47 = v46 + 64;
    v41 = v6;
    v42 = v4;
    v43 = v11;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v14 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v14 + 36) != v12)
        {
          goto LABEL_25;
        }

        v17 = v12;
        (*(v6 + 16))(v44, *(v14 + 56) + *(v6 + 72) * v13, v4);
        sub_22C483004(v48);
        if (v3)
        {
          goto LABEL_29;
        }

        v18 = sub_22C37FDF4();
        v19(v18);
        v21 = *(v49 + 16);
        v20 = *(v49 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22C3B6AF0(v20 > 1, v21 + 1, 1);
        }

        *(v49 + 16) = v21 + 1;
        sub_22C36BA94();
        (*(v23 + 32))(v49 + v22 + *(v23 + 72) * v21, v48, v45);
        v14 = v46;
        v24 = 1 << *(v46 + 32);
        if (v13 >= v24)
        {
          goto LABEL_26;
        }

        v25 = *(v47 + 8 * v16);
        if ((v25 & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v46 + 36) != v17)
        {
          goto LABEL_28;
        }

        v26 = v25 & (-2 << (v13 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v27 = v43;
        }

        else
        {
          v28 = v16 << 6;
          v29 = v16 + 1;
          v30 = (v46 + 72 + 8 * v16);
          v27 = v43;
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              v33 = sub_22C36EBF0();
              sub_22C3A5038(v33, v34, v35);
              v14 = v46;
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          v36 = sub_22C36EBF0();
          sub_22C3A5038(v36, v37, v38);
          v14 = v46;
        }

LABEL_19:
        if (++v15 == v27)
        {
          goto LABEL_22;
        }

        v12 = *(v14 + 36);
        v13 = v24;
        v3 = 0;
        v6 = v41;
        v4 = v42;
        if (v13 < 0)
        {
          break;
        }
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
    v39 = sub_22C37FDF4();
    v40(v39);

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_22C36FB20();
  }
}

uint64_t sub_22C54D548(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v45 = sub_22C90981C();
  v5 = MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v8;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v44 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v40 = v7;
  v41 = (v7 + 32);
  v46 = a1;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v16 << 6);
    v20 = (*(v46 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v46 + 56) + 8 * v19);
    swift_getKeyPath();
    v47 = v23;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v45) == 1)
    {

      result = sub_22C36DD28(v4, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v24 = *v41;
      (*v41)(v43, v4, v45);
      v39 = v24;
      v24(v42, v43, v45);
      v25 = v44[2];
      if (v44[3] <= v25)
      {
        sub_22C88E414(v25 + 1);
      }

      v26 = v48;
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v27 = v26 + 64;
      v44 = v26;
      v28 = -1 << *(v26 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v28) >> 6;
        while (++v30 != v33 || (v32 & 1) == 0)
        {
          v34 = v30 == v33;
          if (v30 == v33)
          {
            v30 = 0;
          }

          v32 |= v34;
          v35 = *(v27 + 8 * v30);
          if (v35 != -1)
          {
            v31 = __clz(__rbit64(~v35)) + (v30 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v37 = v44;
      v36 = v45;
      v38 = (v44[6] + 16 * v31);
      *v38 = v22;
      v38[1] = v21;
      result = (v39)(v37[7] + *(v40 + 72) * v31, v42, v36);
      ++v37[2];
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v44;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C54D92C(uint64_t a1)
{
  v26 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v28)
    {
      v14 = v26;
      if (*(v26 + 24) <= *(v26 + 16))
      {
        sub_22C88E938();
        v14 = v29;
      }

      v26 = v14;
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v15 = v26 + 64;
      v16 = -1 << *(v26 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v15 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (*(v26 + 48) + 16 * v19);
      *v24 = v13;
      v24[1] = v12;
      v25 = (*(v26 + 56) + 16 * v19);
      *v25 = v27;
      v25[1] = v28;
      ++*(v26 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v26;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_22C54DBA0(void (*a1)(void *)@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40))
  {
    v4 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v4;
    *(a2 + 25) = *(v2 + 25);
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);
    v9 = *(v2 + 8);
    v8 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v9;
    v13[2] = v8;
    v13[3] = v7;
    v13[4] = v6;

    sub_22C456C94(v9, v8, v7);
    a1(v13);

    v10 = sub_22C38B418();
    sub_22C456D48(v10, v11, v12);
    *(a2 + 40) = 0;
  }
}

void sub_22C54DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  a10 = v22;
  v128 = v26;
  v125 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_22C9099FC();
  v33 = sub_22C36A7A4(v32, v141);
  v122 = v34;
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C387210();
  v35 = sub_22C9037DC();
  v36 = sub_22C36A7A4(v35, &a10);
  v127 = v37;
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v39);
  v41 = &v116 - v40;
  v42 = sub_22C908EAC();
  v43 = sub_22C36A7A4(v42, &a9);
  v124 = v44;
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  v48 = &v116 - v47;
  v49 = type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v53 = (v52 - v51);
  sub_22C557A88(v29, v52 - v51);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *v53;
    v55 = v21[23];
    v56 = v21[24];
    sub_22C374168(v21 + 20, v55);
    (*(v56 + 8))(v54, v128, v55, v56);

LABEL_16:
    sub_22C36FB20();
    return;
  }

  v117 = v23;
  v118 = v31;
  v57 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v58 = sub_22C9036EC();
  sub_22C3699C8();
  v60 = v59;
  v61 = (*(v59 + 88))(v53, v58);
  if (v61 == *MEMORY[0x277D1ECE0])
  {
    v62 = sub_22C557EB8();
    v63(v62);
    sub_22C374490();
    v65 = v126;
    (*(v64 + 32))(v48, v53, v126);
    sub_22C36D2E8();
    sub_22C557FD0();
    v66();
    v67 = v21[3];
    v68 = v21[4];
    sub_22C374168(v21, v67);
    sub_22C37E2E0();
    sub_22C386578();
    sub_22C481D88(v48, v125, v69, v128, v41, v67, v68);
    (*(v49 + 8))(v41, v53);
    (*(v60 + 8))(v48, v65);
    goto LABEL_16;
  }

  if (v61 == *MEMORY[0x277D1ECE8])
  {
    v70 = sub_22C557EB8();
    v71(v70);
    sub_22C374490();
    sub_22C557F60();
    v72();
    v73 = v21[8];
    v74 = v21[9];
    sub_22C374168(v21 + 5, v73);
    sub_22C386578();
    v75(v20, v125, v128, v73, v74);
    v76 = sub_22C37B220();
    v77(v76);
    sub_22C36FB04();
    sub_22C3837F8();
    v78();
    goto LABEL_16;
  }

  if (v61 == *MEMORY[0x277D1ECD8])
  {
    v79 = sub_22C557EB8();
    v80(v79);
    sub_22C3759C4();
    v82 = v120;
    (*(v81 + 32))(v120, v53, v126);
    sub_22C37205C();
    v83 = v121;
    sub_22C557FD0();
    v84();
    v85 = sub_22C374168(v21 + 10, v21[13]);
    sub_22C378AB0(v85, v140);
    v122 = v141[1];
    v123 = v141[0];
    v119 = sub_22C374168(v140, v141[0]);
    v86 = v85[3];
    v87 = v85[4];
    v88 = sub_22C372FA4();
    sub_22C374168(v88, v89);
    v90 = v128;
    v91 = a10;
    (*(v87 + 32))(&v136, v82, v128, v86, v87);
    if (v91)
    {
      (*(v57 + 8))(v83, v53);
      (*(v58 + 8))(v82, v126);
    }

    else
    {
      v135[0] = v136;
      v135[1] = v137;
      v135[2] = v138;
      v135[3] = v139;
      a10 = 0;
      v105 = v136;
      v106 = v137;
      v107 = v83;
      v108 = v138;
      v109 = BYTE8(v138);
      v110 = sub_22C372FA4();
      sub_22C456C30(v110, v111, v106, *(&v106 + 1), v108, v109);
      sub_22C3E022C(v135);
      v129 = v105;
      sub_22C5580C4();
      v132 = *(&v106 + 1);
      v133 = v108;
      v134 = v109;
      sub_22C386578();
      sub_22C481D88(v82, v125, v112, v90, v107, v123, v122);
      sub_22C36FB04();
      sub_22C3837F8();
      v113();
      sub_22C36FB04();
      v114(v82, v126);
      v115 = sub_22C3720E8();
      sub_22C51E1CC(v115, v130, v131, v132, v133, v134);
    }

    sub_22C36FF94(v140);
    goto LABEL_16;
  }

  v92 = v118;
  if (v61 == *MEMORY[0x277D1ECD0])
  {
    v93 = sub_22C557EB8();
    v94(v93);
    sub_22C374490();
    v96 = v119;
    (*(v95 + 32))(v119, v53, v126);
    sub_22C385E64();
    v97 = v117;
    sub_22C557FD0();
    v98();
    v100 = v21[3];
    v99 = v21[4];
    sub_22C374168(v21, v100);
    v101 = sub_22C37E2E0();
    (*(v99 + 16))(v96, v125, 1, &v136, v128, v97, v100, v99, v101);
    (*(v41 + 1))(v97, v53);
    (*(v60 + 8))(v96, v126);
    goto LABEL_16;
  }

  if (v61 == *MEMORY[0x277D1ECF8])
  {
    (*(v60 + 8))(v53, v58);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v102 = MEMORY[0x277D84F90];
    v103 = sub_22C909F0C();
    *v92 = 0u;
    *(v92 + 16) = 0u;
    *(v92 + 32) = 0;
    *(v92 + 40) = 1;
    *(v92 + 48) = v103;
    *(v92 + 56) = v102;
    sub_22C36FB04();
    sub_22C3837F8();
    v104();
    goto LABEL_16;
  }

  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C54E568()
{
  v1 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v5 = v4 - v3;
  v6 = sub_22C36CA88();
  sub_22C378AB0(v6, v7);
  sub_22C378AB0(v0 + 40, v5 + 40);
  sub_22C378AB0(v0 + 80, v5 + 80);
  sub_22C378AB0(v0 + 120, v5 + 120);
  sub_22C378AB0(v0 + 160, v5 + 160);
  v8 = *(type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0) + 36);
  v9 = *(v2 + 44);
  sub_22C908AEC();
  sub_22C36985C();
  (*(v10 + 16))(v5 + v9, v0 + v8);
  sub_22C38674C();
  sub_22C513518(v11, v12);
  return sub_22C557AE0(v5, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
}

void sub_22C54E6D8()
{
  sub_22C370030();
  v3 = v2;
  v64 = v4;
  v5 = sub_22C908AEC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  sub_22C3698F8(v14);
  v15 = sub_22C908DAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v21 = v0;
  (*(v7 + 16))(v11, v0 + *(v20 + 28), v5);
  sub_22C9099CC();
  if (v1)
  {
    (*(v7 + 8))(v11, v5);
    goto LABEL_10;
  }

  sub_22C37205C();
  sub_22C908ACC();

  (*(v7 + 8))(v11, v5);
  v22 = sub_22C908ABC();
  v23 = sub_22C36E638();
  sub_22C36D0A8(v23, v24, v22);
  if (v25)
  {
    sub_22C36DD28(v19, &qword_27D9BC0B0, &unk_22C912AD0);
    v26 = v64;
LABEL_9:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v35 = MEMORY[0x277D84F90];
    v36 = sub_22C909F0C();
    *v26 = 2;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 1;
    *(v26 + 48) = v36;
    *(v26 + 56) = v35;
    goto LABEL_10;
  }

  sub_22C36A948();
  v27 = sub_22C38674C();
  v29 = v28(v27);
  v26 = v64;
  if (v29 != *MEMORY[0x277D1E8D0])
  {
    v33 = sub_22C38674C();
    v34(v33);
    goto LABEL_9;
  }

  v30 = sub_22C38674C();
  v31(v30);
  sub_22C36D2E8();
  (*(v32 + 32))(v19, v19, v15);
  sub_22C54EC48(v3, &v72);
  v71[0] = v72;
  v71[1] = v73;
  v71[2] = v74;
  v71[3] = v75;
  v37 = v74;
  v38 = BYTE8(v74);
  v62 = v72;
  v65 = v73;
  v39 = sub_22C3722DC();
  sub_22C456C30(v39, v40, v41, v42, v43, v38);
  sub_22C3E022C(v71);
  v61 = v38;
  if ((v38 & 1) == 0)
  {
    v68 = v62;
    v69 = v65;
    v70 = v37;
    v44 = sub_22C3722DC();
    sub_22C456C30(v44, v45, v46, v47, v48, 0);
    sub_22C54ED48(&v68, v21, v66);
    v65 = v66[1];
    v62 = v66[0];
    v63 = v67;
    v49 = *(&v68 + 1);
    v60 = *(&v69 + 1);
    v50 = v69;

    v51 = v50;
    v26 = v64;
    sub_22C456D48(v49, v51, v60);
    v52 = sub_22C3722DC();
    sub_22C456CE4(v52, v53, v54, v55, v56, 0);
    v37 = v63;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v57 = MEMORY[0x277D84F90];
  v58 = sub_22C909F0C();
  *v26 = v62;
  *(v26 + 16) = v65;
  *(v26 + 32) = v37;
  *(v26 + 40) = v61;
  *(v26 + 48) = v58;
  *(v26 + 56) = v57;
  sub_22C36FB04();
  sub_22C558070();
  v59();
LABEL_10:
  sub_22C36FB20();
}

double sub_22C54EC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = sub_22C372FA4();
  sub_22C374168(v7, v8);
  (*(v6 + 16))(v16, a1, v5, v6);
  v9 = v16[1];
  v10 = v17;
  if (v17)
  {

    v11 = 2;
  }

  else
  {
    v12 = v16[0];
    sub_22C36A83C();
    v11 = swift_allocObject();
    *(v11 + 16) = v12;
    *(v11 + 24) = v9;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_22C909F0C();
  *a2 = v11;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v10;
  *(a2 + 48) = v14;
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_22C54ED48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = *a1;
  sub_22C374168((a2 + 80), *(a2 + 104));
  sub_22C4FA634();
  v58 = v4;
  v6 = v5;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v8 = swift_allocObject();
  v62[0] = 0x6F636F746F727040;
  v62[1] = 0xE90000000000006CLL;
  *(v8 + 16) = sub_22C90A49C();
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 543581540;
  *(v10 + 24) = 0xE400000000000000;
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v12 = v52;
    v14 = *(v52 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v12 = v53;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = v60;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x6F4E203E2D202928;
  *(v17 + 24) = 0xEB000000003A656ELL;
  v18 = *(v12 + 24);

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C591324();
    v12 = v54;
  }

  *(v12 + 16) = v13 + 3;
  *(v12 + 8 * v16 + 32) = v17;
  v19 = sub_22C3DB9B0(v12);

  v20 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = v21;
  *(inited + 40) = v20 | 0x6000000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = 2236962;
  *(v22 + 24) = 0xE300000000000000;
  sub_22C591324();
  v24 = v23;
  v25 = *(v23 + 16);
  v26 = v25 + 1;
  v27 = a2;
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v55;
  }

  *(v24 + 16) = v26;
  *(v24 + 8 * v25 + 32) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = v58;
  *(v28 + 24) = v6;
  v29 = *(v24 + 24);
  v30 = v25 + 2;

  if (v30 > (v29 >> 1))
  {
    sub_22C591324();
    v24 = v56;
  }

  v31 = v27;
  *(v24 + 16) = v30;
  *(v24 + 8 * v26 + 32) = v28;

  v32 = swift_allocObject();
  *(v32 + 16) = 2236962;
  *(v32 + 24) = 0xE300000000000000;
  v33 = *(v24 + 16);
  if (v33 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v57;
  }

  *(v24 + 16) = v33 + 1;
  *(v24 + 8 * v33 + 32) = v32;
  v34 = sub_22C3DB9B0(v24);

  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v35 + 16) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = 1;
  *(v37 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v38 = swift_allocObject();
  *(v38 + 16) = v35 | 0x6000000000000000;
  *(v37 + 32) = v38;
  *(inited + 48) = v37 | 0xA000000000000000;
  v39 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v40 = sub_22C529D00(10, 0xE100000000000000, v39);

  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v41 + 16) = v42;
  v43 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v44 = sub_22C49FB90(v60, v31 + *(v43 + 32));
  v46 = v45;

  sub_22C379DF8(v31 + 40, v62, &qword_27D9BD908, &unk_22C919AF8);
  if (v63)
  {
    sub_22C374168(v62, v63);
    sub_22C534758(v44, v46, v61);

    v47 = v61[0];
    v48 = v61[1];
    v49 = v61[2];
    v50 = v61[3];
    result = sub_22C36FF94(v62);
  }

  else
  {

    result = sub_22C36DD28(v62, &qword_27D9BD908, &unk_22C919AF8);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  *a3 = v41 | 0x6000000000000000;
  a3[1] = v47;
  a3[2] = v48;
  a3[3] = v49;
  a3[4] = v50;
  return result;
}

void sub_22C54F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v294 = v20;
  v262 = v23;
  v281 = v24;
  v280 = v25;
  v260 = v26;
  v259 = v27;
  v279 = v28;
  v30 = v29;
  v32 = v31;
  v268 = v33;
  v290 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  sub_22C36985C();
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v288 = v36;
  v292 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  sub_22C3698F8(v40);
  v41 = sub_22C9097AC();
  v42 = sub_22C36A7A4(v41, &a9);
  v282 = v43;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  sub_22C3698F8(v45);
  v46 = sub_22C90963C();
  v47 = sub_22C36A7A4(v46, &v309);
  v277 = v48;
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  v50 = sub_22C3698F8(v49);
  v51 = type metadata accessor for PromptToolsHelper.RenderableParameter(v50);
  v52 = sub_22C36A7A4(v51, &v323);
  v306 = v53;
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  v57 = &v257 - v56;
  v58 = sub_22C90981C();
  v59 = sub_22C36A7A4(v58, &a11);
  v61 = v60;
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  v65 = &v257 - v64;
  v269 = v32;
  v66 = *(sub_22C908D8C() + 16);
  v293 = v61;
  if (v66)
  {
    v68 = *(v61 + 16);
    v67 = v61 + 16;
    v300 = v68;
    sub_22C36BA94();
    v275 = v69;
    v285 = v70;
    v71 = v69 + v70;
    v72 = *(v67 + 56);
    v295 = v67 + 16;
    v299 = MEMORY[0x277D84F90];
    sub_22C383CEC();
    v304 = v30;
    while (1)
    {
      (v300)(v65, v71, v32);
      v73 = sub_22C9097DC();
      if (v30[2])
      {
        v75 = sub_22C36E2BC(v73, v74);
        v77 = v76;

        if (v77)
        {
          sub_22C372274(&v316);
          sub_22C383CEC();
          v300();
          v78 = sub_22C36BA00();
          v79(v78);
          sub_22C386578();
          v81 = *v80;
          (*v80)(v297, v77, v75);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v82 = v299;
          }

          else
          {
            sub_22C36D270();
            sub_22C59266C();
            v82 = v85;
          }

          v84 = *(v82 + 16);
          v83 = *(v82 + 24);
          v32 = v84 + 1;
          if (v84 >= v83 >> 1)
          {
            sub_22C369AB0(v83);
            sub_22C59266C();
            v82 = v86;
          }

          *(v82 + 16) = v32;
          v299 = v82;
          sub_22C383CEC();
          sub_22C386578();
          v81();
          goto LABEL_12;
        }
      }

      else
      {
      }

      v32 = v305;
      (*(v67 - 8))(v65, v305);
LABEL_12:
      v71 += v72;
      --v66;
      v30 = v304;
      if (!v66)
      {

        v87 = v299;
        goto LABEL_16;
      }
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_16:
  v88 = *(v87 + 16);
  v89 = v293;
  if (v88)
  {
    v317 = MEMORY[0x277D84F90];
    v90 = v87;
    sub_22C3B6F58(0, v88, 0);
    v91 = *(v89 + 16);
    v92 = v317;
    sub_22C36BA94();
    v299 = v90;
    v94 = v90 + v93;
    v95 = *(v89 + 72);
    sub_22C383CEC();
    do
    {
      v91(v57, v94, &v317);
      sub_22C37449C();
      v97 = &v57[*(v96 + 20)];
      *v97 = 0;
      *(v97 + 1) = 0;
      v317 = v92;
      v99 = *(v92 + 16);
      v98 = *(v92 + 24);
      if (v99 >= v98 >> 1)
      {
        v102 = sub_22C369AB0(v98);
        sub_22C3B6F58(v102, v99 + 1, 1);
        sub_22C383CEC();
        v92 = v317;
      }

      *(v92 + 16) = v99 + 1;
      sub_22C36BA94();
      sub_22C557D60(v57, v92 + v100 + *(v101 + 72) * v99);
      v94 += v95;
      --v88;
    }

    while (v88);
  }

  else
  {

    v92 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v103);
  v255 = v294;
  v317 = v92;

  sub_22C563F04(sub_22C557DC4, &v253);
  v298 = 0;

  v104 = v317;
  v105 = 0;
  v304 = *(v317 + 16);
  v106 = (v282 + 8);
  v299 = MEMORY[0x277D84F90];
  v107 = v283;
  v300 = v317;
  v108 = v301;
  v109 = v302;
  while (1)
  {
    if (v304 == v105)
    {

      v263 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
      v121 = v294;
      v122 = (v294 + *(v263 + 24));
      v123 = v122[3];
      v124 = v122[4];
      v125 = sub_22C36BA00();
      v127 = sub_22C374168(v125, v126);
      v317 = v299;
      v128 = sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
      v129 = sub_22C3D32C8(&qword_27D9BD8D8, &qword_27D9BD8D0, &unk_22C919AC0, MEMORY[0x277D83970]);
      v271 = sub_22C577748(&v317, v127, v280, v281, v128, v123, v129, v124);
      v274 = v130;
      v273 = v131;

      v132 = v122[3];
      v133 = v122[4];
      sub_22C374168(v122, v132);
      sub_22C36D10C();
      v134(v314, v132, v133);
      sub_22C374168(v314, v315);
      sub_22C37205C();
      (*(v135 + 104))(v276);
      sub_22C4FCF6C();
      v136 = sub_22C372FCC();
      v137(v136);
      v138 = v317;
      v139 = v318;
      v140 = v319;
      v278 = v320;
      v270 = v321;
      v141 = v322;
      sub_22C36FF94(v314);
      v142 = v269;
      sub_22C5509B8();
      v143 = v317;
      v144 = v322;
      v277 = v318;
      v276 = v319;
      v282 = v320;
      v281 = v321;
      sub_22C456C30(v317, v318, v319, v320, v321, v322);
      sub_22C3E022C(&v317);
      v145 = sub_22C374168(v121, v121[3]);
      sub_22C4FA634();
      v266 = v144 | v141;
      v280 = v138;
      v279 = v139;
      v275 = v140;
      v272 = v143;
      v267 = __PAIR64__(v141, v144);
      if ((v144 | v141))
      {
        if (v144)
        {
          v148 = v143;
        }

        else
        {
          v148 = v138;
        }

        sub_22C385D94();
        v149 = v148;
        v150 = MEMORY[0x277D84F90];
        v151 = v270;
        goto LABEL_59;
      }

      v302 = v122[3];
      v303 = v122[4];
      v306 = v146;
      v261 = v147;
      v304 = sub_22C374168(v122, v302);
      v152 = v139;
      v153 = v277;
      v154 = v276;
      v155 = v282;
      sub_22C456C30(v143, v277, v276, v282, v281, 0);
      v156 = v138;
      v157 = v152;
      v158 = v140;
      v159 = v140;
      v160 = v270;
      v161 = v278;
      sub_22C456C30(v156, v157, v159, v278, v270, 0);

      sub_22C456C94(v153, v154, v155);
      v162 = v280;

      v163 = v161;
      v164 = v160;
      sub_22C456C94(v279, v158, v163);
      sub_22C908D8C();
      v165 = v298;
      sub_22C54D210();
      v122 = sub_22C54D92C(v166);
      v258 = v165;

      v167 = sub_22C909F0C();
      v168 = v302;
      v169 = v303;
      LOBYTE(v165) = _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      v170 = sub_22C55DE44();
      v254 = v168;
      BYTE1(v252) = 1;
      LOBYTE(v252) = v165 & 1;
      v251 = v162;
      v142 = v162;
      v138 = v261;
      v171 = v273;
      sub_22C5777F4(v143, v306, v261, v271, v274, v273, v122, v167, v304, v251, v262, v252, v170, v254, v169, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v267, v268, v269);
      v269 = v172;

      v145 = v263;
      sub_22C379DF8(v121 + *(v263 + 32), v314, &qword_27D9BD658, &qword_22C9186E0);
      if (v315)
      {
        v173 = sub_22C374168(v314, v315);
        v297 = *(v171 + 16);
        if (v297)
        {
          v262 = v173;
          v291 = (v296 + *(v292 + 48));
          v174 = v293;
          sub_22C36BA94();
          v285 = v274 + v175;
          v295 = *(v274 + 16);
          v284 = v174 + 16;
          v283 = v174 + 32;

          v176 = 0;
          v177 = (v171 + 64);
          v298 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_22C386578();
            if (v110 == v176)
            {
              goto LABEL_61;
            }

            v178 = v290;
            v179 = v288;
            v180 = (v288 + *(v290 + 48));
            v181 = *(v174 + 72);
            v306 = v176;
            v182 = v305;
            (*(v174 + 16))(v288, v285 + v181 * v176, v305);
            v299 = *(v177 - 4);
            v303 = *(v177 - 3);
            v183 = v303;
            v302 = *(v177 - 2);
            v184 = v302;
            v301 = *(v177 - 1);
            v185 = v301;
            v304 = v177;
            v300 = *v177;
            v186 = v300;
            *v180 = v299;
            v180[1] = v183;
            v180[2] = v184;
            v180[3] = v185;
            v180[4] = v186;
            v187 = v289;
            sub_22C557E2C(v179, v289);
            v188 = v187 + *(v178 + 48);
            v189 = *(v174 + 32);
            v190 = sub_22C37022C(&v321);
            v189(v190, v187, v182);
            v191 = *(v188 + 32);
            v192 = *(v188 + 16);
            v193 = v291;
            *v291 = *v188;
            v193[1] = v192;
            *(v193 + 4) = v191;
            v174 = v286;
            sub_22C379DF8(v176, v286, &qword_27D9BD8E8, &unk_22C919AD0);
            v194 = *(v292 + 48);
            v195 = *(v174 + v194);
            v122 = *(v174 + v194 + 8);
            v196 = *(v174 + v194 + 24);
            v197 = *(v174 + v194 + 32);
            v198 = v287;
            v199 = (v287 + v194);
            v200 = v182;
            v201 = *(v174 + v194 + 16);
            v189(v287, v174, v200);
            *v199 = v195;
            v199[1] = v122;
            v199[2] = v201;
            v199[3] = v196;
            v199[4] = v197;

            sub_22C456C94(v303, v302, v301);
            sub_22C36CCEC();
            sub_22C456C94(v202, v203, v204);
            sub_22C36DD28(v198, &qword_27D9BD8E8, &unk_22C919AD0);
            sub_22C36DD28(v296, &qword_27D9BD8E8, &unk_22C919AD0);
            if (v201)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v210 = sub_22C36D270();
                sub_22C591018(v210, v211, v212, v213);
                v298 = v214;
              }

              sub_22C558090();
              sub_22C37449C();
              v207 = *(v205 + 16);
              v206 = *(v205 + 24);
              if (v207 >= v206 >> 1)
              {
                v215 = sub_22C369AB0(v206);
                sub_22C591018(v215, v207 + 1, 1, v298);
                v298 = v216;
              }

              sub_22C37449C();
              *(v208 + 16) = v207 + 1;
              v209 = (v208 + 32 * v207);
              v209[4] = v122;
              v209[5] = v201;
              v209[6] = v196;
              v209[7] = v197;
            }

            else
            {
              sub_22C558090();
            }

            v176 = &qword_27D9BD8E8 + 1;
            v177 = v304 + 5;
            v121 = v294;
            if (v297 == (&qword_27D9BD8E8 + 1))
            {

              v143 = v272;
              v145 = v263;
              v173 = v262;
              goto LABEL_54;
            }
          }
        }

        v298 = MEMORY[0x277D84F90];
LABEL_54:
        v221 = *v173;
        v142 = v258;
        v222 = sub_22C49FB90(v143, v121 + *(v145 + 9));
        v217 = v277;
        if (!v142)
        {
          v224 = v222;
          v225 = v223;

          sub_22C532604(v224, v225, v298, v221, &v310);
          v151 = v270;

          v307 = v310;
          v308 = v311;
          v309 = v312;
          sub_22C474C14(v313);

          sub_22C36FF94(v314);

          sub_22C37F2B0();

          sub_22C557FE0();
          sub_22C36CCEC();
          sub_22C456D48(v248, v249, v250);

          v122 = v313[0];
          v145 = v313[1];
          v142 = v313[2];
          v138 = v313[3];
LABEL_58:

          sub_22C456D48(v217, v121, v282);

          sub_22C557FE0();
          sub_22C36CCEC();
          sub_22C456D48(v229, v230, v231);
          v149 = v269;
          v150 = MEMORY[0x277D84F90];
LABEL_59:
          v232 = v266 & 1;
          v233 = v149;
          sub_22C558030();
          sub_22C456C30(v234, v235, v236, v237, v238, v239);
          type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
          v240 = sub_22C909F0C();

          sub_22C456CE4(v272, v277, v276, v282, v281, v267);
          sub_22C456CE4(v280, v279, v275, v278, v151, BYTE4(v267) & 1);
          sub_22C558030();
          sub_22C456CE4(v241, v242, v243, v244, v245, v246);
          v247 = v268;
          *v268 = v233;
          v247[1] = v122;
          v247[2] = v145;
          v247[3] = v142;
          v247[4] = v138;
          *(v247 + 40) = v232;
          v247[6] = v240;
          v247[7] = v150;
          sub_22C36CC48();
          return;
        }

        v138 = v280;
        sub_22C388CB8();
        v151 = v270;

        sub_22C36FF94(v314);

        sub_22C37F2B0();

        sub_22C377B94();
        sub_22C36CCEC();
        sub_22C456D48(v226, v227, v228);
      }

      else
      {
        sub_22C36DD28(v314, &qword_27D9BD658, &qword_22C9186E0);

        v217 = v277;
        sub_22C37F2B0();

        sub_22C557FE0();
        v151 = v164;
        sub_22C36CCEC();
        sub_22C456D48(v218, v219, v220);
      }

      sub_22C385D94();
      goto LABEL_58;
    }

    v110 = *(v104 + 16);
    if (v105 >= v110)
    {
      break;
    }

    v111 = (*(v306 + 80) + 32) & ~*(v306 + 80);
    v112 = *(v306 + 72);
    sub_22C557A88(v104 + v111 + v112 * v105, v107);
    sub_22C9097FC();
    sub_22C908FAC();
    sub_22C557DE4(&qword_27D9BD8C8, MEMORY[0x277D73128], MEMORY[0x277D73138]);
    v113 = v107;
    v114 = v303;
    v115 = sub_22C90AE0C();
    v116 = *v106;
    (*v106)(v109, v114);
    v116(v108, v114);
    if (v115)
    {
      sub_22C557AE0(v113, type metadata accessor for PromptToolsHelper.RenderableParameter);
      ++v105;
      v107 = v113;
    }

    else
    {
      sub_22C557D60(v113, v284);
      sub_22C37022C(&v324);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v325 = v115;
      v107 = v113;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6F58(0, *(v115 + 16) + 1, 1);
        v115 = v325;
      }

      v119 = *(v115 + 16);
      v118 = *(v115 + 24);
      if (v119 >= v118 >> 1)
      {
        v120 = sub_22C369AB0(v118);
        sub_22C3B6F58(v120, v119 + 1, 1);
        v115 = v325;
      }

      ++v105;
      *(v115 + 16) = v119 + 1;
      v299 = v115;
      sub_22C557D60(v284, v115 + v111 + v119 * v112);
    }

    v104 = v300;
  }

  __break(1u);
LABEL_61:
  __break(1u);

  __break(1u);
}

uint64_t sub_22C5508A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = v5[3];
  v12 = v5[4];
  sub_22C374168(v5, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C5509B8()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C9099FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v5 = sub_22C36BE24();
  v6 = (v0 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(v5) + 28));
  v7 = v6[3];
  v8 = v6[4];
  sub_22C374168(v6, v7);
  sub_22C908D7C();
  (*(v8 + 16))(v17, v1, v7, v8);
  v9 = sub_22C36EBF0();
  v10(v9);
  v11 = v17[1];
  v12 = v18;
  if (v18)
  {

    v13 = 2;
  }

  else
  {
    v14 = v17[0];
    sub_22C36A83C();
    v13 = swift_allocObject();
    *(v13 + 16) = v14;
    *(v13 + 24) = v11;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v15 = MEMORY[0x277D84F90];
  v16 = sub_22C909F0C();
  *v3 = v13;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = v12;
  *(v3 + 48) = v16;
  *(v3 + 56) = v15;
  sub_22C36CC48();
}

void sub_22C550B90()
{
  sub_22C370030();
  v2 = v0;
  v188 = v3;
  v189 = v4;
  v6 = v5;
  LODWORD(v202) = v7;
  v187 = v8;
  v190 = v9;
  v183 = v10;
  sub_22C90941C();
  sub_22C369824();
  v164 = v12;
  v165 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v163 = v13;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v175 = v15;
  v176 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v174 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v166 = v18;
  sub_22C36BA0C();
  v198 = sub_22C908AEC();
  sub_22C369824();
  v178 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v182 = v21;
  v22 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v170 = v24;
  sub_22C36BA0C();
  sub_22C908DAC();
  sub_22C369824();
  v168 = v26;
  v169 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v167 = v27;
  sub_22C36BA0C();
  v181 = sub_22C908D6C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v180 = v31;
  v32 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v33 = sub_22C369914(v32);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  v172 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  v171 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  v179 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v177 = v40;
  sub_22C36BA0C();
  v186 = sub_22C9099FC();
  sub_22C369824();
  v184 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  v161 = v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v162 = v45;
  sub_22C369930();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (&v159 - v48);
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  v185 = v50;
  v51 = *(v6 + 4);
  v52 = *(v6 + 40);
  v53 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  v54 = *(v53 + 40);
  v173 = v2;
  v55 = &v2[v54];
  v56 = *&v2[v54 + 24];
  v57 = *(v55 + 4);
  sub_22C374168(v55, v56);
  v58 = *v6;
  v212[1] = v6[1];
  v212[0] = v58;
  v213 = v51;
  v214 = v52;
  (*(v57 + 16))(v215, v190, v187, v202, v212, v188, v189, v56, v57);
  if (v1)
  {
    goto LABEL_30;
  }

  v202 = v49;
  v159 = v53;
  v160 = 0;
  v208 = v215[0];
  v209 = v215[1];
  v210 = v215[2];
  v211 = v215[3];
  v59 = sub_22C908DEC();
  v60 = 0;
  v216 = *(v59 + 16);
  v200 = v29 + 88;
  v201 = v29 + 16;
  v199 = *MEMORY[0x277D72148];
  v192 = (v29 + 96);
  v193 = (v29 + 8);
  v191 = 0x800000022C932110;
  v195 = (v184 + 8);
  v196 = (v184 + 32);
  v61 = v186;
  v62 = v198;
  v64 = v180;
  v63 = v181;
  v65 = v179;
  v197 = v59;
  v194 = v29;
  while (v216 != v60)
  {
    sub_22C36BA94();
    (*(v29 + 16))(v64, v59 + v66 + *(v29 + 72) * v60, v63);
    v67 = (*(v29 + 88))(v64, v63);
    if (v67 == v199)
    {
      v68 = v65;
      (*v192)(v64, v63);
      v69 = *v196;
      v70 = v61;
      (*v196)(v202, v64, v61);
      sub_22C9099DC();
      sub_22C37BE28();
      v74 = v74 && v191 == v72;
      if (v74)
      {
      }

      else
      {
        v75 = sub_22C382CE4(v71, v72, v73, v191);

        if ((v75 & 1) == 0)
        {
          v61 = v70;
          v69(v68, v202, v70);
          sub_22C36BECC();
          sub_22C36C640(v109, v110, v111, v70);
          sub_22C36DD28(v68, &qword_27D9BDC50, &unk_22C91B470);
          v59 = v197;
          v62 = v198;
          goto LABEL_16;
        }
      }

      v61 = v70;
      (*v195)(v202, v70);
      v65 = v68;
      v29 = v194;
      v59 = v197;
      v62 = v198;
    }

    else
    {
      (*v193)(v64, v63);
    }

    v76 = sub_22C36E638();
    sub_22C36C640(v76, v77, 1, v61);
    sub_22C36DD28(v65, &qword_27D9BDC50, &unk_22C91B470);
    ++v60;
  }

  v60 = v216;
LABEL_16:
  v78 = *(v59 + 16);
  v79 = v185;
  v80 = v182;
  if (v60 == v78)
  {
    v81 = 1;
    v82 = v183;
    v83 = v177;
    v84 = v178;
    goto LABEL_21;
  }

  if (v60 >= v78)
  {
    __break(1u);
  }

  else
  {
    sub_22C36BA94();
    v85 = v171;
    sub_22C5791C0();
    v86 = v172;
    sub_22C379DF8(v85, v172, &qword_27D9BDC50, &unk_22C91B470);
    sub_22C36D0A8(v86, 1, v61);
    if (!v74)
    {
      v83 = v177;
      (*v196)(v177, v86, v61);
      sub_22C36DD28(v85, &qword_27D9BDC50, &unk_22C91B470);
      v81 = 0;
      v82 = v183;
      v84 = v178;
LABEL_21:
      sub_22C36C640(v83, v81, 1, v61);

      v87 = sub_22C36E638();
      sub_22C36D0A8(v87, v88, v61);
      if (v74)
      {
        v89 = &qword_27D9BDC50;
        v90 = &unk_22C91B470;
        v91 = v83;
      }

      else
      {
        v104 = sub_22C36EBF0();
        v105(v104);
        (*(v84 + 16))(v80, &v173[*(v159 + 36)], v62);
        v106 = v160;
        sub_22C9099CC();
        if (v106)
        {
          sub_22C3E022C(&v208);
          (*(v84 + 8))(v80, v62);
          v107 = sub_22C557EF4();
          v108(v107);
LABEL_30:
          sub_22C36FB20();
          return;
        }

        v160 = 0;
        v112 = v80;
        v113 = v62;
        v114 = v170;
        sub_22C908ACC();

        (*(v84 + 8))(v112, v113);
        v115 = sub_22C908ABC();
        sub_22C36D0A8(v114, 1, v115);
        if (!v74)
        {
          sub_22C36A948();
          v119 = v118;
          v121 = (*(v120 + 88))(v114, v115);
          if (v121 == *MEMORY[0x277D1E8D0])
          {
            (*(v119 + 96))(v114, v115);
            (*(v168 + 32))(v167, v114, v169);
            v122 = v166;
            sub_22C903F7C();
            v123 = *(v184 + 16);
            v124 = v162;
            v123(v162, v79, v61);
            v125 = sub_22C9063CC();
            sub_22C90AACC();
            v126 = sub_22C37E2D0();
            if (os_log_type_enabled(v126, v127))
            {
              sub_22C36BED8();
              v128 = swift_slowAlloc();
              sub_22C370220();
              v202 = swift_slowAlloc();
              *&v204 = v202;
              *v128 = 136315138;
              v123(v161, v124, v61);
              v129 = sub_22C90A1AC();
              v130 = v61;
              v132 = v131;
              v217 = *v195;
              (*v195)(v124, v130);
              v133 = sub_22C36F9F4(v129, v132, &v204);

              *(v128 + 4) = v133;
              sub_22C3839B4();
              _os_log_impl(v134, v135, v136, v137, v128, 0xCu);
              sub_22C36FF94(v202);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              v138 = sub_22C36D66C();
              MEMORY[0x2318B9880](v138);

              (*(v175 + 8))(v166, v176);
            }

            else
            {

              v217 = *v195;
              (*v195)(v124, v61);
              (*(v175 + 8))(v122, v176);
            }

            v142 = *(v173 + 23);
            v141 = *(v173 + 24);
            sub_22C374168(v173 + 20, v142);
            sub_22C908DCC();
            v143 = v160;
            sub_22C54D210();
            v145 = sub_22C54D548(v144);

            v147 = v163;
            MEMORY[0x2318B6290](v146);
            v148 = sub_22C908E7C();
            v158 = v142;
            v149 = v167;
            (*(v141 + 8))(&v204, v167, v145, v147, v148, v150, v187, v188, v189, v158, v141);
            if (v143)
            {

              sub_22C3E022C(&v208);
              (*(v164 + 8))(v147, v165);
              (*(v168 + 8))(v149, v169);
              v217(v185, v186);
            }

            else
            {
              (*(v164 + 8))(v147, v165);

              v203[0] = v204;
              v203[1] = v205;
              v203[2] = v206;
              v203[3] = v207;
              v160 = 0;
              v151 = v204;
              v152 = v205;
              v153 = v206;
              v154 = BYTE8(v206);
              v155 = v211;
              sub_22C456C30(v204, *(&v204 + 1), v205, *(&v205 + 1), v206, SBYTE8(v206));

              sub_22C3E022C(v203);
              (*(v168 + 8))(v149, v169);
              v217(v185, v186);
              sub_22C3E022C(&v208);
              v156 = v183;
              *v183 = v151;
              v156[1] = v152;
              *(v156 + 4) = v153;
              *(v156 + 40) = v154;
              v157 = MEMORY[0x277D84F90];
              *(v156 + 6) = v155;
              *(v156 + 7) = v157;
            }

            goto LABEL_30;
          }

          v139 = sub_22C557EF4();
          v140(v139);
          (*(v119 + 8))(v114, v115);
LABEL_25:
          v92 = v174;
          sub_22C903F7C();
          v93 = sub_22C9063CC();
          sub_22C90AACC();
          v94 = sub_22C37E2D0();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            sub_22C3839B4();
            _os_log_impl(v97, v98, v99, v100, v96, 2u);
            v101 = sub_22C36D66C();
            MEMORY[0x2318B9880](v101);
          }

          (*(v175 + 8))(v92, v176);
          v102 = v209;
          *v82 = v208;
          v82[1] = v102;
          v103 = v211;
          v82[2] = v210;
          v82[3] = v103;
          goto LABEL_30;
        }

        v116 = sub_22C557EF4();
        v117(v116);
        v89 = &qword_27D9BC0B0;
        v90 = &unk_22C912AD0;
        v91 = v114;
      }

      sub_22C36DD28(v91, v89, v90);
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_22C551934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v145 = v21;
  v142 = v26;
  v140 = v27;
  v29 = v28;
  v30 = sub_22C9063DC();
  v31 = sub_22C36A7A4(v30, &a10);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  sub_22C908AEC();
  sub_22C369824();
  v144 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  v35 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v35);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  sub_22C36D5B4();
  sub_22C3698F8(v37);
  v38 = sub_22C908DAC();
  v39 = sub_22C36A7A4(v38, &a12);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v40);
  sub_22C908D6C();
  sub_22C369824();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  sub_22C387210();
  v44 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v45 = sub_22C369914(v44);
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  v151 = v48;
  sub_22C369930();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA64();
  v143 = v50;
  sub_22C36BA0C();
  v51 = sub_22C9099FC();
  sub_22C369824();
  v138 = v52;
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  v141 = v29;
  v57 = sub_22C908DEC();
  v58 = sub_22C557F24(v57);
  sub_22C3812C4(v58, *MEMORY[0x277D72148]);
  sub_22C372FE8("ShowInAppSearchResultsIntent");
  while (v152 != v22)
  {
    sub_22C557EA0();
    v59 = sub_22C37E178();
    v60(v59);
    v61 = sub_22C37B220();
    if (v62(v61) == v150)
    {
      v63 = sub_22C37FDF4();
      v64(v63);
      v23 = *v149;
      v65 = sub_22C377B94();
      v66 = v51;
      v23(v65);
      sub_22C9099DC();
      sub_22C37BE28();
      v70 = v70 && v146 == v68;
      if (v70)
      {
      }

      else
      {
        v51 = sub_22C382CE4(v67, v68, v69, v146);

        if ((v51 & 1) == 0)
        {
          v101 = sub_22C557FA4();
          v23(v101);
          sub_22C36BECC();
          sub_22C36C640(v102, v103, v104, v66);
          sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
          v23 = v147;
          v29 = v148;
          goto LABEL_15;
        }
      }

      v73 = sub_22C558018();
      v74(v73);
      v29 = v148;
    }

    else
    {
      v71 = sub_22C37FDF4();
      v72(v71);
    }

    v75 = sub_22C36E638();
    sub_22C5580F8(v75, v76);
    sub_22C36DD28(v151, &qword_27D9BDC50, &unk_22C91B470);
    ++v22;
  }

  v22 = v152;
LABEL_15:
  v77 = *(v29 + 16);
  if (v22 == v77)
  {
    sub_22C558064();
    goto LABEL_20;
  }

  if (v22 >= v77)
  {
    __break(1u);
  }

  else
  {
    sub_22C557EA0();
    sub_22C374490();
    sub_22C5791C0();
    sub_22C5580B8();
    sub_22C379DF8(v79, v80, v81, v82);
    sub_22C36D0A8(v29, 1, v51);
    if (!v70)
    {
      v83 = sub_22C38674C();
      v84(v83);
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C558064();
LABEL_20:
      sub_22C5580F8(v143, v78);

      v85 = sub_22C36E638();
      sub_22C36D0A8(v85, v86, v51);
      if (v70)
      {
        v87 = &qword_27D9BDC50;
        v88 = &unk_22C91B470;
        v89 = v143;
      }

      else
      {
        v94 = sub_22C557F44();
        v95(v94);
        type metadata accessor for ToolDefinitionRenderer_v5_0(0);
        v96 = sub_22C37AC38();
        v97(v96);
        sub_22C9099CC();
        if (v42)
        {
          v98 = sub_22C372FA4();
          v99(v98);
          v23 = *v23;
          v100 = sub_22C557F18();
LABEL_27:
          v23(v100);
          goto LABEL_28;
        }

        sub_22C36D2E8();
        sub_22C908ACC();

        v105 = sub_22C372FA4();
        v106(v105);
        v107 = sub_22C908ABC();
        sub_22C36D0A8(v144, 1, v107);
        if (!v70)
        {
          sub_22C36A948();
          v110 = sub_22C377B94();
          v112 = v111(v110);
          if (v112 == *MEMORY[0x277D1E8D0])
          {
            v113 = sub_22C377B94();
            v114(v113);
            sub_22C3722F4();
            v115(v139, v144);
            sub_22C903F7C();
            v116 = *(v138 + 16);
            v117 = sub_22C55807C(&v152);
            v116(v117);
            v118 = sub_22C9063CC();
            LODWORD(v151) = sub_22C90AACC();
            if (os_log_type_enabled(v118, v151))
            {
              sub_22C36BED8();
              v119 = swift_slowAlloc();
              v152 = v51;
              v120 = v119;
              sub_22C370220();
              v121 = swift_slowAlloc();
              a10 = v121;
              *v120 = 136315138;
              v122 = sub_22C372274(&v151);
              (v116)(v122, v144, v152);
              sub_22C90A1AC();
              sub_22C50B42C();
              v123 = sub_22C381A8C();
              (v23)(v123, v152);
              v124 = sub_22C36CA88();
              sub_22C36F9F4(v124, v125, v126);
              sub_22C383BE4();
              v22 = v145;

              *(v120 + 4) = v116;
              sub_22C38B1A0(&dword_22C366000, v127, v128, "Tool definition has a conformance to assistant schema %s. Rendering the schema");
              sub_22C36FF94(v121);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              sub_22C36FB04();
            }

            else
            {

              v133 = sub_22C381A8C();
              (v23)(v133, v51);
              sub_22C36FB04();
            }

            sub_22C3837F8();
            v134();
            sub_22C386CB8((v22 + 160));
            v135 = sub_22C558000();
            v136(v135);
            sub_22C36FB04();
            v137(v144);
            v100 = sub_22C557F18();
            goto LABEL_27;
          }

          v129 = sub_22C36FD3C();
          v130(v129);
          v131 = sub_22C377B94();
          v132(v131);
LABEL_24:
          v90 = (v22 + *(type metadata accessor for ToolDefinitionRenderer_v5_0(0) + 40));
          v91 = v90[3];
          v92 = v90[4];
          sub_22C386CB8(v90);
          (*(v93 + 40))(v141, v140 & 1, v142, v91, v92);
LABEL_28:
          sub_22C36FB20();
          return;
        }

        v108 = sub_22C36FD3C();
        v109(v108);
        v87 = &qword_27D9BC0B0;
        v88 = &unk_22C912AD0;
        v89 = v144;
      }

      sub_22C36DD28(v89, v87, v88);
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_22C5522E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v139 = v21;
  v136 = v26;
  sub_22C369A48();
  v27 = sub_22C9063DC();
  v28 = sub_22C36A7A4(v27, &a11);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v29);
  sub_22C908AEC();
  sub_22C369824();
  v138 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v32 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v32);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  sub_22C3698F8(v34);
  v35 = sub_22C908DAC();
  v36 = sub_22C36A7A4(v35, &a13);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  sub_22C908D6C();
  sub_22C369824();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  sub_22C387210();
  v41 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v42 = sub_22C369914(v41);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v145 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  v137 = v47;
  sub_22C36BA0C();
  v48 = sub_22C9099FC();
  sub_22C369824();
  v133 = v49;
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  v135 = v21;
  v54 = sub_22C908DEC();
  v55 = sub_22C557F24(v54);
  sub_22C3812C4(v55, *MEMORY[0x277D72148]);
  sub_22C372FE8("ShowInAppSearchResultsIntent");
  while (v147 != v22)
  {
    sub_22C557EA0();
    v56 = sub_22C37E178();
    v57(v56);
    v58 = sub_22C37B220();
    if (v59(v58) == v144)
    {
      v60 = sub_22C37FDF4();
      v61(v60);
      v23 = *v143;
      v62 = sub_22C377B94();
      v63 = v48;
      v23(v62);
      sub_22C9099DC();
      sub_22C37BE28();
      v67 = v67 && v140 == v65;
      if (v67)
      {
      }

      else
      {
        v48 = sub_22C382CE4(v64, v65, v66, v140);

        if ((v48 & 1) == 0)
        {
          v98 = sub_22C557FA4();
          v23(v98);
          sub_22C36BECC();
          sub_22C36C640(v99, v100, v101, v63);
          sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
          v23 = v141;
          v21 = v142;
          goto LABEL_15;
        }
      }

      v70 = sub_22C558018();
      v71(v70);
      v21 = v142;
    }

    else
    {
      v68 = sub_22C37FDF4();
      v69(v68);
    }

    v72 = sub_22C36E638();
    sub_22C5580F8(v72, v73);
    sub_22C36DD28(v145, &qword_27D9BDC50, &unk_22C91B470);
    ++v22;
  }

  v22 = v147;
LABEL_15:
  v74 = *(v21 + 16);
  if (v22 == v74)
  {
    sub_22C558064();
    goto LABEL_20;
  }

  if (v22 >= v74)
  {
    __break(1u);
  }

  else
  {
    sub_22C557EA0();
    sub_22C374490();
    sub_22C5791C0();
    sub_22C5580B8();
    sub_22C379DF8(v76, v77, v78, v79);
    sub_22C36D0A8(v21, 1, v48);
    if (!v67)
    {
      v80 = sub_22C38674C();
      v81(v80);
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C558064();
LABEL_20:
      sub_22C5580F8(v137, v75);

      v82 = sub_22C36E638();
      sub_22C36D0A8(v82, v83, v48);
      if (v67)
      {
        v84 = &qword_27D9BDC50;
        v85 = &unk_22C91B470;
        v86 = v137;
      }

      else
      {
        v91 = sub_22C557F44();
        v92(v91);
        type metadata accessor for ToolDefinitionRenderer_v5_0(0);
        v93 = sub_22C37AC38();
        v94(v93);
        sub_22C9099CC();
        if (v39)
        {
          v95 = sub_22C372FA4();
          v96(v95);
          v23 = *v23;
          v97 = sub_22C557F18();
LABEL_27:
          v23(v97);
          goto LABEL_28;
        }

        sub_22C36D2E8();
        sub_22C908ACC();

        v102 = sub_22C372FA4();
        v103(v102);
        v104 = sub_22C908ABC();
        sub_22C36D0A8(v138, 1, v104);
        if (!v67)
        {
          sub_22C36A948();
          v107 = sub_22C377B94();
          v109 = v108(v107);
          if (v109 == *MEMORY[0x277D1E8D0])
          {
            v110 = sub_22C377B94();
            v111(v110);
            sub_22C3722F4();
            v112(v134, v138);
            sub_22C903F7C();
            v113 = *(v133 + 16);
            v114 = sub_22C55807C(&v148);
            v113(v114);
            v115 = sub_22C9063CC();
            v146 = sub_22C90AACC();
            if (os_log_type_enabled(v115, v146))
            {
              sub_22C36BED8();
              v147 = v48;
              v116 = swift_slowAlloc();
              sub_22C370220();
              v149 = swift_slowAlloc();
              *v116 = 136315138;
              v117 = sub_22C372274(&v147);
              (v113)(v117, v138, v147);
              sub_22C90A1AC();
              sub_22C50B42C();
              v118 = sub_22C381A8C();
              (v23)(v118, v147);
              v119 = sub_22C36CA88();
              sub_22C36F9F4(v119, v120, v121);
              sub_22C383BE4();
              v22 = v139;

              *(v116 + 4) = v113;
              sub_22C38B1A0(&dword_22C366000, v122, v123, "Tool definition has a conformance to assistant schema %s. Rendering the schema");
              sub_22C36FF94(v149);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              sub_22C36FB04();
            }

            else
            {

              v129 = sub_22C381A8C();
              (v23)(v129, v48);
              sub_22C36FB04();
            }

            v124();
            sub_22C386CB8((v22 + 160));
            v130 = sub_22C558000();
            v131(v130);
            sub_22C36FB04();
            v132(v138);
            v97 = sub_22C557F18();
            goto LABEL_27;
          }

          v125 = sub_22C36FD3C();
          v126(v125);
          v127 = sub_22C377B94();
          v128(v127);
LABEL_24:
          v87 = (v22 + *(type metadata accessor for ToolDefinitionRenderer_v5_0(0) + 40));
          v88 = v87[3];
          v89 = v87[4];
          sub_22C386CB8(v87);
          (*(v90 + 32))(v135, v136, v88, v89);
LABEL_28:
          sub_22C36FB20();
          return;
        }

        v105 = sub_22C36FD3C();
        v106(v105);
        v84 = &qword_27D9BC0B0;
        v85 = &unk_22C912AD0;
        v86 = v138;
      }

      sub_22C36DD28(v86, v84, v85);
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_22C552CC4()
{
  sub_22C51E374();
  sub_22C378AB0(v0, v7);
  sub_22C379DF8(v0 + 40, v10, &qword_27D9BD8A8, &qword_22C919AA0);
  v1 = v8;
  v2 = v9;
  sub_22C374168(v7, v8);
  v5[3] = v1;
  v5[4] = *(v2 + 8);
  sub_22C557D04(v5);
  sub_22C36BBA8();
  (*(v3 + 16))();
  sub_22C379DF8(v10, &v6, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C4FC044();
  sub_22C4BF340(v5);
  return sub_22C4C3588(v7);
}

uint64_t sub_22C552DC8()
{
  sub_22C51E374();
  sub_22C378AB0(v0, v2);
  sub_22C379DF8(v0 + 40, &v3, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C51A210();
  return sub_22C4C3588(v2);
}

uint64_t sub_22C552F70()
{
  sub_22C51E374();
  sub_22C7F4FB4();
  sub_22C50B42C();
  sub_22C3804EC();
  sub_22C552FE4();
}

void sub_22C552FE4()
{
  sub_22C36BA7C();
  v412 = v0;
  v411 = v2;
  v410 = v3;
  v385 = v4;
  v397 = v5;
  v7 = v6;
  v403 = v8;
  v377 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v378 = v10;
  v11 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  sub_22C3698F8(v13);
  v14 = sub_22C9096DC();
  v15 = sub_22C36A7A4(v14, &v416);
  v394 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v393 = v17;
  v18 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  sub_22C3698F8(v24);
  v25 = sub_22C9099FC();
  v26 = sub_22C36A7A4(v25, v423);
  v374 = v27;
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v30 = sub_22C3698F8(v29);
  v400 = type metadata accessor for TypeIdentifierRenderer_v5_0(v30);
  sub_22C36985C();
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C3698F8(v34);
  v35 = sub_22C9094EC();
  v36 = sub_22C36A7A4(v35, &v421);
  v392 = v37;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v38);
  v39 = sub_22C90952C();
  v40 = sub_22C36A7A4(v39, &v426);
  v408 = v41;
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C3698F8(v44);
  v45 = sub_22C9063DC();
  v46 = sub_22C36A7A4(v45, &v428);
  v404 = v47;
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  sub_22C3698F8(v51);
  v52 = sub_22C90430C();
  sub_22C369824();
  v416 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22C369ABC();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  sub_22C36BA64();
  v420 = v59;
  sub_22C36BA0C();
  v60 = sub_22C9095CC();
  v61 = sub_22C36A7A4(v60, &v420);
  v389 = v62;
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C90998C();
  v65 = sub_22C36A7A4(v64, &v413);
  v384 = v66;
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C3698F8(v67);
  v68 = sub_22C90947C();
  v69 = sub_22C36A7A4(v68, &v429);
  v407 = v70;
  MEMORY[0x28223BE20](v69);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA64();
  sub_22C3698F8(v75);
  v419 = sub_22C90077C();
  sub_22C369824();
  v77 = v76;
  MEMORY[0x28223BE20](v78);
  sub_22C369838();
  v81 = v80 - v79;
  v82 = sub_22C908A8C();
  sub_22C369824();
  v84 = v83;
  MEMORY[0x28223BE20](v85);
  sub_22C369838();
  v88 = v87 - v86;
  v89 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v90 = sub_22C369914(v89);
  MEMORY[0x28223BE20](v90);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v93);
  v95 = &v370 - v94;
  v96 = sub_22C908B2C();
  MEMORY[0x2318B6010](v96);
  v413 = v95;
  v409 = v7;
  sub_22C908B1C();
  v398 = 0;
  (*(v77 + 8))(v81, v419);
  (*(v84 + 8))(v88, v82);
  v97 = v413;
  v98 = v406;
  sub_22C36C640(v413, 0, 1, v406);
  sub_22C379DF8(v97, v1, &qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C376738(v1);
  v99 = v418;
  if (v321)
  {
    sub_22C36DD28(v1, &qword_27D9BC3B0, &unk_22C912AF0);
    v88 = v407;
  }

  else
  {
    sub_22C36D2E8();
    v101 = v414;
    (*(v100 + 32))(v414, v1, v98);
    (*(v88 + 16))(v396, v101, v98);
    v102 = sub_22C36BC58();
    v104 = v103(v102);
    if (v104 == *MEMORY[0x277D72B48])
    {
      v105 = sub_22C36BC58();
      v106(v105);
      sub_22C374490();
      v107 = v383;
      sub_22C557F60();
      v108();
      v109 = (v412 + *(v400 + 24));
      v110 = v98;
      v111 = v109[3];
      v112 = v109[4];
      sub_22C375EAC(v109);
      (*(v112 + 16))(v107, v385, v111, v112);
      v113 = sub_22C557FC0();
      v114(v113);
      (*(v88 + 8))(v101, v110);
      v115 = sub_22C3720E8();
      sub_22C36DD28(v115, v116, v117);
      goto LABEL_74;
    }

    v118 = *(v88 + 8);
    v119 = sub_22C372FCC();
    v118(v119);
    v120 = sub_22C36BC58();
    v118(v120);
  }

  v424 = v410;
  v425 = v411;
  v121 = sub_22C3720E8();
  v122 = v415;
  sub_22C379DF8(v121, v415, v123, v124);
  sub_22C376738(v122);
  if (v321)
  {

    sub_22C36DD28(v122, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_24;
  }

  (*(v88 + 32))(v417, v122, v98);
  sub_22C38399C();
  v125();
  v126 = sub_22C372FCC();
  v128 = v127(v126);
  if (v128 != *MEMORY[0x277D72B68])
  {
    v146 = *(v88 + 8);

    v147 = sub_22C36BC58();
    v146(v147);
    v148 = sub_22C372FCC();
    v146(v148);
    goto LABEL_24;
  }

  v129 = sub_22C372FCC();
  v130(v129);
  sub_22C3722F4();
  v131 = sub_22C37B220();
  v132(v131);

  sub_22C47E38C();
  v396 = v133;
  v134 = 0;
  v415 = v135;
  v414 = *(v135 + 16);
  v136 = (v416 + 8);
  v137 = v420;
  while (v134 != v414)
  {
    v138 = *(v416 + 72);
    v139 = (*(v416 + 80) + 32) & ~*(v416 + 80);
    v419 = v134;
    v140 = *(v416 + 16);
    v140(v137, v415 + v139 + v138 * v134, v52);
    v141 = v425 + v139;
    if (!v424)
    {
      v144 = *(v425 + 16) + 1;
      while (--v144)
      {
        v140(v57, v141, v52);
        sub_22C557DE4(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v145 = sub_22C90A0BC();
        (*v136)(v57, v52);
        v141 += v138;
        if (v145)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      sub_22C7D4BE0();
      goto LABEL_21;
    }

    sub_22C36BA00();
    sub_22C7DB73C();
    v143 = v142;

    if (v143)
    {
      goto LABEL_20;
    }

LABEL_21:
    v137 = v420;
    v134 = v419 + 1;
    (*v136)(v420, v52);
    v99 = v418;
  }

  sub_22C36FB04();
  v149(v388, v390);
  sub_22C558070();
  v150();
LABEL_24:
  v420 = v425;
  v151 = v412;
  v152 = v402;
  if (*(v425 + 16))
  {
    v153 = v401;
    sub_22C903F7C();
    v154 = v408;
    v155 = *(v408 + 16);
    v155(v99, v409, v152);

    v156 = sub_22C9063CC();
    v157 = sub_22C90AACC();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = v154;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      sub_22C37E870(v160);
      *v159 = 136315394;
      v161 = v157;
      v162 = sub_22C372274(&v410);
      v155(v162, v99, v152);
      sub_22C90A1AC();
      sub_22C50B42C();
      (*(v158 + 8))(v99, v152);
      v163 = sub_22C36CA88();
      sub_22C36F9F4(v163, v164, v165);
      sub_22C383BE4();

      *(v159 + 4) = v155;
      *(v159 + 12) = 2080;
      sub_22C557B40();
      v168 = sub_22C36F9F4(v166, v167, &v426);

      *(v159 + 14) = v168;
      _os_log_impl(&dword_22C366000, v156, v161, "Rendering type identifier %s with supplimentary UTTypes: %s", v159, 0x16u);
      swift_arrayDestroy();
      v169 = sub_22C36D66C();
      MEMORY[0x2318B9880](v169);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C37449C();
      v171 = *(v170 + 8);
      v171(v401, v405);
    }

    else
    {

      (*(v154 + 8))(v99, v152);
      sub_22C37449C();
      v171 = *(v172 + 8);
      v171(v153, v405);
    }

    sub_22C3759C4();
    sub_22C903F7C();
    v173 = sub_22C9063CC();
    v174 = sub_22C90AACC();
    if (os_log_type_enabled(v173, v174))
    {
      sub_22C36BED8();
      v175 = swift_slowAlloc();
      sub_22C370220();
      v176 = swift_slowAlloc();
      v419 = v171;
      sub_22C37E870(v176);
      *v175 = 136315138;
      swift_beginAccess();

      sub_22C36CA88();
      sub_22C557B40();
      v178 = v177;
      v180 = v179;

      v152 = v402;
      v181 = sub_22C36F9F4(v178, v180, &v426);
      v151 = v412;

      *(v175 + 4) = v181;
      _os_log_impl(&dword_22C366000, v173, v174, "Final list of UTTypes after extracting those from the type identifier: %s", v175, 0xCu);
      sub_22C36FF94(v171);
      v182 = sub_22C36D66C();
      MEMORY[0x2318B9880](v182);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C37449C();
      v183 = sub_22C3814BC();
      (v419)(v183);
    }

    else
    {

      sub_22C37449C();
      v184 = sub_22C3814BC();
      (v171)(v184);
      v151 = v412;
    }
  }

  v185 = swift_beginAccess();
  v186 = v424;
  MEMORY[0x28223BE20](v185);
  *(&v370 - 2) = v151;

  v187 = v420;

  sub_22C604438(MEMORY[0x277D84F98], sub_22C557A6C, (&v370 - 4), v186, v187);

  sub_22C37205C();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v188);
  v189 = sub_22C371530();
  v191 = v190(v189);
  v192 = v151;
  if (v191 == *MEMORY[0x277D72D50])
  {
    v193 = sub_22C371530();
    v194(v193);
    swift_projectBox();
    sub_22C374490();
    v195 = v391;
    sub_22C557F60();
    v196();
    v197 = (v151 + *(v400 + 28));
    v198 = v197[3];
    v199 = v197[4];
    sub_22C374168(v197, v198);
    sub_22C36D10C();
    v201 = v200(&v426, v195, v198, v199);
    MEMORY[0x28223BE20](v201);
    v202 = v397;
    *(&v370 - 2) = &v424;
    *(&v370 - 1) = v202;
    sub_22C54DBA0(sub_22C557B38, v403);
    sub_22C36DD28(&v426, &qword_27D9BAB08, &qword_22C91A110);
    v203 = sub_22C557FC0();
    v204(v203);
    v205 = sub_22C3720E8();
    sub_22C36DD28(v205, v206, v207);

    goto LABEL_33;
  }

  if (v191 == *MEMORY[0x277D72D30])
  {
    v208 = sub_22C371530();
    v209(v208);
    sub_22C3759C4();
    sub_22C903F7C();
    sub_22C38BAC0();
    v210 = v382;
    sub_22C557A88(v151, v382);
    v211 = sub_22C9063CC();
    sub_22C90AACC();
    v212 = sub_22C37E2D0();
    if (os_log_type_enabled(v212, v213))
    {
      sub_22C36BED8();
      v214 = swift_slowAlloc();
      sub_22C370220();
      v215 = swift_slowAlloc();
      sub_22C37E870(v215);
      *v214 = 136315138;
      sub_22C38BAC0();
      v216 = v381;
      sub_22C557A88(v210, v381);
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C371930();
      sub_22C557AE0(v210, v217);
      v218 = sub_22C36CA88();
      sub_22C36F9F4(v218, v219, v220);
      sub_22C383BE4();

      *(v214 + 4) = v216;
      sub_22C3839B4();
      _os_log_impl(v221, v222, v223, v224, v214, 0xCu);
      sub_22C36FF94(&v424);
      v225 = sub_22C36D66C();
      MEMORY[0x2318B9880](v225);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      sub_22C371930();
      sub_22C557AE0(v210, v239);
    }

    sub_22C36FB04();
    v240(v99, v405);
    v241 = sub_22C3720E8();
    sub_22C36DD28(v241, v242, v243);

    sub_22C388268();
    goto LABEL_74;
  }

  if (v191 != *MEMORY[0x277D72D28])
  {
    v244 = v379;
    sub_22C903F7C();
    sub_22C38BAC0();
    v245 = v380;
    sub_22C557A88(v151, v380);
    v246 = sub_22C9063CC();
    sub_22C90AACC();
    v247 = sub_22C37E2D0();
    if (os_log_type_enabled(v247, v248))
    {
      sub_22C36BED8();
      v249 = v244;
      v250 = swift_slowAlloc();
      sub_22C370220();
      v251 = swift_slowAlloc();
      sub_22C37E870(v251);
      *v250 = 136315138;
      sub_22C38BAC0();
      v252 = v381;
      sub_22C557A88(v245, v381);
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C371930();
      sub_22C557AE0(v245, v253);
      v254 = sub_22C36CA88();
      sub_22C36F9F4(v254, v255, v256);
      sub_22C383BE4();

      *(v250 + 4) = v252;
      sub_22C3839B4();
      _os_log_impl(v257, v258, v259, v260, v250, 0xCu);
      sub_22C36FF94(&v424);
      v261 = sub_22C36D66C();
      MEMORY[0x2318B9880](v261);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C36FB04();
      v263 = v249;
    }

    else
    {

      sub_22C371930();
      sub_22C557AE0(v245, v270);
      sub_22C36FB04();
      v263 = v244;
    }

    v262(v263, v405);
    v271 = sub_22C3720E8();
    sub_22C36DD28(v271, v272, v273);
    sub_22C388268();
    sub_22C36FB04();
    v274(v399, v152);

LABEL_33:

    goto LABEL_74;
  }

  v226 = sub_22C371530();
  v227(v226);
  v228 = v370[3];
  v229 = v370[4];
  v230 = v370[5];
  v418 = v370;

  sub_22C900AAC();
  sub_22C54CE60();

  sub_22C3AD9E8();
  v232 = v231;
  v233 = v400;
  if (qword_27D9BA698 != -1)
  {
    sub_22C37B648(&qword_27D9BA698);
  }

  sub_22C7B539C(v234, v232);
  sub_22C5E94F0();
  v236 = v235;

  v237 = v407;
  v417 = v186;
  if (v236)
  {
    v238 = v151;
    goto LABEL_70;
  }

  v264 = sub_22C3720E8();
  v265 = v376;
  sub_22C379DF8(v264, v376, v266, v267);
  v268 = v406;
  v269 = sub_22C370B74(v265, 1, v406);
  v416 = v229;
  if (v269 == 1)
  {
    sub_22C36DD28(v265, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_64;
  }

  v275 = v230;
  sub_22C5580C4();
  v276 = v265;
  v277 = v375;
  (*(v237 + 32))(v375, v276, v268);
  v278 = v277;
  v279 = 0;
  v419 = sub_22C57E808();
  v280 = *(v419 + 16);
  v281 = *MEMORY[0x277D73010];
  v282 = (v394 + 8);
  v283 = v393;
  while (1)
  {
    if (v280 == v279)
    {
      v279 = v280;
      v292 = v395;
      goto LABEL_56;
    }

    v284 = v394;
    sub_22C36BA94();
    v286 = v283;
    v287 = v387;
    (*(v284 + 16))(v286, v419 + v285 + *(v284 + 72) * v279, v387);
    v288 = *(v284 + 88);
    v278 = v287;
    v283 = v393;
    if (v288(v393, v278) == v281)
    {
      break;
    }

    (*v282)(v283, v278);
    sub_22C37022C(&v415);
    sub_22C36A748();
    sub_22C36C640(v289, v290, v291, v395);
    sub_22C36DD28(v278, &qword_27D9BDC50, &unk_22C91B470);
    ++v279;
  }

  (*(v394 + 96))(v283, v278);
  sub_22C3722F4();
  v278 = v386;
  v293 = v283;
  v292 = v395;
  v294(v386, v293, v395);
  sub_22C36BECC();
  sub_22C36C640(v295, v296, v297, v292);
  sub_22C36DD28(v278, &qword_27D9BDC50, &unk_22C91B470);
LABEL_56:
  v298 = *(v419 + 16);
  v192 = v412;
  v233 = v400;
  v237 = v373;
  if (v279 == v298)
  {
    v299 = 1;
    goto LABEL_61;
  }

  if (v279 >= v298)
  {
    __break(1u);
    goto LABEL_76;
  }

  sub_22C36BA94();
  v302 = v371;
  sub_22C57EBC4(v419 + v300 + *(v301 + 72) * v279, v371);
  sub_22C5580B8();
  sub_22C379DF8(v303, v304, v305, v306);
  sub_22C376738(v278);
  if (v321)
  {
LABEL_76:
    __break(1u);
    return;
  }

  sub_22C3722F4();
  sub_22C38399C();
  v307();
  sub_22C36DD28(v302, &qword_27D9BDC50, &unk_22C91B470);
  v299 = 0;
LABEL_61:
  sub_22C36C640(v237, v299, 1, v292);

  sub_22C376738(v237);
  if (!v321)
  {

    sub_22C3759C4();
    v238 = v192;
    v331 = v372;
    (*(v330 + 32))(v372, v237, v292);
    sub_22C374168((v238 + *(v233 + 36)), *(v238 + *(v233 + 36) + 24));
    sub_22C557F08();
    MEMORY[0x28223BE20](v332);
    sub_22C3759B4();
    v335 = sub_22C3864B4(v333, v334);
    sub_22C5580D8(v335, v336, v337, v338, v339);
    sub_22C36CAEC();
    sub_22C9099DC();
    (*(v275 + 8))(v331, v395);
    sub_22C36FB04();
    sub_22C558070();
    v340();
    goto LABEL_70;
  }

  sub_22C36FB04();
  sub_22C558070();
  v308();
  sub_22C36DD28(v237, &qword_27D9BDC50, &unk_22C91B470);
  v228 = v414;
LABEL_64:
  sub_22C908A4C();
  sub_22C374168(&v426, v428);
  sub_22C36D2E8();
  sub_22C38399C();
  sub_22C57D7C4(v309, v310, v311);
  v312 = v237;
  v313 = sub_22C909A7C();
  sub_22C376738(v237);
  if (v321)
  {
    sub_22C36FF94(&v426);
    sub_22C36DD28(v237, &qword_27D9BD8B8, &qword_22C919AB0);
    sub_22C37022C(&v399);
    sub_22C36A748();
    sub_22C36C640(v314, v315, v316, v395);
  }

  else
  {
    sub_22C36D2E8();
    sub_22C57E564();
    v312 = v237;
    sub_22C36BBA8();
    (*(v317 + 8))(v237, v313);
    sub_22C36BECC();
    sub_22C36C640(v318, v319, v320, v395);
    sub_22C36FF94(&v426);
    sub_22C376738(v237);
    if (!v321)
    {

      sub_22C385E64();
      v238 = v192;
      v341 = v370;
      sub_22C38399C();
      v342();
      sub_22C9099EC();
      sub_22C9099DC();
      (*(v228 + 8))(v341, v395);
      goto LABEL_70;
    }
  }

  sub_22C36DD28(v312, &qword_27D9BDC50, &unk_22C91B470);
  sub_22C374168((v192 + *(v233 + 36)), *(v192 + *(v233 + 36) + 24));
  sub_22C557F08();
  MEMORY[0x28223BE20](v322);
  sub_22C3759B4();
  v325 = sub_22C3864B4(v323, v324);
  sub_22C5580D8(v325, v326, v327, v328, v329);
  sub_22C36CAEC();
  v238 = v192;
LABEL_70:
  v343 = sub_22C90A28C();
  v345 = v344;

  v346 = sub_22C90A28C();
  v348 = v347;

  v426 = v343;
  v427 = v345;

  MEMORY[0x2318B7850](v346, v348);

  v349 = v426;
  v350 = v427;
  sub_22C379DF8(v238 + *(v233 + 40), &v426, &qword_27D9BD9C8, &qword_22C91A118);
  if (v428)
  {
    sub_22C374168(&v426, v428);
    sub_22C533B78(v422);
    v351 = v422[0];
    v419 = v422[1];
    v352 = v423[0];
    v353 = v423[1];
    sub_22C36FF94(&v426);
  }

  else
  {
    sub_22C36DD28(&v426, &qword_27D9BD9C8, &qword_22C91A118);
    v351 = 0;
    v419 = 0;
    v352 = 0;
    v353 = 0;
  }

  sub_22C36A83C();
  v354 = swift_allocObject();
  *(v354 + 16) = v349;
  *(v354 + 24) = v350;
  v355 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  sub_22C90963C();
  sub_22C36985C();
  v357 = v378;
  (*(v356 + 16))(v378 + v355, v397);
  v358 = v420;
  *v357 = v354;
  v357[1] = v358;
  swift_storeEnumTagMultiPayload();
  v359 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v360 = swift_allocBox();
  v362 = v361;
  v363 = *(v359 + 48);
  sub_22C557A88(v357, v361);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v364 = swift_allocBox();

  sub_22C486784();
  sub_22C557AE0(v357, type metadata accessor for PromptTreeIdentifier);
  v365 = sub_22C3720E8();
  sub_22C36DD28(v365, v366, v367);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v368 = swift_allocObject();
  *(v368 + 16) = v364 | 0x2000000000000000;
  *(v362 + v363) = v368;

  v369 = v403;
  *v403 = v360 | 0x4000000000000000;
  v369[1] = v351;
  v369[2] = v419;
  v369[3] = v352;
  v369[4] = v353;
  *(v369 + 40) = 0;
LABEL_74:
  sub_22C36CC48();
}

void sub_22C5550B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_22C90430C();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_22C9063DC();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22C90422C();
  *(v16 + 24) = v17;
  sub_22C456D48(0, 0, 0);
  v18 = sub_22C60595C(a2, *a1);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v19 = v18;
    if (sub_22C48819C(v18, v16))
    {

      sub_22C4546F8(v19);
    }

    else
    {
      sub_22C903F7C();
      sub_22C557A88(v40, v12);
      v20 = v41;
      v21 = v15;
      v22 = v42;
      (*(v41 + 16))(v45, a2, v42);
      v23 = sub_22C9063CC();
      LODWORD(v40) = sub_22C90AADC();
      if (os_log_type_enabled(v23, v40))
      {
        v24 = swift_slowAlloc();
        v39 = v21;
        v37 = v23;
        v25 = v24;
        v38 = swift_slowAlloc();
        v46 = v38;
        *v25 = 136315394;
        sub_22C557A88(v12, v10);
        v26 = sub_22C90A1AC();
        v28 = v27;
        sub_22C557AE0(v12, type metadata accessor for TypeIdentifierRenderer_v5_0);
        v29 = sub_22C36F9F4(v26, v28, &v46);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        sub_22C557DE4(&qword_27D9BDC58, MEMORY[0x277D85578], MEMORY[0x277D855A8]);
        v30 = v45;
        v31 = sub_22C90B47C();
        v33 = v32;
        (*(v20 + 8))(v30, v22);
        v34 = sub_22C36F9F4(v31, v33, &v46);

        *(v25 + 14) = v34;
        v35 = v37;
        _os_log_impl(&dword_22C366000, v37, v40, "%s Unexpected duplicate renderings for the same UTType: %s", v25, 0x16u);
        v36 = v38;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v36, -1, -1);
        MEMORY[0x2318B9880](v25, -1, -1);
        sub_22C4546F8(v19);

        (*(v43 + 8))(v39, v44);
      }

      else
      {
        sub_22C4546F8(v19);

        (*(v20 + 8))(v45, v22);
        sub_22C557AE0(v12, type metadata accessor for TypeIdentifierRenderer_v5_0);
        (*(v43 + 8))(v21, v44);
      }
    }
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v46 = *a1;
    sub_22C62DF0C();
    *a1 = v46;
  }
}

uint64_t sub_22C5555A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  sub_22C456C94(v8, v9, v10);
  result = sub_22C55562C(v7, a2, a3);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = v11;
  return result;
}

uint64_t sub_22C55562C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 8);
  v10 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  v11 = sub_22C90963C();
  (*(*(v11 - 8) + 16))(&v8[v10], a3, v11);
  *v8 = a1;
  *(v8 + 1) = v9;
  swift_storeEnumTagMultiPayload();
  v12 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  sub_22C557A88(v8, v14);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v17 = swift_allocBox();

  sub_22C486784();
  sub_22C557AE0(v8, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v18 = swift_allocObject();
  *(v18 + 16) = v17 | 0x2000000000000000;
  *(v15 + v16) = v18;
  return v13 | 0x4000000000000000;
}

void sub_22C555808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v201 = v21;
  v184 = v24;
  sub_22C369A48();
  v202 = sub_22C909A5C();
  sub_22C369824();
  v199 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v197 = v27;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v195 = v29;
  v196 = v28;
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  v194 = v30;
  v31 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v31);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C36D5B4();
  sub_22C3698F8(v33);
  v204 = sub_22C9096DC();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v39 = v38 - v37;
  v40 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v41 = sub_22C369914(v40);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v203 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  sub_22C3698F8(v47);
  v48 = sub_22C9099FC();
  v49 = sub_22C36A7A4(v48, &a18);
  v185 = v50;
  MEMORY[0x28223BE20](v49);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C3698F8(v52);
  v200 = sub_22C90947C();
  sub_22C369824();
  v187 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  sub_22C90077C();
  sub_22C369824();
  v192 = v57;
  v193 = v56;
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v60 = v59 - v58;
  sub_22C908A8C();
  sub_22C369824();
  v190 = v62;
  v191 = v61;
  MEMORY[0x28223BE20](v61);
  sub_22C369838();
  sub_22C387210();
  v63 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v64 = sub_22C369914(v63);
  MEMORY[0x28223BE20](v64);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  v67 = (v179 - v66);
  v68 = sub_22C90952C();
  sub_22C369824();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  sub_22C369ABC();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = v179 - v76;
  v198 = v21;
  sub_22C90994C();
  (*(v70 + 16))(v74, v77, v68);
  v78 = sub_22C36D29C();
  if (v79(v78) != *MEMORY[0x277D72D28])
  {
    v88 = *(v70 + 8);
    v89 = sub_22C36D29C();
    v88(v89);
    v90 = v194;
    sub_22C903F7C();
    v91 = sub_22C9063CC();
    v92 = sub_22C90AADC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_22C366000, v91, v92, "Unsupported EnumerationDefinition.identifier type found", v93, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v195 + 8))(v90, v196);
    v94 = v197;
    sub_22C90996C();
    sub_22C909A4C();
    v199[1](v94, v202);
    (v88)(v77, v68);
    goto LABEL_30;
  }

  v198 = v70;
  v80 = *(v70 + 96);
  v81 = v68;
  v80(v74, v68);
  v83 = *(*v74 + 16);
  v82 = *(*v74 + 24);
  v84 = *(*v74 + 32);
  v85 = *(*v74 + 40);
  v194 = v83;
  v195 = v84;
  v196 = v82;

  v197 = v85;

  v86 = sub_22C908B2C();
  MEMORY[0x2318B6010](v86);
  v199 = v67;
  v87 = v201;
  sub_22C908B1C();
  v95 = v200;
  (*(v192 + 8))(v60, v193);
  (*(v190 + 8))(v20, v191);
  v96 = v199;
  sub_22C36C640(v199, 0, 1, v95);
  sub_22C900AAC();
  sub_22C54CE60();

  sub_22C3AD9E8();
  v98 = v97;
  if (qword_27D9BA698 != -1)
  {
    sub_22C37B648(&qword_27D9BA698);
  }

  sub_22C7B539C(v99, v98);
  sub_22C5E94F0();
  v101 = v100;

  if (v101)
  {

    v102 = v81;
    goto LABEL_29;
  }

  v103 = v188;
  sub_22C379DF8(v96, v188, &qword_27D9BC3B0, &unk_22C912AF0);
  if (sub_22C370B74(v103, 1, v95) == 1)
  {
    sub_22C36DD28(v103, &qword_27D9BC3B0, &unk_22C912AF0);
    v102 = v81;
LABEL_25:
    sub_22C908A4C();
    v133 = v206;
    v134 = v207;
    sub_22C374168(v205, v206);
    sub_22C37205C();
    v135 = v134;
    v136 = v77;
    sub_22C57D7C4(v133, v135, v137);
    v138 = sub_22C909A7C();
    v139 = sub_22C36E638();
    v141 = sub_22C370B74(v139, v140, v138);
    v142 = v183;
    if (v141 == 1)
    {
      sub_22C36FF94(v205);
      sub_22C36DD28(v95, &qword_27D9BD8B8, &qword_22C919AB0);
      sub_22C36A748();
      sub_22C36C640(v143, v144, v145, v189);
    }

    else
    {
      v136 = v95;
      sub_22C57E564();
      sub_22C36BBA8();
      v146 = sub_22C371530();
      v147(v146);
      sub_22C36BECC();
      v148 = v189;
      sub_22C36C640(v149, v150, v151, v189);
      sub_22C36FF94(v205);
      if (sub_22C370B74(v142, 1, v148) != 1)
      {

        sub_22C385E64();
        v176 = v179[1];
        v177 = sub_22C38B418();
        v178(v177);
        sub_22C9099EC();
        sub_22C9099DC();
        (*(v87 + 8))(v176, v148);
        goto LABEL_29;
      }
    }

    sub_22C36DD28(v142, &qword_27D9BDC50, &unk_22C91B470);
    v152 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
    sub_22C374168((v87 + *(v152 + 20)), *(v87 + *(v152 + 20) + 24));
    sub_22C557F08();
    MEMORY[0x28223BE20](v153);
    sub_22C3759B4();
    v154 = v194;
    v155 = v196;
    *(v156 - 32) = v194;
    *(v156 - 24) = v155;
    v157 = v184;
    *(v156 - 16) = v184;
    *(v156 - 8) = v136;
    sub_22C4FB170(v154, v155, sub_22C430BE0, v158, v157);

LABEL_29:
    v159 = sub_22C90A28C();
    v161 = v160;

    v162 = sub_22C90A28C();
    v164 = v163;

    v205[0] = v159;
    v205[1] = v161;

    MEMORY[0x2318B7850](v162, v164);

    sub_22C36DD28(v96, &qword_27D9BC3B0, &unk_22C912AF0);
    (*(v198 + 8))(v77, v102);
LABEL_30:
    sub_22C36BA00();
    sub_22C36CC48();
    return;
  }

  v192 = v81;
  v193 = v77;
  sub_22C3722F4();
  v104(v186, v103, v95);
  v95 = 0;
  v202 = sub_22C57E808();
  v105 = *(v202 + 16);
  v106 = *MEMORY[0x277D73010];
  v107 = (v35 + 8);
  v108 = v189;
  while (1)
  {
    v109 = v204;
    if (v105 == v95)
    {
      v95 = v105;
      goto LABEL_18;
    }

    sub_22C36BA94();
    (*(v35 + 16))(v39, v202 + v110 + *(v35 + 72) * v95, v109);
    if ((*(v35 + 88))(v39, v109) == v106)
    {
      break;
    }

    (*v107)(v39, v109);
    v111 = v203;
    sub_22C36A748();
    sub_22C36C640(v112, v113, v114, v108);
    sub_22C36DD28(v111, &qword_27D9BDC50, &unk_22C91B470);
    ++v95;
  }

  (*(v35 + 96))(v39, v109);
  sub_22C3722F4();
  v115 = v203;
  v116(v203, v39, v108);
  sub_22C36BECC();
  sub_22C36C640(v117, v118, v119, v108);
  sub_22C36DD28(v115, &qword_27D9BDC50, &unk_22C91B470);
LABEL_18:
  v87 = v201;
  v120 = *(v202 + 16);
  v77 = v193;
  v96 = v199;
  if (v95 == v120)
  {
    v121 = 1;
    v122 = v189;
    v123 = v182;
LABEL_23:
    sub_22C36C640(v123, v121, 1, v122);

    if (sub_22C370B74(v123, 1, v122) != 1)
    {

      sub_22C3759C4();
      v165 = v181;
      v166 = sub_22C377B94();
      v167(v166);
      v168 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
      sub_22C374168((v87 + *(v168 + 20)), *(v87 + *(v168 + 20) + 24));
      sub_22C557F08();
      MEMORY[0x28223BE20](v169);
      sub_22C3759B4();
      v170 = v194;
      v171 = v196;
      *(v172 - 32) = v194;
      *(v172 - 24) = v171;
      v173 = v184;
      *(v172 - 16) = v184;
      *(v172 - 8) = v107;
      sub_22C4FB170(v170, v171, sub_22C557E9C, v174, v173);

      sub_22C9099DC();
      (*(v35 + 8))(v165, v122);
      sub_22C36FB04();
      v175(v186, v200);
      v102 = v192;
      goto LABEL_29;
    }

    sub_22C36FB04();
    v132(v186, v200);
    sub_22C36DD28(v123, &qword_27D9BDC50, &unk_22C91B470);
    v102 = v192;
    goto LABEL_25;
  }

  if (v95 >= v120)
  {
    __break(1u);
  }

  else
  {
    sub_22C36BA94();
    v125 = v180;
    sub_22C57EBC4(v202 + v124 + *(v35 + 72) * v95, v180);
    sub_22C5580B8();
    sub_22C379DF8(v126, v127, v128, v129);
    v122 = v189;
    if (sub_22C370B74(v35 + 8, 1, v189) != 1)
    {
      sub_22C3722F4();
      v123 = v182;
      v130 = sub_22C36BA00();
      v131(v130);
      sub_22C36DD28(v125, &qword_27D9BDC50, &unk_22C91B470);
      v121 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_22C556670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v162 = v20;
  v163 = v25;
  v164 = v26;
  v165 = v27;
  LODWORD(v161) = v28;
  v30 = v29;
  v31 = sub_22C9093BC();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C3698F8(v35);
  v36 = sub_22C90910C();
  v37 = sub_22C36A7A4(v36, &a14);
  v153 = v38;
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  sub_22C90963C();
  sub_22C369824();
  v159 = v41;
  v160 = v40;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v158 = v42;
  sub_22C36BA0C();
  v43 = sub_22C90919C();
  v44 = sub_22C36A7A4(v43, &a18);
  v156 = v45;
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v48 = v47 - v46;
  v49 = sub_22C90906C();
  v50 = sub_22C36A7A4(v49, &a16);
  v155 = v51;
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  type metadata accessor for DirectionalTypedValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v52);
  sub_22C369ABC();
  sub_22C37EBC0();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (&v149 - v55);
  MEMORY[0x28223BE20](v54);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v57);
  v59 = &v149 - v58;
  sub_22C36BEB4();
  v150 = v30;
  sub_22C557A88(v30, v59);
  v60 = (v33 + 88);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36BEB4();
    v157 = v59;
    sub_22C557A88(v59, v21);
    v73 = (*v60)(v21, v31);
    if (v73 == *MEMORY[0x277D72A38])
    {
      v74 = sub_22C557FF0();
      v75(v74);
      swift_projectBox();
      v76 = sub_22C557F88();
      v78 = *(v77 - 256);
      v79(v76);
      sub_22C378AB0(v162 + 56, v166);
      sub_22C375EAC(v166);
      v80 = sub_22C5580A4();
      v81(v80);
      v82 = sub_22C557F6C();
      v83(v82);
      v84 = sub_22C557FC0();
      v85(v84);
      (*(v30 + 8))(v48, v78);
      sub_22C36FF94(v166);
    }

    else if (v73 == *MEMORY[0x277D729E0])
    {
      v94 = sub_22C557FF0();
      v95(v94);
      swift_projectBox();
      sub_22C374490();
      sub_22C557F60();
      v96();
      v97 = sub_22C90905C();
      MEMORY[0x28223BE20](v97);
      sub_22C557EC8();
      v99 = sub_22C3B2C0C(sub_22C557284, v98, v97);

      sub_22C47F330(v99, v165);

      v100 = sub_22C372FA4();
      v101(v100);
    }

    else
    {
      if (v73 != *MEMORY[0x277D729F8])
      {
LABEL_17:
        v126 = *(v33 + 8);
        v126(v21, v31);
        sub_22C378AB0(v162 + 16, v170);
        v127 = v170[3];
        v128 = v170[4];
        sub_22C375EAC(v170);
        sub_22C36BEB4();
        sub_22C557A88(v150, v22);
        v129 = v151;
        (*(v33 + 32))(v151, v22, v31);
        v131 = v158;
        v130 = v159;
        v132 = v160;
        (*(v159 + 104))(v158, *MEMORY[0x277D72E08], v160);
        (*(v128 + 8))(v166, v129, v161 & 1, v131, v163, v164, v127, v128);
        (*(v130 + 8))(v131, v132);
        v126(v129, v31);
        v134 = v166[0];
        v133 = v166[1];
        v135 = v166[2];
        v136 = v167;
        v137 = v168;
        v138 = v169;
        if ((v169 & 1) == 0)
        {
          v139 = swift_allocObject();
          *(v139 + 16) = 2;
          *(v139 + 24) = 1;
          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          v140 = swift_allocObject();
          *(v140 + 16) = v134;
          *(v139 + 32) = v140;
          v141 = sub_22C38B418();
          sub_22C456C94(v141, v142, v143);

          sub_22C38399C();
          sub_22C456CE4(v144, v145, v146, v136, v137, 0);
          v134 = v139 | 0xA000000000000000;
        }

        v147 = v165;
        *v165 = v134;
        v147[1] = v133;
        v147[2] = v135;
        v147[3] = v136;
        v147[4] = v137;
        *(v147 + 40) = v138;
        sub_22C36FF94(v170);
        goto LABEL_20;
      }

      v114 = sub_22C557FF0();
      v115(v114);
      v116 = swift_projectBox();
      v117 = v153;
      v118 = v152;
      v119 = v154;
      (*(v153 + 16))(v152, v116, v154);
      sub_22C378AB0(v162 + 96, v166);
      v120 = v167;
      v121 = v168;
      sub_22C375EAC(v166);
      v123 = v158;
      v122 = v159;
      v124 = v160;
      (*(v159 + 104))(v158, *MEMORY[0x277D72E10], v160);
      sub_22C36D10C();
      v125(v118, v123, v163, v164, v120, v121);
      (*(v122 + 8))(v123, v124);
      (*(v117 + 8))(v118, v119);
      sub_22C36FF94(v166);
    }

LABEL_20:
    v62 = v157;
    goto LABEL_21;
  }

  sub_22C36BEB4();
  sub_22C557A88(v59, v56);
  v61 = (*v60)(v56, v31);
  v62 = v59;
  if (v61 != *MEMORY[0x277D72A38])
  {
    if (v61 == *MEMORY[0x277D729E0])
    {
      v86 = sub_22C557EB8();
      v87(v86);
      swift_projectBox();
      sub_22C374490();
      sub_22C557F60();
      v88();
      v89 = sub_22C90905C();
      MEMORY[0x28223BE20](v89);
      sub_22C557EC8();
      v91 = sub_22C3B2C0C(sub_22C557268, v90, v89);

      sub_22C47F330(v91, v165);

      v92 = sub_22C372FA4();
      v93(v92);
      goto LABEL_8;
    }

    if (v61 == *MEMORY[0x277D729F8])
    {
      v102 = sub_22C557EB8();
      v103(v102);
      v161 = *v56;
      swift_projectBox();
      sub_22C3759C4();
      v105 = v152;
      v106 = v154;
      (*(v104 + 16))(v152);
      sub_22C378AB0(v162 + 96, v166);
      v107 = v167;
      v108 = v168;
      sub_22C375EAC(v166);
      v109 = sub_22C5580A4();
      v110 = v160;
      v111(v109);
      sub_22C36D10C();
      v112(v105, v56, v163, v164, v107, v108);
      (*(v33 + 8))(v56, v110);
      v113 = v106;
      v62 = v59;
      (*(v31 + 8))(v105, v113);
      sub_22C36FF94(v166);
      goto LABEL_8;
    }

    v157 = v59;
    v21 = v56;
    goto LABEL_17;
  }

  v63 = sub_22C557EB8();
  v64(v63);
  swift_projectBox();
  v157 = v59;
  sub_22C557F88();
  sub_22C557F60();
  v65();
  sub_22C378AB0(v162 + 56, v166);
  sub_22C375EAC(v166);
  v67 = v158;
  v66 = v159;
  v68 = v160;
  (*(v159 + 104))(v158, *MEMORY[0x277D72E08], v160);
  v69 = sub_22C557F6C();
  v70(v69);
  (*(v66 + 8))(v67, v68);
  v71 = sub_22C36D29C();
  v72(v71);
  v62 = v157;
  sub_22C36FF94(v166);
LABEL_8:

LABEL_21:
  sub_22C37BA9C();
  sub_22C557AE0(v62, v148);
  sub_22C36CC48();
}

void sub_22C557314(uint64_t a1)
{
  sub_22C457168(319, qword_281430480, &protocol descriptor for ParameterDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
    if (v2 <= 0x3F)
    {
      sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
        if (v4 <= 0x3F)
        {
          sub_22C457168(319, qword_281430020, &protocol descriptor for AssistantToolSchemaDefinitionRendering);
          if (v5 <= 0x3F)
          {
            sub_22C908AEC();
            if (v6 <= 0x3F)
            {
              sub_22C457168(319, qword_281430CF8, &protocol descriptor for ToolDefinitionPromptRendering);
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

void sub_22C5574C0(uint64_t a1)
{
  sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
  if (v1 <= 0x3F)
  {
    sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, qword_281430480, &protocol descriptor for ParameterDefinitionPromptRendering);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
        if (v4 <= 0x3F)
        {
          sub_22C4BBD84(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22C557644(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TypeIdentifierRenderer_v2_0(319);
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, &qword_281430160, &protocol descriptor for EnumerationDefinitionPromptRendering);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, &qword_281430018, &protocol descriptor for PrimitiveTypeIdentifierPromptRendering);
        if (v4 <= 0x3F)
        {
          sub_22C457168(319, &qword_281433340, &protocol descriptor for UTTypePromptRendering);
          if (v5 <= 0x3F)
          {
            sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
            if (v6 <= 0x3F)
            {
              sub_22C4BBD84(319, &qword_281431C20, &qword_27D9BD998, &unk_22C919FD0);
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

uint64_t sub_22C5577E0(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C5578BC(uint64_t a1)
{
  sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
  if (v1 <= 0x3F)
  {
    sub_22C4BBD84(319, qword_281430748, &qword_27D9BD860, qword_22C919668);
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
      if (v3 <= 0x3F)
      {
        sub_22C908AEC();
        if (v4 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C5579D4()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C3725D8(*(v0 + 24));
  }

  sub_22C558048();
  v4 = sub_22C36ECCC(*(v1 + 36));

  return sub_22C370B74(v4, v5, v6);
}

uint64_t sub_22C557A88(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C557AE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C557B40()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90430C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v10 = v12;
    sub_22C36BA94();
    v14 = v1 + v13;
    v15 = *(v11 + 56);
    v16 = 1;
    do
    {
      v10(v8, v14, v2);
      if ((v16 & 1) == 0)
      {
        MEMORY[0x2318B7850](8236, 0xE200000000000000);
      }

      sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22C90F800;
      *(v17 + 56) = v2;
      v18 = sub_22C557D04((v17 + 32));
      v10(v18, v8, v2);
      sub_22C90AE9C();

      (*(v11 - 8))(v8, v2);
      v16 = 0;
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  MEMORY[0x2318B7850](93, 0xE100000000000000);
  sub_22C36CC48();
}

uint64_t *sub_22C557D04(uint64_t *a1)
{
  sub_22C3699C8();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_22C557D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C557DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C557E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C557F24(uint64_t result)
{
  *(v2 - 96) = *(result + 16);
  *(v2 - 120) = v1 + 88;
  *(v2 - 112) = v1 + 16;
  return result;
}

uint64_t sub_22C558048()
{

  return sub_22C908AEC();
}

uint64_t sub_22C5580D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C4FB170(v7, v6, v5, a4, a5);
}

uint64_t sub_22C5580F8(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

void *sub_22C558484(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v38 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v34 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v39 = *(a1 + 16);
  v35 = xmmword_22C90F800;
  v36 = a1;
  while (1)
  {
    if (v39 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    sub_22C55CEDC();
    v8 = sub_22C57ED3C();
    v16 = sub_22C633A1C();
    v17 = v7[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v9;
    if (v7[3] < v19)
    {
      sub_22C88D6C0(v19, 1, v10, v11, v12, v13, v14, v15, v34[0], v34[1], v35, SBYTE4(v35));
      v7 = v41;
      v21 = sub_22C633A1C();
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = v7[7];
      sub_22C55CF8C();
      v24 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v24 = v31;
        *(v23 + 8 * v16) = v31;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22C59161C();
        v24 = v32;
        *(v23 + 8 * v16) = v32;
      }

      *(v24 + 16) = v26 + 1;
      sub_22C55CF8C();
      a1 = v36;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      sub_22C55CF8C();
      v7[(v16 >> 6) + 8] |= 1 << v16;
      *(v7[6] + v16) = v8;
      *(v7[7] + 8 * v16) = v27;
      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v7[2] = v30;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C5587CC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - v5;
  v7 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v48 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v43 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v49 = *(a1 + 16);
  v44 = xmmword_22C90F800;
  v45 = a1;
  while (1)
  {
    if (v49 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v50 = *(v48 + 72);
    sub_22C55CEDC();
    sub_22C9036BC();
    v13 = v6;
    v14 = sub_22C908EAC();
    v15 = 1;
    if (sub_22C370B74(v6, 1, v14) != 1)
    {
      v16 = v46;
      sub_22C3A7214();
      v15 = sub_22C4AEF6C();
      v17 = v16;
      v13 = v6;
      (*(*(v14 - 8) + 8))(v17, v14);
    }

    sub_22C36DD28(v13, &qword_27D9BC1E8, &qword_22C9123B0);
    v25 = sub_22C628620(v15 & 1);
    v26 = v12[2];
    v27 = (v18 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_21;
    }

    v29 = v18;
    if (v12[3] < v28)
    {
      sub_22C88D50C(v28, 1, v19, v20, v21, v22, v23, v24, v43[0], v43[1], v44, SBYTE4(v44));
      v12 = v52;
      v30 = sub_22C628620(v15 & 1);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_23;
      }

      v25 = v30;
    }

    if (v29)
    {
      v32 = v12[7];
      sub_22C55CF8C();
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v33 = v40;
        *(v32 + 8 * v25) = v40;
      }

      v35 = *(v33 + 16);
      if (v35 >= *(v33 + 24) >> 1)
      {
        sub_22C59161C();
        v33 = v41;
        *(v32 + 8 * v25) = v41;
      }

      *(v33 + 16) = v35 + 1;
      sub_22C55CF8C();
      a1 = v45;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v36 = swift_allocObject();
      *(v36 + 16) = v44;
      sub_22C55CF8C();
      v12[(v25 >> 6) + 8] |= 1 << v25;
      *(v12[6] + v25) = v15 & 1;
      *(v12[7] + 8 * v25) = v36;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      v12[2] = v39;
    }

    ++v11;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDA00, qword_22C91B300);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C558C4C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - v3;
  v33 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v31[1] = *(v33 - 8);
  v5 = MEMORY[0x28223BE20](v33);
  v31[3] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31[2] = v31 - v7;
  v32 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    swift_getKeyPath();
    v34[0] = v18;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v33) == 1)
    {

      result = sub_22C36DD28(v4, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      sub_22C55CF8C();
      sub_22C55CF8C();
      v19 = v32;
      if (v32[3] <= v32[2])
      {
        sub_22C88D114();
        v19 = v35;
      }

      v20 = v19;
      sub_22C90B62C();
      sub_22C48A9B4(v34, v17);
      result = sub_22C90B66C();
      v21 = v20 + 8;
      v32 = v20;
      v22 = -1 << *(v20 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~v20[(v23 >> 6) + 8]) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = v21[v24];
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~v20[(v23 >> 6) + 8])) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = v32;
      *(v32[6] + 8 * v25) = v17;
      result = sub_22C55CF8C();
      ++v30[2];
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v32;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C559024(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v5_0(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C55908C@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  v30 = a2;
  v29 = a4;
  v5 = sub_22C908EAC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  sub_22C55CEDC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v14, v18, v5);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v19 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22C90F800;
    v26 = v14;
    v27 = v7;
    v22 = *(v7 + 16);
    v28 = v5;
    v22(v11, v14, v5);
    sub_22C9036CC();
    sub_22C9037DC();
    v31 = MEMORY[0x277D84F90];
    v25 = a3;
    v24[1] = sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    sub_22C90AE4C();
    *(v21 + v20 + v19[7]) = 0;
    sub_22C5593C8(v30, v25, v29);
    (*(v27 + 8))(v26, v28);
    swift_setDeallocating();
    return sub_22C590028();
  }

  else
  {
    sub_22C5593C8(v30, a3, v29);
  }
}

uint64_t sub_22C5593C8@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t **a3@<X8>)
{
  v205 = a2;
  v204 = a1;
  v199 = a3;
  v240 = sub_22C908D6C();
  v4 = *(v240 - 8);
  v5 = MEMORY[0x28223BE20](v240 - 8);
  v210 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v242 = &v192 - v7;
  v8 = sub_22C9036EC();
  v213 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v224 = &v192 - v12;
  v227 = sub_22C908EAC();
  v241 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v209 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v208 = &v192 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v247 = &v192 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v228 = &v192 - v22;
  MEMORY[0x28223BE20](v21);
  v222 = &v192 - v23;
  v253 = sub_22C9099FC();
  v239 = *(v253 - 8);
  v24 = MEMORY[0x28223BE20](v253);
  v246 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v214 = &v192 - v26;
  v27 = sub_22C3A5908(&qword_27D9BDC80, &qword_22C91B2A8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v230 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v221 = &v192 - v30;
  v234 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v31 = *(v234 - 8);
  v32 = MEMORY[0x28223BE20](v234);
  v229 = &v192 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v233 = &v192 - v34;
  v235 = type metadata accessor for RenderableTool(0);
  v232 = *(v235 - 8);
  v35 = MEMORY[0x28223BE20](v235);
  v202 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v192 - v37;

  v40 = sub_22C558484(v39);
  if (v40[2] && (sub_22C633A1C(), (v41 & 1) != 0))
  {
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = sub_22C5587CC(v42);
  v244 = v3;
  v245 = v43;
  v44 = MEMORY[0x277D84F90];
  if (v40[2])
  {
    v45 = sub_22C633A1C();
    if (v46)
    {
      v47 = *(v40[7] + 8 * v45);
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v200 = v11;
  v48 = *(v47 + 16);
  v236 = v8;
  v203 = v40;
  v223 = v31;
  if (v48)
  {
    v250 = v44;
    sub_22C3B696C(0, v48, 0);
    v49 = v250;
    v50 = *(v31 + 80);
    v243 = v47;
    v51 = v47 + ((v50 + 32) & ~v50);
    *&v248 = *(v31 + 72);
    v52 = (v213 + 32);
    do
    {
      v53 = v233;
      sub_22C55CEDC();
      v54 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v52)(v38, v53, v8);
      v55 = *(v234 + 24);
      v56 = sub_22C9037DC();
      (*(*(v56 - 8) + 32))(&v38[v54], &v53[v55], v56);
      swift_storeEnumTagMultiPayload();
      v250 = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22C3B696C(v57 > 1, v58 + 1, 1);
        v49 = v250;
      }

      *(v49 + 16) = v58 + 1;
      sub_22C55CF8C();
      v51 += v248;
      --v48;
      v8 = v236;
    }

    while (v48);

    v40 = v203;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v59);
  v60 = v206;
  v61 = v204;
  *(&v192 - 4) = v206;
  *(&v192 - 3) = v61;
  v62 = v205;
  *(&v192 - 2) = v205;
  v63 = v244;
  sub_22C792A18(sub_22C55CE90, (&v192 - 6), v49);
  if (v63)
  {
LABEL_68:
  }

  v197 = v64;

  MEMORY[0x28223BE20](v65);
  *(&v192 - 4) = v245;
  *(&v192 - 3) = v60;
  *(&v192 - 2) = v61;
  *(&v192 - 1) = v62;
  sub_22C792A44();
  v198 = 0;
  v192 = v66;

  if (v40[2])
  {
    v67 = sub_22C633A1C();
    v69 = v239;
    v68 = v240;
    v70 = v228;
    v71 = v230;
    if (v72)
    {
      v73 = *(v40[7] + 8 * v67);
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v76 = v253;
    v74 = v241;
    v75 = v70;
  }

  else
  {
    v73 = MEMORY[0x277D84F90];
    v68 = v240;
    v74 = v241;
    v75 = v228;
    v76 = v253;
    v71 = v230;
    v69 = v239;
  }

  v77 = 0;
  v220 = *(v73 + 16);
  v225 = (v213 + 16);
  v219 = (v213 + 88);
  v195 = (v213 + 8);
  v215 = (v213 + 96);
  v212 = (v74 + 4);
  v243 = (v69 + 4);
  *&v248 = v4 + 16;
  v245 = v4 + 88;
  v218 = *MEMORY[0x277D1ECE0];
  v241 = (v4 + 8);
  v239 = (v4 + 96);
  v217 = *MEMORY[0x277D1ECE8];
  v201 = *MEMORY[0x277D1ECD8];
  v194 = *MEMORY[0x277D1ECD0];
  v193 = *MEMORY[0x277D1ECF8];
  v238 = 0x800000022C932110;
  v237 = (v69 + 1);
  v211 = (v74 + 1);
  v196 = MEMORY[0x277D84F90];
  v207 = (v213 + 104);
  LODWORD(v244) = *MEMORY[0x277D72148];
  v78 = v224;
  v216 = v73;
  while (1)
  {
    if (v77 == v220)
    {
      v75 = v223;

      MEMORY[0x28223BE20](v112);
      v113 = v204;
      *(&v192 - 4) = v206;
      *(&v192 - 3) = v113;
      *(&v192 - 2) = v205;
      v114 = v198;
      sub_22C792A18(sub_22C55CFE4, (&v192 - 6), v196);
      if (v114)
      {

        v245 = v197;
        goto LABEL_68;
      }

      v117 = v115;

      v250 = v117;
      sub_22C3CD560(v197);
      sub_22C3CD560(v192);
      v245 = sub_22C7F4DE0(v250);
      v119 = v118;
      v68 = 0;
      v78 = *(v118 + 16);
      v71 = MEMORY[0x277D84F90];
      v253 = v118;
      while (v78 != v68)
      {
        if (v68 >= *(v119 + 16))
        {
          goto LABEL_126;
        }

        v120 = *(type metadata accessor for _PromptToolData(0) - 8);
        v61 = *(v119 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v68 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591324();
          v71 = v122;
        }

        v121 = *(v71 + 16);
        if (v121 >= *(v71 + 24) >> 1)
        {
          sub_22C591324();
          v71 = v123;
        }

        *(v71 + 16) = v121 + 1;
        *(v71 + 8 * v121 + 32) = v61;
        ++v68;
        v119 = v253;
      }

      v124 = v245;

      v125 = sub_22C558120(v124, v119);
      v244 = sub_22C558C4C(v125);
      v247 = 0;

      v126 = v203;
      v127 = MEMORY[0x277D84F90];
      if (v203[2])
      {
        v128 = sub_22C633A1C();
        v129 = v236;
        v78 = v200;
        v130 = v75;
        if (v131)
        {
          v127 = *(v126[7] + 8 * v128);
        }
      }

      else
      {
        v129 = v236;
        v78 = v200;
        v130 = v75;
      }

      v132 = *(v127 + 2);
      if (v132)
      {
        v250 = MEMORY[0x277D84F90];
        sub_22C3B657C(0, v132, 0);
        v133 = v250;
        v134 = *(v130 + 80);
        v246 = v127;
        v135 = &v127[(v134 + 32) & ~v134];
        *&v248 = *(v130 + 72);
        do
        {
          v136 = v233;
          sub_22C55CEDC();
          (*v225)(v78, v136, v129);
          sub_22C55CF34(v136, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          v250 = v133;
          v138 = *(v133 + 16);
          v137 = *(v133 + 24);
          if (v138 >= v137 >> 1)
          {
            sub_22C3B657C(v137 > 1, v138 + 1, 1);
            v133 = v250;
          }

          *(v133 + 16) = v138 + 1;
          (*(v213 + 32))(v133 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v138, v78, v129);
          v135 += v248;
          --v132;
        }

        while (v132);

        v113 = v204;
      }

      else
      {

        v133 = MEMORY[0x277D84F90];
      }

      v68 = &v192;
      MEMORY[0x28223BE20](v139);
      v140 = v206;
      *(&v192 - 4) = v206;
      *(&v192 - 3) = v113;
      *(&v192 - 2) = v205;
      sub_22C566700(v133, &unk_283FAF268, v140, v113, sub_22C55CED0, (&v192 - 6));
      v142 = v141;

      v143 = *(v142 + 16);
      if (v143)
      {
        v246 = v71;
        v250 = MEMORY[0x277D84F90];
        sub_22C3B63D4(0, v143, 0);
        v68 = 32;
        v144 = v250;
        v248 = xmmword_22C919C60;
        do
        {
          v145 = v142;
          v146 = *(v142 + v68);
          v147 = swift_allocObject();
          *(v147 + 16) = v248;
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v148 = swift_allocObject();
          *(v148 + 16) = v146;
          *(v147 + 32) = v148;
          v149 = swift_allocObject();
          v150 = swift_allocObject();
          *(v150 + 16) = v147 | 0x8000000000000000;
          *(v149 + 16) = v150;
          v250 = v144;
          v152 = *(v144 + 16);
          v151 = *(v144 + 24);
          v78 = v152 + 1;

          if (v152 >= v151 >> 1)
          {
            sub_22C3B63D4(v151 > 1, v152 + 1, 1);
            v144 = v250;
          }

          *(v144 + 16) = v78;
          *(v144 + 8 * v152 + 32) = v149 | 0x6000000000000000;
          v68 += 8;
          --v143;
          v142 = v145;
        }

        while (v143);

        v71 = v246;
      }

      else
      {

        v144 = MEMORY[0x277D84F90];
      }

      v250 = v144;
      sub_22C3CD124(v71);
      v75 = sub_22C47D738(2570, 0xE200000000000000, v250);

      v61 = MEMORY[0x277D84F90];
      v250 = MEMORY[0x277D84F90];
      v153 = v247;
      sub_22C496A94();
      v198 = v153;
      if (!v153)
      {
        v155 = v154;

        v156 = swift_allocObject();
        v157 = v156;
        v158 = v253;
        if ((v155 & 1) == 0)
        {
          *(v156 + 16) = 0x6F68747970606060;
          *(v156 + 24) = 0xEA00000000000A6ELL;
          v68 = v156;
          sub_22C591324();
          v161 = v160;
          v71 = *(v160 + 16);
          v162 = *(v160 + 24) >> 1;
          v78 = v71 + 1;
          if (v162 > v71)
          {
            goto LABEL_99;
          }

          goto LABEL_130;
        }

        v250 = 0;
        v251 = 0xE000000000000000;
        *(v156 + 16) = sub_22C90A49C();
        *(v157 + 24) = v159;
        v243 = v157;
        goto LABEL_104;
      }

      goto LABEL_133;
    }

    if (v77 >= *(v73 + 16))
    {
      break;
    }

    v231 = v77;
    v79 = v229;
    sub_22C55CEDC();
    v61 = v236;
    (*v225)(v78, v79, v236);
    v80 = (*v219)(v78, v61);
    if (v80 == v218)
    {
      goto LABEL_28;
    }

    if (v80 == v217)
    {
      (*v215)(v78, v236);
      (*v243)(v75, v78, v76);
      v89 = 0;
      goto LABEL_56;
    }

    if (v80 == v201)
    {
LABEL_28:
      (*v215)(v78, v236);
      (*v212)(v226, v78, v227);
      v71 = sub_22C908DEC();
      v81 = 0;
      v75 = *(v71 + 16);
      v82 = v242;
      while (v75 != v81)
      {
        (*(v4 + 16))(v82, v71 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v81, v68);
        v83 = (*(v4 + 88))(v82, v68);
        if (v83 == v244)
        {
          (*v239)(v82, v68);
          v78 = *v243;
          (*v243)(v246, v82, v253);
          if (sub_22C9099DC() == 0xD00000000000001CLL && v238 == v84)
          {
          }

          else
          {
            v86 = sub_22C90B4FC();

            if ((v86 & 1) == 0)
            {
              v106 = v247;
              v107 = v253;
              (v78)(v247, v246, v253);
              sub_22C36C640(v106, 0, 1, v107);
              sub_22C36DD28(v106, &qword_27D9BDC50, &unk_22C91B470);
              v68 = v240;
              goto LABEL_42;
            }
          }

          v87 = v253;
          (*v237)(v246, v253);
          v68 = v240;
          v82 = v242;
        }

        else
        {
          (*v241)(v82, v68);
          v87 = v253;
        }

        v78 = v247;
        sub_22C36C640(v247, 1, 1, v87);
        sub_22C36DD28(v78, &qword_27D9BDC50, &unk_22C91B470);
        ++v81;
      }

      v81 = v75;
LABEL_42:
      v88 = *(v71 + 16);
      if (v81 == v88)
      {

        (*v211)(v226, v227);
        v89 = 1;
        v75 = v228;
        v76 = v253;
        v71 = v230;
      }

      else
      {
        if (v81 >= v88)
        {
          goto LABEL_127;
        }

        v90 = v210;
        (*(v4 + 16))(v210, v71 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v81, v68);
        v91 = v208;
        sub_22C5791C0();
        (*(v4 + 8))(v90, v68);
        v92 = v209;
        sub_22C3A7214();
        v93 = v253;
        if (sub_22C370B74(v92, 1, v253) == 1)
        {
          __break(1u);
LABEL_132:
          sub_22C90B4EC();
          __break(1u);
LABEL_133:

          __break(1u);
          return result;
        }

        v75 = v228;
        (*v243)(v228, v92, v93);
        sub_22C36DD28(v91, &qword_27D9BDC50, &unk_22C91B470);
        (*v211)(v226, v227);

        v89 = 0;
        v76 = v93;
        v71 = v230;
      }
    }

    else
    {
      if (v80 != v194 && v80 != v193)
      {
        goto LABEL_132;
      }

      (*v195)(v78, v236);
      v89 = 1;
    }

LABEL_56:
    sub_22C36C640(v75, v89, 1, v76);
    v95 = v222;
    sub_22C407C2C();
    if (sub_22C370B74(v95, 1, v76) == 1)
    {
      sub_22C55CF34(v229, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      sub_22C36DD28(v95, &qword_27D9BDC50, &unk_22C91B470);
      v96 = 1;
      v61 = v235;
    }

    else
    {
      v97 = *v243;
      v98 = v214;
      (*v243)(v214, v95, v76);
      v99 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      v97(v230, v98, v253);
      (*v207)(v230, v217, v236);
      v100 = *(v234 + 24);
      v101 = sub_22C9037DC();
      v102 = &v230[v99];
      v76 = v253;
      v103 = v229;
      v104 = v229 + v100;
      v71 = v230;
      (*(*(v101 - 8) + 16))(v102, v104, v101);
      sub_22C55CF34(v103, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v61 = v235;
      swift_storeEnumTagMultiPayload();
      v96 = 0;
    }

    ++v231;
    sub_22C36C640(v71, v96, 1, v61);
    v105 = v221;
    sub_22C407C2C();
    if (sub_22C370B74(v105, 1, v61) == 1)
    {
      sub_22C36DD28(v105, &qword_27D9BDC80, &qword_22C91B2A8);
      v73 = v216;
      v77 = v231;
      v75 = v228;
      v78 = v224;
    }

    else
    {
      sub_22C55CF8C();
      v108 = v196;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591DDC();
        v108 = v110;
      }

      v73 = v216;
      v75 = v228;
      v78 = v224;
      v196 = v108;
      v109 = *(v108 + 16);
      if (v109 >= *(v108 + 24) >> 1)
      {
        sub_22C591DDC();
        v196 = v111;
      }

      *(v196 + 16) = v109 + 1;
      sub_22C55CF8C();
      v76 = v253;
      v71 = v230;
      v77 = v231;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_130:
    sub_22C591324();
    v161 = v189;
    v162 = *(v189 + 24) >> 1;
LABEL_99:
    *(v161 + 16) = v78;
    *(v161 + 8 * v71 + 32) = v68;
    v163 = v71 + 2;
    if (v162 < (v71 + 2))
    {
      sub_22C591324();
      v161 = v190;
    }

    *(v161 + 16) = v163;
    *(v161 + 8 * v78 + 32) = v75;
    v78 = swift_allocObject();
    *(v78 + 16) = 1616928778;
    *(v78 + 24) = 0xE400000000000000;
    v164 = *(v161 + 24);

    if ((v71 + 3) > (v164 >> 1))
    {
      sub_22C591324();
      v161 = v191;
    }

    *(v161 + 16) = v71 + 3;
    *(v161 + 8 * v163 + 32) = v78;
    v68 = sub_22C3DB9B0(v161);

    v165 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v166 = swift_allocObject();
    *(v166 + 16) = v68;
    *(v165 + 16) = v166;
    v243 = (v165 | 0x6000000000000000);
    v158 = v253;
LABEL_104:
    v250 = v61;
    v71 = *(v158 + 16);
    if (v71)
    {
      v61 = 0;
      v68 = *(type metadata accessor for _PromptToolData(0) - 8);
      v78 = v158 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + 24;
      while (v61 < *(v158 + 16))
      {
        ++v61;

        sub_22C3CD230();
        if (v71 == v61)
        {
          v61 = v250;
          goto LABEL_109;
        }
      }

      goto LABEL_128;
    }

LABEL_109:
    type metadata accessor for ToolRenderer_v5_0(0);
    sub_22C3A7214();
    v241 = v75;
    v242 = v61;
    if (!v252)
    {
      sub_22C36DD28(&v250, &qword_27D9BD9F8, &unk_22C91A240);
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      goto LABEL_124;
    }

    sub_22C374168(&v250, v252);
    *&v248 = *(v158 + 16);
    if (!v248)
    {
      break;
    }

    v167 = v158;
    v168 = type metadata accessor for _PromptToolData(0);
    v169 = 0;
    v246 = *(v168 - 8);
    v247 = v168;
    v71 = v167 + ((v246[80] + 32) & ~v246[80]);
    v75 = MEMORY[0x277D84F90];
    while (v169 < *(v253 + 16))
    {
      v170 = (v71 + *(v246 + 9) * v169 + *(v247 + 36));
      v68 = v170[1];
      if (v68)
      {
        v61 = *v170;
        v171 = v170[2];
        v78 = v170[3];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591018(0, *(v75 + 16) + 1, 1, v75);
          v75 = v175;
        }

        v173 = *(v75 + 16);
        v172 = *(v75 + 24);
        if (v173 >= v172 >> 1)
        {
          sub_22C591018(v172 > 1, v173 + 1, 1, v75);
          v75 = v176;
        }

        *(v75 + 16) = v173 + 1;
        v174 = (v75 + 32 * v173);
        v174[4] = v61;
        v174[5] = v68;
        v174[6] = v171;
        v174[7] = v78;
      }

      if (v248 == ++v169)
      {
        goto LABEL_123;
      }
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_123:
  sub_22C531C50(v75, v249);

  v177 = v249[0];
  v178 = v249[1];
  v179 = v249[2];
  v180 = v249[3];
  sub_22C36FF94(&v250);
LABEL_124:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
  v181 = sub_22C909F0C();
  v182 = swift_allocObject();
  v250 = 0;
  v251 = 0xE000000000000000;
  sub_22C456C94(v177, v178, v179);
  v183 = sub_22C90A49C();
  v185 = v184;

  sub_22C456D48(v177, v178, v179);

  *(v182 + 16) = v183;
  *(v182 + 24) = v185;
  v186 = v199;
  v187 = v244;
  *v199 = v243;
  v186[1] = v181;
  v188 = v242;
  v186[2] = v187;
  v186[3] = v188;
  v186[4] = v177;
  v186[5] = v178;
  v186[6] = v179;
  v186[7] = v180;
  v186[8] = v182;
  return result;
}