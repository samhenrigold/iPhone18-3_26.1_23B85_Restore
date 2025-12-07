void sub_2191A4118(void *a1, void *a2, uint64_t a3)
{
  v159 = a2;
  v161 = a1;
  v149 = *v3;
  v131 = type metadata accessor for EngagementAction(0);
  MEMORY[0x28223BE20](v131);
  v132 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDB954();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v137 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v141 = &v121 - v8;
  sub_218CD3544(0);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDBD64();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for EngagementDismissal(0);
  v138 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v12;
  MEMORY[0x28223BE20](v13);
  v146 = &v121 - v14;
  sub_2191A6B40(0);
  MEMORY[0x28223BE20](v15 - 8);
  v129 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v142 = &v121 - v18;
  MEMORY[0x28223BE20](v19);
  v152 = &v121 - v20;
  v156 = sub_219BE3794();
  v21 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v143 = &v121 - v25;
  MEMORY[0x28223BE20](v26);
  v157 = &v121 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v121 - v29;
  v31 = sub_219BE3514();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v136 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v153 = &v121 - v35;
  MEMORY[0x28223BE20](v36);
  v158 = &v121 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v121 - v39;
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v155 = v3;
  v41 = sub_219BE5434();
  __swift_project_value_buffer(v41, qword_280F62568);
  v150 = *(v32 + 16);
  v151 = v32 + 16;
  v150(v40, a3, v31);
  v42 = sub_219BE5414();
  v43 = sub_219BF6214();
  v44 = os_log_type_enabled(v42, v43);
  v162 = a3;
  v130 = v23;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v160 = v21;
    v154 = v30;
    v47 = v46;
    v163 = v46;
    *v45 = 136315138;
    sub_2186EF6FC(&qword_280EE6670, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v48 = sub_219BF7894();
    v49 = v31;
    v51 = v50;
    v52 = *(v32 + 8);
    v52(v40, v49);
    v53 = sub_2186D1058(v48, v51, &v163);
    v31 = v49;

    *(v45 + 4) = v53;
    _os_log_impl(&dword_2186C1000, v42, v43, "RecipeBoxInteractor: didSelectAction for placement %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v54 = v47;
    v30 = v154;
    v21 = v160;
    MEMORY[0x21CECF960](v54, -1, -1);
    MEMORY[0x21CECF960](v45, -1, -1);

    v56 = v158;
    v55 = v159;
    if (!v159)
    {
      return;
    }
  }

  else
  {

    v52 = *(v32 + 8);
    v52(v40, v31);
    v56 = v158;
    v55 = v159;
    if (!v159)
    {
      return;
    }
  }

  (*(v32 + 104))(v56, *MEMORY[0x277D314E8], v31);
  sub_2186EF6FC(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  v159 = v55;
  sub_219BF5874();
  sub_219BF5874();
  if (v163 == v166 && v164 == v167)
  {
    v52(v56, v31);
  }

  else
  {
    v57 = sub_219BF78F4();
    v52(v56, v31);

    if ((v57 & 1) == 0)
    {

      return;
    }
  }

  v128 = v32;
  v158 = v31;
  v58 = v161[3];
  v59 = v161[4];
  v60 = __swift_project_boxed_opaque_existential_1(v161, v58);
  v61 = v152;
  v124 = v60;
  v126 = v58;
  v125 = v59;
  sub_219BE3AD4();
  v62 = *(v21 + 48);
  v63 = v156;
  v64 = v62(v61, 1, v156);
  v127 = v21 + 48;
  if (v64 == 1)
  {
    v65 = *(v21 + 104);
    (v65)(v30, *MEMORY[0x277D31670], v63);
    v66 = v62(v61, 1, v63);
    v67 = v155;
    if (v66 != 1)
    {
      sub_2191A548C(v61, sub_2191A6B40);
    }
  }

  else
  {
    (*(v21 + 32))(v30, v61, v63);
    v65 = *(v21 + 104);
    v67 = v155;
  }

  v68 = v159;
  v155 = v62;
  v69 = *MEMORY[0x277D31678];
  v152 = v65;
  (v65)(v157, v69, v63);
  sub_2186EF6FC(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
  sub_219BF5874();
  sub_219BF5874();
  if (v163 == v166 && v164 == v167)
  {
    v70 = 1;
  }

  else
  {
    v70 = sub_219BF78F4();
  }

  v71 = v21 + 8;
  v72 = v157;
  v157 = *(v21 + 8);
  (v157)(v72, v63);

  if (v70)
  {
    __swift_project_boxed_opaque_existential_1(v67 + 11, *(v67 + 14));
    sub_219227798(v162);
  }

  if ([v68 style] == 2)
  {
    v123 = v21 + 8;
    v160 = v21;
    v154 = v30;
    v150(v153, v162, v158);
    __swift_project_boxed_opaque_existential_1(v161, v161[3]);
    v73 = sub_219BE3A14();
    if (v74)
    {
      v75 = v74;
      v122 = v73;
    }

    else
    {
      v76 = v133;
      sub_219BDBD54();
      v122 = sub_219BDBD44();
      v75 = v77;
      (*(v134 + 8))(v76, v135);
    }

    v78 = v143;
    v79 = v142;
    v80 = v155;
    sub_219BE3AD4();
    v63 = v156;
    if (v80(v79, 1, v156) == 1)
    {
      (v152)(v78, *MEMORY[0x277D31670], v63);
      if (v80(v79, 1, v63) != 1)
      {
        sub_2191A548C(v79, sub_2191A6B40);
      }
    }

    else
    {
      (*(v160 + 32))(v78, v79, v63);
    }

    __swift_project_boxed_opaque_existential_1(v161, v161[3]);
    v81 = sub_219BE3AE4();
    v83 = v82;
    v84 = v144;
    v85 = *(v144 + 32);
    v86 = sub_219BE3C04();
    v87 = v146;
    (*(*(v86 - 8) + 56))(&v146[v85], 1, 1, v86);
    (*(v128 + 32))(v87, v153, v158);
    v88 = (v87 + v84[5]);
    *v88 = v122;
    v88[1] = v75;
    (*(v160 + 32))(v87 + v84[6], v78, v63);
    v89 = (v87 + v84[7]);
    *v89 = v81;
    v89[1] = v83;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
      v91 = v140;
      sub_2191A6B74(v87, v140, type metadata accessor for EngagementDismissal);
      v92 = (*(v138 + 80) + 16) & ~*(v138 + 80);
      v93 = swift_allocObject();
      sub_2191A6BDC(v91, v93 + v92, type metadata accessor for EngagementDismissal);
      sub_219BDD154();
      swift_unknownObjectRelease();
    }

    v94 = sub_219BEEC14();
    v95 = v145;
    (*(*(v94 - 8) + 56))(v145, 1, 1, v94);
    v96 = (*(*(v149 + 88) + 88))(v95, *(v149 + 80));
    sub_2191A548C(v95, sub_218CD3544);
    v163 = v96;
    sub_21917FAB4(0);
    sub_2186EF6FC(&qword_27CC16EE0, sub_21917FAB4, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
    sub_218718690(v67 + 48, &v163);
    __swift_project_boxed_opaque_existential_1(&v163, v165);
    sub_219BE3A64();

    sub_2191A548C(v87, type metadata accessor for EngagementDismissal);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    v30 = v154;
    v68 = v159;
    v21 = v160;
    v71 = v123;
  }

  if ([v68 style] || (v97 = objc_msgSend(v68, sel_deepLink)) == 0)
  {
    (v157)(v30, v63);
  }

  else
  {
    v160 = v21;
    v98 = v141;
    v99 = v97;
    sub_219BDB8B4();

    __swift_project_boxed_opaque_existential_1(v161, v161[3]);
    v100 = v162;
    v101 = sub_219BE3A14();
    if (v102)
    {
      v103 = v102;
      v159 = v101;
      v150(v136, v100, v158);
      (*(v147 + 16))(v137, v98, v148);
      v104 = v129;
      sub_219BE3AD4();
      v106 = v155;
      v105 = v156;
      v107 = v155(v104, 1, v156);
      v123 = v71;
      if (v107 == 1)
      {
        v108 = v130;
        (v152)(v130, *MEMORY[0x277D31670], v105);
        v109 = v108;
        if (v106(v104, 1, v105) != 1)
        {
          sub_2191A548C(v104, sub_2191A6B40);
        }
      }

      else
      {
        v109 = v130;
        (*(v160 + 32))(v130, v104, v105);
      }

      __swift_project_boxed_opaque_existential_1(v161, v161[3]);
      v110 = sub_219BE3AE4();
      v112 = v111;
      v113 = v131;
      v114 = *(v131 + 36);
      v115 = sub_219BE3C04();
      v116 = &v132[v114];
      v117 = v132;
      (*(*(v115 - 8) + 56))(v116, 1, 1, v115);
      (*(v128 + 32))(v117, v136, v158);
      v118 = (v117 + v113[5]);
      *v118 = v159;
      v118[1] = v103;
      (*(v147 + 32))(v117 + v113[6], v137, v148);
      (*(v160 + 32))(v117 + v113[7], v109, v105);
      v119 = (v117 + v113[8]);
      *v119 = v110;
      v119[1] = v112;
      v120 = swift_unknownObjectWeakLoadStrong();
      if (v120)
      {
        sub_219194B08(v117, v120);
        swift_unknownObjectRelease();
      }

      sub_2191A548C(v117, type metadata accessor for EngagementAction);
      (*(v147 + 8))(v141, v148);
      (v157)(v30, v156);
    }

    else
    {

      (*(v147 + 8))(v98, v148);
      (v157)(v30, v156);
    }
  }
}

uint64_t sub_2191A548C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191A54EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2191A5530(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_21919F244(v9, a1, v13, v12, v4, v5, v6, v7, v8);
}

double sub_2191A5634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2191A5678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_2191A1654(a1, v4, v5, v6);
}

double sub_2191A572C(uint64_t a1, char a2)
{
  (*(*(*v2 + 88) + 80))(a1, a2 & 1, *(*v2 + 80));
  sub_21917FAB4(0);
  sub_2186EF6FC(&qword_27CC16EE0, sub_21917FAB4, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_2191A5838(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[1] = *(a1 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_blueprintViewController);
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v10 = sub_219BF01B4();
  v11 = __swift_project_value_buffer(v10, qword_280F61940);
  v9[3] = v10;
  v9[4] = sub_2186EF6FC(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v15 = sub_219BF54E4();
  v17 = v16;

  v9[5] = v15;
  v9[6] = v17;
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC80], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECB0], v2);
  sub_219BE6BD4();

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_219BE8664();
  v18 = sub_219BE7BC4();

  [v18 ts:0 scrollToTop:?];
}

uint64_t sub_2191A5BC8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2191A5DEC()
{
  v0 = sub_219BF1584();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A6024(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1B74();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC08478 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_27CCD88F8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2191A5BC8();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2191A5BC8();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_2191A6024(uint64_t a1)
{
  if (!qword_27CC16EE8)
  {
    sub_2186F1708();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC16EE8);
    }
  }
}

uint64_t sub_2191A6080(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecipeBoxExpandRequest(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RecipeBoxGapLocation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2187609C8;

  return sub_21919D560(a1, v10, v11, v12, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t type metadata accessor for RecipeBoxFailedData(uint64_t a1)
{
  result = qword_27CC16EF8;
  if (!qword_27CC16EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2191A623C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_21919BC14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2191A6308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_219199F28(a1, v4, v5, v6, v7);
}

uint64_t sub_2191A63DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21919B304(a1, v4, v5, v6);
}

uint64_t sub_2191A64C4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeFilterConfigFetchResult(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_21919B924(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_10Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2191A6608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21919A7D4(a1, v4, v5, v6);
}

uint64_t sub_2191A66BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecipeBoxRefreshRequest(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187608D4;

  return sub_2191A2694(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_2191A67F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F627F0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a2, v5);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    v17 = sub_219BE34B4();
    v27 = v5;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_2186D1058(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_219BE3764();
    v23 = v22;
    (*(v6 + 8))(v8, v27);
    v24 = sub_2186D1058(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "Handle engagement placement=%s, failed with error=%s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2191A6B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A6BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A6C44(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementDismissal(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2191989F0(a1, v4);
}

void sub_2191A6CB4(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_2191A6DD4(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDC104();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F938B8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EC04(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953C5C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDEBD4();
  sub_219BDD344();
  if (v19)
  {
    sub_219BEB1C4();

    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      (*(v16 + 8))(v18, v15);
      v20 = sub_218F938B8;
      return sub_2191A548C(v9, v20);
    }

    v22 = v31;
    (*(v12 + 32))(v31, v9, v11);
    if ((v30 & 1) != 0 || (sub_219BDEB84() & 1) == 0)
    {
      (*(v12 + 8))(v22, v11);
    }

    else
    {
      v9 = v26;
      sub_219BEB2F4();
      v23 = v22;
      v25 = v27;
      v24 = v28;
      if ((*(v27 + 48))(v9, 1, v28) == 1)
      {
        (*(v12 + 8))(v23, v11);
        (*(v16 + 8))(v18, v15);
        v20 = sub_218747BDC;
        return sub_2191A548C(v9, v20);
      }

      (*(v25 + 32))(v29, v9, v24);
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2191A6CB4(v29);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v25 + 8))(v29, v24);
      (*(v12 + 8))(v31, v11);
    }
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2191A726C(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27[5] = v10;
  sub_219BDC8D4();

  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v27[4] = v12;
  v27[3] = sub_219BDD274();
  v27[0] = v13;
  sub_2189B4E2C(v9, v6);
  v15 = MEMORY[0x277D2D578];
  sub_2187B14CC(v28, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_2189B4EAC(v6, v18 + v16);
  v19 = v18 + v17;
  v20 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v26;
  v21 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v21 = 0;
  v21[1] = 0;
  sub_2186CF94C(0);
  sub_2189B4DD4();
  swift_retain_n();
  v22 = sub_219BEB454();

  sub_21874504C(v28, &qword_280EE33A0, &qword_280EE33B0, v15, sub_2186C6F70);
  sub_218A42D80(v9);
  sub_21874504C(v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return v22;
}

double sub_2191A75E4(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v30 = v11;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    v15 = qword_280ED32D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_21874504C(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12;
  v33 = sub_219BDD274();
  *&v32 = v13;
  sub_2189B4E2C(v9, v6);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  sub_2189B4EAC(v6, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16, v18);
  sub_21874504C(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874504C(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_21874504C(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_2191A7BB4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2191A7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  sub_21897EC04(0);
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BEF2A4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF974();
  v25 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecipeBoxLayoutModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F02C(0);
  sub_219BE75E4();
  (*(v12 + 32))(v14, v17, v11);
  v24[2] = *(v4 + 80);
  v24[1] = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v20, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

  sub_219BEECF4();

  v22 = sub_219BEF294();
  (*(v28 + 8))(v10, v29);
  (*(v12 + 8))(v14, v25);
  return v22;
}

void sub_2191A7F54(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF0894();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D32F88])
  {
    (*(v3 + 96))(v5, v2);
    v6 = sub_219BF13B4();
    v7 = *(v6 - 8);
    if ((*(v7 + 88))(v5, v6) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      (*(v7 + 8))(v5, v6);
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2191A81C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2191A7C04(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_2191A81F8(uint64_t a1)
{
  sub_21897EC04(0);
  v3 = *(v1 + 16);

  sub_2191A7F54(a1, v3);
}

uint64_t sub_2191A8270()
{
  v1 = v0;
  sub_2186EB308(0);
  v3 = v2;
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1584();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEEC14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191A9E74(v1, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218799AB4(0);
      v19 = v23;
      (*(v23 + 32))(v8, v15 + *(v18 + 48), v6);
      v17 = sub_219BF1524();
      (*(v19 + 8))(v8, v6);
      sub_2191A9EDC(v15, type metadata accessor for RecipeBoxGapLocation);
    }

    else
    {
      v21 = v24;
      (*(v24 + 32))(v5, v15, v3);
      v17 = sub_219BF07B4();
      (*(v21 + 8))(v5, v3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *v15;
    sub_2187998B0(0);
    sub_2191A9EDC(v15 + *(v20 + 48), type metadata accessor for RecipeBoxGapLocation);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v17 = sub_219BEEBE4();
    (*(v10 + 8))(v12, v9);
  }

  return v17;
}

uint64_t sub_2191A85F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EF744(&qword_280EDBEE0, type metadata accessor for RecipeBoxModel, &unk_219C63438);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

unint64_t sub_2191A8674()
{
  v1 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191A9E74(v0, v3, type metadata accessor for RecipeBoxGapLocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2191A9EDC(v3, type metadata accessor for RecipeBoxGapLocation);
    return 0x726F73727563;
  }

  else
  {
    v5 = *v3;
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_219BF7314();

    v9 = 0xD000000000000016;
    v10 = 0x8000000219D0EF20;
    v6 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    return v9;
  }
}

uint64_t sub_2191A87CC()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEEC14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v0, v11, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      v13 = sub_219BEEBF4();
      (*(v6 + 8))(v8, v5);
      return v13;
    }

    sub_2187998B0(0);
    v18 = &v11[*(v19 + 48)];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4(0);
    v16 = *(v15 + 48);
    v17 = sub_219BF1584();
    (*(*(v17 - 8) + 8))(&v11[v16], v17);
    v18 = v11;
LABEL_7:
    sub_2191A9EDC(v18, type metadata accessor for RecipeBoxGapLocation);
    return 0;
  }

  sub_2191A8ACC(v4);
  v20 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  sub_2191A9EDC(v11, type metadata accessor for RecipeBoxModel);
  return v20;
}

uint64_t sub_2191A8ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2186EB308(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1584();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v2, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218799AB4(0);
      (*(v10 + 32))(v12, &v15[*(v19 + 48)], v9);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      sub_219BEDB14();
      (*(v10 + 8))(v12, v9);
      v20 = *MEMORY[0x277D32D10];
      v21 = sub_219BF0614();
      (*(*(v21 - 8) + 104))(a1, v20, v21);
      return sub_2191A9EDC(v15, type metadata accessor for RecipeBoxGapLocation);
    }

    (*(v6 + 32))(v8, v15, v5);
    sub_219BF07D4();
    (*(v6 + 8))(v8, v5);
    v18 = MEMORY[0x277D32DF0];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_2187998B0(0);
      v24 = *(v23 + 48);
      sub_219BF03C4();
      v25 = *MEMORY[0x277D32DB8];
      v26 = sub_219BF0614();
      (*(*(v26 - 8) + 104))(a1, v25, v26);
      return sub_2191A9EDC(&v15[v24], type metadata accessor for RecipeBoxGapLocation);
    }

    v17 = sub_219BEEC14();
    (*(*(v17 - 8) + 32))(a1, v15, v17);
    v18 = MEMORY[0x277D32DB0];
  }

  v27 = *v18;
  v28 = sub_219BF0614();
  return (*(*(v28 - 8) + 104))(a1, v27, v28);
}

uint64_t sub_2191A8EE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BF0B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v2, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      v21 = type metadata accessor for RecipeBoxGapLocation;
      v22 = &v15[*(v23 + 48)];
      goto LABEL_8;
    }

    v17 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v21 = v17;
    v22 = v15;
LABEL_8:
    sub_2191A9EDC(v22, v21);
    v24 = sub_219BEAF84();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4(0);
    v19 = *(v18 + 48);
    v20 = sub_219BF1584();
    (*(*(v20 - 8) + 8))(&v15[v19], v20);
    v17 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, v15, v9);
  sub_219BF07D4();
  sub_219BF0B54();
  (*(v5 + 8))(v7, v4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2191A91FC()
{
  v1 = v0;
  v2 = sub_219BF0B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v1, v13, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      v19 = type metadata accessor for RecipeBoxGapLocation;
      v20 = &v13[*(v21 + 48)];
      goto LABEL_8;
    }

    v15 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v19 = v15;
    v20 = v13;
LABEL_8:
    sub_2191A9EDC(v20, v19);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4(0);
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    v15 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v8 + 32))(v10, v13, v7);
  sub_219BF07D4();
  v23 = sub_219BF0B44();
  (*(v3 + 8))(v5, v2);
  sub_2191A9F3C(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C0B8C0;
  sub_219BE6354();
  sub_219BE62D4();
  sub_219BE6304();

  (*(v8 + 8))(v10, v7);
  return v24;
}

uint64_t sub_2191A95C4(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v4, v3, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      sub_2191A9EDC(&v3[*(v6 + 48)], type metadata accessor for RecipeBoxGapLocation);
      return 1;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_6:
    v11 = type metadata accessor for RecipeBoxModel;
    goto LABEL_7;
  }

  sub_218799AB4(0);
  v9 = *(v8 + 48);
  v10 = sub_219BF1584();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);
  v11 = type metadata accessor for RecipeBoxGapLocation;
LABEL_7:
  sub_2191A9EDC(v3, v11);
  return 0;
}

uint64_t sub_2191A9720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v11 = sub_219BE57D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  sub_2186EB308(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v23 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v10, v25, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      v31 = type metadata accessor for RecipeBoxGapLocation;
      v32 = &v25[*(v33 + 48)];
      goto LABEL_8;
    }

    v27 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v31 = v27;
    v32 = v25;
LABEL_8:
    sub_2191A9EDC(v32, v31);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4(0);
    v29 = *(v28 + 48);
    v30 = sub_219BF1584();
    (*(*(v30 - 8) + 8))(&v25[v29], v30);
    v27 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v17 + 32))(v22, v25, v16);
  (*(v17 + 16))(v19, v22, v16);
  (*(v12 + 16))(v14, v38, v11);
  WitnessTable = swift_getWitnessTable();
  v36 = sub_219876610(v19, v14, v11, WitnessTable);
  (*(v17 + 8))(v22, v16);
  return v36;
}

uint64_t sub_2191A9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v11 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v9, v13, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      v19 = type metadata accessor for RecipeBoxGapLocation;
      v20 = &v13[*(v21 + 48)];
      goto LABEL_8;
    }

    v15 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v19 = v15;
    v20 = v13;
LABEL_8:
    sub_2191A9EDC(v20, v19);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4(0);
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    v15 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  v37 = a7;
  sub_2191A9F3C(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0EE20;
  v24 = sub_219BE6684();
  v39 = a9;
  v25 = sub_219BE6654();
  if (v25)
  {
    v26 = MEMORY[0x277D6D630];
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
  }

  *(v23 + 32) = v25;
  *(v23 + 56) = v27;
  *(v23 + 64) = v26;
  v28 = sub_219BE6634();
  if (v28)
  {
    v29 = MEMORY[0x277D6D630];
    v30 = v24;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0;
  }

  *(v23 + 72) = v28;
  *(v23 + 96) = v30;
  *(v23 + 104) = v29;
  v31 = sub_219BE6614();
  if (v31)
  {
    v32 = MEMORY[0x277D6D630];
    v33 = v24;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(v23 + 120) = 0;
    *(v23 + 128) = 0;
  }

  *(v23 + 112) = v31;
  *(v23 + 136) = v33;
  *(v23 + 144) = v32;
  v34 = sub_219BE6664();
  if (v34)
  {
    v35 = MEMORY[0x277D6D630];
  }

  else
  {
    v24 = 0;
    v35 = 0;
    *(v23 + 160) = 0;
    *(v23 + 168) = 0;
  }

  *(v23 + 152) = v34;
  *(v23 + 176) = v24;
  *(v23 + 184) = v35;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v36 = sub_219BE59D4();
  sub_2191A9EDC(v13, type metadata accessor for RecipeBoxModel);
  return v36;
}

uint64_t sub_2191A9E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A9EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191A9F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2191A9FA0(uint64_t a1, uint64_t a2)
{
  sub_21879991C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_2191AA974(0, &qword_27CC16F10, type metadata accessor for RecipeBoxGapLocation);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v22 - v13);
  v16 = *(v15 + 56);
  sub_2191A9E74(a1, &v22 - v13, type metadata accessor for RecipeBoxGapLocation);
  sub_2191A9E74(a2, v14 + v16, type metadata accessor for RecipeBoxGapLocation);
  type metadata accessor for RecipeBoxGapLocation(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v14;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = sub_219417FCC(v20, *(v14 + v16));

      return v18 & 1;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_7:
    sub_2191A9EDC(v14 + v16, type metadata accessor for RecipeBoxGapLocation);
    v18 = 0;
    return v18 & 1;
  }

  v17 = *(v6 + 32);
  v17(v11, v14, v5);
  v17(v8, (v14 + v16), v5);
  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_2186EF744(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  v18 = sub_219BF0F64();
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  return v18 & 1;
}

uint64_t sub_2191AA290(uint64_t a1, uint64_t a2)
{
  sub_2186EB308(0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v49 - v7;
  v8 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v12;
  v13 = sub_219BEEC14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  sub_2191AA974(0, &qword_27CC16F08, type metadata accessor for RecipeBoxModel);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v49 - v21;
  v24 = &v49 + *(v23 + 56) - v21;
  sub_2191A9E74(a1, &v49 - v21, type metadata accessor for RecipeBoxModel);
  sub_2191A9E74(a2, v24, type metadata accessor for RecipeBoxModel);
  type metadata accessor for RecipeBoxModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v47 = *(v14 + 32);
        v47(v19, v22, v13);
        v47(v16, v24, v13);
        v29 = sub_219BEEC04();
        v48 = *(v14 + 8);
        v48(v16, v13);
        v48(v19, v13);
        return v29 & 1;
      }

      (*(v14 + 8))(v22, v13);
      goto LABEL_15;
    }

    sub_2187998B0(0);
    v33 = v32;
    v34 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v35 = *(v33 + 48);
      v36 = &v22[v34];
      v37 = v52;
      sub_2191AA910(v36, v52);
      sub_2191AA910(&v24[v35], v10);
      v29 = sub_2191A9FA0(v37, v10);
      sub_2191A9EDC(v10, type metadata accessor for RecipeBoxGapLocation);
      sub_2191A9EDC(v37, type metadata accessor for RecipeBoxGapLocation);
      return v29 & 1;
    }

    sub_2191A9EDC(&v22[v34], type metadata accessor for RecipeBoxGapLocation);
LABEL_15:
    sub_2191A9EDC(v24, type metadata accessor for RecipeBoxModel);
    v29 = 0;
    return v29 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v39 = v53;
      v38 = v54;
      v40 = *(v53 + 32);
      v41 = v50;
      v40(v50, v22, v54);
      v42 = v51;
      v40(v51, v24, v38);
      sub_219BF0B74();
      v43 = MEMORY[0x277D32FD0];
      sub_2186EF744(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
      sub_2186EF744(&unk_280E90C80, v43, MEMORY[0x277D32FC8]);
      v29 = sub_219BF07C4();
      v44 = *(v39 + 8);
      v44(v42, v38);
      v44(v41, v38);
      return v29 & 1;
    }

    (*(v53 + 8))(v22, v54);
    goto LABEL_15;
  }

  sub_218799AB4(0);
  v27 = *(v26 + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v45 = sub_219BF1584();
    (*(*(v45 - 8) + 8))(&v22[v27], v45);
    sub_2191A9EDC(v22, type metadata accessor for RecipeBoxGapLocation);
    goto LABEL_15;
  }

  v28 = v52;
  sub_2191AA910(v22, v52);
  sub_2191AA910(v24, v10);
  v29 = sub_2191A9FA0(v28, v10);
  sub_2191A9EDC(v10, type metadata accessor for RecipeBoxGapLocation);
  sub_2191A9EDC(v28, type metadata accessor for RecipeBoxGapLocation);
  v30 = sub_219BF1584();
  v31 = *(*(v30 - 8) + 8);
  v31(&v24[v27], v30);
  v31(&v22[v27], v30);
  return v29 & 1;
}

uint64_t sub_2191AA910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2191AA974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void __swiftcall RecipeBoxModule.createViewController(presentedAsL2:)(UIViewController *__return_ptr retstr, Swift::Bool presentedAsL2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D2F578], v4, v6);
  v9 = sub_219BDD0F4();
  (*(v5 + 8))(v8, v4);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for RecipeBoxViewController();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = presentedAsL2;

  v11 = sub_219BE1E04();

  if (v11)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191AAB80(void *a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1B84();
}

uint64_t RecipeBoxModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t RecipeBoxModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2191AAD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2191AAD74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2191AADD8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v72 = a2;
  v67 = a1;
  sub_2191ABA84(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v55 - v6;
  v59 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v59);
  v60 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_219BF0BD4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeBoxFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897ED8C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  sub_218E49B5C(0);
  MEMORY[0x28223BE20](v21 - 8);
  sub_2191ABA84(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v74 = v22;
  v66 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = sub_218701C74(&qword_27CC12A18, sub_218953B70, MEMORY[0x277D6D720]);
  v26 = sub_218701C74(&qword_27CC12A20, sub_218953B70, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v15, v25, v26);
  v27 = type metadata accessor for RecipeBoxSectionDescriptor(0);
  v28 = type metadata accessor for RecipeBoxModel(0);
  v29 = sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
  v30 = sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
  v64 = v28;
  v65 = v27;
  v62 = v30;
  v63 = v29;
  v31 = v16;
  sub_219BEB2D4();
  v32 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
  sub_2199CFD84(v13);
  v33 = *(v16 + 48);
  v73 = v15;
  if (v33(v13, 1, v15) == 1)
  {
    sub_2191ABC14(v13, sub_21897ED8C);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v73);
    if (*(v3 + 64) == 1)
    {
      type metadata accessor for RecipeBoxFeedServiceConfig(0);
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
      v34 = *(sub_219BEF3E4() + 16);

      if (v34)
      {
        sub_219BEB1E4();
      }
    }

    (*(v16 + 8))(v20, v73);
  }

  if ((v32 >> 61) <= 2 && v32 >> 61 != 1)
  {
    sub_218C571D4(0);
    v35 = swift_projectBox();
    v36 = v56;
    sub_218A5D7D4(v35, v56);
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    type metadata accessor for RecipeBoxFeedServiceConfig(0);
    sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);

    v37 = v55;
    sub_219BEE7A4();
    v38 = v61;
    sub_2199D0AE0(v36, v37, v61);
    (*(v57 + 8))(v37, v58);
    sub_219BEB1E4();

    (*(v31 + 8))(v38, v73);
    sub_2191ABC14(v36, type metadata accessor for RecipeBoxFeedGroup);
  }

  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  v39 = sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v39 < 0)
    {
      goto LABEL_18;
    }

    sub_219BF09A4();
    if (!v75[0])
    {
      goto LABEL_18;
    }

    v40 = *(v75[0] + 24);

    v41 = *(v40 + 16);

    if (!v41)
    {
      goto LABEL_18;
    }

    v42 = swift_allocObject();
    sub_2191ABB78(0, &qword_27CC16F20, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v42 + 16) = sub_219BEE874();
    v43 = v60;
    *v60 = v42;
    v44 = MEMORY[0x277D33068];
  }

  else
  {
    v45 = swift_allocObject();
    sub_2191ABB78(0, &qword_27CC16F20, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v45 + 16) = sub_219BEE874();
    v43 = v60;
    *v60 = v45;
    v44 = MEMORY[0x277D33090];
  }

  v46 = *v44;
  sub_2191ABB78(0, &qword_280E909D8, MEMORY[0x277D33098]);
  (*(*(v47 - 8) + 104))(v43, v46, v47);
  swift_storeEnumTagMultiPayload();
  v48 = v61;
  sub_21912EE84(v43, v61);
  sub_2191ABC14(v43, type metadata accessor for RecipeBoxGapLocation);
  sub_219BEB1E4();
  (*(v31 + 8))(v48, v73);
LABEL_18:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v49 = sub_219BEEFC4();

  v50 = 0;
  if (v49)
  {
    v50 = sub_219BEDC74();
  }

  else
  {
    v75[1] = 0;
    v75[2] = 0;
  }

  v51 = v68;
  v75[0] = v49;
  v76 = v50;
  sub_219BEB2C4();

  sub_218701C74(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C625F4);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v75, v76);
  if (sub_219BE6E54())
  {
    v53 = v69;
    v52 = v70;
    (*(v69 + 104))(v51, *MEMORY[0x277D6DF80], v70);
  }

  else
  {
    sub_219BE85C4();
    v53 = v69;
    v52 = v70;
  }

  v72(v51);

  (*(v53 + 8))(v51, v52);
  (*(v66 + 8))(v24, v74);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_2191AB960(uint64_t a1)
{
  v2 = sub_21917FF24();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2191AB9A0()
{
  result = qword_27CC16F18;
  if (!qword_27CC16F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F18);
  }

  return result;
}

void sub_2191ABA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor(255);
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    v8[3] = sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2191ABB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeBoxFeedServiceConfig(255);
    v7 = sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191ABC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191ABC74(char a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61718;
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  BYTE8(v10) = 0;
  *&v10 = a1 & 1;
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = *(&v10 + 1);
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_219BF6214();
  sub_219BE5314("Fetching sports favorites using %{public}@ request.", 51, 2, &dword_2186C1000, v2, v4, v3);

  if (a1)
  {
    sub_2191AD734(0);
    sub_219BE3204();
    v5 = sub_219BE2E54();
    sub_2191AD7CC(0);
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2F64();
  }

  else
  {
    sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
    sub_219BE3204();
    v6 = sub_219BE2E54();
    v7 = sub_219BE2F74();
  }

  v8 = v7;

  return v8;
}

uint64_t sub_2191ABEF0(uint64_t a1)
{
  sub_2186C6148(0, &qword_280E8E530, 0x277D31320);
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
  v2 = sub_219BE2F74();

  return v2;
}

double sub_2191ABFBC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  a2[1] = v2;
  swift_bridgeObjectRetain_n();
  return result;
}

uint64_t sub_2191ABFF0(uint64_t a1)
{
  sub_2186C6148(0, &qword_280E8E530, 0x277D31320);
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
  sub_219BE2F74();

  swift_getObjectType();
  sub_219BF6A64();
  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_2191AC100(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  swift_unknownObjectRetain();
  sub_2191AC1D8(v1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_unknownObjectRetain();
  v4 = sub_219BE2E54();
  sub_2191AD7CC(0);
  v5 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2191AC1D8(unint64_t a1, id a2)
{
  if (([a2 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(a2, sel_editorialTopicEventMapping)) != 0)
  {
    v5 = v4;
    sub_2191AD930(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v6 = sub_219BF5214();
  }

  else
  {
    v6 = sub_2194B11A4(MEMORY[0x277D84F90]);
  }

  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  v43 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_53:
    v10 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
      goto LABEL_54;
    }

LABEL_28:
    v25 = 0;
    v26 = v10 + 4;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= v10[2])
      {
        goto LABEL_47;
      }

      v28 = v26[v25];
      v29 = *(v28 + 16);
      a1 = *(v27 + 2);
      v30 = a1 + v29;
      if (__OFADD__(a1, v29))
      {
        goto LABEL_48;
      }

      v31 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v27 + 3) >> 1)
      {
        if (!*(v28 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 <= v30)
        {
          v33 = a1 + v29;
        }

        else
        {
          v33 = a1;
        }

        v27 = sub_218840D24(isUniquelyReferenced_nonNull_native, v33, 1, v27);
        if (!*(v28 + 16))
        {
LABEL_29:

          if (v29)
          {
            goto LABEL_49;
          }

          goto LABEL_30;
        }
      }

      if ((*(v27 + 3) >> 1) - *(v27 + 2) < v29)
      {
        goto LABEL_50;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v27 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_51;
        }

        *(v27 + 2) = v36;
      }

LABEL_30:
      ++v25;
      v10 = v31;
      if (v24 == v25)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_7:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v42 = v10;
    v11 = v8;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x21CECE0F0](v11, a1);
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v11 >= *(v43 + 16))
        {
          goto LABEL_46;
        }

        v12 = *(a1 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v43 = a1 & 0xFFFFFFFFFFFFFF8;
          v7 = sub_219BF7214();
          if (!v7)
          {
            goto LABEL_53;
          }

          goto LABEL_7;
        }
      }

      v13 = a1;
      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(v6 + 16))
      {
        break;
      }

      swift_unknownObjectRelease();

LABEL_10:
      ++v11;
      a1 = v13;
      if (v8 == v7)
      {
        v10 = v42;
        goto LABEL_27;
      }
    }

    v18 = sub_21870F700(v15, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v21 = *(*(v6 + 56) + 8 * v18);

    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_2191FA158(0, v42[2] + 1, 1, v42);
    }

    a1 = v13;
    v23 = v42[2];
    v22 = v42[3];
    if (v23 >= v22 >> 1)
    {
      v42 = sub_2191FA158((v22 > 1), v23 + 1, 1, v42);
    }

    v10 = v42;
    v42[2] = v23 + 1;
    v42[v23 + 4] = v21;
  }

  while (v8 != v7);
LABEL_27:
  v24 = v10[2];
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_54:
  v27 = MEMORY[0x277D84F90];
LABEL_55:

  if (*(v27 + 2))
  {
    MEMORY[0x28223BE20](v37);
    sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding);
    sub_219BE3204();

    *(swift_allocObject() + 16) = v6;
    v38 = sub_219BE2E54();
    sub_219BE2F64();

    v39 = sub_219BE2E54();
    v40 = sub_219BE3054();

    return v40;
  }

  else
  {

    if (qword_280EC6B48 != -1)
    {
      swift_once();
    }

    sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }
}

uint64_t sub_2191AC778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a4 = a2;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = a3;

  return swift_unknownObjectRetain();
}

uint64_t sub_2191AC7CC(unint64_t a1, uint64_t a2, int64_t a3, id a4)
{
  v7 = [a4 respondsToSelector_];
  v8 = MEMORY[0x277D84F90];
  if ((v7 & 1) != 0 && (v9 = [a4 editorialTopicEventMappingProperties]) != 0)
  {
    v10 = v9;
    sub_2186C6148(0, &unk_280E8DBA0, 0x277D30F78);
    v11 = sub_219BF5214();
  }

  else
  {
    v11 = sub_2194B12F4(MEMORY[0x277D84F90]);
  }

  v59 = v8;
  v60 = v8;
  if (a1 >> 62)
  {
LABEL_65:
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    goto LABEL_60;
  }

  v13 = 0;
  v53 = a1;
  v54 = a1 & 0xC000000000000001;
  v50 = a1 + 32;
  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  v56 = v11;
  v49 = a3;
  v52 = v12;
  do
  {
    if (v54)
    {
      v14 = MEMORY[0x21CECE0F0](v13, a1);
      v15 = __OFADD__(v13, 1);
      v16 = v13 + 1;
      if (v15)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v13 >= *(v51 + 16))
      {
        goto LABEL_63;
      }

      v14 = *(v50 + 8 * v13);
      swift_unknownObjectRetain();
      v15 = __OFADD__(v13, 1);
      v16 = v13 + 1;
      if (v15)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v55 = v16;
    v17 = [v14 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (!*(a3 + 16))
    {
      goto LABEL_52;
    }

    v21 = sub_21870F700(v18, v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_53;
    }

    v24 = *(*(a3 + 56) + 8 * v21);
    v25 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
    v11 = *(v24 + 16);

    if (!v11)
    {
      goto LABEL_28;
    }

    v26 = 0;
    a1 = v24 + 40;
    do
    {
      a3 = a1 + 16 * v26;
      v27 = v26;
      while (1)
      {
        if (v27 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        ++v27;
        a3 += 16;
        if (v11 == v27)
        {
          goto LABEL_28;
        }
      }

      v28 = *(a3 - 8);
      v29 = *a3;

      sub_21870F700(v28, v29);
      if ((v30 & 1) == 0)
      {

        goto LABEL_21;
      }

      swift_unknownObjectRetain();

      MEMORY[0x21CECC690](v31);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      v26 = v27 + 1;
      sub_219BF5A54();
      v25 = v58;
    }

    while (v11 - 1 != v27);
LABEL_28:

    if (v25 >> 62)
    {
      a3 = sub_219BF7214();
    }

    else
    {
      a3 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v52;
    a1 = v53;
    v11 = v56;
    if (!a3)
    {
      a3 = v49;
      goto LABEL_52;
    }

    if (a3 < 1)
    {
      goto LABEL_64;
    }

    v32 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v32, v25);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v33 = [v14 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      if (*(v11 + 16))
      {
        v37 = sub_21870F700(v34, v36);
        v39 = v38;

        if (v39)
        {
          v40 = [*(*(v56 + 56) + 8 * v37) mappingType];
          sub_219BF5414();
        }
      }

      else
      {
      }

      v41 = sub_219BF7614();

      v42 = swift_unknownObjectRetain();
      MEMORY[0x21CECC690](v42);
      v44 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v41)
      {
        if (v43 >> 1 <= v44)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v45 = swift_unknownObjectRetain();
        MEMORY[0x21CECC690](v45);
        v11 = v56;
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
          v11 = v56;
        }

        sub_219BF5A54();
      }

      else
      {
        if (v43 >> 1 <= v44)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v11 = v56;
      }

      v32 = (v32 + 1);
      swift_unknownObjectRelease();
    }

    while (a3 != v32);
    a3 = v49;
    v12 = v52;
    a1 = v53;
LABEL_52:

LABEL_53:
    v46 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v46);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v47 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v47);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
      v11 = v56;
    }

    sub_219BF5A54();
    swift_unknownObjectRelease();
    v13 = v55;
  }

  while (v55 != v12);
LABEL_60:

  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
  sub_218ACCA38();

  sub_219BF56E4();

  sub_219BF56E4();

  swift_bridgeObjectRelease_n();
  sub_2191AD930(0, &qword_280EE6EE8, &type metadata for SportsFavorites, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_2191ACF58()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_2194B12D8(MEMORY[0x277D84F90]);
  result = sub_2194B11A4(v0);
  qword_280EC6B50 = v1;
  unk_280EC6B58 = result;
  return result;
}

void sub_2191ACF9C(id *a1@<X0>, void *a2@<X8>)
{
  v2 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v3 = sub_219BF5924();

  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v8 = [v6 asSports];
    v9 = swift_unknownObjectRelease();
    ++v5;
    if (v8)
    {
      MEMORY[0x21CECC690](v9);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v11 = v12;
      v5 = v7;
    }
  }

  *a2 = v11;
}

uint64_t sub_2191AD160(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v35 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_43:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v34 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v5, v2);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v5 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        goto LABEL_38;
      }

      v6 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v8 = [v6 asSports];
    v9 = swift_unknownObjectRelease();
    ++v5;
    if (v8)
    {
      MEMORY[0x21CECC690](v9);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v34 = v35;
      v5 = v7;
    }
  }

  v10 = v34;
  if (v34 >> 62)
  {
    v2 = sub_219BF7214();
    v10 = v34;
    if (v2)
    {
      goto LABEL_17;
    }

LABEL_45:

    sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  v2 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_45;
  }

LABEL_17:
  v11 = 0;
  v32 = v10 & 0xFFFFFFFFFFFFFF8;
  v33 = v10 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v33)
    {
      v13 = MEMORY[0x21CECE0F0](v11, v10);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v11 >= *(v32 + 16))
      {
        goto LABEL_40;
      }

      v13 = *(v10 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }
    }

    v36 = v14;
    v15 = [v13 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v12;
    v20 = sub_21870F700(v16, v18);
    v21 = v12[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_41;
    }

    v24 = v19;
    if (v12[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_219494534();
      if (v24)
      {
LABEL_18:

        *(v12[7] + 8 * v20) = v13;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

LABEL_30:
    v12[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v12[6] + 16 * v20);
    *v27 = v16;
    v27[1] = v18;
    *(v12[7] + 8 * v20) = v13;
    swift_unknownObjectRelease();
    v28 = v12[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_42;
    }

    v12[2] = v30;
LABEL_19:
    ++v11;
    v10 = v34;
    if (v36 == v2)
    {
      goto LABEL_45;
    }
  }

  sub_219484640(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_21870F700(v16, v18);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2191AD54C(uint64_t a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61718;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Error in fetching sports favorites mappings: %{public}@", 55, 2, &dword_2186C1000, v1, v2, v3);

  if (qword_280EC6B48 != -1)
  {
    swift_once();
  }

  sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

void sub_2191AD734(uint64_t a1)
{
  if (!qword_280E8EC60)
  {
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EC60);
    }
  }
}

void sub_2191AD7CC(uint64_t a1)
{
  if (!qword_280E8EC70)
  {
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EC70);
    }
  }
}

void sub_2191AD930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2191ADA04()
{
  result = qword_27CC16F28;
  if (!qword_27CC16F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F28);
  }

  return result;
}

uint64_t sub_2191ADA78()
{
  v1 = v0;
  v2 = sub_219BDE454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_219BDE404();
    (*(v3 + 8))(v5, v2);

    sub_219BDE6F4();

    swift_unknownObjectRelease();
  }

  sub_2191B2F50(v1 + v6, &qword_280EE8C60, MEMORY[0x277D2FFF0]);

  return v1;
}

uint64_t sub_2191ADC4C()
{
  sub_2191ADA78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeCoordinator(uint64_t a1)
{
  result = qword_280ED5688;
  if (!qword_280ED5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2191ADCF8(uint64_t a1)
{
  sub_2191B326C(319, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_2191ADDDC(uint64_t a1)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_219BDE454();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  sub_2191B32D0(v5, v1 + v8);
  swift_endAccess();
  sub_2191B3364(&qword_280ED5698, type metadata accessor for RecipeCoordinator, &unk_219C639B4);
  sub_219BDDF64();
  swift_allocObject();

  sub_219BDDF54();
  sub_219BDE404();
  sub_219BDE6E4();

  return result;
}

double sub_2191ADFE0(uint64_t a1)
{
  v2 = v1;
  v162 = a1;
  v144 = sub_219BDD804();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v145 = (&v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_219BEF9C4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_219BDFFE4();
  v146 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v154 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v5;
  MEMORY[0x28223BE20](v6);
  v159 = &v120 - v7;
  v160 = sub_219BDF104();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v149 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v8;
  MEMORY[0x28223BE20](v9);
  v156 = &v120 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v120 - v13;
  v132 = sub_219BDF194();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v133 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE4914();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v120 - v17;
  v157 = sub_219BDF184();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v148 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v18;
  MEMORY[0x28223BE20](v19);
  v164 = &v120 - v20;
  v126 = sub_219BE1544();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BE1524();
  v153 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v147 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v22;
  MEMORY[0x28223BE20](v23);
  v163 = &v120 - v24;
  v25 = sub_219BDF074();
  v151 = *(v25 - 8);
  v152 = v25;
  MEMORY[0x28223BE20](v25);
  v123 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v150 = &v120 - v28;
  v29 = sub_219BDD634();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v122 = &v120 - v34;
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], v11);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v120 - v36;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v11);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v120 - v39;
  v41 = sub_219BDE454();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v120 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  v166 = v2;
  v46 = v2 + v45;
  v47 = v41;
  v48 = v42;
  sub_2191B2FC0(v46, v40);
  if ((*(v42 + 48))(v40, 1, v47) == 1)
  {
    v49 = v162;
    sub_2191B2F50(v40, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v50 = sub_219BE5434();
    __swift_project_value_buffer(v50, qword_27CCD8B88);
    (*(v30 + 16))(v32, v49, v29);
    v51 = sub_219BE5414();
    v52 = sub_219BF61F4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v167 = v54;
      *v53 = 136315138;
      v55 = sub_219BDD624();
      v57 = v56;
      (*(v30 + 8))(v32, v29);
      v58 = sub_2186D1058(v55, v57, &v167);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_2186C1000, v51, v52, "Failed to start recipe view session=%s, reason='context is nil'", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CECF960](v54, -1, -1);
      MEMORY[0x21CECF960](v53, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v32, v29);
    }
  }

  else
  {
    v60 = *(v42 + 32);
    v121 = v47;
    v60(v44, v40, v47);
    v61 = *(v30 + 16);
    v62 = v162;
    v61(v37, v162, v29);
    (*(v30 + 56))(v37, 0, 1, v29);
    sub_219BDE444();
    v137 = v44;
    sub_2191ADDDC(v44);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v63 = sub_219BE5434();
    __swift_project_value_buffer(v63, qword_27CCD8B88);
    v64 = v122;
    v61(v122, v62, v29);
    v65 = sub_219BE5414();
    v66 = sub_219BF6214();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v167 = v68;
      *v67 = 136315138;
      v69 = sub_219BDD624();
      v71 = v70;
      (*(v30 + 8))(v64, v29);
      v72 = sub_2186D1058(v69, v71, &v167);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_2186C1000, v65, v66, "Starting view session=%s...", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x21CECF960](v68, -1, -1);
      MEMORY[0x21CECF960](v67, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v64, v29);
    }

    v73 = v128;
    v74 = v150;
    sub_2191AF47C(v166, v150);
    sub_219BDD624();
    (*(v124 + 104))(v125, *MEMORY[0x277D2F3D0], v126);
    (*(v151 + 16))(v123, v74, v152);
    sub_219BE1514();
    v75 = v127;
    sub_219BDE424();
    v76 = v129;
    v77 = v130;
    (*(v129 + 32))(v73, v75, v130);
    v78 = (*(v76 + 88))(v73, v77);
    v79 = v78 == *MEMORY[0x277D353A0];
    v120 = v48;
    if (v79)
    {
      (*(v76 + 96))(v73, v77);
      (*(v131 + 104))(v133, *MEMORY[0x277D2D930], v132);
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else if (v78 == *MEMORY[0x277D353B0])
    {
      (*(v76 + 8))(v73, v77);
      (*(v131 + 104))(v133, *MEMORY[0x277D2D938], v132);
    }

    else
    {
      v80 = *MEMORY[0x277D353A8];
      v81 = v78;
      (*(v131 + 104))(v133, *MEMORY[0x277D2D940], v132);
      if (v81 != v80)
      {
        (*(v76 + 8))(v73, v77);
      }
    }

    v82 = *MEMORY[0x277D2EB88];
    v83 = sub_219BE0BC4();
    v84 = *(v83 - 8);
    v85 = v135;
    (*(v84 + 104))(v135, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    sub_219BDF174();
    v86 = v166;
    v87 = sub_219BDE414();
    v88 = [v87 sourceChannel];

    v89 = v156;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v90 = sub_219BDE414();
    v91 = v140;
    v92 = v138;
    v93 = v141;
    (*(v140 + 104))(v138, *MEMORY[0x277D32840], v141);
    v94 = v159;
    sub_219BE02B4();

    (*(v91 + 8))(v92, v93);
    v162 = *(v86 + 16);
    v141 = sub_219BDE414();
    v95 = v153;
    (*(v153 + 16))(v147, v163, v165);
    v96 = v158;
    (*(v158 + 16))(v149, v89, v160);
    v97 = v155;
    (*(v155 + 16))(v148, v164, v157);
    v98 = v146;
    (*(v146 + 16))(v154, v94, v161);
    v99 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v100 = (v134 + *(v96 + 80) + v99) & ~*(v96 + 80);
    v101 = (v139 + *(v97 + 80) + v100) & ~*(v97 + 80);
    v102 = (v136 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = (*(v98 + 80) + v102 + 8) & ~*(v98 + 80);
    v104 = swift_allocObject();
    (*(v95 + 32))(v104 + v99, v147, v165);
    v105 = *(v96 + 32);
    v106 = v160;
    v105(v104 + v100, v149, v160);
    v107 = *(v97 + 32);
    v108 = v157;
    v107(v104 + v101, v148, v157);
    v109 = v141;
    *(v104 + v102) = v141;
    v110 = v98;
    v111 = v161;
    (*(v98 + 32))(v104 + v103, v154, v161);
    v112 = v109;
    sub_219BDD154();

    v113 = v137;
    v114 = sub_219BDE414();
    v115 = [v114 identifier];

    sub_219BF5414();
    sub_2191B3054(0);
    v116 = sub_219BDE414();
    v117 = v145;
    *v145 = v116;
    sub_219BDE3F4();
    (*(v143 + 104))(v117, *MEMORY[0x277D2FAF8], v144);
    sub_219BDE674();
    swift_allocObject();
    v118 = sub_219BDE614();
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    v167 = (v119 | 0x7000000000000004);

    sub_219BE7884();

    (*(v110 + 8))(v159, v111);
    (*(v158 + 8))(v156, v106);
    (*(v155 + 8))(v164, v108);
    (*(v153 + 8))(v163, v165);
    (*(v151 + 8))(v150, v152);
    (*(v120 + 8))(v113, v121);
  }

  return result;
}

uint64_t sub_2191AF47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BDCD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  sub_219BDD184();
  sub_2191B326C(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  v8 = v7;
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v37 = v8;
  v35 = v12 + 2 * v11;
  v13 = swift_allocObject();
  v34 = xmmword_219C09EC0;
  *(v13 + 16) = xmmword_219C09EC0;
  v36 = v12;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  (v15)(v13 + v12, *MEMORY[0x277CEAE38], v9);
  v41 = v11;
  v16 = (v14 + v11);
  *v16 = 0x657069636572;
  v16[1] = 0xE600000000000000;
  v17 = *MEMORY[0x277CEAE50];
  v39 = v9;
  v40 = v15;
  v15();
  LOBYTE(v14) = sub_219BDCD14();

  v18 = *(v4 + 8);
  v42 = v3;
  v18(v6, v3);
  if (v14)
  {
    v19 = MEMORY[0x277D2D7F0];
LABEL_5:
    v23 = *v19;
    v24 = sub_219BDF074();
    return (*(*(v24 - 8) + 104))(v43, v23, v24);
  }

  v33[3] = v17;
  sub_219BDD184();
  v20 = v36;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  (v40)(v21 + v20, *MEMORY[0x277CEAE58], v39);
  v22 = sub_219BDCD14();

  v18(v6, v42);
  if (v22)
  {
    v19 = MEMORY[0x277D2D858];
    goto LABEL_5;
  }

  sub_219BDD184();
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  v27 = (v26 + v20);
  *v27 = 0x657069636572;
  v27[1] = 0xE600000000000000;
  v28 = v26 + v20;
  v29 = v40;
  (v40)(v28, *MEMORY[0x277CEAE48], v39);
  v30 = (v27 + v41);
  *v30 = 0x657069636572;
  v30[1] = 0xE600000000000000;
  v29();
  LOBYTE(v27) = sub_219BDCD14();

  v18(v6, v42);
  v31 = sub_219BDF074();
  if (v27)
  {
    v32 = MEMORY[0x277D2D848];
  }

  else
  {
    v32 = MEMORY[0x277D2D850];
  }

  return (*(*(v31 - 8) + 104))(v43, *v32, v31);
}

uint64_t sub_2191AF898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v14[1] = a6;
  v14[0] = sub_219BDEFE4();
  v7 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1524();
  sub_2191B3364(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDCCC4();
  sub_219BDF104();
  sub_2191B3364(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  sub_219BDCCC4();
  sub_219BDF184();
  sub_2191B3364(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
  sub_219BDCCC4();
  v10 = [a5 identifier];
  sub_219BF5414();

  [a5 isPaid];
  v11 = [a5 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v12 = v14[0];
  sub_219BDCCC4();
  (*(v7 + 8))(v9, v12);
  sub_219BDFFE4();
  sub_2191B3364(&unk_280EE84E0, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  sub_219BDCCC4();
  sub_219BDF964();
  sub_2191B3364(&qword_27CC16F48, MEMORY[0x277D2DEB0], MEMORY[0x277D2DEA8]);
  return sub_219BDCCD4();
}

double sub_2191AFC68(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_219BDD804();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD634();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v59 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v11);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_219BDE454();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  v23 = &v2[v22];
  v24 = v18;
  v25 = v19;
  sub_2191B2FC0(v23, v17);
  if ((*(v19 + 48))(v17, 1, v24) == 1)
  {
    v26 = v66;
    v27 = v6;
    sub_2191B2F50(v17, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_27CCD8B88);
    v29 = v62;
    (*(v7 + 16))(v62, v26, v6);
    v30 = sub_219BE5414();
    v31 = sub_219BF61F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136315138;
      v34 = sub_219BDD624();
      v36 = v35;
      (*(v7 + 8))(v29, v27);
      v37 = sub_2186D1058(v34, v36, &v67);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2186C1000, v30, v31, "Failed to cancel recipe view session=%s, reason='context is nil'", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x21CECF960](v33, -1, -1);
      MEMORY[0x21CECF960](v32, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v29, v6);
    }
  }

  else
  {
    v61 = v5;
    v62 = v2;
    v39 = *(v19 + 32);
    v60 = v24;
    v39(v21, v17, v24);
    v40 = *(v7 + 16);
    v41 = v66;
    v40(v14, v66, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    sub_219BDE444();
    v59 = v21;
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v42 = sub_219BE5434();
    __swift_project_value_buffer(v42, qword_27CCD8B88);
    v43 = v63;
    v40(v63, v41, v6);
    v44 = sub_219BE5414();
    v45 = sub_219BF6214();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315138;
      v48 = sub_219BDD624();
      v50 = v49;
      (*(v7 + 8))(v43, v6);
      v51 = sub_2186D1058(v48, v50, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_2186C1000, v44, v45, "Canceling recipe view session=%s...", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x21CECF960](v47, -1, -1);
      MEMORY[0x21CECF960](v46, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v43, v6);
    }

    v52 = v59;
    v53 = sub_219BDE414();
    v54 = [v53 identifier];

    sub_219BF5414();
    sub_2191B3054(0);
    v55 = sub_219BDE414();
    v56 = v61;
    *v61 = v55;
    sub_219BDE3F4();
    (*(v64 + 104))(v56, *MEMORY[0x277D2FAF8], v65);
    sub_219BDE674();
    swift_allocObject();
    v57 = sub_219BDE614();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    v67 = (v58 | 0x7000000000000004);

    sub_219BE7864();

    (*(v25 + 8))(v52, v60);
  }

  return result;
}

double sub_2191B0450()
{
  v1 = v0;
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_219BDE454();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  sub_2191B2FC0(v1 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2191B2F50(v12, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_27CCD8B88);
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v23 = sub_219BDD634();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    sub_219BDE444();
    v24 = sub_219BDE414();
    *(swift_allocObject() + 16) = v24;
    v25 = v24;
    v32 = v2;
    v26 = v25;
    sub_219BDD154();

    v27 = sub_219BDE414();
    v28 = [v27 identifier];

    sub_219BF5414();
    sub_2191B3054(0);
    *v5 = sub_219BDE414();
    sub_219BDDBE4();
    (*(v3 + 104))(v5, *MEMORY[0x277D2FAF8], v32);
    sub_219BDE674();
    swift_allocObject();
    v29 = sub_219BDE614();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v33 = v30 | 0x7000000000000004;

    sub_219BE7864();

    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_2191B09A0(int a1, id a2)
{
  v2 = [a2 eventAggregationPersonalizationData];
  if (v2)
  {
    v3 = v2;
    sub_219BDBA04();
  }

  sub_219BDF964();
  v5[3] = sub_219BE04B4();
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_219BE04A4();
  sub_2191B3364(&qword_27CC16F48, MEMORY[0x277D2DEB0], MEMORY[0x277D2DEA8]);
  sub_219BDCCE4();
  return sub_218806FD0(v5);
}

uint64_t sub_2191B0A9C(uint64_t a1, const char *a2)
{
  v53 = a2;
  v3 = v2;
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_219BDD634();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_27CCD8B88);
  v51 = *(v12 + 16);
  v51(v16, a1, v11);

  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  v52 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v21 = qword_280ED5000;
  if (v20)
  {
    v45 = v10;
    v47 = v7;
    v48 = a1;
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v22 = 136315394;
    v23 = sub_219BDD624();
    v25 = v24;
    v50 = v12;
    v26 = v16;
    v27 = *(v12 + 8);
    v27(v26, v11);
    v28 = sub_2186D1058(v23, v25, v54);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
    swift_beginAccess();
    v30 = sub_219BDE454();
    if (!(*(*(v30 - 8) + 48))(v3 + v29, 1, v30))
    {
      v31 = v45;
      sub_219BDE434();
      if (!(*(v50 + 48))(v31, 1, v11))
      {
        v41 = v49;
        v51(v49, v31, v11);
        sub_2191B2F50(v31, &qword_27CC16F40, MEMORY[0x277D2FA28]);
        swift_endAccess();
        v32 = sub_219BDD624();
        v42 = v27;
        v33 = v43;
        v42(v41, v11);
        goto LABEL_8;
      }

      sub_2191B2F50(v31, &qword_27CC16F40, MEMORY[0x277D2FA28]);
    }

    swift_endAccess();
    v32 = 0;
    v33 = 0;
LABEL_8:
    v54[1] = v32;
    v54[2] = v33;
    sub_2186DEEA0(0, &qword_280E8F860, MEMORY[0x277D837D0]);
    v34 = sub_219BF5484();
    v36 = sub_2186D1058(v34, v35, v54);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_2186C1000, v18, v52, v53, v22, 0x16u);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v37, -1, -1);
    MEMORY[0x21CECF960](v22, -1, -1);

    v7 = v47;
    a1 = v48;
    v12 = v50;
    v21 = qword_280ED5000;
    goto LABEL_10;
  }

  (*(v12 + 8))(v16, v11);
LABEL_10:
  v38 = v21[212];
  swift_beginAccess();
  v39 = sub_219BDE454();
  if (!(*(*(v39 - 8) + 48))(v3 + v38, 1, v39))
  {
    v51(v7, a1, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_219BDE444();
  }

  return swift_endAccess();
}

uint64_t sub_2191B100C(void *a1)
{
  v2 = sub_219BDF104();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDEFE4();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v85 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDF774();
  v6 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF074();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BE1544();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BE1524();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BDBD64();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD634();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v70 = &v67 - v18;
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  v20 = __swift_project_value_buffer(v19, qword_27CCD8B88);
  v21 = a1;
  v71 = v20;
  v22 = sub_219BE5414();
  v23 = sub_219BF6214();

  v24 = os_log_type_enabled(v22, v23);
  v91 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v69 = v13;
    v28 = v27;
    v93[0] = v27;
    *v26 = 136315138;
    v29 = [v21 identifier];
    v68 = v14;
    v30 = v29;
    v31 = v8;
    v32 = sub_219BF5414();
    v34 = v33;

    v35 = v32;
    v8 = v31;
    v36 = sub_2186D1058(v35, v34, v93);
    v21 = v91;

    *(v26 + 4) = v36;
    v14 = v68;
    _os_log_impl(&dword_2186C1000, v22, v23, "Pushing view data for recipe=%s...", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v37 = v28;
    v13 = v69;
    MEMORY[0x21CECF960](v37, -1, -1);
    v38 = v26;
    v16 = v67;
    MEMORY[0x21CECF960](v38, -1, -1);
  }

  v39 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  v40 = v92;
  swift_beginAccess();
  v41 = sub_219BDE454();
  if (!(*(*(v41 - 8) + 48))(v40 + v39, 1, v41))
  {
    v42 = v70;
    sub_219BDE434();
    if (!(*(v14 + 48))(v42, 1, v13))
    {
      (*(v14 + 16))(v16, v42, v13);
      sub_2191B2F50(v42, &qword_27CC16F40, MEMORY[0x277D2FA28]);
      swift_endAccess();
      sub_219BDD624();
      (*(v14 + 8))(v16, v13);
      goto LABEL_11;
    }

    sub_2191B2F50(v42, &qword_27CC16F40, MEMORY[0x277D2FA28]);
  }

  swift_endAccess();
  v43 = v21;
  v44 = sub_219BE5414();
  v45 = sub_219BF61F4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v93[0] = v47;
    *v46 = 136315138;
    v48 = [v43 identifier];
    v49 = sub_219BF5414();
    v51 = v50;

    v52 = sub_2186D1058(v49, v51, v93);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_2186C1000, v44, v45, "Failed to obtain current view session id when pushing data, for recipe=%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x21CECF960](v47, -1, -1);
    MEMORY[0x21CECF960](v46, -1, -1);
  }

  v53 = v72;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v73 + 8))(v53, v74);
LABEL_11:

  (*(v76 + 104))(v77, *MEMORY[0x277D2F3D0], v78);
  (*(v82 + 104))(v80, *MEMORY[0x277D2D800], v8);
  v54 = v79;
  sub_219BE1514();
  sub_2191B3364(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v55 = v83;
  sub_219BDD1F4();
  (*(v81 + 8))(v54, v55);
  v56 = v84;
  sub_219BDF764();
  sub_2191B3364(&qword_27CC0EC58, MEMORY[0x277D2DD38], MEMORY[0x277D2DD30]);
  v57 = v75;
  sub_219BDD1F4();
  (*(v6 + 8))(v56, v57);
  v58 = v91;
  v59 = [v91 identifier];
  sub_219BF5414();

  [v58 isPaid];
  v60 = [v58 totalTime];
  sub_219BF5414();

  v61 = v85;
  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v62 = v87;
  sub_219BDD1F4();
  (*(v86 + 8))(v61, v62);
  v63 = [v58 sourceChannel];
  v64 = v88;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  sub_2191B3364(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v65 = v90;
  sub_219BDD1F4();
  return (*(v89 + 8))(v64, v65);
}

uint64_t sub_2191B1C1C(void *a1)
{
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B88);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = [v3 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Beginning to track add to grocery list event for recipe=%{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  sub_219BE0CB4();
  sub_2191B3364(&qword_27CC16F38, MEMORY[0x277D2EC48], MEMORY[0x277D2EC40]);
  return sub_219BDD214();
}

uint64_t sub_2191B1DFC(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v5 = sub_219BDEFE4();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x28223BE20](v5);
  v89 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDAEC4();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BDF014();
  v85 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v72 - v10;
  v11 = sub_219BDF004();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BDAED4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  *&v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1044();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v77 = &v72 - v19;
  v20 = sub_219BE0D64();
  v79 = *(v20 - 8);
  v80 = v20;
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v22 = sub_219BE5434();
  __swift_project_value_buffer(v22, qword_27CCD8B88);
  v23 = a1;
  v24 = sub_219BE5414();
  v25 = sub_219BF6214();

  v26 = os_log_type_enabled(v24, v25);
  v81 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v73 = v14;
    v28 = v27;
    v72 = swift_slowAlloc();
    v96 = v72;
    *v28 = 136446210;
    v29 = [v23 identifier];
    v30 = a2;
    v31 = sub_219BF5414();
    v33 = v32;

    v34 = v31;
    a2 = v30;
    v35 = sub_2186D1058(v34, v33, &v96);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2186C1000, v24, v25, "Pushing add to grocery list event for recipe=%{public}s...", v28, 0xCu);
    v36 = v72;
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x21CECF960](v36, -1, -1);
    v37 = v28;
    v14 = v73;
    MEMORY[0x21CECF960](v37, -1, -1);
  }

  v38 = v76;
  v39 = v75;
  v40 = v74;
  (*(v75 + 16))(v74, a2, v76);
  v41 = (*(v39 + 88))(v40, v38);
  if (v41 == *MEMORY[0x277CFCD60])
  {
    v42 = MEMORY[0x277D2EE70];
LABEL_13:
    v43 = *v42;
    v44 = *(v15 + 104);
LABEL_14:
    v44(v17, v43, v14);
    goto LABEL_15;
  }

  if (v41 == *MEMORY[0x277CFCD68])
  {
    v42 = MEMORY[0x277D2EE78];
    goto LABEL_13;
  }

  if (v41 == *MEMORY[0x277CFCD58])
  {
    v42 = MEMORY[0x277D2EE68];
    goto LABEL_13;
  }

  if (v41 == *MEMORY[0x277CFCD50])
  {
    v42 = MEMORY[0x277D2EE88];
    goto LABEL_13;
  }

  v44 = *(v15 + 104);
  if (v41 == *MEMORY[0x277CFCD70])
  {
    v43 = *MEMORY[0x277D2EE80];
    goto LABEL_14;
  }

  v44(v17, *MEMORY[0x277D2EE90], v14);
  (*(v39 + 8))(v40, v38);
LABEL_15:
  (*(v15 + 32))(v77, v17, v14);
  v45 = v78;
  sub_219BE0D54();
  sub_2191B326C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v47 = v46;
  v48 = sub_219BDCD44();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v75 = *(v49 + 72);
  v76 = v47;
  v51 = swift_allocObject();
  v74 = xmmword_219C09BA0;
  *(v51 + 16) = xmmword_219C09BA0;
  v52 = *MEMORY[0x277CEAD18];
  v53 = *(v49 + 104);
  v53(v51 + v50, v52, v48);
  sub_2191B3364(&qword_27CC16F30, MEMORY[0x277D2ECB0], MEMORY[0x277D2ECA8]);
  v77 = "x-apple-reminderkit://";
  v54 = v80;
  sub_219BDD1F4();

  (*(v79 + 8))(v45, v54);
  v56 = v93;
  v55 = v94;
  v57 = v92;
  (*(v94 + 16))(v93, v82, v92);
  v58 = (*(v55 + 88))(v56, v57);
  if (v58 == *MEMORY[0x277CFCD48])
  {
    v59 = *MEMORY[0x277D2D7B8];
    v61 = v84;
    v60 = v85;
LABEL_19:
    v62 = *(v60 + 104);
    goto LABEL_20;
  }

  v61 = v84;
  v60 = v85;
  if (v58 == *MEMORY[0x277CFCD40])
  {
    v59 = *MEMORY[0x277D2D7C0];
    goto LABEL_19;
  }

  v62 = *(v85 + 104);
  if (v58 != *MEMORY[0x277CFCD38])
  {
    v62(v84, *MEMORY[0x277D2D7C8], v95);
    (*(v94 + 8))(v93, v92);
    goto LABEL_21;
  }

  v59 = *MEMORY[0x277D2D7B0];
LABEL_20:
  v62(v61, v59, v95);
LABEL_21:
  (*(v60 + 32))(v83, v61, v95);
  v63 = v86;
  sub_219BDEFF4();
  v64 = swift_allocObject();
  *(v64 + 16) = v74;
  v53(v64 + v50, v52, v48);
  sub_2191B3364(&qword_27CC152C8, MEMORY[0x277D2D7A8], MEMORY[0x277D2D7A0]);
  v65 = v88;
  sub_219BDD1F4();

  (*(v87 + 8))(v63, v65);
  v66 = v81;
  v67 = [v81 identifier];
  sub_219BF5414();

  [v66 isPaid];
  v68 = [v66 totalTime];
  sub_219BF5414();

  v69 = v89;
  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v70 = v91;
  sub_219BDD1F4();
  (*(v90 + 8))(v69, v70);
  return sub_219BDD154();
}

uint64_t sub_2191B29B0()
{
  sub_219BE0CB4();
  sub_2191B3364(&qword_27CC16F38, MEMORY[0x277D2EC48], MEMORY[0x277D2EC40]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

double sub_2191B2A48(void *a1)
{
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B88);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = [v3 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Pushing open grocery list event for recipe=%{public}s)...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000016;
  *(v13 + 24) = 0x8000000219D0F050;
  sub_219BDD154();

  return result;
}

uint64_t sub_2191B2C38(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE1464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1454();
  sub_2191B326C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_2191B3364(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  sub_219BDCCC4();

  (*(v3 + 8))(v5, v2);
  sub_219BDF334();
  sub_2191B3364(&qword_280EE87E8, MEMORY[0x277D2DA10], MEMORY[0x277D2DA08]);
  memset(v11, 0, sizeof(v11));
  sub_219BDCCE4();
  return sub_218806FD0(v11);
}

uint64_t sub_2191B2F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2191B326C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2191B2FC0(uint64_t a1, uint64_t a2)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2191B3054(uint64_t a1)
{
  if (!qword_27CC0CD20)
  {
    sub_218799788();
    sub_219BDDBF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0CD20);
    }
  }
}

uint64_t sub_2191B30C8(uint64_t a1)
{
  v3 = *(sub_219BE1524() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDF104() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDF184() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_219BDFFE4() - 8);
  v13 = *(v1 + v11);
  v14 = v1 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_2191AF898(a1, v1 + v4, v1 + v7, v1 + v10, v13, v14);
}

void sub_2191B326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2191B32D0(uint64_t a1, uint64_t a2)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191B3364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2191B33E8(uint64_t a1, uint64_t a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  sub_21906D640(&v47);
  if (*(a1 + 32) == 2)
  {

    v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v14 setAlignment_];
    sub_21899E550(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C0B8C0;
    v16 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v17 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
    v18 = v16;
    *(inited + 40) = sub_219BF6BD4();
    v19 = *MEMORY[0x277D740C0];
    *(inited + 64) = v17;
    *(inited + 72) = v19;
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 secondaryLabelColor];
    v23 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
    *(inited + 80) = v22;
    v24 = *MEMORY[0x277D74118];
    *(inited + 104) = v23;
    *(inited + 112) = v24;
    *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
    *(inited + 120) = v14;
    v25 = v24;
    v26 = v14;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588(0);
    swift_arrayDestroy();
    v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v28 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v29 = sub_219BF5204();

    v30 = [v27 initWithString:v28 attributes:v29];

    v52[0] = v47;
    sub_2189AD3D8(v52);
    v51 = v48;
    sub_2189AD3D8(&v51);

    v53.origin.x = a4;
    v53.origin.y = a5;
    v53.size.width = a6;
    v53.size.height = a7;
    MinX = CGRectGetMinX(v53);
    v54.size.height = a7;
    v45 = a7;
    v32 = a3 - MinX;
    v54.origin.x = a4;
    v54.origin.y = a5;
    v54.size.width = a6;
    v33 = v32 - CGRectGetWidth(v54);
    v46 = a6;
    v34 = *(a2 + *(type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions(0) + 20) + 24);
    [v30 boundingRectWithSize:3 options:0 context:{v33 - v34, 1.79769313e308}];
    v36 = v35;
    y = v55.origin.y;
    width = v55.size.width;
    v39 = a3;
    height = v55.size.height;
    v41 = v39 - v34;
    v55.origin.x = v36;
    v42 = v41 - CGRectGetWidth(v55);
    v56.origin.x = a4;
    v56.origin.y = a5;
    v56.size.height = v45;
    v56.size.width = v46;
    MinY = CGRectGetMinY(v56);
    v57.origin.x = v36;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v44 = ceil(CGRectGetWidth(v57));
    v58.origin.x = v36;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59.size.height = ceil(CGRectGetHeight(v58));
    v59.origin.x = v42;
    v59.origin.y = MinY;
    v59.size.width = v44;
    CGRectIntegral(v59);
  }

  else
  {
    v52[0] = v47;
    sub_2189AD3D8(v52);
    v51 = v48;
    sub_2189AD3D8(&v51);
    v50 = v49;
    sub_2189AD3D8(&v50);
  }
}

double sub_2191B3814@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21906D640(&v82);
  sub_219BE8154();
  v6 = v5;
  sub_219BE8014();
  sub_219BF6034();
  v8 = v6 - v7;
  rect_8 = v6 - v7;
  v75 = sub_219BE8034();
  v9 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v9 setAlignment_];
  [v75 horizontalSizeClass];
  v10 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v11 = sub_219BF6BD4();
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 40) = v11;
  v14 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v14;
  v15 = objc_opt_self();
  v16 = v13;
  v17 = v11;
  v18 = v14;
  v19 = [v15 labelColor];
  v20 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D74118];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 120) = v9;
  v22 = v21;
  v23 = v9;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v26 = sub_219BF5204();

  v27 = [v24 initWithString:v25 attributes:v26];

  v86 = v83;
  sub_2189AD3D8(&v86);
  v85 = v84;
  sub_2189AD3D8(&v85);
  [v27 boundingRectWithSize:3 options:0 context:{v8, 1.79769313e308}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_219BE8014();
  v37 = v36;
  v38 = type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions(0);
  v39 = *(a2 + v38[6]);
  v87.origin.x = v29;
  v87.origin.y = v31;
  v87.size.width = v33;
  v87.size.height = v35;
  Height = CGRectGetHeight(v87);
  v41 = a2 + v38[5];
  v42 = *(v41 + 16);
  v43 = Height + v42;
  if (v39 <= v43)
  {
    v39 = v43;
  }

  v44 = sub_219BE8034();
  [v44 horizontalSizeClass];
  v45 = sub_219BF6BD4();

  v46 = *(v41 + 8);
  v79 = 0;
  rect = v37;
  v88.origin.y = 0.0;
  v88.origin.x = v37;
  v88.size.width = rect_8;
  v76 = v39;
  v88.size.height = v39;
  v73 = v42;
  v47 = CGRectGetHeight(v88) - v42;
  v89.origin.x = v29;
  v89.origin.y = v31;
  v89.size.width = v33;
  v89.size.height = v35;
  v48 = v47 - CGRectGetHeight(v89);
  [v45 descender];
  v90.origin.y = v48 - v49;
  v90.origin.x = v46;
  v90.size.width = v33;
  v90.size.height = v35;
  v91 = CGRectIntegral(v90);
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  v53 = v91.size.height;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (((1 << *(a1 + 32)) & 0xB) != 0)
  {
    v57 = *(a2 + v38[7]);
    v58 = rect_8 - *(a2 + v38[8]) - v57;
    v59 = rect;
    v60 = rect_8;
    v61 = v76;
    v92.origin.y = CGRectGetHeight(*(&v54 - 1)) - v73 - v57 + 4.0;
    v92.origin.x = v58;
    v92.size.width = v57;
    v92.size.height = v57;
    *(&v54 - 1) = CGRectIntegral(v92);
    v79 = v62;
  }

  v71 = v56;
  v72 = v55;
  v74 = v54;
  sub_2191B33E8(a1, a2, rect_8, x, y, width, v53);
  v64 = v63;
  v78 = v65;
  v67 = v66;
  v70 = v68;

  result = *(a2 + v38[7]);
  *a3 = rect;
  *(a3 + 8) = 0;
  *(a3 + 16) = rect_8;
  *(a3 + 24) = v76;
  *(a3 + 32) = x;
  *(a3 + 40) = y;
  *(a3 + 48) = width;
  *(a3 + 56) = v53;
  *(a3 + 64) = v79;
  *(a3 + 72) = v74;
  *(a3 + 80) = v72;
  *(a3 + 88) = v71;
  *(a3 + 96) = v64;
  *(a3 + 104) = v78;
  *(a3 + 112) = v67;
  *(a3 + 120) = v70;
  *(a3 + 128) = result;
  return result;
}

uint64_t sub_2191B3D64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDBF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, a1, v11);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    swift_getObjectType();
    sub_219BF6884();
    swift_unknownObjectRelease();
    v15 = sub_219BDBD34();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) != 1)
    {
      sub_219BDBF34();
      sub_219BDBE64();
      (*(v7 + 8))(v9, v6);
      (*(v16 + 8))(v13, v15);
      (*(v16 + 56))(a3, 0, 1, v15);
      goto LABEL_10;
    }

    sub_2189DD39C(v13);
LABEL_8:
    v17 = sub_219BDBD34();
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
LABEL_10:
    sub_2191B6B18(0);
    *(a3 + *(v18 + 48)) = a2;
    type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t sub_2191B4058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  swift_getObjectType();
  sub_219BF6884();
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2189DD39C(v10);
    v13 = 1;
  }

  else
  {
    sub_219BDBF34();
    sub_219BDBE64();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v10, v11);
    v13 = 0;
  }

  (*(v12 + 56))(a2, v13, 1, v11);
  sub_2191B6C98(0);
  *(a2 + *(v14 + 48)) = a1;
  type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  swift_storeEnumTagMultiPayload();
  return swift_unknownObjectRetain();
}

void sub_2191B42A4(void **a1, void **a2)
{
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v56 - v8;
  v10 = sub_219BDBD34();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v58 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v56 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = [v15 videoType];
  v59 = v6;
  if (v17)
  {
    v18 = v17;
    v19 = sub_219BF5414();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v57 = v14;
  v56[1] = swift_getObjectType();
  v22 = v16;
  v23 = [v16 videoType];
  if (!v23)
  {
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v24 = v23;
  v25 = sub_219BF5414();
  v27 = v26;

  v16 = v22;
  if (!v21)
  {
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (!v27)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == v25 && v21 == v27)
  {

LABEL_25:
    sub_219BF6884();
    v36 = v60;
    v37 = *(v60 + 48);
    if (v37(v9, 1, v10) == 1)
    {
      v38 = v57;
      sub_219BDBBB4();
      v39 = v37(v9, 1, v10);
      v40 = v59;
      if (v39 != 1)
      {
        sub_2189DD39C(v9);
      }
    }

    else
    {
      v38 = v57;
      (*(v36 + 32))(v57, v9, v10);
      v40 = v59;
    }

    sub_219BF6884();
    if (v37(v40, 1, v10) == 1)
    {
      v41 = v58;
      sub_219BDBBB4();
      if (v37(v40, 1, v10) != 1)
      {
        sub_2189DD39C(v40);
      }
    }

    else
    {
      v41 = v58;
      (*(v36 + 32))(v58, v40, v10);
    }

    sub_219BDBC14();
    v42 = *(v36 + 8);
    v42(v41, v10);
    v42(v38, v10);
    return;
  }

  v35 = sub_219BF78F4();

  if (v35)
  {
    goto LABEL_25;
  }

LABEL_14:
  v28 = [v15 videoType];
  if (v28)
  {
    v29 = v28;
    v30 = sub_219BF5414();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = sub_218E277C4(v30, v32);
  if (v34 > 1)
  {
    if (v34 == 3 || v34 == 2)
    {
      goto LABEL_38;
    }

LABEL_34:
    v43 = v33;
    v44 = v34;
    v45 = MEMORY[0x21CECC3E0]();
    sub_2191B7954(v43, v44);
    if (v45 < 0 && __OFSUB__(0, v45))
    {
      __break(1u);
      goto LABEL_53;
    }

    goto LABEL_38;
  }

  if (!v34)
  {
    sub_2191B7954(v33, 0);
    goto LABEL_38;
  }

  if (v34 != 1)
  {
    goto LABEL_34;
  }

LABEL_38:
  v46 = [v16 videoType];
  if (v46)
  {
    v47 = v46;
    v48 = sub_219BF5414();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = sub_218E277C4(v48, v50);
  if (v52 > 1)
  {
    if (v52 == 3 || v52 == 2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!v52)
  {
    sub_2191B7954(v51, 0);
    return;
  }

  if (v52 != 1)
  {
LABEL_47:
    v53 = v51;
    v54 = v52;
    v55 = MEMORY[0x21CECC3E0]();
    sub_2191B7954(v53, v54);
    if ((v55 & 0x8000000000000000) == 0 || !__OFSUB__(0, v55))
    {
      return;
    }

LABEL_53:
    __break(1u);
  }
}

uint64_t sub_2191B4878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_219BDBF94();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  sub_2191B6AB4(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6C98(0);
    }

    else
    {
      sub_2191B6B18(0);
    }

    v28 = v41;
    swift_unknownObjectRelease();
    sub_218A5DD60(v8, v23);
    sub_218A5DD60(v23, v11);
    v29 = sub_219BDBD34();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v11, 1, v29) != 1)
    {
      return (*(v30 + 32))(v28, v11, v29);
    }

    sub_219BDBBB4();
    result = (v31)(v11, 1, v29);
    if (result == 1)
    {
      return result;
    }

    v33 = v11;
    return sub_2189DD39C(v33);
  }

  v39 = *v8;
  v25 = [v39 sportsEventStartTime];
  if (v25)
  {
    v26 = v25;
    sub_219BDBCA4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v34 = sub_219BDBD34();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v36(v14, v27, 1, v34);
  sub_218A5DD60(v14, v17);
  v37 = *(v35 + 48);
  if (v37(v17, 1, v34) == 1)
  {
    sub_2189DD39C(v17);
    v36(v20, 1, 1, v34);
    sub_219BDBBB4();
    swift_unknownObjectRelease();
    result = v37(v20, 1, v34);
    if (result == 1)
    {
      return result;
    }

    v33 = v20;
    return sub_2189DD39C(v33);
  }

  sub_219BDBF34();
  sub_219BDBE64();
  swift_unknownObjectRelease();
  (*(v40 + 8))(v5, v3);
  (*(v35 + 8))(v17, v34);
  v36(v20, 0, 1, v34);
  return (*(v35 + 32))(v41, v20, v34);
}

uint64_t sub_2191B4D54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v61 = v11;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6C98(0);
    }

    else
    {
      sub_2191B6B18(0);
    }

    swift_unknownObjectRelease();
    sub_2189DD39C(v22);
    v30 = *(v1 + *(type metadata accessor for SportsHighlights(0) + 20));
    if (v30 >> 62)
    {
      goto LABEL_39;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v32 = v54;
    v52 = a1;
    if (v31)
    {
      v33 = 0;
      v59 = v30 & 0xFFFFFFFFFFFFFF8;
      v60 = v30 & 0xC000000000000001;
      v58 = (v55 + 56);
      v34 = (v55 + 48);
      v56 = (v55 + 32);
      v35 = MEMORY[0x277D84F90];
      v57 = v31;
      while (1)
      {
        if (v60)
        {
          v36 = MEMORY[0x21CECE0F0](v33, v30);
          v37 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v33 >= *(v59 + 16))
          {
            goto LABEL_38;
          }

          v36 = *(v30 + 8 * v33 + 32);
          swift_unknownObjectRetain();
          v37 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v31 = sub_219BF7214();
            goto LABEL_9;
          }
        }

        v38 = [v36 publishDate];
        if (v38)
        {
          a1 = v61;
          v39 = v38;
          sub_219BDBCA4();

          v40 = 0;
        }

        else
        {
          v40 = 1;
          a1 = v61;
        }

        swift_unknownObjectRelease();
        (*v58)(a1, v40, 1, v32);
        sub_218A5DD60(a1, v14);
        if ((*v34)(v14, 1, v32) == 1)
        {
          sub_2189DD39C(v14);
        }

        else
        {
          v41 = *v56;
          (*v56)(v62, v14, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_2191FA298(0, v35[2] + 1, 1, v35);
          }

          v43 = v35[2];
          v42 = v35[3];
          if (v43 >= v42 >> 1)
          {
            v35 = sub_2191FA298((v42 > 1), v43 + 1, 1, v35);
          }

          v35[2] = v43 + 1;
          v44 = v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v43;
          v32 = v54;
          v41(v44, v62, v54);
        }

        ++v33;
        if (v37 == v57)
        {
          goto LABEL_29;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_29:
    v45 = v53;
    sub_2191B537C(v35, v53);

    v46 = v55;
    v47 = *(v55 + 48);
    if (v47(v45, 1, v32) != 1)
    {
      return (*(v46 + 32))(v52, v45, v32);
    }

    sub_219BDBBB4();
    result = (v47)(v45, 1, v32);
    if (result != 1)
    {
      v48 = v45;
      return sub_2189DD39C(v48);
    }
  }

  else
  {
    v24 = [*v22 sportsEventStartTime];
    if (v24)
    {
      v25 = v24;
      sub_219BDBCA4();

      swift_unknownObjectRelease();
      v26 = v54;
      v27 = v55;
      v28 = *(v55 + 32);
      v28(v19, v8, v54);
      (*(v27 + 56))(v19, 0, 1, v26);
      return (v28)(a1, v19, v26);
    }

    v49 = v54;
    v50 = v55;
    (*(v55 + 56))(v19, 1, 1, v54);
    sub_219BDBBB4();
    swift_unknownObjectRelease();
    result = (*(v50 + 48))(v19, 1, v49);
    if (result != 1)
    {
      v48 = v19;
      return sub_2189DD39C(v48);
    }
  }

  return result;
}

uint64_t sub_2191B537C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD34();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_2191B6C50(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v21 = sub_219BF5334();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_2191B562C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (v44 - v8);
  v10 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v12;
    v18 = sub_2191B59FC(*v12);
    v20 = v19;
    v21 = [objc_msgSend(v17 eventLeagueTag)];
    swift_unknownObjectRelease();
    v22 = [v17 eventLeagueTag];
    if (v21 == 2)
    {
      v23 = [v22 sportsNameAbbreviation];
    }

    else
    {
      v23 = [v22 sportsPrimaryName];
    }

    v34 = v23;
    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = sub_219BF5414();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = [v17 sportsEventStartTime];
    if (v38)
    {
      v39 = v38;
      sub_219BDBCA4();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = sub_219BDBD34();
    (*(*(v41 - 8) + 56))(v9, v40, 1, v41);
    sub_2191B5E50(v3, v35, v37, v18, v20, v9);
    v16 = v42;
    swift_unknownObjectRelease();

LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = v6;
    sub_2191B6B18(0);
    v25 = *(v12 + *(v24 + 48));
    sub_218A5DD60(v12, v6);
    if (v25 && (v44[1] = &unk_282B68F08, (v26 = swift_dynamicCastObjCProtocolConditional()) != 0) && (v27 = [v26 sportsPrimaryName]) != 0)
    {
      v28 = v27;
      v29 = sub_219BF5414();
      v31 = v30;

      v32 = v29;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    sub_2191B5E50(v3, v32, v31, 0, 0, v9);
    v16 = v33;
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_2191B6C98(0);
  v15 = [*(v12 + *(v14 + 48)) name];
  v16 = sub_219BF5414();
  swift_unknownObjectRelease();

  v9 = v12;
LABEL_21:
  sub_2189DD39C(v9);
  return v16;
}

id sub_2191B59FC(void *a1)
{
  v2 = sub_219BED484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 eventCompetitorTags];
  if (result)
  {
    v11 = result;
    sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
    v12 = sub_219BF5924();

    if (v12 >> 62)
    {
      result = sub_219BF7214();
      if (result != 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != 2)
      {
LABEL_4:
        if (result != 1)
        {
LABEL_10:

          return 0;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CECE0F0](0, v12);
LABEL_8:
          v14 = [v13 sportsNickname];
          swift_unknownObjectRelease();
          if (v14)
          {

            v15 = sub_219BF5414();

            return v15;
          }

          goto LABEL_10;
        }

        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v12 + 32);
          swift_unknownObjectRetain();
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    v16 = *MEMORY[0x277D31B78];
    v17 = *(v3 + 104);
    result = v17(v9, v16, v2);
    v31 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      swift_unknownObjectRetain();
    }

    v30 = sub_219BED474();
    v19 = v18;
    swift_unknownObjectRelease();
    v20 = *(v3 + 8);
    v20(v9, v2);
    result = v17(v5, v16, v2);
    if (v31)
    {
      MEMORY[0x21CECE0F0](1, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
    }

    v21 = v30;

    v22 = sub_219BED474();
    v24 = v23;
    swift_unknownObjectRelease();
    v20(v5, v2);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186DD8D0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09EC0;
    v28 = MEMORY[0x277D837D0];
    *(v27 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2186FC3BC();
    *(v27 + 32) = v21;
    *(v27 + 40) = v19;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 64) = v29;
    *(v27 + 72) = v22;
    *(v27 + 80) = v24;
    v15 = sub_219BF5454();

    return v15;
  }

  return result;
}

void sub_2191B5E50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a5;
  v57 = a3;
  v54 = a2;
  v53 = a1;
  v7 = sub_219BDBB74();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBB24();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v49 - v24;
  sub_2187D96F4(a6, &v49 - v24);
  v26 = sub_219BDBD34();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_2189DD39C(v25);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    MEMORY[0x21CEB1D10]();
    sub_219BDBB14();
    sub_219BDBAE4();
    (*(v49 + 8))(v12, v50);
    v30 = *(v14 + 8);
    v30(v16, v13);
    sub_219BDBB54();
    sub_219BDBB04();
    (*(v51 + 8))(v9, v52);
    v30(v19, v13);
    sub_2191B6C50(&unk_27CC16F88, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_219BDBD14();
    v30(v22, v13);
    (*(v27 + 8))(v25, v26);
    v28 = v65;
    v29 = v66;
  }

  v59 = v54;
  v60 = v57;
  v61 = v55;
  v62 = v56;
  v63 = v28;
  v64 = v29;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
LABEL_5:
  if (v31 <= 3)
  {
    v33 = 3;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33 + 1;
  v35 = 16 * v31 + 40;
  while (v31 != 3)
  {
    if (v34 == ++v31)
    {
      __break(1u);
      return;
    }

    v36 = v35 + 16;
    v37 = *&v58[v35];
    v35 += 16;
    if (v37)
    {
      v38 = *(&v55 + v36);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_218840D24(0, *(v32 + 2) + 1, 1, v32);
      }

      v40 = *(v32 + 2);
      v39 = *(v32 + 3);
      if (v40 >= v39 >> 1)
      {
        v32 = sub_218840D24((v39 > 1), v40 + 1, 1, v32);
      }

      *(v32 + 2) = v40 + 1;
      v41 = &v32[16 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v37;
      goto LABEL_5;
    }
  }

  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v65 = v32;
  sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  sub_2189DD328();
  v42 = sub_219BF5324();
  v44 = v43;

  if (v53)
  {
    if (v53 != 1)
    {
      goto LABEL_22;
    }

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {
LABEL_22:
    }
  }

  else
  {
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();
    }
  }
}

uint64_t sub_2191B64BC(uint64_t a1)
{
  v2 = v1;
  v32[1] = a1;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  v19 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v19);
  v21 = (v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = [*v21 identifier];
    sub_219BF5414();

    sub_219BF5524();

    return swift_unknownObjectRelease();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2191B6C98(0);
    v24 = *(v21 + *(v23 + 48));
    sub_218A5DD60(v21, v18);
    sub_2187D96F4(v18, v15);
    if ((*(v4 + 48))(v15, 1, v3) == 1)
    {
      sub_219BF7AC4();
    }

    else
    {
      (*(v4 + 32))(v6, v15, v3);
      sub_219BF7AC4();
      sub_2191B6C50(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_219BF52F4();
      (*(v4 + 8))(v6, v3);
    }

    v30 = [v24 identifier];
    sub_219BF5414();

    sub_219BF5524();
    swift_unknownObjectRelease();

    v31 = v18;
    return sub_2189DD39C(v31);
  }

  sub_2191B6B18(0);
  v28 = *(v21 + *(v27 + 48));
  sub_218A5DD60(v21, v12);
  sub_2187D96F4(v12, v9);
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_219BF7AC4();
    sub_2191B6C50(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_219BF52F4();
    (*(v4 + 8))(v6, v3);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_219BF7AC4();
    goto LABEL_13;
  }

  sub_219BF7AC4();
  if (!v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  v29 = [v28 identifier];
  sub_219BF5414();

  sub_219BF7AC4();
  sub_219BF5524();
  swift_unknownObjectRelease();

LABEL_13:
  v31 = v12;
  return sub_2189DD39C(v31);
}

uint64_t sub_2191B69C8()
{
  sub_219BF7AA4();
  sub_2191B64BC(v1);
  return sub_219BF7AE4();
}

uint64_t sub_2191B6A0C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_2191B64BC(v2);
  return sub_219BF7AE4();
}

uint64_t sub_2191B6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2191B6B18(uint64_t a1)
{
  if (!qword_27CC16F60)
  {
    sub_2186DD8D0(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2191B6BE8(255, &qword_280E8E670, &qword_280E8E680, &protocolRef_FCTagProviding, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F60);
    }
  }
}

void sub_2191B6BE8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2191B6C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2191B6C98(uint64_t a1)
{
  if (!qword_27CC16F70)
  {
    sub_2186DD8D0(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2186D6710(255, &qword_280E8E420, &protocolRef_FCSportsProviding);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F70);
    }
  }
}

uint64_t sub_2191B6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v116 = v4;
  v117 = v5;
  MEMORY[0x28223BE20](v4);
  v108 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v108 - v11;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v108 - v16;
  MEMORY[0x28223BE20](v17);
  v115 = &v108 - v18;
  MEMORY[0x28223BE20](v19);
  v109 = &v108 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = &v108 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v108 - v24;
  v25 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v108 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = (&v108 - v32);
  sub_2191B7890(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &v36[*(v37 + 56)];
  sub_2191B6AB4(a1, v36);
  sub_2191B6AB4(a2, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6AB4(v36, v30);
      sub_2191B6C98(0);
      v41 = *(v40 + 48);
      v42 = *&v30[v41];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = v36;
        v43 = *(v38 + v41);
        v44 = v30;
        v45 = v111;
        sub_218A5DD60(v44, v111);
        v46 = v38;
        v47 = v112;
        sub_218A5DD60(v46, v112);
        v48 = *(v8 + 48);
        sub_2187D96F4(v45, v12);
        sub_2187D96F4(v47, &v12[v48]);
        v49 = v116;
        v50 = *(v117 + 48);
        if (v50(v12, 1, v116) == 1)
        {
          if (v50(&v12[v48], 1, v49) == 1)
          {
            sub_2189DD39C(v12);
            goto LABEL_30;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = v109;
          sub_2187D96F4(v12, v109);
          if (v50(&v12[v48], 1, v49) != 1)
          {
            v77 = v117;
            v78 = *(v117 + 32);
            v114 = v43;
            v79 = v74;
            v80 = v108;
            v78(v108, &v12[v48], v49);
            sub_2191B6C50(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v81 = sub_219BF53A4();
            v82 = *(v77 + 8);
            v82(v80, v49);
            v83 = v79;
            v43 = v114;
            v82(v83, v49);
            sub_2189DD39C(v12);
            if (v81)
            {
LABEL_30:
              v84 = [v42 identifier];
              v85 = sub_219BF5414();
              v87 = v86;

              v88 = [v43 identifier];
              v89 = sub_219BF5414();
              v91 = v90;

              if (v85 == v89 && v87 == v91)
              {
                v63 = 1;
              }

              else
              {
                v63 = sub_219BF78F4();
              }

              v36 = v115;

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_52;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v63 = 0;
            v36 = v115;
LABEL_52:
            sub_2189DD39C(v47);
            v106 = v45;
LABEL_53:
            sub_2189DD39C(v106);
            goto LABEL_54;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*(v117 + 8))(v74, v49);
        }

        v36 = v115;
        sub_2191B78F4(v12, sub_218C82694);
        v63 = 0;
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
      v62 = v30;
      goto LABEL_15;
    }

    sub_2191B6AB4(v36, v27);
    sub_2191B6B18(0);
    v53 = *(v52 + 48);
    v54 = *&v27[v53];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      swift_unknownObjectRelease();
      v62 = v27;
LABEL_15:
      sub_2189DD39C(v62);
      goto LABEL_16;
    }

    v55 = *(v38 + v53);
    v56 = v115;
    sub_218A5DD60(v27, v115);
    v57 = v113;
    sub_218A5DD60(v38, v113);
    v58 = *(v8 + 48);
    v59 = v114;
    sub_2187D96F4(v56, v114);
    sub_2187D96F4(v57, v59 + v58);
    v60 = v116;
    v61 = *(v117 + 48);
    if (v61(v59, 1, v116) == 1)
    {
      if (v61(v59 + v58, 1, v60) == 1)
      {
        sub_2189DD39C(v59);
        goto LABEL_37;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = v55;
      v76 = v110;
      sub_2187D96F4(v59, v110);
      if (v61(v59 + v58, 1, v60) != 1)
      {
        v92 = v117;
        v93 = v59 + v58;
        v94 = v108;
        (*(v117 + 32))(v108, v93, v60);
        sub_2191B6C50(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v95 = sub_219BF53A4();
        v96 = *(v92 + 8);
        v96(v94, v60);
        v96(v76, v60);
        sub_2189DD39C(v114);
        v55 = v75;
        v56 = v115;
        if (v95)
        {
LABEL_37:
          v97 = v36;
          if (v54)
          {
            v98 = [v54 identifier];
            v99 = sub_219BF5414();
            v101 = v100;

            if (!v55)
            {
              if (!v101)
              {
                v102 = 0;
LABEL_49:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_2189DD39C(v57);
                sub_2189DD39C(v56);
                if (!v102)
                {
                  v63 = 1;
                  v36 = v97;
                  goto LABEL_54;
                }

LABEL_58:
                v63 = 0;
                v36 = v97;
                goto LABEL_54;
              }

LABEL_57:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              sub_2189DD39C(v57);
              sub_2189DD39C(v56);
              goto LABEL_58;
            }
          }

          else
          {
            v101 = 0;
            v99 = 0;
            v102 = 0;
            if (!v55)
            {
              goto LABEL_49;
            }
          }

          v103 = [v55 identifier];
          v104 = sub_219BF5414();
          v102 = v105;

          if (!v101)
          {
            goto LABEL_49;
          }

          if (v102)
          {
            if (v99 == v104 && v101 == v102)
            {
              v63 = 1;
            }

            else
            {
              v63 = sub_219BF78F4();
            }

            v36 = v97;
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            sub_2189DD39C(v57);
            v106 = v56;
            goto LABEL_53;
          }

          goto LABEL_57;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_35:
        sub_2189DD39C(v57);
        sub_2189DD39C(v56);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v117 + 8))(v76, v60);
      v56 = v115;
    }

    sub_2191B78F4(v59, sub_218C82694);
    goto LABEL_35;
  }

  sub_2191B6AB4(v36, v33);
  v51 = *v33;
  if (swift_getEnumCaseMultiPayload())
  {
    swift_unknownObjectRelease();
LABEL_16:
    sub_2191B78F4(v38, type metadata accessor for SportsHighlights.SubsectionDescriptor);
LABEL_17:
    v63 = 0;
    goto LABEL_54;
  }

  v64 = v36;
  v65 = *v38;
  v66 = [v51 identifier];
  v67 = sub_219BF5414();
  v69 = v68;

  v70 = [v65 identifier];
  v71 = sub_219BF5414();
  v73 = v72;

  if (v67 == v71 && v69 == v73)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_219BF78F4();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v36 = v64;
LABEL_54:
  sub_2191B78F4(v36, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  return v63 & 1;
}

void sub_2191B7890(uint64_t a1)
{
  if (!qword_27CC16F78)
  {
    type metadata accessor for SportsHighlights.SubsectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F78);
    }
  }
}

uint64_t sub_2191B78F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2191B7954(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

void sub_2191B79B4(uint64_t a1)
{
  type metadata accessor for SportsHighlights.SubsectionDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_2191B6BE8(319, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2191B7A64(uint64_t a1)
{
  sub_2186D6710(319, &qword_280E8DFF0, &protocolRef_FCSportsEventProviding);
  if (v1 <= 0x3F)
  {
    sub_2191B6C98(319);
    if (v2 <= 0x3F)
    {
      sub_2191B6B18(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

id sub_2191B7B28(void *a1, char a2)
{
  v5 = sub_219BDCAF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0CD4();
  v9 = *(v2 + 16);
  v10 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x277D74400]];
  v11 = [v9 scaledFontForFont:v10 maximumPointSize:48.0];

  (*(v6 + 104))(v8, *MEMORY[0x277D6D198], v5);
  v12 = sub_219BF0CB4();

  (*(v6 + 8))(v8, v5);
  [a1 setFont_];

  v13 = [objc_opt_self() labelColor];
  [a1 setTextColor_];

  [a1 setNumberOfLines_];
  if (a2)
  {
    LODWORD(v14) = 1036831949;
    [a1 ts:v14 setHyphenationFactor:?];
  }

  return [a1 setLineBreakMode_];
}

uint64_t sub_2191B7D4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2191B7DB8()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_savedFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for SavedFeedConfigFetchResult(0);
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_2191B8A5C();
    swift_allocError();
    *v9 = 1;
    sub_2191B8B98(0, &unk_280EE6D40, type metadata accessor for SavedFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_2191B7FFC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2191B8B98(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v13 - v5);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_219BF5CE4();
  *v6 = v7;
  v8 = *MEMORY[0x277D6CA48];
  v9 = sub_219BE1B34();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_219BF2954();
  sub_21897DAD8(v6);
  return v11;
}

char *sub_2191B81A4(void **a1, unint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for SavedFeedConfigFetchResult(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for SavedFeedContentConfig(0);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = [v18 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v11 + 32))(v17, v13, v10);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v32 = v7;
      v24 = v22;
      v25 = v21;
      sub_2191B89A0();
      v33 = v25;
      v36 = v24;
      sub_219BE1974();
      v27 = v37;
      v28 = v32;
      sub_2191B8AD0(v37, v32, type metadata accessor for SavedFeedContentConfig);
      v29 = v35;
      *(v28 + *(v34 + 20)) = v18;
      sub_2191B8AD0(v28, v29, type metadata accessor for SavedFeedConfigFetchResult);
      sub_2191B8B98(0, &unk_280EE6D40, type metadata accessor for SavedFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v30 = v18;
      v7 = sub_219BE3014();
      sub_2186C6190(v33, v36);
      sub_2191B8B38(v28, type metadata accessor for SavedFeedConfigFetchResult);
      sub_2191B8B38(v27, type metadata accessor for SavedFeedContentConfig);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_2191B8A5C();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  return v7;
}

double sub_2191B8584(uint64_t a1)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616E0;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch saved feed service config. Error=%{public}@)", 60, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

void *sub_2191B86B0@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SavedFeedContentConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B89A0();
  result = sub_219BE1974();
  if (!v2)
  {
    sub_2191B89F8(v6, a2);
    result = type metadata accessor for SavedFeedConfigFetchResult(0);
    *(a2 + *(result + 5)) = 0;
  }

  return result;
}

uint64_t sub_2191B8798(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_219BDAF44();
  v16 = v11;
  sub_219BE3204();
  v12 = sub_219BE2E54();
  type metadata accessor for SavedFeedConfigFetchResult(0);
  v13 = sub_219BE2F94();

  (*(v8 + 8))(v11, v7);
  return v13;
}

unint64_t sub_2191B89A0()
{
  result = qword_280EC6ED0;
  if (!qword_280EC6ED0)
  {
    type metadata accessor for SavedFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6ED0);
  }

  return result;
}

uint64_t sub_2191B89F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2191B8A5C()
{
  result = qword_27CC16F98;
  if (!qword_27CC16F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F98);
  }

  return result;
}

uint64_t sub_2191B8AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191B8B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191B8B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2191B8C10()
{
  result = qword_27CC16FA8;
  if (!qword_27CC16FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FA8);
  }

  return result;
}

uint64_t sub_2191B8C64()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4973646E6F636573;
  }
}

void sub_2191B8CB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4973646E6F636573 && a2 == 0xED0000747361506ELL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2191B8D9C(uint64_t a1)
{
  v2 = sub_2191B8F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191B8DD8(uint64_t a1)
{
  v2 = sub_2191B8F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleContinuePlayingKnobConfiguration.encode(to:)(void *a1)
{
  sub_2191B91A8(0, &qword_280E8C1F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B8F94();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7814();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2191B8F94()
{
  result = qword_280E98280;
  if (!qword_280E98280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98280);
  }

  return result;
}

uint64_t PuzzleContinuePlayingKnobConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2191B91A8(0, &qword_27CC16FB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B8F94();
  sub_219BF7B34();
  if (!v2)
  {
    v14[15] = 0;
    sub_219BF7714();
    v11 = v10;
    v14[14] = 1;
    v13 = sub_219BF7724();
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2191B91A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191B8F94();
    v7 = a3(a1, &type metadata for PuzzleContinuePlayingKnobConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2191B9260()
{
  result = qword_27CC16FB8;
  if (!qword_27CC16FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FB8);
  }

  return result;
}

unint64_t sub_2191B92B8()
{
  result = qword_280E98270;
  if (!qword_280E98270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98270);
  }

  return result;
}

unint64_t sub_2191B9310()
{
  result = qword_280E98278;
  if (!qword_280E98278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98278);
  }

  return result;
}

uint64_t sub_2191B93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2191B9A88(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872F4C4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B9B34(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig(0);
    sub_218700598(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig, &unk_219CA2BD8);
    sub_219BEE974();
    sub_2191B9B98(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2191B9B98(v6);
    }
  }

  else
  {
    sub_2191B9B98(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2191B95F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2191B9A88(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B9BF4(0, &qword_27CC16FC0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B9AE0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_21872F4C4(0);
    sub_218700598(&qword_27CC16FD0, sub_21872F4C4, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2191B93B0(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2191B97E4(uint64_t a1)
{
  v2 = sub_2191B9AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191B9820(uint64_t a1)
{
  v2 = sub_2191B9AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2191B9874(void *a1)
{
  sub_2191B9BF4(0, &qword_27CC16FD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B9AE0();
  sub_219BF7B44();
  sub_21872F4C4(0);
  sub_218700598(&qword_27CC16FE0, sub_21872F4C4, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191B99FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AudioHistoryFeedServiceConfig(0);
  sub_218700598(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig, &unk_219CA2BD8);

  return sub_219BEE9F4();
}

void sub_2191B9A88(uint64_t a1)
{
  if (!qword_280E91AA0)
  {
    sub_21872F4C4(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91AA0);
    }
  }
}

unint64_t sub_2191B9AE0()
{
  result = qword_27CC16FC8;
  if (!qword_27CC16FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FC8);
  }

  return result;
}

uint64_t sub_2191B9B34(uint64_t a1, uint64_t a2)
{
  sub_2191B9A88(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191B9B98(uint64_t a1)
{
  sub_2191B9A88(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191B9BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191B9AE0();
    v7 = a3(a1, &type metadata for ArticleListAudioHistoryFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2191B9C6C()
{
  result = qword_27CC16FE8;
  if (!qword_27CC16FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FE8);
  }

  return result;
}

unint64_t sub_2191B9CC4()
{
  result = qword_27CC16FF0;
  if (!qword_27CC16FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FF0);
  }

  return result;
}

unint64_t sub_2191B9D1C()
{
  result = qword_27CC16FF8;
  if (!qword_27CC16FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FF8);
  }

  return result;
}

uint64_t sub_2191B9D70()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9E38()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9F00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9FD0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t type metadata accessor for SportsManagementDetailViewController(uint64_t a1)
{
  result = qword_27CC17030;
  if (!qword_27CC17030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2191BA228(uint64_t a1)
{
  result = type metadata accessor for SportsDetailModel(319);
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

void sub_2191BA2E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SportsDetailModel(0);
  *&v4 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidLoad, v4);
  v7 = *&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_blueprintViewController];
  [v1 addChildViewController_];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v9 addSubview_];

  [v7 didMoveToParentViewController_];
  v12 = [v7 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  sub_218A3A494(&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_model], v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2191BBAA0(v6);
  if (EnumCaseMultiPayload == 1)
  {
    v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_dismissVC];
    v26 = sub_219BF65B4();
    [v26 setRightBarButtonItem_];
  }

  sub_219BE8654();
  sub_219BE8664();
  v27 = sub_219BE7BC4();

  [v27 setAllowsSelectionDuringEditing_];

  v28 = [v1 traitCollection];
  sub_2191BB8C4();
}

uint64_t sub_2191BA63C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2191BBA4C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v13 - v7;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1, v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v9 = sub_219BDC104();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_219BEA2C4();
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = sub_219BDC104();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_219BF5F84();

  return sub_218A1C0F4(v8);
}

uint64_t sub_2191BAA64()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200(0);
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = *MEMORY[0x277D6D9C8];
  v13 = sub_219BE73A4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v10[3] = v14;
  v10[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C24();
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191BAD78()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2191BAF54()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCD9078;
  v8 = sub_219BE9334();
  v9 = MEMORY[0x277D6E550];
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC80], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECB0], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

void sub_2191BB250()
{
  sub_2191BBA4C(0, &qword_280EE9D90, MEMORY[0x277CC8C40]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_219BF65B4();
  v4 = sub_218A3A21C();
  v6 = sub_21933D408(v4, v5, 195.0);

  v7 = v6;
  sub_219BDB5D4();
  v8 = sub_219BDB5A4();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_219BF64C4();

  v9 = sub_219BF65B4();
  sub_218A3A21C();
  v10 = sub_219BF53D4();

  [v9 setBackButtonTitle_];
}

uint64_t sub_2191BB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v11 + 40))(ObjectType, v11);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    return (*(v13 + 32))(v14, v13);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_2191BB5B4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2191BB87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2191BB8C4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_styler], v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setSeparatorStyle_];

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v9 = [v1 navigationItem];
    sub_218ADD96C(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191BBA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2191BBAA0(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191BBAFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_280EDDC30);
  *(a1 + qword_280EDDC30) = a3;
  v3 = a3;
}

id sub_2191BBB44(void *a1)
{
  v1 = a1;
  sub_2187B13AC(v5);
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7[3] = v2;
  __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v2 - 8) + 16))();

  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_219BF78D4();
  __swift_destroy_boxed_opaque_existential_1(v7);

  return v3;
}

void *sub_2191BBC0C()
{
  v1 = v0 + qword_280EDDD60;
  v2 = *(v0 + qword_280EDDD60);
  if (v2)
  {
    v3 = *(v0 + qword_280EDDD60);
LABEL_5:
    v6 = v2;
    return v3;
  }

  sub_2187B13AC(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2186C709C(0, &qword_280EE59F0, MEMORY[0x277D6D688], 0);
  result = sub_219BE1DF4();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = *v1;
    *v1 = v7;
    *(v1 + 8) = v8;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_2191BBCEC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_280EDDD48);
  if (*(v2 + qword_280EDDD48))
  {
    v4 = *(v2 + qword_280EDDD48);
LABEL_5:
    swift_unknownObjectRetain();
    return v4;
  }

  sub_2187B13AC(v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v4 = v6;
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    *v3 = v6;
    v3[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191BBDC4()
{
  v1 = qword_280EDDCB0;
  if (*(v0 + qword_280EDDCB0))
  {
    v2 = *(v0 + qword_280EDDCB0);
LABEL_5:

    return v2;
  }

  sub_2187B13AC(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2186DD934(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_2191BBEB0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC38;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v8, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  if (v9)
  {
    return sub_2186CB1F0(&v8, a1);
  }

  v5 = MEMORY[0x277D6E818];
  sub_2187B1DA0(&v8, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  sub_2187B13AC(&v8);
  __swift_project_boxed_opaque_existential_1(&v8, v9);
  sub_2186C709C(0, &unk_280EE3F50, v5, 1);
  result = sub_219BE1E34();
  if (v7)
  {
    sub_2186CB1F0(&v6, a1);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    sub_218718690(a1, &v8);
    swift_beginAccess();
    sub_2187B20EC(&v8, v1 + v3, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2191BC024@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC80;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType, 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2191BC198@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC40;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType, 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191BC30C(uint64_t (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2187B7D90(&qword_280EDDC68, MEMORY[0x277D6E420]);
  v5 = sub_219BE9144();

  return (a1)(v5 & 1);
}

void sub_2191BC388(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_219BED174();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED214();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_2187B13AC(v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_2186C709C(0, qword_280EBF670, &protocol descriptor for BootstrapFlowProviderType, 1);
  sub_219BE1E34();
  if (v36)
  {
    sub_2186CB1F0(&v35, aBlock);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_project_boxed_opaque_existential_1(aBlock, v32);
    sub_2187B9A9C(v37);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (LOBYTE(v37[0]) == 2 && (sub_2191BC198(aBlock), __swift_project_boxed_opaque_existential_1(aBlock, v32), v14 = sub_219646AEC(), __swift_destroy_boxed_opaque_existential_1(aBlock), (v14 & 1) != 0))
    {
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v24 = sub_219BF66A4();
      sub_219BED1F4();
      if (qword_27CC07CE0 != -1)
      {
        swift_once();
      }

      v15 = sub_219BED164();
      v16 = __swift_project_value_buffer(v15, qword_27CCD81D0);
      MEMORY[0x21CEC3FD0](v10, v16);
      v17 = *(v25 + 8);
      v17(v10, v8);
      v18 = swift_allocObject();
      v19 = v30;
      *(v18 + 16) = v29;
      *(v18 + 24) = v19;
      v33 = sub_218807D28;
      v34 = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      v32 = &block_descriptor_103;
      v20 = _Block_copy(aBlock);

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2187BB0F4(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_2186DD934(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      sub_219BF7164();
      v21 = v24;
      MEMORY[0x21CECD420](v13, v7, v4, v20);
      _Block_release(v20);

      (*(v28 + 8))(v4, v2);
      (*(v26 + 8))(v7, v27);
      v17(v13, v8);
    }

    else
    {
      v22 = sub_2187BB13C(&qword_280EDDD58, MEMORY[0x277D6D360]);
      v23 = sub_219BE1C44();
      sub_219BE5D34();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2191BC8BC(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v9[2] = sub_2191C2D6C;
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = a4;
  v10 = a4;
  v12 = a1;
  v11 = v10;

  sub_2191BC388(sub_2191C2D74, v9);
}

double sub_2191BC9B4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219BED594();

    sub_219BEDDF4();
  }

  return result;
}

id sub_2191BCA38(void *a1)
{
  v1 = a1;
  v3 = [sub_2187B72A8(v1 v2)];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_2191BBEB0(v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_219BE9B44();

    __swift_destroy_boxed_opaque_existential_1(v7);
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

double sub_2191BCAF0()
{

  sub_2187B1DA0(v0 + qword_280EDDD90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDCC8, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);

  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDD40, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  sub_2187B1DA0(v0 + qword_280EDDC38, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  swift_unknownObjectRelease();

  sub_2187B1DA0(v0 + qword_280EDDC80, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDC40, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);

  sub_2187B1DA0(v0 + qword_280EDDDC0, &qword_280EC99A8, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType);

  swift_unknownObjectRelease();

  v1 = MEMORY[0x277CC9578];
  v2 = MEMORY[0x277D83D88];
  sub_2187455EC(v0 + qword_280F621E0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD934);
  sub_2187455EC(v0 + qword_280F621D8, &qword_280EE9C40, v1, v2, sub_2186DD934);

  sub_218970170(*(v0 + qword_280EDDDD0));

  return result;
}

id sub_2191BCE84()
{
  ObjectType = swift_getObjectType();
  sub_2187B13AC(v6);
  sub_218718690(v6, v5);
  v2 = swift_allocObject();
  sub_2186CB1F0(v5, v2 + 16);
  sub_219BE3494();

  __swift_destroy_boxed_opaque_existential_1(v6);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2191BCF34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDCF14();
  if (sub_219BE1E24())
  {
    sub_219BDCF04();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5A54();
  v2 = sub_219BE1E24();
  if (v2)
  {
    v3 = v2;
    sub_219BE5A44();
  }
}

id sub_2191BD00C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_2187B13AC(v8);
  sub_218718690(v8, v7);
  v4 = swift_allocObject();
  sub_2186CB1F0(v7, v4 + 16);
  sub_219BE3494();

  __swift_destroy_boxed_opaque_existential_1(v8);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

double sub_2191BD0C4(uint64_t a1)
{

  sub_2187B1DA0(a1 + qword_280EDDD90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDCC8, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);

  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDD40, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  sub_2187B1DA0(a1 + qword_280EDDC38, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  swift_unknownObjectRelease();

  sub_2187B1DA0(a1 + qword_280EDDC80, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDC40, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);

  sub_2187B1DA0(a1 + qword_280EDDDC0, &qword_280EC99A8, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType);

  swift_unknownObjectRelease();

  v2 = MEMORY[0x277CC9578];
  v3 = MEMORY[0x277D83D88];
  sub_2187455EC(a1 + qword_280F621E0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD934);
  sub_2187455EC(a1 + qword_280F621D8, &qword_280EE9C40, v2, v3, sub_2186DD934);

  sub_218970170(*(a1 + qword_280EDDDD0));

  return result;
}

void sub_2191BD45C(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = NewsActivity2.identifier.getter();
    v7 = v6;
    if ((~*&v4[qword_280EDDDD0] & 0xF000000000000007) != 0)
    {
      if (v5 == NewsActivity2.identifier.getter() && v7 == v16)
      {

        return;
      }

      v17 = sub_219BF78F4();

      if (v17)
      {

        return;
      }
    }

    else
    {
    }

    v10 = (v2 >> 58) & 0x3C | (v2 >> 1) & 3;
    v11 = v10 > 0x37;
    v12 = (1 << v10) & 0x98000800000001;
    if (v11 || v12 == 0)
    {
      [sub_2187B72A8(v8 v9)];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v14 = sub_219BF6F44();
      v15 = sub_219BF6214();
      sub_219BE5314("Activity will have no effect on state restoration because it does not affect the stack", 86, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_2191BD614(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v5 = sub_219BF6F44();
  v6 = sub_219BF6214();
  sub_219BE5314("State restoration will extend snapshot for activity: %{public}@", 63, 2, &dword_2186C1000, v5, v6, v4);

  sub_2186C6148(0, &qword_280E8D9B0, 0x277D75418);
  result = sub_219BF6F04();
  if ((result & 1) == 0)
  {
    return [a3 _extendStateRestoration];
  }

  return result;
}

uint64_t sub_2191BD774(double a1, uint64_t a2, void *a3)
{
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v7 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314("State restoration finished extending snapshot with duration: %0.1fms", v9);

  sub_2186C6148(0, &qword_280E8D9B0, 0x277D75418);
  result = sub_219BF6F04();
  if ((result & 1) == 0)
  {
    return [a3 _completeStateRestoration];
  }

  return result;
}

double sub_2191BD8B0(unint64_t *a1)
{
  v1 = *a1;
  v2 = NewsActivity2.identifier.getter();
  v4 = v3;
  if (v2 == NewsActivity2.identifier.getter() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_219BF78F4();

    if ((v7 & 1) == 0)
    {
      v9 = (v1 >> 58) & 0x3C | (v1 >> 1) & 3;
      v10 = v9 > 0x37;
      v11 = (1 << v9) & 0x98000800000001;
      if (v10 || v11 == 0)
      {
        sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
        v13 = sub_219BF6F44();
        v14 = sub_219BF6214();
        sub_219BE5314("State restoration extension interrupted due to conflicting navigation", 69, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);

        sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
        sub_219BE1E74();
      }
    }
  }

  return result;
}

double sub_2191BDA3C(unsigned __int8 *a1, id a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = [a2 activationState];
  if (v7 == 1 && (v8 == 2 || v8 + 1 == 0))
  {
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v11 = sub_219BF6F44();
    v12 = sub_219BF6214();
    sub_219BE5314(a4, a5, 2, &dword_2186C1000, v11, v12, MEMORY[0x277D84F90]);

    sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
    sub_219BE1E74();
  }

  return result;
}

void sub_2191BDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_2187BB13C(&qword_280EDDD58, MEMORY[0x277D6D360]);
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = sub_2187A913C;
  v12[5] = v10;
  v13 = a5;
  v14 = a6;
  v15 = sub_219BE1C44();
  sub_219BE5D34();
}

void sub_2191BDC58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v7 = sub_219BF6F44();
  v8 = sub_219BF6214();
  sub_219BE5314("State restoration will route to activity", 40, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);

  v24 = 0;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = &v24;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2191C2CAC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_218807CE0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218807CE4;
  aBlock[3] = &block_descriptor_87_0;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = a2;

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v13;
    v16 = v13;
    v17 = sub_219BE2E54();
    sub_219BE2F74();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v18 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v16;
    v19 = v16;
    sub_219BE2FD4();

    v20 = sub_219BF66A4();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    sub_219BE3024();
  }
}

double sub_2191BE004(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
  v4 = sub_219BE9184();

  *a1 = v4;

  return result;
}

uint64_t sub_2191BE084(uint64_t *a1)
{
  v2 = sub_219BED214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_219BED1F4();
  sub_219BED244();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if (*a1)
  {
    sub_2186F85E8(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);

    v11 = sub_219BE2E54();
    v12 = sub_219BE30A4();

    v9(v8, v2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2191BE21C()
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v1 = sub_219BF6F44();
  v2 = sub_219BF6214();
  sub_219BE5314("State restoration succeeded", 27, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);

  sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
  sub_219BE1E74();
  if (v0)
  {
  }
}

double sub_2191BE2FC(void *a1)
{
  sub_2186DD934(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v22 = a1;
  v5 = a1;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  v6 = sub_219BE1D94();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (!v7)
  {
    v8(v4, 1, 1, v6);
    sub_2187455EC(v4, &qword_280EE7DC8, MEMORY[0x277D6CAF0], MEMORY[0x277D83D88], sub_2186DD934);
    goto LABEL_5;
  }

  v9 = *(v6 - 8);
  v8(v4, 0, 1, v6);
  v10 = (*(v9 + 88))(v4, v6);
  v11 = *MEMORY[0x277D6CAD8];
  (*(v9 + 8))(v4, v6);
  if (v10 != v11)
  {
LABEL_5:
    v14 = sub_219BF61F4();
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v22 = a1;
    v16 = a1;
    v17 = sub_219BF5484();
    v19 = v18;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v13 = sub_219BF6F44();
    sub_219BE5314("State restoration extension aborted due to error=%{public}@", 59, 2, &dword_2186C1000, v13, v14, v15);

    goto LABEL_6;
  }

  v12 = sub_219BF6204();
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v13 = sub_219BF6F44();
  sub_219BE5314("State restoration extension timed out", 37, 2, &dword_2186C1000, v13, v12, MEMORY[0x277D84F90]);
LABEL_6:

  sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
  LOBYTE(v22) = 2;
  sub_219BE1E74();

  return result;
}

uint64_t sub_2191BE698(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_219BE6914();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191BBDC4();
  v12 = [a2 URL];
  sub_219BDB8B4();

  v13 = [a2 options];
  (*(v5 + 104))(v7, *MEMORY[0x277D6D6E8], v4);
  sub_219BE25B4();

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_2191BE898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_2191BE93C(a3, v8, a4);

      v7 = v9;
    }
  }
}

void sub_2191BE93C(void *a1, id a2, void *a3)
{
  if (![a2 isKeyWindow])
  {
    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62700);
    v15 = a1;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();

    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v15;
    *v11 = v15;
    v16 = v15;
    v13 = "Window is not key - not handling discarded user activity : %@";
    goto LABEL_11;
  }

  v6 = [a3 notificationResponse];
  if (v6)
  {

    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62700);
    v8 = a1;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();

    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    v13 = "App was launched from a user notification - not handling discarded user activity: %@";
LABEL_11:
    _os_log_impl(&dword_2186C1000, oslog, v9, v13, v10, 0xCu);
    sub_2187455EC(v11, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186E5128);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
LABEL_12:

    return;
  }

  sub_2191BC024(v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v17 = *(v3 + qword_280EDDC30);
  if (v17 && (v18 = [v17 rootViewController]) != 0)
  {
    v19 = v18;
    sub_2186C6148(0, &qword_280E8E2F0, 0x277D75B20);
    sub_219BF6584();

    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  v21 = off_282A5BC28[0];
  v22 = type metadata accessor for AppDiscardedStateRestorationActivityHandler();
  v21(a1, v20, v22);

  __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_2191BEC88(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v44 = a4;
  v45 = a3;
  v6 = sub_219BE84F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_219BE6914();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDB954();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2 & 1) != 0 || (sub_219BE84E4())
    {
      swift_beginAccess();
      sub_2187DB308(v19, v18, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
      sub_2191BBDC4();
      v22 = [v44 activityType];
      v23 = sub_219BF5414();
      v25 = v24;

      if (sub_219BF5414() == v23 && v26 == v25)
      {

        v27 = v43;
        goto LABEL_8;
      }

      v28 = sub_219BF78F4();

      v27 = v43;
      if (v28)
      {
LABEL_8:
        sub_2187DB308(v18, v15, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
        if ((*(v27 + 48))(v15, 1, v11) == 1)
        {

          sub_2187455EC(v18, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
          v18 = v15;
        }

        else
        {
          v29 = v39;
          (*(v27 + 32))(v39, v15, v11);
          v31 = v40;
          v30 = v41;
          v32 = v42;
          (*(v41 + 104))(v40, *MEMORY[0x277D6D6F0], v42);
          sub_219BE25B4();

          (*(v30 + 8))(v31, v32);
          (*(v27 + 8))(v29, v11);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = objc_opt_self();
      (*(v7 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v6);
      v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v34 = swift_allocObject();
      v35 = v44;
      *(v34 + 2) = v21;
      *(v34 + 3) = v35;
      *(v34 + 4) = v19;
      (*(v7 + 32))(&v34[v33], &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_2191C2690;
      *(v36 + 24) = v34;
      aBlock[4] = sub_218807D50;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      aBlock[3] = &block_descriptor_16_2;
      v37 = _Block_copy(aBlock);
      v21 = v21;
      v38 = v35;

      [v18 performWithoutAnimation_];

      _Block_release(v37);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
    sub_219BE91A4();

LABEL_14:
    sub_2187455EC(v18, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
  }
}

uint64_t sub_2191BF3C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = sub_219BE6914();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9260];
  v11 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  swift_beginAccess();
  sub_2187DB308(a3, v17, &unk_280EE9D00, v10, v11, sub_2186DD934);
  v35 = sub_2191BBDC4();
  v18 = [a2 activityType];
  v19 = sub_219BF5414();
  v21 = v20;

  if (sub_219BF5414() == v19 && v22 == v21)
  {
  }

  else
  {
    v23 = sub_219BF78F4();

    if ((v23 & 1) == 0)
    {
      sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
      sub_219BE91A4();

      return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }
  }

  sub_2187DB308(v17, v14, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
  v24 = v34;
  if ((*(v34 + 48))(v14, 1, v7) == 1)
  {

    sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    v17 = v14;
  }

  else
  {
    (*(v24 + 32))(v9, v14, v7);
    v26 = v30;
    v25 = v31;
    v27 = v33;
    (*(v31 + 104))(v30, *MEMORY[0x277D6D6F0], v33);
    sub_219BE25B4();

    (*(v25 + 8))(v26, v27);
    (*(v24 + 8))(v9, v7);
  }

  return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
}

double sub_2191BF88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v11 = sub_219BF6F44();
  v12 = sub_219BF6214();
  if (v9)
  {
    sub_219BE5314("Shield auth controller closed without removing Shield requirement, will force-exit, sceneSession=%{public}@", 107, 2, &dword_2186C1000, v11, v12, v10);

    exit(0);
  }

  sub_219BE5314("Shield auth controller closed and removed Shield requirement, will permit app usage, sceneSession=%{public}@", 108, 2, &dword_2186C1000, v11, v12, v10);

  *(swift_allocObject() + 16) = a6;
  v13 = a6;
  sub_219BE3494();

  return result;
}

double sub_2191BFA3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2191C2874();
    v4 = sub_219BF5214();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_2191BFAE8(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 persistentIdentifier];

  v5 = sub_219BF5414();
  v7 = v6;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v9 = sub_219BF6F44();
  v10 = sub_219BF6214();
  sub_219BE5314("Scene entered background sceneSession=%{public}@", 48, 2, &dword_2186C1000, v9, v10, v8);

  sub_2191BBEB0(v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v11 = sub_219BE9B44();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v12 = qword_280EDDCF8;
  v13 = *&v2[qword_280EDDCF8];
  *&v2[qword_280EDDCF8] = v11;

  if (qword_280EE6018 != -1)
  {
    swift_once();
  }

  v14 = sub_219BE5434();
  __swift_project_value_buffer(v14, qword_280F62700);

  v15 = v2;
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2186D1058(v5, v7, v31);
    *(v18 + 12) = 2080;
    v30 = *&v2[v12];
    sub_2186E5128(0, &unk_280E8E640, &qword_280E8E650, 0x277CC1EF0);
    v20 = v30;
    v21 = sub_219BF5484();
    v23 = sub_2186D1058(v21, v22, v31);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_2186C1000, v16, v17, "Backgrounding scene (ID: %s with user activity :%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v19, -1, -1);
    MEMORY[0x21CECF960](v18, -1, -1);
  }

  sub_2187B5F14(v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_219BE2964();
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2187B5F14(v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_219BE2954();

  v24 = __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2187D85B0(v24, v25);
  [v26 sceneDidEnterBackground];
  v27 = swift_unknownObjectRelease();
  [sub_2187B72A8(v27 v28)];
  return swift_unknownObjectRelease();
}

void sub_2191BFEC8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191BFAE8(v4);
}

void sub_2191BFF30(void *a1)
{
  v2 = [a1 session];
  v3 = [v2 persistentIdentifier];

  v4 = sub_219BF5414();
  v6 = v5;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v8 = sub_219BF6F44();
  v9 = sub_219BF6214();
  sub_219BE5314("Scene will resign active sceneSession=%{public}@", 48, 2, &dword_2186C1000, v8, v9, v7);

  sub_2187B5F14(v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_219BE2944();

  __swift_destroy_boxed_opaque_existential_1(v11);
  if ([a1 activationState] == -1)
  {
    v10 = [a1 session];
    [v10 setStateRestorationActivity_];
  }
}

void sub_2191C0110(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191BFF30(v4);
}

uint64_t sub_2191C0178(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v21[-1] - v7;
  v9 = [a1 session];
  v10 = [v9 persistentIdentifier];

  v11 = sub_219BF5414();
  v13 = v12;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_2186FC3BC();
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v15 = sub_219BF6F44();
  v16 = sub_219BF6214();
  sub_219BE5314("Scene did disconnect sceneSession=%{public}@", 44, 2, &dword_2186C1000, v15, v16, v14);

  objc_opt_self();
  sub_2187B5F14(v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_219BE2974();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v17 = sub_219BDBD34();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = qword_280F621E0;
  swift_beginAccess();
  sub_2187B132C(v8, v2 + v18, &qword_280EE9C40, v4);
  return swift_endAccess();
}

void sub_2191C03FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191C0178(v4);
}

uint64_t sub_2191C0494(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  sub_2187B5F14(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  a3(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_2191C0510(void *a1, uint64_t a2)
{
  v74 = a1;
  sub_2187B0408(0);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v61 - v6;
  v80 = sub_219BDB954();
  v75 = *(v80 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v80);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &unk_280E8E4A0, 0x277D757D8);
    sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0, 0x277D757D8);
    sub_219BF5D94();
    a2 = v84;
    v11 = v85;
    v13 = v86;
    v12 = v87;
    v14 = v88;
  }

  else
  {
    v15 = -1 << *(a2 + 32);
    v11 = a2 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a2 + 56);

    v12 = 0;
  }

  v61 = v13;
  v18 = (v13 + 64) >> 6;
  v79 = (v75 + 16);
  v66 = v7 + 7;
  v65 = v75 + 32;
  v64 = v75 + 8;
  v63 = xmmword_219C09BA0;
  v68 = v11;
  v67 = v18;
  v71 = a2;
  v62 = v10;
  while (a2 < 0)
  {
    v47 = sub_219BF7244();
    if (!v47 || (v82 = v47, sub_2186C6148(0, &unk_280E8E4A0, 0x277D757D8), swift_dynamicCast(), v46 = v83, v44 = v12, v45 = v14, !v83))
    {
LABEL_21:
      sub_21892DE98(a2);
      return;
    }

LABEL_19:
    v48 = v46;
    v49 = [v46 URL];
    sub_219BDB8B4();

    v50 = [v74 session];
    v51 = [v50 persistentIdentifier];

    v52 = sub_219BF5414();
    v54 = v53;

    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v55 = swift_allocObject();
    *(v55 + 16) = v63;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_2186FC3BC();
    *(v55 + 32) = v52;
    *(v55 + 40) = v54;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

    v56 = sub_219BF6F44();
    v57 = sub_219BF6214();
    sub_219BE5314("Assigning scene activation URL context due to openURL, sceneSession=%{public}@", 78, 2, &dword_2186C1000, v56, v57, v55);

    v58 = *v79;
    (*v79)(v81, v10, v80);
    v77 = v48;
    v59 = [v48 options];
    v60 = [v59 sourceApplication];

    v78 = v45;
    if (v60)
    {
      v19 = sub_219BF5414();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = v81;
    v23 = &v81[*(v73 + 48)];
    *v23 = v19;
    v23[1] = v21;
    v24 = qword_280EDDDA0;
    v25 = v70;
    swift_beginAccess();
    v26 = v22;
    v27 = v72;
    sub_2191C26F8(v26, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *&v25[v24];
    *&v25[v24] = 0x8000000000000000;
    sub_21948DC84(v27, v52, v54, isUniquelyReferenced_nonNull_native);
    *&v25[v24] = v82;
    swift_endAccess();
    v76 = v54;
    v29 = v52;
    v30 = v69;
    v31 = v80;
    v58(v69, v10, v80);
    v32 = v75;
    v33 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v34 = (v66 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v25;
    (*(v32 + 32))(v35 + v33, v30, v31);
    v36 = v76;
    v37 = v77;
    *(v35 + v34) = v77;
    v38 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v38 = v29;
    v38[1] = v36;
    v39 = v25;
    v40 = v37;
    sub_2191BC388(sub_2191C275C, v35);

    v41 = *(v32 + 8);
    v10 = v62;
    v41(v62, v31);
    v12 = v44;
    v14 = v78;
    a2 = v71;
    v11 = v68;
    v18 = v67;
  }

  v42 = v12;
  v43 = v14;
  v44 = v12;
  if (v14)
  {
LABEL_15:
    v45 = (v43 - 1) & v43;
    v46 = *(*(a2 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v46)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v18)
    {
      goto LABEL_21;
    }

    v43 = *(v11 + 8 * v44);
    ++v42;
    if (v43)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_2191C0BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v7 = sub_219BE84F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE6914();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191BBDC4();
  v15 = [a3 options];
  (*(v12 + 104))(v14, *MEMORY[0x277D6D6F8], v11);
  sub_219BE84D4();
  sub_219BE25B4();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09EC0;
  v17 = sub_219BDB804();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v21 = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  v22 = v26;
  *(v16 + 64) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = a5;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v23 = sub_219BF6F44();
  v24 = sub_219BF6214();
  sub_219BE5314("Scene will open url %@ sceneSession=%{public}@", 46, 2, &dword_2186C1000, v23, v24, v16);
}

double sub_2191C0EAC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2186C6148(0, &unk_280E8E4A0, 0x277D757D8);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0, 0x277D757D8);
  v6 = sub_219BF5D44();
  v7 = a3;
  v8 = a1;
  sub_2191C0510(v7, v6);

  return result;
}

void sub_2191C0F68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 session];
  v8 = [v7 persistentIdentifier];

  v9 = sub_219BF5414();
  v11 = v10;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v15 = sub_219BF6F44();
  v16 = sub_219BF6214();
  sub_219BE5314("Scene session %{public}@ will continue user activity of type %@", 63, 2, &dword_2186C1000, v15, v16, v12);

  if (sub_219BF5414() == a2 && v17 == a3)
  {
  }

  else
  {
    v18 = sub_219BF78F4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v19 = qword_280EDDC30;
  v20 = *(v4 + qword_280EDDC30);
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 systemBackgroundColor];
    [v22 setBackgroundColor_];

    v24 = *(v4 + v19);
    if (v24)
    {
      v25 = [v24 rootViewController];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 view];

        if (v27)
        {

          [v27 setHidden_];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

LABEL_12:
}

double sub_2191C1230(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = a3;
  v10 = a1;
  sub_2191C0F68(v9, v6, v8);

  return result;
}

void sub_2191C12A8(void *a1, id a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = v116 - v6;
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v7);
  v127 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = v116 - v10;
  v131 = sub_219BDB954();
  v134 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v121 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = v116 - v13;
  MEMORY[0x28223BE20](v14);
  v125 = v116 - v15;
  MEMORY[0x28223BE20](v16);
  v130 = v116 - v17;
  v18 = sub_219BE84F4();
  v135 = *(v18 - 8);
  v136 = v18;
  MEMORY[0x28223BE20](v18);
  v128 = v19;
  v129 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = v116 - v22;
  v24 = [a1 session];
  v25 = [v24 persistentIdentifier];

  v26 = sub_219BF5414();
  v28 = v27;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v119 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09EC0;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v32 = sub_2186FC3BC();
  *(v30 + 64) = v32;
  v120 = v26;
  *(v30 + 32) = v26;
  *(v30 + 40) = v28;
  v138 = v28;

  v33 = [a2 activityType];
  v34 = sub_219BF5414();
  v36 = v35;

  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  v118 = v32;
  *(v30 + 72) = v34;
  *(v30 + 80) = v36;
  v37 = sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v38 = sub_219BF6F44();
  v39 = sub_219BF6214();
  sub_219BE5314("SceneSession %{public}@ continues user activity of type %@", 58, 2, &dword_2186C1000, v38, v39, v30);

  v40 = [a2 ts_sourceApplication];
  if (v40)
  {
    v41 = v40;
    v42 = sub_219BF5414();
    v137 = v43;
  }

  else
  {
    v42 = 0;
    v137 = 0;
  }

  v140 = v23;
  sub_219BE84D4();
  v132 = swift_allocBox();
  v45 = v44;
  v46 = v134;
  v47 = v131;
  v124 = *(v134 + 56);
  v124(v44, 1, 1, v131);
  v48 = [a2 activityType];
  v49 = sub_219BF5414();
  v51 = v50;

  v133 = *MEMORY[0x277CCA850];
  if (sub_219BF5414() == v49 && v52 == v51)
  {

    v53 = v139;
  }

  else
  {
    v54 = sub_219BF78F4();

    v53 = v139;
    if ((v54 & 1) == 0)
    {
LABEL_20:
      v95 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = v135;
      v68 = v136;
      v96 = v53;
      v97 = v129;
      (*(v135 + 16))(v129, v140, v136);
      v98 = (*(v69 + 80) + 25) & ~*(v69 + 80);
      v99 = a2;
      v100 = (v128 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
      v102 = swift_allocObject();
      *(v102 + 16) = v95;
      *(v102 + 24) = 1;
      (*(v69 + 32))(v102 + v98, v97, v68);
      *(v102 + v100) = v99;
      a2 = v99;
      *(v102 + v101) = v132;

      v103 = v99;

      v67 = v96;
      sub_2191BC388(sub_2191C268C, v102);

      v70 = v140;

      goto LABEL_21;
    }
  }

  v55 = [a2 webpageURL];
  if (v55)
  {
    v116[1] = v37;
    v116[0] = v42;
    v117 = a2;
    v56 = v125;
    v57 = v55;
    sub_219BDB8B4();

    v58 = v47;
    v59 = v130;
    v60 = v56;
    v61 = *(v46 + 32);
    v61(v130, v60, v47);
    v62 = sub_2187B5DEC(&qword_280EDDD18, &qword_280E8DD50, 0x277D31398);
    v63 = sub_219BDB854();
    v64 = [v62 destinationURLForURL_];

    if (v64)
    {
      v65 = v123;
      sub_219BDB8B4();

      v66 = v126;
      v61(v126, v65, v58);
    }

    else
    {
      v66 = v126;
      (*(v46 + 16))(v126, v59, v58);
    }

    v71 = v58;
    v124(v66, 0, 1, v58);
    v72 = MEMORY[0x277CC9260];
    sub_2187B132C(v66, v45, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v73 = v45;
    v74 = v127;
    sub_2187DB308(v73, v127, &unk_280EE9D00, v72, MEMORY[0x277D83D88], sub_2186DD934);
    v75 = (*(v46 + 48))(v74, 1, v58);
    v53 = v139;
    if (v75 == 1)
    {
      (*(v46 + 8))(v130, v58);
      sub_2187455EC(v74, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }

    else
    {
      v76 = v121;
      v61(v121, v74, v58);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_219C09BA0;
      v78 = v118;
      *(v77 + 56) = MEMORY[0x277D837D0];
      *(v77 + 64) = v78;
      v79 = v120;
      *(v77 + 32) = v120;
      *(v77 + 40) = v138;

      v80 = sub_219BF6F44();
      v81 = sub_219BF6214();
      sub_219BE5314("Assigning scene activation URL context due to user activity continuation, sceneSession=%{public}@", 97, 2, &dword_2186C1000, v80, v81, v77);

      sub_2187B0408(0);
      v83 = v82;
      v84 = v122;
      v85 = &v122[*(v82 + 48)];
      (*(v46 + 16))(v122, v76, v71);
      v86 = [v117 ts_sourceApplication];
      if (v86)
      {
        v87 = v86;
        v88 = sub_219BF5414();
        v90 = v89;
      }

      else
      {
        v90 = v137;

        v88 = v116[0];
      }

      *v85 = v88;
      v85[1] = v90;
      (*(*(v83 - 8) + 56))(v84, 0, 1, v83);
      v91 = v139;
      swift_beginAccess();
      v92 = v138;

      sub_2199D63A8(v84, v79, v92);
      swift_endAccess();
      v93 = *(v46 + 8);
      v94 = v76;
      v53 = v91;
      v93(v94, v71);
      v93(v130, v71);
    }

    a2 = v117;
    goto LABEL_20;
  }

  v67 = v53;
  v69 = v135;
  v68 = v136;
  v70 = v140;
LABEL_21:

  (*(v69 + 8))(v70, v68);
  v104 = [a2 activityType];
  v105 = sub_219BF5414();
  v107 = v106;

  if (sub_219BF5414() == v105 && v108 == v107)
  {
  }

  else
  {
    v109 = sub_219BF78F4();

    if ((v109 & 1) == 0)
    {
LABEL_30:

      return;
    }
  }

  v110 = qword_280EDDC30;
  v111 = *(v67 + qword_280EDDC30);
  if (!v111)
  {
    goto LABEL_30;
  }

  [v111 setBackgroundColor_];
  v112 = *(v67 + v110);
  if (!v112)
  {
    goto LABEL_30;
  }

  v113 = [v112 rootViewController];
  if (!v113)
  {
    goto LABEL_30;
  }

  v114 = v113;
  v115 = [v113 view];

  if (v115)
  {

    [v115 setHidden_];
  }

  else
  {
    __break(1u);
  }
}