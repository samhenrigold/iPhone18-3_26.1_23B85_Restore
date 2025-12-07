void sub_24814A0F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24814A31C();
    (*(v4 + 16))(v6, v9, v3);

    v10 = sub_248382A80();
    v11 = sub_248383DC0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136446210;
      v13 = sub_248383EF0();
      v14 = MEMORY[0x24C1CB100](a2, v13);
      v16 = sub_24814A378(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_248146000, v10, v11, "Received proactive suggestions update: %{public}s", v12, 0xCu);
      v17 = v19;
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1CD5F0](v17, -1, -1);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    *&v8[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions] = a2;

    sub_24814A5AC();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24814A378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24814A444(v11, 0, 0, 1, a1, a2);
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
    sub_24814A550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24814A444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24822B4D0(a5, a6);
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
    result = sub_248384490();
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

uint64_t sub_24814A550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24814A5AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v2 - 8);
  v172 = &v162 - v3;
  v184 = sub_248382500();
  v176 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v182 = &v162 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v181 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v162 - v7;
  v8 = sub_248381210();
  v180 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = (&v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v162 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v162 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v162 - v22;
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v27 = &v162 - v26;
  v28 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer];
  if (v28 && ([v28 isValid] & 1) != 0)
  {
    v29 = sub_24814A31C();
    (*(v12 + 16))(v14, v29, v11);
    v30 = v1;
    v31 = sub_248382A80();
    v32 = sub_248383DC0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v11;
      v35 = swift_slowAlloc();
      v185[0] = v35;
      *v33 = 136446210;
      v186 = *&v30[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28, &qword_2483A0120);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38, &qword_2483A0128, MEMORY[0x277D839A0]);
      v36 = sub_2483841D0();
      v38 = sub_24814A378(v36, v37, v185);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_248146000, v31, v32, "Receive proactive suggestions but timer is still active. Delaying processing for suggestions: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
      MEMORY[0x24C1CD5F0](v33, -1, -1);

      return (*(v12 + 8))(v14, v34);
    }

    v56 = *(v12 + 8);
    v57 = v14;
    return v56(v57, v11);
  }

  v40._rawValue = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
  if (!v40._rawValue)
  {
    v52 = sub_24814A31C();
    (*(v12 + 16))(v17, v52, v11);
    v53 = sub_248382A80();
    v54 = sub_248383DC0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_248146000, v53, v54, "processProactiveSuggestionsIfNeeded called but pendingProactiveSuggestions is nil so we have nothing to do.", v55, 2u);
      MEMORY[0x24C1CD5F0](v55, -1, -1);
    }

    v56 = *(v12 + 8);
    v57 = v17;
    return v56(v57, v11);
  }

  if (*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController])
  {
    v41 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions;
    v42 = sub_24814A31C();
    (*(v12 + 16))(v20, v42, v11);
    v43 = v11;
    v44 = v1;
    v45 = sub_248382A80();
    v46 = sub_248383DC0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v185[0] = v48;
      *v47 = 136446210;
      v186 = *&v1[v41];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28, &qword_2483A0120);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38, &qword_2483A0128, MEMORY[0x277D839A0]);
      v49 = sub_2483841D0();
      v51 = sub_24814A378(v49, v50, v185);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_248146000, v45, v46, "IntroViewController is showing. Delaying processing of proactive stack suggestions: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1CD5F0](v48, -1, -1);
      MEMORY[0x24C1CD5F0](v47, -1, -1);
    }

    return (*(v12 + 8))(v20, v43);
  }

  v167 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions;
  if (v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] != 1)
  {
    v70 = sub_24814A31C();
    (*(v12 + 16))(v23, v70, v11);
    v71 = v1;
    v72 = sub_248382A80();
    v73 = sub_248383DC0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v11;
      v76 = swift_slowAlloc();
      v185[0] = v76;
      *v74 = 136446210;
      v186 = *&v1[v167];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28, &qword_2483A0120);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38, &qword_2483A0128, MEMORY[0x277D839A0]);
      v77 = sub_2483841D0();
      v79 = sub_24814A378(v77, v78, v185);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_248146000, v72, v73, "Not foregrounded. Delaying processing of proactive stack suggestions: %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x24C1CD5F0](v76, -1, -1);
      MEMORY[0x24C1CD5F0](v74, -1, -1);

      return (*(v12 + 8))(v23, v75);
    }

    v56 = *(v12 + 8);
    v57 = v23;
    return v56(v57, v11);
  }

  v58 = sub_24814A31C();
  (*(v12 + 16))(v27, v58, v11);

  v59 = sub_248382A80();
  v60 = sub_248383DC0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v185[0] = v178;
    *v61 = 136446210;
    v62 = sub_248383EF0();
    v63 = MEMORY[0x24C1CB100](v40._rawValue, v62);
    v179 = v11;
    v65 = sub_24814A378(v63, v64, v185);
    v177 = v59;
    v66 = v60;
    v67 = v65;

    *(v61 + 4) = v67;
    v68 = v177;
    _os_log_impl(&dword_248146000, v177, v66, "Processing proactive stack suggestions: %{public}s", v61, 0xCu);
    v69 = v178;
    __swift_destroy_boxed_opaque_existential_0(v178);
    MEMORY[0x24C1CD5F0](v69, -1, -1);
    MEMORY[0x24C1CD5F0](v61, -1, -1);

    (*(v12 + 8))(v27, v179);
  }

  else
  {

    (*(v12 + 8))(v27, v11);
  }

  v171 = v10;
  v173 = v8;
  v185[0] = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92AA0, &qword_24839FEE8);
  v80 = MEMORY[0x277D83970];
  sub_24822D648(&qword_27EE92AA8, &qword_27EE92AA0, &qword_24839FEE8, MEMORY[0x277D83970]);
  sub_24822D648(&qword_27EE92AB0, &qword_27EE92AB8, &qword_24839FEF0, v80);
  v81 = sub_248383AB0();
  v82 = v81;
  if (v81 >> 62)
  {
    goto LABEL_65;
  }

  v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v83)
  {
LABEL_66:

    goto LABEL_67;
  }

LABEL_22:
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v178 = (v82 & 0xFFFFFFFFFFFFFF8);
  v179 = v82 & 0xC000000000000001;
  v164 = v82 + 32;
  v177 = v83;
  do
  {
    if (v179)
    {
      v87 = MEMORY[0x24C1CBA50](v84, v82);
    }

    else
    {
      if (v84 >= v178[2])
      {
        goto LABEL_64;
      }

      v87 = *(v82 + 8 * v84 + 32);
    }

    v88 = v87;
    v89 = (v84 + 1);
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v83 = sub_248384360();
      if (!v83)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

    LOBYTE(v90) = WidgetStack.updateWithSuggestions(_:)(v40)._0;
    v91 = v90;
    v92 = v90;

    v93 = v92 > 0xFF;
    v94 = v177;
    v95 = v93;
    v86 |= v91;
    v85 |= v95;
    ++v84;
  }

  while (v89 != v177);

  if ((v86 & 1) == 0)
  {
    if (v85)
    {
      goto LABEL_97;
    }

LABEL_67:

LABEL_98:
    *&v1[v167] = 0;
  }

  v96 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state];
  if (!v96)
  {
LABEL_97:
    sub_248381B90();
    v156 = sub_248383BE0();
    v157 = v172;
    (*(*(v156 - 8) + 56))(v172, 1, 1, v156);
    sub_248383BB0();
    v158 = v1;
    v159 = sub_248383BA0();
    v160 = swift_allocObject();
    v161 = MEMORY[0x277D85700];
    *(v160 + 16) = v159;
    *(v160 + 24) = v161;
    *(v160 + 32) = v82;
    *(v160 + 40) = v158;
    *(v160 + 48) = 0;
    sub_2482E9E44(0, 0, v157, 0, 0, &unk_2483A0130, v160);

    sub_24822D578(v157, &qword_27EE90480, &qword_24839D5D0);
    goto LABEL_98;
  }

  v169 = v82;
  v162 = v96;
  v97 = [v162 widgetStackRows];
  sub_248383E00();
  v98 = sub_248383B10();

  if (v98 >> 62)
  {
    v99 = sub_248384360();
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v99)
  {
    v185[0] = MEMORY[0x277D84F90];
    sub_2482E665C(0, v99 & ~(v99 >> 63), 0);
    if (v99 < 0)
    {
      goto LABEL_100;
    }

    v100 = 0;
    v101 = v185[0];
    do
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x24C1CBA50](v100, v98);
      }

      else
      {
        v102 = *(v98 + 8 * v100 + 32);
      }

      v103 = v102;
      v104 = [v103 stacks];
      sub_248383DD0();
      v105 = sub_248383B10();

      v185[0] = v101;
      v107 = *(v101 + 16);
      v106 = *(v101 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_2482E665C((v106 > 1), v107 + 1, 1);
        v101 = v185[0];
      }

      ++v100;
      *(v101 + 16) = v107 + 1;
      *(v101 + 8 * v107 + 32) = v105;
    }

    while (v99 != v100);

    v94 = v177;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  v185[0] = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C40, &qword_2483A0138);
  v108 = MEMORY[0x277D83970];
  sub_24822D648(&unk_27EE93420, &unk_27EE92C40, &qword_2483A0138, MEMORY[0x277D83970]);
  sub_24822D648(&unk_27EE92C50, &qword_27EE93430, &qword_2483A0140, v108);
  v109 = sub_248383AB0();

  v82 = v169;
  v163 = v1;
  if (v109 >> 62)
  {
    v110 = sub_248384360();
    v111 = MEMORY[0x277D84F90];
    if (!v110)
    {
      goto LABEL_70;
    }

LABEL_54:
    v112 = v109;
    v185[0] = v111;
    sub_2482E663C(0, v110 & ~(v110 >> 63), 0);
    if (v110 < 0)
    {
      goto LABEL_101;
    }

    v113 = 0;
    v114 = v185[0];
    v115 = v112;
    v170 = (v112 & 0xC000000000000001);
    v116 = (v180 + 1);
    v180 = v112;
    do
    {
      v117 = v110;
      if (v170)
      {
        v118 = MEMORY[0x24C1CBA50](v113, v115);
      }

      else
      {
        v118 = v115[v113 + 4];
      }

      v119 = v118;
      v120 = [v118 id];
      v121 = v171;
      sub_2483811F0();

      v122 = sub_2483811D0();
      v124 = v123;
      (*v116)(v121, v173);
      v185[0] = v114;
      v126 = *(v114 + 16);
      v125 = *(v114 + 24);
      if (v126 >= v125 >> 1)
      {
        sub_2482E663C((v125 > 1), v126 + 1, 1);
        v114 = v185[0];
      }

      ++v113;
      *(v114 + 16) = v126 + 1;
      v127 = (v114 + 24 * v126);
      v127[4] = v122;
      v127[5] = v124;
      v127[6] = v119;
      v110 = v117;
      v82 = v169;
      v115 = v180;
    }

    while (v117 != v113);

    v94 = v177;
    v1 = v163;
  }

  else
  {
    v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v111 = MEMORY[0x277D84F90];
    if (v110)
    {
      goto LABEL_54;
    }

LABEL_70:

    v114 = MEMORY[0x277D84F90];
  }

  if (*(v114 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C60, &unk_2483A0148);
    v128 = sub_2483845F0();
  }

  else
  {
    v128 = MEMORY[0x277D84F98];
  }

  v185[0] = v128;

  sub_2482E6F54(v129, 1, v185);

  v130 = 0;
  v131 = v185[0];
  v170 = (v181 + 8);
  v132 = v175;
  v180 = (v176 + 8);
  v181 = v176 + 16;
  v133 = v174;
  v134 = v164;
  v165 = v185[0];
  while (2)
  {
    if (v179)
    {
      v135 = MEMORY[0x24C1CBA50](v130, v82);
      v136 = __OFADD__(v130, 1);
      v137 = (&v130->isa + 1);
      if (v136)
      {
LABEL_95:
        __break(1u);
LABEL_96:

        v155 = v162;
        [*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider] setWidgetState:v162 initiatedBy:1];

        goto LABEL_97;
      }

LABEL_81:
      v171 = v137;
      v173 = v135;
      sub_248381900();
      sub_248381860();
      (*v170)(v133, v132);
      if (*(v131 + 16))
      {
        v138 = sub_24822B8A0(v185[0], v185[1]);
        v140 = v139;

        if (v140)
        {
          v168 = *(*(v131 + 56) + 8 * v138);
          v141 = sub_248381920();
          v186 = MEMORY[0x277D84F90];
          v142 = *(v141 + 16);
          if (v142)
          {
            sub_248384160();
            v143 = (*(v176 + 80) + 32) & ~*(v176 + 80);
            v166 = v141;
            v144 = v141 + v143;
            v145 = *(v176 + 72);
            v146 = *(v176 + 16);
            do
            {
              v147 = v182;
              v148 = v184;
              v146(v182, v144, v184);
              v149 = v183;
              v150.n128_f64[0] = v146(v183, v147, v148);
              v151 = sub_2482DE514(v149, v150);
              v152 = (*v180)(v147, v148);
              if (v151)
              {
                MEMORY[0x24C1CB0D0](v152);
                if (*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_248383B50();
                }

                sub_248383B70();
              }

              v144 += v145;
              --v142;
            }

            while (v142);

            v1 = v163;
            v133 = v174;
            v132 = v175;
            v82 = v169;
            v94 = v177;
            v134 = v164;
          }

          else
          {
          }

          sub_248384160();
          v153 = sub_248383B00();

          v154 = v168;
          [v168 replacingWidgets_];

          v131 = v165;
LABEL_77:
          v130 = v171;
          if (v171 == v94)
          {
            goto LABEL_96;
          }

          continue;
        }
      }

      else
      {
      }

      goto LABEL_77;
    }

    break;
  }

  if (v130 < v178[2])
  {
    v135 = *(v134 + 8 * v130);
    v136 = __OFADD__(v130, 1);
    v137 = (&v130->isa + 1);
    if (v136)
    {
      goto LABEL_95;
    }

    goto LABEL_81;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_24814BB68(uint64_t a1)
{
  v2 = sub_2483837A0();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2483837E0();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  v8 = sub_248383E50();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24814A0E8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_100;
  v11 = _Block_copy(aBlock);

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2482E64FC(&qword_27EE91EB0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0, MEMORY[0x277D83970]);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v7, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_24814BE8C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24814BEC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24814BF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24814BF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24814BF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24814C01C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DBDashboardSceneManager.sceneForApplicationEntity(_:)(void *a1)
{
  if (![a1 isApplicationEntity])
  {
    result = [a1 isProxiedApplicationEntity];
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__isInvalidated))
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 application];
    v7 = 0;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:

    return 0;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = a1;
  v6 = [v11 applicationToProxy];
  v13 = [v11 proxyEntity];
  v7 = [v13 application];

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v4 = sub_24814C858(v6, v9);

  if (v4)
  {

    return v4;
  }

  v53 = v8;
  v14 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  v15 = v14;
  if (!v14)
  {
    sub_248383960();
    v15 = sub_248383930();
  }

  v54 = sub_248383960();
  v17 = v16;
  v55 = *(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__sceneWorkspace);
  v18 = [v55 sceneWithIdentifier_];

  if (v18)
  {
    v19 = sub_248383DA0();
    v20 = *sub_24814FB80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24839C7F0;
    *(v21 + 56) = sub_24814FB28(0, &unk_27EE91E30, 0x277D0AAC8);
    *(v21 + 64) = sub_248151298(&unk_27EE91600, &unk_27EE91E30, 0x277D0AAC8, MEMORY[0x277D85388]);
    *(v21 + 32) = v18;
    v22 = v20;
    v23 = v18;
    sub_248382A40(v19, &dword_248146000, v22, "Invalidating unexpected scene %{public}@", 40, 2, v21);

    [v23 invalidate];
  }

  if (v7)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CF9320]) init];
    v25 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839EA80;
    *(inited + 32) = sub_248383960();
    *(inited + 40) = v27;
    *(inited + 48) = sub_248383960();
    *(inited + 56) = v28;
    *(inited + 64) = sub_248383960();
    *(inited + 72) = v29;
    v30 = [v6 bundleIdentifier];
    v31 = sub_248383960();
    v33 = v32;

    aBlock = v31;
    v58 = v33;
    MEMORY[0x28223BE20](v34);
    v52[2] = &aBlock;
    LOBYTE(v30) = sub_24815503C(sub_2481614D0, v52, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v30)
    {
      v24 = [objc_allocWithZone(MEMORY[0x277CF91F8]) init];
      v25 = v6;
    }

    else
    {
      v35 = [objc_allocWithZone(MEMORY[0x277D751A0]) init];
      v25 = v6;
      v24 = v35;
    }
  }

  v36 = swift_allocObject();
  v36[2] = v54;
  v36[3] = v17;
  v36[4] = v25;
  v36[5] = v24;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2482B8B74;
  *(v37 + 24) = v36;
  v61 = sub_248282F14;
  v62 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2482BB934;
  v60 = &block_descriptor_11;
  v38 = _Block_copy(&aBlock);
  v39 = v7;
  v40 = v25;

  v4 = [v55 createScene_];
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_32;
  }

  [v4 ui:1 setHitTestsAsOpaque:?];
  [v4 addObserver_];
  v42 = v53;
  swift_beginAccess();
  v43 = *(v1 + v42);
  if ((v43 & 0xC000000000000001) == 0)
  {
    v48 = v4;
    v49 = v6;
    v50 = v48;
    goto LABEL_29;
  }

  if (v43 < 0)
  {
    v44 = *(v1 + v42);
  }

  else
  {
    v44 = v43 & 0xFFFFFFFFFFFFFF8;
  }

  v45 = v4;
  v46 = v6;
  v47 = v45;
  result = sub_248384360();
  if (!__OFADD__(result, 1))
  {
    *(v1 + v42) = sub_2482B6BB4(v44, result + 1);
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v1 + v42);
    sub_2482B71F4(v4, v6, isUniquelyReferenced_nonNull_native);
    *(v1 + v42) = v56;

    swift_endAccess();

    return v4;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24814C7FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_24814C858(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_248384560();

    if (v4)
    {
      sub_24814FB28(0, &unk_27EE91E30, 0x277D0AAC8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24814C91C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_24814C91C(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_24814C960(a1, v2);
}

unint64_t sub_24814C960(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24814FB28(0, &qword_27EE91E40, off_278EFED38);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

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

unint64_t sub_24814CB58()
{
  result = qword_27EE8FFC0;
  if (!qword_27EE8FFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE8FFC0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_24814D350(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  if (([v7 _invalidated] & 1) == 0)
  {
    v14 = [v7 _assertions];
    v15 = type metadata accessor for _DBFocusAssertion();
    v16 = sub_248383B10();

    v35 = a1;
    MEMORY[0x28223BE20](v17);
    v32[2] = &v35;
    v18 = sub_24814D65C(sub_24814D770, v32, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v21 = sub_248383DC0();
      v22 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24839EA80;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = v23;
        v33 = v21;
        v34 = a2;
        v16 = MEMORY[0x277D83B88];
        v21 = MEMORY[0x277D83C10];
        *(v23 + 56) = MEMORY[0x277D83B88];
        *(v23 + 64) = v21;
        *(v23 + 32) = v18 + 1;
        v22 = v22;
        v24 = [v7 _assertions];
        v25 = sub_248383B10();

        if (!(v25 >> 62))
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }
      }

      v26 = sub_248384360();
LABEL_6:

      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v20[12] = v16;
        v20[13] = v21;
        v20[9] = v26 + 1;
        v20[17] = v15;
        v20[18] = sub_24814FBD0(&qword_27EE915D8, v27, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
        v20[14] = a1;
        v28 = a1;
        sub_248382A40(v33, &dword_248146000, v22, "[DBFocusController] Dropping focus assertion (%d/%d) %{public}@", 63, 2, v20);

        v29 = [v7 _assertions];
        v30 = sub_248383B10();

        v35 = v30;
        v31 = sub_248383B00();

        [v7 set:v31 assertions:?];

        sub_248150140(v34, a3, a4, a5, a6);
      }
    }
  }
}

unint64_t sub_24814D65C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v13 = a3;
    v14 = sub_248384360();
    a3 = v13;
    v5 = v14;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v15 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x24C1CBA50](v8 - 1, v15);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v17 = v9;
    v11 = a1(&v17);
  }

  while (!v3 && (v11 & 1) == 0);
  return v5;
}

unint64_t sub_24814D7C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24814D854(v3);
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

uint64_t sub_24814D854(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_248384360();
  }

  return sub_248384480();
}

void sub_24814E20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DBLogForCategory(unint64_t a1)
{
  if (a1 >= 0x1E)
  {
    DBLogForCategory_cold_2();
  }

  if (DBLogForCategory_onceToken != -1)
  {
    DBLogForCategory_cold_1();
  }

  v2 = DBLogForCategory_logObjects[a1];

  return v2;
}

unint64_t sub_24814F470()
{
  v1 = [v0 _assertions];
  type metadata accessor for _DBFocusAssertion();
  v2 = sub_248383B10();

  v17 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_248384360();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while ((v2 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = v6 + 1;
      v7 = *(v2 + 32 + 8 * v6) + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target;
      if (!*(v7 + 16))
      {
        v11 = *v7;
        goto LABEL_15;
      }

LABEL_9:
      v6 = v4;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    result = MEMORY[0x24C1CBA50](v6, v2);
    v4 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_39;
    }

    v9 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target);
    v10 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16);
    v16 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8);
    sub_24814F7DC(v9, v16, v10);
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_24815009C(v9, v16, v10);
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x24C1CB0D0](v11);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v5 = v17;
  }

  while (v4 != v3);
LABEL_24:

  if (v5 >> 62)
  {
    v12 = sub_248384360();
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_26:
    v13 = __OFSUB__(v12, 1);
    result = v12 - 1;
    if (v13)
    {
      __break(1u);
    }

    else if ((v5 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v5 + 8 * result + 32);
LABEL_31:
        v15 = v14;

        return v15;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v14 = MEMORY[0x24C1CBA50](result, v5);
    goto LABEL_31;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_33:

  return 0;
}

uint64_t sub_24814F6F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_24814F7DC(id result, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v5 = result;
    v4 = a2;
    result = v5;
  }

  return result;
}

void sub_24814F838(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_248384360())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650, &unk_24839E4C0);
      v3 = sub_248384420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_248384360();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x24C1CBA50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_248384020();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_24814FB28(0, &unk_27EE91610, 0x277CF0B58);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_248384030();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_248384020();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_24814FB28(0, &unk_27EE91610, 0x277CF0B58);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_248384030();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_24814FB28(uint64_t a1, unint64_t *a2, void *a3)
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

void **sub_24814FB80()
{
  if (qword_27EE95BF0 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E88;
}

uint64_t sub_24814FBD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24814FD30()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = sub_248383930();

    v4 = sub_248383930();
    [v2 appendString:v4 withName:0];

    v5 = sub_248384210();
    v6 = sub_248383930();

    v8 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target);
    v7 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8);
    if (*(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16))
    {
      if (*(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16) == 1)
      {
        v9 = [v8 identity];
        v10 = sub_248383930();

        sub_24815009C(v8, v7, 1);
      }

      else
      {
        v14 = sub_248383930();
        [v2 appendString:v14 withName:0];
      }
    }

    else
    {
      v11 = v8;
      sub_24814F7DC(v8, v7, 0);
      v12 = sub_248383930();

      if (v7)
      {
        v19 = [v7 identity];
        sub_24814FB28(0, &unk_27EE92560, 0x277D0ADC0);
        v13 = sub_248384670();
      }

      else
      {
        v13 = 0;
      }

      v15 = sub_248383930();
      v16 = [v2 appendObject:v13 withName:v15 skipIfNil:1];

      swift_unknownObjectRelease();
    }

    v17 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process);
    v18 = sub_248383930();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24815009C(void *a1, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

void sub_248150140(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_248383DC0();
  v13 = sub_24814FB80();
  v14 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24839C7F0;
  v16 = v14;
  v17 = [v6 focusWindow];
  if (v17)
  {
    v18 = v17;
    v131 = sub_24814FB28(0, &qword_27EE91640, 0x277D75DA0);
    v132 = sub_248151298(&qword_27EE91648, &qword_27EE91640, 0x277D75DA0, MEMORY[0x277D85388]);
    *&v130 = v18;
    sub_24814F6F4(&v130, v15 + 32);
  }

  else
  {
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2482970D8();
    *(v15 + 32) = 0x296C6C756E28;
    *(v15 + 40) = 0xE600000000000000;
  }

  sub_248382A40(v12, &dword_248146000, v16, "[DBFocusController] Current focus window: %{public}@", 52, 2, v15);

  v19 = [v6 _lastAssertion];
  v20 = [v6 _assertions];
  v21 = type metadata accessor for _DBFocusAssertion();
  v22 = sub_248383B10();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_20:

    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v23 = sub_248384360();
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_6:
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_79;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_79:
    v26 = MEMORY[0x24C1CBA50](v25, v22);
    goto LABEL_11;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v26 = *(v22 + 8 * v25 + 32);
LABEL_11:
  v27 = v26;

  if (v19)
  {
    if (v27)
    {
      v28 = sub_248384030();

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  v19 = v27;
  if (v27)
  {
    goto LABEL_21;
  }

LABEL_16:
  v29 = [v6 _lastAssertion];
  if (!v29)
  {
    return;
  }

  if ([v6 _focusDeferral])
  {
    swift_unknownObjectRelease();
    return;
  }

LABEL_22:
  v30 = [v6 _assertions];
  v19 = sub_248383B10();

  if (v19 >> 62)
  {
    v31 = sub_248384360();
    if (v31)
    {
LABEL_24:
      v24 = __OFSUB__(v31, 1);
      v25 = v31 - 1;
      if (!v24)
      {
        if ((v19 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v25 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v32 = *(v19 + 8 * v25 + 32);
LABEL_29:
            v33 = v32;
            goto LABEL_32;
          }

          __break(1u);
          return;
        }

LABEL_83:
        v32 = MEMORY[0x24C1CBA50](v25, v19);
        goto LABEL_29;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  else
  {
    v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_24;
    }
  }

  v33 = 0;
LABEL_32:

  [v6 set:v33 lastAssertion:?];

  v34 = sub_248383DC0();
  v35 = *v13;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24839C7F0;
  v37 = v35;
  v38 = [v6 _lastAssertion];
  if (v38)
  {
    v40 = v38;
    v131 = v21;
    v132 = sub_24814FBD0(&qword_27EE915D8, v39, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
    *&v130 = v40;
    sub_24814F6F4(&v130, v36 + 32);
  }

  else
  {
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_2482970D8();
    *(v36 + 32) = 0x296C6C756E28;
    *(v36 + 40) = 0xE600000000000000;
  }

  sub_248382A40(v34, &dword_248146000, v37, "[DBFocusController] Active focus assertion %{public}@", 53, 2, v36);

  v41 = [v6 _focusDeferral];
  if (v41)
  {
    [v41 invalidate];
    swift_unknownObjectRelease();
  }

  [v6 set:0 focusDeferral:?];
  v42 = [v6 _lastAssertion];
  if (v42)
  {
    v43 = v42;
    v44 = *&v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process];
    if (!v44)
    {
      v49 = sub_248383DC0();
      v50 = *v13;
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_24839C7F0;
      *(v51 + 56) = v21;
      *(v51 + 64) = sub_24814FBD0(&qword_27EE915D8, v52, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
      *(v51 + 32) = v43;
      v53 = v43;
      v54 = v50;
      sub_248382A40(v49, &dword_248146000, v54, "[DBFocusController] Active focus assertion has no process %{public}@", 68, 2, v51);

      goto LABEL_54;
    }

    v45 = &v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    v46 = *&v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    v47 = *&v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8];
    if (v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16])
    {
      if (v42[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16] == 1)
      {
        v48 = v44;
        sub_24814F7DC(v46, v47, 1);
LABEL_47:
        if ([v46 contentState] == 2)
        {
          v128 = v45;
          v57 = [objc_allocWithZone(MEMORY[0x277CF0730]) init];
          v58 = [v6 _display];
          v125 = v57;
          [v57 setDisplay_];

          v59 = [objc_allocWithZone(MEMORY[0x277CF0748]) init];
          v60 = *v128;
          v126 = v43;
          v127 = v44;
          if (v128[16])
          {
            if (v128[16] != 1)
            {
              v64 = 0;
              goto LABEL_58;
            }

            v61 = *(v128 + 1);
            v62 = [v60 identityToken];
            v63 = [v62 stringRepresentation];

            if (!v63)
            {
              sub_248383960();
              v63 = sub_248383930();
            }

            v64 = [objc_opt_self() tokenForString_];

            sub_24815009C(v60, v61, 1);
            v44 = v127;
          }

          else
          {
            v71 = v60;
            v64 = [objc_opt_self() tokenForIdentifierOfCAContext_];
          }

          v72 = v64;
LABEL_58:
          [v59 setToken_];
          v123 = v64;

          v124 = v59;
          [v59 setPid_];
          v73 = 512;
          if (a1 != 32)
          {
            v73 = a1;
          }

          if (a1 == 16)
          {
            v74 = 256;
          }

          else
          {
            v74 = v73;
          }

          v122 = [objc_opt_self() _movementWithHeading_isInitial_fallbackMovementOriginatingFrame_];
          v75 = [objc_allocWithZone(MEMORY[0x277D75510]) initWithFocusMovementInfo_];
          v76 = [v46 carPlaySession];
          if (v76)
          {
            [v76 setTouchpadFeedbackDelegate_];
            swift_unknownObjectRelease();
          }

          v77 = sub_248383DC0();
          v78 = *v13;
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_24839CCA0;
          *(v79 + 56) = sub_24814FB28(0, &qword_27EE915E8, 0x277D75510);
          v80 = MEMORY[0x277D85388];
          *(v79 + 64) = sub_248151298(&unk_27EE915F0, &qword_27EE915E8, 0x277D75510, MEMORY[0x277D85388]);
          *(v79 + 32) = v75;
          *(v79 + 96) = sub_24814FB28(0, &unk_27EE91E30, 0x277D0AAC8);
          *(v79 + 104) = sub_248151298(&unk_27EE91600, &unk_27EE91E30, 0x277D0AAC8, v80);
          *(v79 + 72) = v46;
          v81 = v78;
          v82 = v75;
          v83 = v46;
          sub_248382A40(v77, &dword_248146000, v81, "[DBFocusController] Sending focus movement action %@ to scene %@", 64, 2, v79);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24839C700;
          *(inited + 32) = v82;
          v119 = v82;
          sub_24814F838(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_24814FB28(0, &unk_27EE91610, 0x277CF0B58);
          sub_248151298(&qword_27EE90E30, &unk_27EE91610, 0x277CF0B58, MEMORY[0x277D85378]);
          v85 = sub_248383C70();

          v121 = v83;
          [v83 sendActions_];

          if (v128[16])
          {
            v86 = v127;
            if (v128[16] == 1)
            {
              v87 = sub_248383DC0();
              v88 = *v13;
              v89 = swift_allocObject();
              *(v89 + 16) = xmmword_24839EA80;
              v90 = v88;
              v91 = [v6 _display];
              *(v89 + 56) = sub_24814FB28(0, &qword_27EE91620, 0x277CF0698);
              *(v89 + 64) = sub_248151298(&qword_27EE91628, &qword_27EE91620, 0x277CF0698, MEMORY[0x277D85388]);
              *(v89 + 32) = v91;
              v92 = [v127 pid];
              v93 = MEMORY[0x277D84A20];
              *(v89 + 96) = MEMORY[0x277D849A8];
              *(v89 + 104) = v93;
              *(v89 + 72) = v92;
              v94 = v123;
              if (v123)
              {
                v131 = sub_24814FB28(0, &qword_27EE91630, 0x277CF0650);
                v132 = sub_248151298(&qword_27EE91638, &qword_27EE91630, 0x277CF0650, MEMORY[0x277D85388]);
                *&v130 = v123;
                sub_24814F6F4(&v130, v89 + 112);
              }

              else
              {
                *(v89 + 136) = MEMORY[0x277D837D0];
                *(v89 + 144) = sub_2482970D8();
                *(v89 + 112) = 0x296C6C756E28;
                *(v89 + 120) = 0xE600000000000000;
              }

              v109 = v123;
              sub_248382A40(v87, &dword_248146000, v90, "[DBFocusController] Deferring events for display '%{public}@' to pid: %d, token: %{public}@", 91, 2, v89);

              v108 = v125;
            }

            else
            {
              v106 = sub_248383DC0();
              v107 = *v13;
              sub_248382A40(v106, &dword_248146000, v107, "[DBFocusController] Suspending events for display '%{public}@'", 62, 2, MEMORY[0x277D84F90], v119);

              v108 = v125;
              v94 = v123;
            }
          }

          else
          {
            v95 = *v128;
            v129 = sub_248383DC0();
            v96 = *v13;
            v97 = swift_allocObject();
            *(v97 + 16) = xmmword_24839EA90;
            v98 = v96;
            v99 = [v6 _display];
            *(v97 + 56) = sub_24814FB28(0, &qword_27EE91620, 0x277CF0698);
            v100 = MEMORY[0x277D85388];
            *(v97 + 64) = sub_248151298(&qword_27EE91628, &qword_27EE91620, 0x277CF0698, MEMORY[0x277D85388]);
            *(v97 + 32) = v99;
            v101 = [v95 _contextId];
            v102 = MEMORY[0x277D84D30];
            *(v97 + 96) = MEMORY[0x277D84CC0];
            *(v97 + 104) = v102;
            *(v97 + 72) = v101;
            *(v97 + 136) = sub_24814FB28(0, &qword_27EE91640, 0x277D75DA0);
            *(v97 + 144) = sub_248151298(&qword_27EE91648, &qword_27EE91640, 0x277D75DA0, v100);
            *(v97 + 112) = v95;
            v103 = v95;
            v86 = v127;
            v104 = [v127 pid];
            v105 = MEMORY[0x277D84A20];
            *(v97 + 176) = MEMORY[0x277D849A8];
            *(v97 + 184) = v105;
            *(v97 + 152) = v104;
            v94 = v123;
            if (v123)
            {
              v131 = sub_24814FB28(0, &qword_27EE91630, 0x277CF0650);
              v132 = sub_248151298(&qword_27EE91638, &qword_27EE91630, 0x277CF0650, MEMORY[0x277D85388]);
              *&v130 = v123;
              sub_24814F6F4(&v130, v97 + 192);
            }

            else
            {
              *(v97 + 216) = MEMORY[0x277D837D0];
              *(v97 + 224) = sub_2482970D8();
              *(v97 + 192) = 0x296C6C756E28;
              *(v97 + 200) = 0xE600000000000000;
            }

            v108 = v125;
            v110 = v123;
            sub_248382A40(v129, &dword_248146000, v98, "[DBFocusController] Deferring events for display '%{public}@' to context: 0x%x for window: %{public}@, pid: %d, token: %{public}@", 129, 2, v97);
          }

          v111 = [objc_opt_self() sharedInstance];
          *&v130 = 0;
          *(&v130 + 1) = 0xE000000000000000;
          sub_248384440();

          *&v130 = 0xD000000000000017;
          *(&v130 + 1) = 0x80000002483AE260;
          v112 = [v6 _display];
          v113 = [v112 description];
          v114 = sub_248383960();
          v116 = v115;

          MEMORY[0x24C1CAFD0](v114, v116);

          v117 = sub_248383930();

          v118 = [v111 deferEventsMatchingPredicate:v108 toTarget:v124 withReason:v117];

          [v6 set:v118 focusDeferral:?];
          swift_unknownObjectRelease();

          return;
        }

        v65 = sub_248383DC0();
        v66 = *v13;
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_24839C7F0;
        *(v67 + 56) = v21;
        *(v67 + 64) = sub_24814FBD0(&qword_27EE915D8, v68, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
        *(v67 + 32) = v43;
        v69 = v66;
        v70 = v43;
        sub_248382A40(v65, &dword_248146000, v69, "[DBFocusController] Active focus assertion's scene is not ready", 63, 2, v67);

LABEL_54:

        return;
      }

      v56 = v44;
    }

    else
    {
      v55 = v44;
      sub_24814F7DC(v46, v47, 0);

      if (v47)
      {
        v46 = v47;
        goto LABEL_47;
      }
    }

    v46 = [v6 _rootScene];
    goto LABEL_47;
  }
}

uint64_t sub_248151298(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24814FB28(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

void DBDockController.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) layer];
  [v4 setCornerRadius_];

  v5 = *(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (v5)
  {
    v6 = [v5 layer];
    [v6 setCornerRadius_];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2481542AC()
{
  v6 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews);
  v7 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C1CBA50](0, *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews));
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
  [v0 bounds];
  Width = CGRectGetWidth(v47);
  v11 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v48.origin.x = v4();
  v1 = &selRef_setDamping_;
  [v9 setFrame_];
  v44 = v9;
  if (v7)
  {
    v12 = MEMORY[0x24C1CBA50](1, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v12 = *(v6 + 40);
  }

  v13 = v12;
  v49.origin.x = v4();
  MinY = CGRectGetMinY(v49);
  v50.origin.x = v4();
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v4();
  [v13 setFrame_];
  if (v7)
  {
    v16 = MEMORY[0x24C1CBA50](2, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v16 = *(v6 + 48);
  }

  v17 = v16;
  v52.origin.x = v4();
  MaxY = CGRectGetMaxY(v52);
  [v0 bounds];
  v19 = CGRectGetWidth(v53);
  [v0 bounds];
  Height = CGRectGetHeight(v54);
  v55.origin.x = v4();
  v42 = v17;
  [v17 setFrame_];
  v43 = v13;
  if (v7)
  {
    v21 = MEMORY[0x24C1CBA50](3, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = *(v6 + 56);
  }

  v6 = v21;
  v56.origin.x = v4();
  MaxX = CGRectGetMaxX(v56);
  v57.origin.x = v4();
  v23 = CGRectGetMinY(v57);
  [v0 bounds];
  v24 = CGRectGetWidth(v58);
  v59.origin.x = v4();
  v25 = v24 - CGRectGetMaxX(v59);
  v60.origin.x = v4();
  v26 = [v6 setFrame_];
  v5 = (*((*v11 & *v0) + 0x78))(v26);
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews);
  v2 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v3 + 32);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  v27 = MEMORY[0x24C1CBA50](0, v3);
LABEL_19:
  v28 = v27;
  v29 = ceil(v5 * 1.528665);
  v61.origin.x = v4();
  v30 = CGRectGetMinX(v61);
  v62.origin.x = v4();
  [v28 v1[89]];
  if (v2)
  {
    v31 = MEMORY[0x24C1CBA50](1, v3);
    goto LABEL_23;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = *(v3 + 40);
LABEL_23:
  v32 = v31;
  v63.origin.x = v4();
  v33 = CGRectGetMaxX(v63) - v29;
  v64.origin.x = v4();
  [v32 v1[89]];
  v41 = v28;
  if (v2)
  {
    v34 = v6;
    v35 = v44;
    v36 = MEMORY[0x24C1CBA50](2, v3);
    goto LABEL_27;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = v6;
  v35 = v44;
  v36 = *(v3 + 48);
LABEL_27:
  v37 = v36;
  v65.origin.x = v4();
  v38 = CGRectGetMaxX(v65) - v29;
  v66.origin.x = v4();
  [v37 v1[89]];
  if (!v2)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v39 = *(v3 + 56);
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    return;
  }

  v39 = MEMORY[0x24C1CBA50](3, v3);
LABEL_31:
  v45 = v39;
  v67.origin.x = v4();
  v40 = CGRectGetMinX(v67);
  v68.origin.x = v4();
  [v45 v1[89]];
}

double DBDashboardDimmingView.contentFrame.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame;
  swift_beginAccess();
  return *v1;
}

double DBDashboardDimmingView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248154F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_248384780();
  sub_2483839E0();
  v6 = sub_2483847B0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_248384680() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24815503C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL DBFetchPreferencesBoolean(const __CFString *a1, const __CFString *a2)
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(a1, a2, &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

Swift::Void __swiftcall DBDockController.siriPresentedIntent(forBundleIdentifier:)(Swift::String_optional forBundleIdentifier)
{
  object = forBundleIdentifier.value._object;
  v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController) appDockViewController];
  v7 = v3;
  if (object)
  {
    v4 = sub_248383930();
    [v7 setActiveBundleIdentifier:v4 animated:1];

    v5 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v6 = [v5 analytics];

    if (!v6)
    {
      return;
    }

    v7 = sub_248383930();
    [v6 siriDidStartHostingBundleIdentifier_];
  }

  else
  {
    [v3 setActiveBundleIdentifier:0 animated:1];
  }
}

void sub_2481557C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = [a1 definition];
  v19 = [v18 clientIdentity];

  LOBYTE(v18) = [v19 isLocal];
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = type metadata accessor for _DBFocusAssertion();
    v21 = objc_allocWithZone(v20);

    v22 = a1;
    swift_unknownObjectWeakInit();
    v23 = OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process;
    *&v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process] = 0;
    v24 = &v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__name];
    *v24 = a3;
    *(v24 + 1) = a4;
    *&v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority] = a2;
    v25 = &v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    *v25 = v22;
    *(v25 + 1) = 0;
    v25[16] = 1;
    v26 = v22;
    v27 = [v26 clientHandle];
    v28 = [v27 processHandle];

    v29 = *&v21[v23];
    *&v21[v23] = v28;

    v31.receiver = v21;
    v31.super_class = v20;
    v30 = objc_msgSendSuper2(&v31, sel_init);
    [v26 addObserver_];

    swift_unknownObjectWeakAssign();
    sub_2481559B4(v30, a5, a6, a7, a8, a9);
  }
}

void sub_2481559B4(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ([v6 _invalidated])
  {
    return;
  }

  v12 = [v6 _assertions];
  v13 = type metadata accessor for _DBFocusAssertion();
  v14 = sub_248383B10();

  v38 = a2;
  v39 = v6;
  v40 = v13;
  v15 = (v14 & 0xFFFFFFFFFFFFFF8);
  if (v14 >> 62)
  {
LABEL_30:
    v16 = sub_248384360();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  p_cb = &OBJC_PROTOCOL___DBClimateOverlayDelegate.cb;
  v19 = OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority;
  while (v16 != v17)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C1CBA50](v17, v14);
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v20 = *(v14 + 8 * v17 + 32);
    }

    v21 = (v17 + 1);
    v22 = __OFADD__(v17, 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v23 = v16;
    v24 = *&v20[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority];

    ++v17;
    v25 = *&a1[v19] >= v24;
    v16 = v23;
    if (!v25)
    {

      v16 = (v17 - 1);
      goto LABEL_19;
    }
  }

  v21 = v16 + 1;
  v22 = __OFADD__(v16, 1);
LABEL_19:
  v26 = sub_248383DC0();
  v27 = *sub_24814FB80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24839EA80;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v17 = v28;
    v37 = v26;
    p_cb = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v14;
    *(v28 + 32) = v21;
    v15 = v27;
    v27 = v39;
    v29 = [v39 _assertions];
    v30 = sub_248383B10();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }
  }

  v31 = sub_248384360();
LABEL_22:

  if (__OFADD__(v31, 1))
  {
    __break(1u);
LABEL_34:
    if (sub_248384360() >= v16)
    {
      goto LABEL_25;
    }

LABEL_35:
    __break(1u);
    return;
  }

  *(v17 + 96) = p_cb;
  *(v17 + 104) = v14;
  *(v17 + 72) = v31 + 1;
  *(v17 + 136) = v40;
  *(v17 + 144) = sub_24814FBD0(&qword_27EE915D8, v32, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
  *(v17 + 112) = a1;
  v26 = a1;
  sub_248382A40(v37, &dword_248146000, v15, "[DBFocusController] Adding focus assertion (%d/%d) %{public}@", 61, 2, v17);

  v33 = [v27 _assertions];
  v34 = sub_248383B10();

  if (v34 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16)
  {
    goto LABEL_35;
  }

LABEL_25:
  v35 = v26;
  sub_248155DA8(v16, v16, v35);

  v36 = sub_248383B00();

  [v27 set:v36 assertions:?];

  sub_248150140(v38, a3, a4, a5, a6);
}

char *sub_248155DA8(uint64_t a1, char *a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_248384360();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = &v6[-v7];
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_248384360();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_248156154(result, 1);

  return sub_2481561F4(v7, v6, 1, v4);
}

uint64_t sub_248156154(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_248384360();
LABEL_9:
  result = sub_248384480();
  *v2 = result;
  return result;
}

char *sub_2481561F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for _DBFocusAssertion();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_248384360();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_248384360();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

__CFString *NSStringFromLockoutState(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Locked";
  }

  if (a1 == 2)
  {
    return @"Unlocked";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromHomeScreenPageType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278F02E00[a1 - 1];
  }
}

void sub_248158FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_248159ED4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v2 = ceil(v1() * 1.528665);
  v3 = [v0 traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = v2 * v5;
  v7 = v1();
  v8 = [v0 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_overlayColor);
  v12 = [v0 traitCollection];
  v20 = [v11 resolvedColorWithTraitCollection_];

  v13 = DBGenerateUpperLeftCornerImage(v20, 0, v6, v7 * v10);
  v14 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews);
  if (v14 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C1CBA50](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 setImage_];

      ++v16;
      if (v19 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_24815A108(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = 0.15;
  if (v1 != 2)
  {
    v3 = 0.11;
  }

  return [v2 initWithWhite:0.0 alpha:v3];
}

id DBGenerateUpperLeftCornerImage(void *a1, int a2, CGFloat a3, double a4)
{
  v7 = *MEMORY[0x277CBF448];
  v8 = a1;
  v9 = CGColorSpaceCreateWithName(v7);
  v10 = a2 ^ 1;
  v11 = CGBitmapContextCreate(0, a3, a3, 8uLL, 0, v9, a2 ^ 1u);
  CGColorSpaceRelease(v9);
  CGContextTranslateCTM(v11, 0.0, a3);
  CGContextScaleCTM(v11, 1.0, -1.0);
  v12 = [v8 CGColor];

  CGContextSetFillColorWithColor(v11, v12);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a3;
  v20.size.height = a3;
  CGContextFillRect(v11, v20);
  if (a2)
  {
    v13 = kCGBlendModeSourceAtop;
  }

  else
  {
    v13 = kCGBlendModeDestinationOut;
  }

  CGContextSetBlendMode(v11, v13);
  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a3 * 4.0, a3 * 4.0, a4}];
  if (v10)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v15 = ;
  CGContextSetFillColorWithColor(v11, [v15 CGColor]);

  CGContextAddPath(v11, [v14 CGPath]);
  CGContextFillPath(v11);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  v17 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGImageRelease(Image);

  return v17;
}

id sub_24815A7A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void DBPowerChangeCallback(void *a1)
{
  v1 = a1;
  v2 = [v1 analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __DBPowerChangeCallback_block_invoke;
  v4[3] = &unk_278F01580;
  v5 = v1;
  v3 = v1;
  [v2 addOperationWithBlock:v4];
}

void sub_24815B6EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (v2)
  {
    v11 = v2;
    v3 = [v2 layer];
    [v11 setHighlighted_];
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = [v0 layer];
      [v6 setCornerCurve_];

      v7 = [v0 layer];
      [v7 setMasksToBounds_];

      v8 = [v0 layer];
      (*((*v1 & *v0) + 0x80))();
      [v8 setCornerRadius_];

      [v3 setCornerRadius_];
      [*(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView) setHidden_];
    }

    else
    {
      (*((*v1 & *v0) + 0x80))([*(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView) setHidden_]);
      [v3 setCornerRadius_];
      [v3 setCornerCurve_];
      v9 = [v0 layer];
      [v9 setCornerRadius_];

      v10 = [v0 layer];
      [v10 setMasksToBounds_];
    }
  }
}

void *sub_24815B9A0()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

char *DBDashboardPlatterView.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() blackColor];
  [v1 setBackgroundColor_];

  [v1 setAlpha_];
  v3 = [v1 layer];
  [v3 setCompositingFilter_];

  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView] = v1;
  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius] = 0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for DBDashboardPlatterView();
  v4 = v1;
  v5 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 setAllowsGroupBlending_];

  if (qword_27EE97870 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = [v5 traitCollection];

  sub_24814FB28(0, &qword_27EE8FD88, 0x277D75C80);
  sub_24815C150();
  v10 = sub_248383880();
  v11 = [objc_opt_self() materialViewWithRecipeNamesByTraitCollection:v10 inBundle:v8 options:0 initialWeighting:0 scaleAdjustment:v9 compatibleWithTraitCollection:1.0];

  if (v11)
  {
    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = sub_248383930();
    [v12 setGroupNameBase_];

    v14 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView;
    swift_beginAccess();
    v15 = *&v5[v14];
    *&v5[v14] = v11;
    v16 = v12;

    [v5 addSubview_];
    [v5 addSubview_];
    v47 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24839FA10;
    v18 = [v16 leadingAnchor];
    v19 = [v5 &selRef_length + 1];
    v20 = [v18 constraintEqualToAnchor_];

    *(v17 + 32) = v20;
    v21 = [v16 trailingAnchor];
    v22 = [v5 &selRef_systemImageNamed_withConfiguration_ + 4];
    v23 = [v21 constraintEqualToAnchor_];

    *(v17 + 40) = v23;
    v24 = [v16 topAnchor];
    v25 = [v5 topAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v17 + 48) = v26;
    v27 = [v16 bottomAnchor];

    v28 = [v5 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v17 + 56) = v29;
    v30 = [v4 leadingAnchor];
    v31 = [v5 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v17 + 64) = v32;
    v33 = [v4 trailingAnchor];
    v34 = [v5 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v17 + 72) = v35;
    v36 = [v4 topAnchor];
    v37 = [v5 topAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v17 + 80) = v38;
    v39 = [v4 bottomAnchor];
    v40 = [v5 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v17 + 88) = v41;
    sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
    v42 = sub_248383B00();

    [v47 activateConstraints_];

    sub_24815B6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90, &unk_24839CCF0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_24839C7F0;
    v44 = sub_248382C50();
    v45 = MEMORY[0x277D74BF0];
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    MEMORY[0x24C1CB580](v43, sel_updateMaterial);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v5;
}

unint64_t sub_24815C150()
{
  result = qword_27EE934D8;
  if (!qword_27EE934D8)
  {
    sub_24814FB28(255, &qword_27EE8FD88, 0x277D75C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE934D8);
  }

  return result;
}

double DBDashboardPlatterView.platterCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24815C5E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_24815C68C(void *a1, uint64_t a2)
{
  v4 = sub_2483837A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2483837E0();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  v11 = sub_248383E50();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24815CA2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_94;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
  sub_24815C9C8();
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_24815C92C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24815C970()
{
  result = qword_27EE91EB0;
  if (!qword_27EE91EB0)
  {
    sub_2483837A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91EB0);
  }

  return result;
}

unint64_t sub_24815C9C8()
{
  result = qword_27EE91EC0;
  if (!qword_27EE91EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE90290, &qword_24839D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91EC0);
  }

  return result;
}

void sub_24815CA2C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 process];
    v5 = [v4 bundle];

    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [v5 identifier];

    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 sharedInstance];
    v10 = [v9 applicationWithBundleIdentifier_];

    if (v10)
    {
      v11 = [v1 state];
      if (v11)
      {
        v12 = v11;
        if ([v11 isRunning])
        {
          v13 = [v1 previousState];
          if (!v13)
          {
            v15 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
            swift_beginAccess();
            v16 = *&v3[v15];

            v17 = sub_24814C858(v10, v16);

            if (v17)
            {

              v10 = v17;
            }

            else
            {
              v18 = [*&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__iconProvider] isIconVisibleForIdentifier_];

              if (v18)
              {
                sub_2482B5E5C(v10);
              }
            }

            goto LABEL_13;
          }

          v14 = v13;
        }

        else
        {
        }

        v10 = v12;
      }

      else
      {
      }
    }

    else
    {
      v10 = v8;
    }

LABEL_13:

LABEL_14:
  }
}

void sub_24815E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24815F1F0(uint64_t *a1, uint64_t a2)
{
  v116 = a2;
  v138 = sub_2483812C0();
  v140 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v115 = &v114 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v114 - v7;
  v136 = sub_248381320();
  v9 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v114 - v12;
  v13 = sub_2483812F0();
  v141 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v121 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v114 - v16;
  MEMORY[0x28223BE20](v17);
  v129 = &v114 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v114 - v20;
  MEMORY[0x28223BE20](v21);
  v137 = &v114 - v22;
  MEMORY[0x28223BE20](v23);
  v130 = &v114 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v118 = &v114 - v27;
  v28 = *a1;
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  v133 = v28;
  v139 = v29;
  v117 = v9;
  if (v29)
  {
    v31 = 0;
    v126 = (v141 + 16);
    LODWORD(v125) = *MEMORY[0x277CB9600];
    v124 = (v9 + 104);
    v123 = (v9 + 8);
    v119 = (v141 + 8);
    v122 = v141 + 32;
    v32 = v118;
    v127 = v8;
    v33 = v134;
    while (v31 < *(v28 + 16))
    {
      v132 = ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v131 = *(v141 + 72);
      (*(v141 + 16))(v32, &v132[v28 + v131 * v31], v13, v26);
      v34 = v32;
      sub_2483812E0();
      v35 = v13;
      v37 = v135;
      v36 = v136;
      (*v124)(v135, v125, v136);
      v38 = sub_248381310();
      v39 = *v123;
      (*v123)(v37, v36);
      v39(v33, v36);
      if (v38)
      {
        v40 = *v122;
        (*v122)(v130, v34, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = v30;
        v13 = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v34;
        }

        else
        {
          sub_248160124(0, *(v30 + 16) + 1, 1);
          v32 = v118;
          v30 = v142;
        }

        v43 = v131;
        v42 = v132;
        v45 = *(v30 + 16);
        v44 = *(v30 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_248160124((v44 > 1), v45 + 1, 1);
          v32 = v118;
          v30 = v142;
        }

        *(v30 + 16) = v45 + 1;
        v40(&v42[v30 + v45 * v43], v130, v13);
      }

      else
      {
        (*v119)(v34, v35);
        v13 = v35;
        v32 = v34;
      }

      ++v31;
      v28 = v133;
      v8 = v127;
      if (v139 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_13:
  v46 = *(v30 + 16);
  if (v46)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v46, 0);
    v47 = v142;
    v132 = *(v141 + 16);
    v48 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v126 = v30;
    v49 = v30 + v48;
    v50 = *(v141 + 72);
    v51 = (v141 + 8);
    v130 = v140 + 32;
    v131 = v50;
    do
    {
      v52 = v137;
      (v132)(v137, v49, v13);
      sub_2483812D0();
      (*v51)(v52, v13);
      v142 = v47;
      v53 = v8;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      v56 = v47;
      if (v55 >= v54 >> 1)
      {
        sub_248160168((v54 > 1), v55 + 1, 1);
        v56 = v142;
      }

      *(v56 + 16) = v55 + 1;
      (*(v140 + 32))(v56 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v55, v53, v138);
      v49 += v131;
      --v46;
      v47 = v56;
      v8 = v53;
    }

    while (v46);
    v122 = v56;
  }

  else
  {

    v122 = MEMORY[0x277D84F90];
  }

  v57 = MEMORY[0x277D84F90];
  if (v139)
  {
    v58 = 0;
    v130 = v141 + 16;
    LODWORD(v127) = *MEMORY[0x277CB95F0];
    v126 = (v117 + 104);
    v59 = (v117 + 8);
    v123 = (v141 + 8);
    v125 = (v141 + 32);
    v124 = (v117 + 8);
    while (v58 < *(v28 + 16))
    {
      v60 = v57;
      v132 = ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v131 = *(v141 + 72);
      v61 = v128;
      (*(v141 + 16))(v128, &v132[v28 + v131 * v58], v13);
      v62 = v134;
      sub_2483812E0();
      v63 = v13;
      v65 = v135;
      v64 = v136;
      (*v126)(v135, v127, v136);
      v66 = sub_248381310();
      v67 = *v59;
      (*v59)(v65, v64);
      v67(v62, v64);
      if (v66)
      {
        v68 = *v125;
        (*v125)(v129, v61, v63);
        v57 = v60;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v142 = v60;
        v13 = v63;
        if ((v69 & 1) == 0)
        {
          sub_248160124(0, *(v60 + 2) + 1, 1);
          v57 = v142;
        }

        v70 = v132;
        v28 = v133;
        v71 = v131;
        v73 = *(v57 + 16);
        v72 = *(v57 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_248160124((v72 > 1), v73 + 1, 1);
          v57 = v142;
        }

        *(v57 + 16) = v73 + 1;
        (v68)(&v70[v57 + v73 * v71], v129, v13);
        v59 = v124;
      }

      else
      {
        (*v123)(v61, v63);
        v13 = v63;
        v28 = v133;
        v57 = v60;
      }

      if (v139 == ++v58)
      {
        goto LABEL_31;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

LABEL_31:
  v74 = *(v57 + 16);
  if (v74)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v74, 0);
    v75 = v142;
    v132 = *(v141 + 16);
    v76 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v129 = v57;
    v77 = (v57 + v76);
    v78 = *(v141 + 72);
    v79 = (v141 + 8);
    v130 = v140 + 32;
    v131 = v78;
    v80 = v115;
    do
    {
      v81 = v137;
      (v132)(v137, v77, v13);
      sub_2483812D0();
      (*v79)(v81, v13);
      v142 = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      v84 = v75;
      if (v83 >= v82 >> 1)
      {
        sub_248160168((v82 > 1), v83 + 1, 1);
        v84 = v142;
      }

      *(v84 + 16) = v83 + 1;
      (*(v140 + 32))(v84 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v83, v80, v138);
      v77 += v131;
      --v74;
      v75 = v84;
    }

    while (v74);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v85 = MEMORY[0x277D84F90];
  v124 = v75;
  if (v139)
  {
    v86 = 0;
    v128 = (v141 + 16);
    LODWORD(v127) = *MEMORY[0x277CB9610];
    v126 = (v117 + 104);
    v125 = (v117 + 8);
    v123 = (v141 + 8);
    v129 = (v141 + 32);
    v87 = v134;
    while (v86 < *(v28 + 16))
    {
      v131 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v132 = v85;
      v130 = *(v141 + 72);
      v88 = v120;
      (*(v141 + 16))(v120, v28 + v131 + v130 * v86, v13);
      sub_2483812E0();
      v89 = v13;
      v91 = v135;
      v90 = v136;
      (*v126)(v135, v127, v136);
      v92 = sub_248381310();
      v93 = *v125;
      (*v125)(v91, v90);
      v93(v87, v90);
      if (v92)
      {
        v94 = *v129;
        (*v129)(v121, v88, v89);
        v85 = v132;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v142 = v85;
        v13 = v89;
        if ((v95 & 1) == 0)
        {
          sub_248160124(0, *(v85 + 2) + 1, 1);
          v85 = v142;
        }

        v28 = v133;
        v97 = *(v85 + 2);
        v96 = *(v85 + 3);
        if (v97 >= v96 >> 1)
        {
          sub_248160124((v96 > 1), v97 + 1, 1);
          v85 = v142;
        }

        *(v85 + 2) = v97 + 1;
        v94(&v85[v131 + v97 * v130], v121, v89);
        v75 = v124;
      }

      else
      {
        (*v123)(v88, v89);
        v13 = v89;
        v85 = v132;
        v28 = v133;
      }

      if (v139 == ++v86)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_68;
  }

LABEL_49:
  v98 = *(v85 + 2);
  if (v98)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v98, 0);
    v99 = v142;
    v139 = *(v141 + 16);
    v100 = &v85[(*(v141 + 80) + 32) & ~*(v141 + 80)];
    v101 = *(v141 + 72);
    v141 += 16;
    v102 = (v141 - 8);
    v135 = (v140 + 32);
    v136 = v101;
    v103 = v114;
    do
    {
      v104 = v137;
      v139(v137, v100, v13);
      sub_2483812D0();
      (*v102)(v104, v13);
      v142 = v99;
      v106 = *(v99 + 16);
      v105 = *(v99 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_248160168((v105 > 1), v106 + 1, 1);
        v99 = v142;
      }

      *(v99 + 16) = v106 + 1;
      (*(v140 + 32))(v99 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v106, v103, v138);
      v100 += v136;
      --v98;
    }

    while (v98);

    v75 = v124;
  }

  else
  {

    v99 = MEMORY[0x277D84F90];
  }

  v107 = v122;
  if (*(v122 + 16))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v109 = Strong;
      sub_2481601AC(v107);
    }
  }

  if (*(v75 + 16))
  {
    swift_beginAccess();
    v110 = swift_unknownObjectWeakLoadStrong();
    if (v110)
    {
      v111 = v110;
      sub_248309FC8(v75);
    }
  }

  if (*(v99 + 16))
  {
    swift_beginAccess();
    v112 = swift_unknownObjectWeakLoadStrong();
    if (v112)
    {
      v113 = v112;
      sub_248162194(v99);
    }
  }
}

void *sub_248160124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_248161FB4(a1, a2, a3, *v3, &qword_27EE93778, &qword_2483A10B0, MEMORY[0x277CB93B0]);
  *v3 = result;
  return result;
}

void *sub_248160168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_248161FB4(a1, a2, a3, *v3, &qword_27EE93760, &unk_2483A1098, MEMORY[0x277CB92E0]);
  *v3 = result;
  return result;
}

uint64_t sub_2481601AC(uint64_t a1)
{
  v59 = sub_2483812C0();
  v2 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_248160784();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_248382A80();
  v16 = sub_248383DC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v9;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&dword_248146000, v15, v16, "Received active %ld activity descriptors", v18, 0xCu);
    v19 = v18;
    v9 = v17;
    MEMORY[0x24C1CD5F0](v19, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  v20 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  v21 = v57;
  swift_beginAccess();
  v56 = v20;
  v22 = *(v21 + v20);
  v23 = v59;
  v54 = *(a1 + 16);
  if (v54)
  {
    v25 = *(v2 + 16);
    v24 = v2 + 16;
    v55 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v53 = a1 + v55;
    v60 = *(v24 + 56);
    v61 = v25;
    v26 = (v24 - 8);
    v62 = v24;
    v50 = v22;
    v51 = (v24 + 16);

    v27 = 0;
    while (2)
    {
      v28 = v53 + v60 * v27;
      v58 = v27 + 1;
      v29 = v9;
      v61(v9, v28, v23);
      v30 = *(v57 + v56);
      v31 = *(v30 + 16);
      v32 = v30 + v55;

      v34 = -v31;
      v35 = -1;
      while (v34 + v35 != -1)
      {
        if (++v35 >= *(v30 + 16))
        {
          __break(1u);
          return result;
        }

        v61(v6, v32, v23);
        v38 = sub_2483812A0();
        v40 = v39;
        if (v38 == sub_2483812A0() && v40 == v41)
        {

          v37 = *v26;
          v23 = v59;
          (*v26)(v6, v59);
LABEL_6:

          v9 = v29;
          v27 = v58;
          v37(v9, v23);
          goto LABEL_7;
        }

        v32 += v60;
        v36 = sub_248384680();

        v37 = *v26;
        v23 = v59;
        result = (*v26)(v6, v59);
        if (v36)
        {
          goto LABEL_6;
        }
      }

      v9 = v29;
      v61(v52, v29, v23);
      v43 = v56;
      v42 = v57;
      swift_beginAccess();
      v44 = *(v42 + v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + v43) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_24830AA40(0, *(v44 + 2) + 1, 1, v44);
        *(v57 + v56) = v44;
      }

      v27 = v58;
      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v44 = sub_24830AA40((v46 > 1), v47 + 1, 1, v44);
      }

      *(v44 + 2) = v47 + 1;
      (*v51)(&v44[v55 + v47 * v60], v52, v23);
      *(v57 + v56) = v44;
      swift_endAccess();
      (*v26)(v9, v23);
LABEL_7:
      if (v27 != v54)
      {
        continue;
      }

      break;
    }

    v22 = v50;
  }

  else
  {
  }

  v49 = sub_24830A82C(v48, v22);

  if ((v49 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *v57) + 0x148))(result);
  }

  return result;
}

uint64_t sub_2481607A8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_2483812C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_248160B4C(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_24830ADC4(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_248160B4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_2483812C0() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_248160C38()
{
  v1 = v0;
  v76 = sub_2483813B0();
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2483812C0();
  v89 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v90 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled);
  v21 = sub_248160784();
  v22 = v12;
  v25 = *(v12 + 16);
  v24 = v12 + 16;
  v23 = v25;
  if (v20 == 1)
  {
    v86 = v24;
    v87 = v21;
    v85 = v23;
    (v23)(v19);
    v26 = sub_248382A80();
    v27 = sub_248383DC0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v7;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_248146000, v26, v27, "Updating active descriptor list", v29, 2u);
      v30 = v29;
      v7 = v28;
      MEMORY[0x24C1CD5F0](v30, -1, -1);
    }

    v31 = *(v22 + 8);
    v88 = v22 + 8;
    v84 = v31;
    v32 = (v31)(v19, v11);
    v33 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
    v69 = v1;
    v34 = v33(v32);
    v36 = v90;
    v37 = v77;
    v83 = *(v34 + 16);
    v91 = v3;
    if (v83)
    {
      v38 = 0;
      v81 = v89 + 16;
      v72 = v80 + 1;
      *&v35 = 136315394;
      v71 = v35;
      v80 = (v89 + 8);
      v79 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73 = v11;
      v82 = v10;
      v70 = v7;
      while (v38 < *(v34 + 16))
      {
        v40 = *(v89 + 16);
        v40(v10, v34 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v38, v3);
        v85(v37, v87, v11);
        v40(v7, v10, v3);
        v40(v36, v10, v3);
        v41 = sub_248382A80();
        v42 = v7;
        v43 = sub_248383DC0();
        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v92[0] = v78;
          *v44 = v71;
          v45 = v42;
          v46 = sub_2483812A0();
          v48 = v47;
          v39 = *v80;
          (*v80)(v45, v91);
          v49 = sub_24814A378(v46, v48, v92);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          v50 = v34;
          v51 = v75;
          sub_2483812B0();
          v52 = sub_2483813A0();
          v54 = v53;
          v55 = v51;
          v34 = v50;
          (*v72)(v55, v76);
          v39(v90, v91);
          v56 = sub_24814A378(v52, v54, v92);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_248146000, v41, v43, "Descriptor id: %s, requester: %s", v44, 0x16u);
          v57 = v78;
          swift_arrayDestroy();
          v3 = v91;
          v11 = v73;
          MEMORY[0x24C1CD5F0](v57, -1, -1);
          v58 = v44;
          v36 = v90;
          MEMORY[0x24C1CD5F0](v58, -1, -1);

          v37 = v77;
          v84(v77, v11);
          v7 = v70;
        }

        else
        {

          v7 = v42;
          v39 = *v80;
          (*v80)(v36, v3);
          v39(v7, v3);
          v84(v37, v11);
        }

        ++v38;
        v10 = v82;
        v39(v82, v3);
        if (v83 == v38)
        {
          goto LABEL_14;
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    else
    {
LABEL_14:
      v63 = [*(v69 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8, &qword_2483A1040);
      v37 = sub_248383B10();

      v74 = v34;
      if (!(v37 >> 62))
      {
        v64 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v64)
        {
LABEL_30:
        }

LABEL_16:
        v65 = 0;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x24C1CBA50](v65, v37);
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v65 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v66 = *(v37 + 8 * v65 + 32);
            swift_unknownObjectRetain();
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          if ([v66 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v68 = sub_248383B00();
            [v66 didUpdateLiveActivitiesWithActivityDescriptors_];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v65;
          if (v67 == v64)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v64 = sub_248384360();
    if (!v64)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v23(v14, v21, v11);
  v59 = sub_248382A80();
  v60 = sub_248383DC0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_248146000, v59, v60, "Live activities disabled, dismissing all", v61, 2u);
    MEMORY[0x24C1CD5F0](v61, -1, -1);
  }

  return (*(v22 + 8))(v14, v11);
}

uint64_t sub_2481614D0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_248384680() & 1;
  }
}

void *sub_248161FB4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_2481621C8(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t *))
{
  v38 = a4;
  v39 = a3;
  v6 = v4;
  v8 = sub_2483812C0();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_248160784();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;

  v17 = sub_248382A80();
  v18 = sub_248383DC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a2;
    v20 = v19;
    *v19 = 134217984;
    *(v19 + 4) = *(v16 + 16);

    _os_log_impl(&dword_248146000, v17, v18, v37, v20, 0xCu);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  else
  {
  }

  v21 = (*(v12 + 8))(v14, v11);
  v22 = *(v16 + 16);
  if (!v22)
  {
    return (*((*MEMORY[0x277D85000] & *v6) + 0x148))(v21);
  }

  v23 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  v24 = *(v40 + 16);
  v36 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers;
  v37 = v24;
  v25 = v16 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v26 = *(v40 + 72);
  v40 += 16;
  v34 = (v40 - 8);
  v35 = v26;
  while (1)
  {
    v27 = (v37)(v10, v25, v8);
    MEMORY[0x28223BE20](v27);
    *(&v33 - 2) = v10;
    swift_beginAccess();
    result = sub_2481607A8(v39, (&v33 - 4));
    v29 = *(*(v6 + v23) + 16);
    if (v29 < result)
    {
      break;
    }

    sub_248162690(result, v29);
    swift_endAccess();
    v30 = [*(v6 + v36) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8, &qword_2483A1040);
    v31 = sub_248383B10();

    MEMORY[0x28223BE20](v32);
    *(&v33 - 2) = v10;
    sub_248162898(v38, (&v33 - 4), v31);

    v21 = (*v34)(v10, v8);
    v25 += v35;
    if (!--v22)
    {
      return (*((*MEMORY[0x277D85000] & *v6) + 0x148))(v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481625F8(uint64_t a1)
{
  v1 = sub_2483812A0();
  v3 = v2;
  if (v1 == sub_2483812A0() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_248384680();
  }

  return v6 & 1;
}

unint64_t sub_248162690(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24830AA40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_248162750(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_248162750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_2483812C0();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void (*sub_248162898(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1CBA50](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_248384360();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2481629DC(id *a1)
{
  v1 = *a1;
  result = [*a1 respondsToSelector_];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_2483812A0();
    v3 = sub_248383930();
    [v1 didDismissLiveActivityWithActivityIdentifier_];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_2481630A8(void *a1)
{
  v3 = sub_2483813B0();
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v80 - v10;
  v12 = sub_2483812C0();
  v93 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v91 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v90 = &v80 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0, &unk_2483A1030);
  MEMORY[0x28223BE20](v22 - 8);
  v89 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x28223BE20](v24).n128_u64[0];
  if (a1)
  {
    v82 = v3;
    v85 = v11;
    v88 = &v80 - v25;
    v92 = v12;
    v27 = [a1 activityIdentifier];
    v28 = sub_248383960();
    v30 = v29;

    if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled) == 1)
    {
      v83 = v18;
      v84 = v5;
      v81 = v6;
      v31 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
      v80 = v1;
      v32 = v31();
      v33 = *(v32 + 16);
      v35 = v92;
      v34 = v93;
      if (v33)
      {
        v36 = 0;
        v37 = (v93 + 8);
        while (v36 < *(v32 + 16))
        {
          (*(v34 + 16))(v21, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, v35);
          if (sub_2483812A0() == v28 && v38 == v30)
          {

LABEL_16:

            v34 = v93;
            v44 = v88;
            (*(v93 + 32))(v88, v21, v35);
            v40 = 0;
            v42 = v83;
            v41 = v84;
            v43 = v81;
            goto LABEL_17;
          }

          v39 = sub_248384680();

          if (v39)
          {

            v35 = v92;
            goto LABEL_16;
          }

          ++v36;
          v35 = v92;
          (*v37)(v21, v92);
          v34 = v93;
          if (v33 == v36)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_10:

        v40 = 1;
        v42 = v83;
        v41 = v84;
        v43 = v81;
        v44 = v88;
LABEL_17:
        v50 = v90;
        v49 = v91;
        v51 = v89;
        (*(v34 + 56))(v44, v40, 1, v35);
        sub_248232C78(v44, v51, &qword_27EE936F0, &unk_2483A1030);
        if ((*(v34 + 48))(v51, 1, v35) == 1)
        {
          sub_24822D578(v44, &qword_27EE936F0, &unk_2483A1030);
          sub_24822D578(v51, &qword_27EE936F0, &unk_2483A1030);
        }

        else
        {
          (*(v34 + 32))(v42, v51, v35);
          v52 = sub_248160784();
          v53 = v85;
          (*(v43 + 16))(v85, v52, v41);
          v54 = v34;
          v55 = *(v34 + 16);
          v55(v50, v42, v35);
          v55(v49, v42, v35);
          v56 = sub_248382A80();
          v57 = sub_248383DC0();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v94[0] = v93;
            *v58 = 136315394;
            LODWORD(v92) = v57;
            v59 = sub_2483812A0();
            v60 = v35;
            v61 = v49;
            v63 = v62;
            v91 = v56;
            v64 = *(v54 + 8);
            v64(v50, v60);
            v65 = sub_24814A378(v59, v63, v94);

            *(v58 + 4) = v65;
            *(v58 + 12) = 2080;
            v66 = v86;
            sub_2483812B0();
            v67 = sub_2483813A0();
            v69 = v68;
            (*(v87 + 8))(v66, v82);
            v70 = v61;
            v35 = v60;
            v64(v70, v60);
            v71 = v64;
            v72 = sub_24814A378(v67, v69, v94);

            *(v58 + 14) = v72;
            v73 = v91;
            _os_log_impl(&dword_248146000, v91, v92, "Alert descriptor id: %s, requester: %s", v58, 0x16u);
            v74 = v93;
            swift_arrayDestroy();
            MEMORY[0x24C1CD5F0](v74, -1, -1);
            MEMORY[0x24C1CD5F0](v58, -1, -1);

            (*(v43 + 8))(v85, v84);
          }

          else
          {

            v75 = *(v54 + 8);
            v75(v49, v35);
            v75(v50, v35);
            v71 = v75;
            (*(v43 + 8))(v53, v84);
          }

          v76 = [*(v80 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8, &qword_2483A1040);
          v77 = sub_248383B10();

          MEMORY[0x28223BE20](v78);
          v79 = v83;
          *(&v80 - 2) = v83;
          sub_248162898(sub_24830B258, (&v80 - 4), v77);

          sub_24822D578(v88, &qword_27EE936F0, &unk_2483A1030);
          v71(v79, v35);
        }
      }
    }

    else
    {

      v45 = sub_248160784();
      (*(v6 + 16))(v8, v45, v5);
      v46 = sub_248382A80();
      v47 = sub_248383DC0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_248146000, v46, v47, "Live activities disabled, will not present alert", v48, 2u);
        MEMORY[0x24C1CD5F0](v48, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
    }
  }
}

void *sub_248163A60(void *result)
{
  if (result)
  {
    v2 = [result activityIdentifier];
    v10 = sub_248383960();

    v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8, &qword_2483A1040);
    v4 = sub_248383B10();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x24C1CBA50](v6, v4);
          v7 = result;
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
            return result;
          }

LABEL_10:
          if ([v7 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v9 = sub_248383930();
            [v7 didDismissAlertingLiveActivityWithActivityIdentifier_];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v6;
          if (v8 == v5)
          {
            goto LABEL_18;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v5 = sub_248384360();
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v7 = *(v4 + 8 * v6 + 32);
      result = swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
  }

  return result;
}

void sub_248163D50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (([Strong _invalidated] & 1) == 0)
    {
      v2 = sub_248383DC0();
      v3 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24839C7F0;
      *(v4 + 56) = type metadata accessor for _DBFocusAssertion();
      *(v4 + 64) = sub_24814FBD0(&qword_27EE915D8, v5, type metadata accessor for _DBFocusAssertion, MEMORY[0x277D85388]);
      *(v4 + 32) = v0;
      v6 = v3;
      v7 = v0;
      sub_248382A40(v2, &dword_248146000, v6, "[DBFocusController] Updating focus assertion %{public}@", 55, 2, v4);

      sub_248150140(0, 0.0, 0.0, 0.0, 0.0);
    }
  }
}

uint64_t sub_2481643FC()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164434()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24816446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FA00, &unk_24839C3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_248164534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FA00, &unk_24839C3B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_248164600(void *a1)
{
  sub_248383150();
  sub_248232288();
  return swift_getWitnessTable();
}

uint64_t sub_248164670()
{
  v1 = sub_2483830F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248164738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB08, &qword_24839C530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2481647A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB08, &qword_24839C530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24816481C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164854()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24816489C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2481648E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_248164974@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_248164990()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481649C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164A00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164A38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248164A70()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248164AC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164AFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164B34()
{
  v1 = sub_248381EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_248164C10()
{
  v1 = sub_2483824B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248164CD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164D14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248164D88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164DC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164E00()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_248164E78()
{
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_248164EE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164F34()
{
  v1 = sub_2483815D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_248164FF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248165084()
{
  v1 = sub_2483815D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24816510C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165144()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24816517C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481651C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816520C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816527C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481652B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248165358()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165390()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165400()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165438()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165478()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481654B0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481654EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165568()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481655A0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481655D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248165618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165650()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_248165728()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2481657EC()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  v5 = (v3 + 64) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2481658C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481658F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165934()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816596C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165A9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_248381170();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_248165BBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165C0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165C70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165CB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D08()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D5C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165DCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165E3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248165E9C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248165EE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165F24()
{
  v1 = sub_248381170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248166020()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24816616C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2481661C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481661FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166234()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816626C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481662A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2481662EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2481663EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166608()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166648()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166684()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481666CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166704()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816674C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816678C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481667C4()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481667FC()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166870()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481668AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166900()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248166940()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816698C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481669CC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166A1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166A8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166ACC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_248166B34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248166BAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166BE4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166C74()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166CAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166CEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166D24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166D64()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248166DB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166E18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166E50()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248166EA4()
{
  v1 = sub_2483820C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248166F2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166F64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166F9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166FD4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816701C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816705C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167094()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481670E4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167130()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167168()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_2481671BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2481671F0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167270()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2481672CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167314()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167354()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816738C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481673E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167420()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481674A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481674E0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248167530()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481675A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94540, &qword_2483A2B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248167618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94540, &qword_2483A2B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248167680()
{

  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481676F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167758()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167790()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481677F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167864(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_248167874(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248167894(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2481678C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2481678E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_248167910(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_248168D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248168FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481691BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248169664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24816A138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24816A7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal = result;
  return result;
}

void __DBSaveScreenshotToLibrary_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD97D0] creationRequestForAssetFromScreenshotImage:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 placeholderForCreatedAsset];
    if (v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    }
  }

  else
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __DBSaveScreenshotToLibrary_block_invoke_cold_1(v5);
    }
  }
}

void __DBSaveScreenshotToLibrary_block_invoke_255(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DBLogForCategory(0);
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __DBSaveScreenshotToLibrary_block_invoke_255_cold_1(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Saved screenshot to photos library with identifiers %@", &v9, 0xCu);
  }
}

void *DBAirPlayCornerMaskImageData(int a1, double a2, double a3)
{
  if (a1)
  {
    v5 = @"ClusterCornerMaskOverrideImage";
  }

  else
  {
    v5 = @"CornerMaskOverrideImage";
  }

  v6 = CFPreferencesCopyAppValue(v5, @"com.apple.carplay.internal");
  CFPreferencesSetAppValue(v5, 0, @"com.apple.carplay.internal");
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v10];
    v12 = DBLogForCategory(0);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Using corner mask image specified by test app!", buf, 2u);
      }

      v14 = v10;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      DBAirPlayCornerMaskImageData_cold_1(v13);
    }
  }

  v15 = ceil(a2 * 1.528665);
  v16 = a2 * a3;
  v17 = v15 * a3;
  v18 = DBLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Generating corner mask image to send to accessory.", v23, 2u);
  }

  v19 = [MEMORY[0x277D75348] blackColor];
  v11 = DBGenerateUpperLeftCornerImage(v19, 1, v17, v16);

  v14 = UIImagePNGRepresentation(v11);
LABEL_20:
  v20 = v14;

  v21 = v20;
  return v20;
}

void sub_248174344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t DBSystemAppMain(int a1, char **a2)
{
  v4 = FBSystemShellInitialize();

  return UIApplicationMain(a1, a2, &cfstr_Dashboard_4.isa, &cfstr_Dashboard_4.isa);
}

void sub_24817AE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ResetCarPlayUSB()
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!ServiceWithPrimaryPort)
  {
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  }

  connect = 0;
  v1 = IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect);
  v2 = DBLogForCategory(0);
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ResetCarPlayUSB_cold_1(v1);
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "Request sent by DBDashboard to disable USB.", buf, 2u);
    }

    v4 = IOAccessoryManagerConfigureUSBMode();
    v5 = DBLogForCategory(0);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ResetCarPlayUSB_cold_2(v4);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "Configured USB Mode to disabled", v14, 2u);
      }

      v7 = IOAccessoryManagerConfigurePower();
      if (v7)
      {
        v8 = v7;
        v6 = DBLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          ResetCarPlayUSB_cold_3(v8);
        }
      }

      else
      {
        usleep(0x1312D0u);
        v9 = IOAccessoryManagerConfigurePower();
        if (v9)
        {
          v10 = v9;
          v6 = DBLogForCategory(0);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            ResetCarPlayUSB_cold_4(v10);
          }
        }

        else
        {
          v11 = IOAccessoryManagerConfigureUSBMode();
          v12 = DBLogForCategory(0);
          v6 = v12;
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              ResetCarPlayUSB_cold_5(v11);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "USB Mode has been reset to Device Mode type via DBDashboard", v13, 2u);
          }
        }
      }
    }

    IOServiceClose(connect);
  }
}

void sub_248181938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248182308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248182748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248186730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248186A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248186E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248187198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481879F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24818C3F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24818E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_248191CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 96));
  _Unwind_Resume(a1);
}

void sub_2481924B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_0()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_0 = result;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

__CFString *DBDescriptionForLaunchSource(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Default";
  }

  else
  {
    return off_278F026E0[a1 - 1];
  }
}

void sub_24819625C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481984B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24819A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 184), 8);
  _Block_object_dispose((v35 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24819BC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24819BEEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_24819C46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24819D8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24819DB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24819F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481A79E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2481AB4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481ADA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481AF4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCharacteristicState(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Initialization";
  }

  else
  {
    return off_278F02ED8[a1 - 1];
  }
}

void sub_2481B0AA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2481B1138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481B35F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SetupAssistantFinished(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SetupAssistantFinished_block_invoke;
  block[3] = &unk_278F01580;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void BezierCurveStructRelinquish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void PathPointStructRelinquish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void sub_2481B9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromStatusBarLayout(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Classic";
  }

  else
  {
    return off_278F03060[a1 - 1];
  }
}

uint64_t __DBLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.CarPlayApp", "Default");
  v1 = DBLogForCategory_logObjects[0];
  DBLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.CarPlayApp", "Applications");
  v3 = qword_28150E428;
  qword_28150E428 = v2;

  v4 = os_log_create("com.apple.CarPlayApp", "Dashboard");
  v5 = qword_28150E430;
  qword_28150E430 = v4;

  v6 = os_log_create("com.apple.CarPlayApp", "Siri");
  v7 = qword_28150E438;
  qword_28150E438 = v6;

  v8 = os_log_create("com.apple.CarPlayApp", "Dock");
  v9 = qword_28150E440;
  qword_28150E440 = v8;

  v10 = os_log_create("com.apple.CarPlayApp", "Focus");
  v11 = qword_28150E448;
  qword_28150E448 = v10;

  v12 = os_log_create("com.apple.CarPlayApp", "StatusBar");
  v13 = qword_28150E450;
  qword_28150E450 = v12;

  v14 = os_log_create("com.apple.CarPlayApp", "TemplateUIHostApp");
  v15 = qword_28150E458;
  qword_28150E458 = v14;

  v16 = os_log_create("com.apple.CarPlayApp", "Workspace");
  v17 = qword_28150E460;
  qword_28150E460 = v16;

  v18 = os_log_create("com.apple.CarPlayApp", "SmartWidget");
  v19 = qword_28150E468;
  qword_28150E468 = v18;

  v20 = os_log_create("com.apple.CarPlayApp", "InstrumentCluster");
  v21 = qword_28150E470;
  qword_28150E470 = v20;

  v22 = os_log_create("com.apple.CarPlayApp", "SplashScreen");
  v23 = qword_28150E478;
  qword_28150E478 = v22;

  v24 = os_log_create("com.apple.CarPlayApp", "MediaPlayer");
  v25 = qword_28150E480;
  qword_28150E480 = v24;

  v26 = os_log_create("com.apple.CarPlayApp", "Analytics");
  v27 = qword_28150E488;
  qword_28150E488 = v26;

  v28 = os_log_create("com.apple.CarPlayApp", "Diagnostics");
  v29 = qword_28150E490;
  qword_28150E490 = v28;

  v30 = os_log_create("com.apple.CarPlayApp", "TelemetrySignposts");
  v31 = qword_28150E498;
  qword_28150E498 = v30;

  v32 = os_log_create("com.apple.CarPlayApp", "IconBadging");
  v33 = qword_28150E4A0;
  qword_28150E4A0 = v32;

  v34 = os_log_create("com.apple.CarPlayApp", "Icons");
  v35 = qword_28150E4A8;
  qword_28150E4A8 = v34;

  v36 = os_log_create("com.apple.CarPlayApp", "SynchronizedAnimations");
  v37 = qword_28150E4B0;
  qword_28150E4B0 = v36;

  v38 = os_log_create("com.apple.CarPlayApp", "Appearance");
  v39 = qword_28150E4B8;
  qword_28150E4B8 = v38;

  v40 = os_log_create("com.apple.CarPlayApp", "Notification");
  v41 = qword_28150E4C0;
  qword_28150E4C0 = v40;

  v42 = os_log_create("com.apple.CarPlayApp", "UISync");
  v43 = qword_28150E4C8;
  qword_28150E4C8 = v42;

  v44 = os_log_create("com.apple.CarPlayApp", "LayerMetadataService");
  v45 = qword_28150E4F0;
  qword_28150E4F0 = v44;

  v46 = os_log_create("com.apple.CarPlayApp", "Navigation");
  v47 = qword_28150E4D0;
  qword_28150E4D0 = v46;

  v48 = os_log_create("com.apple.CarPlayApp", "PassengerDisplay");
  v49 = qword_28150E4D8;
  qword_28150E4D8 = v48;

  v50 = os_log_create("com.apple.CarPlayApp", "CarCamera");
  v51 = qword_28150E4E0;
  qword_28150E4E0 = v50;

  v52 = os_log_create("com.apple.CarPlayApp", "AppLink");
  v53 = qword_28150E500;
  qword_28150E500 = v52;

  v54 = os_log_create("com.apple.CarPlayApp", "Widgets");
  v55 = qword_28150E4E8;
  qword_28150E4E8 = v54;

  v56 = os_log_create("com.apple.CarPlayApp", "DisplayScale");
  v57 = qword_28150E4F8;
  qword_28150E4F8 = v56;

  v58 = os_log_create("com.apple.CarPlayApp", "Session");
  v59 = qword_28150E508;
  qword_28150E508 = v58;

  return MEMORY[0x2821F96F8](v58, v59);
}

void _showDisclaimerCallback(uint64_t a1, void *a2)
{
  v3 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Request made to show disclaimer label", v5, 2u);
  }

  v4 = a2;
  if (v4 && CRIsInternalInstall())
  {
    [v4 _createDisclaimerLabel];
  }
}

uint64_t __DBIsInternalInstall_block_invoke_1()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_1 = result;
  return result;
}

uint64_t _pressesContainEvent(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] == 4)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_2481C0964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C29D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_2481C2FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C32F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C3A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C4708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C53E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C5D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481C95AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481CAA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DBStringFromDashboardViewState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"--";
  }

  else
  {
    return off_278F03720[a1];
  }
}

void sub_2481D55C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481D7768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481D7D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *_appDockRefreshAppsCallBack(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _refreshAppDock];
  }

  return result;
}

void sub_2481DC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DC948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DF3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E40F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E48B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_2()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_2 = result;
  return result;
}

void sub_2481E9C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 176));
  _Unwind_Resume(a1);
}

void sub_2481EA7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 208));
  _Unwind_Resume(a1);
}

void *_appLibraryRefreshCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _handleAppLibraryRefresh];
  }

  return result;
}

void sub_2481F0028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481F483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromDoorState(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        v2 = @"SMARTWIDGET_GARGAGEDOOR_CLOSED";
      }

      else
      {
        v2 = @"SMARTWIDGET_GARGAGEDOOR_OPENING";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_CLOSING";
          break;
        case 4:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_STOPPED";
          break;
        case 100:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_OBSTRUCTED";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= -3)
  {
    if (a1 == -4)
    {
      v2 = @"SMARTWIDGET_GARGAGEDOOR_UPDATEREQUIRED";
    }

    else
    {
      if (a1 != -3)
      {
        goto LABEL_23;
      }

      v2 = @"SMARTWIDGET_GARGAGEDOOR_ERROR";
    }
  }

  else if (a1 == -2)
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_UNREACHABLE";
  }

  else if (a1 == -1)
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_UNKNOWN";
  }

  else
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_OPEN";
  }

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v1 = [v3 localizedStringForKey:v2 value:&stru_285A57218 table:@"CarPlayApp"];

LABEL_23:

  return v1;
}

void sub_2481F8710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481FD808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481FDDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DBWiFiManagerClientServerRestartedCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __DBWiFiManagerClientServerRestartedCallback_block_invoke;
  v5[3] = &unk_278F01580;
  v6 = v2;
  v4 = v2;
  [v3 addOperationWithBlock:v5];
}

void sub_248202518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24820685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24820C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24820D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_24820E0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DBDescriptionForLockOutMode(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_278F04218[a1];
  }

  return v2;
}

void sub_248210280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24821253C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromDBThermalLevel(uint64_t a1)
{
  if ((a1 + 2) >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", a1];
  }

  else
  {
    v2 = off_278F04550[a1 + 2];
  }

  return v2;
}

void sub_248217DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24821D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24821E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_3()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_3 = result;
  return result;
}

void sub_248224B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248227FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DBAssetLibrary.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBAssetLibrary.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

void sub_2482284FC(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_24822857C()
{
  result = [objc_allocWithZone(type metadata accessor for DBAssetLibrary()) init];
  static DBAssetLibrary.shared = result;
  return result;
}

uint64_t *DBAssetLibrary.shared.unsafeMutableAddressor()
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  return &static DBAssetLibrary.shared;
}

id static DBAssetLibrary.shared.getter()
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DBAssetLibrary.shared;

  return v0;
}

void static DBAssetLibrary.shared.setter(uint64_t a1)
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DBAssetLibrary.shared;
  static DBAssetLibrary.shared = a1;
}

uint64_t (*static DBAssetLibrary.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *DBAssetLibrary.session.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAssetLibrary.session.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_248228A0C();
}

void sub_248228A0C()
{
  v1 = v0;
  v187 = sub_2483815A0();
  v183 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v178 = &v157 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8A8, &qword_24839C008);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v181 = &v157 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8B0, &qword_24839C010);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = (&v157 - v11);
  v168 = sub_248381570();
  v171 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_248381590();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v14 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v172 = &v157 - v17;
  v18 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))(v16);
  if (!v19)
  {
    return;
  }

  v20 = sub_248381510();
  if (!v20)
  {
    return;
  }

  v21 = v20;
  sub_248381480();

  v22 = (*(v169 + 32))(v172, v14, v170);
  v23 = *((*v18 & *v1) + 0xD0);
  v162 = v1;
  v24 = v23(v22);
  if (!v24)
  {
    goto LABEL_99;
  }

  v25 = v24;
  v26 = [v24 configuration];

  v27 = [v26 displays];
  sub_24814FB28(0, &qword_27EE8F8F0, 0x277CF89A0);
  v28 = sub_248383B10();

  if (v28 >> 62)
  {
    goto LABEL_39;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v7; v29; i = v7)
  {
    v30 = 0;
    v176 = v28 & 0xFFFFFFFFFFFFFF8;
    v177 = v28 & 0xC000000000000001;
    v175 = (v28 + 32);
    v31 = MEMORY[0x277D84F90];
    v174 = v28;
    v173 = v29;
    while (1)
    {
      if (v177)
      {
        v32 = MEMORY[0x24C1CBA50](v30, v28);
      }

      else
      {
        if (v30 >= *(v176 + 16))
        {
          goto LABEL_38;
        }

        v32 = *&v175[8 * v30];
      }

      v7 = v32;
      v33 = __OFADD__(v30, 1);
      v34 = (v30 + 1);
      if (v33)
      {
        break;
      }

      v35 = [v32 oemPunchThroughs];
      sub_24814FB28(0, &qword_27EE8F8F8, 0x277CF89B8);
      v36 = sub_248383B10();

      if (v36 >> 62)
      {
        v37 = sub_248384360();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v179 = v7;
      v182 = v34;
      v184 = v31;
      if (v37)
      {
        v188 = v36 & 0xC000000000000001;
        v38 = v36 & 0xFFFFFFFFFFFFFF8;
        v7 = 4;
        v39 = MEMORY[0x277D84F90];
        while (1)
        {
          v40 = v7 - 4;
          if (v188)
          {
            v41 = MEMORY[0x24C1CBA50](v7 - 4, v36);
          }

          else
          {
            if (v40 >= *(v38 + 16))
            {
              goto LABEL_36;
            }

            v41 = *(v36 + 8 * v7);
          }

          v42 = v41;
          v28 = v7 - 3;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          v43 = v36;
          v44 = [v41 identifier];
          v45 = sub_248383960();
          v47 = v46;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_24822B3C4(0, *(v39 + 2) + 1, 1, v39);
          }

          v49 = *(v39 + 2);
          v48 = *(v39 + 3);
          if (v49 >= v48 >> 1)
          {
            v39 = sub_24822B3C4((v48 > 1), v49 + 1, 1, v39);
          }

          *(v39 + 2) = v49 + 1;
          v50 = &v39[16 * v49];
          *(v50 + 4) = v45;
          *(v50 + 5) = v47;
          ++v7;
          v36 = v43;
          if (v28 == v37)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_27:

      v31 = v184;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_24822B290(0, v31[2] + 1, 1, v31);
      }

      v52 = v31[2];
      v51 = v31[3];
      if (v52 >= v51 >> 1)
      {
        v31 = sub_24822B290((v51 > 1), v52 + 1, 1, v31);
      }

      v31[2] = v52 + 1;
      v31[v52 + 4] = v39;
      v30 = v182;
      v28 = v174;
      if (v182 == v173)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v29 = sub_248384360();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_41:

  v189[0] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390, &unk_2483A2450);
  v53 = MEMORY[0x277D83970];
  sub_24822D648(&qword_27EE8F900, &qword_27EE94390, &unk_2483A2450, MEMORY[0x277D83970]);
  sub_24822D648(&qword_27EE8F868, &unk_27EE93AB0, &unk_2483A0E40, v53);
  v54 = sub_248383AB0();

  if (!v54)
  {
LABEL_99:
    (*(v169 + 8))(v172, v170);
    return;
  }

  v158 = v54;
  v55 = sub_248383DC0();
  v56 = sub_24814FB80();
  v57 = *v56;
  v58 = MEMORY[0x277D84F90];
  sub_248382A40(v55, &dword_248146000, v57, "DBAssetLibrary perform handshake", 32, 2, MEMORY[0x277D84F90]);

  v59 = sub_24822CB74(v58);
  v60 = sub_24822CC78(v58);
  v61 = sub_248381560();
  v62 = v61;
  v63 = *(v61 + 16);
  if (!v63)
  {

    v65 = v162;
    goto LABEL_103;
  }

  v166 = v60;
  v157 = v56;
  v64 = 0;
  v165 = v61 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
  v164 = v171 + 16;
  v182 = (v183 + 16);
  v176 = v183 + 40;
  v177 = v183 + 32;
  v163 = (v171 + 8);
  v65 = v162;
  v66 = v168;
  v67 = v167;
  v160 = v61;
  v159 = v63;
  while (1)
  {
    if (v64 >= *(v62 + 16))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    (*(v171 + 16))(v67, v165 + *(v171 + 72) * v64, v66);
    v68 = sub_248338A8C();
    if (v69)
    {
      break;
    }

    (*v163)(v67, v66);
LABEL_45:
    if (++v64 == v63)
    {
      goto LABEL_102;
    }
  }

  v70 = v68;
  v71 = v69;
  v72 = sub_248381580();
  if (!v72)
  {
    (*v163)(v67, v66);

    goto LABEL_45;
  }

  v73 = *(v72 + 2);
  v179 = v72;
  if (v73)
  {
    v74 = v72;
    v173 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
    v75 = swift_allocObject();
    v76 = _swift_stdlib_malloc_size(v75);
    v77 = v76 - 32;
    if (v76 < 32)
    {
      v77 = v76 - 17;
    }

    v75[2] = v73;
    v75[3] = 2 * (v77 >> 4);
    v78 = v75;
    v188 = sub_24822CA1C(v189, v75 + 4, v73, v74);
    v79 = v189[0];
    v184 = v189[3];

    sub_248167908(v79);
    if (v188 == v73)
    {
      v59 = v173;
      goto LABEL_56;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    sub_2483846E0();
    __break(1u);
    return;
  }

  v78 = MEMORY[0x277D84F90];
LABEL_56:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v189[0] = v59;
  v81 = sub_24822B8A0(v70, v71);
  v83 = v59[2];
  v84 = (v82 & 1) == 0;
  v33 = __OFADD__(v83, v84);
  v85 = v83 + v84;
  if (v33)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v86 = v82;
  if (v59[3] >= v85)
  {
    v59 = &qword_27EE8F8D0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v143 = v81;
      sub_24822C780();
      v81 = v143;
    }
  }

  else
  {
    sub_24822BC98(v85, isUniquelyReferenced_nonNull_native);
    v81 = sub_24822B8A0(v70, v71);
    v59 = &qword_27EE8F8D0;
    if ((v86 & 1) != (v87 & 1))
    {
      goto LABEL_114;
    }
  }

  v88 = v189[0];
  v173 = v189[0];
  v161 = v64;
  if (v86)
  {
    *(*(v189[0] + 56) + 8 * v81) = v78;
  }

  else
  {
    *(v189[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
    v89 = (v88[6] + 16 * v81);
    *v89 = v70;
    v89[1] = v71;
    *(v88[7] + 8 * v81) = v78;
    v90 = v88[2];
    v33 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v33)
    {
      goto LABEL_113;
    }

    v88[2] = v91;
  }

  v92 = v166;

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v189[0] = v92;
  v93 = *(v179 + 8);
  v175 = v179 + 64;
  v94 = 1 << v179[32];
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  else
  {
    v95 = -1;
  }

  v96 = v95 & v93;
  v174 = (v94 + 63) >> 6;

  v97 = 0;
  v98 = v177;
  while (2)
  {
    v188 = v92;
    LODWORD(v184) = v65;
    if (v96)
    {
      v99 = v97;
LABEL_81:
      v102 = __clz(__rbit64(v96));
      v96 &= v96 - 1;
      v103 = v102 | (v99 << 6);
      v104 = v178;
      v105 = (*(v179 + 6) + 16 * v103);
      v107 = *v105;
      v106 = v105[1];
      v108 = v183;
      v109 = v187;
      (*(v183 + 16))(v178, *(v179 + 7) + *(v183 + 72) * v103, v187);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0, &qword_24839C028);
      v111 = *(v110 + 48);
      v112 = v181;
      *v181 = v107;
      *(v112 + 1) = v106;
      v113 = v104;
      v98 = v177;
      (*(v108 + 32))(&v112[v111], v113, v109);
      (*(*(v110 - 8) + 56))(v112, 0, 1, v110);

      v101 = v99;
      v114 = v112;
      v59 = &qword_27EE8F8D0;
LABEL_82:
      v115 = i;
      sub_24822D508(v114, i);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0, &qword_24839C028);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) == 1)
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8, &qword_24839C030);
        v118 = v180;
        (*(*(v117 - 8) + 56))(v180, 1, 1, v117);
      }

      else
      {
        v119 = *(v116 + 48);
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8, &qword_24839C030);
        v121 = *i;
        v122 = i[1];
        v123 = v180;
        (*v182)(v180 + *(v120 + 48), i + v119, v187);
        *v123 = v121;
        v123[1] = v122;
        v118 = v123;

        sub_24822D578(i, &qword_27EE8F8D0, &qword_24839C028);
        (*(*(v120 - 8) + 56))(v123, 0, 1, v120);
      }

      v124 = v188;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8, &qword_24839C030);
      if ((*(*(v125 - 8) + 48))(v118, 1, v125) == 1)
      {

        v67 = v167;
        v66 = v168;
        (*v163)(v167, v168);

        v166 = v124;
        v65 = v162;
        v59 = v173;
        v62 = v160;
        v63 = v159;
        v64 = v161;
        goto LABEL_45;
      }

      v126 = *(v125 + 48);
      v127 = *v118;
      v128 = v118[1];
      v129 = *v98;
      (*v98)(v185, v118 + v126, v187);
      v131 = sub_24822B8A0(v127, v128);
      v132 = *(v124 + 16);
      v133 = (v130 & 1) == 0;
      v134 = v132 + v133;
      if (__OFADD__(v132, v133))
      {
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v135 = v130;
      if (*(v124 + 24) >= v134)
      {
        if (v184)
        {
          v92 = v189[0];
          if ((v130 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          sub_24822C500();
          v92 = v189[0];
          if ((v135 & 1) == 0)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        sub_24822B918(v134, v184 & 1);
        v136 = sub_24822B8A0(v127, v128);
        if ((v135 & 1) != (v137 & 1))
        {
          goto LABEL_114;
        }

        v131 = v136;
        v92 = v189[0];
        if ((v135 & 1) == 0)
        {
LABEL_93:
          v92[(v131 >> 6) + 8] |= 1 << v131;
          v138 = (v92[6] + 16 * v131);
          *v138 = v127;
          v138[1] = v128;
          v129((v92[7] + *(v183 + 72) * v131), v185, v187);
          v139 = v92[2];
          v33 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (v33)
          {
            goto LABEL_109;
          }

          v92[2] = v140;
          goto LABEL_71;
        }
      }

      (*(v183 + 40))(v92[7] + *(v183 + 72) * v131, v185, v187);
LABEL_71:
      v65 = 1;
      v97 = v101;
      continue;
    }

    break;
  }

  if (v174 <= v97 + 1)
  {
    v100 = v97 + 1;
  }

  else
  {
    v100 = v174;
  }

  v101 = v100 - 1;
  while (1)
  {
    v99 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v99 >= v174)
    {
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0, &qword_24839C028);
      v142 = v181;
      (*(*(v141 - 8) + 56))(v181, 1, 1, v141);
      v114 = v142;
      v96 = 0;
      goto LABEL_82;
    }

    v96 = *&v175[8 * v99];
    ++v97;
    if (v96)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_102:

  v56 = v157;
  v60 = v166;
LABEL_103:
  v144 = v65;
  *(v65 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions) = v60;

  v145 = v158;

  v146 = sub_24822CE54(v59, v145);
  swift_bridgeObjectRelease_n();
  v147 = sub_24822BF40(v146);

  v148 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers;
  *(v144 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers) = v147;

  v149 = sub_248383DC0();
  v150 = *v56;
  if (os_log_type_enabled(*v56, v149))
  {
    v151 = v150;
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v189[0] = v153;
    *v152 = 136315138;
    v189[5] = *(v144 + v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8B8, &qword_24839C018);
    sub_24822D648(&qword_27EE8F8C0, &qword_27EE8F8C8, &qword_24839C020, MEMORY[0x277D83538]);
    v154 = sub_2483841D0();
    v156 = sub_24814A378(v154, v155, v189);

    *(v152 + 4) = v156;
    _os_log_impl(&dword_248146000, v151, v149, "DBAssetLibrary match between assets and infoResponse: %s", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v153);
    MEMORY[0x24C1CD5F0](v153, -1, -1);
    MEMORY[0x24C1CD5F0](v152, -1, -1);
  }

  else
  {
  }

  (*(v169 + 8))(v172, v170);
}

void (*DBAssetLibrary.session.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248229DC0;
}

void sub_248229DC0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248228A0C();
  }
}

uint64_t variable initialization expression of DBAssetLibrary.assetManager()
{
  sub_248381550();
  swift_allocObject();
  return sub_248381540();
}

unint64_t variable initialization expression of DBAssetLibrary.cancellables()
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_248384360())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = MEMORY[0x277D84F90];

  return sub_24822D018(v2);
}

char *variable initialization expression of DBAssetLibrary.supportedAppIdentifiers()
{
  v0 = sub_248381570();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248381560();
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = *(v6 + 64);
    v18[0] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v19 = *(v6 + 56);
    v20 = v7;
    v10 = MEMORY[0x277D84F90];
    v18[1] = v6;
    v7(v3, v9, v0);
    while (1)
    {
      v12 = sub_248338A8C();
      v14 = v13;
      (*(v6 - 8))(v3, v0);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24822B3C4(0, *(v10 + 2) + 1, 1, v10);
        }

        v16 = *(v10 + 2);
        v15 = *(v10 + 3);
        if (v16 >= v15 >> 1)
        {
          v10 = sub_24822B3C4((v15 > 1), v16 + 1, 1, v10);
        }

        *(v10 + 2) = v16 + 1;
        v11 = &v10[16 * v16];
        *(v11 + 4) = v12;
        *(v11 + 5) = v14;
      }

      v9 += v19;
      if (!--v5)
      {
        break;
      }

      v20(v3, v9, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

char *sub_24822A05C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94210, &qword_24839D520);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v36 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F870, &qword_24839BFF8);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F878, &qword_24839C000);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = v36 - v6;
  v7 = sub_248381570();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session] = 0;
  v11 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetManager;
  sub_248381550();
  swift_allocObject();
  *&v0[v11] = sub_248381540();
  if (MEMORY[0x277D84F90] >> 62 && sub_248384360())
  {
    v12 = sub_24822D018(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_cancellables] = v12;
  v13 = sub_248381560();
  v14 = *(v13 + 16);
  if (v14)
  {
    v37 = v0;
    v38 = v5;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = *(v15 + 64);
    v36[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v45 = *(v15 + 56);
    v46 = v16;
    v47 = v15;
    v19 = (v15 - 8);
    v20 = MEMORY[0x277D84F90];
    v16(v10, v18, v7);
    while (1)
    {
      v22 = sub_248338A8C();
      v24 = v23;
      (*v19)(v10, v7);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24822B3C4(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_24822B3C4((v25 > 1), v26 + 1, 1, v20);
        }

        *(v20 + 2) = v26 + 1;
        v21 = &v20[16 * v26];
        *(v21 + 4) = v22;
        *(v21 + 5) = v24;
      }

      v18 += v45;
      if (!--v14)
      {
        break;
      }

      v46(v10, v18, v7);
    }

    v1 = v37;
    v5 = v38;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_supportedAppIdentifiers] = v20;
  v27 = type metadata accessor for DBAssetLibrary();
  v49.receiver = v1;
  v49.super_class = v27;
  v28 = objc_msgSendSuper2(&v49, sel_init);

  v29 = v39;
  sub_248381520();

  v30 = [objc_opt_self() mainRunLoop];
  v48 = v30;
  v31 = sub_248384170();
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_24814FB28(0, &qword_27EE903F0, 0x277CBEB88);
  sub_24822D648(&qword_27EE8F880, &qword_27EE8F870, &qword_24839BFF8, MEMORY[0x277CBCEC8]);
  sub_24822D338();
  v34 = v42;
  v33 = v43;
  sub_248382FA0();
  sub_24822D578(v32, &qword_27EE94210, &qword_24839D520);

  (*(v40 + 8))(v29, v34);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24822D648(&qword_27EE8F888, &qword_27EE8F878, &qword_24839C000, MEMORY[0x277CBCD60]);
  sub_248383000();

  (*(v44 + 8))(v33, v5);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  sub_248228A0C();

  return v28;
}

id DBAssetLibrary.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBAssetLibrary();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24822A790(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = a3;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v22 = a2;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 40;
    v18 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v19 = v3 + 40;
    do
    {
      v21 = v8;
      v9 = (v7 + 16 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        v6 = v10 + 1;
        v23[0] = v11;
        v23[1] = v12;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v17[2] = v23;

        if (sub_24815503C(sub_2481614D0, v17, v22))
        {
          break;
        }

        v9 += 2;
        ++v10;
        if (v4 == v6)
        {
          v8 = v21;
          goto LABEL_15;
        }
      }

      v8 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24822C8F0(0, *(v8 + 16) + 1, 1);
        v8 = v24;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v21 = v14 + 1;
        isUniquelyReferenced_nonNull_native = sub_24822C8F0((v13 > 1), v14 + 1, 1);
        v15 = v21;
        v8 = v24;
      }

      *(v8 + 16) = v15;
      v16 = v8 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v7 = v19;
    }

    while (v18 != v10);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_15:
  swift_bridgeObjectRelease_n();
  *v20 = v8;
}

Swift::OpaquePointer_optional __swiftcall DBAssetLibrary.verifiedPunchThroughs(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_supportedAppIdentifiers);
  v5 = (v4 + 40);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      goto LABEL_14;
    }

    if (*(v5 - 1) == countAndFlagsBits && *v5 == object)
    {
      break;
    }

    v5 += 2;
  }

  while ((sub_248384680() & 1) == 0);
  v8 = *(v1 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers);
  if (!v8)
  {
    v12 = sub_248383DC0();
    v13 = *sub_24814FB80();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24814A378(countAndFlagsBits, object, &v25);
      _os_log_impl(&dword_248146000, v14, v12, "DBAssetLibrary handshake PT not performed yet: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

LABEL_14:
    bundleIdentifier._countAndFlagsBits = 0;
    return *&bundleIdentifier._countAndFlagsBits;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_16;
  }

  v9 = sub_24822B8A0(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

LABEL_17:
  v17 = sub_248383DC0();
  v18 = *sub_24814FB80();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_24814A378(countAndFlagsBits, object, &v25);
    *(v20 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F848, &qword_24839BFC0);
    sub_24822D648(&qword_27EE8F850, &unk_27EE93AB0, &unk_2483A0E40, MEMORY[0x277D839A0]);
    v22 = sub_2483841D0();
    v24 = sub_24814A378(v22, v23, &v25);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_248146000, v19, v17, "DBAssetLibrary verifier PT for bundleIdentifier: %s, %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  if (v11)
  {
    bundleIdentifier._countAndFlagsBits = v11;
  }

  else
  {
    bundleIdentifier._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  return *&bundleIdentifier._countAndFlagsBits;
}

uint64_t sub_24822AD70(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), const char *a4, char *a5, ...)
{
  v46 = a5;
  v10 = sub_2483815A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = *(v5 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions);
  if (!v17 || !*(v17 + 16))
  {
    goto LABEL_17;
  }

  v45 = a4;
  v18 = v5;

  v19 = sub_24822B8A0(a1, a2);
  if ((v20 & 1) == 0)
  {

LABEL_17:
    v35 = sub_248383DC0();
    v36 = *sub_24814FB80();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = v36;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_24814A378(a1, a2, &v47);
      _os_log_impl(&dword_248146000, v37, v35, v46, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1CD5F0](v39, -1, -1);
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    v40 = 0;
    return v40 & 1;
  }

  v44 = a3;
  v21 = *(v11 + 16);
  v21(v16, *(v17 + 56) + *(v11 + 72) * v19, v10);

  v22 = *(v18 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers);
  if (!v22)
  {
LABEL_16:
    (*(v11 + 8))(v16, v10);
    goto LABEL_17;
  }

  v43 = v21;
  v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F858, &qword_24839BFC8);
  sub_24822D648(&qword_27EE8F860, &qword_27EE8F858, &qword_24839BFC8, MEMORY[0x277D834C0]);
  sub_24822D648(&qword_27EE8F868, &unk_27EE93AB0, &unk_2483A0E40, MEMORY[0x277D83970]);
  v23 = sub_248383AB0();
  v24 = (v23 + 40);
  v25 = *(v23 + 16) + 1;
  do
  {
    if (!--v25)
    {

      goto LABEL_16;
    }

    if (*(v24 - 1) == a1 && *v24 == a2)
    {
      break;
    }

    v24 += 2;
  }

  while ((sub_248384680() & 1) == 0);

  v27 = sub_248383DC0();
  v28 = *sub_24814FB80();
  v43(v13, v16, v10);
  if (os_log_type_enabled(v28, v27))
  {
    v46 = v28;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_24814A378(a1, a2, &v47);
    *(v29 + 12) = 1024;
    LODWORD(v43) = v27;
    v31 = v44;
    v32 = v44() & 1;
    v33 = *(v11 + 8);
    v33(v13, v10);
    *(v29 + 14) = v32;
    v34 = v46;
    _os_log_impl(&dword_248146000, v46, v43, v45, v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C1CD5F0](v30, -1, -1);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
  }

  else
  {
    v33 = *(v11 + 8);
    v33(v13, v10);
    v31 = v44;
  }

  v40 = v31();
  v33(v16, v10);
  return v40 & 1;
}

uint64_t sub_24822B228(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

void *sub_24822B290(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F908, &qword_24839C048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0, &unk_2483A0E40);
    swift_arrayInitWithCopy();
  }

  return v10;
}