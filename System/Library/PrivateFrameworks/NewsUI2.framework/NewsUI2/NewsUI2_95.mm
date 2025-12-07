void sub_2191661A0(uint64_t a1, char *a2, void *a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v60 = a6;
  v59 = a5;
  v58 = a2;
  v9 = *a4;
  v55 = a4[1];
  v56 = v9;
  v57 = *(a4 + 4);
  v10 = *(a4 + 40);
  sub_21916B970(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_219BE92E4();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - v17;
  v18 = sub_219BE9EC4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v49 = v14;
  v50 = v21;
  v51 = v19;
  v22 = a3[6];
  v23 = a3[8];
  v24 = a3[5] >> 62;
  if (!v24)
  {
    goto LABEL_5;
  }

  if (v24 == 1)
  {
    v22 = a3[2];
LABEL_5:
    v25 = v10 & 1;
    LOBYTE(v68[0]) = v25;

    v26 = 0;
    goto LABEL_7;
  }

  a3 = a3[7];
  v25 = v10 & 1;
  LOBYTE(v68[0]) = v25;

  v26 = 0x8000000000000000;
LABEL_7:
  v64 = v55;
  v63 = v56;
  *&v65 = v57;
  *(&v65 + 1) = v26 | v25;
  *&v66 = v22;
  *(&v66 + 1) = a3;
  v67 = v23;
  sub_21916B730(a4, v62);
  v27 = sub_2191651D0(v58, &v63, v59, v60, v61);

  v68[1] = v64;
  v68[2] = v65;
  v68[3] = v66;
  v69 = v67;
  v68[0] = v63;
  sub_218AAFFC4(v68);
  if (v27)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v61 = *(Strong + 56);

      sub_218AB0628(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v30 = v29;
      v31 = *(v29 + 48);
      LODWORD(v56) = *MEMORY[0x277D6E4D0];
      v32 = v56;
      v33 = sub_219BE92A4();
      v34 = *(v33 - 8);
      *&v55 = *(v34 + 104);
      v57 = v34 + 104;
      v59 = v27;
      v35 = v52;
      (v55)(v52, v32, v33);
      v36 = *MEMORY[0x277D6E500];
      v37 = sub_219BE92B4();
      v48 = *(*(v37 - 8) + 104);
      v58 = v13;
      v48(&v35[v31], v36, v37);
      v38 = *MEMORY[0x277D6E4F0];
      v60 = v18;
      v39 = *(v54 + 104);
      v40 = v49;
      v39(v35, v38, v49);
      v41 = *(v30 + 48);
      v42 = v53;
      (v55)(v53, v56, v33);
      v48(&v42[v41], *MEMORY[0x277D6E508], v37);
      v39(v42, v38, v40);
      v43 = v50;
      sub_219BE9EB4();
      v44 = sub_219BE94F4();
      v45 = v58;
      (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
      v46 = v59;
      sub_21909BA64(v59, v43, v45);

      sub_2187454CC(v45, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_21916B970);
      (*(v51 + 8))(v43, v60);
    }

    else
    {
    }
  }
}

uint64_t sub_219166814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_21916B970(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_219BDDDA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v28);
  sub_2186C709C(0, &qword_280EE37C8, MEMORY[0x277D6EC48], 1);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    sub_219BDDD84();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v16 + 8))(v18, v15);
      return sub_2187454CC(v7, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_21916B970);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = sub_218CF8A44(v27, v11);

        if (v22)
        {
          [v22 setModalPresentationStyle_];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v24 = Strong;
              v25 = sub_219BF6534();

              [v25 presentViewController:v22 animated:1 completion:0];
            }

            else
            {
            }
          }
        }
      }

      (*(v9 + 8))(v11, v8);
      return (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    v20(v14, 1, 1, v15);
    return sub_2187454CC(v14, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88], sub_21916B970);
  }
}

uint64_t sub_219166CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v93 = a4;
  v84 = a3;
  v88 = sub_219BF2624();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v80 - v12;
  sub_21916B604(0, &unk_27CC16B98, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v80 - v16;
  v17 = sub_219BF1584();
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v80 - v20;
  v21 = sub_219BF2634();
  v94 = *(v21 - 8);
  v95 = v21;
  MEMORY[0x28223BE20](v21);
  v80 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  MEMORY[0x28223BE20](v26);
  v87 = &v80 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v31 = sub_219BF1D74();
  v96 = *(v31 - 8);
  v97 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v80 - v35;
  sub_21916B970(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v43 = (&v80 - v42);
  if ([*(v6 + 168) useOfflineMode])
  {
    if (a5)
    {
      *v43 = v93;
      v43[1] = a5;
      v44 = *MEMORY[0x277D33B80];
      v45 = sub_219BF2CB4();
      (*(*(v45 - 8) + 104))(v43, v44, v45);
    }

    else
    {
      *v43 = a1;
      v43[1] = a2;
      v53 = *MEMORY[0x277D33B80];
      v45 = sub_219BF2CB4();
      (*(*(v45 - 8) + 104))(v43, v53, v45);
    }

    v54 = v94;
    v55 = v96;
    sub_219BF2CB4();
    (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
    (*(v55 + 104))(v36, *MEMORY[0x277D335E8], v97);

    sub_2189A4BB8(v43, v6, v30);
    __swift_project_boxed_opaque_existential_1((v6 + 528), *(v6 + 552));
    if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
    {
      (*(v54 + 8))(v30, v95);
      (*(v55 + 8))(v36, v97);
      v50 = MEMORY[0x277D33BC8];
      v51 = MEMORY[0x277D83D88];
      v52 = v43;
      goto LABEL_13;
    }

    v56 = v89;
    sub_219BF1B74();
    v58 = v91;
    v57 = v92;
    v59 = (*(v91 + 48))(v56, 1, v92);
    v60 = v95;
    if (v59 == 1)
    {
      (*(v54 + 8))(v30, v95);
      (*(v55 + 8))(v36, v97);
      sub_2187454CC(v43, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
      sub_21916B66C(v56);
    }

    else
    {
      (*(v58 + 32))(v90, v56, v57);
      v64 = v87;
      (*(v54 + 16))(v87, v30, v60);
      if ((*(v54 + 88))(v64, v60) == *MEMORY[0x277D33980])
      {
        (*(v54 + 96))(v64, v95);
        v65 = v85;
        v66 = v81;
        (*(v85 + 32))(v81, v64, v88);
        v67 = *(v6 + 152);
        v94 = *(v6 + 160);
        __swift_project_boxed_opaque_existential_1((v6 + 128), v67);
        v68 = v90;
        v69 = sub_219BF4984();
        sub_2189A46C0(v84, v69);

        (*(v65 + 8))(v66, v88);
        (*(v91 + 8))(v68, v92);
        (*(v54 + 8))(v30, v95);
        (*(v96 + 8))(v36, v97);
        sub_2187454CC(v43, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
      }

      else
      {
        (*(v58 + 8))(v90, v57);
        v77 = *(v54 + 8);
        v78 = v95;
        v77(v30, v95);
        (*(v55 + 8))(v36, v97);
        sub_2187454CC(v43, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
        v77(v64, v78);
      }
    }
  }

  else
  {
    v46 = *(v6 + 88);
    ObjectType = swift_getObjectType();
    if (sub_21987B00C(a1, a2, ObjectType, v46))
    {
      return 0;
    }

    v49 = sub_219BF2CB4();
    (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
    (*(v96 + 104))(v33, *MEMORY[0x277D335E8], v97);
    sub_2189A4BB8(v39, v6, v25);
    __swift_project_boxed_opaque_existential_1((v6 + 528), *(v6 + 552));
    if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
    {
      (*(v94 + 8))(v25, v95);
      (*(v96 + 8))(v33, v97);
      v50 = MEMORY[0x277D33BC8];
      v51 = MEMORY[0x277D83D88];
      v52 = v39;
LABEL_13:
      sub_2187454CC(v52, &qword_280E902A0, v50, v51, sub_21916B970);
      return 0;
    }

    v61 = v86;
    sub_219BF1B74();
    v63 = v91;
    v62 = v92;
    if ((*(v91 + 48))(v61, 1, v92) == 1)
    {
      (*(v94 + 8))(v25, v95);
      (*(v96 + 8))(v33, v97);
      sub_2187454CC(v39, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
      sub_21916B66C(v61);
    }

    else
    {
      v70 = v82;
      (*(v63 + 32))(v82, v61, v62);
      v71 = v94;
      v72 = v95;
      v73 = v80;
      (*(v94 + 16))(v80, v25, v95);
      if ((*(v71 + 88))(v73, v72) == *MEMORY[0x277D33980])
      {
        (*(v71 + 96))(v73, v72);
        v74 = v85;
        (*(v85 + 32))(v83, v73, v88);
        v75 = *(v6 + 152);
        v93 = *(v6 + 160);
        __swift_project_boxed_opaque_existential_1((v6 + 128), v75);
        v76 = sub_219BF4984();
        sub_2189A46C0(v84, v76);

        (*(v74 + 8))(v83, v88);
        (*(v63 + 8))(v82, v92);
        (*(v71 + 8))(v25, v95);
        (*(v96 + 8))(v33, v97);
        sub_2187454CC(v39, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
      }

      else
      {
        (*(v63 + 8))(v70, v62);
        v79 = *(v71 + 8);
        v79(v25, v72);
        (*(v96 + 8))(v33, v97);
        sub_2187454CC(v39, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_21916B970);
        v79(v73, v72);
      }
    }
  }

  return 1;
}

id sub_219167ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a6;
  v130 = a5;
  v121 = a4;
  v118 = a3;
  v114 = sub_219BF2CB4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = (&v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_219BF2634();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDBD64();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v128 = *(v12 - 8);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v142 = &v109 - v13;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v15 = v14;
  v127 = *(v14 - 8);
  v126 = *(v127 + 64);
  MEMORY[0x28223BE20](v14);
  v141 = &v109 - v16;
  sub_21916B970(0, &qword_280EE6350, MEMORY[0x277D35078], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v125 = &v109 - v18;
  sub_21916B970(0, &qword_280EE8AE0, MEMORY[0x277D30210], v11);
  MEMORY[0x28223BE20](v19 - 8);
  v124 = &v109 - v20;
  v137 = sub_219BDDD44();
  v136 = *(v137 - 8);
  v21 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v140 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v135 = &v109 - v23;
  v144 = sub_219BE3F04();
  v134 = *(v144 - 8);
  v24 = *(v134 + 64);
  MEMORY[0x28223BE20](v144);
  v139 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v133 = &v109 - v26;
  v27 = sub_219BE15B4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDD0A4();
  v123 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 48);
  v155 = *(a2 + 32);
  v156 = v34;
  v157 = *(a2 + 64);
  v35 = *(a2 + 16);
  v153 = *a2;
  v154 = v35;
  v131 = v15;
  v138 = a1;
  sub_219BEA7B4();
  if (!*(&v148 + 1))
  {
    sub_2187454CC(&v147, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21883DA18);
    goto LABEL_7;
  }

  sub_219BDD274();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v37 = v143;
    goto LABEL_11;
  }

  (*(v28 + 104))(v30, *MEMORY[0x277D2F528], v27);
  sub_219BDD094();
  (*(v28 + 8))(v30, v27);
  v36 = HIBYTE(v155) >> 6;
  if (v36)
  {
    if (v36 == 1)
    {
    }

    else
    {
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v150 = BYTE8(v155) & 1;
      sub_219BD47C0();
    }
  }

  else
  {
    v147 = v153;
    v148 = v154;
    v149 = v155;
    v150 = BYTE8(v155) & 1;
    v38 = [sub_219BD4870() identifier];
    sub_219BF5414();
  }

  v37 = v143;
  v39 = v123;
  sub_219BDD204();

  (v39[1])(v33, v31);
LABEL_11:
  __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
  sub_21916B348();
  v40 = sub_219BE1DE4();
  if (!v40)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v41 = v40;
  if (!sub_219089258(0, v132))
  {
    [v41 endActiveViewingSession];
  }

  v120 = v41;
  v42 = v133;
  v43 = v138;
  sub_21916A24C();
  sub_21916A644(&v153);
  v45 = v44;
  v46 = sub_219BDE924();
  (*(*(v46 - 8) + 56))(v124, 1, 1, v46);
  v47 = sub_219BE4394();
  (*(*(v47 - 8) + 56))(v125, 1, 1, v47);

  v48 = v135;
  v119 = v45;
  sub_219BDDD34();
  v124 = v37[5];
  v125 = v37[6];
  v123 = __swift_project_boxed_opaque_existential_1(v37 + 2, v124);
  v122 = sub_2186C709C(0, &qword_27CC16B88, MEMORY[0x277D2FDA8], 1);
  v49 = v127;
  v50 = v131;
  (*(v127 + 16))(v141, v43, v131);
  v51 = v134;
  (*(v134 + 16))(v139, v42, v144);
  v52 = v136;
  v53 = v48;
  v54 = v137;
  (*(v136 + 16))(v140, v53, v137);
  sub_218AB06A4(v130, v142);
  v55 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v56 = (v126 + *(v51 + 80) + v55) & ~*(v51 + 80);
  v57 = (v24 + *(v52 + 80) + v56) & ~*(v52 + 80);
  v58 = (v21 + *(v128 + 80) + v57) & ~*(v128 + 80);
  v59 = swift_allocObject();
  (*(v49 + 32))(v59 + v55, v141, v50);
  (*(v51 + 32))(v59 + v56, v139, v144);
  (*(v52 + 32))(v59 + v57, v140, v54);
  sub_21916A024(v142, v59 + v58);
  sub_219BE1E14();

  if (!*(&v148 + 1))
  {
    goto LABEL_52;
  }

  sub_2186CB1F0(&v147, &v152);
  v60 = v143;
  __swift_project_boxed_opaque_existential_1(v143 + 2, v143[5]);
  sub_2186C709C(0, &unk_280EBE300, &protocol descriptor for IssueBookmarkProviderType, 1);
  sub_219BE1E34();
  if (!*(&v148 + 1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_2186CB1F0(&v147, v151);
  __swift_project_boxed_opaque_existential_1(v151, v151[3]);
  v61 = *(&v153 + 1);
  v62 = v153;
  v63 = HIBYTE(v155) >> 6;
  if (v63)
  {
    if (v63 == 1)
    {
    }

    else
    {
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v150 = BYTE8(v155) & 1;
      v62 = sub_219BD47C0();
      v61 = v66;
    }
  }

  else
  {
    v147 = v153;
    v148 = v154;
    v149 = v155;
    v150 = BYTE8(v155) & 1;
    v64 = [sub_219BD4870() identifier];
    v62 = sub_219BF5414();
    v61 = v65;
  }

  v67 = sub_218C4F0E0(v62, v61);

  if (sub_219089258(1, v132))
  {
    v145 = 0;
    v146 = 0xE000000000000000;
    v68 = *(&v153 + 1);
    v69 = v153;
    v70 = HIBYTE(v155) >> 6;
    if (v70)
    {
      v71 = v117;
      v72 = v116;
      if (v70 == 1)
      {
      }

      else
      {
        v147 = v153;
        v148 = v154;
        v149 = v155;
        v150 = BYTE8(v155) & 1;
        v69 = sub_219BD47C0();
        v68 = v80;
      }
    }

    else
    {
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v150 = BYTE8(v155) & 1;
      v76 = [sub_219BD4870() identifier];
      v69 = sub_219BF5414();
      v68 = v77;

      v71 = v117;
      v72 = v116;
    }

    MEMORY[0x21CECC330](v69, v68);

    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    v81 = v115;
    sub_219BDBD54();
    v82 = sub_219BDBD44();
    v84 = v83;
    (*(v72 + 8))(v81, v71);
    MEMORY[0x21CECC330](v82, v84);

    v74 = v145;
    v73 = v146;
  }

  else
  {
    v73 = *(&v153 + 1);
    v74 = v153;
    v75 = HIBYTE(v155) >> 6;
    if (v75)
    {
      if (v75 == 1)
      {
      }

      else
      {
        v147 = v153;
        v148 = v154;
        v149 = v155;
        v150 = BYTE8(v155) & 1;
        v74 = sub_219BD47C0();
        v73 = v85;
      }
    }

    else
    {
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v150 = BYTE8(v155) & 1;
      v78 = [sub_219BD4870() identifier];
      v74 = sub_219BF5414();
      v73 = v79;
    }
  }

  v86 = v121;
  v87 = sub_21916AB5C(&v153, &v152, v74, v73);
  if (v86)
  {

    sub_219BDE5B4();
    if (sub_219BED0C4())
    {
      goto LABEL_49;
    }

LABEL_44:
    v101 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    sub_219BE9D54();
    v102 = v101;
    v103 = sub_219BE9CE4();
    v104 = sub_219BEA784();
    v105 = v103;
    v104();

LABEL_50:
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v152);
    (*(v136 + 8))(v135, v137);
    (*(v134 + 8))(v133, v144);
    __swift_destroy_boxed_opaque_existential_1(v151);
    return v105;
  }

  if (!v67)
  {

    if ((sub_219BED0C4() & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:

    v107 = sub_219BEA784();
    v105 = v87;
    v107();
    goto LABEL_50;
  }

  v88 = v67;
  v89 = [v88 issueType];
  if (!v89)
  {

    v90 = [v88 articleID];
    if (v90)
    {
      v142 = v67;
      v91 = v90;
      v92 = sub_219BF5414();
      v94 = v93;

      v95 = v60;
      v96 = v60[64];
      v141 = v95[65];
      __swift_project_boxed_opaque_existential_1(v95 + 61, v96);
      v97 = v110;
      *v110 = v92;
      v97[1] = v94;
      v98 = v113;
      v99 = v114;
      (*(v113 + 104))(v97, *MEMORY[0x277D33B80], v114);
      v100 = v109;
      sub_219BF4794();
      (*(v98 + 8))(v97, v99);
      LOBYTE(v91) = sub_219BF2614();
      (*(v111 + 8))(v100, v112);
      if (v91)
      {
        sub_219BDE5C4();
      }

      v67 = v142;
      if (sub_219BED0C4())
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v89 == 1)
  {

    v106 = [v88 pageID];
    if (v106)
    {

      sub_219BDE5C4();
    }

LABEL_48:

    if ((sub_219BED0C4() & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

LABEL_54:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219168ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219089258(1, a1))
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    v9 = *a2;
    v8 = *(a2 + 8);
    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 47) >> 6;
    if (v14)
    {
      if (v14 == 1)
      {
      }

      else
      {
        v32 = *a2;
        v33 = v8;
        v34 = v11;
        v35 = v10;
        v36 = v12;
        v37 = v13 & 1;
        v9 = sub_219BD47C0();
        v8 = v27;
      }
    }

    else
    {
      v32 = *a2;
      v33 = v8;
      v34 = v11;
      v35 = v10;
      v36 = v12;
      v37 = v13 & 1;
      v23 = [sub_219BD4870() identifier];
      v9 = sub_219BF5414();
      v8 = v24;
    }

    MEMORY[0x21CECC330](v9, v8);

    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_219BDBD54();
    v28 = sub_219BDBD44();
    v30 = v29;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x21CECC330](v28, v30);

    return v31[0];
  }

  else
  {
    v15 = *(a2 + 8);
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
    v20 = *(a2 + 47) >> 6;
    if (v20)
    {
      if (v20 == 1)
      {
        v21 = *a2;

        return v21;
      }

      else
      {
        v32 = *a2;
        v33 = v15;
        v34 = v17;
        v35 = v16;
        v36 = v18;
        v37 = v19 & 1;
        return sub_219BD47C0();
      }
    }

    else
    {
      v32 = *a2;
      v33 = v15;
      v34 = v17;
      v35 = v16;
      v36 = v18;
      v37 = v19 & 1;
      v25 = [sub_219BD4870() identifier];
      v26 = sub_219BF5414();

      return v26;
    }
  }
}

void sub_21916915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_218962DB8(0, &qword_280E8E478, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D83D88]);
  sub_219BE3204();
  v14 = sub_219BE1C44();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  type metadata accessor for Router();

  sub_219BE2F94();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  v17 = sub_219BE2E54();
  sub_219BE2FD4();
}

void *sub_219169308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x277D83D88];
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  v15 = *(a3 + 48);
  v20[2] = *(a3 + 32);
  v20[3] = v15;
  v21 = *(a3 + 64);
  v16 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v16;
  v17 = type metadata accessor for NewsActivity2.Article(0);
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = sub_219164728(a2, v20, a4, a5, v14, a6);
  sub_2187454CC(v14, qword_280EE0178, type metadata accessor for NewsActivity2.Article, v11, sub_21916B970);
  return v18;
}

void sub_219169490(id *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void *))
{
  if (*a1)
  {
    v6 = *a1;
    a3();
  }

  else
  {
    v8 = sub_219BE7DB4();
    sub_21916B5A8(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D6DD50], v8);
    a5(v9);
  }
}

void sub_2191695A0(void *a1, void (*a2)(void *))
{
  v4 = sub_219BE7DB4();
  sub_21916B5A8(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
  v5 = swift_allocError();
  v7 = v6;
  v6[3] = sub_219BDDD74();
  v7[4] = sub_21916B5A8(&qword_27CC0FD18, MEMORY[0x277D2FD20], MEMORY[0x277D2FD18]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v8 = a1;
  sub_219BDDD64();
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D6DD60], v4);
  a2(v5);
}

void *sub_2191696FC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return sub_219169750(v5);
}

void *sub_219169750(uint64_t a1)
{
  v3 = sub_219BDD494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v7;
  v15 = *(a1 + 64);
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  sub_21916ADB0(v14, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186C709C(0, &qword_27CC16B90, MEMORY[0x277D2FE88], 1);
  result = sub_219BE1E34();
  if (v12)
  {
    sub_2186CB1F0(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_219BDE1B4();
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    v10 = sub_219BDD724();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(&v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2191698F8(uint64_t a1, void *a2)
{
  v3 = sub_219BDED44();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2186C6148(0, &unk_280E8E608, 0x277D30DA8);
  result = sub_219BE1DE4();
  if (result)
  {
    v5 = result;
    MEMORY[0x28223BE20](result);
    sub_218962DB8(0, &unk_280EE6990, &unk_280E8E2D8, 0x277D30DA0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v6 = sub_219BE30B4();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219169A38(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v45 = a2;
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for NewsActivity2.Article(0);
  v18 = *(v17 - 8);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v39 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  if ([v21 canAccess])
  {
    v44[0] = sub_219167ADC(a3, a4, a5, a6, a7, v40);
    sub_21916B264(0);
    swift_allocObject();
    return sub_219BE3014();
  }

  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v23 = v44[0];
  v24 = (v23 >> 58) & 0x3C | (v23 >> 1) & 3;
  v25 = v45;
  if ((v24 - 9) < 0x34 || (v35 = 1 << v24, (v35 & 0xF9) != 0))
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    sub_2187454CC(v16, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
    sub_218932F9C(v23);
    __swift_project_boxed_opaque_existential_1(v25 + 2, v25[5]);
    sub_2186C709C(0, &qword_280E9D658, &protocol descriptor for IssueErrorAlertPresenterFactoryType, 1);
    result = sub_219BE1E34();
    if (!v42)
    {
      __break(1u);
      return result;
    }

    sub_2186CB1F0(&v41, v44);
    v26 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    if ([v21 blockedReason] == 3)
    {
      v27 = *(*v26 + 16);
      v28 = type metadata accessor for ExplicitContentRestrictionAlertPresenter();
      v29 = swift_allocObject();
      v29[3] = 0;
      v29[4] = 0;
      v29[2] = v27;
      v30 = sub_21916B5A8(&qword_27CC0D818, type metadata accessor for ExplicitContentRestrictionAlertPresenter, &unk_219C7E898);
      swift_unknownObjectRetain();
    }

    else
    {
      v42 = sub_219BDDD74();
      v43 = sub_21916B5A8(&qword_27CC0FD18, MEMORY[0x277D2FD20], MEMORY[0x277D2FD18]);
      __swift_allocate_boxed_opaque_existential_1(&v41);
      sub_219BDDD54();
      v28 = sub_219BEA744();
      swift_allocObject();
      v29 = sub_219BEA6C4();
      v30 = MEMORY[0x277D6EB90];
    }

    v42 = v28;
    v43 = v30;
    *&v41 = v29;
    v31 = sub_219BE7DB4();
    sub_21916B5A8(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    swift_allocError();
    v33 = v32;
    sub_218718690(&v41, v32);
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D6DD40], v31);
    sub_21916B264(0);
    swift_allocObject();
    v34 = sub_219BE2FF4();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    if ((v35 & 6) != 0)
    {
      sub_2187B2C48(0);
    }

    v36 = swift_projectBox();
    sub_218B1B33C(v36, v16, type metadata accessor for NewsActivity2.Article);
    (*(v18 + 56))(v16, 0, 1, v17);
    v37 = v39;
    sub_218B1B3A4(v16, v39, type metadata accessor for NewsActivity2.Article);
    sub_218932F9C(v23);
    v44[0] = sub_218AA1DB4(a3, v37, MEMORY[0x277D84F90]);
    sub_21916B264(0);
    swift_allocObject();
    v34 = sub_219BE3014();
    sub_21916B2E8(v37, type metadata accessor for NewsActivity2.Article);
  }

  return v34;
}

uint64_t sub_21916A024(uint64_t a1, uint64_t a2)
{
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21916A0B8(void **a1, void *a2)
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 79) & 0xFFFFFFFFFFFFFFF8;
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v10 = (v8 + *(*(v9 - 8) + 80) + 16) & ~*(*(v9 - 8) + 80);
  return sub_219169A38(a1, a2, v2 + v6, v2 + v7, *(v2 + v8), *(v2 + v8 + 8), v2 + v10, *(v2 + ((*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21916A24C()
{
  v0 = sub_219BDD944();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187B2C48(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v12 = v25;
  if (((v12 >> 58) & 0x3C | (v12 >> 1) & 3) == 2)
  {
    v13 = swift_projectBox();
    sub_218B1B33C(v13, v5, sub_2187B2C48);

    sub_218B1B3A4(v5, v11, type metadata accessor for NewsActivity2.Article);
    sub_218932F9C(v12);
    sub_21916B970(0, &unk_280E8B720, sub_218AB09CC, MEMORY[0x277D84560]);
    sub_218AB09CC(0);
    v15 = v14 - 8;
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = (v17 + v16);
    v19 = *(v15 + 56);
    sub_218B1B33C(v11, v8, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218B1B3A4(v8, v2, MEMORY[0x277D2FB40]);
    v20 = sub_219BDD8A4();
    v22 = v21;
    sub_21916B2E8(v2, MEMORY[0x277D2FB40]);
    *v18 = v20;
    v18[1] = v22;
    sub_21908F748(v18 + v19);
    sub_2194AED40(v17);
    swift_setDeallocating();
    sub_21916B2E8(v18, sub_218AB09CC);
    swift_deallocClassInstance();
    sub_219BE3EF4();
    return sub_21916B2E8(v11, type metadata accessor for NewsActivity2.Article);
  }

  else
  {
    sub_218932F9C(v25);
    sub_2194AED40(MEMORY[0x277D84F90]);
    return sub_219BE3EF4();
  }
}

uint64_t sub_21916A644(uint64_t a1)
{
  if (*(a1 + 47) >> 6)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = *(a1 + 40) & 1;
  sub_21896FE24(*a1, v4, v3, v2, v1, v6);
  LOBYTE(v10) = v6;
  v7 = [objc_msgSend(sub_219BD4870() sourceChannel];
  swift_unknownObjectRelease();
  v8 = sub_219BF5414();
  sub_21896FDCC(v5, v4, v3, v2, v1, v6);

  return v8;
}

uint64_t sub_21916A75C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v6 = type metadata accessor for NewsActivity2.Article(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10 - 8);
  v21 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v15 = sub_219BEA794();
  v15(a1);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE3F04();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDDD44();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AB06A4(v22, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    sub_2187454CC(v14, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_218B1B33C(v14, v9, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    v18 = v21;
    sub_218B1B3A4(v9, v21, MEMORY[0x277D2FB40]);
    sub_21916B2E8(v14, type metadata accessor for NewsActivity2.Article);
    v16 = sub_219BDD924();
    v17 = v19;
    sub_21916B2E8(v18, MEMORY[0x277D2FB40]);
  }

  v23 = v16;
  v24 = v17;
  sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
  sub_219BE1B64();
  return swift_unknownObjectRelease();
}

uint64_t sub_21916AB5C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = sub_219BDD494();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = a1[4];
  v14 = *(a1 + 40);
  v15 = *(a1 + 47) >> 6;
  if (!v15)
  {
    v17 = a2[3];
    v31 = a2[4];
    v30 = __swift_project_boxed_opaque_existential_1(a2, v17);
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = v13;
    v40 = v14 & 1;
    v18 = sub_219BD4870();
    *v8 = v18;
    v19 = MEMORY[0x277D2F9E0];
LABEL_6:
    v16 = v34;
    (*(v6 + 104))(v8, *v19, v34);
    v24 = v18;
    goto LABEL_7;
  }

  if (v15 != 1)
  {
    v20 = a1[6];
    v28 = a1[7];
    v29 = v20;
    v21 = a2[3];
    v31 = a2[4];
    v30 = __swift_project_boxed_opaque_existential_1(a2, v21);
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = v13;
    v40 = v14 & 1;
    v22 = v28;

    v18 = sub_219BD4870();
    v23 = v29;
    *v8 = v18;
    v8[1] = v23;
    v8[2] = v22;
    v19 = MEMORY[0x277D2F9D0];
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *v8 = v9;
  v8[1] = v10;
  v16 = v34;
  (*(v6 + 104))(v8, *MEMORY[0x277D2F9D8], v34);

LABEL_7:
  v25 = sub_219BDDEA4();
  (*(v6 + 8))(v8, v16);
  return v25;
}

void sub_21916ADB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 47) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      *a2 = *a1;
      a2[1] = v4;
      v6 = *MEMORY[0x277D2F9D8];
      v7 = sub_219BDD494();
      (*(*(v7 - 8) + 104))(a2, v6, v7);

      return;
    }

    v10 = *(a1 + 48);
    v9 = *(a1 + 56);

    v14 = sub_219BD4870();
    *a2 = v14;
    a2[1] = v10;
    a2[2] = v9;
    v8 = MEMORY[0x277D2F9D0];
  }

  else
  {
    v14 = sub_219BD4870();
    *a2 = v14;
    v8 = MEMORY[0x277D2F9E0];
  }

  v11 = *v8;
  v12 = sub_219BDD494();
  (*(*(v12 - 8) + 104))(a2, v11, v12);

  v13 = v14;
}

void sub_21916AF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_218846958;
  v13[5] = v12;
  v15[4] = sub_21916B5F8;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_219165148;
  v15[3] = &block_descriptor_102;
  v14 = _Block_copy(v15);

  [a5 checkAccessToItem:a6 withQualityOfService:25 completion:v14];
  _Block_release(v14);
}

void sub_21916B07C(char a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void (*a6)(void))
{
  if (a3)
  {
    v8 = sub_219BE7DB4();
    sub_21916B5A8(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v9 = swift_allocError();
    v11 = v10;
    v10[3] = sub_219BDDD74();
    v11[4] = sub_21916B5A8(&qword_27CC0FD18, MEMORY[0x277D2FD20], MEMORY[0x277D2FD18]);
    __swift_allocate_boxed_opaque_existential_1(v11);
    v12 = a3;
    v13 = a3;
    sub_219BDDD64();
    (*(*(v8 - 8) + 104))(v11, *MEMORY[0x277D6DD60], v8);
    a4(v9);

    v14 = a3;
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D30DA0]) initWithCanAccess:a1 & 1 blockedReason:a2];
    a6();
    v14 = v16;
  }
}

void sub_21916B264(uint64_t a1)
{
  if (!qword_27CC16B80)
  {
    sub_218962DB8(255, &qword_280E8E478, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D83D88]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC16B80);
    }
  }
}

uint64_t sub_21916B2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21916B348()
{
  result = qword_280EE8F20;
  if (!qword_280EE8F20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE8F20);
  }

  return result;
}

uint64_t sub_21916B3AC(void *a1)
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BE3F04() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDDD44() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v13 = v1 + ((v10 + v11 + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80));

  return sub_21916A75C(a1, v1 + v4, v1 + v7, v1 + v10, v13);
}

uint64_t sub_21916B5A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21916B604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_21916B66C(uint64_t a1)
{
  sub_21916B604(0, &unk_27CC16B98, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21916B7E0()
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 127) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = v0 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + v6);

  sub_2191661A0(v7, (v0 + v3), (v0 + v4), (v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8)), v9, v10, v11);
}

uint64_t sub_21916B8D0()
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  return sub_219166814(v0 + 16, v2, v3);
}

void sub_21916B970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21916BA20(uint64_t a1, uint64_t a2)
{
  sub_218950928(0);
  v103 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_21917838C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v86 - v15;
  MEMORY[0x28223BE20](v16);
  v89 = &v86 - v17;
  MEMORY[0x28223BE20](v18);
  v101 = &v86 - v19;
  v108 = sub_219BDC104();
  v20 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v88 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v99 = &v86 - v23;
  sub_219177D88(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v114 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v86 - v26;
  sub_21917838C(0, &unk_280EE5C60, sub_218950B84, v8);
  MEMORY[0x28223BE20](v28 - 8);
  v100 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v86 - v31;
  sub_218950B84(0);
  v115 = v33;
  MEMORY[0x28223BE20](v33);
  v94 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v104 = &v86 - v37;
  if (a2)
  {
    v112 = v32;
    v113 = a2;
    v38 = 0;
    v39 = 0;
    v40 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
    v96 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
    v97 = v2;
    v41 = *(v2 + v40);
    v111 = (v25 + 8);
    v110 = (v36 + 48);
    v106 = (v36 + 32);
    v105 = (v20 + 48);
    v92 = (v20 + 32);
    v90 = (v20 + 56);
    v91 = (v6 + 8);
    v87 = v20;
    v93 = (v20 + 8);
    v107 = (v36 + 8);
    v109 = a1;
    v117 = v41;
    v42 = v114;
    while (1)
    {
      v116 = v38;
      v46 = *(&unk_282A22520 + v39 + 32);
      sub_219BE6EC4();
      v130 = v121;
      sub_2187486B4(0);
      v48 = v47;
      v49 = sub_21871639C(&unk_280EE5550, 255, sub_2187486B4, MEMORY[0x277D6D8C8]);
      v120 = v48;
      v119 = v49;
      sub_219BE7B94();

      *&v127[0] = 0;
      *(&v127[0] + 1) = 0xE000000000000000;
      v129 = v46;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      MEMORY[0x21CECC330](a1, v113);
      v50 = v112;
      sub_219BEB1C4();

      v118 = *v111;
      v118(v27, v42);
      v51 = *v110;
      v52 = v115;
      if ((*v110)(v50, 1, v115) == 1)
      {
        sub_219178484(v50, &unk_280EE5C60, sub_218950B84);
        sub_219BE6EC4();
        *&v121 = *&v127[0];
        sub_219BE7B94();

        v53 = v100;
        sub_219BEB1C4();
        v118(v27, v42);
        if (v51(v53, 1, v52) == 1)
        {
          v43 = sub_218950B84;
          v44 = v53;
          v45 = &unk_280EE5C60;
LABEL_4:
          sub_219178484(v44, v45, v43);
          a1 = v109;
          goto LABEL_5;
        }

        v54 = v52;
        v55 = v94;
        (*v106)(v94, v53, v54);
        sub_219BE6EC4();
        *&v121 = *&v127[0];
        sub_219BE7B94();

        v56 = v95;
        sub_219BEB2F4();
        v118(v27, v42);
        v57 = v108;
        if ((*v105)(v56, 1, v108) != 1)
        {
          v81 = v88;
          (*v92)(v88, v56, v57);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v83 = Strong;
            v84 = v87 + 16;
            v85 = v89;
            (*(v87 + 16))(v89, v81, v57);
            (*(v84 + 40))(v85, 0, 1, v57);
            sub_2191784F4(v85, v83);
            swift_unknownObjectRelease();
            sub_219178484(v85, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
            (*(v84 - 8))(v81, v57);
          }

          else
          {
            (*v93)(v81, v57);
          }

          return (*v107)(v55, v54);
        }

        (*v107)(v55, v54);
        sub_219178484(v56, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        a1 = v109;
      }

      else
      {
        v58 = v104;
        (*v106)(v104, v50, v52);
        sub_219BE6EC4();
        *&v121 = *&v127[0];
        sub_219BE7B94();

        v59 = v101;
        sub_219BEB2F4();
        v118(v27, v42);
        v60 = v108;
        v61 = v52;
        if ((*v105)(v59, 1, v108) == 1)
        {
          (*v107)(v58, v52);
          v43 = MEMORY[0x277CC9AF8];
          v44 = v59;
          v45 = &unk_280EE9BB0;
          goto LABEL_4;
        }

        v62 = v27;
        v63 = v99;
        (*v92)(v99, v59, v60);
        sub_219BE6EC4();
        v130 = v121;
        sub_219BE7B94();

        sub_219BDC0F4();
        sub_219BEB364();
        v64 = v62;
        v118(v62, v42);
        sub_219BE6934();
        v127[3] = v124;
        v127[4] = v125;
        v65 = v126;
        v128 = v126;
        v127[0] = v121;
        v127[1] = v122;
        v127[2] = v123;
        sub_2189C3F04(v127);
        v66 = swift_unknownObjectWeakLoadStrong();
        v67 = v66;
        if (v65 < 9)
        {
          if (v66)
          {
            v79 = v89;
            v80 = v87 + 16;
            (*(v87 + 16))(v89, v63, v60);
            (*(v80 + 40))(v79, 0, 1, v60);
            sub_2191784F4(v79, v67);
            swift_unknownObjectRelease();
            sub_219178484(v79, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          }

          (*v91)(v102, v103);
          (*v93)(v63, v60);
          return (*v107)(v58, v61);
        }

        a1 = v109;
        if (v66)
        {
          v68 = v98;
          (*v90)(v98, 1, 1, v60);
          v69 = swift_unknownObjectWeakLoadStrong();
          if (v69)
          {
            v70 = v69;
            swift_getObjectType();
            sub_218A1BF30(v98, v89);
            v60 = v108;
            sub_219BEA2C4();
            v71 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
            swift_beginAccess();
            v72 = v70 + v71;
            v68 = v98;
            sub_2191783F0(v98, v72);
            swift_endAccess();
            swift_unknownObjectRelease();
            v58 = v104;
            v63 = v99;
          }

          swift_unknownObjectRelease();
          sub_219178484(v68, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        (*v91)(v102, v103);
        (*v93)(v63, v60);
        (*v107)(v58, v61);
        v27 = v64;
      }

LABEL_5:
      v38 = 1;
      v39 = 1u;
      if (v116)
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v74 = result;
          v75 = v89;
          (*v90)(v89, 1, 1, v108);
          sub_2191784F4(v75, v74);
          swift_unknownObjectRelease();
          return sub_219178484(v75, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        return result;
      }
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v20 + 56))(v11, 1, 1, v108);
    v76 = swift_unknownObjectWeakLoadStrong();
    if (v76)
    {
      v77 = v76;
      swift_getObjectType();
      sub_218A1BF30(v11, v89);
      sub_219BEA2C4();
      v78 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
      swift_beginAccess();
      sub_2191783F0(v11, v77 + v78);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_219178484(v11, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  }

  return result;
}

double sub_21916CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = off_282A6FE70;
      type metadata accessor for FollowingEventHandler();
      v6();
      swift_unknownObjectRelease();
    }
  }

  v7 = sub_21871639C(qword_280EC1C28, 255, type metadata accessor for FollowingModifierFactory, &unk_219C1BD78);
  v8 = *(v7 + 208);
  v9 = type metadata accessor for FollowingModifierFactory();
  v8(v9, v7);
  sub_218AEEF84(0);
  sub_21871639C(&qword_280EE56D0, 255, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21916CC78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = type metadata accessor for FollowingMastheadModelProvider();
    result = sub_219BE1E24();
    if (result)
    {
      v10 = v6;
      v11 = &off_282A5B380;
      *&v9 = result;
      v7 = type metadata accessor for FollowingModule();
      v8 = swift_allocObject();
      sub_2186CB1F0(v12, v8 + 16);
      *(v8 + 56) = v5;
      result = sub_2186CB1F0(&v9, v8 + 64);
      a2[3] = v7;
      a2[4] = &off_282A80088;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21916CD84()
{
  sub_218703148(0, &qword_280EE7B60, &type metadata for FollowingSelectionModel, MEMORY[0x277D6CB60]);
  swift_allocObject();
  return sub_219BE20D4();
}

void *sub_21916CDF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874ACB0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    sub_219BE8664();
    v3 = sub_219BE7BC4();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21916CE6C()
{
  sub_2186C709C(0, qword_280EC1D00, &protocol descriptor for FollowingDataManagerType, 0);
  sub_219BE2914();

  return result;
}

void *sub_21916CEE0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E90120, &protocolRef_TSNotificationManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  if (!v171)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v169)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v125 = v170;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0, &protocol descriptor for ShortcutServiceType, 1);
  result = sub_219BE1E34();
  if (!v168)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECEEC8, &protocol descriptor for EditorialServiceType, 1);
  result = sub_219BE1E34();
  if (!v166)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC9550, &protocol descriptor for TagReorderServiceType, 1);
  result = sub_219BE1E34();
  if (!v164)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA94D8, &protocol descriptor for FollowingBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v162)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DB0, &protocol descriptor for MagazinesBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v160)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3490, &protocol descriptor for PuzzleBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v158)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  v124 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
  result = sub_219BE1E34();
  v123 = v155;
  if (!v155)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v121 = v156;
  v122 = [objc_opt_self() currentNotificationCenter];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0, &protocol descriptor for SportsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v154[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAB320, &protocol descriptor for ShortcutsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v153[3])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EE50(0, &unk_280E90680, sub_2186F7774, &type metadata for FollowingOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v120 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v119 = result;
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v115 = v172;
  v116 = v169;
  v117 = v171;
  v118 = a2;
  v126 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v152[3])
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v167, v168);
    v114 = &v97;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
    v113 = &v97;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v163, v164);
    v112 = &v97;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v161, v162);
    v111 = &v97;
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
    v110 = &v97;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (&v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v157, v158);
    v109 = &v97;
    v32 = MEMORY[0x28223BE20](v31);
    v34 = (&v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v9;
    v37 = *v14;
    v38 = *v19;
    v39 = *v24;
    v40 = *v29;
    v41 = *v34;
    v101 = type metadata accessor for ShortcutService();
    v151 = &off_282A3DCA0;
    v150 = v101;
    v149[0] = v36;
    v100 = type metadata accessor for EditorialService();
    v148 = &off_282A93328;
    v147 = v100;
    v146[0] = v37;
    v99 = type metadata accessor for TagReorderService();
    v145 = &off_282A41DB0;
    v144 = v99;
    v143[0] = v38;
    v98 = type metadata accessor for FollowingBadgingCoordinator();
    v142 = &off_282A89CA0;
    v141 = v98;
    v140[0] = v39;
    v97 = type metadata accessor for MagazinesBadgingCoordinator();
    v139 = &off_282A3A448;
    v138 = v97;
    v137[0] = v40;
    v42 = type metadata accessor for PuzzleBadgingCoordinator();
    v136 = &off_282A2FF18;
    v135 = v42;
    v134[0] = v41;
    v104 = type metadata accessor for FollowingDataManager();
    v43 = objc_allocWithZone(v104);
    v44 = __swift_mutable_project_boxed_opaque_existential_1(v149, v150);
    v108 = &v97;
    v45 = MEMORY[0x28223BE20](v44);
    v47 = (&v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47, v45);
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
    v107 = &v97;
    v50 = MEMORY[0x28223BE20](v49);
    v52 = (&v97 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52, v50);
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
    v106 = &v97;
    v55 = MEMORY[0x28223BE20](v54);
    v57 = (&v97 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57, v55);
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
    v105 = &v97;
    v60 = MEMORY[0x28223BE20](v59);
    v62 = (&v97 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62, v60);
    v64 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    v103 = &v97;
    v65 = MEMORY[0x28223BE20](v64);
    v67 = (&v97 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67, v65);
    v69 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v102 = &v97;
    v70 = MEMORY[0x28223BE20](v69);
    v72 = (&v97 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72, v70);
    v74 = *v47;
    v75 = *v52;
    v76 = *v57;
    v77 = *v62;
    v78 = *v67;
    v79 = *v72;
    v133[3] = v101;
    v133[4] = &off_282A3DCA0;
    v133[0] = v74;
    v132[4] = &off_282A93328;
    v132[3] = v100;
    v132[0] = v75;
    v131[3] = v99;
    v131[4] = &off_282A41DB0;
    v131[0] = v76;
    v130[3] = v98;
    v130[4] = &off_282A89CA0;
    v130[0] = v77;
    v129[3] = v97;
    v129[4] = &off_282A3A448;
    v129[0] = v78;
    v128[3] = v42;
    v128[4] = &off_282A2FF18;
    v128[0] = v79;
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_notificationPrompter] = v126;
    v80 = &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_subscriptionService];
    v81 = v116;
    v82 = v115;
    *v80 = v117;
    *(v80 + 1) = v82;
    v84 = v124;
    v83 = v125;
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_purchaseController] = v124;
    v85 = &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_tagService];
    *v85 = v81;
    *(v85 + 1) = v83;
    sub_218718690(v133, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_shortcutService]);
    sub_218718690(v132, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_editorialService]);
    sub_218718690(v131, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_tagReorderService]);
    sub_218718690(v130, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_followingBadgingCoordinator]);
    sub_218718690(v129, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_magazinesBadgingCoordinator]);
    sub_218718690(v128, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_puzzleBadgingCoordinator]);
    v86 = v122;
    v87 = v123;
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_userNotificationCenter] = v122;
    v88 = &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_familySharingStatusManager];
    v89 = v121;
    *v88 = v87;
    *(v88 + 1) = v89;
    sub_218718690(v154, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager]);
    sub_218718690(v153, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_shortcutsOnboardingManager]);
    v91 = v119;
    v90 = v120;
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_offlineManager] = v120;
    *&v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_bundleSubscriptionManager] = v91;
    sub_218718690(v152, &v43[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_contentAvailabilityValidator]);
    v127.receiver = v43;
    v127.super_class = v104;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v92 = v84;
    swift_unknownObjectRetain();
    v93 = v86;
    swift_unknownObjectRetain();
    v94 = v90;
    swift_unknownObjectRetain();
    v95 = objc_msgSendSuper2(&v127, sel_init);
    [*&v95[OBJC_IVAR____TtC7NewsUI220FollowingDataManager_bundleSubscriptionManager] addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v152);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v154);
    __swift_destroy_boxed_opaque_existential_1(v128);
    __swift_destroy_boxed_opaque_existential_1(v129);
    __swift_destroy_boxed_opaque_existential_1(v130);
    __swift_destroy_boxed_opaque_existential_1(v131);
    __swift_destroy_boxed_opaque_existential_1(v132);
    __swift_destroy_boxed_opaque_existential_1(v133);
    __swift_destroy_boxed_opaque_existential_1(v134);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v140);
    __swift_destroy_boxed_opaque_existential_1(v143);
    __swift_destroy_boxed_opaque_existential_1(v146);
    __swift_destroy_boxed_opaque_existential_1(v149);
    __swift_destroy_boxed_opaque_existential_1(v157);
    __swift_destroy_boxed_opaque_existential_1(v159);
    __swift_destroy_boxed_opaque_existential_1(v161);
    __swift_destroy_boxed_opaque_existential_1(v163);
    __swift_destroy_boxed_opaque_existential_1(v165);
    result = __swift_destroy_boxed_opaque_existential_1(v167);
    v96 = v118;
    *v118 = v95;
    v96[1] = &off_282A493C8;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_21916E09C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for FollowingEngagementViewRenderer();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A9DFF0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21916E150(uint64_t a1, char a2)
{
  type metadata accessor for FollowingTabGroupManager();
  sub_219BE2904();

  type metadata accessor for FollowingMastheadModelProvider();
  sub_219BE2904();

  type metadata accessor for FollowingViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ED13B8, &protocol descriptor for FollowingRouterType, 1);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280ED13A0, &protocol descriptor for FollowingStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBEA88, &protocol descriptor for FollowingEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC5120, &protocol descriptor for FollowingInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECEB68, &protocol descriptor for FollowingTrackerType, 1);
  sub_219BE2914();

  sub_2187486B4(0);
  sub_219BE2904();

  sub_2187493C0(0);
  *(swift_allocObject() + 16) = a2;
  sub_219BE2904();

  sub_219BE19D4();

  sub_21874AA08(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2187494B4(0);
  *(swift_allocObject() + 16) = a2;
  sub_219BE2904();

  sub_219BE19D4();

  sub_21874AB74(0);
  sub_219BE2904();

  sub_218749930(0);
  sub_219BE2904();

  type metadata accessor for FollowingLayoutBuilder();
  sub_219BE2904();

  sub_21874ACB0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_2187495C4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21874ADF8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21874AF0C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3A98, MEMORY[0x277D6EB08], 1);
  sub_219BE2914();

  sub_21874B000(0);
  sub_219BE2904();

  sub_219BEBB84();
  sub_219BE2914();

  sub_218749A24(0);
  *(swift_allocObject() + 16) = a2;
  sub_219BE2904();

  sub_21874A490();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21874974C(0);
  sub_219BE2904();
  *(swift_allocObject() + 16) = a2;
  sub_219BE19D4();

  sub_21874A730(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21874A8C0(0);
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for FollowingViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_21874B0F4(0);
  sub_219BE2904();

  sub_21874B18C(0);
  sub_219BE2904();

  return result;
}

char *sub_21916EC40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MainTabManager();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v54 = v73;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0, &protocol descriptor for ShortcutServiceType, 1);
  result = sub_219BE1E34();
  if (!v71)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v61 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v60 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v59 = result;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v69[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v68[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = v7;
  v55 = v6;
  v56 = v5;
  v57 = v3;
  v58 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EE50(0, &unk_280E90680, sub_2186F7774, &type metadata for FollowingOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v52 = result;
  if (result)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v51[2] = v51;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for ShortcutService();
    v66 = v14;
    v67 = &off_282A3DCA0;
    v65[0] = v13;
    v51[0] = type metadata accessor for FollowingTabGroupManager();
    v15 = objc_allocWithZone(v51[0]);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v51[1] = v51;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v64[3] = v14;
    v64[4] = &off_282A3DCA0;
    v64[0] = v21;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_placeholderImage;
    v23 = [objc_opt_self() clearColor];
    sub_21988DDD0(v23, 0.0, 0.0);
    v25 = v24;

    *&v15[v22] = v25;
    v26 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTabElement;
    v27 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
    v28 = sub_219BF53D4();
    v29 = sub_219BF53D4();
    v30 = [v27 initWithIdentifier:v28 title:v29 image:0];

    v31 = v30;
    [v31 setSubtitle_];
    [v31 _setTabBarPlacement_];

    *&v15[v26] = v31;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTab] = 0;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_completionCoordinators] = MEMORY[0x277D84F90];
    v32 = v58;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager] = v57;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider] = v32;
    v33 = v55;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_tagImageApplier] = v56;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_tracker] = v33;
    v34 = &v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_commandCenter];
    v35 = v54;
    *v34 = v60;
    *(v34 + 1) = v35;
    sub_218718690(v64, &v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_shortcutService]);
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_featureAvailability] = v61;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_bundleSubscriptionManager] = v59;
    v36 = v53;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_subscriptionController] = v53;
    sub_218718690(v69, &v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider]);
    sub_218718690(v68, &v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator]);
    v37 = v52;
    *&v15[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineManager] = v52;
    v63.receiver = v15;
    v63.super_class = v51[0];
    v51[0] = sel_init;
    v38 = v57;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v54 = v36;
    v53 = v37;
    v39 = objc_msgSendSuper2(&v63, v51[0]);
    v40 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTabElement;
    v41 = *&v39[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTabElement];
    v42 = v39;
    [v41 setHidden_];
    v43 = *(v38 + 9);
    sub_218703148(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C146A0;
    v45 = *&v39[v40];
    *(v44 + 32) = v45;
    sub_2186C6148(0, &qword_280E8DAD8, 0x277D76338);
    v46 = v43;
    v47 = v45;
    v48 = sub_219BF5904();

    [v46 _setChildren_];

    [*(v38 + 9) _setSelectedElement_];
    *(v38 + 3) = &off_282A5E438;
    swift_unknownObjectWeakAssign();
    sub_219BE6F64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE20F4();

    __swift_destroy_boxed_opaque_existential_1(v62);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v49 = v53;
    v50 = sub_219BF1AF4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return v42;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21916F63C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for FollowingMastheadModelProvider();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_21916F710(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD260, &protocol descriptor for SearchHomeModuleType, 1);
  result = sub_219BE1DD4();
  if (!v86)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_2186CB1F0(&v85, v87);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED13A0, &protocol descriptor for FollowingStylerType, 1);
  result = sub_219BE1E34();
  if (!v86)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBEA88, &protocol descriptor for FollowingEventHandlerType, 0);
  result = sub_219BE1E34();
  v71 = v83;
  if (!v83)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B344(0);
  result = sub_219BE1E24();
  v70 = result;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874ACB0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v69 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v61 = v84;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v77)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  v81 = v5;
  v82 = sub_21871639C(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v80[0] = v6;
  sub_219BE6AE4();
  swift_allocObject();
  v68 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  v67 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_218718690(v87, v80);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v13 = type metadata accessor for SearchHomeModule();
  v78 = v13;
  v79 = &off_282A30F30;
  v77 = v12;
  type metadata accessor for FollowingTabSearchCoordinator();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v66 = sub_219177EE4(*v18, v14);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v65 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v81)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = sub_219170338(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  v64 = result;
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = v20;
  v62 = v4;
  v63 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF980, &protocol descriptor for OfflineStatusBannerModuleType, 1);
  result = sub_219BE1E34();
  v21 = v78;
  if (!v78)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v22 = v79;
  __swift_project_boxed_opaque_existential_1(&v77, v78);
  v23 = (v22[2])(v21, v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v85, v86);
  v59[2] = v59;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v30 = type metadata accessor for FollowingStyler();
  v75 = v30;
  v76 = &off_282A33D70;
  v74[0] = v29;
  v59[0] = type metadata accessor for FollowingViewController(0);
  v31 = objc_allocWithZone(v59[0]);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  v59[1] = v59;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v73[3] = v30;
  v73[4] = &off_282A33D70;
  v73[0] = v37;
  v38 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
  v39 = sub_219BDC104();
  (*(*(v39 - 8) + 56))(&v31[v38], 1, 1, v39);
  v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_viewHasAppearedAtLeastOnce] = 0;
  sub_218718690(v73, &v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler]);
  v40 = &v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler];
  v41 = v61;
  *v40 = v71;
  v40[1] = v41;
  v42 = sub_21871639C(&unk_280EE40D0, 255, sub_21874B344, MEMORY[0x277D6E7F8]);
  v43 = &v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintSelectionProvider];
  v44 = v69;
  *v43 = v70;
  v43[1] = v42;
  v45 = v62;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController] = v63;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_purchaseController] = v45;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_bundleSubscriptionManager] = v44;
  v46 = v67;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_commands] = v68;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_newsActivityManager] = v46;
  v47 = v65;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator] = v66;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_featureAvailability] = v47;
  sub_218718690(v80, &v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider]);
  v48 = v60;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_followingTabGroupManager] = v60;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_tipManager] = v64;
  *&v31[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineBannerCoordinator] = v23;
  v72.receiver = v31;
  v72.super_class = v59[0];

  v61 = v23;

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v49 = v62;
  v50 = v63;

  swift_unknownObjectRetain();
  v51 = v48;
  v52 = objc_msgSendSuper2(&v72, sel_initWithNibName_bundle_, 0, 0);
  *(*(v52 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 24) = &off_282A8FAC8;
  swift_unknownObjectWeakAssign();
  v53 = *(v52 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController);
  v54 = v52;
  v55 = v53;
  sub_219BE8744();

  v56 = *(v54 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_followingTabGroupManager);
  if (v56)
  {
    *(v56 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_delegate + 8) = &off_282A8FA80;
    swift_unknownObjectWeakAssign();
  }

  v57 = v54;
  v58 = sub_219BF53D4();
  [v57 setFocusGroupIdentifier_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  return v57;
}

uint64_t sub_219170338(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = v3 + 1;
  if (v3 + 1 <= 7)
  {
    if (((1 << v4) & 0xC5) != 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      type metadata accessor for FollowingTabGroupManager();
      result = sub_219BE1E24();
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    if (((1 << v4) & 0x1A) != 0)
    {
      return 0;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingTabGroupManager();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21917043C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EE50(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for FollowingRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v10, (v9 + 2));
    v9[7] = v5;
    v9[8] = v6;
    v9[9] = v7;
    a2[3] = v8;
    a2[4] = &off_282A3B198;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2191705C4(uint64_t a1, void *a2)
{
  sub_218718690(a1, v4);
  sub_2186C709C(0, &qword_280ED13B8, &protocol descriptor for FollowingRouterType, 1);
  type metadata accessor for FollowingRouter();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for FollowingViewController(0);
    v3 = sub_219BE1E24();
    swift_unknownObjectWeakAssign();
  }
}

void *sub_219170694@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_21871639C(&qword_280EDFED0, 255, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for FollowingStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A33D70;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2191708F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5120, &protocol descriptor for FollowingInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED13B8, &protocol descriptor for FollowingRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECEB68, &protocol descriptor for FollowingTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21917871C(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A6FE78;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219170BA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187493C0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC1D00, &protocol descriptor for FollowingDataManagerType, 0);
  result = sub_219BE1E34();
  v40 = v61;
  if (!v61)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA94D8, &protocol descriptor for FollowingBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v60[3])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E210, &protocolRef_FCAppActivityMonitor);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E720, &protocolRef_NUURLHandling);
  result = sub_219BE1E24();
  v43 = result;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B0F4(0);
  v9 = v8;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = result;
  v59[3] = v9;
  v59[4] = sub_21871639C(&qword_280EE4690, 255, sub_21874B0F4, MEMORY[0x277D6E390]);
  v59[0] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218703148(0, &qword_280EE7B60, &type metadata for FollowingSelectionModel, MEMORY[0x277D6CB60]);
  result = sub_219BE1E24();
  v42 = result;
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v44 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v35 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
  result = sub_219BE1E34();
  v39 = v57;
  if (!v57)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v41 = v4;
  v32 = v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v53[0])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = result;
  v55 = v12;
  v56 = sub_21871639C(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v54[0] = v13;
  sub_219BE89E4();
  swift_allocObject();
  v38 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B18C(0);
  result = sub_219BE1E24();
  v37 = result;
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65F0, MEMORY[0x277D31718], 1);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E96400, &protocol descriptor for FollowingBlueprintEngagementModifierType, 1);
  result = sub_219BE1E34();
  if (!v53[3])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6540, MEMORY[0x277D31850], 1);
  result = sub_219BE1E34();
  if (!v52[3])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v51[3])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530, &protocol descriptor for EngagementUpsellTriggerStateManagerType, 1);
  result = sub_219BE1E34();
  if (!v50[3])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC9550, &protocol descriptor for TagReorderServiceType, 1);
  result = sub_219BE1E34();
  if (!v49[3])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90328, MEMORY[0x277D33A58], 1);
  result = sub_219BE1E34();
  if (!v48[3])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v47[3])
  {
LABEL_53:
    __break(1u);
    return result;
  }

  sub_219177E4C(0);
  v15 = v14;
  v16 = objc_allocWithZone(v14);
  v17 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v17 & *v16) + 0x68)) = v4;
  *(v16 + *((*v17 & *v16) + 0x70)) = v5;
  v18 = (v16 + *((*v17 & *v16) + 0x78));
  *v18 = v40;
  v18[1] = v6;
  sub_218718690(v60, v16 + *((*v17 & *v16) + 0x80));
  *(v16 + *((*v17 & *v16) + 0x88)) = v43;
  sub_218718690(v59, v16 + *((*v17 & *v16) + 0x90));
  *(v16 + *((*v17 & *v16) + 0x98)) = v42;
  *(v16 + *((*v17 & *v16) + 0xA0)) = v11;
  *(v16 + *((*v17 & *v16) + 0xA8)) = v44;
  v19 = (v16 + *((*v17 & *v16) + 0xB0));
  *v19 = v39;
  v19[1] = v32;
  *(v16 + *((*v17 & *v16) + 0xB8)) = v38;
  *(v16 + *((*v17 & *v16) + 0xC0)) = v37;
  sub_218718690(v54, v16 + *((*v17 & *v16) + 0xC8));
  sub_218718690(v53, v16 + *((*v17 & *v16) + 0xE0));
  sub_218718690(v52, v16 + *((*v17 & *v16) + 0xD0));
  sub_218718690(v51, v16 + *((*v17 & *v16) + 0xD8));
  sub_218718690(v50, v16 + *((*v17 & *v16) + 0xF8));
  sub_218718690(v49, v16 + *((*v17 & *v16) + 0xE8));
  sub_218718690(v48, v16 + *((*v17 & *v16) + 0xF0));
  *(v16 + *((*v17 & *v16) + 0x100)) = v36;
  sub_218718690(v47, v16 + *((*v17 & *v16) + 0x108));
  v46.receiver = v16;
  v46.super_class = v15;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v33 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v46, sel_init);
  sub_21871639C(qword_280ED13E0, 255, sub_219177E4C, &unk_219C1A9B8);
  v21 = v20 + *((*v17 & *v20) + 0xC8);
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v21, *(v21 + 24));
  v22 = v20;
  sub_219BE38B4();
  swift_endAccess();
  *(*(v22 + *((*v17 & *v22) + 0x78)) + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate + 8) = &off_282A36688;
  swift_unknownObjectWeakAssign();
  [v35 addObserver_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v45);
  if ([v36 useOfflineMode])
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v5;
    v24[4] = v41;
    v25 = off_282A49460[0];
    type metadata accessor for FollowingDataManager();

    v25(sub_219178380, v24);
  }

  v26 = v22;
  [v44 addObserver_];
  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  if (qword_280E8E318 != -1)
  {
    swift_once();
  }

  [v28 addObserver:v26 selector:sel_handlePurchaseListChangedNotificationWithNotification_ name:qword_280F61810 object:0];

  v29 = [v27 defaultCenter];
  v30 = qword_280E8E310;
  v31 = v26;
  if (v30 != -1)
  {
    swift_once();
  }

  [v29 addObserver:v31 selector:sel_handlePurchaseListChangedNotificationWithNotification_ name:qword_280F61808 object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v59);
  result = __swift_destroy_boxed_opaque_existential_1(v60);
  *a2 = v31;
  a2[1] = &off_282A366E8;
  return result;
}

uint64_t sub_219171BA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v16 = sub_219BDF554();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE0204();
    result = sub_219BE1E24();
    if (result)
    {
      v12 = result;
      v13 = type metadata accessor for FollowingTracker();
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      (*(v3 + 104))(v5, *MEMORY[0x277D2DB40], v16);

      sub_219BDF534();
      sub_21871639C(&unk_280EE8750, 255, MEMORY[0x277D2DB28], MEMORY[0x277D2DB20]);
      sub_219BDD1F4();

      result = (*(v7 + 8))(v9, v6);
      v15 = v17;
      v17[3] = v13;
      v15[4] = &off_282A57C68;
      *v15 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219171E48()
{
  sub_218A2D09C(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_219177D88(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2187486B4(0);
  sub_21917838C(0, &unk_280E8BED8, sub_218950928, MEMORY[0x277D84560]);
  sub_218950928(0);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218950B84(0);
  v7 = v6;
  v8 = sub_21871639C(&unk_280EE5C80, 255, sub_218950B84, MEMORY[0x277D6D408]);
  v9 = sub_21871639C(&unk_280EE5C90, 255, sub_218950B84, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v7, v8, v9);
  type metadata accessor for FollowingModel(0);
  sub_2187490E4();
  sub_21871639C(&qword_280EDC630, 255, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE6924();
  v10 = sub_21871639C(&qword_280EE5770, 255, sub_218950928, MEMORY[0x277D6D720]);
  v11 = sub_21871639C(&qword_280EE5778, 255, sub_218950928, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](v5, v4, v10, v11);
  sub_219BEB2D4();
  return sub_219BE6F84();
}

uint64_t sub_219172224(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187494B4(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187493C0(0);
      swift_allocObject();
      return sub_219BE6EA4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21917230C(uint64_t a1, void *a2)
{
  sub_219177D68(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_219177D88(0, &qword_280EE45A8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21871639C(&qword_280EE4440, 255, sub_219177D68, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21874AA08(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_21871639C(&qword_280EE3BE8, 255, sub_21874AA08, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2191724AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218749930(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874AB74(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21874AA08(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2191726B8(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_21874A490();
    result = sub_219BE1E24();
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_2187495C4(0);
      result = sub_219BE1E24();
      if (result)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
        result = sub_219BE1E34();
        if (v6)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_21874B438(0);
          result = sub_219BE1E24();
          if (result)
          {
            sub_21871639C(&qword_280EE48E0, 255, sub_21874B438, MEMORY[0x277D6E070]);
            sub_2187494B4(0);
            swift_allocObject();
            return sub_219BE72D4();
          }

          goto LABEL_19;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v5)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B438(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_21871639C(&qword_280EE48E0, 255, sub_21874B438, MEMORY[0x277D6E070]);
  sub_2187494B4(0);
  swift_allocObject();
  return sub_219BE72B4();
}

uint64_t sub_219172A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_219172AE0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A130, &protocol descriptor for TitleViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1DF4();
  if (!v52)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingFooterViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingBrowseButtonViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E4D0, &protocol descriptor for TagViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingEngagementViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = result;
  v41 = v6;
  v42 = v5;
  v43 = v4;
  v44 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v39[1] = v39;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v39[0] = v39;
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v11;
    v19 = *v16;
    v20 = type metadata accessor for TitleViewLayoutAttributesFactory();
    v48[3] = v20;
    v48[4] = &off_282A72438;
    v48[0] = v18;
    v21 = type metadata accessor for TagViewLayoutAttributesFactory();
    v46 = v21;
    v47 = &off_282A3D208;
    v45[0] = v19;
    type metadata accessor for FollowingLayoutBuilder();
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v48, v20);
    v24 = MEMORY[0x28223BE20](v23);
    v26 = (v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v29 = MEMORY[0x28223BE20](v28);
    v31 = (v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = *v26;
    v34 = *v31;
    v22[5] = v20;
    v22[2] = v33;
    v22[13] = v21;
    v22[14] = &off_282A3D208;
    v35 = v44;
    v22[6] = &off_282A72438;
    v22[7] = v35;
    v36 = v43;
    v22[10] = v34;
    v37 = v42;
    v22[8] = v36;
    v22[9] = v37;
    v38 = v40;
    v22[15] = v41;
    v22[16] = v38;
    v22[17] = v7;
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return v22;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2191730D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B0F4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21871639C(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21874ACB0(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2191733E0(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8], v4);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21874B438(0);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_21871639C(&qword_280EE48E0, 255, sub_21874B438, MEMORY[0x277D6E070]);
  }

  else
  {
    v8 = 0;
    v12[2] = 0;
    v12[3] = 0;
  }

  v12[1] = v10;
  v12[4] = v8;
  v12[5] = v9;
  return sub_219BE86F4();
}

id sub_219173554(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874ADF8(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191735FC(void *a1)
{
  v2 = sub_219BE7AA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218749A24(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874A730(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874A8C0(0);
  result = sub_219BE1E24();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6DC38], v2);
    sub_2187495C4(0);
    swift_allocObject();
    return sub_219BE7BA4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219173818(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingViewController(0);
  if (sub_219BE1E24())
  {
    sub_219BE7BD4();
    sub_219BED0C4();
    v2 = sub_219BE7BC4();
    [v2 setSelectionFollowsFocus_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_2191738B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = sub_219BE7BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2186CB1F0(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3A98, MEMORY[0x277D6EB08], 1);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_2186CB1F0(&v11, &v13);
    sub_218718690(v15, v10);
    v6 = swift_allocObject();
    sub_2186CB1F0(v10, v6 + 16);
    *(v6 + 56) = v5;
    sub_219BE95A4();
    swift_allocObject();
    v7 = v5;
    v8 = sub_219BE9594();
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = MEMORY[0x277D6E690];
    *a2 = v8;
    a2[1] = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219173A90()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE8], v1);
  return sub_219BE9574();
}

uint64_t sub_219173B60(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874B000(0);
    result = sub_219BE1DE4();
    if (result)
    {
      sub_21874ADF8(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BEA524();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219173C4C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
    sub_219BE1DF4();
    if (v5)
    {
      sub_219BEA534();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_219173D70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21874AF0C(0);
    swift_allocObject();
    return sub_219BEA664();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219173E1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    sub_219177CD0(0);
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    a2[3] = v6;
    result = sub_21871639C(qword_280E94640, 255, sub_219177CD0, &protocol conformance descriptor for FollowingCompositionalLayoutOptionsProvider<A>);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219173EDC(void *a1)
{
  sub_21917838C(0, &qword_280EE3560, MEMORY[0x277D74DB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_219BEBB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1DF4();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874AF0C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21874B000(0);
      v13 = sub_219BEA554();
      (*(v6 + 8))(v11, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

void *sub_219174154(void *a1)
{
  v2 = sub_219BEBB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEBAF4();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 104))(&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D74D58], v7);
  sub_219BEBB24();
  (*(v3 + 104))(v5, *MEMORY[0x277D74D90], v2);
  sub_219BEBB44();
  sub_219BEBB74();
  sub_219BEBB64();
  if (sub_219BED0C4())
  {
    v10 = [objc_opt_self() clearColor];
    sub_219BEBB54();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
    result = sub_219BE1E34();
    if (!v15)
    {
      goto LABEL_8;
    }

    v12 = *(*__swift_project_boxed_opaque_existential_1(v14, v15) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEBB54();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874AF0C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BEA654();

    return sub_219BEBAE4();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_219174408(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_21874A490();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218749A24(0);
      swift_allocObject();
      return sub_219BEA424();
    }

    __break(1u);
  }

  else
  {
    sub_21874974C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218749A24(0);
      swift_allocObject();
      return sub_219BEA414();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2191744CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874974C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B18C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21874A490();
    swift_allocObject();
    return sub_219BEA634();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219174604(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218749930(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_21874974C(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2191747A0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191748B0(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_21874B18C(0);
    result = sub_219BE1E24();
    if (result)
    {
      return sub_219BE9B84();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_219174918(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218749930(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B0F4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_21871639C(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_21874A730(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_219174B6C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21874B344(0);
  if (sub_219BE1E24())
  {
    sub_21871639C(&unk_280EE40D0, 255, sub_21874B344, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21874ACB0(0);
  v3 = sub_219BE1E24();
  sub_219BE9714();
}

uint64_t sub_219174CD4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218749930(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21874A8C0(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BEA184();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219174DC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingBrowseButtonViewRenderer();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingSettingsButtonViewRenderer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECFD08, &protocol descriptor for TagViewRendererType, 1);
  result = sub_219BE1E34();
  if (!v49)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingEngagementViewManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE6DB4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = result;
  v38 = v6;
  v39 = v5;
  v40 = v4;
  v41 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E94060, &protocol descriptor for SidebarListContentConfigurationRendererType, 1);
  result = sub_219BE1E34();
  if (v47)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v36[1] = v36;
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36[0] = v36;
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v10;
    v18 = *v15;
    v19 = type metadata accessor for TagViewRenderer();
    v45[3] = v19;
    v45[4] = &off_282A46F20;
    v45[0] = v17;
    v20 = type metadata accessor for SidebarListContentConfigurationRenderer();
    v43 = v20;
    v44 = &off_282A643C0;
    v42[0] = v18;
    type metadata accessor for FollowingViewCellProvider();
    v21 = swift_allocObject();
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v45, v19);
    v23 = MEMORY[0x28223BE20](v22);
    v25 = (v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v28 = MEMORY[0x28223BE20](v27);
    v30 = (v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = *v25;
    v33 = *v30;
    v21[7] = v19;
    v21[8] = &off_282A46F20;
    v21[4] = v32;
    v21[17] = v20;
    v21[18] = &off_282A643C0;
    v21[14] = v33;
    v21[12] = 0;
    swift_unknownObjectWeakInit();
    v34 = v40;
    v21[2] = v41;
    v21[3] = v34;
    v21[13] = v38;
    v35 = v37;
    v21[9] = v39;
    v21[10] = v35;
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return v21;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_219175374(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_219BED0C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingViewController(0);
  v5 = sub_219BE1E24();
  v4 = &off_282A8FB28;
  if (!v5)
  {
    v4 = 0;
  }

  *(v3 + 96) = v4;
  swift_unknownObjectWeakAssign();
}

void *sub_219175418(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA9380, &protocol descriptor for FollowingHeaderViewRendererType, 1);
  result = sub_219BE1E34();
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874B18C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for FollowingHeaderViewRenderer();
      v18[3] = v10;
      v18[4] = &off_282A60170;
      v18[0] = v9;
      type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[5] = v10;
      v11[6] = &off_282A60170;
      v11[2] = v17;
      v11[7] = v3;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219175674(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219177C30(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21874B0F4(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191758D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21874B18C(0);
    swift_allocObject();
    return sub_219BEA394();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21917596C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SidebarListContentConfigurationRenderer();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A643C0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219175A5C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v17[3] = v7;
    v17[4] = a3;
    v17[0] = result;
    a4(0);
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v7;
    v9[6] = a3;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219175BB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = type metadata accessor for FollowingBrowseButtonViewStyler();
  result = sub_219BE1E24();
  if (result)
  {
    v11[3] = v1;
    v11[4] = &off_282A9BB60;
    v11[0] = result;
    type metadata accessor for FollowingBrowseButtonViewLayoutAttributesFactory();
    v3 = swift_allocObject();
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v3[5] = v1;
    v3[6] = &off_282A9BB60;
    v3[2] = v9;
    sub_21895F6F8(0, &qword_280EE70E0, &type metadata for FollowingBrowseButtonViewLayoutAttributes);
    swift_allocObject();
    v3[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219175D2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = type metadata accessor for FollowingSettingsButtonViewStyler();
  result = sub_219BE1E24();
  if (result)
  {
    v11[3] = v1;
    v11[4] = &off_282A3BF18;
    v11[0] = result;
    type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
    v3 = swift_allocObject();
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v3[5] = v1;
    v3[6] = &off_282A3BF18;
    v3[2] = v9;
    sub_21895F6F8(0, &qword_280EE70D0, &type metadata for FollowingSettingsButtonViewLayoutAttributes);
    swift_allocObject();
    v3[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219175EA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6580, MEMORY[0x277D31808], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for FollowingEngagementViewLayoutAttributesFactory();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219175F40@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280EBF068, &protocolRef_TSEditorialItemProvider);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for EditorialService();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC7NewsUI216EditorialService_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v6[OBJC_IVAR____TtC7NewsUI216EditorialService_editorialItemProvider] = v4;
    v10.receiver = v6;
    v10.super_class = v5;
    swift_unknownObjectRetain();
    v7 = objc_msgSendSuper2(&v10, sel_init);
    v8 = *(v7 + OBJC_IVAR____TtC7NewsUI216EditorialService_editorialItemProvider);
    v9 = v7;
    [v8 setItemChangeDelegate_];

    result = swift_unknownObjectRelease();
    a2[3] = v5;
    a2[4] = &off_282A93328;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21917605C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECEEC8, &protocol descriptor for EditorialServiceType, 1);
  result = sub_219BE1E34();
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v5 = v25;
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v24)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for EditorialService();
    v22[3] = v13;
    v22[4] = &off_282A93328;
    v22[0] = v12;
    type metadata accessor for FollowingEditorialService();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[5] = v13;
    v14[6] = &off_282A93328;
    v14[2] = v20;
    v14[7] = v5;
    v14[8] = v6;
    sub_2186CB1F0(&v23, (v14 + 9));
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    *a2 = v14;
    a2[1] = &off_282A300F0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219176344(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740, 0x277D31288);
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260, MEMORY[0x277D33C38], 1);
  sub_219BE1E34();
  if (!v19[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for FollowingBadgingCoordinator();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v11[OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingList] = v5;
    *&v11[OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_userInfo] = v7;
    sub_218718690(v19, &v11[OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_sharedItemManager]);
    *&v11[OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingHistory] = v9;
    v18.receiver = v11;
    v18.super_class = v10;
    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = objc_msgSendSuper2(&v18, sel_init);
    v16 = *(v15 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingList);
    v17 = v15;
    [v16 addObserver_];
    [*(v17 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_userInfo) addObserver_];
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_sharedItemManager), *(v17 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_sharedItemManager + 24));
    sub_21871639C(qword_280EB8C20, 255, type metadata accessor for FollowingBadgingCoordinator, &unk_219CA971C);
    sub_219BF2F24();
    [*(v17 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingHistory) addObserver_];

    __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v10;
    a2[4] = &off_282A89CA0;
    *a2 = v17;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_219176630(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v116)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E808, &protocolRef_FCTagRanking);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0, &protocol descriptor for ShortcutServiceType, 1);
  result = sub_219BE1E34();
  if (!v115)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  if (!v112)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v85 = v113;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB09E0, &protocol descriptor for FollowingEditorialServiceType, 0);
  result = sub_219BE1E34();
  v84 = v110;
  if (!v110)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v83 = v111;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  v82 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA94D8, &protocol descriptor for FollowingBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v109)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DB0, &protocol descriptor for MagazinesBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v107)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3490, &protocol descriptor for PuzzleBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (!v105)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAFB10, &protocol descriptor for NotificationConfigurationType, 1);
  result = sub_219BE1E34();
  if (!v103)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EA4AF0, &protocolRef_TSSiriSuggestionStatusProvider);
  result = sub_219BE1E24();
  v81 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  v80 = result;
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v79 = result;
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
  result = sub_219BE1E34();
  v78 = v100;
  if (!v100)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v77 = v101;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v99)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v97)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v71 = v112;
  v72 = v4;
  v73 = v117;
  v74 = v116;
  v75 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  v76 = result;
  if (result)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
    v70 = v63;
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v69 = v63;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v68 = v63;
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v67 = v63;
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v8;
    v26 = *v13;
    v27 = *v18;
    v28 = *v23;
    v29 = type metadata accessor for ShortcutService();
    v95[3] = v29;
    v95[4] = &off_282A3DCA0;
    v95[0] = v25;
    v65 = type metadata accessor for FollowingBadgingCoordinator();
    v93 = v65;
    v94 = &off_282A89CA0;
    v92[0] = v26;
    v64 = type metadata accessor for MagazinesBadgingCoordinator();
    v90 = v64;
    v91 = &off_282A3A448;
    v89[0] = v27;
    v30 = type metadata accessor for PuzzleBadgingCoordinator();
    v87 = v30;
    v88 = &off_282A2FF18;
    v86[0] = v28;
    type metadata accessor for FollowingModifierFactory();
    v31 = swift_allocObject();
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v95, v29);
    v66 = v63;
    v33 = MEMORY[0x28223BE20](v32);
    v35 = (v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v63[1] = v63;
    v38 = MEMORY[0x28223BE20](v37);
    v40 = (v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    v63[0] = v63;
    v43 = MEMORY[0x28223BE20](v42);
    v45 = (v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45, v43);
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
    v48 = MEMORY[0x28223BE20](v47);
    v50 = (v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50, v48);
    v52 = *v35;
    v53 = *v40;
    v54 = *v45;
    v55 = *v50;
    v31[9] = v29;
    v31[10] = &off_282A3DCA0;
    v31[6] = v52;
    v31[19] = v65;
    v31[20] = &off_282A89CA0;
    v31[24] = v64;
    v31[25] = &off_282A3A448;
    v31[21] = v54;
    v31[29] = v30;
    v31[30] = &off_282A2FF18;
    v31[26] = v55;
    v56 = v74;
    v31[2] = v75;
    v31[3] = v56;
    v57 = v72;
    v31[4] = v73;
    v31[5] = v57;
    v58 = v84;
    v59 = v85;
    v31[11] = v71;
    v31[12] = v59;
    v31[13] = v58;
    v60 = v82;
    v31[14] = v83;
    v31[15] = v60;
    v31[16] = v53;
    sub_2186CB1F0(&v102, (v31 + 31));
    v61 = v80;
    v31[36] = v81;
    v31[37] = v61;
    v62 = v78;
    v31[38] = v79;
    v31[39] = v62;
    v31[40] = v77;
    sub_2186CB1F0(&v98, (v31 + 41));
    sub_2186CB1F0(&v96, (v31 + 46));
    v31[51] = v76;
    __swift_destroy_boxed_opaque_existential_1(v86);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v92);
    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v106);
    __swift_destroy_boxed_opaque_existential_1(v108);
    __swift_destroy_boxed_opaque_existential_1(v114);
    return v31;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_219177360(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  result = sub_219BE1E24();
  if (result)
  {
    return a4();
  }

  __break(1u);
  return result;
}

uint64_t sub_2191773E0(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874B344(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21871639C(&qword_280EE40E0, 255, sub_21874B344, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219177520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_21874B344(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21917765C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21874ACB0(0);
  if (sub_219BE1E24())
  {
    sub_21871639C(&qword_280EE4AC0, 255, sub_21874ACB0, MEMORY[0x277D6DFD0]);
  }

  return sub_219BE9AC4();
}

uint64_t sub_21917770C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191777D4(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    a3(0);
    swift_allocObject();
    return a4(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219177874(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218749930(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187495C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187486B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219177AAC(0);
    v5 = v4;
    swift_allocObject();
    v6 = sub_219BEA694();
    v7[3] = v5;
    v7[4] = sub_21871639C(&qword_280EE3A18, 255, sub_219177AAC, MEMORY[0x277D6EB78]);
    v7[0] = v6;
    sub_219BE8924();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2191779F0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874ACB0(0);
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for FollowingBlueprintEngagementModifier();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 24) = 514;
    *(v6 + 32) = 0x4010000000000000;
    swift_unknownObjectWeakAssign();

    a2[3] = v5;
    a2[4] = &off_282AA2950;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_219177AAC(uint64_t a1)
{
  if (!qword_280EE3A10)
  {
    sub_218749930(255);
    sub_2187495C4(255);
    type metadata accessor for FollowingModel(255);
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930, MEMORY[0x277D6DF38]);
    sub_21871639C(&qword_280EE4F68, 255, sub_2187495C4, MEMORY[0x277D6DC88]);
    sub_2187490E4();
    sub_21871639C(&qword_280EDC630, 255, type metadata accessor for FollowingModel, &unk_219C48188);
    v1 = sub_219BEA6A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3A10);
    }
  }
}

void sub_219177C30(uint64_t a1)
{
  if (!qword_280EE4718)
  {
    sub_2187486B4(255);
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4718);
    }
  }
}

void sub_219177CD0(uint64_t a1)
{
  if (!qword_280E94638)
  {
    sub_2187486B4(255);
    v3 = v2;
    v4 = sub_21871639C(&unk_280EE5550, 255, sub_2187486B4, MEMORY[0x277D6D8C8]);
    v6 = type metadata accessor for FollowingCompositionalLayoutOptionsProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280E94638);
    }
  }
}

void sub_219177D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_21871639C(&qword_280EDC630, 255, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219177E4C(uint64_t a1)
{
  if (!qword_280ED13D0)
  {
    v2 = type metadata accessor for FollowingModifierFactory();
    v3 = sub_21871639C(qword_280EC1C28, 255, type metadata accessor for FollowingModifierFactory, &unk_219C1BD78);
    v5 = type metadata accessor for FollowingInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280ED13D0);
    }
  }
}

uint64_t sub_219177EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeModule();
  v35[3] = v4;
  v35[4] = &off_282A30F30;
  v35[0] = a1;
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  v5 = __swift_project_boxed_opaque_existential_1(v35, v4);
  v6 = *v5;
  v7 = *(*v5 + 64);
  if (v7)
  {
    v8 = *(*v5 + 64);
  }

  else
  {
    sub_2189EEC54();
    v9 = *(v6 + 64);
    *(v6 + 64) = v10;
    v8 = v10;
  }

  v11 = type metadata accessor for SearchHomeCoordinatingController();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
  *v14 = 0;
  v14[8] = 1;
  *&v12[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] = v8;
  v34.receiver = v12;
  v34.super_class = v11;
  v15 = v7;
  v16 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
  v17 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
  [v17 setDelegate_];
  v18 = [v17 searchBar];
  [v18 setDelegate_];

  [v17 setShowsSearchResultsController_];
  v19 = [v17 searchBar];
  [v19 setAutocorrectionType_];

  v20 = [v17 searchBar];
  [v20 setAutocapitalizationType_];

  v21 = [v17 searchBar];
  [v21 setLookToDictateEnabled_];

  v22 = [v17 searchBar];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v25 = sub_219BF53D4();

  [v22 setPlaceholder_];

  swift_unknownObjectWeakAssign();
  v26 = v17;
  sub_21903F5E8();

  *(a2 + 16) = v16;
  *(a2 + 24) = v26;
  v27 = &v16[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate];
  *&v16[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate + 8] = &off_282A36500;
  swift_unknownObjectWeakAssign();
  v28 = *&v16[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v29 = v26;
  v30 = v16;

  v31 = [v28 parentViewController];
  if (v31 && (v32 = v31, v31, v32 == v30))
  {
    swift_unknownObjectWeakLoadStrong();
    *&v28[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = *(v27 + 1);
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return a2;
}

double sub_2191782FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_218D1FC0C(v2, v3);
    sub_21916BA20(v7, v8);
  }

  return result;
}

void sub_21917838C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191783F0(uint64_t a1, uint64_t a2)
{
  sub_21917838C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_219178484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21917838C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2191784F4(uint64_t a1, uint64_t a2)
{
  sub_21917838C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    sub_218A1BF30(a1, v5);
    sub_219BEA2C4();
    v8 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
    swift_beginAccess();
    sub_2191783F0(a1, v7 + v8);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_219178624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for FollowingRouter();
  v15[4] = &off_282A3B198;
  v15[0] = a3;
  v14[3] = type metadata accessor for FollowingTracker();
  v14[4] = &off_282A57C68;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A6FDE8, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21917871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for FollowingRouter();
  v27 = &off_282A3B198;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A57C68;
  v22[0] = a4;
  type metadata accessor for FollowingEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_219178624(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t type metadata accessor for TagsSearchMoreFeedGroup(uint64_t a1)
{
  result = qword_27CC16BA8;
  if (!qword_27CC16BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2191789BC(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_218A354D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219178A50(uint64_t a1)
{
  v2 = sub_219178E30(&unk_27CC16BD0, &unk_219C620E0);

  return MEMORY[0x282191938](a1, v2);
}

char *sub_219178B58(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  v6 = *(a1 + *(v5 + 24));
  if (v6 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_18;
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v32 = v2;
    v10 = 0;
    v8 = v33;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 identifier];
      v13 = sub_219BF5414();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v33 + 16);
      v16 = *(v33 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21870B65C((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v33 + 16) = v17 + 1;
      v18 = v33 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v7 != v10);
    v2 = v32;
LABEL_18:
    v19 = *(v2 + *(v5 + 24));
    if (v19 >> 62)
    {
      v20 = sub_219BF7214();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (!v20)
    {
LABEL_29:
      v31 = sub_219417FCC(v8, v21);

      return (v31 & 1);
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v34;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CECE0F0](v22, v19);
        }

        else
        {
          v23 = *(v19 + 8 * v22 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 identifier];
        v25 = sub_219BF5414();
        v27 = v26;
        swift_unknownObjectRelease();

        v29 = *(v34 + 16);
        v28 = *(v34 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_21870B65C((v28 > 1), v29 + 1, 1);
        }

        ++v22;
        *(v34 + 16) = v29 + 1;
        v30 = v34 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v20 != v22);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_219178E30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TagsSearchMoreFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219178E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SavedStoriesTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA2040;
  if (!qword_280EA2040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219178F30(uint64_t a1)
{
  sub_2186E13DC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SavedStoriesTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219178FD4(uint64_t a1)
{
  v1 = type metadata accessor for SavedStoriesTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavedStoriesTodayFeedGroupEmitter(0);
  v17 = 22;
  sub_2189AE994(0);
  v4 = sub_219BEE964();
  sub_2186ECCCC(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  sub_2186E13DC(0);
  sub_219BEDD14();
  v10 = sub_219BF1784();
  v12 = v11;
  v13 = sub_219BF1934();
  (*(*(v13 - 8) + 8))(v3, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  sub_218D90870(0);
  swift_allocObject();
  *(v9 + v8) = sub_219BEFB94();
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277D32308], v6);
  v16 = v4;
  sub_2191EE478(v9);
  return v16;
}

uint64_t sub_21917924C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for TodayFeedGroup(0);
  v3[7] = swift_task_alloc();
  v4 = MEMORY[0x277D83D88];
  sub_2186ECCCC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();
  sub_2186ECCCC(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[9] = swift_task_alloc();
  sub_2186ECCCC(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[10] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_2186F97D4(0);
  v3[17] = swift_task_alloc();
  v7 = sub_219BEF554();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  type metadata accessor for SavedStoriesTodayFeedGroupConfigData(0);
  v3[22] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2191795B0, 0, 0);
}

uint64_t sub_2191795B0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v22 = *(v0 + 112);
  v23 = *(v0 + 80);
  v24 = *(v0 + 72);
  v25 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 24));
  sub_2186E13DC(0);
  sub_219BEDD14();
  sub_219BEDCC4();
  sub_219BEDCC4();
  v5 = *(v4 + 20);
  *(v0 + 248) = v5;
  v6 = v3 + v5;
  *(v0 + 208) = type metadata accessor for SavedStoriesTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_2189AE9B4(0);
  sub_219BEEC94();
  v7 = *(v2 + 8);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v22);
  sub_2189AE994(0);
  v9 = v8;
  v10 = *(v8 - 8);
  (*(v10 + 16))(v23, v6, v8);
  (*(v10 + 56))(v23, 0, 1, v9);
  v11 = sub_219BF35D4();
  (*(*(v11 - 8) + 56))(v24, 1, 1, v11);
  *(v0 + 252) = 22;
  sub_218D451AC(0);
  swift_allocObject();

  sub_219BF38D4();
  v12 = sub_219BF2774();
  (*(*(v12 - 8) + 56))(v25, 1, 1, v12);
  v13 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v13 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v14 = swift_task_alloc();
  *(v0 + 232) = v14;
  *v14 = v0;
  v14[1] = sub_21917996C;
  v15 = *(v0 + 200);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v19 = *(v0 + 136);
  v20 = MEMORY[0x277D84F90];

  return sub_218F0A5B4(v15, v16, 0x73656C6369747261, 0xE800000000000000, v17, v18, v20, v19);
}

uint64_t sub_21917996C()
{
  v14 = *(*v1 + 176);
  v13 = *(*v1 + 168);
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 240) = v0;

  (*(v7 + 8))(v6, v8);
  sub_218DCF544(v5, sub_2186F97D4);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v13, v4);
  v10 = sub_219BF1934();
  (*(*(v10 - 8) + 8))(v14, v10);
  if (v0)
  {
    v11 = sub_219179DD0;
  }

  else
  {
    v11 = sub_219179BF8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_219179BF8()
{
  v11 = v0[27];
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[16];
  v10 = v0[14];
  v5 = v0[7];
  v6 = v0[3];
  (*(v2 + 16))(v5, v1, v3);
  sub_219BEF134();
  sub_219BEF524();
  v11(v4, v10);
  (*(v2 + 8))(v1, v3);
  v7 = v0[2];
  *(v5 + *(type metadata accessor for SavedStoriesTodayFeedGroup(0) + 20)) = v7;
  swift_storeEnumTagMultiPayload();
  sub_218D90770(v5, v6);
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_219179DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219179EC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_21917924C(a1, a2);
}

uint64_t sub_219179F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_219179F88, 0, 0);
}

uint64_t sub_219179F88()
{
  v1 = v0[2];
  sub_21917A510(v0[3], v1, sub_218D3BC94);
  sub_218D3BC94(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_21917A044@<X0>(uint64_t a1@<X8>)
{
  sub_2186E13DC(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21917A0C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SavedStoriesTodayFeedGroupKnobs(0);
  a2[4] = sub_219178E88(&qword_280EA8368, type metadata accessor for SavedStoriesTodayFeedGroupKnobs, &unk_219CBA4B0);
  a2[5] = sub_219178E88(&qword_280EA8370, type metadata accessor for SavedStoriesTodayFeedGroupKnobs, &unk_219CBA4D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21917A510(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
}

uint64_t sub_21917A18C()
{
  sub_2186E13DC(0);

  return sub_219BEDCA4();
}

uint64_t sub_21917A1B8@<X0>(uint64_t *a2@<X8>)
{
  sub_2186ECCCC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E13DC(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DCF544(inited + 32, sub_2188317B0);
  sub_21917A578(0);
  a2[3] = v6;
  a2[4] = sub_219178E88(&unk_280EE7748, sub_21917A578, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21917A33C(uint64_t a1)
{
  sub_219178E88(&qword_280EA2058, type metadata accessor for SavedStoriesTodayFeedGroupEmitter, &unk_219C621BC);

  return sub_219BE2324();
}

uint64_t sub_21917A510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21917A5AC(void *a1)
{
  swift_beginAccess();
  v24 = v1;
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_24:
    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_219BF7214();
  }

  else
  {
    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v26 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v4, v3);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(v3 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    v7 = [v6 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = a1;
    v12 = [a1 identifier];
    v13 = sub_219BF5414();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {

      swift_unknownObjectRelease();

LABEL_20:

      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      v21 = qword_280F61728;
      v22 = sub_219BF6214();
      sub_2186F20D4(0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      sub_218731D50();
      sub_219BF7484();
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_2186FC3BC();
      *(v23 + 32) = 0;
      *(v23 + 40) = 0xE000000000000000;
      sub_219BE5314("Trying add headline already in inventory %{public}@", 51, 2, &dword_2186C1000, v21, v22, v23);

      return result;
    }

    v5 = sub_219BF78F4();
    swift_unknownObjectRelease();

    ++v4;
    a1 = v11;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v16 = qword_280F61728;
  v17 = sub_219BF6214();
  sub_2186F20D4(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  sub_218731D50();
  sub_219BF7484();
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2186FC3BC();
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  sub_219BE5314("Adding headline to inventory %{public}@", 39, 2, &dword_2186C1000, v16, v17, v18);

  swift_beginAccess();
  v19 = swift_unknownObjectRetain();
  MEMORY[0x21CECC690](v19);
  if (*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  swift_endAccess();
  return result;
}

void sub_21917A9E4(uint64_t a1)
{
  if (qword_280E8D830 != -1)
  {
LABEL_28:
    swift_once();
  }

  v3 = qword_280F61728;
  v4 = sub_219BF6214();
  sub_219BE5314("Looking for headline in inventory", 33, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (v5 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }

LABEL_30:
    v31 = sub_219BF6214();
    sub_219BE5314("No headline in inventory", 24, 2, &dword_2186C1000, v3, v31, MEMORY[0x277D84F90], v33, v34);
LABEL_31:
    type metadata accessor for PersonalizationScriptTestCase.Errors(0);
    sub_21917AE84(v32);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_4:
  v35 = v1;
  v6 = *(v1 + 16);
  v36 = v3;
  if (v6 >> 62)
  {
    v1 = sub_219BF7214();
  }

  else
  {
    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v6 & 0xC000000000000001;
  v8 = v6 + 32;

  v9 = 0;
  v37 = a1 + 40;
  v33 = v6 + 32;
  v34 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v1)
    {

      v30 = sub_219BF6214();
      sub_219BE5314("No headline in inventory satisfying conditions", 46, 2, &dword_2186C1000, v36, v30, MEMORY[0x277D84F90], v33, v34);
      goto LABEL_31;
    }

    if (!v7)
    {
      break;
    }

    v10 = MEMORY[0x21CECE0F0](v9, v6);
    if (!a1)
    {
      goto LABEL_18;
    }

LABEL_11:
    v11 = a1;
    v12 = *(a1 + 16) + 1;
    v13 = v37;
    do
    {
      if (!--v12)
      {

        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      v14 = v13 + 16;
      v15 = *(v13 - 8);
      v38 = v10;

      v15(&v40, &v38);

      v13 = v14;
    }

    while ((v40 & 1) != 0);
    swift_unknownObjectRelease();
    v16 = __OFADD__(v9++, 1);
    a1 = v11;
    v8 = v6 + 32;
    v7 = v6 & 0xC000000000000001;
    if (v16)
    {
      goto LABEL_36;
    }
  }

  if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = *(v8 + 8 * v9);
  swift_unknownObjectRetain();
  if (a1)
  {
    goto LABEL_11;
  }

LABEL_18:
  swift_unknownObjectRelease();

  v9 = 0;
LABEL_20:
  swift_beginAccess();
  v17 = *(v35 + 16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x21CECE0F0](v9);
LABEL_23:
    swift_endAccess();
    swift_beginAccess();
    sub_218FE8864(v9);
    swift_endAccess();
    swift_unknownObjectRelease();
    v19 = sub_219BF6214();
    sub_2186F20D4(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    v21 = *(v35 + 16);
    if (v21 >> 62)
    {
      v22 = sub_219BF7214();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v22;
    v23 = sub_219BF7894();
    v25 = v24;
    v26 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v27 = sub_2186FC3BC();
    *(v20 + 64) = v27;
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    v38 = 0;
    v39 = 0xE000000000000000;
    v40 = v18;
    sub_218731D50();
    sub_219BF7484();
    v28 = v38;
    v29 = v39;
    *(v20 + 96) = v26;
    *(v20 + 104) = v27;
    *(v20 + 72) = v28;
    *(v20 + 80) = v29;
    sub_219BE5314("Found headline in inventory %{public}@ headlines remaining in inventory %{public}@", 82, 2, &dword_2186C1000, v36, v19, v20);
  }

  else
  {
    if (v9 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      goto LABEL_23;
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }
}

unint64_t sub_21917AE84(double a1)
{
  result = qword_27CC16BE0;
  if (!qword_27CC16BE0)
  {
    type metadata accessor for PersonalizationScriptTestCase.Errors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16BE0);
  }

  return result;
}

uint64_t SportsFavoritesConfig.scrollingTrait.getter@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  sub_21917B0D4(0, a2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1814();
  v6 = sub_219BF2A74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  (*(v7 + 104))(a1, *MEMORY[0x277D33A98], v6);
  result = (v8)(v5, 1, v6);
  if (result != 1)
  {
    return sub_218B206E8(v5);
  }

  return result;
}

void sub_21917B0D4(uint64_t a1, __n128 a2)
{
  if (!qword_280E90308)
  {
    sub_219BF2A74();
    v2 = sub_219BF6FB4();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90308);
    }
  }
}

uint64_t SportsFavoritesConfig.__allocating_init(feedContext:formatContent:layoutOptionsProvider:log:feedKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_21917B8F8(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t SportsFavoritesConfig.init(feedContext:formatContent:layoutOptionsProvider:log:feedKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_21917B988(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t SportsFavoritesConfig.deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SportsFavoritesConfig.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void SportsFavoritesModule.createPlugin(config:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI221SportsFavoritesModule_resolver), *(v1 + OBJC_IVAR____TtC7NewsUI221SportsFavoritesModule_resolver + 24));
  type metadata accessor for SportsFavoritesViewController();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  v5 = sub_219BE1E04();

  if (v5)
  {
    sub_21917BACC();
    sub_219BF17D4();
    sub_219BEA8C4();
    swift_allocObject();
    sub_219BEA8A4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21917B62C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218809C38();
  swift_unknownObjectRetain();
  sub_219BE1B84();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  sub_219BDD224();

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesConfig(0);
  return sub_219BE1B94();
}

id SportsFavoritesModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportsFavoritesModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21917B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_21917B988(a1, a2, a3, a4, a5, v15, a7, a8);
}

uint64_t sub_21917B988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedContext;
  v16 = sub_219BF0BD4();
  (*(*(v16 - 8) + 32))(a6 + v15, a1, v16);
  v17 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_formatContent;
  v18 = sub_219BF1904();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v19 = (a6 + OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_layoutOptionsProvider);
  *v19 = a3;
  v19[1] = a8;
  *(a6 + OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_log) = a4;
  v20 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedKind;
  v21 = sub_219BF0634();
  (*(*(v21 - 8) + 32))(a6 + v20, a5, v21);
  return a6;
}

unint64_t sub_21917BACC()
{
  result = qword_27CC0D580;
  if (!qword_27CC0D580)
  {
    type metadata accessor for SportsFavoritesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D580);
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesConfig(uint64_t a1)
{
  result = qword_27CC16BF8;
  if (!qword_27CC16BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21917BB8C(uint64_t a1)
{
  result = sub_219BF0BD4();
  if (v2 <= 0x3F)
  {
    result = sub_219BF1904();
    if (v3 <= 0x3F)
    {
      result = sub_219BF0634();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21917BCEC()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218953C5C(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_21874552C(v2, sub_21880702C);
  }

  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_218701AC4(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_21917BE10()
{
  v49 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v48 = &v38 - v3;
  sub_21897EC04(0);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F938D8(0);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E49D1C(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953C5C(0);
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, v0, v19);
  v21 = *(v16 + 44);
  v22 = sub_218701AC4(&qword_27CC0B158, sub_218953C5C, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] == v50[0])
  {
    v23 = 0;
  }

  else
  {
    v24 = v21;
    v25 = v20;
    v26 = (v13 + 16);
    v27 = (v13 + 8);
    v28 = (v42 + 16);
    v29 = (v42 + 8);
    v40 = v27;
    v41 = v18;
    v43 = v22;
    v44 = v25;
    v38 = v26;
    v39 = v24;
    do
    {
      v42 = sub_219BF5EC4();
      v30 = *v26;
      (*v26)(v46);
      (v42)(v50, 0);
      sub_219BF5E94();
      v31 = v46;
      (v30)(v10, v46, v12);
      v32 = *(v45 + 36);
      sub_218701AC4(&qword_27CC13F90, sub_218953B70, MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      (*v40)(v31, v12);
      while (1)
      {
        sub_219BF5E84();
        if (*&v10[v32] == v50[0])
        {
          break;
        }

        v33 = sub_219BF5EC4();
        (*v28)(v7);
        v33(v50, 0);
        sub_219BF5E94();
        v34 = v48;
        sub_219BE5FC4();
        (*v29)(v7, v5);
        v35 = v34;
        v36 = v47;
        sub_21917C3B4(v35, v47);
        LODWORD(v33) = swift_getEnumCaseMultiPayload();
        sub_21874552C(v36, type metadata accessor for RecipeBoxModel);
        if (v33 == 3)
        {
          sub_21874552C(v10, sub_218F938D8);
          v23 = 1;
          v18 = v41;
          goto LABEL_9;
        }
      }

      sub_21874552C(v10, sub_218F938D8);
      v18 = v41;
      sub_219BF5E84();
      v23 = 0;
      v26 = v38;
    }

    while (*&v18[v39] != v50[0]);
  }

LABEL_9:
  sub_21874552C(v18, sub_218E49D1C);
  return v23;
}

uint64_t sub_21917C3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21917C4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_21917F020(0);
  v5[17] = v6;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_218C3EF74(0);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  sub_21917F0A8(0);
  v5[23] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  sub_219BEF6B4();
  v5[30] = swift_task_alloc();
  v10 = sub_219BEF594();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  sub_219BEF5B4();
  v5[34] = swift_task_alloc();
  sub_219BEF604();
  v5[35] = swift_task_alloc();
  sub_219BEF644();
  v5[36] = swift_task_alloc();
  sub_219BEF664();
  v5[37] = swift_task_alloc();
  v11 = sub_219BEF694();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  sub_219021960(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[41] = swift_task_alloc();
  sub_219021960(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[42] = swift_task_alloc();
  v12 = sub_219BEF6C4();
  v5[43] = v12;
  v5[44] = *(v12 - 8);
  v5[45] = swift_task_alloc();
  sub_219BDCAF4();
  v5[46] = swift_task_alloc();
  v13 = sub_219BDCAE4();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v14 = sub_219BDCAB4();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  sub_219021960(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[53] = swift_task_alloc();
  v15 = sub_219BF0634();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21917CAE0, 0, 0);
}

void *sub_21917CAE0()
{
  v1 = v0[53];
  v42 = v0[54];
  v43 = v0[55];
  v3 = v0[51];
  v2 = v0[52];
  v40 = v0[56];
  v4 = v0[50];
  v64 = v0[49];
  v51 = v0[48];
  v53 = v0[47];
  v44 = v0[44];
  v45 = v0[43];
  v34 = v0[42];
  v35 = v0[41];
  v5 = v0[39];
  v36 = v0[40];
  v37 = v0[38];
  v41 = v0[45];
  v38 = v0[33];
  v6 = v0[32];
  v39 = v0[31];
  v46 = v0[28];
  v48 = v0[27];
  v50 = v0[29];
  v55 = v0[25];
  v56 = v0[24];
  v58 = v0[26];
  v62 = v0[23];
  v7 = v0[14];
  v60 = v0[13];
  (*(v43 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v34, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v35, 1, 1, v10);
  (*(v5 + 104))(v36, *MEMORY[0x277D326B0], v37);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v38, *MEMORY[0x277D32680], v39);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v54 = sub_219BEE0E4();
  (*(v44 + 8))(v41, v45);
  (*(v51 + 8))(v64, v53);
  (*(v3 + 8))(v2, v4);
  sub_218864D54(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v43 + 8))(v40, v42);
  (*(v46 + 16))(v50, v7, v48);
  (*(v55 + 104))(v58, *MEMORY[0x277D6E080], v56);
  sub_218953C5C(0);
  (*(*(v11 - 8) + 16))(v62, v60, v11);
  sub_218701B0C(&qword_27CC0B158, sub_218953C5C, MEMORY[0x277D6EC70]);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v66 = MEMORY[0x277D84F90];
    sub_218C36A70(0, v12 & ~(v12 >> 63), 0);
    v14 = v66;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v52 = v0 + 2;
      v18 = v0[6];
      v65 = v16[17];
      v47 = v16[21];
      v49 = v13;
      while (!__OFADD__(v17, 1))
      {
        v57 = v17 + 1;
        v19 = v16[19];
        v20 = *(v65 + 48);
        v16[7] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[8])
        {
          goto LABEL_16;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[9])
        {
          goto LABEL_17;
        }

        v59 = v16[22];
        v21 = v16[18];
        v61 = v16[16];
        v63 = v14;
        v22 = sub_219BF5EC4();
        v24 = v23;
        sub_21917F13C(0, &qword_27CC0FA50, MEMORY[0x277D6D710]);
        v26 = v25;
        v27 = *(v25 - 8);
        (*(v27 + 16))(v19 + v20, v24, v25);
        v22(v52, 0);
        *v21 = v17;
        v28 = *(v65 + 48);
        (*(v27 + 32))(&v21[v28], v19 + v20, v26);
        sub_21917D6AC(&v21[v28], v54, v61, v59);
        sub_21917F230(v16[18], sub_21917F020);
        v14 = v63;
        v30 = *(v63 + 16);
        v29 = *(v63 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_218C36A70((v29 > 1), v30 + 1, 1);
          v14 = v63;
        }

        v31 = v16[22];
        v32 = v16[20];
        *(v14 + 16) = v30 + 1;
        (*(v47 + 32))(v14 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30, v31, v32);
        v16[11] = v18;
        result = sub_219BF5E54();
        v18 = v16[10];
        ++v17;
        if (v57 == v49)
        {
          sub_21917F230(v16[23], sub_21917F0A8);
          v0 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_21917F230(v0[23], sub_21917F0A8);
LABEL_12:
    type metadata accessor for RecipeBoxLayoutModel(0);
    sub_21879A890();
    sub_218701B0C(&unk_280ECDB38, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C50);
    sub_219BE6564();
    sub_219BEE0C4();

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_21917D6AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v71 = a2;
  v68 = a4;
  v69 = a3;
  v67 = type metadata accessor for RecipeListRecipeBoxFeedGroup(0);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RecipeBoxLayoutModel(0);
  MEMORY[0x28223BE20](v78);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BEF974();
  v85 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F02C(0);
  v74 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v63 = sub_219BEE074();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v61 - v16;
  v70 = sub_219BE9FA4();
  v17 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v23 = type metadata accessor for RecipeBoxSectionDescriptor(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21917F13C(0, &qword_27CC0FA50, MEMORY[0x277D6D710]);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v66;
      sub_218A5D838(v25, v66);
      sub_21917E168(a1, v71, v27 + *(v67 + 20), MEMORY[0x277D84FA0], v68);
      return sub_21917F230(v27, type metadata accessor for RecipeListRecipeBoxFeedGroup);
    }

    v83 = 0;
    v84 = 0;
    v82 = 1;
    v34 = v17;
    v35 = *(v17 + 104);
    v36 = v70;
    v35(v19, *MEMORY[0x277D6E9B0], v70);
    sub_21917F290();
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v37 = v65;
    v38 = v72;
    sub_219BEE0A4();
    if (v38)
    {
      sub_218864D54(&v79, &qword_280E91020, sub_2189BD704);
      return (*(v34 + 8))(v19, v36);
    }

    sub_218864D54(&v79, &qword_280E91020, sub_2189BD704);
    v50 = sub_219BEE004();
    (*(v62 + 8))(v37, v63);
    v51 = *(v50 + 16);
    if (v51)
    {
      v66 = v19;
      v67 = 0;
      *&v79 = MEMORY[0x277D84F90];
      sub_218C36BB0(0, v51, 0);
      v52 = v79;
      v72 = *(v85 + 16);
      v53 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v65 = v50;
      v54 = v50 + v53;
      v55 = *(v85 + 72);
      v85 += 16;
      v70 = (v85 - 8);
      v71 = v55;
      v69 = v77 + 32;
      do
      {
        v56 = v72;
        v57 = v73;
        v58 = v75;
        v72(v73, v54, v75);
        v56(v76, v57, v58);
        sub_218701B0C(&qword_280ECDB48, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C18);
        sub_219BE75D4();
        (*v70)(v57, v58);
        *&v79 = v52;
        v60 = *(v52 + 16);
        v59 = *(v52 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_218C36BB0((v59 > 1), v60 + 1, 1);
          v52 = v79;
        }

        *(v52 + 16) = v60 + 1;
        (*(v77 + 32))(v52 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v60, v10, v74);
        v54 += v71;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    sub_21917F230(v25, type metadata accessor for RecipeBoxSectionDescriptor);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v29 = v17;
    v30 = *(v17 + 104);
    v31 = v70;
    v30(v22, *MEMORY[0x277D6E9B0], v70);
    sub_21917F290();
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v32 = v64;
    v33 = v72;
    sub_219BEE0A4();
    if (v33)
    {
      sub_218864D54(&v79, &qword_280E91020, sub_2189BD704);
      return (*(v29 + 8))(v22, v31);
    }

    sub_218864D54(&v79, &qword_280E91020, sub_2189BD704);
    v39 = sub_219BEE004();
    (*(v62 + 8))(v32, v63);
    v40 = *(v39 + 16);
    if (v40)
    {
      v66 = v22;
      v67 = 0;
      *&v79 = MEMORY[0x277D84F90];
      sub_218C36BB0(0, v40, 0);
      v41 = v79;
      v72 = *(v85 + 16);
      v42 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v65 = v39;
      v43 = v39 + v42;
      v44 = *(v85 + 72);
      v85 += 16;
      v70 = (v85 - 8);
      v71 = v44;
      v69 = v77 + 32;
      v45 = v72;
      do
      {
        v46 = v73;
        v47 = v75;
        v45(v73, v43, v75);
        v45(v76, v46, v47);
        sub_218701B0C(&qword_280ECDB48, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C18);
        sub_219BE75D4();
        (*v70)(v46, v47);
        *&v79 = v41;
        v49 = *(v41 + 16);
        v48 = *(v41 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_218C36BB0((v48 > 1), v49 + 1, 1);
          v41 = v79;
        }

        *(v41 + 16) = v49 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v49, v13, v74);
        v43 += v71;
        --v40;
      }

      while (v40);
    }
  }

  sub_21879A890();
  sub_218701B0C(&unk_280ECDB38, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C50);
  return sub_219BE81A4();
}

uint64_t sub_21917E168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a2;
  v92 = a4;
  v93 = a1;
  v81 = a5;
  v106 = type metadata accessor for RecipeBoxLayoutModel(0);
  MEMORY[0x28223BE20](v106);
  v103 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BEF974();
  v105 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F02C(0);
  v100 = v8;
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BE9FA4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219021960(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v73 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v87 = &v73 - v18;
  v96 = sub_219BDCB14();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BEE074();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v73 - v22;
  v86 = MEMORY[0x277D32218];
  sub_219021960(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v73 - v24;
  v26 = sub_219BED8D4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x277D325F8];
  sub_219021960(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v73 - v31;
  v84 = MEMORY[0x277D31DD0];
  sub_219021960(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v73 - v34;
  v36 = sub_219BF1904();
  v83 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  sub_219BED874();
  v39 = sub_219BEDB64();
  (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
  (*(v27 + 16))(v29, a3, v26);
  sub_219BEF4D4();
  v40 = sub_219BEF4E4();
  (*(*(v40 - 8) + 56))(v32, 0, 1, v40);
  v41 = sub_219BEEA64();
  (*(*(v41 - 8) + 56))(v25, 1, 1, v41);
  sub_21917F13C(0, &qword_27CC0FA50, MEMORY[0x277D6D710]);
  sub_218701B0C(&qword_27CC16C28, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C625AC);
  sub_218701B0C(&qword_27CC16C30, type metadata accessor for RecipeBoxModel, &unk_219C63628);
  v93 = sub_219BE69F4();
  sub_218864D54(v25, &qword_280E91990, v86);
  sub_218864D54(v32, &qword_280E91548, v85);
  sub_218864D54(v35, &qword_280E924F8, v84);
  v42 = *(v83 + 8);
  v42(v38, v36);
  sub_219BED874();
  v43 = sub_219BF44B4();
  v44 = v38;
  v45 = v95;
  v42(v44, v36);
  v107[3] = sub_219BF3594();
  v107[4] = MEMORY[0x277D33EB8];
  v107[0] = v43;
  v46 = sub_219BDCB24();
  v47 = *(*(v46 - 8) + 56);
  v47(v87, 1, 1, v46);
  v47(v89, 1, 1, v46);
  v47(v90, 1, 1, v46);
  v47(v91, 1, 1, v46);
  v48 = v88;

  sub_219BDCB04();
  v49 = v99;
  sub_219BEE0B4();
  if (v49)
  {
    (*(v94 + 8))(v48, v96);

    return sub_218864D54(v107, &qword_280E91020, sub_2189BD704);
  }

  else
  {
    v92 = v43;
    (*(v94 + 8))(v48, v96);

    sub_218864D54(v107, &qword_280E91020, sub_2189BD704);
    v51 = v78;
    v52 = v75;
    v53 = v79;
    (*(v78 + 16))(v75, v45, v79);
    v107[0] = sub_219187CDC(v52);
    v107[1] = v54;
    v107[2] = v55;
    v56 = *MEMORY[0x277D6E980];
    v57 = sub_219BE9F84();
    v58 = v80;
    (*(*(v57 - 8) + 104))(v80, v56, v57);
    (*(v76 + 104))(v58, *MEMORY[0x277D6E988], v77);
    v59 = sub_219BEE004();
    v60 = *(v59 + 16);
    if (v60)
    {
      v94 = 0;
      v108 = MEMORY[0x277D84F90];
      v61 = v59;
      sub_218C36BB0(0, v60, 0);
      v62 = v108;
      v63 = *(v105 + 16);
      v64 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v93 = v61;
      v65 = v61 + v64;
      v98 = *(v105 + 72);
      v99 = v63;
      v96 = v104 + 32;
      v97 = (v105 + 8);
      v66 = v74;
      v105 += 16;
      do
      {
        v67 = v101;
        v68 = v102;
        v69 = v99;
        v99(v101, v65, v102);
        v69(v103, v67, v68);
        sub_218701B0C(&qword_280ECDB48, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C18);
        sub_219BE75D4();
        (*v97)(v67, v68);
        v108 = v62;
        v71 = *(v62 + 16);
        v70 = *(v62 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_218C36BB0((v70 > 1), v71 + 1, 1);
          v62 = v108;
        }

        *(v62 + 16) = v71 + 1;
        (*(v104 + 32))(v62 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v71, v66, v100);
        v65 += v98;
        --v60;
      }

      while (v60);

      v53 = v79;
      v72 = v78;
    }

    else
    {
      v72 = v51;
    }

    sub_21879A890();
    sub_218701B0C(&unk_280ECDB38, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C50);
    sub_219BE81A4();

    return (*(v72 + 8))(v95, v53);
  }
}

uint64_t sub_21917EF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_21917C4F0(a1, a2, a3, a4);
}

void sub_21917F020(uint64_t a1)
{
  if (!qword_27CC16C10)
  {
    sub_21917F13C(255, &qword_27CC0FA50, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16C10);
    }
  }
}

void sub_21917F0A8(uint64_t a1)
{
  if (!qword_27CC16C18)
  {
    sub_218953C5C(255);
    sub_218701B0C(&qword_27CC12A30, sub_218953C5C, MEMORY[0x277D6EC68]);
    v1 = sub_219BF7544();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC16C18);
    }
  }
}

void sub_21917F13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor(255);
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701B0C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    v8[3] = sub_218701B0C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21917F230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21917F290()
{
  result = qword_27CC16C20;
  if (!qword_27CC16C20)
  {
    sub_21917F13C(255, &qword_27CC0FA50, MEMORY[0x277D6D710]);
    sub_218701B0C(&qword_27CC16C28, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C625AC);
    sub_218701B0C(&qword_27CC16C30, type metadata accessor for RecipeBoxModel, &unk_219C63628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16C20);
  }

  return result;
}

uint64_t sub_21917F41C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_218718690(*v4 + 16, v13);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13[40] = a4;
  sub_21917FEC8(v12, &v11);
  sub_21917FAB4(0);
  swift_allocObject();
  sub_21917FF24();

  v9 = sub_219BE6E64();
  sub_21917FF78(v12);
  return v9;
}

uint64_t sub_21917F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 16, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_21917FDC4(v10, &v9);
  sub_21917FAB4(0);
  swift_allocObject();
  sub_21917FE20();

  v7 = sub_219BE6E64();
  sub_21917FE74(v10);
  return v7;
}

uint64_t sub_21917F594(uint64_t a1)
{
  refreshed = type metadata accessor for RecipeBoxRefreshBlueprintModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_21917FCFC(a1, &v12 - v7, type metadata accessor for RecipeBoxRefreshResult);
  sub_218718690(v9 + 16, &v8[*(refreshed + 20)]);
  sub_21917FCFC(v8, v5, type metadata accessor for RecipeBoxRefreshBlueprintModifier);
  sub_21917FAB4(0);
  swift_allocObject();
  sub_218701B54(&qword_27CC12A40, type metadata accessor for RecipeBoxRefreshBlueprintModifier, &unk_219C3F3AC);
  v10 = sub_219BE6E64();
  sub_21917FD64(v8, type metadata accessor for RecipeBoxRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_21917F708()
{
  sub_21917FAB4(0);
  swift_allocObject();
  sub_21917FCA8();
  return sub_219BE6E64();
}

uint64_t sub_21917F750(uint64_t a1)
{
  v2 = type metadata accessor for RecipeBoxFailedBlueprintModifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_21917FCFC(a1, &v10 - v6, type metadata accessor for RecipeBoxFailedData);
  sub_21917FCFC(v7, v4, type metadata accessor for RecipeBoxFailedBlueprintModifier);
  sub_21917FAB4(0);
  swift_allocObject();
  sub_218701B54(&qword_27CC0B748, type metadata accessor for RecipeBoxFailedBlueprintModifier, &unk_219C0C9EC);
  v8 = sub_219BE6E64();
  sub_21917FD64(v7, type metadata accessor for RecipeBoxFailedBlueprintModifier);
  return v8;
}

uint64_t sub_21917F8AC(uint64_t a1, char a2)
{
  sub_218718690(*v2 + 16, &v10);
  v8 = a1;
  v9 = a2 & 1;
  sub_21917FBA0(&v8, &v7);
  sub_21917FAB4(0);
  swift_allocObject();
  j__swift_bridgeObjectRetain_0();
  sub_21917FC00();
  v5 = sub_219BE6E64();
  sub_21917FC54(&v8);
  return v5;
}

uint64_t sub_21917F958(uint64_t a1)
{
  v2 = type metadata accessor for RecipeBoxEngagementBlueprintModifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_21917FCFC(a1, &v10 - v6, sub_218CD3544);
  sub_21917FCFC(v7, v4, type metadata accessor for RecipeBoxEngagementBlueprintModifier);
  sub_21917FAB4(0);
  swift_allocObject();
  sub_218701B54(&qword_27CC16C40, type metadata accessor for RecipeBoxEngagementBlueprintModifier, &unk_219C8EEB0);
  v8 = sub_219BE6E64();
  sub_21917FD64(v7, type metadata accessor for RecipeBoxEngagementBlueprintModifier);
  return v8;
}

void sub_21917FAB4(uint64_t a1)
{
  if (!qword_27CC16C38)
  {
    type metadata accessor for RecipeBoxSectionDescriptor(255);
    type metadata accessor for RecipeBoxModel(255);
    sub_218701B54(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    sub_218701B54(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC16C38);
    }
  }
}

unint64_t sub_21917FC00()
{
  result = qword_27CC16C48;
  if (!qword_27CC16C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16C48);
  }

  return result;
}

unint64_t sub_21917FCA8()
{
  result = qword_27CC16C50;
  if (!qword_27CC16C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16C50);
  }

  return result;
}

uint64_t sub_21917FCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21917FD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21917FE20()
{
  result = qword_27CC16C58;
  if (!qword_27CC16C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16C58);
  }

  return result;
}

unint64_t sub_21917FF24()
{
  result = qword_27CC16C60;
  if (!qword_27CC16C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16C60);
  }

  return result;
}

uint64_t sub_21917FFFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeBoxModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for RecipeBoxModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2191800AC(void *a1)
{
  v2 = sub_219BEA3D4();
  v99 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v94[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v98 = &v94[-v6];
  v7 = sub_219BE7724();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v112 = &v94[-v11];
  v12 = sub_219BE7784();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v94[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2186C709C(0, &qword_280ED08D8, &protocol descriptor for RecipeBoxStylerType, 1);
  sub_219BE1E34();
  if (!v140)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2186C709C(0, qword_280EBD508, &protocol descriptor for RecipeBoxEventHandlerType, 0);
  sub_219BE1E34();
  v117 = v137;
  if (!v137)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v97 = v4;
  v111 = v138;
  v15 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21879AA04(0);
  v16 = sub_219BE1E24();
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
  sub_219BE1E34();
  v116 = v135;
  if (!v135)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v110 = v136;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  v115 = sub_219BE1E24();
  if (!v115)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v109 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAB880, &protocol descriptor for RecipeBoxTitleViewProviderType, 1);
  sub_219BE1E34();
  if (!v134)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1DF4();
  v15 = v132;
  if (v132 == 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  sub_219BE1E34();
  v114 = v130;
  if (!v130)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v105 = v8;
  v106 = v14;
  v95 = v15;
  v96 = v2;
  v107 = v7;
  v108 = v131;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  v17 = sub_219BE1E24();
  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  v104 = v94;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  v103 = v94;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v94[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27, v25);
  v29 = *v22;
  v30 = *v27;
  v31 = type metadata accessor for RecipeBoxStyler();
  v128 = v31;
  v129 = &off_282A61B08;
  v127[0] = v29;
  v32 = type metadata accessor for RecipeBoxTitleViewProvider();
  v125 = v32;
  v126 = &off_282A51E58;
  v124[0] = v30;
  v100 = type metadata accessor for RecipeBoxViewController();
  v33 = objc_allocWithZone(v100);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
  v102 = v94;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v94[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v38 + 16))(v37, v35);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v124, v125);
  v101 = v94;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v94[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v43 + 16))(v42, v40);
  v44 = *v37;
  v45 = *v42;
  v123[3] = v31;
  v123[4] = &off_282A61B08;
  v122 = &off_282A51E58;
  v123[0] = v44;
  v121 = v32;
  v120[0] = v45;
  v46 = OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_searchBarInsetsController;
  type metadata accessor for SearchBarInsetsController();
  *&v33[v46] = swift_allocObject();
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController____lazy_storage___filterButton] = 0;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController____lazy_storage___filterBarButtonItem] = 0;
  v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_isFilterConfigLoaded] = 0;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController____lazy_storage___rightBarButtonItem] = 0;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController____lazy_storage___searchController] = 0;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController____lazy_storage___cancelSearchBarButtonItem] = 0;
  v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_showCancelButton] = 0;
  sub_218718690(v123, &v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_styler]);
  v47 = &v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_eventHandler];
  v48 = v116;
  v49 = v110;
  v50 = v111;
  *v47 = v117;
  v47[1] = v50;
  v51 = v109;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_blueprintViewController] = v109;
  v52 = &v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_recipeFilterSelectionManager];
  *v52 = v48;
  v52[1] = v49;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_newsActivityManager] = v115;
  sub_218718690(v120, &v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_titleViewProvider]);
  v53 = &v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_commandCenter];
  v54 = v108;
  *v53 = v114;
  v53[1] = v54;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_tracker] = v18;
  type metadata accessor for SearchFilterBarViewModel(0);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();
  v56 = v51;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v111 = v18;

  sub_219BDC234();
  v119 = MEMORY[0x277D84F90];
  v15 = 0;
  sub_2189F05F8(&v119);
  *(v55 + 32) = v119;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_filterBarViewModel] = v55;
  v119 = v55;
  sub_219187080(0, &qword_280E927F8, sub_2189F0888, &type metadata for SearchFilterBarView, MEMORY[0x277CDDF70]);
  objc_allocWithZone(v57);

  v58 = sub_219BEC9B4();
  v59 = OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_filterBarHostingController;
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_filterBarHostingController] = v58;
  if (_UISolariumFeatureFlagEnabled())
  {
    v60 = [*&v33[v59] view];
    if (v60)
    {
      v61 = v60;
      sub_219BE8664();
      v62 = sub_219BE7BC4();

      v63 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v62 edge:1 style:0];

      [v61 addInteraction_];
      goto LABEL_13;
    }

LABEL_30:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_13:
  sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  v64 = sub_219BF6D44();
  v65 = [objc_opt_self() labelColor];
  v66 = v112;
  *v112 = v64;
  v66[1] = v65;
  *(v66 + 16) = 1;
  v66[3] = 0;
  v67 = *(v105 + 104);
  v68 = v107;
  v67(v66, *MEMORY[0x277D6DB40], v107);
  v67(v113, *MEMORY[0x277D6DB50], v68);
  sub_219BE7754();
  sub_21879B28C(0, &qword_280EE7BC8, MEMORY[0x277D6DB58], MEMORY[0x277D6CB60]);
  swift_allocObject();
  *&v33[OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_navigationItemStyle] = sub_219BE20D4();
  v118.receiver = v33;
  v118.super_class = v100;
  v69 = objc_msgSendSuper2(&v118, sel_initWithNibName_bundle_, 0, 0);
  *(*(v69 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_eventHandler) + 24) = &off_282A61B88;
  swift_unknownObjectWeakAssign();
  v70 = *(v69 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_blueprintViewController);
  v71 = v69;
  v72 = v70;
  sub_219BE8744();

  v73 = *(v71 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_recipeFilterSelectionManager);
  MEMORY[0x28223BE20](v74);
  *&v94[-16] = v71;
  *&v94[-8] = &off_282A61B68;
  v75 = *(v73 + 24);
  MEMORY[0x28223BE20](v76);
  *&v94[-16] = sub_218CAF89C;
  *&v94[-8] = v77;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v75 + 6);
  sub_2191870E8();
  os_unfair_lock_unlock(v75 + 6);

  swift_unknownObjectRelease();
  v78 = *(v71 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_filterBarViewModel);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v94[-32] = v78;
  *&v94[-24] = v69;
  *&v94[-16] = &off_282A61B48;
  v119 = v78;
  sub_218701B9C(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel, &unk_219C6FC7C);

  sub_219BDC1F4();

  if (qword_27CC081F0 != -1)
  {
    swift_once();
  }

  v80 = sub_219BF53D4();
  [v71 setTitle_];

  v81 = _UISolariumFeatureFlagEnabled();
  v82 = v71;
  v83 = sub_219BF65B4();

  if (v81)
  {
    v84 = sub_219BF53D4();
    v85 = &selRef_setTitle_;
  }

  else
  {
    v86 = __swift_project_boxed_opaque_existential_1(v120, v121);
    v88 = v98;
    v87 = v99;
    v89 = MEMORY[0x277D6EA78];
    if ((v95 & 1) == 0)
    {
      v89 = MEMORY[0x277D6EA70];
    }

    v90 = v96;
    (*(v99 + 104))(v98, *v89, v96);
    v91 = *(*v86 + 16);
    (*(v87 + 16))(v97, v88, v90);
    v92 = objc_allocWithZone(sub_219BE9C84());
    v93 = v91;
    v84 = sub_219BE9C64();
    (*(v87 + 8))(v88, v90);
    v85 = &selRef_setTitleView_;
  }

  [v83 *v85];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v123);
  __swift_destroy_boxed_opaque_existential_1(v120);
  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v139);
}

void *sub_219181010@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218701B9C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for RecipeBoxStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    v13[7] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v13[8] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A61B08;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191812C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219187080(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    sub_218718690(a1, v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for RecipeBoxRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v8 + 24) = v5;
      result = sub_2186CB1F0(v9, v8 + 32);
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A62240;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2191813F8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeBoxViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219181478@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3CF0, &protocol descriptor for RecipeBoxInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED08E0, &protocol descriptor for RecipeBoxRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECD9A0, &protocol descriptor for RecipeBoxTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_219186E74(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A61DE0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219181728@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC0A28, &protocol descriptor for RecipeBoxDataManagerType, 0);
  result = sub_219BE1E34();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530, &protocol descriptor for EngagementUpsellTriggerStateManagerType, 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219187080(0, &unk_280E90670, sub_2186F1708, &type metadata for RecipeBoxOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  v16 = v6;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218799CB8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v10 = v20;
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxEngagementState();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = result;
  v14 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AF3C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF3A8, &protocol descriptor for RecipeFilterConfigManagerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    sub_21879A984(0, &qword_27CC16D00, type metadata accessor for RecipeBoxBlueprintModifierFactory, sub_219186D48, type metadata accessor for RecipeBoxInteractor);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v13 + 184) = 0;
    *(v13 + 192) = 0;
    *(v13 + 208) = 2;
    *(v13 + 32) = v5;
    *(v13 + 40) = v17;
    sub_2186CB1F0(&v24, v13 + 48);
    sub_2186CB1F0(&v22, v13 + 88);
    *(v13 + 128) = v16;
    *(v13 + 136) = v7;
    *(v13 + 200) = v9;
    *(v13 + 160) = v10;
    *(v13 + 168) = v15;
    *(v13 + 176) = v11;
    *(v13 + 144) = v12;
    *(v13 + 152) = v8;
    sub_2186CB1F0(&v18, v13 + 216);
    *(v5 + OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_delegate + 8) = &off_282A61FE8;
    result = swift_unknownObjectWeakAssign();
    *v14 = v13;
    v14[1] = &off_282A62000;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_219181B9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v19 = sub_219BE14C4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE14A4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v21[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for RecipeBoxTracker();
    v15 = swift_allocObject();
    v15[2] = v11;
    sub_218718690(v21, (v15 + 3));
    v15[8] = v12;
    v15[9] = v13;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F358], v19);

    sub_219BE1484();
    sub_218701B9C(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
    v16 = v20;
    sub_219BDD1F4();

    (*(v7 + 8))(v9, v16);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    v17 = v18;
    v18[3] = v14;
    v17[4] = &off_282A61E98;
    *v17 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_219181EEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218701370(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879A984(0, &qword_280E90B00, sub_2187011DC, sub_218ED1A48, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E927D0, MEMORY[0x277D303B8], 1);
  result = sub_219BE1E34();
  if (!v31[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1DF4();
  if (!v30[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB75E0, &protocol descriptor for RecipeBoxSearchDatabaseType, 0);
  result = sub_219BE1E34();
  v9 = v28;
  if (!v28)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v5;
  v20 = v29;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0, MEMORY[0x277D33F20], 1);
  result = sub_219BE1E34();
  if (v25[3])
  {
    v13 = type metadata accessor for RecipeBoxDataManager();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_feedServiceContextFactory] = v10;
    *&v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_feedServiceConfigFetcher] = v8;
    *&v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_feedService] = v22;
    sub_218718690(v31, &v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeBox]);
    sub_218718690(v30, &v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeService]);
    v15 = &v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeBoxSearchDatabase];
    *v15 = v9;
    *(v15 + 1) = v20;
    v16 = &v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_subscriptionService];
    *v16 = v11;
    *(v16 + 1) = v12;
    sub_218718690(v25, &v14[OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeAccessProvider]);
    v24.receiver = v14;
    v24.super_class = v13;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v24, sel_init);
    sub_218718690(v17 + OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeBox, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_218701B9C(&qword_27CC16CF8, type metadata accessor for RecipeBoxDataManager, &unk_219C62B68);
    v18 = v17;
    sub_219BED2A4();
    __swift_destroy_boxed_opaque_existential_1(v23);
    v19 = *(v18 + OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_subscriptionService);
    swift_unknownObjectRetain();
    sub_219274EF8(v18, v19);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v30);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    *v21 = v18;
    v21[1] = &off_282A61CF0;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2191823E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    return sub_2186CB1F0(&v4, a2);
  }

  __break(1u);
  return result;
}

void *sub_21918246C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED08D8, &protocol descriptor for RecipeBoxStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for RecipeBoxStyler();
    v19[3] = v10;
    v19[4] = &off_282A61B08;
    v19[0] = v9;
    v11 = type metadata accessor for RecipeBoxTitleViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A61B08;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A51E28;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219182698@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAB878, &protocol descriptor for RecipeBoxTitleViewRendererType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for RecipeBoxTitleViewRenderer();
    v19[3] = v10;
    v19[4] = &off_282A51E28;
    v19[0] = v9;
    v11 = type metadata accessor for RecipeBoxTitleViewProvider();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[6] = v10;
    v12[7] = &off_282A51E28;
    v12[3] = v18;
    v12[2] = [objc_allocWithZone(type metadata accessor for RecipeBoxTitleView()) initWithFrame_];
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A51E58;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21918291C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB75D0, &protocol descriptor for RecipeBoxSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for RecipeBoxSectionFactory();
    v16[3] = v8;
    v16[4] = &off_282A95BD8;
    v16[0] = v7;
    type metadata accessor for RecipeBoxBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282A95BD8;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219182B2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (v8)
  {
    v6 = type metadata accessor for RecipeBoxSectionFactory();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(&v10, (v7 + 2));
    v7[7] = v5;
    v7[8] = v8;
    v7[9] = v9;
    a2[3] = v6;
    a2[4] = &off_282A95BD8;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219182C80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218799258(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218799D74(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218799CB8(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219182D60(uint64_t a1, void *a2)
{
  sub_219186D28(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_218799164(0, &qword_27CC16CE0, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218701B9C(&qword_27CC16CE8, sub_219186D28, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21879A74C(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_218701B9C(&qword_27CC16CF0, sub_21879A74C, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219182EF8(void *a1)
{
  sub_21879B28C(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879A184(0, &qword_280EE4190, sub_21879A890, sub_21879A4A8, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879A984(0, &unk_280EE40F8, sub_21879A13C, sub_21879A474, MEMORY[0x277D6E7C8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21879A74C(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219183114(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  v4 = sub_219BE1DE4();
  if (v4)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = v4;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v10, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v11 = v5;
      v12 = sub_218701B9C(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
      *&v10 = v7;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      v8 = sub_219BE99D4();
      swift_allocObject();
      v9 = sub_219BE99C4();
      v11 = v8;
      v12 = MEMORY[0x277D6E7D8];
      *&v10 = v9;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_2191832EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879A13C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_21879A984(0, &unk_280EE40F8, sub_21879A13C, sub_21879A474, MEMORY[0x277D6E7C8]);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2191834D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218799E80(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218799D74(0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2191835D0()
{
  sub_21879A184(0, &qword_280EE4190, sub_21879A890, sub_21879A4A8, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_219183678(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2191836BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for RecipeBoxBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2191837A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218799258(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218799E80(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879A984(0, &unk_280EE4640, sub_218799258, sub_21879A440, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218701B9C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21879AA04(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_219183AF0(uint64_t *a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218701B9C(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21879A984(0, &unk_280EE4878, sub_218799E80, sub_21879A718, MEMORY[0x277D6E068]);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_219186C00();
  }

  else
  {
    v8 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v10;
  v21 = v8;
  v22 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21879A984(0, &unk_280EE40F8, sub_21879A13C, sub_21879A474, MEMORY[0x277D6E7C8]);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_219186B64();
  }

  else
  {
    v12 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v14;
  v21 = v12;
  v22 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_21879A13C(0);
    v15 = sub_219BE1E24();
    if (v15)
    {
      v16 = v15;
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v16;
      sub_219BF35C4();
      swift_allocObject();
      sub_21879A474();

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_219183EE0(uint64_t a1, uint64_t a2)
{
  sub_21879B28C(0, &qword_27CC16CD0, sub_218953C5C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218953C5C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE86A4();

    v18 = v17[1];
    sub_218799258(0);
    sub_21879A440();
    sub_219BE7B94();

    v12 = sub_21917BCEC();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_219BE86A4();

    v17[0] = v18;
    sub_218799258(0);
    sub_21879A440();
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for RecipeBoxSectionDescriptor(0);
  type metadata accessor for RecipeBoxModel(0);
  sub_218701B9C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
  sub_218701B9C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
  sub_219BF44D4();
  sub_219186C9C(v4);
  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_218701B9C(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}