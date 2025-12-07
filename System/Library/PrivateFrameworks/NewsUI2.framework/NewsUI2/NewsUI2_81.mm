uint64_t sub_218FE06F4(void (*a1)(void), uint64_t a2, char *a3)
{
  v5 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(&a3[v5], &v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v12)
  {
    sub_2186CB1F0(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v6 = sub_2187DAD0C();
    v7 = [a3 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 2)
    {
      sub_218F8A3C4(a3, v6, a1);
    }

    else if (v8 == 1)
    {
      sub_218F8A13C(a3, v6, a1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = sub_2187453AC(&v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
    return (a1)(v9);
  }
}

uint64_t sub_218FE0880(UIViewController *a1)
{
  v2 = v1;
  v122 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = (&v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v108 = &v104 - v7;
  v112 = sub_219BE92E4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v104 - v10;
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], v3);
  v115 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v104 - v14;
  v114 = v15;
  MEMORY[0x28223BE20](v16);
  v119 = &v104 - v17;
  sub_2187C42D4(0, &unk_280EE3DC0, MEMORY[0x277D6E908], v3);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  sub_2187C04A0(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BE9EC4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v117 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v113 = &v104 - v33;
  MEMORY[0x28223BE20](v34);
  v121 = &v104 - v35;
  v36 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_presentationContextCache;
  swift_beginAccess();
  (*(v26 + 16))(v28, &v2[v36], v25);
  v125[0] = v122;
  sub_219BE1C74();
  (*(v26 + 8))(v28, v25);
  v120 = v30;
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    v37 = &unk_280EE3DC0;
    v38 = MEMORY[0x277D6E908];
    v39 = MEMORY[0x277D83D88];
    v40 = v23;
    return sub_2187453AC(v40, v37, v38, v39, sub_2187C42D4);
  }

  v42 = v120;
  v43 = v121;
  v44 = *(v120 + 32);
  v106 = v120 + 32;
  v105 = v44;
  v44(v121, v23, v29);
  v45 = sub_219BE94F4();
  v46 = v119;
  (*(*(v45 - 8) + 56))(v119, 1, 1, v45);
  v104 = *(v42 + 16);
  v104(v20, v43, v29);
  (*(v42 + 56))(v20, 0, 1, v29);
  v47 = v122;
  *&v123 = v122;
  swift_beginAccess();
  v122 = v47;
  sub_219BE1C84();
  swift_endAccess();
  v48 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(&v2[v48], &v123, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  v49 = v29;
  if (v124)
  {
    sub_2186CB1F0(&v123, v125);
    v110 = __swift_project_boxed_opaque_existential_1(v125, v125[3]);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = v113;
    v52 = v104;
    v104(v113, v121, v49);
    v53 = MEMORY[0x277D6E658];
    v54 = MEMORY[0x277D83D88];
    v55 = v116;
    sub_2187DAC98(v46, v116, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v52(v117, v51, v49);
    v56 = v54;
    v57 = v49;
    sub_2187DAC98(v55, v118, &unk_280EE4470, v53, v56, sub_2187C42D4);
    v58 = v120;
    v59 = (*(v120 + 80) + 24) & ~*(v120 + 80);
    v60 = (v31 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (*(v115 + 80) + v60 + 8) & ~*(v115 + 80);
    v62 = (v114 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v50;
    v115 = v57;
    v105(v63 + v59, v51, v57);
    v64 = v122;
    *(v63 + v60) = v122;
    sub_218FEADDC(v55, v63 + v61);
    v65 = (v63 + v62);
    *v65 = 0;
    v65[1] = 0;
    v66 = *(*v110 + 32);
    v67 = v121;
    if (v66)
    {
      v68 = objc_opt_self();
      v69 = v64;
      v116 = v50;

      v70 = [v68 areAnimationsEnabled];
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      *(v71 + 24) = sub_218FEAE70;
      *(v71 + 32) = v63;
      swift_beginAccess();
      v72 = *(v66 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v66 + 32) = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_2191F67A4(0, v72[2] + 1, 1, v72);
        *(v66 + 32) = v72;
      }

      v75 = v72[2];
      v74 = v72[3];
      if (v75 >= v74 >> 1)
      {
        v72 = sub_2191F67A4((v74 > 1), v75 + 1, 1, v72);
      }

      v72[2] = v75 + 1;
      v76 = &v72[2 * v75];
      v76[4] = sub_218FEAE74;
      v76[5] = v71;
      *(v66 + 32) = v72;
      swift_endAccess();

      v64 = v122;
      goto LABEL_25;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v83 = v64;
    v84 = v83;
    if (Strong)
    {
      swift_retain_n();
      v85 = v84;
      v86 = [Strong traitCollection];
      v87 = [v86 horizontalSizeClass];

      if (v87 == 2)
      {
        v88 = v108;
        sub_219BE9E94();
      }

      else
      {
        if (v87 != 1)
        {

          v99 = v108;
          (*(v111 + 56))(v108, 1, 1, v112);
          sub_2187453AC(v99, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);

          goto LABEL_25;
        }

        v88 = v108;
        sub_219BE9EA4();
      }

      v94 = v111;
      v95 = v88;
      v96 = v88;
      v97 = v112;
      (*(v111 + 56))(v95, 0, 1, v112);
      v98 = v107;
      (*(v94 + 32))(v107, v96, v97);
      sub_218FDF7B0(v98, v85, v118, 0, 0);

      (*(v94 + 8))(v98, v97);

      v64 = v122;
    }

    else
    {
      v93 = v83;
    }

LABEL_25:

    v100 = *(v58 + 8);
    v101 = v115;
    v100(v117, v115);

    v102 = MEMORY[0x277D6E658];
    v103 = MEMORY[0x277D83D88];
    sub_2187453AC(v118, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    sub_2187453AC(v119, &unk_280EE4470, v102, v103, sub_2187C42D4);
    v100(v67, v101);

    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  v77 = v121;
  v78 = v122;
  sub_2187453AC(&v123, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  v79 = [v2 traitCollection];
  v80 = [v79 horizontalSizeClass];

  if (v80 == 2)
  {
    v81 = v110;
    sub_219BE9E94();
  }

  else
  {
    v81 = v110;
    if (v80 != 1)
    {
      v92 = MEMORY[0x277D83D88];
      sub_2187453AC(v46, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      (*(v120 + 8))(v77, v49);
      (*(v111 + 56))(v81, 1, 1, v112);
      v37 = &qword_280EE4518;
      v38 = MEMORY[0x277D6E548];
      v40 = v81;
      v39 = v92;
      return sub_2187453AC(v40, v37, v38, v39, sub_2187C42D4);
    }

    sub_219BE9EA4();
  }

  v89 = v111;
  v90 = v112;
  (*(v111 + 56))(v81, 0, 1, v112);
  v91 = v109;
  (*(v89 + 32))(v109, v81, v90);
  sub_218FDF7B0(v91, v78, v46, 0, 0);
  (*(v89 + 8))(v91, v90);
  sub_2187453AC(v46, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  return (*(v120 + 8))(v77, v49);
}

void *sub_218FE1838(uint64_t a1, uint64_t a2, UIViewController *a3, void *a4, uint64_t (*a5)(), uint64_t a6)
{
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_219BE92E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v22 = a3;
    v23 = a4;
    v19 = [result traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 2)
    {
      sub_219BE9E94();
      goto LABEL_6;
    }

    if (v20 == 1)
    {
      sub_219BE9EA4();
LABEL_6:
      (*(v14 + 56))(v12, 0, 1, v13);
      (*(v14 + 32))(v16, v12, v13);
      sub_218FDF7B0(v16, v22, v23, a5, a6);

      return (*(v14 + 8))(v16, v13);
    }

    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_2187453AC(v12, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
  }

  return result;
}

double sub_218FE1AE0(void *a1, char a2)
{
  v3 = [a1 _uip_sidebar];
  [v3 _setVisible_];

  sub_219BE2744();

  return result;
}

void sub_218FE1B68(uint64_t a1, UIViewController *a2, uint64_t a3)
{
  v4 = v3;
  v129 = a3;
  v130 = a2;
  v157 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = &v124 - v7;
  v8 = sub_219BE92E4();
  v140 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v158 = &v124 - v12;
  sub_2187C42D4(0, &unk_280EE3DC0, MEMORY[0x277D6E908], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v159 = &v124 - v14;
  sub_2187C04A0(0);
  v16 = v15;
  v146 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE9EC4();
  v128 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v160 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE92A4();
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = (&v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_2187DAD0C();
  if (!v25)
  {
    return;
  }

  v26 = v25;
  (*(v22 + 16))(v24, v157, v21);
  v27 = *(v22 + 88);
  v152 = v22 + 88;
  v151 = v27;
  v28 = v27(v24, v21);
  v29 = v28 == *MEMORY[0x277D6E4B8];
  v150 = v4;
  v153 = v21;
  if (v29)
  {
    v134 = v28;
    v154 = v19;
    v30 = *(v22 + 96);
    v132 = v22 + 96;
    v131 = v30;
    v30(v24, v21);
    v31 = *v24;
    v156 = v24[1];
    v157 = v31;
    v32 = v26;
    v33 = [v32 presentedViewController];
    if (v33)
    {
      v34 = v33;
      [v33 _setPreferredTransition_];
      [v32 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v125 = v22;
    v35 = [v32 viewControllers];
    v126 = v32;

    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v36 = sub_219BF5924();

    isUniquelyReferenced_nonNull_bridgeObject = v36;
    *&v162 = v36;
    if (v36 >> 62)
    {
LABEL_125:
      v122 = isUniquelyReferenced_nonNull_bridgeObject;
      v38 = sub_219BF7214();
      isUniquelyReferenced_nonNull_bridgeObject = v122;
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v154;
    v40 = v159;
    v41 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_presentationContextCache;
    v127 = isUniquelyReferenced_nonNull_bridgeObject;

    v148 = v41;
    swift_beginAccess();
    if (!v38)
    {
LABEL_98:

LABEL_73:
      v88 = v126;
      UINavigationController.setViewControllers(_:appendingVC:transitionIdentifier:)(&v162, v130, v129);

      goto LABEL_74;
    }

    v42 = v127;
    v149 = v127 & 0xC000000000000001;
    v144 = v127 & 0xFFFFFFFFFFFFFF8;
    v143 = v127 + 32;
    v147 = (v146 + 2);
    ++v146;
    v145 = (v128 + 48);
    v141 = (v128 + 32);
    v142 = (v140 + 7);
    v139 = (v140 + 4);
    v138 = (v140 + 2);
    v137 = (v140 + 11);
    v136 = *MEMORY[0x277D6E4F0];
    v133 = (v140 + 12);
    v135 = v140 + 1;
    v140 = (v128 + 8);
    while (1)
    {
      v44 = __OFSUB__(v38--, 1);
      if (v44)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v149)
      {
        v45 = MEMORY[0x21CECE0F0](v38, v127);
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }

        if (v38 >= *(v144 + 16))
        {
          goto LABEL_112;
        }

        v45 = *(v143 + 8 * v38);
      }

      v21 = v45;
      (*v147)(v18, v4 + v148, v16);
      p_isa = v21;
      sub_219BE1C74();
      v46 = v159;
      (*v146)(v18, v16);
      if ((*v145)(v46, 1, v39) == 1)
      {

        sub_2187453AC(v46, &unk_280EE3DC0, MEMORY[0x277D6E908], MEMORY[0x277D83D88], sub_2187C42D4);
        goto LABEL_73;
      }

      v47 = v46;
      v48 = v4;
      v49 = v160;
      (*v141)(v160, v47, v39);
      v50 = [v48 traitCollection];
      v51 = [v50 horizontalSizeClass];

      if (v51 == 2)
      {
        v52 = v155;
        v53 = v49;
        sub_219BE9E94();
      }

      else
      {
        v52 = v155;
        if (v51 != 1)
        {

          (*v142)(v52, 1, 1, v8);
          (*v140)(v160, v154);
          sub_2187453AC(v52, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
          goto LABEL_73;
        }

        v53 = v160;
        sub_219BE9EA4();
      }

      (*v142)(v52, 0, 1, v8);
      v54 = v158;
      (*v139)(v158, v52, v8);
      (*v138)(v10, v54, v8);
      v55 = (*v137)(v10, v8);
      if (v55 != v136)
      {

        v79 = *v135;
        (*v135)(v158, v8);
        (*v140)(v53, v154);
        v79(v10, v8);
        goto LABEL_73;
      }

      (*v133)(v10, v8);
      sub_218A55778(0);
      v57 = *(v56 + 48);
      v58 = v153;
      v59 = v151(v10, v153);
      if (v59 != v134)
      {

        (*v135)(v158, v8);
        (*v140)(v160, v154);
        v80 = sub_219BE92B4();
        (*(*(v80 - 8) + 8))(v10 + v57, v80);
        (*(v125 + 8))(v10, v58);
        goto LABEL_73;
      }

      v131(v10, v58);
      v61 = *v10;
      v60 = *(v10 + 8);
      v62 = sub_219BE92B4();
      (*(*(v62 - 8) + 8))(v10 + v57, v62);
      if (v157 == v61 && v156 == v60)
      {

        v4 = v150;
      }

      else
      {
        v63 = sub_219BF78F4();

        v4 = v150;
        if ((v63 & 1) == 0)
        {

          (*v135)(v158, v8);
          (*v140)(v160, v154);
          goto LABEL_73;
        }
      }

      if (v42 >> 62)
      {
        v66 = sub_219BF7214();
        v39 = v154;
        if (!v66)
        {
LABEL_10:

          v43 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v39 = v154;
        if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v42 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2194B7E54();
        v42 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      v64 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v65 = v64 - 1;
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v65 + 0x20);
      *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) = v65;

      *&v162 = v42;
LABEL_11:
      (*v135)(v158, v8);
      (*v140)(v160, v39);

      v40 = v159;
      if (!v38)
      {
        goto LABEL_98;
      }
    }
  }

  if (v28 == *MEMORY[0x277D6E4E0])
  {
    v67 = [objc_opt_self() areAnimationsEnabled];
    sub_219798754(v67);
LABEL_40:

LABEL_74:

    return;
  }

  if (v28 == *MEMORY[0x277D6E4D0])
  {
    v26 = v26;
    v68 = [v26 presentedViewController];
    if (v68)
    {
      v69 = v68;
      [v68 _setPreferredTransition_];
      [v26 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v70 = [v26 topViewController];

    v71 = v130;
    v72 = _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(v130, v70);

    if (v72)
    {

      return;
    }

    v81 = [v26 viewControllers];

    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v82 = sub_219BF5924();

    v83 = sub_218E659B0(v71, v82);
    v85 = v84;

    if (v85)
    {
      v86 = v71;
LABEL_67:
      UINavigationController.show(_:sender:transitionIdentifier:)(v86, 0, v129);

      return;
    }

    v92 = [objc_opt_self() areAnimationsEnabled];
    UINavigationController.swap(_:at:animated:)(v71, v83, v92);
LABEL_85:

    return;
  }

  if (v28 == *MEMORY[0x277D6E4C0])
  {
    v26 = v26;
    v73 = [v26 presentedViewController];
    v10 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if (v73)
    {
      v74 = v73;
      [v73 _setPreferredTransition_];
      [v26 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v75 = [v26 viewControllers];

    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v18 = sub_219BF5924();

    if (v18 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_219BF7214();
      v16 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
LABEL_52:
        v4 = v18 & 0xC000000000000001;
        v21 = (v18 + 32);
        while (1)
        {
          v44 = __OFSUB__(v16--, 1);
          if (v44)
          {
            goto LABEL_122;
          }

          if (v4)
          {
            v76 = MEMORY[0x21CECE0F0](v16, v18);
          }

          else
          {
            if ((v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_123;
            }

            if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            v76 = v21[v16];
          }

          v77 = v76;
          v78 = v76;
          v8 = _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(v77, v130);

          if (v8)
          {
            break;
          }

          if (!v16)
          {
            goto LABEL_127;
          }
        }

        v87 = [objc_opt_self() areAnimationsEnabled];
        sub_219798980(v78, v87);

        goto LABEL_40;
      }
    }

    else
    {
      v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_52;
      }
    }

LABEL_127:

    v86 = v130;
    goto LABEL_67;
  }

  if (v28 != *MEMORY[0x277D6E4D8] && v28 != *MEMORY[0x277D6E4C8])
  {

    (*(v22 + 8))(v24, v153);
    return;
  }

  if (*(v26 + qword_280EA07E8) != 1)
  {
    goto LABEL_85;
  }

  v18 = v26;
  v42 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v40 = [v18 viewControllers];
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  v89 = sub_219BF5924();

  v16 = v89 >> 62;
  if (!(v89 >> 62))
  {
    v10 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_79;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v89 < 0)
  {
    v40 = v89;
  }

  else
  {
    v40 = (v89 & 0xFFFFFFFFFFFFFF8);
  }

  v123 = sub_219BF7214();
  if (v123 < 1)
  {
    __break(1u);
    goto LABEL_140;
  }

  v10 = v123;
  if (sub_219BF7214() < 1)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (sub_219BF7214() < v10)
  {
    __break(1u);
    goto LABEL_135;
  }

LABEL_141:
  v4 = v150;
LABEL_79:
  if ((v89 & 0xC000000000000001) != 0)
  {

    if (v10 != 1)
    {
      v90 = 1;
      do
      {
        v91 = v90 + 1;
        sub_219BF7334();
        v90 = v91;
      }

      while (v10 != v91);
    }
  }

  else
  {
  }

  if (v16)
  {
    v16 = sub_219BF7564();
    v40 = v93;
    v8 = v94;
    v10 = v95;
  }

  else
  {
    v16 = v89 & 0xFFFFFFFFFFFFFF8;
    v40 = ((v89 & 0xFFFFFFFFFFFFFF8) + 32);
    v8 = 1;
    v10 = (2 * v10) | 1;
  }

  v21 = (v10 >> 1);
  if (v8 == v10 >> 1)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    goto LABEL_100;
  }

  if (v8 >= (v10 >> 1))
  {
    goto LABEL_136;
  }

  v165 = *(v40 + v8);
  v96 = v165;
  sub_2186CFDE4(0, &unk_280EE7DD8, MEMORY[0x277D6CAA8]);
  v97 = v96;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v4 = v150;
    goto LABEL_100;
  }

  v4 = v150;
  if (!*(&v163 + 1))
  {
LABEL_100:
    sub_2187453AC(&v162, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
    goto LABEL_101;
  }

  sub_2186CB1F0(&v162, &v165);
  if ((v10 & 1) == 0)
  {

    swift_unknownObjectRetain();
LABEL_97:
    sub_218B665C0(v16, v40, v8, v10);
    v99 = v98;
LABEL_119:
    swift_unknownObjectRelease();
    goto LABEL_120;
  }

LABEL_113:
  v118 = sub_219BF7934();
  swift_unknownObjectRetain_n();

  v160 = v118;
  v119 = swift_dynamicCastClass();
  if (!v119)
  {
    swift_unknownObjectRelease();
    v119 = MEMORY[0x277D84F90];
  }

  v120 = *(v119 + 16);

  if (__OFSUB__(v21, v8))
  {
    goto LABEL_137;
  }

  if (v120 != v21 - v8)
  {
LABEL_138:
    swift_unknownObjectRelease();
    goto LABEL_97;
  }

  v99 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v99)
  {
    v99 = MEMORY[0x277D84F90];
    goto LABEL_119;
  }

LABEL_120:
  p_isa = v99;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  *&v162 = sub_219BE1D74();
  *(&v162 + 1) = v121;
  sub_219BE3254();

  __swift_destroy_boxed_opaque_existential_1(&v165);
  v4 = v150;
LABEL_101:
  v100 = v130;
  v101 = sub_218FE6B38(v130, v4, v18);
  v102 = [v18 *(v42 + 3848)];

  v103 = sub_219BF5924();
  LOBYTE(v102) = sub_21941AD5C(v103, v101);

  if (v102)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v104 = sub_219BF5904();

    [v18 setViewControllers:v104 animated:0];

    p_isa = &v100->super.super.isa;
    sub_2186CFDE4(0, &unk_280EE7DD8, MEMORY[0x277D6CAA8]);
    v105 = v100;
    if (swift_dynamicCast())
    {
      sub_2186CB1F0(&v162, &v165);
      v106 = v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
      if (swift_unknownObjectWeakLoadStrong() && (v107 = *(v106 + 8), ObjectType = swift_getObjectType(), __swift_project_boxed_opaque_existential_1(&v165, v166), v4 = v150, v109 = sub_219BE1D74(), v111 = (*(v107 + 40))(v4, v109, v110, ObjectType, v107), swift_unknownObjectRelease(), , v111))
      {
        v112 = [v111 identifier];
        v113 = sub_219BF5414();
        v115 = v114;

        swift_unknownObjectRelease();
        v116 = (v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
        *v116 = v113;
        v116[1] = v115;
      }

      else
      {
        swift_unknownObjectRelease();

        v117 = (v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
        *v117 = 0;
        v117[1] = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v165);
    }

    else
    {

      swift_unknownObjectRelease();
      v164 = 0;
      v162 = 0u;
      v163 = 0u;
      sub_2187453AC(&v162, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
    }
  }
}

void sub_218FE31F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_219BE9294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BF6534();
  [v10 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];

  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x277D6E4A8])
  {
    (*(v7 + 96))(v9, v6);
    v12 = sub_218FE5088(*v9, v9[1]);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      [v3 setSelectedIndex_];
    }
  }

  else if (v11 == *MEMORY[0x277D6E4B0])
  {
    v23 = a2;
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    sub_2186CFDE4(0, &qword_27CC14B40, MEMORY[0x277D6D2B8]);
    v15 = a2;
    if (swift_dynamicCast())
    {
      sub_2186CB1F0(v21, v24);
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v16 = sub_219BE1D74();
      v18 = sub_218FE5088(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        [v3 setSelectedIndex_];
      }

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_2187453AC(v21, &unk_27CC14B48, &qword_27CC14B40, MEMORY[0x277D6D2B8], sub_2186C6F70);
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

void sub_218FE34CC(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(), uint64_t a6)
{
  v78 = a6;
  v79 = a2;
  v80 = a5;
  v81 = a3;
  v82 = a4;
  v8 = a4;
  v9 = sub_219BDB1E4();
  v76 = *(v9 - 1);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE94F4();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v69 - v17;
  v18 = sub_219BE92D4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF6534();
  if (v8 == 2)
  {
    v82 = [objc_opt_self() areAnimationsEnabled];
  }

  v83 = v22;
  v23 = a1;
  v24 = _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(v22, a1);

  if ((v24 & 1) == 0)
  {
    (*(v19 + 104))(&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E540], v18);
    v26 = sub_219BE92C4();
    (*(v19 + 8))(&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    if (v26)
    {
      v27 = [v83 presentingViewController];
      if (v27)
      {

        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = v72;
        sub_2187DAC98(v79, v72, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
        v30 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v31 = v30 + v14;
        v32 = v23;
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
        *(v33 + 24) = v32;
        sub_218FEADDC(v29, v33 + v30);
        v34 = v82 & 1;
        *(v33 + v31) = v34;
        v35 = v33 + (v31 & 0xFFFFFFFFFFFFFFF8);
        v36 = v80;
        v37 = v78;
        *(v35 + 8) = v80;
        *(v35 + 16) = v37;
        v88 = sub_218FEB00C;
        v89 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v85 = 1107296256;
        v86 = sub_218793E0C;
        v87 = &block_descriptor_101_0;
        v38 = _Block_copy(&aBlock);
        v39 = v32;
        sub_2188202A8(v36);

        [v6 dismissViewControllerAnimated:v34 completion:v38];
        v40 = v38;
LABEL_27:
        _Block_release(v40);

        return;
      }
    }

    if ([v83 modalPresentationStyle] == 7)
    {
      v41 = [v83 presentingViewController];
      if (v41)
      {
        v42 = v41;
        v43 = [v23 modalPresentationStyle];
        if (v43 <= 8 && ((1 << v43) & 0x121) != 0)
        {
          v44 = swift_allocObject();
          v77 = v23;
          v45 = v44;
          swift_unknownObjectWeakInit();
          v46 = v79;
          v79 = v42;
          v47 = v72;
          sub_2187DAC98(v46, v72, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
          (*(v19 + 16))(&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v81, v18);
          v48 = (*(v71 + 80) + 32) & ~*(v71 + 80);
          v49 = (v14 + *(v19 + 80) + v48) & ~*(v19 + 80);
          v50 = v49 + v20;
          v51 = swift_allocObject();
          v52 = v77;
          *(v51 + 16) = v45;
          *(v51 + 24) = v52;
          sub_218FEADDC(v47, v51 + v48);
          (*(v19 + 32))(v51 + v49, v21, v18);
          v53 = v82 & 1;
          *(v51 + v50) = v53;
          v54 = v51 + (v50 & 0xFFFFFFFFFFFFFFF8);
          v55 = v80;
          v56 = v78;
          *(v54 + 8) = v80;
          *(v54 + 16) = v56;
          v88 = sub_218FEAEDC;
          v89 = v51;
          aBlock = MEMORY[0x277D85DD0];
          v85 = 1107296256;
          v86 = sub_218793E0C;
          v87 = &block_descriptor_94_0;
          v57 = _Block_copy(&aBlock);
          v58 = v77;
          sub_2188202A8(v55);

          v59 = v79;
          [v79 dismissViewControllerAnimated:v53 completion:v57];

          v40 = v57;
          goto LABEL_27;
        }
      }
    }

    sub_2187DAC98(v79, v15, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v61 = v73;
    v60 = v74;
    if ((*(v73 + 48))(v15, 1, v74) == 1)
    {
      sub_2187453AC(v15, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    }

    else
    {
      v62 = v70;
      (*(v61 + 32))(v70, v15, v60);
      sub_218FE6D80(v23, v83, v62);
      (*(v61 + 8))(v62, v60);
    }

    if (v83 != v6 && [v23 modalPresentationStyle] != 4)
    {
      v63 = [v23 presentationController];
      if (v63)
      {
        v64 = v63;
        [v63 ts:1 containerIgnoresDirectTouchEvents:?];
      }
    }

    v65 = [objc_opt_self() defaultCenter];
    sub_2186C6148(0, &qword_280E8E0C8, 0x277D75A50);
    v66 = v75;
    sub_219BF6964();
    v67 = sub_219BDB194();
    (*(v76 + 8))(v66, v77);
    [v65 postNotification_];

    if (v80)
    {
      v88 = v80;
      v89 = v78;
      aBlock = MEMORY[0x277D85DD0];
      v85 = 1107296256;
      v86 = sub_218793E0C;
      v87 = &block_descriptor_87;
      v68 = _Block_copy(&aBlock);
    }

    else
    {
      v68 = 0;
    }

    [v83 presentViewController:v23 animated:v82 & 1 completion:v68];
    v40 = v68;
    goto LABEL_27;
  }

  v25 = v83;
}

id sub_218FE3F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_218FE40E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
  v7 = *(v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = *v6;

  v9 = [a2 _identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  if (v8 == v10 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_219BF78F4();

    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v15 = sub_2187DAD0C();
  if (!v15)
  {
LABEL_19:
    v29 = v3 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      (*(v30 + 48))(v3, a2, a1, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    v32 = [a2 _identifier];
    v33 = sub_219BF5414();
    v35 = v34;

    *v6 = v33;
    v6[1] = v35;

    return result;
  }

  v16 = v15;
  v36 = [v15 topViewController];
  if (!v36)
  {

    goto LABEL_19;
  }

  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_280F627D8);
  v18 = a2;
  v19 = sub_219BE5414();
  v20 = sub_219BF6214();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136446210;
    v23 = [v18 _identifier];
    v24 = sub_219BF5414();
    v26 = v25;

    v27 = sub_2186D1058(v24, v26, &v37);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_2186C1000, v19, v20, "Perform re-selection of tab element %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CECF960](v22, -1, -1);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  sub_218FE4418(v36, v16);

  return result;
}

void sub_218FE4418(uint64_t a1, char *a2)
{
  v4 = [objc_opt_self() areAnimationsEnabled];
  if (sub_218FE7438(a2, v2))
  {
    sub_219798754(v4);

    return;
  }

  v5 = *&a2[qword_280EA07F0];
  v6 = [v5 navigationItem];
  v13 = [v6 searchController];

  if (v13)
  {
    if ([v13 showsSearchResultsController] && objc_msgSend(v13, sel_isActive))
    {
      [v13 setActive_];
      [v13 resignFirstResponder];
LABEL_20:

      return;
    }
  }

  v7 = [v5 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    if ([v8 showsSearchResultsController] && (objc_msgSend(v8, sel_isActive) & 1) == 0)
    {
      [v8 setActive_];
      [v8 becomeFirstResponder];
    }
  }

  sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
  v9 = sub_219BF65C4();
  if (v9)
  {
    v13 = v9;
    if (([v9 ts:v4 scrollToTop:1 dismissKeyboard:?] & 1) == 0)
    {
      v10 = [a2 topViewController];
      if (v10)
      {
        v11 = v10;
        v12 = sub_219BF6594();

        if (v12)
        {
          [v12 scrollToTopAnimated_];
          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_20;
  }
}

void sub_218FE4C24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(id, char *))
{
  v9 = sub_219BE8F84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D6E3B0], v9, v11);
  v14 = a5;
  v15 = a1;
  a6(v14, v13);

  (*(v10 + 8))(v13, v9);
}

unint64_t sub_218FE5088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 viewControllers];
  if (v6)
  {
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v7 = sub_219BF5924();

    if (v7 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v6 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CECE0F0](v6, v7);
        }

        else
        {
          if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v9 = *(v7 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [v9 _uip_tabElement];
        if (v11)
        {
          break;
        }

        v19 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

LABEL_19:
        ++v6;
        if (v19 == i)
        {
          goto LABEL_20;
        }
      }

      v12 = v11;
      v13 = [v11 _identifier];

      v14 = sub_219BF5414();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {

        return v6;
      }

      v18 = sub_219BF78F4();

      if (v18)
      {

        return v6;
      }

      v19 = (v6 + 1);
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_20:

    return 0;
  }

  return v6;
}

void sub_218FE5288(void *a1)
{
  v3 = sub_218FE0504(*(v1 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier), *(v1 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier + 8));
  if (v3)
  {
    v6 = v3;
    type metadata accessor for FloatingTabBarNavigationController(0);
    if (swift_dynamicCastClass())
    {
      type metadata accessor for SearchHomeCoordinatingController();
      sub_219BF6584();
      if (v7)
      {
        v4 = *&v7[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
        v5 = a1;
        sub_219B5F630(a1);

        return;
      }
    }
  }
}

Swift::Void __swiftcall UINavigationController.swap(_:at:animated:)(UIViewController *_, Swift::Int at, Swift::Bool animated)
{
  v4 = v3;
  v8 = [v3 viewControllers];
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  v9 = sub_219BF5924();

  v10 = _;
  MEMORY[0x21CECC690]();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v11 = sub_219BF5904();

  [v4 setViewControllers:v11 animated:animated];
}

void UINavigationController.show(_:sender:transitionIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v77 = a2;
  v6 = sub_219BE94F4();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v74 = v10;
  v23 = sub_219BE5434();
  v24 = __swift_project_value_buffer(v23, qword_280F627D8);
  sub_2187DAC98(a3, v22, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  v25 = a1;
  v26 = v3;
  v75 = v24;
  v27 = sub_219BE5414();
  v28 = sub_219BF6214();

  v29 = os_log_type_enabled(v27, v28);
  v78 = v13;
  if (v29)
  {
    v71 = v28;
    v72 = v26;
    v73 = a3;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v80 = v70;
    *v30 = 138543874;
    *(v30 + 4) = v25;
    v69 = v31;
    *v31 = v25;
    *(v30 + 12) = 2082;
    sub_2187DAC98(v22, v19, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v32 = v79;
    v33 = (*(v79 + 48))(v19, 1, v6);
    v34 = v25;
    if (v33 == 1)
    {
      sub_2187453AC(v19, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = sub_219BE94E4();
      v35 = v39;
      (*(v32 + 8))(v19, v6);
    }

    sub_2187453AC(v22, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v40 = sub_2186D1058(v36, v35, &v80);

    *(v30 + 14) = v40;
    *(v30 + 22) = 2082;
    v26 = v72;
    v41 = [v72 topViewController];
    v42 = 7104878;
    if (v41)
    {
      v43 = v41;
      v44 = [v41 description];

      v42 = sub_219BF5414();
      v46 = v45;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v38 = v76;
    v47 = sub_2186D1058(v42, v46, &v80);

    *(v30 + 24) = v47;
    _os_log_impl(&dword_2186C1000, v27, v71, "Will show view controller %{public}@ with transition identifier %{public}s from top view controller %{public}s", v30, 0x20u);
    v48 = v69;
    sub_218962D30(v69);
    MEMORY[0x21CECF960](v48, -1, -1);
    v49 = v70;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v49, -1, -1);
    MEMORY[0x21CECF960](v30, -1, -1);

    v13 = v78;
    v37 = v79;
    a3 = v73;
  }

  else
  {

    sub_2187453AC(v22, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v37 = v79;
    v38 = v76;
  }

  sub_2187DAC98(a3, v16, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  v50 = *(v37 + 48);
  if (v50(v16, 1, v6) == 1)
  {
    sub_2187453AC(v16, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  }

  else
  {
    (*(v37 + 32))(v38, v16, v6);
    v51 = v26;
    v52 = [v26 topViewController];
    if (v52)
    {
      v53 = v52;
      sub_218FE6D80(v25, v52, v38);
    }

    (*(v37 + 8))(v38, v6);
    v26 = v51;
  }

  [v26 showViewController:v25 sender:v77];
  sub_2187DAC98(a3, v13, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  v54 = v25;
  v55 = sub_219BE5414();
  v56 = sub_219BF6214();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v13;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v80 = v60;
    *v58 = 138543618;
    *(v58 + 4) = v54;
    *v59 = v54;
    *(v58 + 12) = 2082;
    v61 = v57;
    v62 = v50;
    v63 = v74;
    sub_2187DAC98(v61, v74, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    LODWORD(v62) = v62(v63, 1, v6);
    v64 = v54;
    if (v62 == 1)
    {
      v65 = 7104878;
      sub_2187453AC(v63, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      v66 = 0xE300000000000000;
    }

    else
    {
      v65 = sub_219BE94E4();
      v66 = v67;
      (*(v79 + 8))(v63, v6);
    }

    sub_2187453AC(v78, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v68 = sub_2186D1058(v65, v66, &v80);

    *(v58 + 14) = v68;
    _os_log_impl(&dword_2186C1000, v55, v56, "Did show view controller %{public}@ with transition identifier %{public}s", v58, 0x16u);
    sub_218962D30(v59);
    MEMORY[0x21CECF960](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x21CECF960](v60, -1, -1);
    MEMORY[0x21CECF960](v58, -1, -1);
  }

  else
  {

    sub_2187453AC(v13, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  }
}

void UINavigationController.setViewControllers(_:appendingVC:transitionIdentifier:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v82 = a1;
  v6 = sub_219BE94F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v80 = &v72 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v22 = sub_219BE5434();
  v23 = __swift_project_value_buffer(v22, qword_280F627D8);
  sub_2187DAC98(a3, v21, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  v24 = a2;
  v25 = v3;
  v81 = v23;
  v26 = sub_219BE5414();
  v27 = sub_219BF6214();
  v84 = v25;

  v78 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v29 = &selRef_boldSystemFontOfSize_;
  v83 = v13;
  if (v28)
  {
    v74 = a3;
    v30 = v7;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v85 = v33;
    *v31 = 138543874;
    *(v31 + 4) = v24;
    v73 = v32;
    *v32 = v24;
    *(v31 + 12) = 2082;
    sub_2187DAC98(v21, v18, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    LODWORD(v32) = (*(v7 + 48))(v18, 1, v6);
    v34 = v24;
    v75 = v7;
    v76 = v6;
    if (v32 == 1)
    {
      sub_2187453AC(v18, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = sub_219BE94E4();
      v35 = v39;
      (*(v30 + 8))(v18, v6);
    }

    sub_2187453AC(v21, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v40 = sub_2186D1058(v36, v35, &v85);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2082;
    v37 = v84;
    v41 = [v84 topViewController];
    v38 = v80;
    if (v41)
    {
      v42 = v41;
      v43 = [v41 description];

      v44 = sub_219BF5414();
      v46 = v45;

      v6 = v76;
    }

    else
    {
      v46 = 0xE300000000000000;
      v6 = v76;
      v44 = 7104878;
    }

    v47 = sub_2186D1058(v44, v46, &v85);

    *(v31 + 24) = v47;
    _os_log_impl(&dword_2186C1000, v26, v78, "Will append view controller %{public}@ with transition identifier %{public}s from top view controller %{public}s", v31, 0x20u);
    v48 = v73;
    sub_218962D30(v73);
    MEMORY[0x21CECF960](v48, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v31, -1, -1);

    v13 = v83;
    a3 = v74;
    v7 = v75;
    v29 = &selRef_boldSystemFontOfSize_;
  }

  else
  {

    sub_2187453AC(v21, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v37 = v84;
    v38 = v80;
  }

  v49 = [v37 v29[291]];
  if (v49)
  {
    v50 = v49;
    sub_2187DAC98(a3, v38, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    if ((*(v7 + 48))(v38, 1, v6) == 1)
    {

      sub_2187453AC(v38, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    }

    else
    {
      v51 = v77;
      (*(v7 + 32))(v77, v38, v6);
      sub_218FE6D80(v24, v50, v51);

      (*(v7 + 8))(v51, v6);
    }
  }

  v52 = v7;
  v53 = v24;
  v54 = v82;
  MEMORY[0x21CECC690]();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
    v37 = v84;
  }

  sub_219BF5A54();
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  v55 = sub_219BF5904();
  [v37 setViewControllers:v55 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];

  sub_2187DAC98(a3, v13, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  v56 = v53;
  v57 = sub_219BE5414();
  v58 = sub_219BF6214();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v13;
    v61 = v6;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v79;
    v65 = v52;
    v66 = v63;
    v85 = v63;
    *v59 = 138543618;
    *(v59 + 4) = v56;
    *v62 = v56;
    *(v59 + 12) = 2082;
    sub_2187DAC98(v60, v64, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    LODWORD(v60) = (*(v65 + 48))(v64, 1, v61);
    v67 = v56;
    if (v60 == 1)
    {
      v68 = 7104878;
      sub_2187453AC(v64, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      v69 = 0xE300000000000000;
    }

    else
    {
      v68 = sub_219BE94E4();
      v69 = v70;
      (*(v65 + 8))(v64, v61);
    }

    sub_2187453AC(v83, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v71 = sub_2186D1058(v68, v69, &v85);

    *(v59 + 14) = v71;
    _os_log_impl(&dword_2186C1000, v57, v58, "Did append view controller %{public}@ with transition identifier %{public}s", v59, 0x16u);
    sub_218962D30(v62);
    MEMORY[0x21CECF960](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x21CECF960](v66, -1, -1);
    MEMORY[0x21CECF960](v59, -1, -1);
  }

  else
  {

    sub_2187453AC(v13, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  }
}

uint64_t sub_218FE6B38(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  sub_2186CFDE4(0, &unk_280EE7DD8, MEMORY[0x277D6CAA8]);
  v5 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2187453AC(v16, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
LABEL_6:
    sub_2187C3D44(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C189F0;
    v12 = *(a3 + qword_280EA07F0);
    *(v11 + 32) = v12;
    *(v11 + 40) = v5;
    v13 = v5;
    v14 = v12;
    return v11;
  }

  sub_2186CB1F0(v16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);

  *&v16[0] = sub_219BE1D74();
  *(&v16[0] + 1) = v6;
  sub_219BE3274();

  v7 = v18;
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    goto LABEL_6;
  }

  sub_2187C3D44(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C146A0;
  v9 = *(a3 + qword_280EA07F0);
  *(v8 + 32) = v9;
  *&v16[0] = v8;
  v10 = v9;
  sub_2191ED598(v7);
  v11 = *&v16[0];
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v11;
}

void sub_218FE6D80(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_219BE94F4();
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  v75 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  v16 = __swift_project_value_buffer(v15, qword_280F627D8);
  v17 = v81 + 16;
  v80 = *(v81 + 16);
  v80(v14, a3, v6);
  v18 = a1;
  v19 = a2;
  v72 = v16;
  v20 = v18;
  v21 = sub_219BE5414();
  v22 = sub_219BF6214();

  v23 = os_log_type_enabled(v21, v22);
  v76 = v20;
  v73 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v79 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v74 = v17;
    v27 = v26;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v25 = 138543874;
    *(v25 + 4) = v20;
    *v27 = v20;
    *(v25 + 12) = 2082;
    v29 = v20;
    v30 = sub_219BE94E4();
    v78 = a3;
    v32 = v31;
    v71 = *(v81 + 8);
    v71(v14, v6);
    v33 = sub_2186D1058(v30, v32, aBlock);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2082;
    v34 = [v79 description];
    v35 = sub_219BF5414();
    v37 = v36;

    v38 = sub_2186D1058(v35, v37, aBlock);
    a3 = v78;

    *(v25 + 24) = v38;
    _os_log_impl(&dword_2186C1000, v21, v22, "Zoom transition will prepare view controller %{public}@ with transition identifier %{public}s from top view controller %{public}s", v25, 0x20u);
    sub_218962D30(v27);
    v39 = v27;
    v17 = v74;
    MEMORY[0x21CECF960](v39, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v28, -1, -1);
    v40 = v25;
    v19 = v79;
    MEMORY[0x21CECF960](v40, -1, -1);
  }

  else
  {

    v71 = *(v81 + 8);
    v71(v14, v6);
  }

  sub_219BE94E4();
  v41 = sub_219BF65A4();

  if (v41)
  {
    v42 = v73;
    v80(v73, a3, v6);
    v43 = v41;
    v44 = sub_219BE5414();
    v45 = sub_219BF6214();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v79 = v19;
      v47 = v46;
      v48 = swift_slowAlloc();
      v78 = a3;
      v49 = v48;
      v50 = swift_slowAlloc();
      v74 = v17;
      v51 = v50;
      aBlock[0] = v50;
      *v47 = 138543618;
      *(v47 + 4) = v43;
      *v49 = v41;
      *(v47 + 12) = 2082;
      v52 = v43;
      v53 = sub_219BE94E4();
      v55 = v54;
      v56 = v42;
      v57 = v43;
      v71(v56, v6);
      v58 = sub_2186D1058(v53, v55, aBlock);

      *(v47 + 14) = v58;
      _os_log_impl(&dword_2186C1000, v44, v45, "Zoom transition found initial source view %{public}@ for transition identifier %{public}s", v47, 0x16u);
      sub_218962D30(v49);
      v59 = v49;
      a3 = v78;
      MEMORY[0x21CECF960](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x21CECF960](v51, -1, -1);
      MEMORY[0x21CECF960](v47, -1, -1);
    }

    else
    {

      v71(v42, v6);
      v57 = v43;
    }

    v60 = objc_opt_self();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v77;
    v80(v77, a3, v6);
    v64 = v6;
    v65 = v81;
    v66 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v62;
    *(v67 + 24) = v61;
    (*(v65 + 32))(v67 + v66, v63, v64);
    aBlock[4] = sub_218FEB414;
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218FEA284;
    aBlock[3] = &block_descriptor_122;
    v68 = _Block_copy(aBlock);

    v69 = [v60 zoomWithSourceViewProvider_];
    _Block_release(v68);
    [v76 _setPreferredTransition_];
  }
}

BOOL sub_218FE7438(void *a1, id a2)
{
  if (*(a1 + qword_280EA07E8) == 1 && (v2 = a1, v3 = [a2 traitCollection], v4 = objc_msgSend(v3, sel_horizontalSizeClass), v3, a1 = v2, v4 == 2))
  {
    v5 = [v2 viewControllers];
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v6 = sub_219BF5924();

    if (v6 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v7 <= 2;
  }

  else
  {
    v9 = [a1 viewControllers];
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v10 = sub_219BF5924();

    if (v10 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v11 <= 1;
  }

  return !v8;
}

id sub_218FE75B0(int a1, id a2)
{
  if ([a2 scrollsToTop])
  {
    v3 = [a2 isUserInteractionEnabled];
  }

  else
  {
    v3 = 0;
  }

  result = [a2 isScrollEnabled];
  if (result)
  {
    if ((v3 & 1) == 0)
    {
      result = [a2 delegate];
      if (result)
      {
        v5 = result;
        if ([result respondsToSelector_])
        {
          v6 = [v5 scrollViewShouldScrollToTop_];
        }

        else
        {
          v6 = 0;
        }

        swift_unknownObjectRelease();
        return v6;
      }
    }
  }

  return result;
}

id sub_218FE7680(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  v19 = sub_218FE0504(a1, a2);
  if (v19)
  {
    return v19;
  }

  v99 = a1;
  v96 = a3;
  v94 = v12;
  v20 = sub_2187DAD0C();
  if (v20)
  {
    v92 = v15;
    v95 = v20;
    v21 = [v20 viewControllers];
    v100 = sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v22 = sub_219BF5924();

    if (v22 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v91 = v9;
      v93 = v3;
      v90 = v18;
      v9 = 0;
      v18 = (v22 & 0xC000000000000001);
      v97 = v22 & 0xFFFFFFFFFFFFFF8;
      v24 = MEMORY[0x277D6CAA8];
      v98 = v22;
      while (1)
      {
        if (v18)
        {
          v25 = MEMORY[0x21CECE0F0](v9, v22);
        }

        else
        {
          if (v9 >= *(v97 + 16))
          {
            goto LABEL_23;
          }

          v25 = *(v22 + 8 * v9 + 32);
        }

        v3 = v25;
        v26 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v103 = v25;
        sub_2186CFDE4(0, &unk_280EE7DD8, v24);
        v27 = v3;
        v3 = v24;
        v19 = v27;
        if (swift_dynamicCast())
        {
          v28 = i;
          v29 = v18;
          sub_2186CB1F0(v101, &v104);
          __swift_project_boxed_opaque_existential_1(&v104, v106);
          v30 = v99;
          v31 = sub_219BE1D74();
          v3 = v32;
          if (v31 == v30 && v32 == a2)
          {

LABEL_21:

            __swift_destroy_boxed_opaque_existential_1(&v104);
            return v19;
          }

          v33 = sub_219BF78F4();

          if (v33)
          {

            goto LABEL_21;
          }

          v18 = v29;

          __swift_destroy_boxed_opaque_existential_1(&v104);
          i = v28;
          v22 = v98;
          v24 = MEMORY[0x277D6CAA8];
        }

        else
        {

          v102 = 0;
          memset(v101, 0, sizeof(v101));
          sub_2187453AC(v101, &qword_280EE7DD0, &unk_280EE7DD8, v3, sub_2186C6F70);
          v24 = v3;
        }

        ++v9;
        if (v26 == i)
        {

          v18 = v90;
          v3 = v93;
          v9 = v91;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v15 = v92;
  }

  v34 = [v3 traitCollection];
  v35 = [v34 horizontalSizeClass];

  if (!v35)
  {
    goto LABEL_31;
  }

  if (v35 != 2)
  {
    if (v35 == 1)
    {
      v91 = v9;
      v93 = v3;
      v100 = a2;
      sub_219BE9EA4();
      goto LABEL_37;
    }

LABEL_31:
    v36 = sub_219BE92E4();
    (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
LABEL_32:
    v37 = MEMORY[0x277D6E548];
    v38 = MEMORY[0x277D83D88];
    v39 = v18;
LABEL_33:
    sub_2187453AC(v39, &qword_280EE4518, v37, v38, sub_2187C42D4);
    return 0;
  }

  v91 = v9;
  v93 = v3;
  v100 = a2;
  sub_219BE9E94();
LABEL_37:
  v41 = sub_219BE92E4();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v43(v18, 0, 1, v41);
  sub_2187DAC98(v18, v15, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
  v44 = *(v42 + 88);
  v45 = v44(v15, v41);
  v46 = *MEMORY[0x277D6E4F0];
  if (v45 == *MEMORY[0x277D6E4F0])
  {
    (*(v42 + 96))(v15, v41);
    sub_218A55778(0);
    v48 = *(v47 + 48);
    v49 = sub_219BE92A4();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 88))(v15, v49);
    v52 = v15;
    if (v51 == *MEMORY[0x277D6E4D8])
    {
      v53 = sub_219BE92B4();
      v54 = *(v53 - 8);
      if ((*(v54 + 88))(&v15[v48], v53) != *MEMORY[0x277D6E508])
      {
        (*(v54 + 8))(&v15[v48], v53);
        goto LABEL_32;
      }
    }

    else
    {
      v70 = v51;
      v71 = *MEMORY[0x277D6E4C8];
      v72 = sub_219BE92B4();
      v73 = *(v72 - 8);
      v74 = v73;
      if (v70 != v71)
      {
        (*(v73 + 8))(v52 + v48, v72);
        (*(v50 + 8))(v52, v49);
        goto LABEL_32;
      }

      if ((*(v73 + 88))(v52 + v48, v72) != *MEMORY[0x277D6E508])
      {
        (*(v74 + 8))(v52 + v48, v72);
        goto LABEL_32;
      }
    }

    sub_2187453AC(v18, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
    v104 = v99;
    v105 = v100;

    sub_219BE3274();

    v75 = *&v101[0];
    if (!*&v101[0])
    {
      return 0;
    }

    v76 = *&v101[0] & 0xFFFFFFFFFFFFFF8;
    if (*&v101[0] >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_52;
      }
    }

    else if (*((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_52:
      if ((v75 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x21CECE0F0](0, v75);
        goto LABEL_55;
      }

      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v75 + 32);
LABEL_55:
        v19 = v77;

        return v19;
      }

      __break(1u);
      goto LABEL_78;
    }

    return 0;
  }

  if (v45 != *MEMORY[0x277D6E520])
  {
    (*(v42 + 8))(v15, v41);
    goto LABEL_32;
  }

  v90 = v18;
  v55 = *(v42 + 96);
  v55(v15, v41);
  v56 = *v15;
  v57 = *(*v15 + 16);
  if (!v57)
  {

    v78 = v94;
    v43(v94, 1, 1, v41);
    v52 = v90;
LABEL_61:
    v79 = MEMORY[0x277D6E548];
    v80 = MEMORY[0x277D83D88];
    sub_2187453AC(v78, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
    v39 = v52;
    v37 = v79;
    v38 = v80;
    goto LABEL_33;
  }

  v98 = v55;
  v58 = v94;
  (*(v42 + 16))(v94, v56 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * (v57 - 1), v41);

  v43(v58, 0, 1, v41);
  v59 = v91;
  sub_2187DAC98(v58, v91, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
  if (v44(v59, v41) != v46)
  {
    (*(v42 + 8))(v59, v41);
    v52 = v90;
    goto LABEL_60;
  }

  v98(v59, v41);
  sub_218A55778(0);
  v61 = *(v60 + 48);
  v62 = sub_219BE92A4();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 88))(v59, v62);
  v65 = v59;
  if (v64 == *MEMORY[0x277D6E4D8])
  {
    v66 = sub_219BE92B4();
    v67 = *(v66 - 8);
    v68 = (*(v67 + 88))(v65 + v61, v66);
    v52 = v90;
    v69 = v99;
    if (v68 != *MEMORY[0x277D6E508])
    {
      (*(v67 + 8))(v65 + v61, v66);
LABEL_60:
      v78 = v94;
      goto LABEL_61;
    }
  }

  else
  {
    v81 = v64;
    v82 = v59;
    v83 = *MEMORY[0x277D6E4C8];
    v84 = sub_219BE92B4();
    v85 = *(v84 - 8);
    v86 = v85;
    v87 = v81 == v83;
    v52 = v90;
    v69 = v99;
    if (!v87)
    {
      (*(v85 + 8))(v82 + v61, v84);
      (*(v63 + 8))(v82, v62);
      goto LABEL_60;
    }

    if ((*(v85 + 88))(v82 + v61, v84) != *MEMORY[0x277D6E508])
    {
      (*(v86 + 8))(v82 + v61, v84);
      goto LABEL_60;
    }
  }

  sub_2187453AC(v94, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
  v104 = v69;
  v105 = v100;

  sub_219BE3274();

  v75 = *&v101[0];
  if (!*&v101[0])
  {
LABEL_80:
    v19 = 0;
    goto LABEL_81;
  }

  v76 = *&v101[0] & 0xFFFFFFFFFFFFFF8;
  if (*&v101[0] >> 62)
  {
LABEL_78:
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

  result = *((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_79:

    goto LABEL_80;
  }

LABEL_69:
  if ((v75 & 0xC000000000000001) != 0)
  {
    v88 = MEMORY[0x21CECE0F0](0, v75);
    goto LABEL_72;
  }

  if (*(v76 + 16))
  {
    v88 = *(v75 + 32);
LABEL_72:
    v19 = v88;

LABEL_81:
    sub_2187453AC(v52, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_218FE8498(uint64_t a1, void *a2, void *a3, char a4, uint64_t (*a5)(), uint64_t a6)
{
  v11 = sub_219BE92D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    (*(v12 + 104))(v14, *MEMORY[0x277D6E528], v11);
    sub_218FE34CC(a2, a3, v14, a4 & 1, a5, a6);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void sub_218FE85F4(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, uint64_t (*a6)(), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_218FE34CC(a2, a3, a4, a5 & 1, a6, a7);
  }
}

uint64_t sub_218FE86AC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_218FE8744@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2194AB9FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ChannelPickerElementModel(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_218FEA648(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_218FE8864(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2194B7E54();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_218FE88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 _uip_sidebar];
    v6 = [v4 _uip_sidebar];

    v7 = [v6 _isVisible];
    [v5 _setVisible_];
  }
}

uint64_t sub_218FE89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = [Strong presentedViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isBeingDismissed];

    v4 = v6;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_218FE8A54(_BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong _uip_sidebar];
    v6 = [v5 _isVisible];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_218FE8AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_2187DAD0C();

    if (v5)
    {
      v6 = [v5 popViewControllerAnimated_];
    }
  }
}

void *sub_218FE8B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_2187DAD0C();

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong presentedViewController], v7, v8))
      {

        return 0;
      }

      else
      {
        if ((*(v5 + qword_280EA07E8) & 1) == 0 || (swift_beginAccess(), (v9 = swift_unknownObjectWeakLoadStrong()) != 0) && (v10 = v9, v11 = [v9 traitCollection], v10, v12 = objc_msgSend(v11, sel_horizontalSizeClass), v11, v12 == 1))
        {
          v13 = [v5 viewControllers];
          sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
          v14 = sub_219BF5924();

          if (v14 >> 62)
          {
            v15 = sub_219BF7214();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v15 <= 1;
        }

        else
        {
          v17 = [v5 viewControllers];
          sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
          v18 = sub_219BF5924();

          if (v18 >> 62)
          {
            v19 = sub_219BF7214();
          }

          else
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v19 <= 2;
        }

        return !v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_218FE8DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 selectedViewController];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 topViewController];
        if (v8)
        {
          v9 = v8;
          v10 = sub_219BF65B4();

          v11 = [v10 searchController];
          if (v11)
          {

            v12 = [v11 searchBar];
            [v12 becomeFirstResponder];

            return;
          }
        }
      }
    }

    v13 = [v4 traitCollection];
    v14 = [v13 horizontalSizeClass];

    if (v14 != 2)
    {
      if (v14 == 1)
      {
        v15 = sub_218FE0504(0x6E69776F6C6C6F46, 0xE900000000000067);
        if (v15)
        {
          v16 = v15;
          type metadata accessor for FloatingTabBarNavigationController(0);
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            v18 = v17;
            sub_219798754(0);

            [v4 setSelectedViewController_];

            v19 = [objc_opt_self() sharedApplication];
            v20 = swift_allocObject();
            *(v20 + 16) = v18;
            v36 = sub_218FEAE88;
            v37 = v20;
            aBlock = MEMORY[0x277D85DD0];
            v33 = 1107296256;
            v34 = sub_218793E0C;
            v35 = &block_descriptor_51_1;
            v21 = _Block_copy(&aBlock);
            v22 = v16;

            [v19 ts:v21 installCACommitCompletionBlock:?];

            _Block_release(v21);
            return;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v14)
      {
        type metadata accessor for UIUserInterfaceSizeClass(0);
        sub_219BF7974();
        __break(1u);
        return;
      }
    }

    v23 = *&v4[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier];
    v24 = *&v4[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier + 8];

    v16 = sub_218FE0504(v23, v24);

    if (v16)
    {
      type metadata accessor for FloatingTabBarNavigationController(0);
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        type metadata accessor for SearchHomeCoordinatingController();
        v16 = v16;
        sub_219BF6584();
        v27 = aBlock;
        if (aBlock)
        {
          sub_219798754(0);

          [v4 setSelectedViewController_];

          v28 = [objc_opt_self() sharedApplication];
          v29 = swift_allocObject();
          *(v29 + 16) = aBlock;
          v36 = sub_218FEAE90;
          v37 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v33 = 1107296256;
          v34 = sub_218793E0C;
          v35 = &block_descriptor_57;
          v30 = _Block_copy(&aBlock);
          v31 = v27;

          [v28 ts:v30 installCACommitCompletionBlock:?];

          _Block_release(v30);
          return;
        }

        goto LABEL_21;
      }

LABEL_19:

LABEL_21:
      return;
    }

LABEL_18:
  }
}

void sub_218FE9254(uint64_t a1)
{
  v1 = sub_219BF65B4();
  v2 = [v1 searchController];

  if (v2)
  {
    v3 = [v2 searchBar];

    [v3 becomeFirstResponder];
  }
}

void sub_218FE9304(uint64_t a1)
{
  sub_219BED0C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong searchBar];

    [v3 becomeFirstResponder];
  }
}

uint64_t sub_218FE941C()
{
  v1 = v0;
  sub_2186C6148(0, &qword_280E8E798, 0x277D75650);
  v9 = MEMORY[0x277D84F90];
  v2 = sub_219BF6074();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v5 = sub_219BF53D4();

  [v2 setDiscoverabilityTitle_];

  v6 = [v1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 > 2)
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_2187C3D44(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    result = swift_allocObject();
    *(result + 16) = xmmword_219C146A0;
    *(result + 32) = v2;
  }

  return result;
}

uint64_t sub_218FE9610(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5404();
  v6 = a1;
  v7 = sub_219BE5414();
  v8 = sub_219BF61F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2186C1000, v7, v8, "Failed to connect new UIScene, error=%{public}@", v9, 0xCu);
    sub_218962D30(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_218FE97AC()
{
  v1 = v0;
  v2 = sub_219BE9C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(v1 + v6, v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v12)
  {
    sub_218718690(v11, v10);
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v7 = sub_2187DAD0C();
    sub_218F8A75C(v1, v7);

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  }

  sub_219BE3264();

  sub_219BE2734();

  if (v11[0] == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6E830], v2);
    sub_219BEA2D4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_219BEA314();
}

uint64_t sub_218FE9A40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218FE9AD8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 72))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218FE9B70(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 80))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218FE9C08(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 88))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_218FE9CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BE94F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
  }

  else
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_219BE94E4();
      v11 = sub_219BF65A4();
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = sub_219BE94D4();
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v46 = v14;
  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_280F627D8);

  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a4;
    v21 = v9;
    v22 = v6;
    v23 = a2;
    v24 = v20;
    v25 = swift_slowAlloc();
    v51[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_2186D1058(v46, v16, v51);
    _os_log_impl(&dword_2186C1000, v18, v19, "Zoom transition will attempt to lookup child source view for %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x21CECF960](v25, -1, -1);
    v26 = v24;
    a2 = v23;
    v6 = v22;
    v9 = v21;
    a4 = v45;
    MEMORY[0x21CECF960](v26, -1, -1);
  }

  if (!v11)
  {

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
LABEL_19:
    sub_2187453AC(&v48, &unk_27CC14B50, &qword_27CC14B58, MEMORY[0x277D6E660], sub_2186C6F70);
    goto LABEL_20;
  }

  v47 = v11;
  sub_2186C6148(0, &qword_280E8DAE0, 0x277D75D18);
  sub_2186CFDE4(0, &qword_27CC14B58, MEMORY[0x277D6E660]);
  v27 = v11;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_18;
  }

  if (!*(&v49 + 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  v45 = a4;
  sub_2186CB1F0(&v48, v51);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v28 = sub_219BE9504();

  if (v28)
  {

    __swift_destroy_boxed_opaque_existential_1(v51);
    v11 = v28;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  a4 = v45;
LABEL_20:
  if (qword_280EE6090 != -1)
  {
    swift_once();
  }

  v29 = sub_219BE5434();
  __swift_project_value_buffer(v29, qword_280F627D8);
  (*(v7 + 16))(v9, a4, v6);
  v30 = sub_219BE5414();
  v31 = sub_219BF6214();
  if (os_log_type_enabled(v30, v31))
  {
    v45 = v6;
    v46 = a2;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51[0] = v33;
    *v32 = 136446466;
    if (v11)
    {
      v34 = [v11 description];
      v35 = sub_219BF5414();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v38 = sub_2186D1058(v35, v37, v51);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2082;
    v39 = sub_219BE94E4();
    v41 = v40;
    (*(v7 + 8))(v9, v45);
    v42 = sub_2186D1058(v39, v41, v51);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_2186C1000, v30, v31, "Zoom transition resolved source view during transition %{public}s for transition identifier %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v32, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v11;
}

id sub_218FEA284(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_15:
    v9 = 1;
    return v9 & 1;
  }

  v3 = a1;
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v3 = v3;
    v4 = a2;
    v5 = sub_219BF6DD4();

    if (v5)
    {
      goto LABEL_15;
    }
  }

  *&v18 = v3;
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  sub_2186CFDE4(0, &unk_280EE7DD8, MEMORY[0x277D6CAA8]);
  v6 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_14;
  }

  if (!*(&v22 + 1))
  {
LABEL_14:
    sub_2187453AC(&v21, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
LABEL_19:
    v9 = 0;
    return v9 & 1;
  }

  sub_2186CB1F0(&v21, v24);
  if (!a2 || (v7 = a2, (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_17;
  }

  if (!*(&v19 + 1))
  {
LABEL_17:
    sub_2187453AC(&v18, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_19;
  }

  sub_2186CB1F0(&v18, &v21);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  if (sub_219BE1D74() == 0x296C6C756E28 && v8 == 0xE600000000000000)
  {
    goto LABEL_11;
  }

  v11 = sub_219BF78F4();

  if (v11)
  {
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  if (sub_219BE1D74() == 0x296C6C756E28 && v12 == 0xE600000000000000)
  {
LABEL_11:

LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(&v21);
    goto LABEL_18;
  }

  v13 = sub_219BF78F4();

  if (v13)
  {
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v14 = sub_219BE1D74();
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  if (v14 == sub_219BE1D74() && v16 == v17)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();
  }

  __swift_destroy_boxed_opaque_existential_1(&v21);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v9 & 1;
}

uint64_t sub_218FEA648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerElementModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218FEA6AC()
{
  v1 = v0;
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController__isSidebarVisible;
  v19[15] = 0;
  sub_2187C3D44(0, &qword_280EE73F8, MEMORY[0x277D839B0], MEMORY[0x277D6CCD0]);
  swift_allocObject();
  *(v0 + v7) = sub_219BE2724();
  v8 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController__isSidebarEditing;
  v19[14] = 0;
  swift_allocObject();
  *(v0 + v8) = sub_219BE2724();
  *(v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers) = MEMORY[0x277D84F90];
  v9 = v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  sub_219BE9EC4();
  sub_219BE1C54();
  sub_219BE1C54();
  v10 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_restoreStateCache;
  sub_2187C3D94(0);
  swift_allocObject();
  *(v0 + v10) = sub_219BE3284();
  v11 = (v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier);
  v12 = [objc_opt_self() _searchElement];
  v13 = [v12 _identifier];

  v14 = sub_219BF5414();
  v16 = v15;

  *v11 = v14;
  v11[1] = v16;
  v17 = (v1 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController____lazy_storage___intrinsicTabBar) = 0;
  v18 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarImpressionManager;
  *v5 = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
  sub_219BE9BD4();
  sub_219BEA324();
  swift_allocObject();
  *(v1 + v18) = sub_219BEA2F4();
  swift_unknownObjectWeakInit();
  sub_219BF7514();
  __break(1u);
}

void sub_218FEAA2C(void *a1)
{
  v2 = sub_2187DAD0C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = sub_218FEAEC0;
  v5[3] = v3;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_218FEAEC8;
  *(v6 + 24) = v5;
  v10[4] = sub_218807D50;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218807CE4;
  v10[3] = &block_descriptor_74_0;
  v7 = _Block_copy(v10);
  v8 = v2;

  v9 = a1;

  [v4 performWithoutAnimation_];

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_218FEABF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_218FE0504(*(v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier), *(v2 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier + 8));
  if (v5)
  {
    v6 = v5;
    type metadata accessor for FloatingTabBarNavigationController(0);
    if (swift_dynamicCastClass())
    {
      sub_219798754(0);

      type metadata accessor for SearchHomeContainerController();
      sub_219BF6584();
      if (v7)
      {
        sub_219B5F1FC(a1, a2, 0, 6);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_218FEADDC(uint64_t a1, uint64_t a2)
{
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218FEAEDC()
{
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_219BE92D4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v6);
  v10 = v0 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);

  sub_218FE85F4(v7, v8, (v0 + v2), v0 + v5, v9, v11, v12);
}

void *sub_218FEB00C()
{
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);

  return sub_218FE8498(v5, v6, (v0 + v3), v7, v9, v10);
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_219BE9EC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v8 = sub_219BE94F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

void *sub_218FEB2D4()
{
  v1 = *(sub_219BE9EC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_218FE1838(v7, v0 + v2, v8, (v0 + v6), v10, v11);
}

void *sub_218FEB414(uint64_t a1)
{
  v3 = *(sub_219BE94F4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_218FE9CA0(a1, v4, v5, v6);
}

uint64_t sub_218FEB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = a4;
  v37 = type metadata accessor for WebLinkRouteModel.URLType(0);
  *&v10 = MEMORY[0x28223BE20](v37).n128_u64[0];
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [*(v5 + 16) isSignedIntoEmailAccount];
  sub_218FECCF4(0, &unk_27CC14BC0, &type metadata for WebViewerConfigOption, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0EE30;
  if (qword_27CC07D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27CC0E538;
  *(v14 + 32) = qword_27CC0E530;
  *(v14 + 40) = v15;
  *(v14 + 48) = 0;

  *(v14 + 56) = sub_218FEBA24(a1, a2);
  *(v14 + 64) = v16;
  *(v14 + 72) = 1;
  *(v14 + 80) = sub_218FEBB24(v13);
  *(v14 + 88) = v17;
  *(v14 + 96) = 3;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;
  *(v14 + 120) = 5;
  *(v14 + 128) = xmmword_219C1D060;
  *(v14 + 144) = 5;
  *(v14 + 152) = xmmword_219C1E930;
  *(v14 + 168) = 5;
  *(v14 + 176) = xmmword_219C3FE50;
  *(v14 + 192) = 5;
  v39 = v14;
  if ((v13 & 1) == 0 || ([*(v5 + 32) useFineGrainedNewsletterManagement] & 1) == 0)
  {
    v35 = a1;
    v36 = a3;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_219BDB5E4();
    v22 = v21;

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    *(inited + 32) = xmmword_219C14CF0;
    *(inited + 48) = 5;
    *(inited + 56) = v20;
    *(inited + 64) = v22;
    *(inited + 72) = 4;
    sub_2191EDA54(inited);
    a3 = v36;
    a1 = v35;
  }

  if (!a2)
  {
    a1 = 0;
  }

  sub_219BE3204();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a1;
  v25[4] = a2;
  v26 = sub_219BE2E54();
  sub_2186E5728(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v27 = sub_219BE2F74();

  if (v13)
  {
    *v12 = v27;
  }

  else
  {

    v28 = sub_219BDB954();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  }

  swift_storeEnumTagMultiPayload();
  v29 = v39;
  *a5 = 0xD000000000000019;
  a5[1] = 0x8000000219D066B0;
  v30 = type metadata accessor for WebLinkRouteModel(0);
  sub_218FECB94(v12, a5 + v30[5]);
  *(a5 + v30[6]) = v29;
  v31 = (a5 + v30[7]);
  v32 = v38;
  *v31 = a3;
  v31[1] = v32;
  return swift_unknownObjectRetain();
}

uint64_t sub_218FEBA24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();

  return v4;
}

uint64_t sub_218FEBB24(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_218FEBC7C(uint64_t a1)
{
  sub_218FECCF4(0, &qword_280EE6B80, MEMORY[0x277D837D0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218FEBD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 getWebToken];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_218AB15BC;
  v13[5] = v10;
  v23 = sub_218FECC00;
  v24 = v13;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218E294D4;
  v22 = &block_descriptor_85;
  v14 = _Block_copy(&v19);

  v15 = [v12 then_];
  _Block_release(v14);

  if (v15)
  {

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v23 = sub_218FECC0C;
    v24 = v16;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_218E29720;
    v22 = &block_descriptor_17_1;
    v17 = _Block_copy(&v19);

    v18 = [v15 error_];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_218FEBF34(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)()@<X3>, uint64_t a4@<X8>)
{
  sub_218FECC68(a1, v8);
  if (!v9)
  {
    sub_218FECD44(v8, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_218FECCF4);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_218FECC14();
    v7 = swift_allocError();
    a2();

    goto LABEL_6;
  }

  a3();

LABEL_6:
  *(a4 + 24) = MEMORY[0x277D84F78] + 8;
}

void sub_218FEC058(uint64_t a1, void (*a2)(void))
{
  sub_218FECC14();
  v3 = swift_allocError();
  a2();
}

void sub_218FEC0C0(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_218FEC1A0(a3, a4, v8, v9, a5);
  }

  else
  {
    v10 = sub_219BDB954();
    (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }
}

uint64_t sub_218FEC1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v41 = a1;
  v49 = a5;
  v43 = sub_219BDB224();
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5728(0, &unk_280EE9DB0, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_219BDB354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDB954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = [objc_opt_self() fineGrainedNewsletterSubscriptionBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (!v20)
  {
    return (*(v14 + 56))(v49, 1, 1, v13);
  }

  sub_219BDB8B4();

  (*(v14 + 32))(v19, v16, v13);
  sub_219BDB264();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v14 + 8))(v19, v13);
    sub_218FECD44(v9, &unk_280EE9DB0, MEMORY[0x277CC8958], MEMORY[0x277D83D88], sub_2186E5728);
    return (*(v14 + 56))(v49, 1, 1, v13);
  }

  v39 = v11;
  v40 = v10;
  v22 = v47;
  (*(v11 + 32))(v47, v9);
  sub_2186E5728(0, &qword_27CC0F588, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v23 = *(v48 + 72);
  v24 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C0B8C0;
  v38 = v24;
  sub_218FEC884(v44, v45);
  sub_219BDB1F4();

  v26 = v23;
  sub_219BDB1F4();
  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_219BF53D4();
  v29 = [v27 stringArrayForKey_];

  if (v29)
  {
    v30 = sub_219BF5924();

    if (v30[2])
    {
      v31 = v30[4];
      v32 = v30[5];

      v54[0] = v31;
      v54[1] = v32;
      v52 = 45;
      v53 = 0xE100000000000000;
      v50 = 95;
      v51 = 0xE100000000000000;
      sub_2187F3BD4();
      sub_219BF7034();
    }

    v22 = v47;
  }

  sub_219BDB1F4();

  if (v46)
  {
    v33 = sub_219BDB2A4();
    MEMORY[0x21CECC330](0x70752D6E6769732FLL, 0xE800000000000000);
    v33(v54, 0);
    v34 = v42;
    sub_219BDB1F4();
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      v25 = sub_2191F84A0((v35 > 1), v36 + 1, 1, v25);
    }

    *(v25 + 16) = v36 + 1;
    (*(v48 + 32))(v25 + v38 + v36 * v26, v34, v43);
  }

  sub_219BDB244();
  sub_219BDB274();
  (*(v39 + 8))(v22, v40);
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_218FEC884(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF5474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedAccount];
  v9 = [v8 altDSID];

  if (v9)
  {
    v10 = sub_219BF5414();
    v12 = v11;

    v22[0] = v10;
    v22[1] = v12;
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    MEMORY[0x21CECC330](a1, a2);
    sub_219BF5464();
    v13 = sub_219BF5424();
    v15 = v14;

    (*(v5 + 8))(v7, v4);
    if (v15 >> 60 != 15)
    {
      sub_218B87528(v13, v15);
      v16 = sub_219BDB9F4();
      sub_218822A58(v13, v15);
      sub_218822A58(v13, v15);
      return v16;
    }
  }

  else
  {
    if (qword_27CC085A8 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_27CCD8AB0);
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2186C1000, v19, v20, "Failed to generate fine-grained URL: null altDSID.", v21, 2u);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_218FECB10()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218FECB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebLinkRouteModel.URLType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218FECC14()
{
  result = qword_27CC14BD0;
  if (!qword_27CC14BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14BD0);
  }

  return result;
}

uint64_t sub_218FECC68(uint64_t a1, uint64_t a2)
{
  sub_218FECCF4(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218FECCF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_218FECD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *sub_218FECDAC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_218747FB8(0, &qword_280EE8950, MEMORY[0x277D30340], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  sub_218747FB8(0, &unk_280EE8E60, MEMORY[0x277D2F9F8], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType, 1);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE8F20, &protocolRef_AAViewingSessionManagerType);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  v38 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v14;
  v35 = a2;
  v37 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  v33 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_219BDD4F4();
  sub_219BE1E34();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v10, 1, v15);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_219BDEE34();
  sub_219BE1E34();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_218FEF490(v7);
    v32 = 0;
  }

  else
  {
    v32 = sub_219BDD744();
    (*(v18 + 8))(v7, v17);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v42)
  {
    goto LABEL_21;
  }

  v40 = v11;
  v41 = sub_2187A5628(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v19 = v37;
  v39 = v37;
  sub_219BE89E4();
  swift_allocObject();

  v20 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD00, &protocolRef_NUArticleContentSizeManager);
  result = sub_219BE1E24();
  if (result)
  {
    v21 = result;
    v22 = type metadata accessor for ArticleCoordinator(0);
    v23 = swift_allocObject();
    *(v23 + 3) = 0;
    swift_unknownObjectWeakInit();
    *&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory] = 0;
    *&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession] = 0;
    v24 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData;
    v25 = sub_219BDFA44();
    (*(*(v25 - 8) + 56))(&v23[v24], 1, 1, v25);
    *&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition] = 0;
    v26 = &v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment];
    *v26 = 0u;
    *(v26 + 1) = 0u;
    *(v23 + 4) = v19;
    sub_2186CB1F0(&v43, (v23 + 40));
    v27 = v38;
    *(v23 + 10) = v34;
    *(v23 + 11) = v27;
    v28 = v33;
    *(v23 + 12) = v36;
    *(v23 + 13) = v28;
    (*(v16 + 32))(&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel], v10, v15);
    *&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_issue] = v32;
    v29 = &v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_commandCenter];
    v30 = MEMORY[0x277D6E0C0];
    *v29 = v20;
    v29[1] = v30;
    *&v23[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_contentSizeManager] = v21;
    v31 = v35;
    v35[3] = v22;
    result = sub_2187A5628(&unk_280ED42B8, type metadata accessor for ArticleCoordinator, &unk_219C94A24);
    v31[4] = result;
    *v31 = v23;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_218FED434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
  sub_219BE1E34();
  v3 = type metadata accessor for ArticleViewerCoordinator();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = v6;
  v4[5] = v7;
  a2[3] = v3;
  result = sub_2187A5628(qword_280EC29F8, type metadata accessor for ArticleViewerCoordinator, &unk_219CC37CC);
  a2[4] = result;
  *a2 = v4;
  return result;
}

void *sub_218FED520@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDDCE4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE81F0, MEMORY[0x277D2EB98], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v12)
  {
    v9 = type metadata accessor for EndOfArticleCoordinator();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    sub_2186CB1F0(&v13, (v10 + 6));
    sub_2186CB1F0(&v11, (v10 + 11));
    a2[3] = v9;
    result = sub_2187A5628(qword_280EC5518, type metadata accessor for EndOfArticleCoordinator, &unk_219C9A678);
    a2[4] = result;
    *a2 = v10;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_218FED764(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BD5CD4(0);
  v10 = sub_219BE1E24();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  sub_219BF54C4();
  sub_219BE1DF4();

  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  sub_219BE1E34();
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  sub_219BE1E34();
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  v12 = sub_219BE1E24();
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDDA44();
  v14 = sub_219BE1E24();
  if (v14)
  {
    v15 = v14;
    type metadata accessor for EndOfRecipeCoordinator();
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = v7;
    v16[4] = v9;
    v16[5] = v11;
    sub_2186CB1F0(&v23, (v16 + 6));
    sub_2186CB1F0(&v21, (v16 + 11));
    sub_2186CB1F0(&v19, (v16 + 16));
    v16[21] = v13;
    v16[22] = v15;
    v17 = sub_2187A5628(&qword_27CC14C48, type metadata accessor for EndOfRecipeCoordinator, &unk_219C20BA8);
    *v18 = v16;
    v18[1] = v17;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_218FEDAA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14C30, MEMORY[0x277D2FFF8], 0);
  sub_219BE1E34();
  v3 = type metadata accessor for RecipeViewerCoordinator();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = v6;
  v4[5] = v7;
  a2[3] = v3;
  result = sub_2187A5628(&qword_27CC14C38, type metadata accessor for RecipeViewerCoordinator, &unk_219C6EA48);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_218FEDB94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218747FB8(0, &qword_27CC14C20, MEMORY[0x277D2FEB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDE204();
  sub_219BE1E34();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A59B7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v19 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE8F20, &protocolRef_AAViewingSessionManagerType);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (result)
  {
    v14 = result;
    v15 = type metadata accessor for ReplicaAdvertisementCoordinator(0);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    (*(v8 + 32))(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_advertisement, v19, v7);
    *(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_issue) = v10;
    *(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_tracker) = v11;
    *(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_issueSessionManager) = v12;
    *(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_channelDataFactory) = v13;
    *(v16 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_scienceDataFactory) = v14;
    v17 = v18;
    v18[3] = v15;
    result = sub_2187A5628(&qword_27CC14C28, type metadata accessor for ReplicaAdvertisementCoordinator, &protocol conformance descriptor for ReplicaAdvertisementCoordinator);
    v17[4] = result;
    *v17 = v16;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_218FEDEE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = sub_219BDD764();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = v5;
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747FB8(0, &qword_27CC14C08, MEMORY[0x277D2FAA0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218747FB8(0, &qword_27CC14C10, MEMORY[0x277D2FA88], MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v11 = v32;
  if (!v32)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  v12 = *(v4 + 48);
  v28 = v3;
  v29 = v9;
  result = v12(v9, 1, v3);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  v27 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    v26 = type metadata accessor for PDFReplicaCoordinator(0);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 32) = v11;
    v17 = *(v4 + 16);
    v19 = v28;
    v18 = v29;
    v17(v16 + OBJC_IVAR____TtC7NewsUI221PDFReplicaCoordinator_issue, v29, v28);
    *(v16 + OBJC_IVAR____TtC7NewsUI221PDFReplicaCoordinator_tracker) = v14;
    *(v16 + OBJC_IVAR____TtC7NewsUI221PDFReplicaCoordinator_newsActivityManager) = v15;
    v20 = v27;
    v17(v27, v18, v19);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = (v30 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    (*(v13 + 32))(v23 + v21, v20, v19);
    *(v23 + v22) = v11;

    sub_219BDD154();

    (*(v13 + 8))(v18, v19);
    v24 = v31;
    v31[3] = v26;
    result = sub_2187A5628(&qword_27CC14C18, type metadata accessor for PDFReplicaCoordinator, &unk_219C1A430);
    v24[4] = result;
    *v24 = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_218FEE334@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDE714();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    type metadata accessor for RecipeCoordinator(0);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
    v12 = sub_219BDE454();
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_newsActivityManager) = v8;
    *(v10 + OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_recipeCoordinatorContainer) = v9;
    result = sub_2187A5628(&qword_280ED5698, type metadata accessor for RecipeCoordinator, &unk_219C639B4);
    *a2 = v10;
    a2[1] = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218FEE544@<X0>(void *a1@<X0>, void *a2@<X8>)
{
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
  sub_2186D6710(0, &qword_280EE8F20, &protocolRef_AAViewingSessionManagerType);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for IssueCoordinator();
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    a2[3] = v8;
    result = sub_2187A5628(&unk_27CC14BF0, type metadata accessor for IssueCoordinator, &unk_219CD4390);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218FEE700@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    v13 = a2(0);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v14 + 32) = v12;
    a6[3] = v13;
    result = sub_2187A5628(a3, a4, a5);
    a6[4] = result;
    *a6 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218FEE7CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8CE8, MEMORY[0x277D2FE00], 1);
  result = sub_219BE1DF4();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE8F20, &protocolRef_AAViewingSessionManagerType);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A59B7C();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for IssueTableOfContentsArticleCoordinator();
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[4] = v5;
    sub_2186CB1F0(&v10, (v9 + 5));
    v9[10] = v6;
    v9[11] = v7;
    a2[3] = v8;
    result = sub_2187A5628(&qword_27CC14BE0, type metadata accessor for IssueTableOfContentsArticleCoordinator, &unk_219C8AC54);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218FEE9BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDF9E4();
  result = sub_219BE1DE4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE0204();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for FormatVideoPlayerCoordinator();
      v8 = swift_allocObject();
      v8[3] = 0;
      swift_unknownObjectWeakInit();
      v9 = sub_219BDF9A4();

      v8[4] = v9;
      v8[5] = v6;
      a2[3] = v7;
      result = sub_2187A5628(&qword_27CC14BD8, type metadata accessor for FormatVideoPlayerCoordinator, &unk_219CD0620);
      a2[4] = result;
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

uint64_t sub_218FEEAFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebEmbedCoordinator();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_2187A5628(qword_280ECF8E0, type metadata accessor for WebEmbedCoordinator, &unk_219C793B4);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_218FEEBB8()
{
  sub_2186C709C(0, &unk_280EE8CE8, MEMORY[0x277D2FE00], 1);
  sub_219BE2914();
  sub_219BE19D4();

  return result;
}

void *sub_218FEEC64@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_218747FB8(0, &unk_280EE8E60, MEMORY[0x277D2F9F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType, 1);
  result = sub_219BE1E34();
  if (!v38)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE8F20, &protocolRef_AAViewingSessionManagerType);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  v32 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v11;
  v31 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  v29 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_219BDD4F4();
  sub_219BE1E34();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v6, 1, v12);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A59B7C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v36)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v7;
  v35 = sub_2187A5628(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v33 = v9;
  sub_219BE89E4();
  swift_allocObject();

  v15 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD00, &protocolRef_NUArticleContentSizeManager);
  result = sub_219BE1E24();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for ArticleCoordinator(0);
    v18 = swift_allocObject();
    *(v18 + 3) = 0;
    swift_unknownObjectWeakInit();
    *&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession] = 0;
    v19 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData;
    v20 = sub_219BDFA44();
    (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
    *&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition] = 0;
    v21 = &v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeExperiment];
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v18 + 4) = v9;
    sub_2186CB1F0(&v37, (v18 + 40));
    v22 = v30;
    *(v18 + 10) = v31;
    *(v18 + 11) = v22;
    v23 = v29;
    *(v18 + 12) = v32;
    *(v18 + 13) = v23;
    (*(v13 + 32))(&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_articleModel], v6, v12);
    *&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_issue] = v14;
    v24 = &v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_commandCenter];
    v25 = MEMORY[0x277D6E0C0];
    *v24 = v15;
    v24[1] = v25;
    *&v18[OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_contentSizeManager] = v16;
    v26 = v28;
    v28[3] = v17;
    result = sub_2187A5628(&unk_280ED42B8, type metadata accessor for ArticleCoordinator, &unk_219C94A24);
    v26[4] = result;
    *v26 = v18;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_218FEF1F4(uint64_t a1, void *a2)
{
  sub_218747FB8(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5 - 8];
  sub_218718690(a1, v11);
  sub_2186C709C(0, &unk_280EE8CE8, MEMORY[0x277D2FE00], 1);
  type metadata accessor for ArticleCoordinator(0);
  if (swift_dynamicCast())
  {
    v8 = v10;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDFA44();
    sub_219BE1E34();
    v9 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData;
    swift_beginAccess();
    sub_218FEF360(v6, v8 + v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_218FEF360(uint64_t a1, uint64_t a2)
{
  sub_218747FB8(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_218FEF3F4(uint64_t a1)
{
  v3 = *(sub_219BDD764() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_218AE3D18(a1, v1 + v4, v5);
}

uint64_t sub_218FEF490(uint64_t a1)
{
  sub_218747FB8(0, &qword_280EE8950, MEMORY[0x277D30340], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218FEF520(uint64_t a1)
{
  v20 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FEF834(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchMoreRouteModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v12 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D2FF08], v2);
  (*(v12 + 64))(v20, v5, 0, ObjectType, v12);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_218FEF8F0(v8, sub_218FEF834);
    return 0;
  }

  else
  {
    v15 = v18;
    sub_218FEF88C(v8, v18);
    __swift_project_boxed_opaque_existential_1((v19 + 64), *(v19 + 88));
    v16 = sub_218D0D3B8(v15);
    sub_218FEF8F0(v15, type metadata accessor for SearchMoreRouteModel);
    return v16;
  }
}

uint64_t sub_218FEF7B8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

void sub_218FEF834(uint64_t a1)
{
  if (!qword_27CC14C50)
  {
    type metadata accessor for SearchMoreRouteModel(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14C50);
    }
  }
}

uint64_t sub_218FEF88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FEF8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FEF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_219BEEE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  (*(v13 + 8))(a1, v14, v13);
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  sub_219BDECC4();
  sub_219BEEE44();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v17 = sub_218C156D8(v12, v16 != 0.0, v4[12], v4[13], v20, v21);
  sub_218EB8BCC(v12);
  return v17;
}

uint64_t sub_218FEFCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_219BEEE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  (*(v13 + 8))(a1, v14, v13);
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  sub_219BDECC4();
  sub_219BEEE44();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v17 = sub_218C15CC0(v12, v16 != 0.0, v4[12], v4[13], v20, v21);
  sub_218EB8BCC(v12);
  return v17;
}

void *AudioUIMenuProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AudioUIMenuProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218FF0214()
{
  sub_2186C6190(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218FF0340()
{
  v1 = sub_219BEEA84();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BDBD64();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BEE754();
  v6 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v0;
  v9 = v0[4];
  v10 = objc_allocWithZone(MEMORY[0x277D31348]);
  v11 = v9;
  v12 = sub_219BF53D4();
  v13 = sub_219BF53D4();
  v14 = [v10 initChannelForTestingWithIdentifier:v12 name:v13 publisherPaidBundlePurchaseIDs:0];

  if (v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D31300]) initWithContext:v11 tag:v14 feedConfiguration:0];

    sub_219BEE724();
    sub_219BDBD54();
    v16 = sub_219BDBD44();
    v18 = v17;
    (*(v3 + 8))(v5, v56);
    v19 = qword_280E8D7F8;
    v20 = *MEMORY[0x277D30BC0];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_280F61708;
    type metadata accessor for TagFeedServiceContext(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = v18;
    *(v22 + 32) = v15;
    *(v22 + 40) = v20;
    *(v22 + 48) = v21;
    *(v22 + 56) = 0;
    (*(v6 + 32))(v22 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v8, v57);
    sub_219BEE324();
    swift_allocObject();
    v23 = v21;
    sub_219BEE314();
    type metadata accessor for TagFeedContentConfig();
    v24 = v58;
    sub_21877C948(&qword_280ECCCF0, type metadata accessor for TagFeedContentConfig, &unk_219C1E4F8);
    sub_219BE1974();

    v57 = v63;
    if (qword_27CC08880 != -1)
    {
      swift_once();
    }

    v25 = v24[5];
    v56 = qword_27CCD8EF8;

    v26 = [v25 possiblyUnfetchedAppConfiguration];
    if ([v26 respondsToSelector_])
    {
      v27 = [v26 paidBundleConfig];
      swift_unknownObjectRelease();
      v28 = [v25 possiblyUnfetchedAppConfiguration];
      v30 = v53;
      v29 = v54;
      v31 = v55;
      (*(v54 + 104))(v53, *MEMORY[0x277D32220], v55);
      v32 = v24[6];
      v33 = objc_allocWithZone(type metadata accessor for FeatureAvailabilityProvider());
      v58 = v32;
      v34 = swift_unknownObjectRetain();
      v35 = FeatureAvailabilityProvider.init(appConfigurationManager:)(v34);
      type metadata accessor for FeatureAvailability();
      v36 = swift_allocObject();
      v37 = MEMORY[0x277D84F90];
      *(v36 + 32) = 2;
      *(v36 + 16) = v35;
      *(v36 + 24) = v37;
      v38 = &v35[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate];
      swift_beginAccess();
      *(v38 + 1) = &protocol witness table for FeatureAvailability;
      swift_unknownObjectWeakAssign();
      type metadata accessor for TagFeedServiceConfig(0);
      v39 = swift_allocObject();
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_canCache) = 0;
      v40 = v56;
      v41 = v57;
      v39[2] = v22;
      v39[3] = v41;
      v39[4] = v40;
      v39[5] = 0;
      v39[6] = 0;
      v39[7] = v27;
      v39[8] = v28;
      (*(v29 + 16))(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy, v30, v31);
      v42 = *(v22 + 32);
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) = v42;
      sub_2186E2348();

      swift_unknownObjectRetain();
      v43 = v42;
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange) = sub_219BF5F34();
      v44 = [v28 autoRefreshMinimumInterval];
      swift_unknownObjectRelease();
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_refreshInterval) = v44;
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState) = 0;
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController) = v58;
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) = v36;
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult) = 0;
      v62 = MEMORY[0x277D84FA0];
      v45 = [sub_219BF6394() asSportsEvent];
      swift_unknownObjectRelease();

      if (v45)
      {
        v46 = [v45 eventCompetitorTags];
        if (v46)
        {
          v47 = v46;
          sub_2186D85DC();
          v48 = sub_219BF5924();

          v60 = 0;
          v61 = 0xE000000000000000;
          sub_219BF7314();

          v60 = 0xD00000000000001FLL;
          v61 = 0x8000000219CF11D0;
          if (v48 >> 62)
          {
            v49 = sub_219BF7214();
          }

          else
          {
            v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v59 = v49;
          v50 = sub_219BF7894();
          MEMORY[0x21CECC330](v50);

          sub_219497B60(&v60, v60, v61);
          swift_unknownObjectRelease();
          (*(v29 + 8))(v30, v31);

          goto LABEL_14;
        }

        swift_unknownObjectRelease();
      }

      (*(v29 + 8))(v30, v31);
LABEL_14:
      *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_selectors) = v62;
      v60 = v39;
      sub_218FF0B7C(0);
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_218FF0B7C(uint64_t a1)
{
  if (!qword_280EE6E58)
  {
    type metadata accessor for TagFeedServiceConfig(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6E58);
    }
  }
}

uint64_t sub_218FF0BD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_218FF11B8(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218FF0C38(void (*a1)(void *, __n128), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, void *a7, double a8, double a9)
{
  v53 = a7;
  v54 = a3;
  sub_218FF1428(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2494();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v23 = swift_allocObject();
  v51 = a1;
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;

  v24 = [a6 theme];
  if (a5 == 2)
  {
    if (v24)
    {
      v25 = [v24 bannerImageForMask];
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = [v25 assetHandle];

        if (v26)
        {
          v47 = a4;
          v27 = MEMORY[0x277D33898];
          goto LABEL_10;
        }
      }
    }
  }

  else if (v24)
  {
    v28 = [v24 bannerImageForWhiteBackground];
    swift_unknownObjectRelease();
    if (v28)
    {
      v26 = [v28 assetHandle];

      if (v26)
      {
        v47 = a4;
        v27 = MEMORY[0x277D338A0];
LABEL_10:
        v29 = v52;
        (*(v52 + 104))(v22, *v27, v17);
        v56 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
        v57 = sub_2189EB528();
        v55[0] = v26;
        v30 = objc_opt_self();
        v50 = v26;
        v31 = [v30 mainScreen];
        [v31 scale];

        (*(v29 + 16))(v19, v22, v17);
        v32 = sub_219BF40F4();
        (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
        v33 = sub_219BF4144();
        swift_allocObject();
        v34 = sub_219BF4104();
        v49 = v22;
        v35 = v53;
        __swift_project_boxed_opaque_existential_1(v53 + 2, v53[5]);
        v56 = v33;
        v36 = sub_218FF14D4();
        v48 = v17;
        v37 = v29;
        v38 = v36;
        v57 = v36;
        v55[0] = v34;

        v39 = sub_219BE6264();
        __swift_destroy_boxed_opaque_existential_1(v55);
        if (v39)
        {

          v55[0] = v39;
          v51(v55);

          v40 = v50;

          (*(v37 + 8))(v49, v48);
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v35 + 2, v35[5]);
          v56 = v33;
          v57 = v38;
          v55[0] = v34;
          v43 = swift_allocObject();
          v43[2] = sub_218846958;
          v43[3] = v23;
          v44 = v47;
          v43[4] = v54;
          v43[5] = v44;

          sub_219BE6254();

          v45 = v50;

          (*(v37 + 8))(v49, v48);
          __swift_destroy_boxed_opaque_existential_1(v55);
        }

        return;
      }
    }
  }

  sub_218FF1480();
  v41 = swift_allocError();
  *v42 = 0;
  v54();
}

void sub_218FF11B8(uint64_t a1)
{
  if (!qword_27CC14C58)
  {
    sub_2186C6148(255, &qword_280E8DA68, 0x277D755B8);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14C58);
    }
  }
}

void sub_218FF1220(void *a1, id a2, void (*a3)(void), __n128 a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v13 = a1;
    a3();
    v7 = v13;
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = a2;
      v11 = v9;
    }

    else
    {
      sub_218FF1480();
      v11 = swift_allocError();
      v9 = v11;
      *v12 = 1;
    }

    a6(v11);
    v7 = v9;
  }
}

uint64_t PublisherLogoProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_218FF1350(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_218FF11B8(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218FF1428(uint64_t a1)
{
  if (!qword_280E8FF08)
  {
    sub_219BF40F4();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FF08);
    }
  }
}

unint64_t sub_218FF1480()
{
  result = qword_27CC14C60;
  if (!qword_27CC14C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14C60);
  }

  return result;
}

unint64_t sub_218FF14D4()
{
  result = qword_280E8FF00;
  if (!qword_280E8FF00)
  {
    sub_219BF4144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FF00);
  }

  return result;
}

unint64_t sub_218FF154C()
{
  result = qword_27CC14C68;
  if (!qword_27CC14C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14C68);
  }

  return result;
}

uint64_t sub_218FF15A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_218FF6894(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218FF19E8()
{
  sub_219BE0244();
  sub_2186D5804(&qword_280EE8478, MEMORY[0x277D2E3E8], MEMORY[0x277D2E3D0]);
  v1 = 0u;
  v2 = 0u;
  sub_219BDCCE4();
  sub_218FF4528(&v1, sub_21880702C);
  sub_219BE17A4();
  sub_2186D5804(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  v1 = 0u;
  v2 = 0u;
  sub_219BDCCE4();
  return sub_218FF4528(&v1, sub_21880702C);
}

void sub_218FF1B14(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v62 - v7;
  v8 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v13 + 8))(v15, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0x12u:
    case 0x13u:
      v16 = type metadata accessor for FollowingModel;
      goto LABEL_3;
    case 2u:
      v16 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 3u:
      v46 = *v10;
      v47 = v5;
      v48 = *(v5 + 16);
      v49 = v63;
      v48(v63, a1, v4);
      v50 = (*(v47 + 80) + 24) & ~*(v47 + 80);
      v51 = (v6 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = v46;
      (*(v47 + 32))(v52 + v50, v49, v4);
      *(v52 + v51) = v62;

      goto LABEL_12;
    case 4u:
      v53 = *(v10 + 3);
      v54 = v63;
      (*(v5 + 16))(v63, a1, v4);
      v55 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v56 = (v6 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      (*(v5 + 32))(v57 + v55, v54, v4);
      *(v57 + v56) = v62;
      goto LABEL_16;
    case 6u:
    case 7u:
      v17 = *v10;
      v18 = v63;
      (*(v5 + 16))(v63, a1, v4);
      v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v5 + 32))(v21 + v19, v18, v4);
      *(v21 + v20) = v17;
      *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;

      goto LABEL_12;
    case 8u:
      sub_218FF4528(v10, type metadata accessor for FollowingModel);
      v31 = v5;
      v32 = *(v5 + 16);
      v33 = v63;
      v32(v63, a1, v4);
      v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v35 = swift_allocObject();
      (*(v31 + 32))(v35 + v34, v33, v4);
      *(v35 + ((v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
      sub_219BDD154();
      goto LABEL_13;
    case 0xBu:

      sub_218748BF4(0);
      v44 = *(v43 + 48);
      sub_218748D40(0);
      (*(*(v45 - 8) + 8))(&v10[v44], v45);
      return;
    case 0xEu:
      v22 = *(v10 + 1);
      v65 = *v10;
      v66 = v22;
      v67 = *(v10 + 8);
      v23 = v5;
      v24 = *(v5 + 16);
      v25 = v63;
      v24(v63, a1, v4);
      v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v27 = (v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      (*(v23 + 32))(v28 + v26, v25, v4);
      v29 = v28 + v27;
      v30 = v66;
      *v29 = v65;
      *(v29 + 16) = v30;
      *(v29 + 32) = v67;
      *(v28 + ((v27 + 43) & 0xFFFFFFFFFFFFFFF8)) = v62;
      sub_2189CEED0(&v65, v64);
      sub_219BDD154();
      sub_2189CEF2C(&v65);
      goto LABEL_13;
    case 0xFu:
      v36 = *v10;
      v37 = v5;
      v38 = *(v5 + 16);
      v39 = v63;
      v38(v63, a1, v4);
      v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v41 = (v6 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      (*(v37 + 32))(v42 + v40, v39, v4);
      *(v42 + v41) = v36;

LABEL_12:
      sub_219BDD154();

LABEL_13:

      return;
    case 0x10u:
      v16 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v16 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_3:
      sub_218FF4528(v10, v16);
      break;
    default:
      v53 = *(v10 + 2);
      v58 = v63;
      (*(v5 + 16))(v63, a1, v4);
      v59 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v60 = (v6 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      (*(v5 + 32))(v61 + v59, v58, v4);
      *(v61 + v60) = v62;
LABEL_16:
      sub_219BDD154();

      break;
  }
}

uint64_t sub_218FF2358(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v48 = sub_219BE1314();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v44 - v5;
  v56 = sub_219BE1324();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - v8;
  v9 = sub_219BDF134();
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF824();
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v57 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BE1464();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BE06D4();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for EngagementAction(0);

  sub_219BE34F4();
  v17 = a2;

  sub_219BE06C4();
  sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = v18;
  v50 = sub_219BDCD44();
  v20 = *(v50 - 8);
  v69 = *(v20 + 72);
  v21 = *(v20 + 80);
  v22 = (v21 + 32) & ~v21;
  v65 = v19;
  v23 = swift_allocObject();
  v68 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v67 = *MEMORY[0x277CEAD18];
  v24 = *(v20 + 104);
  v24(v23 + v22);
  v63 = v24;
  v64 = "_TtC7NewsUI216FollowingTracker";
  sub_2186D5804(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  v25 = v51;
  sub_219BDCCC4();

  (*(v52 + 8))(v16, v25);
  v49 = v17;
  sub_219BDB804();
  v26 = v53;
  sub_219BE1454();
  v27 = swift_allocObject();
  *(v27 + 16) = v68;
  v28 = v50;
  (v24)(v27 + v22, v67, v50);
  sub_2186D5804(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  v29 = v54;
  sub_219BDCCC4();

  v30 = v26;
  v31 = v59;
  (*(v55 + 8))(v30, v29);
  sub_219756890(v58);
  v32 = v57;
  sub_219BDF814();
  v58 = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = v68;
  v55 = v22;
  (v63)(v33 + v22, v67, v28);
  sub_2186D5804(&unk_280EE8650, MEMORY[0x277D2DD98], MEMORY[0x277D2DD90]);
  v34 = v60;
  sub_219BDCCC4();

  (*(v61 + 8))(v32, v34);
  v35 = v62;
  sub_21926F2DC(v62);
  v36 = v31;
  v37 = v56;
  if ((*(v31 + 48))(v35, 1) == 1)
  {
    sub_218FF4588(v35);
  }

  else
  {
    v38 = v45;
    (*(v31 + 32))(v45, v35, v37);
    (*(v31 + 16))(v44, v38, v37);
    v39 = v46;
    sub_219BE1304();
    v40 = v55;
    v41 = swift_allocObject();
    *(v41 + 16) = v68;
    (v63)(v41 + v40, v67, v28);
    sub_2186D5804(&qword_280EE8078, MEMORY[0x277D2F150], MEMORY[0x277D2F148]);
    v42 = v48;
    sub_219BDCCC4();

    (*(v47 + 8))(v39, v42);
    (*(v36 + 8))(v38, v37);
  }

  sub_219BE0D84();
  sub_2186D5804(&unk_27CC18740, MEMORY[0x277D2ECD0], MEMORY[0x277D2ECC8]);
  memset(v71, 0, sizeof(v71));
  sub_219BDCCE4();
  return sub_218FF4528(v71, sub_21880702C);
}

uint64_t sub_218FF2D38(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v45 = sub_219BE1314();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v38 - v5;
  v6 = sub_219BE1324();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v9;
  v10 = sub_219BDF134();
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF824();
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE06D4();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for EngagementDismissal(0);
  v59 = a2;

  sub_219BE34F4();

  sub_219BE06C4();
  sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v58 = v18;
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  v56 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v25 = *(v20 + 104);
  v25(v24 + v23);
  v57 = "_TtC7NewsUI216FollowingTracker";
  sub_2186D5804(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  sub_219BDCCC4();

  v26 = v52;
  (*(v47 + 8))(v17, v15);
  sub_219756890(v50);
  v27 = v48;
  sub_219BDF814();
  v47 = v21;
  v40 = v22;
  v28 = v46;
  v29 = swift_allocObject();
  *(v29 + 16) = v56;
  v50 = v19;
  v39 = v25;
  (v25)(v29 + v23, v28, v19);
  sub_2186D5804(&unk_280EE8650, MEMORY[0x277D2DD98], MEMORY[0x277D2DD90]);
  v30 = v53;
  sub_219BDCCC4();

  (*(v54 + 8))(v27, v30);
  v31 = v55;
  sub_21926F2DC(v55);
  v32 = v51;
  if ((*(v51 + 48))(v31, 1, v26) == 1)
  {
    sub_218FF4588(v31);
  }

  else
  {
    v33 = v42;
    (*(v32 + 32))(v42, v31, v26);
    (*(v32 + 16))(v41, v33, v26);
    v34 = v43;
    sub_219BE1304();
    v35 = swift_allocObject();
    *(v35 + 16) = v56;
    v39(v35 + v23, v28, v50);
    sub_2186D5804(&qword_280EE8078, MEMORY[0x277D2F150], MEMORY[0x277D2F148]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v34, v36);
    (*(v32 + 8))(v33, v26);
  }

  sub_219BE1054();
  sub_2186D5804(&qword_280EE8120, MEMORY[0x277D2EEA0], MEMORY[0x277D2EE98]);
  memset(v61, 0, 32);
  sub_219BDCCE4();
  return sub_218FF4528(v61, sub_21880702C);
}

uint64_t sub_218FF3584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v80 = a1;
  v56 = sub_219BE1314();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v50 - v6;
  v67 = sub_219BE1324();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v52 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v50 - v9;
  v10 = sub_219BDBD34();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = v50 - v13;
  v14 = sub_219BDD2D4();
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  MEMORY[0x28223BE20](v14);
  v68 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDF134();
  MEMORY[0x28223BE20](v17 - 8);
  v62 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BDF824();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BE06D4();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for EngagementPresentation(0);
  v79 = a2;

  sub_219BE34F4();

  sub_219BE06C4();
  sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v78 = v22;
  v23 = sub_219BDCD44();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = *(v24 + 80);
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v77 = xmmword_219C09BA0;
  *(v28 + 16) = xmmword_219C09BA0;
  v29 = *MEMORY[0x277CEAD18];
  v58 = *(v24 + 104);
  v58(v28 + v27, v29, v23);
  v57 = "_TtC7NewsUI216FollowingTracker";
  sub_2186D5804(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  v30 = v21;
  v31 = v59;
  sub_219BDCCC4();

  (*(v60 + 8))(v30, v31);
  sub_219756890(v62);
  v32 = v61;
  sub_219BDF814();
  v60 = v25;
  v33 = v24 + 104;
  v59 = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = v77;
  v51 = v29;
  v35 = v58;
  v62 = v23;
  v50[1] = v33;
  v58(v34 + v27, v29, v23);
  sub_2186D5804(&unk_280EE8650, MEMORY[0x277D2DD98], MEMORY[0x277D2DD90]);
  v36 = v63;
  sub_219BDCCC4();

  (*(v64 + 8))(v32, v36);
  v37 = v72;
  v38 = *(v71 + 16);
  v39 = v76;
  v38(v69, v76, v72);
  v38(v70, v39, v37);
  v40 = v75;
  v41 = v68;
  sub_219BDD2B4();
  sub_2186D5804(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  v42 = v73;
  sub_219BDCCC4();
  (*(v74 + 8))(v41, v42);
  sub_21926F2DC(v40);
  v43 = v66;
  v44 = v67;
  if ((*(v66 + 48))(v40, 1) == 1)
  {
    sub_218FF4588(v40);
  }

  else
  {
    v45 = v53;
    (*(v43 + 32))(v53, v40, v44);
    (*(v43 + 16))(v52, v45, v44);
    v46 = v54;
    sub_219BE1304();
    v47 = swift_allocObject();
    *(v47 + 16) = v77;
    v35(v47 + v27, v51, v62);
    sub_2186D5804(&qword_280EE8078, MEMORY[0x277D2F150], MEMORY[0x277D2F148]);
    v48 = v56;
    sub_219BDCCC4();

    (*(v55 + 8))(v46, v48);
    (*(v43 + 8))(v45, v44);
  }

  sub_219BE11F4();
  sub_2186D5804(&unk_280EE80D0, MEMORY[0x277D2F058], MEMORY[0x277D2F050]);
  memset(v81, 0, sizeof(v81));
  sub_219BDCCE4();
  return sub_218FF4528(v81, sub_21880702C);
}

uint64_t sub_218FF4044()
{
  v1 = sub_219BDF074();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE1544();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1524();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v14 = *(*v0 + 16);
  sub_219BE9924();
  (*(v5 + 104))(v7, *MEMORY[0x277D2F3F8], v4);
  sub_218FF15A4(v11, v3);
  sub_219BE1514();
  sub_2186D5804(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v12 = v15;
  sub_219BDD1F4();
  return (*(v8 + 8))(v10, v12);
}

uint64_t sub_218FF42AC()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      return sub_218FF4528(v6, v7);
    case 3u:
      sub_218FF4528(v6, type metadata accessor for FollowingModel);
      *v3 = 0x6169726F74696465;
      v3[1] = 0xE90000000000006CLL;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      return (*(v1 + 8))(v3, v0);
    case 0xBu:

      sub_218748BF4(0);
      v10 = *(v9 + 48);
      sub_218748D40(0);
      return (*(*(v11 - 8) + 8))(&v6[v10], v11);
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      return sub_218FF4528(v6, v7);
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      return sub_218FF4528(v6, v7);
    default:
      v7 = type metadata accessor for FollowingModel;
      return sub_218FF4528(v6, v7);
  }
}

uint64_t sub_218FF4528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FF4588(uint64_t a1)
{
  sub_218FF6894(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218FF4614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1444();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF0E4();
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, qword_280ED17E0, type metadata accessor for EditorialModelRoute, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v27 - v16);
  sub_218FF68F8(*(a2 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, &v27 - v16);
  v18 = type metadata accessor for EditorialModelRoute(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v27 = *v17;
      swift_getObjectType();
      v29 = a1;
      sub_219BF67F4();
      sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v20 = sub_219BDCD44();
      v28 = a4;
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_219C09BA0;
      v25 = v21;
      a4 = v28;
      (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v25);
      sub_2186D5804(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
      sub_219BDCCC4();
      swift_unknownObjectRelease();

      (*(v30 + 8))(v14, v12);
    }

    else
    {
      sub_218FF4528(v17, type metadata accessor for EditorialModelRoute);
    }
  }

  sub_219BF5414();
  sub_219BE1424();
  sub_218FF5E40(a3, v11, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_218FF4A44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_219BE1444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF5414();
  sub_219BE1424();
  sub_218FF5E40(a2, v9, a3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FF4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BE1444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1424();
  sub_218FF5E40(a2, v9, a4);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FF4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BE1444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_218FF5E40(a2, v9, a4);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FF4D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE1444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1424();
  sub_218FF5E40(a2, v8, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218FF4E44()
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  return sub_218FF538C(v0 + v2, *(v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner);
}

uint64_t sub_218FF4F00(uint64_t a1)
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 43) & 0xFFFFFFFFFFFFFFF8));

  return sub_218FF4B40(a1, v1 + v5, v1 + v6, v7);
}

uint64_t sub_218FF4FC4(uint64_t a1)
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218FF4D54(a1, v1 + v5, v6);
}

uint64_t sub_218FF507C(uint64_t a1)
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_218FF4C48(a1, v1 + v5, v7, v8);
}

uint64_t sub_218FF5158(uint64_t a1, void *a2)
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_218FF4A44(a1, v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_218FF5214(uint64_t a1)
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218FF4614(a1, v6, v1 + v5, v7);
}

uint64_t objectdestroy_13Tm()
{
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218FF538C(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = sub_219BDBD34();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BE1314();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, &qword_280EE8070, MEMORY[0x277D2F168], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v53 - v7;
  v74 = sub_219BE3794();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1324();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - v13;
  v14 = sub_219BDF134();
  MEMORY[0x28223BE20](v14 - 8);
  v66 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF824();
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  MEMORY[0x28223BE20](v16);
  v65 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE3514();
  v61 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BE06D4();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3554();
  v83 = a2;
  sub_219BE35A4();
  sub_219BE34F4();
  v25 = *(v20 + 8);
  v60 = v20 + 8;
  v62 = v25;
  v25(v22, v19);
  sub_219BE3594();
  v26 = v24;
  sub_219BE06C4();
  sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v82 = v27;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v80 = *(v29 + 72);
  v30 = *(v29 + 80);
  v31 = (v30 + 32) & ~v30;
  v32 = swift_allocObject();
  v79 = xmmword_219C09BA0;
  *(v32 + 16) = xmmword_219C09BA0;
  v33 = *MEMORY[0x277CEAD18];
  v59 = *(v29 + 104);
  v59(v32 + v31, v33, v28);
  v81 = "_TtC7NewsUI216FollowingTracker";
  sub_2186D5804(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  v34 = v63;
  sub_219BDCCC4();

  (*(v64 + 8))(v26, v34);
  sub_219BE35A4();
  sub_219756890(v66);
  v35 = v22;
  v36 = v68;
  v62(v35, v61);
  v37 = v65;
  sub_219BDF814();
  v64 = v30;
  v38 = swift_allocObject();
  *(v38 + 16) = v79;
  LODWORD(v63) = v33;
  v39 = v33;
  v40 = v59;
  v66 = v28;
  v59(v38 + v31, v39, v28);
  sub_2186D5804(&unk_280EE8650, MEMORY[0x277D2DD98], MEMORY[0x277D2DD90]);
  v41 = v69;
  sub_219BDCCC4();

  (*(v70 + 8))(v37, v41);
  v42 = v71;
  sub_219BE3584();
  v43 = v73;
  sub_21926F2DC(v73);
  (*(v72 + 8))(v42, v74);
  v44 = v67;
  if ((*(v36 + 48))(v43, 1) == 1)
  {
    sub_218FF4588(v43);
  }

  else
  {
    v45 = v55;
    (*(v36 + 32))(v55, v43, v44);
    (*(v36 + 16))(v54, v45, v44);
    v46 = v56;
    sub_219BE1304();
    v47 = swift_allocObject();
    *(v47 + 16) = v79;
    v40(v47 + v31, v63, v66);
    sub_2186D5804(&qword_280EE8078, MEMORY[0x277D2F150], MEMORY[0x277D2F148]);
    v48 = v58;
    sub_219BDCCC4();

    (*(v57 + 8))(v46, v48);
    (*(v36 + 8))(v45, v44);
  }

  sub_219BE0F44();
  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  v49 = v75;
  sub_219BE75A4();
  sub_2186D5804(&unk_280EE8140, MEMORY[0x277D2EE08], MEMORY[0x277D2EE00]);
  sub_219BDCC64();
  v50 = v78;
  v51 = *(v77 + 8);
  v51(v49, v78);
  sub_219BE7574();
  sub_219BDCC74();
  return (v51)(v49, v50);
}

uint64_t sub_218FF5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v65 = a3;
  v63 = a2;
  v4 = sub_219BDBD34();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BDF1E4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF67D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v46 - v10;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF67D4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v46 - v14;
  v50 = sub_219BDFCE4();
  v15 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FF6894(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = v18;
  v20 = sub_219BDCD44();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v69 = *(v21 + 72);
  v23 = swift_allocObject();
  v66 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = *(v21 + 104);
  v68 = *MEMORY[0x277CEAD18];
  v71 = v20;
  v67 = v24;
  v24(v23 + v22);
  sub_219BE1444();
  sub_2186D5804(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v70 = "_TtC7NewsUI216FollowingTracker";
  sub_219BDCCC4();

  sub_218FF67D4(0, &unk_280EE5130, MEMORY[0x277D6DA48]);
  sub_2186D5804(&qword_280EDC640, type metadata accessor for FollowingModel, &unk_219C483F8);
  v25 = sub_219BE75B4();
  v26 = __OFADD__(v25, v65);
  result = v25 + v65;
  if (v26)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_219BDFCD4();
  v63 = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = v66;
  v67(v28 + v22, v68, v71);
  sub_2186D5804(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v29 = v50;
  v65 = v3;
  sub_219BDCCC4();

  (*(v15 + 8))(v17, v29);
  v30 = v51;
  sub_219BE7594();
  v31 = v52;
  sub_219BE7564();
  v32 = v57;
  sub_219BE5F84();
  (*(v56 + 8))(v31, v32);
  v33 = v53;
  v34 = v55;
  sub_219BEB244();
  v35 = v33;

  (*(v54 + 8))(v30, v34);
  v36 = v58;
  v37 = v33;
  v38 = v59;
  if ((*(v58 + 48))(v37, 1, v59) == 1)
  {
    sub_218FF4528(v35, sub_218A2D984);
  }

  else
  {
    v39 = v46;
    (*(v36 + 32))(v46, v35, v38);
    sub_219BE6944();
    v40 = v47;
    sub_219BDF1C4();
    v41 = swift_allocObject();
    *(v41 + 16) = v66;
    v67(v41 + v22, v68, v71);
    sub_2186D5804(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v42 = v49;
    sub_219BDCCC4();

    (*(v48 + 8))(v40, v42);
    (*(v36 + 8))(v39, v38);
  }

  sub_219BDFEC4();
  v43 = v60;
  sub_219BE75A4();
  sub_2186D5804(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v44 = v62;
  v45 = *(v61 + 8);
  v45(v43, v62);
  sub_219BE7574();
  sub_219BDCC74();
  return (v45)(v43, v44);
}

void sub_218FF67D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5804(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218FF6894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218FF68F8(uint64_t a1, uint64_t a2)
{
  sub_218FF6894(0, qword_280ED17E0, type metadata accessor for EditorialModelRoute, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TodayExpandRequest(uint64_t a1)
{
  result = qword_280ED2310;
  if (!qword_280ED2310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FF6A00(uint64_t a1)
{
  result = type metadata accessor for TodayGapLocation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TodayExpandContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218FF6AB8(uint64_t a1)
{
  v2 = type metadata accessor for FollowingNotificationsPrewarm(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_followingNotificationsPrewarm;
    v7 = result;
    swift_beginAccess();
    sub_218944130(v7 + v6, v4);
    v8 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(v4, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_218944194(v4);
  }

  return result;
}

void sub_218FF6BAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);
  v2 = *(v1 + 16);

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_11;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    v4 = sub_2197A43B4(*(v1 + 8 * v3 + 32));
    if (sub_219975D48(v4) == 0x73694C6575737369 && v5 == 0xE900000000000074)
    {

LABEL_11:

      return;
    }

    ++v3;
    v7 = sub_219BF78F4();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_218FF6CA4(uint64_t a1)
{
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) backingChannel])
  {
    sub_218FF6BAC();
    if (v1)
    {
      MEMORY[0x28223BE20](v1);
      sub_218EC279C(0, &qword_280EE6A20, sub_2186E330C, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v2 = sub_219BE30B4();
      swift_unknownObjectRelease();
      return v2;
    }

    else
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v10 = qword_280F61708;
      sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;
      v12 = sub_21988DFA0();
      v14 = v13;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2186FC3BC();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      v15 = sub_219BF6214();
      sub_219BE5314("Tag feed content does not require issue fetch. Skipping, feed=%{public}", 71, 2, &dword_2186C1000, v10, v15, v11);

      sub_218EC279C(0, &qword_280EE6A20, sub_2186E330C, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();
      swift_unknownObjectRelease();
      return v16;
    }
  }

  else
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v4 = qword_280F61708;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    v6 = sub_21988DFA0();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v9 = sub_219BF6214();
    sub_219BE5314("Tag feed not backed by channel to fetch to issues for tag feed pool, feed=%{public}", 83, 2, &dword_2186C1000, v4, v9, v5);

    sub_218EC279C(0, &qword_280EE6A20, sub_2186E330C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_218FF705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_280E8D7F8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F61708;
  v15 = MEMORY[0x277D84560];
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = sub_21988DFA0();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = sub_219BF6214();
  sub_219BE5314("Tag feed fetching issues for tag feed pool, feed=%{public}@", 59, 2, &dword_2186C1000, v14, v21, v16);

  v22 = CACurrentMediaTime();
  v23 = *(a6 + 16);
  sub_2189D2C8C(0, &qword_280E8B750, v20, v15);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  v25 = v23;
  v26 = [a7 identifier];
  v27 = sub_219BF5414();
  v29 = v28;

  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  v30 = objc_allocWithZone(MEMORY[0x277D30EB0]);
  v31 = sub_219BF5904();

  v32 = [v30 initWithContext:v25 channelIDs:v31 issueSet:1];

  [v32 setPurpose_];
  v33 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  [v32 setCachePolicy_];

  v34 = swift_allocObject();
  *(v34 + 2) = a7;
  *(v34 + 3) = a5;
  v34[4] = v22;
  *(v34 + 5) = sub_2189EB59C;
  *(v34 + 6) = v12;
  aBlock[4] = sub_218FF77E8;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218EC221C;
  aBlock[3] = &block_descriptor_87;
  v35 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v32 setFetchCompletionHandler_];
  _Block_release(v35);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();
}

uint64_t sub_218FF73F0(uint64_t a1, void *a2, uint64_t a3, double a4, uint64_t a5, uint64_t (*a6)(uint64_t, __n128))
{
  v40 = a3;
  sub_2186D80B0();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2187A783C(&v37);
    goto LABEL_8;
  }

  v41[0] = v37;
  v41[1] = v38;
  v42 = v39;
  if (!a1 || !*(a1 + 16) || (v9 = sub_21931EECC(v41), (v10 & 1) == 0) || a2)
  {
    sub_218B6B67C(v41);
LABEL_8:
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v11 = qword_280F61708;
    v12 = sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C0B8C0;
    v14 = sub_21988DFA0();
    v16 = v15;
    v17 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v18 = sub_2186FC3BC();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *&v41[0] = a2;
    v19 = a2;
    sub_2186E7BB0(0, &unk_280E8B570, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v20 = sub_219BF5484();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    sub_219BF5CD4();
    v22 = MEMORY[0x277D83A80];
    *(v13 + 136) = MEMORY[0x277D839F8];
    *(v13 + 144) = v22;
    *(v13 + 112) = v23;
    sub_219BE5314("Tag feed failed to fetch issues for tag feed pool; feed=%{public}@, error=%{public}@, time=%fms", 95, 2, &dword_2186C1000, v11, v12, v13);

    return (a6)(MEMORY[0x277D84F90]);
  }

  v25 = *(*(a1 + 56) + 8 * v9);
  v26 = qword_280E8D7F8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C0B8C0;
  v29 = sub_21988DFA0();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_2186FC3BC();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  if (v25 >> 62)
  {
    v32 = sub_219BF7214();
  }

  else
  {
    v32 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D83C10];
  *(v28 + 96) = MEMORY[0x277D83B88];
  *(v28 + 104) = v33;
  *(v28 + 72) = v32;
  sub_219BF5CD4();
  v34 = MEMORY[0x277D83A80];
  *(v28 + 136) = MEMORY[0x277D839F8];
  *(v28 + 144) = v34;
  *(v28 + 112) = v35;
  v36 = sub_219BF6214();
  sub_219BE5314("Tag feed successfully fetched issues for tag feed pool; feed=%{public}@, issues=%lu, time=%fms", 94, 2, &dword_2186C1000, v27, v36, v28);

  (a6)(v25);

  return sub_218B6B67C(v41);
}

uint64_t sub_218FF780C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NewIssueMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA5BA0;
  if (!qword_280EA5BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FF78B4(uint64_t a1)
{
  sub_2186ECD30(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NewIssueMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, &unk_280E90370, MEMORY[0x277D339F8]);
        if (v4 <= 0x3F)
        {
          sub_2186D6710(319, &qword_280E8E0A0, &protocolRef_FCCurrentIssuesChecker);
          if (v5 <= 0x3F)
          {
            sub_2186CFDE4(319, qword_280ED3940, &protocol descriptor for HistoryServiceType);
            if (v6 <= 0x3F)
            {
              sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
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

uint64_t sub_218FF7A18(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v21 = 6;
  sub_2186E3B14(0);
  v19 = sub_219BEE964();
  sub_218FFD0CC(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v18 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_2186ECD30(0);
  sub_219BEDD14();
  (*(v2 + 16))(v4, &v8[*(v6 + 40)], v1);
  sub_218FFD06C(v8, type metadata accessor for NewIssueMagazineFeedGroupConfigData);
  v13 = sub_219BF1784();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2186F8F80(0, &unk_280E91220, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v18);
  v20 = v19;
  sub_2191EE154(v12);
  return v20;
}

uint64_t sub_218FF7D7C(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v4;
  v33 = v4;
  v6 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  sub_2186E330C(0);
  v30 = v7;
  sub_219BE3204();
  v8 = sub_219BE2CC4();
  v34 = type metadata accessor for NewIssueMagazineFeedGroupEmitter;
  sub_218FFD004(v1, v6, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v29 = *(v3 + 80);
  v10 = swift_allocObject();
  sub_218FFC274(v6, v10 + v9);
  sub_219BE2F74();

  v11 = v6;
  v12 = v6;
  v13 = v34;
  sub_218FFD004(v1, v12, v34);
  v32 = v9 + v5;
  v14 = swift_allocObject();
  v31 = v9;
  sub_218FFC274(v11, v14 + v9);
  *(v14 + ((v9 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;

  v15 = sub_219BE2E54();
  sub_219BE2F74();

  sub_218FFD004(v1, v11, v13);
  v16 = v29;
  v17 = swift_allocObject();
  sub_218FFC274(v11, v17 + v9);
  v18 = sub_219BE2E54();
  sub_218FFD0CC(0, &qword_280E8EF78, MEMORY[0x277D31EE8], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v19 = sub_219BE2E54();
  sub_218A59B7C();
  sub_218FFC430();
  sub_219BE30D4();

  v20 = v34;
  sub_218FFD004(v1, v11, v34);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  sub_218FFC274(v11, v21 + ((v16 + 24) & ~v16));

  v22 = sub_219BE2E54();
  type metadata accessor for NewIssueMagazineFeedGroup(0);
  sub_219BE2F64();

  v23 = sub_219BE2E54();
  sub_2186F8F80(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_218FFD004(v1, v11, v20);
  v24 = swift_allocObject();
  sub_218FFC274(v11, v24 + v31);
  v25 = sub_219BE2E54();
  v26 = sub_219BE3064();

  return v26;
}

uint64_t sub_218FF826C(uint64_t a1)
{
  v2 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v11 = a1;
  sub_218FFD0CC(0, &unk_280EE6A10, sub_218FFCE98, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  sub_218FFD004(a1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NewIssueMagazineFeedGroupEmitter);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_218FFC274(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v7 = sub_219BE2E54();
  sub_2186E330C(0);
  v8 = sub_219BE2F74();

  return v8;
}

uint64_t sub_218FF8428(unint64_t a1, __n128 a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v10 = 1;
LABEL_21:
    sub_218FFC6A0();
    swift_allocError();
    *v11 = v10;
    return swift_willThrow();
  }

LABEL_19:
  v3 = sub_219BF7214();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v13 = MEMORY[0x277D84F90];
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v4, a1, a2);
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v6 isANF])
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
    }

    ++v4;
  }

  while (v8 != v3);
  result = v13;
  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if (*(v13 + 16))
    {
      return result;
    }

    goto LABEL_16;
  }

  v12 = sub_219BF7214();
  result = v13;
  if (!v12)
  {
LABEL_16:

    v10 = 2;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_218FF85F0(unint64_t a1, __n128 a2)
{
  v3 = sub_219BEF0A4();
  v4 = sub_21921D080(v3);

  v5 = sub_219BEF074();
  v6 = sub_21921D080(v5);

  sub_2194796A0(v6, v4);
  v8 = v7;
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v27 = a1;
    v10 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v28 = a1 + 32;
    a1 = v8 + 56;
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v27);
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_24;
        }

        v11 = *(v28 + 8 * v10);
      }

      v12 = v11;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      v14 = [v11 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(v8 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(v8 + 32), v20 = v18 & ~v19, ((*(a1 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(v8 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(a1 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v10 == i)
        {
LABEL_22:
          v24 = v31;
          goto LABEL_27;
        }
      }

      else
      {
LABEL_4:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_27:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    if (sub_219BF7214())
    {
      return v24;
    }

    goto LABEL_30;
  }

  if (!*(v24 + 16))
  {
LABEL_30:

    sub_218FFC6A0();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
  }

  return v24;
}

uint64_t sub_218FF88BC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_219BEF564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a2 + *(v9 + 24)), *(a2 + *(v9 + 24) + 24));
  (*(v6 + 104))(v8, *MEMORY[0x277D32660], v5);
  v10 = sub_219BF0014();
  result = (*(v6 + 8))(v8, v5);
  *a3 = v10;
  return result;
}

uint64_t sub_218FF8A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BEDEE4();
  *a1 = result;
  return result;
}

uint64_t sub_218FF8A44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  type metadata accessor for MagazineFeedPool();
  sub_219BE3204();
  sub_218FFD004(a3, v9, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_218FFC274(v9, v13 + v11);
  *(v13 + v12) = a2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

  v14 = sub_219BE2E54();
  type metadata accessor for NewIssueMagazineFeedGroup(0);
  v15 = sub_219BE2F64();

  return v15;
}

uint64_t sub_218FF8C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218FFD0CC(0, &qword_27CC14C78, type metadata accessor for NewIssueMagazineFeedGroup, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218FF8CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218FFC5A4(0);
  v5 = (a2 + *(v4 + 48));
  sub_218FFD004(a1, a2, type metadata accessor for NewIssueMagazineFeedGroup);
  type metadata accessor for MagazineFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_2186F8F80(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  *v5 = 0u;
  v5[1] = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218FF8D84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_218D827D0();
  return sub_219BEF194();
}

void sub_218FF8E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) + 32));
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218846958;
  *(v10 + 24) = v8;
  v12[4] = sub_218FFCFDC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218FF8F6C;
  v12[3] = &block_descriptor_88;
  v11 = _Block_copy(v12);

  [v9 fetchUsersFollowedIssuesWithQualityOfService:25 completion:v11];
  _Block_release(v11);
}

double sub_218FF8F6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_218A59B7C();
    v4 = sub_219BF5924();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

unint64_t sub_218FF9000@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    MEMORY[0x28223BE20](result);
    v11 = v6;

    v7 = sub_2195EB2AC(sub_218FFCF7C, v10, v4);
    v8 = a2 + *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) + 20);
    result = type metadata accessor for NewIssueMagazineFeedGroupKnobs(0);
    if (*(v8 + *(result + 20)))
    {
      if (*(v8 + *(result + 20)) == 1)
      {
        MEMORY[0x28223BE20](result);
        v11 = a2;
        v9 = sub_218FFCF9C;
      }

      else
      {
        MEMORY[0x28223BE20](result);
        v11 = a2;
        v9 = sub_218FFCFBC;
      }

      result = sub_2195EB2AC(v9, v10, v7);
      v7 = result;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a3 = v7;
  return result;
}

BOOL sub_218FF9164(id *a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = v22 - v13;
  v15 = [*a1 publishDate];
  if (!v15)
  {
    return 1;
  }

  v16 = v15;
  sub_219BDBCA4();

  (*(v5 + 32))(v14, v10, v4);
  sub_219BDBD24();
  sub_219BDBBE4();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v14, v4);
  v20 = a2 + *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) + 20);
  return v18 < *(v20 + *(type metadata accessor for NewIssueMagazineFeedGroupKnobs(0) + 28));
}

BOOL sub_218FF9328(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a2 + *(v4 + 36)), *(a2 + *(v4 + 36) + 24));
  return (sub_2193EC734(v3) & 2) == 0;
}

BOOL sub_218FF9388(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a2 + *(v4 + 36)), *(a2 + *(v4 + 36) + 24));
  return (sub_2193EC734(v3) & 4) == 0;
}

void sub_218FF93E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  if (a7 >> 62)
  {
    v52 = v18;
    v40 = sub_219BF7214();
    v18 = v52;
    if (v40)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_218FFC6A0();
    v41 = swift_allocError();
    *v42 = 4;
    a3();

    return;
  }

  if (!*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v50 = a4;
  v51 = a3;
  v52 = v18;
  v49 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a7 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CECE0F0](0, a7, v19);
    goto LABEL_6;
  }

  if (*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a7 + 32);
LABEL_6:
    v21 = v20;
    MEMORY[0x28223BE20](v20);
    *(&v43 - 4) = v22;
    *(&v43 - 3) = a5;
    *(&v43 - 2) = a6;
    *(&v43 - 1) = a8;
    type metadata accessor for NewIssueMagazineFeedGroup(0);
    sub_219BE3204();
    v23 = swift_allocObject();
    v47 = a8;
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;

    v24 = sub_219BE2E54();
    v45 = a1;
    v46 = a2;
    v44 = a6;
    v25 = v24;
    v48 = sub_219BE2F74();

    v26 = v49;
    sub_218FFD004(a5, v49, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
    v27 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v33 = v50;
    v32 = v51;
    v31[2] = v21;
    v31[3] = v32;
    v31[4] = v33;
    sub_218FFC274(v26, v31 + v27);
    v34 = v45;
    *(v31 + v28) = v44;
    v35 = (v31 + v29);
    v36 = v46;
    v37 = v47;
    *v35 = v34;
    v35[1] = v36;
    *(v31 + v30) = a7;
    *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

    v38 = v21;

    v39 = sub_219BE2E54();
    sub_219BE2FD4();

    return;
  }

  __break(1u);
}

uint64_t sub_218FF9784(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v5 = qword_280F617C8;
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = [a1 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = sub_219BF6214();
  sub_219BE5314("Found new issue=%{public}@", 26, 2, &dword_2186C1000, v5, v11, v6);

  return sub_218FFCA18(a3, a1);
}

void sub_218FF98B4(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v67 = a7;
  v68 = a8;
  v69 = a6;
  v64 = a5;
  v66 = a3;
  v13 = a9;
  v14 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v16 = qword_280F617C8;
  sub_2186F20D4(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = [a2 identifier];
  v19 = sub_219BF5414();
  v21 = v20;

  v22 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v23 = sub_2186FC3BC();
  *(v17 + 64) = v23;
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v71 = 0;
  v72 = 0xE000000000000000;
  v70 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v24 = v71;
  v25 = v72;
  *(v17 + 96) = v22;
  *(v17 + 104) = v23;
  *(v17 + 72) = v24;
  *(v17 + 80) = v25;
  v26 = sub_219BF6214();
  sub_219BE5314("Unable to create new issue group for issue, issue=%{public}@, error=%{public}@", 78, 2, &dword_2186C1000, v16, v26, v17);

  v27 = a9 >> 62;
  if (!(a9 >> 62))
  {
    v28 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    i = v28 != 0;
    if (v28 >= i)
    {
LABEL_5:
      if ((a9 & 0xC000000000000001) != 0 && v28 > 1)
      {
        sub_218A59B7C();

        v30 = i;
        do
        {
          v31 = v30 + 1;
          sub_219BF7334();
          v30 = v31;
        }

        while (v28 != v31);
        if (!v27)
        {
LABEL_10:
          v13 = a9 & 0xFFFFFFFFFFFFFF8;
          v32 = (a9 & 0xFFFFFFFFFFFFFF8) + 32;
          v28 = (2 * v28) | 1;
          if ((v28 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_15:
          v27 = v32;
          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            swift_unknownObjectRelease();
            v36 = MEMORY[0x277D84F90];
          }

          v37 = *(v36 + 16);

          if (__OFSUB__(v28 >> 1, i))
          {
            goto LABEL_38;
          }

          if (v37 != (v28 >> 1) - i)
          {
            goto LABEL_39;
          }

          i = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (i)
          {
            goto LABEL_22;
          }

          for (i = MEMORY[0x277D84F90]; ; i = v35)
          {
            swift_unknownObjectRelease();
LABEL_22:
            if (i < 0 || (i & 0x4000000000000000) != 0)
            {
LABEL_34:
              if (!sub_219BF7214())
              {
LABEL_35:

                sub_218FFC6A0();
                v58 = swift_allocError();
                *v59 = 4;
                v66();

                return;
              }
            }

            else if (!*(i + 16))
            {
              goto LABEL_35;
            }

            v62 = a4;
            if ((i & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*(i + 16))
            {
              v38 = *(i + 32);
LABEL_28:
              v39 = v38;
              v61 = a10;
              MEMORY[0x28223BE20](v38);
              v40 = v64;
              v60[-4] = v41;
              v60[-3] = v40;
              v60[-2] = v69;
              v60[-1] = v42;
              type metadata accessor for NewIssueMagazineFeedGroup(0);
              sub_219BE3204();
              v43 = swift_allocObject();
              *(v43 + 16) = v67;
              *(v43 + 24) = v68;

              v44 = sub_219BE2E54();
              v60[1] = sub_219BE2F74();

              v45 = v40;
              v46 = v65;
              sub_218FFD004(v45, v65, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
              v47 = (*(v63 + 80) + 40) & ~*(v63 + 80);
              v48 = (v15 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
              v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
              v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
              v51 = swift_allocObject();
              v52 = v66;
              v51[2] = v39;
              v51[3] = v52;
              v51[4] = v62;
              sub_218FFC274(v46, v51 + v47);
              v53 = v68;
              *(v51 + v48) = v69;
              v54 = (v51 + v49);
              *v54 = v67;
              v54[1] = v53;
              *(v51 + v50) = i;
              *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;

              v55 = v39;

              v56 = sub_219BE2E54();
              sub_219BE2FD4();

              return;
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            swift_unknownObjectRelease();
            v32 = v27;
LABEL_14:
            sub_218B67194(v13, v32, i, v28);
          }

          v38 = MEMORY[0x21CECE0F0](0, i);
          goto LABEL_28;
        }
      }

      else
      {

        if (!v27)
        {
          goto LABEL_10;
        }
      }

      v13 = sub_219BF7564();
      i = v33;
      v28 = v34;
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v57 = sub_219BF7214();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v28 = v57;
    i = v57 != 0;
    if (sub_219BF7214() >= i)
    {
      if (sub_219BF7214() >= v28)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_218FF9F00(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v4 + 28)), *(a1 + *(v4 + 28) + 24));
  v5 = [a2 identifier];
  sub_219BF5414();

  v6 = sub_219BF27B4();

  return v6;
}

char *sub_218FF9FC4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v25 = sub_219BEE6E4();
  v30 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEFBD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) + 24);
  v28 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + v12), *(a2 + v12 + 24));
  (*(v9 + 104))(v11, *MEMORY[0x277D32930], v8);
  v13 = sub_219BF0034();
  (*(v9 + 8))(v11, v8);
  v14 = *(v13 + 16);
  if (v14)
  {
    v24[1] = v4;
    v31 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v15 = v30 + 16;
    v16 = *(v30 + 16);
    v17 = *(v30 + 80);
    v24[0] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v29 = *(v30 + 72);
    v30 = v16;
    v19 = (v15 - 8);
    v20 = v25;
    do
    {
      (v30)(v7, v18, v20);
      sub_219BEE6D4();
      (*v19)(v7, v20);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v18 += v29;
      --v14;
    }

    while (v14);

    v21 = v31;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v22 = sub_218FFA2A4(v26, v27, v21);

  return v22;
}

char *sub_218FFA2A4(uint64_t a1, void *a2, unint64_t a3)
{
  v99 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_218FFD0CC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v86 - v9;
  sub_218FFD0CC(0, &qword_280E90150, MEMORY[0x277D33EC8], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = v86 - v12;
  sub_218FFD0CC(0, &unk_280E919B0, sub_2186E3B14, v7);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = v86 - v14;
  v15 = sub_219BF2AB4();
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x28223BE20](v15);
  v101 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2034();
  v102 = *(v17 - 8);
  v103 = v17;
  MEMORY[0x28223BE20](v17);
  v100 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD0CC(0, &unk_280E8FF30, sub_218A42400, v7);
  MEMORY[0x28223BE20](v19 - 8);
  v95 = v86 - v20;
  sub_218FFD0CC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v7);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = v86 - v22;
  v94 = sub_219BDBD64();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v90);
  v91 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1934();
  v112 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v109 = v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = v86 - v28;
  v106 = sub_219BF3C84();
  v29 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v31 = (v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_218FFB904(a3, v32);
  v111 = v33;
  if (v33 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  if (v34 != *&v3[*(v35 + 44)])
  {

    sub_218FFC6A0();
    swift_allocError();
    *v55 = 5;
    swift_willThrow();
    return v3;
  }

  v89 = v4;
  v87 = v35;
  v107 = v25;
  v108 = v3;
  v88 = v10;
  v36 = MEMORY[0x277D84560];
  sub_218FFD0CC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v37 = *(sub_219BF3E84() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v86[2] = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v86[3] = v39;
  v40 = v39 + v38;
  sub_218FFD0CC(0, &unk_280E8B7A0, MEMORY[0x277D34138], v36);
  v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v120 = *(v29 + 72);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  *(v42 + v41) = a2;
  v43 = *MEMORY[0x277D34108];
  v44 = *(v29 + 104);
  v116 = v29 + 104;
  v117 = v41;
  v115 = v44;
  (v44)(v42 + v41, v43, v106);
  v45 = a2;
  v46 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v46);
  sub_218F0BB90(v46);
  v86[1] = v40;
  sub_219BF3E74();
  if (!v34)
  {

LABEL_16:
    sub_218F0B984(v46);
    sub_218F0BA7C(v46);
    sub_218F0BB90(v46);
    sub_219BF3E74();
    sub_2186ECD30(0);
    v56 = v91;
    sub_219BEDD14();
    v57 = v112;
    (*(v112 + 16))(v109, v56 + *(v90 + 32), v107);
    sub_218FFD06C(v56, type metadata accessor for NewIssueMagazineFeedGroupConfigData);
    v118 = 0x657573734977656ELL;
    v119 = 0xEA00000000003A3ALL;
    v58 = v92;
    sub_219BDBD54();
    v59 = sub_219BDBD44();
    v61 = v60;
    (*(v93 + 8))(v58, v94);
    MEMORY[0x21CECC330](v59, v61);

    v62 = [v45 identifier];
    sub_219BF5414();

    v63 = sub_219BEC004();
    v64 = *(v63 - 8);
    v113 = *(v64 + 56);
    v114 = v64 + 56;
    v65 = v96;
    v113(v96, 1, 1, v63);
    sub_218A42400(0);
    v67 = v95;
    (*(*(v66 - 8) + 56))(v95, 1, 1, v66);
    v68 = v109;
    sub_219BF1764();

    sub_218817528(v67, &unk_280E8FF30, sub_218A42400);
    sub_218817528(v65, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v69 = *(v57 + 8);
    v112 = v57 + 8;
    v120 = v69;
    v69(v68, v107);
    v70 = v87;
    v71 = &v108[*(v87 + 40)];
    v72 = *(v71 + 3);
    v116 = *(v71 + 4);
    v117 = v72;
    v115 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v113(v65, 1, 1, v63);
    sub_219A95188(v46);
    sub_219A95188(v46);
    sub_219A951A0(v46);
    sub_219A951B8(v46);
    sub_219A952CC(v46);
    sub_219A952E4(v46);
    sub_219A953F8(v46);
    v73 = v100;
    sub_219BF2024();
    v74 = *(v70 + 20);
    sub_2186E3B14(0);
    v76 = v75;
    v77 = *(v75 - 8);
    v78 = v97;
    (*(v77 + 16))(v97, &v108[v74], v75);
    (*(v77 + 56))(v78, 0, 1, v76);
    v79 = sub_219BF35D4();
    (*(*(v79 - 8) + 56))(v98, 1, 1, v79);
    LOBYTE(v118) = 6;
    sub_2186F8F80(0, &qword_280E90058, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v80 = sub_219BF2774();
    (*(*(v80 - 8) + 56))(v88, 1, 1, v80);
    v81 = qword_280E8D920;
    *MEMORY[0x277D30B70];
    if (v81 != -1)
    {
      swift_once();
    }

    qword_280F617C8;
    v82 = v101;
    sub_219BF2A84();
    v83 = v110;
    v3 = v115;
    v84 = v89;
    v85 = sub_219BF2194();
    if (!v84)
    {
      v3 = v85;
    }

    (*(v104 + 8))(v82, v105);
    (*(v102 + 8))(v73, v103);
    v120(v83, v107);
    return v3;
  }

  v118 = v46;
  result = sub_218C34A88(0, v34 & ~(v34 >> 63), 0);
  v114 = v34;
  if ((v34 & 0x8000000000000000) == 0)
  {
    v86[0] = v45;
    v48 = 0;
    v49 = v118;
    v113 = (v111 & 0xC000000000000001);
    v50 = *MEMORY[0x277D34128];
    v51 = v106;
    do
    {
      if (v113)
      {
        v52 = MEMORY[0x21CECE0F0](v48);
      }

      else
      {
        v52 = swift_unknownObjectRetain();
      }

      *v31 = v52;
      (v115)(v31, v50, v51);
      v118 = v49;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_218C34A88((v53 > 1), v54 + 1, 1);
        v49 = v118;
      }

      ++v48;
      *(v49 + 16) = v54 + 1;
      (*(v29 + 32))(v49 + v117 + v54 * v120, v31, v51);
    }

    while (v114 != v48);

    v46 = MEMORY[0x277D84F90];
    v45 = v86[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_218FFB24C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v9 = qword_280F617C8;
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = [a2 identifier];
  v12 = sub_219BF5414();
  v14 = v13;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = sub_219BF6214();
  sub_219BE5314("Creating new issue group for issue=%{public}@.", 46, 2, &dword_2186C1000, v9, v15, v10);

  return sub_218FFB388(a4, a1, x8_0);
}

uint64_t sub_218FFB388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v26 = a3;
  sub_218FFD0CC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = v22 - v5;
  v6 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v22[0] = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v14 = sub_219BF1904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  (*(*(v18 - 8) + 16))(v26, v3, v18);
  (*(v15 + 16))(v17, v23, v14);
  v19 = sub_219BEDCB4();
  v22[1] = v20;
  v23 = v19;
  sub_219BEDCC4();
  sub_219BEDD14();
  (*(v11 + 16))(v22[0], &v9[*(v7 + 36)], v10);
  sub_218FFD06C(v9, type metadata accessor for NewIssueMagazineFeedGroupConfigData);
  type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  sub_2186E3B14(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for NewIssueMagazineFeedGroupKnobs(0);
  sub_2186F8F80(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  sub_219BEEC84();
  type metadata accessor for NewIssueMagazineFeedGroup(0);
  return sub_219BED854();
}

double sub_218FFB798(uint64_t a1, void *a2)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v3 = qword_280F617C8;
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = [a2 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  v11 = sub_219BF6214();
  sub_219BE5314("Unable to create new issue group for issue, issue=%{public}@, error=%{public}@.", 79, 2, &dword_2186C1000, v3, v11, v4);

  return result;
}

uint64_t sub_218FFB904(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_35:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    v3 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v5 = 0;
  v2 = &selRef_moveShortcutWithIdentifier_toIndex_;
  while ((v3 & 0xC000000000000001) == 0)
  {
    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v6 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([v6 hasThumbnail])
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_15;
    }
  }

  v6 = MEMORY[0x21CECE0F0](v5, v3);
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v3 = v29;
  v29 = MEMORY[0x277D84F90];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_36:
    v8 = sub_219BF7214();
    if (!v8)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

LABEL_18:
  if ((v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v8 = *(v3 + 16);
  if (!v8)
  {
LABEL_37:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

LABEL_20:
  v9 = 0;
  while (2)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CECE0F0](v9, v3);
      v2 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      goto LABEL_26;
    }

    if (v9 >= *(v3 + 16))
    {
      goto LABEL_34;
    }

    v10 = *(v3 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v2 = (v9 + 1);
    if (!__OFADD__(v9, 1))
    {
LABEL_26:
      if ([v10 respondsToSelector_] & 1) != 0 && (objc_msgSend(v10, sel_isIssueOnly))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v9;
      if (v2 == v8)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_32:
  v11 = v29;
LABEL_38:

  v12 = *(v28 + *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) + 44));
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v11 < 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = (v11 >> 62) & 1;
    }

    if ((v3 & 1) == 0)
    {
      v13 = *(v11 + 16);
      if (v13 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = *(v11 + 16);
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v13 >= v15)
      {
        goto LABEL_50;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v2 = sub_219BF7214();
  result = sub_219BF7214();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v2 >= v12)
  {
    v27 = v12;
  }

  else
  {
    v27 = v2;
  }

  if (v2 < 0)
  {
    v27 = v12;
  }

  if (v12)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

  if (sub_219BF7214() < v15)
  {
    goto LABEL_80;
  }

LABEL_50:
  if ((v11 & 0xC000000000000001) != 0 && v15)
  {
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);

    v16 = 0;
    do
    {
      v17 = v16 + 1;
      sub_219BF7334();
      v16 = v17;
    }

    while (v15 != v17);
  }

  else
  {
  }

  if (!v3)
  {
    v2 = 0;
    v3 = v11 + 32;
    v15 = (2 * v15) | 1;
    if (v15)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v18 = sub_219BF7564();
  v3 = v19;
  v2 = v20;
  v15 = v21;

  v11 = v18;
  if ((v15 & 1) == 0)
  {
LABEL_60:
    sub_218B667DC(v11, v3, v2, v15);
    v23 = v22;
    goto LABEL_67;
  }

LABEL_61:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v15 >> 1, v2))
  {
    goto LABEL_81;
  }

  if (v25 != (v15 >> 1) - v2)
  {
LABEL_82:
    swift_unknownObjectRelease_n();
    goto LABEL_60;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v23)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_67:
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_218FFBD5C()
{
  sub_218FFD0CC(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218FFBDDC@<X0>(uint64_t *a1@<X8>)
{
  sub_2186ECD30(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x6000000000000000;
  return result;
}

uint64_t sub_218FFBE54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for NewIssueMagazineFeedGroupKnobs(0);
  a2[4] = sub_218FF780C(&qword_280EAC0F0, type metadata accessor for NewIssueMagazineFeedGroupKnobs, &unk_219C2E910);
  a2[5] = sub_218FF780C(&qword_280EAC0F8, type metadata accessor for NewIssueMagazineFeedGroupKnobs, &unk_219C2E8E8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218FFD004(v2 + v4, boxed_opaque_existential_1, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
}

uint64_t sub_218FFBF1C()
{
  sub_2186ECD30(0);

  return sub_219BEDCA4();
}

uint64_t sub_218FFBF48@<X0>(uint64_t *a2@<X8>)
{
  sub_218FFD0CC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186ECD30(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218FFD06C(inited + 32, sub_2188317B0);
  sub_218FFD0CC(0, &qword_280EE77A0, type metadata accessor for NewIssueMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_218FFD130();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218FFC0CC(uint64_t a1)
{
  sub_218FF780C(&qword_280EA5BC0, type metadata accessor for NewIssueMagazineFeedGroupEmitter, &unk_219C51FB8);

  return sub_219BE2324();
}

uint64_t sub_218FFC274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FFC2D8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  result = sub_218FF8428(*a1, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_218FFC358@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  result = sub_218FF85F0(*a1, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_218FFC430()
{
  result = qword_280E8EF70;
  if (!qword_280E8EF70)
  {
    sub_218FFD0CC(255, &qword_280E8EF78, MEMORY[0x277D31EE8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF70);
  }

  return result;
}

void sub_218FFC5A4(uint64_t a1)
{
  if (!qword_280ED5D00)
  {
    type metadata accessor for MagazineFeedGroup(255);
    sub_21880702C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED5D00);
    }
  }
}

unint64_t sub_218FFC6A0()
{
  result = qword_280EA5BF0;
  if (!qword_280EA5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5BF0);
  }

  return result;
}

uint64_t objectdestroy_21Tm_0()
{
  v1 = (type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_2186ECD30(0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2186E3B14(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for NewIssueMagazineFeedGroupKnobs(0) + 32);
  sub_2186F8F80(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[9]));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[11]));
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[12]));

  return swift_deallocObject();
}

void sub_218FFC94C(uint64_t a1)
{
  v3 = *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_218FF98B4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218FFCA18(uint64_t a1, void *a2)
{
  v27 = a1;
  v4 = type metadata accessor for NewIssueMagazineFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  v29 = a2;
  v26 = v2;
  sub_2187E7248(0);
  sub_219BE3204();
  v25 = type metadata accessor for NewIssueMagazineFeedGroupEmitter;
  sub_218FFD004(v2, v7, type metadata accessor for NewIssueMagazineFeedGroupEmitter);
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = v6 + 7;
  v11 = (v6 + 7 + v9) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_218FFC274(v7, v12 + v9);
  *(v12 + v11) = v27;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v13 = a2;
  v14 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  sub_218FFD004(v26, v7, v25);
  v15 = (v8 + 24) & ~v8;
  v16 = (v10 + v15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  sub_218FFC274(v7, v17 + v15);
  *(v17 + v16) = v27;

  v18 = v13;
  v19 = sub_219BE2E54();
  type metadata accessor for NewIssueMagazineFeedGroup(0);
  sub_219BE2F74();

  *(swift_allocObject() + 16) = v18;
  v20 = v18;
  v21 = sub_219BE2E54();
  v22 = sub_219BE2FD4();

  return v22;
}

uint64_t sub_218FFCD28(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void))
{
  v5 = *(type metadata accessor for NewIssueMagazineFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218FFD004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FFD06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218FFD0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218FFD130()
{
  result = qword_280EE77A8;
  if (!qword_280EE77A8)
  {
    sub_218FFD0CC(255, &qword_280EE77A0, type metadata accessor for NewIssueMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE77A8);
  }

  return result;
}

unint64_t sub_218FFD1CC()
{
  result = qword_27CC14C80;
  if (!qword_27CC14C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14C80);
  }

  return result;
}

void sub_218FFD268(uint64_t a1)
{
  if (!qword_280E922D0)
  {
    type metadata accessor for SavedRecipesTagFeedGroupConfigData(255);
    sub_218FFD334(&qword_280E9F3B8, type metadata accessor for SavedRecipesTagFeedGroupConfigData, &unk_219C5260C);
    sub_218FFD334(&qword_280E9F3C0, type metadata accessor for SavedRecipesTagFeedGroupConfigData, &unk_219C525E4);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E922D0);
    }
  }
}

uint64_t sub_218FFD334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SavedRecipesTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA8418;
  if (!qword_280EA8418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FFD3DC(uint64_t a1)
{
  sub_218FFD268(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SavedRecipesTagFeedGroupKnobs(319);
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

uint64_t sub_218FFD480(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218FFD528(a1, a2);
}

uint64_t sub_218FFD528(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_219BF0BD4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for SavedRecipesTagFeedGroup(0);
  v3[13] = swift_task_alloc();
  v5 = MEMORY[0x277D83D88];
  sub_2186ECC68(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[14] = swift_task_alloc();
  sub_2186ECC68(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v3[15] = swift_task_alloc();
  sub_2186ECC68(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v3[16] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  sub_2186F97D4(0);
  v3[20] = swift_task_alloc();
  v7 = sub_219BEF554();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for SavedRecipesTagFeedGroupConfigData(0);
  v3[26] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218FFD890, 0, 0);
}

uint64_t sub_218FFD890()
{
  v1 = v0;
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[20];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v5 = v0[8];
  v6 = type metadata accessor for SavedRecipesTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v5 + *(v6 + 24)), *(v5 + *(v6 + 24) + 24));
  sub_218FFD268(0);
  v29 = v3;
  sub_219BEDD14();
  v7 = *(v2 + 20);
  *(v1 + 64) = v7;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v8 = sub_219BEE5D4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = *(v6 + 20);
  *(v1 + 65) = v9;
  sub_2189AD5C8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v25, v5 + v9, v10);
  (*(v12 + 56))(v25, 0, 1, v11);
  sub_219BEF0B4();
  v13 = *(v1[2] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v14 = sub_219BF35D4();
  (*(*(v14 - 8) + 56))(v26, 1, 1, v14);
  *(v1 + 264) = 43;
  sub_218FFE93C(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v15 = *(v1[4] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v16 = sub_219BF2774();
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v17 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v18 = swift_task_alloc();
  v1[30] = v18;
  *v18 = v1;
  v18[1] = sub_218FFDCE8;
  v19 = v1[29];
  v21 = v1[23];
  v20 = v1[24];
  v22 = v1[20];
  v23 = MEMORY[0x277D84F90];

  return sub_218F0A5B4(v19, v29 + v7, 0x73657069636572, 0xE700000000000000, v20, v21, v23, v22);
}

uint64_t sub_218FFDCE8()
{
  v15 = *(*v1 + 256);
  v14 = *(*v1 + 208);
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 152);
  v8 = *(*v1 + 144);
  v9 = *(*v1 + 136);
  *(*v1 + 248) = v0;

  (*(v8 + 8))(v7, v9);
  sub_218DCF544(v6, sub_2186F97D4);
  v10 = *(v4 + 8);
  v10(v3, v5);
  v10(v2, v5);
  v11 = sub_219BF1934();
  (*(*(v11 - 8) + 8))(v14 + v15, v11);
  if (v0)
  {
    v12 = sub_218FFE158;
  }

  else
  {
    v12 = sub_218FFDF78;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_218FFDF78()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[10];
  v10 = v0[9];
  v11 = v0[12];
  v7 = v0[6];
  (*(v1 + 16))(v4, v2, v3);
  type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v6 + 8))(v5, v10);
  (*(v1 + 8))(v2, v3);
  *(v4 + *(v11 + 20)) = v0[5];
  sub_218FFE8D8(v4, v7);
  type metadata accessor for TagFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_218A59C84(0);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_218FFE158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218FFE248@<X0>(unint64_t *a1@<X8>)
{
  sub_218FFD268(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xA000000000000006;
  return result;
}

uint64_t sub_218FFE2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  a2[4] = sub_218FFD334(&qword_280EAF2C0, type metadata accessor for SavedRecipesTagFeedGroupKnobs, &unk_219C527C0);
  a2[5] = sub_218FFD334(&qword_27CC14CB0, type metadata accessor for SavedRecipesTagFeedGroupKnobs, &unk_219C52798);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_218FFE9D8(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218FFE388(uint64_t a1)
{
  type metadata accessor for SavedRecipesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2186ECC68(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218FFE93C(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_218FFE554()
{
  sub_218FFD268(0);

  return sub_219BEDCA4();
}

uint64_t sub_218FFE580@<X0>(uint64_t *a2@<X8>)
{
  sub_2186ECC68(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218FFD268(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DCF544(inited + 32, sub_2188317B0);
  sub_218FFEA3C(0);
  a2[3] = v6;
  a2[4] = sub_218FFD334(&qword_27CC14CC0, sub_218FFEA3C, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218FFE704(uint64_t a1)
{
  sub_218FFD334(&qword_27CC14CA0, type metadata accessor for SavedRecipesTagFeedGroupEmitter, &unk_219C521C8);

  return sub_219BE2324();
}