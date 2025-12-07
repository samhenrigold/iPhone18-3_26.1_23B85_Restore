unint64_t sub_20C4CD2C0(double a1)
{
  v2 = sub_20C59D7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  result = sub_20C59DD7C();
  v9 = 0;
  v10 = result + 56;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(result + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v3 + 16;
  v34 = result;
  v30 = (v3 + 32);
  for (i = MEMORY[0x277D84F90]; v13; result = v29(v22 + v27 + v25 * v17, v31, v2))
  {
LABEL_10:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v3 + 72);
      (*(v3 + 16))(v7, *(v34 + 48) + v17 * (v16 | (v9 << 6)), v2);
      sub_20C59D7CC();
      if (v18 <= a1)
      {
        sub_20C59D7CC();
        v20 = v19;
        sub_20C59D7BC();
        if (v20 + v21 >= a1)
        {
          break;
        }
      }

      result = (*(v3 + 8))(v7, v2);
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v29 = *v30;
    v29(v31, v7, v2);
    v22 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20C4C480C(0, *(v22 + 16) + 1, 1);
      v22 = v35;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      i = v25 + 1;
      v28 = v25;
      sub_20C4C480C((v24 > 1), v25 + 1, 1);
      v25 = v28;
      v26 = i;
      v22 = v35;
    }

    *(v22 + 16) = v26;
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    i = v22;
  }

LABEL_6:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return i;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C4CD59C(uint64_t a1, void *a2)
{
  v3 = v2;
  v188 = a1;
  v189 = a2;
  v185 = a1 & 0xFFFFFFFFFFLL;
  v186 = sub_20C59ECFC();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v182 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v175 - v6;
  MEMORY[0x28223BE20](v7);
  v177 = &v175 - v8;
  MEMORY[0x28223BE20](v9);
  v180 = &v175 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v175 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v175 - v15;
  v190 = sub_20C5A01CC();
  v187 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v183 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v179 = &v175 - v21;
  MEMORY[0x28223BE20](v22);
  v181 = &v175 - v23;
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v175 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v175 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v175 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v175 - v35;
  MEMORY[0x28223BE20](v37);
  v42 = &v175 - v41;
  v43 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause;
  v44 = *(v3 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause);
  if ((v44 - 2) >= 3)
  {
    if (v44 != 5)
    {
      v69 = v16;
      v70 = sub_20C59ECDC();
      if ((v44 & 1) == 0)
      {
        LODWORD(v191) = v70;
        BYTE4(v191) = BYTE4(v70) & 1;
        LOBYTE(v192) = 1;
        sub_20C4A24A0();
        sub_20C4A24F4();
        if (sub_20C59DA7C())
        {
          sub_20C59FE3C();
          v124 = sub_20C5A01BC();
          v125 = sub_20C5A088C();
          v126 = os_log_type_enabled(v124, v125);
          v127 = v187;
          v128 = v190;
          if (v126)
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&dword_20C472000, v124, v125, "Playback transitioning to paused for close player is valid.", v129, 2u);
            MEMORY[0x20F2FFF90](v129, -1, -1);
          }

          (*(v127 + 8))(v33, v128);
          return 1;
        }

        sub_20C59FE3C();
        v160 = v184;
        v161 = v13;
        v162 = v186;
        (*(v184 + 16))(v13, v189, v186);
        v163 = sub_20C5A01BC();
        v164 = sub_20C5A088C();
        v165 = os_log_type_enabled(v163, v164);
        v166 = v187;
        v167 = v190;
        if (v165)
        {
          v168 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v191 = v189;
          *v168 = 136315138;
          v169 = sub_20C59ECDC();
          v192 = v169;
          v193 = BYTE4(v169) & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
          sub_20C4E17AC();
          v170 = sub_20C59DA9C();
          v172 = v171;
          (*(v160 + 8))(v161, v162);
          v173 = sub_20C479640(v170, v172, &v191);

          *(v168 + 4) = v173;
          _os_log_impl(&dword_20C472000, v163, v164, "Playback transitioning to %s when expecting paused for close player is not valid.", v168, 0xCu);
          v174 = v189;
          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          MEMORY[0x20F2FFF90](v174, -1, -1);
          MEMORY[0x20F2FFF90](v168, -1, -1);

          (*(v166 + 8))(v30, v190);
        }

        else
        {

          (*(v160 + 8))(v161, v162);
          (*(v166 + 8))(v30, v167);
        }

        return 0;
      }

      LODWORD(v191) = v70;
      BYTE4(v191) = BYTE4(v70) & 1;
      LOBYTE(v192) = 0;
      sub_20C4A24A0();
      sub_20C4A24F4();
      if (sub_20C59DA7C())
      {
        sub_20C59FE3C();
        v71 = sub_20C5A01BC();
        v72 = sub_20C5A088C();
        v73 = os_log_type_enabled(v71, v72);
        v74 = v187;
        v75 = v190;
        if (v73)
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_20C472000, v71, v72, "Playback transitioning from paused for close player to playing is valid.", v76, 2u);
          MEMORY[0x20F2FFF90](v76, -1, -1);
        }

        (*(v74 + 8))(v42, v75);
        return 1;
      }

      sub_20C59FE3C();
      v145 = v184;
      v146 = v16;
      v147 = v186;
      (*(v184 + 16))(v16, v189, v186);
      v148 = sub_20C5A01BC();
      v149 = sub_20C5A088C();
      v150 = os_log_type_enabled(v148, v149);
      v151 = v187;
      v152 = v190;
      if (!v150)
      {

        (*(v145 + 8))(v69, v147);
        (*(v151 + 8))(v36, v152);
        return 0;
      }

      v153 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v191 = v189;
      *v153 = 136315138;
      v154 = sub_20C59ECDC();
      v192 = v154;
      v193 = BYTE4(v154) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
      sub_20C4E17AC();
      v155 = sub_20C59DA9C();
      v157 = v156;
      (*(v145 + 8))(v146, v147);
      v158 = sub_20C479640(v155, v157, &v191);

      *(v153 + 4) = v158;
      _os_log_impl(&dword_20C472000, v148, v149, "Playback transitioning from paused for close player to %s is not valid.", v153, 0xCu);
      v159 = v189;
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      MEMORY[0x20F2FFF90](v159, -1, -1);
      MEMORY[0x20F2FFF90](v153, -1, -1);

      v121 = *(v151 + 8);
      v122 = v36;
LABEL_36:
      v121(v122, v190);
      return 0;
    }

    v175 = v38;
    v176 = v39;
    v55 = v184;
    v56 = v186;
    v53 = v187;
    v58 = v188;
    v57 = v189;
    if (HIDWORD(v185) <= 0xFE)
    {
      v59 = HIDWORD(v185) & 1;
      goto LABEL_22;
    }

LABEL_12:
    v64 = sub_20C59ECDC();
    LODWORD(v191) = v64;
    BYTE4(v191) = BYTE4(v64) & 1;
    v192 = 0;
    v193 = 1;
    sub_20C4A24A0();
    sub_20C4A24F4();
    if (sub_20C59DA6C())
    {
      v65 = v181;
      sub_20C59FE3C();
      v66 = sub_20C5A01BC();
      v67 = sub_20C5A088C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_20C472000, v66, v67, "Playback transitioning from never started to playing is a valid transition", v68, 2u);
        MEMORY[0x20F2FFF90](v68, -1, -1);
      }

      (*(v53 + 8))(v65, v190);
      return 1;
    }

LABEL_33:
    v106 = v183;
    sub_20C59FE3C();
    v107 = v182;
    (*(v55 + 16))(v182, v57, v56);
    v108 = sub_20C5A01BC();
    v109 = sub_20C5A088C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = v107;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v191 = v112;
      *v111 = 136446466;
      v193 = BYTE4(v185);
      v192 = v185;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA0, &qword_20C5A5AE0);
      v113 = sub_20C5A0A3C();
      v115 = sub_20C479640(v113, v114, &v191);

      *(v111 + 4) = v115;
      *(v111 + 12) = 2082;
      v116 = sub_20C59ECDC();
      v192 = v116;
      v193 = BYTE4(v116) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
      sub_20C4E17AC();
      v117 = sub_20C59DA9C();
      v119 = v118;
      (*(v55 + 8))(v110, v56);
      v120 = sub_20C479640(v117, v119, &v191);

      *(v111 + 14) = v120;
      _os_log_impl(&dword_20C472000, v108, v109, "Playback update from %{public}s to %{public}s is not a valid transition", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v112, -1, -1);
      MEMORY[0x20F2FFF90](v111, -1, -1);

      v121 = *(v53 + 8);
      v122 = v183;
    }

    else
    {

      (*(v55 + 8))(v107, v56);
      v121 = *(v53 + 8);
      v122 = v106;
    }

    goto LABEL_36;
  }

  v45 = v40;
  v175 = v38;
  v176 = v39;
  sub_20C59FE3C();

  v46 = sub_20C5A01BC();
  v47 = sub_20C5A088C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v191 = v49;
    *v48 = 136315138;
    v50 = sub_20C4C8EE8(*(v3 + v43));
    v52 = sub_20C479640(v50, v51, &v191);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_20C472000, v46, v47, "Expecting pause for reason: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x20F2FFF90](v49, -1, -1);
    MEMORY[0x20F2FFF90](v48, -1, -1);
  }

  v53 = v187;
  v54 = *(v187 + 8);
  v54(v27, v190);
  v55 = v184;
  v56 = v186;
  v58 = v188;
  v57 = v189;
  if (HIDWORD(v185) > 0xFE)
  {
    goto LABEL_12;
  }

  LODWORD(v191) = v188;
  v59 = HIDWORD(v185) & 1;
  BYTE4(v191) = BYTE4(v185) & 1;
  LOBYTE(v192) = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA7C())
  {
    v60 = sub_20C59ECDC();
    LODWORD(v191) = v60;
    BYTE4(v191) = BYTE4(v60) & 1;
    LOBYTE(v192) = 1;
    if (sub_20C59DA7C())
    {
      sub_20C59FE3C();
      v61 = sub_20C5A01BC();
      v62 = sub_20C5A088C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_20C472000, v61, v62, "Playback transitioning from playing to pause is valid", v63, 2u);
        MEMORY[0x20F2FFF90](v63, -1, -1);
      }

      v54(v45, v190);
      return 1;
    }
  }

LABEL_22:
  LODWORD(v191) = v58;
  BYTE4(v191) = v59;
  v192 = 0;
  v193 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA6C())
  {
    v77 = sub_20C59ECDC();
    LODWORD(v191) = v77;
    BYTE4(v191) = BYTE4(v77) & 1;
    v192 = 0;
    v193 = 1;
    if ((sub_20C59DA6C() & 1) == 0)
    {
      v130 = v179;
      sub_20C59FE3C();
      v131 = v180;
      (*(v55 + 16))(v180, v57, v56);
      v132 = sub_20C5A01BC();
      v133 = sub_20C5A088C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v191 = v189;
        *v134 = 136446466;
        v192 = v58;
        v193 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
        sub_20C4E17AC();
        v135 = sub_20C59DA9C();
        v137 = sub_20C479640(v135, v136, &v191);

        *(v134 + 4) = v137;
        *(v134 + 12) = 2082;
        v138 = v180;
        v139 = sub_20C59ECDC();
        v192 = v139;
        v193 = BYTE4(v139) & 1;
        v140 = sub_20C59DA9C();
        v142 = v141;
        (*(v55 + 8))(v138, v186);
        v143 = sub_20C479640(v140, v142, &v191);

        *(v134 + 14) = v143;
        _os_log_impl(&dword_20C472000, v132, v133, "Playback transitioning from %{public}s to %{public}s is a valid transition", v134, 0x16u);
        v144 = v189;
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v144, -1, -1);
        MEMORY[0x20F2FFF90](v134, -1, -1);
      }

      else
      {

        (*(v55 + 8))(v131, v56);
      }

      (*(v53 + 8))(v130, v190);
      return 1;
    }
  }

  LODWORD(v191) = v58;
  BYTE4(v191) = v59;
  v192 = 0;
  v193 = 1;
  if ((sub_20C59DA6C() & 1) != 0 || (v78 = sub_20C59ECDC(), LODWORD(v191) = v78, BYTE4(v191) = BYTE4(v78) & 1, v192 = 0, v193 = 1, (sub_20C59DA6C() & 1) == 0))
  {
    v188 = v58;
    LODWORD(v191) = v58;
    BYTE4(v191) = v59;
    v192 = 3;
    v193 = 1;
    if ((sub_20C59DA6C() & 1) == 0)
    {
      v93 = sub_20C59ECDC();
      LODWORD(v191) = v93;
      BYTE4(v191) = BYTE4(v93) & 1;
      v192 = 3;
      v193 = 1;
      if (sub_20C59DA6C())
      {
        v79 = v175;
        sub_20C59FE3C();
        v94 = v178;
        (*(v55 + 16))(v178, v57, v56);
        v81 = sub_20C5A01BC();
        v95 = sub_20C5A088C();
        if (!os_log_type_enabled(v81, v95))
        {

          (*(v55 + 8))(v94, v56);
          goto LABEL_55;
        }

        v83 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v191 = v189;
        *v83 = 136446466;
        v192 = v188;
        v193 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
        sub_20C4E17AC();
        v96 = sub_20C59DA9C();
        v98 = sub_20C479640(v96, v97, &v191);

        *(v83 + 4) = v98;
        *(v83 + 12) = 2082;
        v99 = v178;
        v100 = sub_20C59ECDC();
        v192 = v100;
        v193 = BYTE4(v100) & 1;
        v101 = sub_20C59DA9C();
        v103 = v102;
        (*(v55 + 8))(v99, v186);
        v104 = sub_20C479640(v101, v103, &v191);

        *(v83 + 14) = v104;
        v92 = v95;
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v79 = v176;
  sub_20C59FE3C();
  v80 = v177;
  (*(v55 + 16))(v177, v57, v56);
  v81 = sub_20C5A01BC();
  v82 = sub_20C5A088C();
  if (!os_log_type_enabled(v81, v82))
  {

    (*(v55 + 8))(v80, v56);
    goto LABEL_55;
  }

  v83 = swift_slowAlloc();
  v189 = swift_slowAlloc();
  v191 = v189;
  *v83 = 136446466;
  v192 = v58;
  v193 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FA8, &qword_20C5A5AE8);
  sub_20C4E17AC();
  LODWORD(v188) = v82;
  v84 = sub_20C59DA9C();
  v86 = sub_20C479640(v84, v85, &v191);

  *(v83 + 4) = v86;
  *(v83 + 12) = 2082;
  v87 = sub_20C59ECDC();
  v192 = v87;
  v193 = BYTE4(v87) & 1;
  v88 = sub_20C59DA9C();
  v90 = v89;
  (*(v55 + 8))(v80, v186);
  v91 = sub_20C479640(v88, v90, &v191);

  *(v83 + 14) = v91;
  v92 = v188;
LABEL_32:
  _os_log_impl(&dword_20C472000, v81, v92, "Playback transitioning from %{public}s to %{public}s is a valid transition", v83, 0x16u);
  v105 = v189;
  swift_arrayDestroy();
  MEMORY[0x20F2FFF90](v105, -1, -1);
  MEMORY[0x20F2FFF90](v83, -1, -1);

LABEL_55:
  (*(v53 + 8))(v79, v190);
  return 1;
}

uint64_t sub_20C4CE9EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = sub_20C59E78C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F90, &qword_20C5A5AD8);
  MEMORY[0x28223BE20](v6);
  v58 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v50[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v59 = &v50[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v50[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v50[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v50[-v22];
  v52 = a1;
  sub_20C49C928(&v50[-v22]);
  v24 = *MEMORY[0x277D52BB0];
  v62 = v4[13];
  v63 = v4 + 13;
  v62(v20, v24, v3);
  v25 = v4[7];
  v60 = v4 + 7;
  v64 = v25;
  v25(v20, 0, 1, v3);
  v56 = v6;
  v26 = *(v6 + 48);
  v65 = v23;
  sub_20C4775E4(v23, v10, &qword_27C7C4F58, &unk_20C5A5AB0);
  sub_20C4775E4(v20, &v10[v26], &qword_27C7C4F58, &unk_20C5A5AB0);
  v57 = v4;
  v27 = v4[6];
  if (v27(v10, 1, v3) != 1)
  {
    sub_20C4775E4(v10, v17, &qword_27C7C4F58, &unk_20C5A5AB0);
    if (v27(&v10[v26], 1, v3) != 1)
    {
      v32 = v57;
      v33 = v54;
      (v57[4])(v54, &v10[v26], v3);
      sub_20C4E2084(&qword_27C7C4F98, MEMORY[0x277D52BC0], MEMORY[0x277D52BC8]);
      v51 = sub_20C5A033C();
      v34 = v32[1];
      v34(v33, v3);
      sub_20C477B50(v20, &qword_27C7C4F58, &unk_20C5A5AB0);
      v34(v17, v3);
      sub_20C477B50(v10, &qword_27C7C4F58, &unk_20C5A5AB0);
      v31 = v59;
      v29 = v64;
      v30 = v58;
      if ((v51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_20C477B50(v20, &qword_27C7C4F58, &unk_20C5A5AB0);
    (v57[1])(v17, v3);
    v29 = v64;
    v30 = v58;
    v31 = v59;
LABEL_6:
    sub_20C477B50(v10, &qword_27C7C4F90, &qword_20C5A5AD8);
    goto LABEL_10;
  }

  sub_20C477B50(v20, &qword_27C7C4F58, &unk_20C5A5AB0);
  v28 = v27(&v10[v26], 1, v3);
  v29 = v64;
  v30 = v58;
  v31 = v59;
  if (v28 != 1)
  {
    goto LABEL_6;
  }

  sub_20C477B50(v10, &qword_27C7C4F58, &unk_20C5A5AB0);
LABEL_8:
  sub_20C59DE1C();
  v36 = v35;
  sub_20C59EC7C();
  if (v36 - v37 > 0.5)
  {
    v38 = v65;
    sub_20C477B50(v65, &qword_27C7C4F58, &unk_20C5A5AB0);
    v62(v38, *MEMORY[0x277D52B80], v3);
    v29(v38, 0, 1, v3);
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58, &unk_20C5A5AB0);
  }

LABEL_10:
  v62(v31, *MEMORY[0x277D52BA0], v3);
  v29(v31, 0, 1, v3);
  v39 = *(v56 + 48);
  sub_20C4775E4(v65, v30, &qword_27C7C4F58, &unk_20C5A5AB0);
  sub_20C4775E4(v31, v30 + v39, &qword_27C7C4F58, &unk_20C5A5AB0);
  if (v27(v30, 1, v3) == 1)
  {
    sub_20C477B50(v31, &qword_27C7C4F58, &unk_20C5A5AB0);
    if (v27((v30 + v39), 1, v3) == 1)
    {
      sub_20C477B50(v30, &qword_27C7C4F58, &unk_20C5A5AB0);
      goto LABEL_18;
    }

LABEL_15:
    sub_20C477B50(v30, &qword_27C7C4F90, &qword_20C5A5AD8);
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58, &unk_20C5A5AB0);
  }

  v40 = v53;
  sub_20C4775E4(v30, v53, &qword_27C7C4F58, &unk_20C5A5AB0);
  if (v27((v30 + v39), 1, v3) == 1)
  {
    sub_20C477B50(v31, &qword_27C7C4F58, &unk_20C5A5AB0);
    (v57[1])(v40, v3);
    goto LABEL_15;
  }

  v42 = v57;
  v43 = v30 + v39;
  v44 = v54;
  (v57[4])(v54, v43, v3);
  sub_20C4E2084(&qword_27C7C4F98, MEMORY[0x277D52BC0], MEMORY[0x277D52BC8]);
  v45 = sub_20C5A033C();
  v46 = v42[1];
  v46(v44, v3);
  sub_20C477B50(v31, &qword_27C7C4F58, &unk_20C5A5AB0);
  v46(v40, v3);
  sub_20C477B50(v30, &qword_27C7C4F58, &unk_20C5A5AB0);
  if ((v45 & 1) == 0)
  {
    return sub_20C4E1800(v65, v61, &qword_27C7C4F58, &unk_20C5A5AB0);
  }

LABEL_18:
  v47 = *(v55 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause);
  if (v47 > 3)
  {
    if (v47 == 4)
    {
      sub_20C477B50(v65, &qword_27C7C4F58, &unk_20C5A5AB0);
      v48 = MEMORY[0x277D52B88];
      goto LABEL_27;
    }

    if (v47 == 5)
    {
      return sub_20C4E1800(v65, v61, &qword_27C7C4F58, &unk_20C5A5AB0);
    }

LABEL_24:
    sub_20C477B50(v65, &qword_27C7C4F58, &unk_20C5A5AB0);
    v48 = MEMORY[0x277D52B80];
    goto LABEL_27;
  }

  if (v47 == 2)
  {
    sub_20C477B50(v65, &qword_27C7C4F58, &unk_20C5A5AB0);
    v48 = MEMORY[0x277D52B70];
    goto LABEL_27;
  }

  if (v47 != 3)
  {
    goto LABEL_24;
  }

  sub_20C477B50(v65, &qword_27C7C4F58, &unk_20C5A5AB0);
  v48 = MEMORY[0x277D52B98];
LABEL_27:
  v49 = v61;
  v62(v61, *v48, v3);
  return (v64)(v49, 0, 1, v3);
}

unint64_t sub_20C4CF2D0()
{
  v1 = v0;
  v397 = sub_20C59D46C();
  v348 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v396 = &v338 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70, &qword_20C5A8B20);
  MEMORY[0x28223BE20](v3 - 8);
  v395 = &v338 - v4;
  v5 = sub_20C59D7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v443 = &v338 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v409);
  v408 = &v338 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C59E13C();
  MEMORY[0x28223BE20](v9 - 8);
  v407 = &v338 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v11 - 8);
  v406 = &v338 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v13 - 8);
  v405 = &v338 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v15 - 8);
  v404 = &v338 - v16;
  v403 = sub_20C59E18C();
  v414 = *(v403 - 8);
  MEMORY[0x28223BE20](v403);
  v402 = &v338 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_20C59E0BC();
  v413 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v438 = &v338 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v425 = &v338 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v21 - 8);
  v437 = &v338 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v424 = &v338 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v25 - 8);
  v394 = &v338 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v393 = &v338 - v28;
  MEMORY[0x28223BE20](v29);
  v392 = &v338 - v30;
  MEMORY[0x28223BE20](v31);
  v382 = (&v338 - v32);
  MEMORY[0x28223BE20](v33);
  v384 = &v338 - v34;
  MEMORY[0x28223BE20](v35);
  v378 = (&v338 - v36);
  v400 = sub_20C59E7FC();
  v412 = *(v400 - 8);
  MEMORY[0x28223BE20](v400);
  v436 = &v338 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v435 = &v338 - v39;
  MEMORY[0x28223BE20](v40);
  v423 = &v338 - v41;
  MEMORY[0x28223BE20](v42);
  v422 = &v338 - v43;
  v399 = sub_20C59E95C();
  v411 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v434 = &v338 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v421 = (&v338 - v46);
  v420 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v420);
  v383 = &v338 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v381 = &v338 - v49;
  MEMORY[0x28223BE20](v50);
  v380 = &v338 - v51;
  v371 = sub_20C59D63C();
  v370 = *(v371 - 8);
  MEMORY[0x28223BE20](v371);
  v369 = &v338 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v368 = &v338 - v54;
  MEMORY[0x28223BE20](v55);
  v375 = &v338 - v56;
  v440 = sub_20C59DEBC();
  v410 = *(v440 - 8);
  MEMORY[0x28223BE20](v440);
  v391 = &v338 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v398 = &v338 - v59;
  MEMORY[0x28223BE20](v60);
  v352 = &v338 - v61;
  v417 = sub_20C59E80C();
  v344 = *(v417 - 8);
  MEMORY[0x28223BE20](v417);
  v390 = &v338 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v373 = &v338 - v64;
  MEMORY[0x28223BE20](v65);
  v416 = &v338 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v67 - 8);
  v389 = &v338 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v372 = (&v338 - v70);
  MEMORY[0x28223BE20](v71);
  v418 = &v338 - v72;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00, &qword_20C5A5A10);
  v365 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v442 = &v338 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v430 = &v338 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E20, &unk_20C5A5920);
  MEMORY[0x28223BE20](v76 - 8);
  v364 = &v338 - v77;
  v428 = sub_20C59E1EC();
  v427 = *(v428 - 8);
  MEMORY[0x28223BE20](v428);
  v376 = &v338 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8, &unk_20C5A58F0);
  MEMORY[0x28223BE20](v79 - 8);
  v426 = &v338 - v80;
  v441 = sub_20C5A01CC();
  v439 = *(v441 - 8);
  MEMORY[0x28223BE20](v441);
  v82 = &v338 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v433 = &v338 - v84;
  MEMORY[0x28223BE20](v85);
  v432 = &v338 - v86;
  MEMORY[0x28223BE20](v87);
  v374 = &v338 - v88;
  MEMORY[0x28223BE20](v89);
  v91 = &v338 - v90;
  v351 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v345 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v367 = &v338 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v419 = (&v338 - v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v95 - 8);
  v342 = &v338 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v377 = &v338 - v98;
  MEMORY[0x28223BE20](v99);
  v379 = &v338 - v100;
  MEMORY[0x28223BE20](v101);
  v103 = &v338 - v102;
  v104 = sub_20C59ECFC();
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v387 = &v338 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v363 = &v338 - v108;
  v110 = MEMORY[0x28223BE20](v109);
  v111 = *(v105 + 16);
  v431 = (&v338 - v112);
  v385 = v111;
  v111(v110);
  if (v0[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform] == 3 && (sub_20C4C9020() & 1) != 0)
  {
    sub_20C59FE3C();
    v113 = sub_20C5A01BC();
    v114 = sub_20C5A088C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_20C472000, v113, v114, "MetricPlaybackTracker Disabled", v115, 2u);
      MEMORY[0x20F2FFF90](v115, -1, -1);
    }

    (*(v439 + 8))(v82, v441);
    return (*(v105 + 8))(v431, v104);
  }

  v346 = v104;
  v347 = v105;
  v117 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v343 = v117;
  sub_20C4775E4(&v1[v117], v103, &qword_27C7C4E00, &qword_20C5A5910);
  v118 = v345 + 48;
  v366 = *(v345 + 48);
  if (v366(v103, 1, v351))
  {
    sub_20C477B50(v103, &qword_27C7C4E00, &qword_20C5A5910);
    v119 = 0xFF00000000;
  }

  else
  {
    v120 = v419;
    sub_20C4E1744(v103, v419, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    sub_20C477B50(v103, &qword_27C7C4E00, &qword_20C5A5910);
    v121 = *v120;
    v122 = *(v120 + 4);
    sub_20C4E16E4(v120, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    v123 = 0x100000000;
    if (!v122)
    {
      v123 = 0;
    }

    v119 = v123 | v121;
  }

  v124 = v431;
  if ((sub_20C4CD59C(v119, v431) & 1) == 0)
  {
    v141 = &v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition];
    v142 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition];
    if (v142)
    {
      v143 = *(v141 + 1);

      v142(v144);
      sub_20C490918(v142, v143);
    }

    return (*(v347 + 8))(v124, v346);
  }

  v386 = v5;
  sub_20C59FE3C();
  v125 = sub_20C5A01BC();
  v126 = sub_20C5A08AC();
  v127 = os_log_type_enabled(v125, v126);
  v415 = v6;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v451 = v129;
    *v128 = 136446210;
    swift_beginAccess();
    sub_20C4E2084(&qword_27C7C5A90, MEMORY[0x277D53C58], MEMORY[0x277D53C60]);
    v130 = sub_20C5A0E6C();
    v132 = sub_20C479640(v130, v131, &v451);

    *(v128 + 4) = v132;
    _os_log_impl(&dword_20C472000, v125, v126, "Received playback updated with Playback: %{public}s", v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    MEMORY[0x20F2FFF90](v129, -1, -1);
    MEMORY[0x20F2FFF90](v128, -1, -1);
  }

  v133 = *(v439 + 8);
  v133(v91, v441);
  v134 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
  swift_beginAccess();
  v135 = &v1[v134];
  v136 = v426;
  sub_20C4775E4(v135, v426, &qword_27C7C4DA8, &unk_20C5A58F0);
  v137 = v427;
  v138 = v428;
  v139 = v427[6](v136, 1, v428);
  v388 = v133;
  v362 = v118;
  if (v139)
  {
    sub_20C477B50(v136, &qword_27C7C4DA8, &unk_20C5A58F0);
    v140 = v431;
  }

  else
  {
    v145 = v376;
    v137[2](v376, v136, v138);
    sub_20C477B50(v136, &qword_27C7C4DA8, &unk_20C5A58F0);
    v146 = sub_20C59E1BC();
    (v137[1])(v145, v138);
    v140 = v431;
    v147 = v429;
    if ((v146 & 1) == 0)
    {
      swift_beginAccess();
      sub_20C59EC7C();
      if (v148 == 0.0 && (v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedStartTime + 8] & 1) == 0)
      {
        v149 = v364;
        (*(v365 + 56))(v364, 1, 1, v147);
        v150 = v363;
        sub_20C59ECEC();
        sub_20C477B50(v149, &qword_27C7C4E20, &unk_20C5A5920);
        swift_beginAccess();
        (*(v347 + 40))(v140, v150, v346);
      }
    }
  }

  swift_beginAccess();
  v151 = v430;
  sub_20C59ECAC();
  v152 = *MEMORY[0x277D53C08];
  v153 = sub_20C59EC9C();
  v154 = v442;
  (*(*(v153 - 8) + 104))(v442, v152, v153);
  swift_storeEnumTagMultiPayload();
  v155 = MEMORY[0x277D53C20];
  sub_20C4E2084(&qword_27C7C4F88, MEMORY[0x277D53C20], MEMORY[0x277D53C28]);
  sub_20C4E2084(&qword_27C7C4F50, v155, MEMORY[0x277D53C30]);
  v156 = sub_20C59DA6C();
  sub_20C477B50(v154, &qword_27C7C4F00, &qword_20C5A5A10);
  sub_20C477B50(v151, &qword_27C7C4F00, &qword_20C5A5A10);
  v124 = v140;
  v157 = sub_20C59ECDC();
  v449 = v157;
  v450 = BYTE4(v157) & 1;
  v447 = 1;
  v448 = 1;
  v158 = sub_20C4A24A0();
  v159 = sub_20C4A24F4();
  v430 = v158;
  v429 = v159;
  v160 = sub_20C59DA6C();
  if (v156 & 1) != 0 && (v160 & 1) != 0 && (v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_isPictureInPictureStopping])
  {
    return (*(v347 + 8))(v124, v346);
  }

  v161 = v387;
  v162 = v346;
  v385(v387, v140, v346);
  v163 = sub_20C59ECDC();
  v449 = v163;
  v450 = BYTE4(v163) & 1;
  LOBYTE(v447) = 0;
  v164 = sub_20C59DA7C();
  v165 = *(v347 + 8);
  v347 += 8;
  v165(v161, v162);
  if (v164)
  {
    v166 = 1;
  }

  else
  {
    v166 = 2;
  }

  sub_20C4CE9EC(v140, v418);
  v167 = sub_20C59ECDC();
  v449 = v167;
  v450 = BYTE4(v167) & 1;
  LOBYTE(v447) = 0;
  v168 = sub_20C59DA7C();
  if (v168)
  {
    v169 = v379;
    sub_20C4775E4(&v1[v343], v379, &qword_27C7C4E00, &qword_20C5A5910);
    v170 = v366(v169, 1, v351);
    v339 = v165;
    LODWORD(v365) = v166;
    if (v170)
    {
      sub_20C477B50(v169, &qword_27C7C4E00, &qword_20C5A5910);
      (*(v344 + 104))(v416, *MEMORY[0x277D52E40], v417);
    }

    else
    {
      v179 = v419;
      sub_20C4E1744(v169, v419, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
      sub_20C477B50(v169, &qword_27C7C4E00, &qword_20C5A5910);
      v180 = *v179;
      v181 = *(v179 + 4);
      sub_20C4E16E4(v179, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
      if (v181 == 1)
      {
        if (v180 > 1u)
        {
          if (v180 == 2)
          {
            v182 = MEMORY[0x277D52E60];
          }

          else
          {
            v182 = MEMORY[0x277D52E38];
          }
        }

        else if (v180)
        {
          v182 = MEMORY[0x277D52E58];
        }

        else
        {
          v182 = MEMORY[0x277D52E40];
        }
      }

      else
      {
        v182 = MEMORY[0x277D52E50];
      }

      (*(v344 + 104))(v416, *v182, v417);
    }

    v363 = 0;
    v366 = 0;
  }

  else
  {
    v171 = v377;
    sub_20C4775E4(&v1[v343], v377, &qword_27C7C4E00, &qword_20C5A5910);
    v172 = v351;
    if (v366(v171, 1, v351) == 1)
    {
      sub_20C477B50(v171, &qword_27C7C4E00, &qword_20C5A5910);
      v173 = v374;
      sub_20C59FE3C();
      v174 = sub_20C5A01BC();
      v175 = sub_20C5A089C();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        *v176 = 0;
        _os_log_impl(&dword_20C472000, v174, v175, "Fail to detect invalid Playback updated from never started to not playing", v176, 2u);
        MEMORY[0x20F2FFF90](v176, -1, -1);
      }

      v388(v173, v441);
      sub_20C477B50(v418, &qword_27C7C4F58, &unk_20C5A5AB0);
      return (v165)(v140, v346);
    }

    LODWORD(v365) = v166;
    v339 = v165;
    v177 = v171;
    v178 = v367;
    sub_20C4E1680(v177, v367);
    v366 = *(v178 + 1);
    (*(v344 + 16))(v416, &v178[*(v172 + 24)], v417);
    v363 = *&v178[*(v172 + 28)];
    sub_20C4E16E4(v178, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
  }

  v183 = v380;
  sub_20C59EC7C();
  sub_20C59EC7C();
  v184 = sub_20C4C96BC();
  v185 = sub_20C4C98D8();
  v186 = v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType];
  v187 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v188 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8];
  v189 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
  swift_beginAccess();
  v355 = v189;
  sub_20C4E1744(&v1[v189], v183, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v364) = v168;
  v367 = v184;
  v362 = v185;
  LODWORD(v361) = v186;
  v360 = v187;
  v359 = v188;
  if (EnumCaseMultiPayload)
  {

    sub_20C4E16E4(v183, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v358 = 0;
    v357 = 0;
  }

  else
  {
    v191 = v370;
    v192 = v375;
    v193 = v183;
    v194 = v371;
    v370[4](v375, v193, v371);
    v358 = sub_20C59D51C();
    v357 = v195;
    v196 = v191[1];

    (v196)(v192, v194);
  }

  LODWORD(v356) = sub_20C4C9020();
  v197 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  v198 = *(v411 + 16);
  v380 = v197;
  v411 += 16;
  v379 = v198;
  (v198)(v421, &v1[v197], v399);
  v442 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v199 = v378;
  sub_20C59DDFC();
  v200 = sub_20C59E49C();
  v341 = *(v200 - 8);
  v202 = v341 + 48;
  v201 = *(v341 + 48);
  LODWORD(v419) = 1;
  LODWORD(v197) = (v201)(v199, 1, v200);
  sub_20C477B50(v199, &qword_27C7C44C0, qword_20C5A3420);
  v204 = v412 + 104;
  v203 = *(v412 + 104);
  v387 = v1;
  v205 = *MEMORY[0x277D52E30];
  v206 = *MEMORY[0x277D52E28];
  if (v197 == 1)
  {
    v207 = v205;
  }

  else
  {
    v207 = v206;
  }

  v208 = v400;
  v203(v422, v207, v400);
  v209 = v384;
  sub_20C59DDFC();
  v385 = v200;
  v428 = v202;
  v427 = v201;
  v210 = (v201)(v209, 1, v200);
  sub_20C477B50(v209, &qword_27C7C44C0, qword_20C5A3420);
  LODWORD(v426) = v205;
  LODWORD(v377) = v206;
  if (v210 == 1)
  {
    v211 = v205;
  }

  else
  {
    v211 = v206;
  }

  v212 = v387;
  v412 = v204;
  v378 = v203;
  v203(v423, v211, v208);
  v354 = sub_20C59DD5C();
  v353 = v213;
  v214 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  swift_beginAccess();
  sub_20C4775E4(&v212[v214], v424, &qword_27C7C4E10, &qword_20C5A5918);
  v350 = sub_20C59DD5C();
  v349 = v215;
  v216 = *&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24];
  v376 = &v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator];
  __swift_project_boxed_opaque_existential_1(&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], v216);
  sub_20C59F6EC();
  v217 = sub_20C59E31C();
  v219 = v218;
  if (v217 != sub_20C59E31C() || v219 != v220)
  {
    LODWORD(v419) = sub_20C5A0E9C();
  }

  v221 = *(v413 + 16);
  v375 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v413 += 16;
  v374 = v221;
  (v221)(v425, &v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType], v401);
  sub_20C59DE1C();
  v222 = *&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8];
  v384 = *&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext];

  v223 = v382;
  sub_20C59DDFC();
  v224 = v385;
  v225 = (v427)(v223, 1, v385);
  v226 = v355;
  if (v225 == 1)
  {
    sub_20C477B50(v223, &qword_27C7C44C0, qword_20C5A3420);
    v340 = 0;
  }

  else
  {
    sub_20C59E48C();
    v340 = v227;
    (*(v341 + 8))(v223, v224);
  }

  v228 = v381;
  sub_20C4E1744(v226 + v212, v381, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v229 = swift_getEnumCaseMultiPayload();
  v381 = v222;
  if (v229 == 1)
  {
    v230 = v370;
    v231 = v368;
    v232 = v371;
    v370[4](v368, v228, v371);
    sub_20C59D51C();
    (v230[1])(v231, v232);
  }

  else
  {
    sub_20C4E16E4(v228, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v233 = v383;
  v234 = v372;
  v235 = *(v344 + 16);
  v383 = (v344 + 16);
  v382 = v235;
  v235(v373, v416, v417);
  sub_20C4775E4(v418, v234, &qword_27C7C4F58, &unk_20C5A5AB0);
  sub_20C4E1744(v226 + v212, v233, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v236 = v370;
    v237 = v369;
    v238 = v371;
    v370[4](v369, v233, v371);
    sub_20C59D51C();
    (v236[1])(v237, v238);
  }

  else
  {
    sub_20C4E16E4(v233, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v239 = v352;
  sub_20C59DE9C();
  v240 = v410;
  v241 = *(v410 + 16);
  v373 = (v410 + 16);
  v372 = v241;
  v241(v398, v239, v440);
  v242 = sub_20C59E40C();
  v243 = *(v242 - 8);
  v244 = *(v243 + 56);
  v371 = v242;
  v370 = v244;
  v369 = (v243 + 56);
  (v244)(v404, 1, 1);
  v245 = v405;
  static MetricEnvironment.current()();
  v246 = sub_20C59E2AC();
  v247 = *(v246 - 8);
  v248 = *(v247 + 56);
  v368 = v246;
  v367 = v248;
  v366 = (v247 + 56);
  (v248)(v245, 0, 1);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
  v250 = *(v249 - 8);
  v251 = *(v250 + 56);
  v365 = v249;
  v364 = v251;
  v363 = (v250 + 56);
  (v251)(v406, 1, 1);
  v252 = sub_20C59E5EC();
  v253 = *(v252 - 8);
  v254 = *(v253 + 56);
  v362 = v252;
  v361 = v254;
  v360 = v253 + 56;
  (v254)(v407, 1, 1);
  v255 = v402;
  sub_20C59E16C();
  v256 = *&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub];
  v257 = *&v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub + 8];
  ObjectType = swift_getObjectType();
  v259 = v414;
  v260 = *(v414 + 16);
  v261 = v408;
  v262 = v403;
  v356 = v414 + 16;
  v355 = v260;
  v260(v408, v255, v403);
  v354 = sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
  v359 = v256;
  v357 = ObjectType;
  v358 = v257;
  sub_20C59F5FC();
  sub_20C4E16E4(v261, type metadata accessor for MetricPlayStreamOccurred);
  v263 = *(v259 + 8);
  v414 = v259 + 8;
  v353 = v263;
  v263(v255, v262);
  v264 = *(v240 + 8);
  v410 = v240 + 8;
  v352 = v264;
  (v264)(v239, v440);
  v265 = v431;
  sub_20C59EC7C();
  result = sub_20C4CD2C0(v266);
  v267 = result;
  v268 = *(result + 16);
  v269 = v386;
  v270 = v415;
  v271 = v443;
  v272 = v388;
  if (v268)
  {
    v273 = 0;
    v349 = &v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap];
    v424 = result + ((*(v415 + 80) + 32) & ~*(v415 + 80));
    v423 = (v415 + 16);
    v422 = (v439 + 8);
    v421 = (v415 + 8);
    v341 += 8;
    ++v348;
    v350 = result;
    v425 = v268;
    while (v273 < *(v267 + 16))
    {
      (*(v270 + 16))(v271, v424 + *(v270 + 72) * v273, v269);
      sub_20C59EC7C();
      v277 = v276;
      sub_20C59D7CC();
      v279 = v277 - v278;
      v280 = sub_20C59ECDC();
      v444 = v280;
      v445 = BYTE4(v280) & 1;
      v446 = 0;
      if (sub_20C59DA7C())
      {
        v420 = v273;
        sub_20C59FE3C();
        v281 = sub_20C5A01BC();
        v282 = sub_20C5A08AC();
        if (os_log_type_enabled(v281, v282))
        {
          v283 = swift_slowAlloc();
          *v283 = 0;
          _os_log_impl(&dword_20C472000, v281, v282, "Workout Playback Update triggering music track start event", v283, 2u);
          MEMORY[0x20F2FFF90](v283, -1, -1);
        }

        v272(v432, v441);
        sub_20C59EC7C();
        LODWORD(v419) = sub_20C4C9020();
        (v379)(v434, &v380[v212], v399);
        v284 = v392;
        sub_20C59DDFC();
        LODWORD(v439) = 1;
        v285 = v385;
        v286 = v427;
        v287 = (v427)(v284, 1, v385);
        v288 = v377;
        if (v287 == 1)
        {
          v289 = v426;
        }

        else
        {
          v289 = v377;
        }

        sub_20C477B50(v284, &qword_27C7C44C0, qword_20C5A3420);
        v290 = v400;
        v291 = v378;
        v378(v435, v289, v400);
        v292 = v393;
        sub_20C59DDFC();
        if ((v286)(v292, 1, v285) == 1)
        {
          v293 = v426;
        }

        else
        {
          v293 = v288;
        }

        sub_20C477B50(v292, &qword_27C7C44C0, qword_20C5A3420);
        v291(v436, v293, v290);
        v294 = sub_20C59E43C();
        (*(*(v294 - 8) + 56))(v437, 1, 1, v294);
        sub_20C59D7AC();
        __swift_project_boxed_opaque_existential_1(v376, *(v376 + 3));
        sub_20C59F6EC();
        v295 = sub_20C59E31C();
        v297 = v296;
        if (v295 != sub_20C59E31C() || v297 != v298)
        {
          LODWORD(v439) = sub_20C5A0E9C();
        }

        (v374)(v438, &v375[v212], v401);
        sub_20C59D7BC();

        v299 = v394;
        sub_20C59DDFC();
        if ((v427)(v299, 1, v285) == 1)
        {
          sub_20C477B50(v299, &qword_27C7C44C0, qword_20C5A3420);
        }

        else
        {
          sub_20C59E48C();
          (*v341)(v299, v285);
        }

        v382(v390, v416, v417);
        v311 = sub_20C59E78C();
        (*(*(v311 - 8) + 56))(v389, 1, 1, v311);
        v312 = v391;
        sub_20C59DE9C();
        v313 = v372;
        v372(v398, v312, v440);
        (v370)(v404, 1, 1, v371);
        v314 = v405;
        static MetricEnvironment.current()();
        (v367)(v314, 0, 1, v368);
        (v364)(v406, 1, 1, v365);
        v361(v407, 1, 1, v362);
        v315 = v402;
        sub_20C59E16C();
        v316 = v408;
        v317 = v403;
        v355(v408, v315, v403);
        sub_20C59F5FC();
        sub_20C4E16E4(v316, type metadata accessor for MetricPlayStreamOccurred);
        v271 = v443;
        v439 = sub_20C59D7AC();
        v319 = v318;
        v320 = v395;
        v321 = v440;
        v313(v395, v312, v440);
        v322 = v396;
        sub_20C59D45C();
        sub_20C59D3DC();
        v324 = v323;
        (*v348)(v322, v397);
        started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
        *(v320 + *(started + 20)) = v324;
        (*(*(started - 8) + 56))(v320, 0, 1, started);
        swift_beginAccess();
        sub_20C52651C(v320, v439, v319);
        swift_endAccess();
        v353(v315, v317);
        (v352)(v312, v321);
        v269 = v386;
        v270 = v415;
        v212 = v387;
        v265 = v431;
        v272 = v388;
        v267 = v350;
        v275 = v425;
        v273 = v420;
      }

      else
      {
        sub_20C59FE3C();
        v300 = sub_20C5A01BC();
        v301 = sub_20C5A08AC();
        if (os_log_type_enabled(v300, v301))
        {
          v302 = v269;
          v303 = v265;
          v304 = v267;
          v305 = v272;
          v306 = v271;
          v307 = v212;
          v308 = v273;
          v309 = swift_slowAlloc();
          *v309 = 0;
          _os_log_impl(&dword_20C472000, v300, v301, "Workout Playback Update triggering music track stop event", v309, 2u);
          v310 = v309;
          v273 = v308;
          v212 = v307;
          v271 = v306;
          v272 = v305;
          v267 = v304;
          v265 = v303;
          v269 = v302;
          v270 = v415;
          MEMORY[0x20F2FFF90](v310, -1, -1);
        }

        v272(v433, v441);
        sub_20C59EC7C();
        sub_20C4DB4B0(v271, 2u, 0, 0, v418, v274, v279);
        v275 = v425;
      }

      ++v273;
      result = (*v421)(v271, v269);
      if (v275 == v273)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_88:

    v326 = sub_20C59ECDC();
    sub_20C59EC7C();
    v328 = v327;
    v329 = v351;
    v330 = v342;
    v331 = v416;
    v332 = v417;
    v382(&v342[*(v351 + 24)], v416, v417);
    sub_20C59D3EC();
    v334 = v333;
    v335 = sub_20C59EC8C();
    sub_20C59ECAC();
    (*(v344 + 8))(v331, v332);
    sub_20C477B50(v418, &qword_27C7C4F58, &unk_20C5A5AB0);
    *v330 = v326;
    *(v330 + 4) = BYTE4(v326) & 1;
    *(v330 + 8) = v328;
    *(v330 + *(v329 + 28)) = v334;
    *(v330 + *(v329 + 32)) = v335;
    (*(v345 + 56))(v330, 0, 1, v329);
    v336 = v343;
    swift_beginAccess();
    sub_20C4E20CC(v330, &v212[v336], &qword_27C7C4E00, &qword_20C5A5910);
    swift_endAccess();
    if ((v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] - 2 < 4) | v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] & 1)
    {
      v337 = 5;
    }

    else
    {
      v337 = 1;
    }

    v212[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause] = v337;
    return (v339)(v265, v346);
  }

  return result;
}

uint64_t sub_20C4D29B8(double a1)
{
  v2 = v1;
  v188 = sub_20C5A01CC();
  v184 = *(v188 - 1);
  MEMORY[0x28223BE20](v188);
  v175 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58, &qword_20C5A5938);
  MEMORY[0x28223BE20](v5 - 8);
  v168 = &v142 - v6;
  v167 = sub_20C59D7DC();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = &v142 - v9;
  v197 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v197);
  v196 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59E13C();
  MEMORY[0x28223BE20](v11 - 8);
  v195 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = &v142 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v15 - 8);
  v190 = &v142 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v17 - 8);
  v189 = &v142 - v18;
  v194 = sub_20C59E18C();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v191 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_20C59E80C();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v187 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_20C59E0BC();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v206 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v22 - 8);
  v205 = &v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v24 - 8);
  v177 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v174 = &v142 - v27;
  MEMORY[0x28223BE20](v28);
  v171 = &v142 - v29;
  v173 = sub_20C59E7FC();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v204 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v203 = &v142 - v32;
  v170 = sub_20C59E95C();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v202 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v201);
  v180 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v176 = &v142 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v142 - v38;
  v199 = sub_20C59D63C();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v162 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v161 = &v142 - v42;
  MEMORY[0x28223BE20](v43);
  v160 = &v142 - v44;
  v207 = sub_20C59DEBC();
  v186 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v181 = &v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v185 = &v142 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v48 - 8);
  v163 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v200 = &v142 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = (&v142 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v142 - v56;
  v58 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v142 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  sub_20C4775E4(v1 + v62, v57, &qword_27C7C4E00, &qword_20C5A5910);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_20C477B50(v57, &qword_27C7C4E00, &qword_20C5A5910);
    v63 = v175;
    sub_20C59FE3C();
    v64 = sub_20C5A01BC();
    v65 = sub_20C5A088C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20C472000, v64, v65, "Playback transitioning from not playing to seek is not a valid transition", v66, 2u);
      MEMORY[0x20F2FFF90](v66, -1, -1);
    }

    return v184[1](v63, v188);
  }

  else
  {
    sub_20C4E1680(v57, v61);
    *(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking) = 1;
    v159 = *(v61 + 1);
    v68 = *(v58 + 28);
    v150 = *(v58 + 24);
    v188 = v61;
    v155 = *&v61[v68];
    v69 = *MEMORY[0x277D52B90];
    v70 = sub_20C59E78C();
    v71 = *(v70 - 8);
    v72 = *(v71 + 104);
    v147 = v69;
    v145 = v71 + 104;
    v144 = v72;
    v72(v54, v69, v70);
    v73 = *(v71 + 56);
    v184 = v54;
    v148 = v70;
    v146 = v71 + 56;
    v143 = v73;
    v73(v54, 0, 1, v70);
    v158 = sub_20C4C96BC();
    v157 = sub_20C4C98D8();
    v156 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType);
    v74 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8);
    v154 = *(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
    v75 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
    swift_beginAccess();
    v76 = v2;
    v175 = v75;
    sub_20C4E1744(v2 + v75, v39, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v153 = v74;
    if (EnumCaseMultiPayload)
    {

      sub_20C4E16E4(v39, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
      v152 = 0;
      v151 = 0;
    }

    else
    {
      v78 = v198;
      v79 = v160;
      v80 = v199;
      (*(v198 + 32))(v160, v39, v199);
      v152 = sub_20C59D51C();
      v151 = v81;
      v82 = *(v78 + 8);

      v82(v79, v80);
    }

    LODWORD(v160) = sub_20C4C9020();
    v83 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v169 + 16))(v202, v76 + v83, v170);
    v84 = v171;
    sub_20C59DDFC();
    v85 = sub_20C59E49C();
    v142 = *(v85 - 8);
    v86 = *(v142 + 48);
    LODWORD(v170) = 1;
    LODWORD(v83) = v86(v84, 1, v85);
    sub_20C477B50(v84, &qword_27C7C44C0, qword_20C5A3420);
    v87 = *(v172 + 104);
    v172 = v87;
    v88 = *MEMORY[0x277D52E30];
    LODWORD(v171) = *MEMORY[0x277D52E30];
    v89 = *MEMORY[0x277D52E28];
    if (v83 == 1)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = v173;
    v87(v203, v90, v173);
    v92 = v174;
    sub_20C59DDFC();
    v169 = v85;
    v149 = v86;
    v93 = v86(v92, 1, v85);
    v94 = v92;
    v95 = v76;
    sub_20C477B50(v94, &qword_27C7C44C0, qword_20C5A3420);
    if (v93 == 1)
    {
      v96 = v171;
    }

    else
    {
      v96 = v89;
    }

    (v172)(v204, v96, v91);
    v174 = sub_20C59DD5C();
    v173 = v97;
    v98 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
    swift_beginAccess();
    sub_20C4775E4(v76 + v98, v205, &qword_27C7C4E10, &qword_20C5A5918);
    v172 = sub_20C59DD5C();
    v171 = v99;
    __swift_project_boxed_opaque_existential_1((v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v100 = sub_20C59E31C();
    v102 = v101;
    if (v100 != sub_20C59E31C() || v102 != v103)
    {
      LODWORD(v170) = sub_20C5A0E9C();
    }

    (*(v178 + 16))(v206, v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v179);
    sub_20C59DE1C();
    v179 = *(v76 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);

    v104 = v177;
    sub_20C59DDFC();
    v105 = v169;
    if (v149(v104, 1, v169) == 1)
    {
      sub_20C477B50(v104, &qword_27C7C44C0, qword_20C5A3420);
      v178 = 0;
      v149 = 0;
    }

    else
    {
      v178 = sub_20C59E48C();
      v149 = v106;
      (*(v142 + 8))(v104, v105);
    }

    v107 = v187;
    v108 = v176;
    sub_20C4E1744(&v175[v76], v176, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v109 = v198;
      v110 = v161;
      v111 = v199;
      (*(v198 + 32))(v161, v108, v199);
      sub_20C59D51C();
      (*(v109 + 8))(v110, v111);
    }

    else
    {
      sub_20C4E16E4(v108, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v112 = v184;
    (*(v182 + 16))(v107, &v188[v150], v183);
    sub_20C4775E4(v112, v200, &qword_27C7C4F58, &unk_20C5A5AB0);
    v113 = v180;
    sub_20C4E1744(&v175[v76], v180, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v114 = v198;
      v115 = v162;
      v116 = v199;
      (*(v198 + 32))(v162, v113, v199);
      sub_20C59D51C();
      (*(v114 + 8))(v115, v116);
    }

    else
    {
      sub_20C4E16E4(v113, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v117 = v185;
    sub_20C59DE9C();
    v118 = v186;
    (*(v186 + 16))(v181, v117, v207);
    v119 = sub_20C59E40C();
    (*(*(v119 - 8) + 56))(v189, 1, 1, v119);
    v120 = v190;
    static MetricEnvironment.current()();
    v121 = sub_20C59E2AC();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
    (*(*(v122 - 8) + 56))(v192, 1, 1, v122);
    v123 = sub_20C59E5EC();
    (*(*(v123 - 8) + 56))(v195, 1, 1, v123);
    v124 = v191;
    sub_20C59E16C();
    swift_getObjectType();
    v125 = v193;
    v126 = v196;
    v127 = v194;
    (*(v193 + 16))(v196, v124, v194);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v126, type metadata accessor for MetricPlayStreamOccurred);
    (*(v125 + 8))(v124, v127);
    (*(v118 + 8))(v117, v207);
    sub_20C477B50(v184, &qword_27C7C4F58, &unk_20C5A5AB0);
    v128 = sub_20C4CD2C0(a1);
    if (*(v128 + 16))
    {
      v129 = v166;
      v130 = v164;
      v131 = v167;
      (*(v166 + 16))(v164, v128 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v167);

      v132 = *(v129 + 32);
      v133 = v165;
      v132(v165, v130, v131);
      sub_20C59D7CC();
      v135 = a1 - v134;
      v136 = v163;
      v137 = v148;
      v144(v163, v147, v148);
      v143(v136, 0, 1, v137);
      sub_20C4DB4B0(v133, 2u, 0, 0, v136, a1, v135);
      sub_20C477B50(v136, &qword_27C7C4F58, &unk_20C5A5AB0);
      v138 = v168;
      v132(v168, v133, v131);
      (*(v129 + 56))(v138, 0, 1, v131);
      v139 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
      swift_beginAccess();
      sub_20C4E20CC(v138, v95 + v139, &qword_27C7C4E58, &qword_20C5A5938);
      swift_endAccess();
      *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition) = v135;
    }

    else
    {
    }

    *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition) = a1;
    sub_20C59D3EC();
    v141 = v140;
    result = sub_20C4E16E4(v188, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    *(v95 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp) = v141;
  }

  return result;
}

uint64_t sub_20C4D43B8(double a1)
{
  v2 = v1;
  v372 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v326 = &v324 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00, &qword_20C5A5A10);
  MEMORY[0x28223BE20](v339);
  v325 = &v324 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v369 = &v324 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v8 - 8);
  v367 = &v324 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v370 = (&v324 - v11);
  v337 = sub_20C59D46C();
  v336 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v335 = &v324 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70, &qword_20C5A8B20);
  MEMORY[0x28223BE20](v13 - 8);
  v338 = &v324 - v14;
  v439 = sub_20C59D7DC();
  v438 = *(v439 - 8);
  MEMORY[0x28223BE20](v439 - 8);
  v420 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58, &qword_20C5A5938);
  MEMORY[0x28223BE20](v16 - 8);
  v368 = &v324 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v364 = &v324 - v19;
  MEMORY[0x28223BE20](v20);
  v437 = &v324 - v21;
  v436 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v436);
  v435 = &v324 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C59E13C();
  MEMORY[0x28223BE20](v23 - 8);
  v433 = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v25 - 8);
  v432 = &v324 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v27 - 8);
  v431 = &v324 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v29 - 8);
  v430 = &v324 - v30;
  v444 = sub_20C59E18C();
  v450 = *(v444 - 8);
  MEMORY[0x28223BE20](v444);
  v434 = &v324 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_20C59E0BC();
  v449 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v334 = &v324 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v359 = &v324 - v34;
  MEMORY[0x28223BE20](v35);
  v390 = &v324 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v37 - 8);
  v366 = &v324 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v419 = &v324 - v40;
  MEMORY[0x28223BE20](v41);
  v413 = &v324 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v43 - 8);
  v333 = &v324 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v332 = &v324 - v46;
  MEMORY[0x28223BE20](v47);
  v331 = &v324 - v48;
  MEMORY[0x28223BE20](v49);
  v356 = &v324 - v50;
  MEMORY[0x28223BE20](v51);
  v354 = &v324 - v52;
  MEMORY[0x28223BE20](v53);
  v353 = &v324 - v54;
  MEMORY[0x28223BE20](v55);
  v392 = (&v324 - v56);
  MEMORY[0x28223BE20](v57);
  v440 = &v324 - v58;
  MEMORY[0x28223BE20](v59);
  v455 = &v324 - v60;
  v424 = sub_20C59E7FC();
  v447 = *(v424 - 8);
  MEMORY[0x28223BE20](v424);
  v363 = &v324 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v362 = &v324 - v63;
  MEMORY[0x28223BE20](v64);
  v418 = &v324 - v65;
  MEMORY[0x28223BE20](v66);
  v417 = &v324 - v67;
  MEMORY[0x28223BE20](v68);
  v412 = &v324 - v69;
  MEMORY[0x28223BE20](v70);
  v411 = &v324 - v71;
  v423 = sub_20C59E95C();
  v446 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v360 = &v324 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v416 = &v324 - v74;
  MEMORY[0x28223BE20](v75);
  v410 = &v324 - v76;
  v77 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v77);
  v357 = &v324 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v355 = &v324 - v80;
  MEMORY[0x28223BE20](v81);
  v375 = &v324 - v82;
  MEMORY[0x28223BE20](v83);
  v393 = &v324 - v84;
  MEMORY[0x28223BE20](v85);
  v389 = (&v324 - v86);
  MEMORY[0x28223BE20](v87);
  v89 = &v324 - v88;
  v90 = sub_20C59D63C();
  v445 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v328 = &v324 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v327 = &v324 - v93;
  MEMORY[0x28223BE20](v94);
  v342 = &v324 - v95;
  MEMORY[0x28223BE20](v96);
  v344 = &v324 - v97;
  MEMORY[0x28223BE20](v98);
  v343 = &v324 - v99;
  MEMORY[0x28223BE20](v100);
  v102 = &v324 - v101;
  v454 = sub_20C59DEBC();
  v448 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v361 = &v324 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v358 = &v324 - v105;
  MEMORY[0x28223BE20](v106);
  v425 = &v324 - v107;
  MEMORY[0x28223BE20](v108);
  v352 = &v324 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v110 - 8);
  v330 = &v324 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v415 = &v324 - v113;
  MEMORY[0x28223BE20](v114);
  v442 = &v324 - v115;
  MEMORY[0x28223BE20](v116);
  v407 = &v324 - v117;
  MEMORY[0x28223BE20](v118);
  v120 = &v324 - v119;
  v121 = sub_20C59E80C();
  v122 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v374 = &v324 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v124);
  v329 = &v324 - v125;
  MEMORY[0x28223BE20](v126);
  v405 = &v324 - v127;
  MEMORY[0x28223BE20](v128);
  v414 = &v324 - v129;
  MEMORY[0x28223BE20](v130);
  v441 = &v324 - v131;
  MEMORY[0x28223BE20](v132);
  v406 = (&v324 - v133);
  MEMORY[0x28223BE20](v134);
  v136 = &v324 - v135;
  v459 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v388 = sub_20C59DD5C();
  v387 = v137;
  v386 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition];
  LODWORD(v137) = *MEMORY[0x277D52E48];
  v443 = v122;
  v138 = *(v122 + 104);
  v408 = v136;
  v427 = v137;
  v456 = v121;
  v428 = v122 + 104;
  v426 = v138;
  v138(v136);
  v365 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp;
  v380 = *&v1[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp];
  v139 = *MEMORY[0x277D52B68];
  v140 = sub_20C59E78C();
  v141 = *(v140 - 8);
  (*(v141 + 104))(v120, v139, v140);
  v142 = *(v141 + 56);
  v409 = v120;
  v143 = v120;
  v144 = v445;
  v404 = v140;
  v403 = v141 + 56;
  v402 = v142;
  v142(v143, 0, 1, v140);
  v385 = sub_20C4C96BC();
  v384 = sub_20C4C98D8();
  v350 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType;
  LODWORD(v383) = v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType];
  v145 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8];
  v382 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v349 = &v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale];
  v146 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
  swift_beginAccess();
  v457 = v146;
  sub_20C4E1744(&v2[v146], v89, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v458 = v77;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v421 = v90;
  v381 = v145;
  if (EnumCaseMultiPayload)
  {

    sub_20C4E16E4(v89, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v379 = 0;
    v378 = 0;
  }

  else
  {
    (*(v144 + 32))(v102, v89, v90);
    v379 = sub_20C59D51C();
    v378 = v148;
    v149 = *(v144 + 8);

    v149(v102, v90);
  }

  LODWORD(v377) = sub_20C4C9020();
  v150 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  v151 = *(v446 + 16);
  v400 = v150;
  v446 += 16;
  v398 = v151;
  v151(v410, &v2[v150], v423);
  v152 = v455;
  sub_20C59DDFC();
  v153 = sub_20C59E49C();
  v373 = *(v153 - 8);
  v154 = v373 + 48;
  v155 = *(v373 + 48);
  LODWORD(v391) = 1;
  LODWORD(v150) = v155(v152, 1, v153);
  sub_20C477B50(v152, &qword_27C7C44C0, qword_20C5A3420);
  v455 = v2;
  v157 = v447 + 104;
  v156 = *(v447 + 104);
  v158 = *MEMORY[0x277D52E30];
  v159 = *MEMORY[0x277D52E28];
  if (v150 == 1)
  {
    v160 = v158;
  }

  else
  {
    v160 = v159;
  }

  v161 = v424;
  v156(v411, v160, v424);
  v162 = v440;
  sub_20C59DDFC();
  v453 = v153;
  v452 = v154;
  v451 = v155;
  v163 = v155(v162, 1, v153);
  sub_20C477B50(v162, &qword_27C7C44C0, qword_20C5A3420);
  v399 = v158;
  v397 = v159;
  if (v163 == 1)
  {
    v164 = v158;
  }

  else
  {
    v164 = v159;
  }

  v447 = v157;
  v401 = v156;
  v156(v412, v164, v161);
  v165 = v455;
  v376 = sub_20C59DD5C();
  v351 = v166;
  v167 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  swift_beginAccess();
  v348 = v167;
  sub_20C4775E4(&v165[v167], v413, &qword_27C7C4E10, &qword_20C5A5918);
  v347 = sub_20C59DD5C();
  v346 = v168;
  v169 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24];
  v394 = &v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator];
  __swift_project_boxed_opaque_existential_1(&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], v169);
  sub_20C59F6EC();
  v170 = sub_20C59E31C();
  v172 = v171;
  if (v170 != sub_20C59E31C() || v172 != v173)
  {
    LODWORD(v391) = sub_20C5A0E9C();
  }

  v174 = *(v449 + 16);
  v395 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v449 += 16;
  v396 = v174;
  v174(v390, &v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType], v429);
  sub_20C59DE1C();
  v175 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8];
  v422 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext];
  v440 = v175;

  v176 = v392;
  sub_20C59DDFC();
  v177 = v453;
  if (v451(v176, 1, v453) == 1)
  {
    sub_20C477B50(v176, &qword_27C7C44C0, qword_20C5A3420);
    v345 = 0;
  }

  else
  {
    v345 = sub_20C59E48C();
    (*(v373 + 8))(v176, v177);
  }

  v178 = v389;
  sub_20C4E1744(&v165[v457], v389, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v179 = v445;
    v180 = v343;
    v181 = v421;
    (*(v445 + 32))(v343, v178, v421);
    sub_20C59D51C();
    (*(v179 + 8))(v180, v181);
  }

  else
  {
    sub_20C4E16E4(v178, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v182 = v393;
  v183 = *(v443 + 16);
  v393 = (v443 + 16);
  v392 = v183;
  v183(v406, v408, v456);
  sub_20C4775E4(v409, v407, &qword_27C7C4F58, &unk_20C5A5AB0);
  sub_20C4E1744(&v165[v457], v182, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v184 = v445;
    v185 = v344;
    v186 = v182;
    v187 = v421;
    (*(v445 + 32))(v344, v186, v421);
    sub_20C59D51C();
    (*(v184 + 8))(v185, v187);
  }

  else
  {
    sub_20C4E16E4(v182, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v188 = v352;
  sub_20C59DE9C();
  v189 = v448;
  v190 = *(v448 + 16);
  v413 = v448 + 16;
  v412 = v190;
  (v190)(v425, v188, v454);
  v191 = sub_20C59E40C();
  v192 = *(v191 - 8);
  v193 = *(v192 + 56);
  v407 = v191;
  v406 = v193;
  v391 = v192 + 56;
  (v193)(v430, 1, 1);
  v194 = v431;
  static MetricEnvironment.current()();
  v195 = sub_20C59E2AC();
  v196 = *(v195 - 8);
  v197 = *(v196 + 56);
  v390 = v195;
  v389 = v197;
  v388 = v196 + 56;
  (v197)(v194, 0, 1);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
  v199 = *(v198 - 8);
  v200 = *(v199 + 56);
  v387 = v198;
  v386 = v200;
  v385 = v199 + 56;
  (v200)(v432, 1, 1);
  v201 = sub_20C59E5EC();
  v202 = *(v201 - 8);
  v203 = *(v202 + 56);
  v384 = v201;
  v383 = v203;
  v381 = v202 + 56;
  (v203)(v433, 1, 1);
  v204 = v434;
  sub_20C59E16C();
  v205 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub];
  v206 = *&v165[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub + 8];
  ObjectType = swift_getObjectType();
  v208 = v450;
  v209 = *(v450 + 16);
  v210 = v435;
  v211 = v444;
  v378 = v450 + 16;
  v377 = v209;
  v209(v435, v204, v444);
  v376 = sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
  v380 = v205;
  v379 = ObjectType;
  v382 = v206;
  sub_20C59F5FC();
  sub_20C4E16E4(v210, type metadata accessor for MetricPlayStreamOccurred);
  v212 = *(v208 + 8);
  v450 = v208 + 8;
  v411 = v212;
  (v212)(v204, v211);
  v213 = *(v189 + 8);
  v448 = v189 + 8;
  v410 = v213;
  (v213)(v188, v454);
  sub_20C477B50(v409, &qword_27C7C4F58, &unk_20C5A5AB0);
  v214 = *(v443 + 8);
  v215 = v408;
  v216 = v456;
  v409 = (v443 + 8);
  v408 = v214;
  (v214)(v215, v456);
  v217 = sub_20C4CD2C0(a1);
  if (*(v217 + 16))
  {
    v218 = v438;
    v219 = v437;
    v220 = v439;
    (*(v438 + 16))(v437, v217 + ((*(v438 + 80) + 32) & ~*(v438 + 80)), v439);
    v221 = 0;
  }

  else
  {
    v220 = v439;
    v218 = v438;
    v219 = v437;
    v221 = 1;
  }

  v222 = *(v218 + 56);
  v352 = (v218 + 56);
  v351 = v222;
  v222(v219, v221, 1, v220);
  sub_20C4D9BD0(v219, a1);
  v426(v441, v427, v216);
  v402(v442, 1, 1, v404);
  v347 = sub_20C4C96BC();
  v346 = sub_20C4C98D8();
  LODWORD(v350) = v165[v350];
  v223 = v349[1];
  v345 = *v349;
  v224 = v375;
  sub_20C4E1744(&v165[v457], v375, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v225 = swift_getEnumCaseMultiPayload();
  v349 = v223;
  if (v225)
  {

    sub_20C4E16E4(v224, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v344 = 0;
    v343 = 0;
  }

  else
  {
    v226 = v445;
    v227 = v342;
    v228 = v421;
    (*(v445 + 32))(v342, v224, v421);
    v344 = sub_20C59D51C();
    v343 = v229;
    v230 = *(v226 + 8);

    v230(v227, v228);
  }

  LODWORD(v342) = sub_20C4C9020();
  v398(v416, &v165[v400], v423);
  v231 = v353;
  sub_20C59DDFC();
  LODWORD(v375) = 1;
  v232 = v453;
  v233 = v451;
  v234 = v451(v231, 1, v453);
  sub_20C477B50(v231, &qword_27C7C44C0, qword_20C5A3420);
  v235 = v399;
  v236 = v397;
  if (v234 == 1)
  {
    v237 = v399;
  }

  else
  {
    v237 = v397;
  }

  v238 = v424;
  v239 = v401;
  v401(v417, v237, v424);
  v240 = v354;
  sub_20C59DDFC();
  v241 = v233(v240, 1, v232);
  sub_20C477B50(v240, &qword_27C7C44C0, qword_20C5A3420);
  if (v241 == 1)
  {
    v242 = v235;
  }

  else
  {
    v242 = v236;
  }

  v239(v418, v242, v238);
  v243 = v455;
  v354 = sub_20C59DD5C();
  v353 = v244;
  sub_20C4775E4(&v243[v348], v419, &qword_27C7C4E10, &qword_20C5A5918);
  v348 = sub_20C59DD5C();
  v341 = v245;
  __swift_project_boxed_opaque_existential_1(v394, *(v394 + 3));
  sub_20C59F6EC();
  v246 = sub_20C59E31C();
  v248 = v247;
  if (v246 != sub_20C59E31C() || v248 != v249)
  {
    LODWORD(v375) = sub_20C5A0E9C();
  }

  v396(v359, &v243[v395], v429);
  sub_20C59DE1C();
  v250 = v356;
  sub_20C59DDFC();
  v251 = v453;
  if (v451(v250, 1, v453) == 1)
  {
    sub_20C477B50(v250, &qword_27C7C44C0, qword_20C5A3420);
    v340 = 0;
  }

  else
  {
    v340 = sub_20C59E48C();
    (*(v373 + 8))(v250, v251);
  }

  v252 = v421;
  v253 = v445;
  v254 = v355;
  sub_20C4E1744(&v243[v457], v355, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v255 = v327;
    (*(v253 + 32))(v327, v254, v252);
    sub_20C59D51C();
    (*(v253 + 8))(v255, v252);
  }

  else
  {
    sub_20C4E16E4(v254, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v256 = v357;
  v392(v414, v441, v456);
  sub_20C4775E4(v442, v415, &qword_27C7C4F58, &unk_20C5A5AB0);
  sub_20C4E1744(&v243[v457], v256, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v257 = v328;
    (*(v253 + 32))(v328, v256, v252);
    sub_20C59D51C();
    (*(v253 + 8))(v257, v252);
  }

  else
  {
    sub_20C4E16E4(v256, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  }

  v258 = v358;
  sub_20C59DE9C();
  v259 = v454;
  (v412)(v425, v258, v454);
  v406(v430, 1, 1, v407);
  v260 = v431;
  static MetricEnvironment.current()();
  (v389)(v260, 0, 1, v390);
  v386(v432, 1, 1, v387);
  v383(v433, 1, 1, v384);
  v261 = v434;
  sub_20C59E16C();
  v262 = v435;
  v263 = v444;
  v377(v435, v261, v444);
  sub_20C59F5FC();
  sub_20C4E16E4(v262, type metadata accessor for MetricPlayStreamOccurred);
  (v411)(v261, v263);
  (v410)(v258, v259);
  sub_20C477B50(v442, &qword_27C7C4F58, &unk_20C5A5AB0);
  v264 = v456;
  (v408)(v441, v456);
  v265 = v437;
  v266 = v364;
  sub_20C4775E4(v437, v364, &qword_27C7C4E58, &qword_20C5A5938);
  v267 = v438;
  v268 = v439;
  if ((*(v438 + 48))(v266, 1, v439) == 1)
  {
    sub_20C477B50(v266, &qword_27C7C4E58, &qword_20C5A5938);
    v269 = v374;
  }

  else
  {
    (*(v267 + 32))(v420, v266, v268);
    sub_20C59D7CC();
    v426(v405, v427, v264);
    LODWORD(v457) = sub_20C4C9020();
    v398(v360, &v243[v400], v423);
    v270 = v331;
    sub_20C59DDFC();
    LODWORD(v458) = 1;
    v271 = v453;
    v272 = v451;
    v273 = v451(v270, 1, v453);
    sub_20C477B50(v270, &qword_27C7C44C0, qword_20C5A3420);
    v274 = v399;
    v275 = v397;
    if (v273 == 1)
    {
      v276 = v399;
    }

    else
    {
      v276 = v397;
    }

    v277 = v424;
    v278 = v401;
    v401(v362, v276, v424);
    v279 = v332;
    sub_20C59DDFC();
    v280 = v272(v279, 1, v271);
    sub_20C477B50(v279, &qword_27C7C44C0, qword_20C5A3420);
    if (v280 == 1)
    {
      v281 = v274;
    }

    else
    {
      v281 = v275;
    }

    v278(v363, v281, v277);
    v282 = sub_20C59E43C();
    (*(*(v282 - 8) + 56))(v366, 1, 1, v282);
    sub_20C59D7AC();
    __swift_project_boxed_opaque_existential_1(v394, *(v394 + 3));
    sub_20C59F6EC();
    v283 = sub_20C59E31C();
    v285 = v284;
    if (v283 != sub_20C59E31C() || v285 != v286)
    {
      LODWORD(v458) = sub_20C5A0E9C();
    }

    v243 = v455;
    v396(v334, &v455[v395], v429);
    sub_20C59D7BC();

    v287 = v333;
    sub_20C59DDFC();
    v288 = v453;
    if (v451(v287, 1, v453) == 1)
    {
      sub_20C477B50(v287, &qword_27C7C44C0, qword_20C5A3420);
    }

    else
    {
      sub_20C59E48C();
      (*(v373 + 8))(v287, v288);
    }

    v264 = v456;
    v392(v329, v405, v456);
    v402(v330, 1, 1, v404);
    v289 = v361;
    sub_20C59DE9C();
    v290 = v412;
    (v412)(v425, v289, v454);
    v406(v430, 1, 1, v407);
    v291 = v431;
    static MetricEnvironment.current()();
    (v389)(v291, 0, 1, v390);
    v386(v432, 1, 1, v387);
    v383(v433, 1, 1, v384);
    v292 = v434;
    sub_20C59E16C();
    v293 = v435;
    v377(v435, v292, v444);
    sub_20C59F5FC();
    sub_20C4E16E4(v293, type metadata accessor for MetricPlayStreamOccurred);
    v294 = v420;
    v295 = sub_20C59D7AC();
    v458 = v296;
    v459 = v295;
    v297 = v338;
    v298 = v361;
    v299 = v454;
    v290(v338, v361, v454);
    v300 = v335;
    sub_20C59D45C();
    sub_20C59D3DC();
    v302 = v301;
    (*(v336 + 8))(v300, v337);
    started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    *(v297 + *(started + 20)) = v302;
    (*(*(started - 8) + 56))(v297, 0, 1, started);
    swift_beginAccess();
    sub_20C52651C(v297, v459, v458);
    swift_endAccess();
    (v411)(v292, v444);
    (v410)(v298, v299);
    (v408)(v405, v264);
    v268 = v439;
    (*(v438 + 8))(v294, v439);
    v269 = v374;
    v265 = v437;
  }

  v426(v269, v427, v264);
  sub_20C59D3EC();
  v305 = v304;
  sub_20C5A072C();
  v307 = v306;
  sub_20C477B50(v265, &qword_27C7C4E58, &qword_20C5A5938);
  v308 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v309 = v367;
  sub_20C4775E4(&v243[v308], v367, &qword_27C7C4E00, &qword_20C5A5910);
  v310 = v371;
  v311 = v372;
  v312 = (*(v371 + 48))(v309, 1, v372);
  v313 = v369;
  if (v312)
  {
    sub_20C477B50(v309, &qword_27C7C4E00, &qword_20C5A5910);
    v314 = *MEMORY[0x277D53C18];
    v315 = sub_20C59EC9C();
    (*(*(v315 - 8) + 104))(v313, v314, v315);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v316 = v326;
    sub_20C4E1744(v309, v326, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    sub_20C477B50(v309, &qword_27C7C4E00, &qword_20C5A5910);
    v317 = v325;
    sub_20C4775E4(v316 + v311[9], v325, &qword_27C7C4F00, &qword_20C5A5A10);
    sub_20C4E16E4(v316, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    v318 = v317;
    v264 = v456;
    v269 = v374;
    sub_20C4E1800(v318, v313, &qword_27C7C4F00, &qword_20C5A5A10);
  }

  v319 = v370;
  *v370 = 0;
  *(v319 + 4) = 1;
  *(v319 + 8) = a1;
  (*(v443 + 32))(v319 + v311[6], v269, v264);
  *(v319 + v311[7]) = v305;
  *(v319 + v311[8]) = v307;
  sub_20C4E1800(v313, v319 + v311[9], &qword_27C7C4F00, &qword_20C5A5A10);
  (*(v310 + 56))(v319, 0, 1, v311);
  swift_beginAccess();
  sub_20C4E20CC(v319, &v243[v308], &qword_27C7C4E00, &qword_20C5A5910);
  swift_endAccess();
  v320 = v368;
  v351(v368, 1, 1, v268);
  v321 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  swift_beginAccess();
  sub_20C4E20CC(v320, &v243[v321], &qword_27C7C4E58, &qword_20C5A5938);
  result = swift_endAccess();
  *&v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition] = 0;
  *&v243[v365] = 0;
  v323 = &v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition];
  *v323 = a1;
  v323[8] = 0;
  v243[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking] = 0;
  return result;
}

uint64_t sub_20C4D7A64(uint64_t a1)
{
  v2 = v1;
  v161 = sub_20C59D46C();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70, &qword_20C5A8B20);
  MEMORY[0x28223BE20](v5 - 8);
  v160 = &v133 - v6;
  v157 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v157);
  v156 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59E13C();
  MEMORY[0x28223BE20](v8 - 8);
  v152 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v10 - 8);
  v151 = &v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v12 - 8);
  v150 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v14 - 8);
  v149 = &v133 - v15;
  v155 = sub_20C59E18C();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v17 - 8);
  v147 = &v133 - v18;
  v144 = sub_20C59E0BC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v20 - 8);
  v146 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v140 = &v133 - v26;
  MEMORY[0x28223BE20](v27);
  v137 = &v133 - v28;
  v139 = sub_20C59E7FC();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v165 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v164 = &v133 - v31;
  v136 = sub_20C59E95C();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v163 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_20C59DEBC();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v145 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v148 = &v133 - v35;
  v172 = sub_20C59E80C();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v141 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v170 = &v133 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v39 - 8);
  v177 = &v133 - v40;
  v178 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v181 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C59D7DC();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C5A01CC();
  v179 = *(v46 - 8);
  v180 = v46;
  MEMORY[0x28223BE20](v46);
  v174 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v175 = &v133 - v49;
  MEMORY[0x28223BE20](v50);
  v169 = &v133 - v51;
  MEMORY[0x28223BE20](v52);
  v162 = &v133 - v53;
  MEMORY[0x28223BE20](v54);
  v134 = &v133 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v133 - v57;
  sub_20C59FE3C();
  (*(v43 + 16))(v45, a1, v42);
  v59 = sub_20C5A01BC();
  v60 = sub_20C5A08AC();
  v61 = os_log_type_enabled(v59, v60);
  v142 = v24;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v173 = a1;
    v133 = v63;
    v185 = v63;
    *v62 = 136446210;
    sub_20C4E2084(&qword_27C7C4F80, MEMORY[0x277D4FEC8], MEMORY[0x277D4FEE0]);
    v64 = sub_20C5A0E6C();
    v65 = v2;
    v67 = v66;
    (*(v43 + 8))(v45, v42);
    v68 = sub_20C479640(v64, v67, &v185);
    v2 = v65;

    *(v62 + 4) = v68;
    _os_log_impl(&dword_20C472000, v59, v60, "Received musicTrackStarted for track: %{public}s", v62, 0xCu);
    v69 = v133;
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    a1 = v173;
    MEMORY[0x20F2FFF90](v69, -1, -1);
    MEMORY[0x20F2FFF90](v62, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v45, v42);
  }

  v70 = v180;
  v71 = *(v179 + 8);
  v71(v58, v180);
  v72 = v181;
  if (v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform] == 3 && (sub_20C4C9020() & 1) != 0)
  {
    v73 = v174;
    sub_20C59FE3C();
    v74 = sub_20C5A01BC();
    v75 = sub_20C5A088C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "MetricPlaybackTracker Disabled";
LABEL_18:
      _os_log_impl(&dword_20C472000, v74, v75, v77, v76, 2u);
      MEMORY[0x20F2FFF90](v76, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v78 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v79 = &v2[v78];
  v80 = v177;
  sub_20C4775E4(v79, v177, &qword_27C7C4E00, &qword_20C5A5910);
  if ((*(v176 + 48))(v80, 1, v178) == 1)
  {
    sub_20C477B50(v80, &qword_27C7C4E00, &qword_20C5A5910);
    goto LABEL_16;
  }

  sub_20C4E1680(v80, v72);
  v81 = *(v72 + 4);
  v183 = *v72;
  v184 = v81;
  v182[0] = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if ((sub_20C59DA7C() & 1) == 0)
  {
    sub_20C4E16E4(v72, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
LABEL_16:
    v73 = v175;
    sub_20C59FE3C();
    v74 = sub_20C5A01BC();
    v75 = sub_20C5A089C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "Received music track start event before any playback events or last playback state was not playing";
      goto LABEL_18;
    }

LABEL_19:

    return (v71)(v73, v70);
  }

  sub_20C59D7CC();
  if (*(v72 + 8) >= v82)
  {
    v83 = v169;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A088C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Received a music track start event that's beyond the last playback position, skipping it";
      goto LABEL_22;
    }
  }

  else if (v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking])
  {
    v83 = v162;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A08AC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Currently seeking, not posting music track started for timeline event";
LABEL_22:
      _os_log_impl(&dword_20C472000, v84, v85, v87, v86, 2u);
      MEMORY[0x20F2FFF90](v86, -1, -1);
    }
  }

  else
  {
    if ((v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition + 8] & 1) != 0 || (v90 = *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition], sub_20C59D7CC(), v91 >= v90))
    {
      v92 = &v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap];
      swift_beginAccess();
      v177 = v92;
      if (*(*v92 + 16))
      {
        (*(v171 + 104))(v170, *MEMORY[0x277D52E38], v172);
      }

      else
      {
        (*(v171 + 16))(v170, v72 + *(v178 + 24), v172);
      }

      sub_20C59D7CC();
      LODWORD(v176) = sub_20C4C9020();
      v93 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
      swift_beginAccess();
      (*(v135 + 16))(v163, &v2[v93], v136);
      v179 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
      v94 = v137;
      sub_20C59DDFC();
      v95 = sub_20C59E49C();
      v162 = *(v95 - 8);
      v96 = *(v162 + 6);
      LODWORD(v178) = 1;
      v97 = v96(v94, 1, v95);
      v173 = a1;
      sub_20C477B50(v94, &qword_27C7C44C0, qword_20C5A3420);
      v98 = *(v138 + 104);
      v180 = v98;
      v99 = *MEMORY[0x277D52E30];
      v100 = *MEMORY[0x277D52E28];
      if (v97 == 1)
      {
        v101 = v99;
      }

      else
      {
        v101 = v100;
      }

      v102 = v139;
      v98(v164, v101, v139);
      v103 = v140;
      sub_20C59DDFC();
      v174 = v95;
      v169 = v96;
      v104 = v96(v103, 1, v95);
      sub_20C477B50(v103, &qword_27C7C44C0, qword_20C5A3420);
      if (v104 == 1)
      {
        v105 = v99;
      }

      else
      {
        v105 = v100;
      }

      v180(v165, v105, v102);
      v106 = sub_20C59E43C();
      (*(*(v106 - 8) + 56))(v146, 1, 1, v106);
      v175 = sub_20C59D7AC();
      v180 = v2;
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator], *&v2[OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24]);
      sub_20C59F6EC();
      v107 = sub_20C59E31C();
      v109 = v108;
      if (v107 != sub_20C59E31C() || v109 != v110)
      {
        LODWORD(v178) = sub_20C5A0E9C();
      }

      (*(v143 + 16))(v166, v180 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v144);
      sub_20C59D7BC();

      v111 = v142;
      sub_20C59DDFC();
      v112 = v174;
      if ((v169)(v111, 1, v174) == 1)
      {
        sub_20C477B50(v111, &qword_27C7C44C0, qword_20C5A3420);
      }

      else
      {
        sub_20C59E48C();
        (*(v162 + 1))(v111, v112);
      }

      (*(v171 + 16))(v141, v170, v172);
      v113 = sub_20C59E78C();
      (*(*(v113 - 8) + 56))(v147, 1, 1, v113);
      v114 = v148;
      sub_20C59DE9C();
      v179 = *(v167 + 16);
      (v179)(v145, v114, v168);
      v115 = sub_20C59E40C();
      (*(*(v115 - 8) + 56))(v149, 1, 1, v115);
      v116 = v150;
      static MetricEnvironment.current()();
      v117 = sub_20C59E2AC();
      (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
      (*(*(v118 - 8) + 56))(v151, 1, 1, v118);
      v119 = sub_20C59E5EC();
      (*(*(v119 - 8) + 56))(v152, 1, 1, v119);
      v120 = v153;
      sub_20C59E16C();
      swift_getObjectType();
      v121 = v154;
      v122 = v156;
      v123 = v155;
      (*(v154 + 16))(v156, v120, v155);
      sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
      sub_20C59F5FC();
      sub_20C4E16E4(v122, type metadata accessor for MetricPlayStreamOccurred);
      v124 = sub_20C59D7AC();
      v126 = v125;
      v127 = v160;
      v128 = v168;
      (v179)(v160, v114, v168);
      v129 = v158;
      sub_20C59D45C();
      sub_20C59D3DC();
      v131 = v130;
      (*(v159 + 8))(v129, v161);
      started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      *(v127 + *(started + 20)) = v131;
      (*(*(started - 8) + 56))(v127, 0, 1, started);
      swift_beginAccess();
      sub_20C52651C(v127, v124, v126);
      swift_endAccess();
      (*(v121 + 8))(v120, v123);
      (*(v167 + 8))(v114, v128);
      (*(v171 + 8))(v170, v172);
      v89 = v181;
      return sub_20C4E16E4(v89, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    }

    v83 = v134;
    sub_20C59FE3C();
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A08AC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Previous seek extended beyond start time of current music track, not posting music track started for timeline event";
      goto LABEL_22;
    }
  }

  v71(v83, v70);
  v89 = v72;
  return sub_20C4E16E4(v89, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t sub_20C4D937C(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = &v72 - v4;
  v5 = sub_20C59D7DC();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A01CC();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v74 = &v72 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v72 - v20;
  v22 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) == 3 && (sub_20C4C9020() & 1) != 0)
  {
    sub_20C59FE3C();
    v26 = sub_20C5A01BC();
    v27 = sub_20C5A088C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20C472000, v26, v27, "MetricPlaybackTracker Disabled", v28, 2u);
      MEMORY[0x20F2FFF90](v28, -1, -1);
    }

    return (*(v79 + 8))(v10, v80);
  }

  v30 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  sub_20C4775E4(v2 + v30, v21, &qword_27C7C4E00, &qword_20C5A5910);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20C477B50(v21, &qword_27C7C4E00, &qword_20C5A5910);
LABEL_13:
    sub_20C59FE3C();
    v50 = sub_20C5A01BC();
    v51 = sub_20C5A089C();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v79;
    v53 = v80;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20C472000, v50, v51, "Received music track end event before any plack back events or last playback state was not playing", v55, 2u);
      MEMORY[0x20F2FFF90](v55, -1, -1);
    }

    return (*(v54 + 8))(v13, v53);
  }

  sub_20C4E1680(v21, v25);
  v31 = v25[4];
  LODWORD(v81) = *v25;
  BYTE4(v81) = v31;
  v82 = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if ((sub_20C59DA7C() & 1) == 0)
  {
    sub_20C4E16E4(v25, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
    goto LABEL_13;
  }

  v32 = v78;
  sub_20C59D7CC();
  v34 = v33;
  sub_20C59D7BC();
  v36 = v34 + v35;
  sub_20C59DE1C();
  if (v36 < v37)
  {
    sub_20C59FE3C();
    v38 = v76;
    v39 = v77;
    (*(v76 + 16))(v7, v32, v77);
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v72 = v42;
      v73 = swift_slowAlloc();
      v81 = v73;
      *v42 = 136446210;
      sub_20C4E2084(&qword_27C7C4F80, MEMORY[0x277D4FEC8], MEMORY[0x277D4FEE0]);
      v43 = sub_20C5A0E6C();
      v44 = v39;
      v46 = v45;
      (*(v38 + 8))(v7, v44);
      v47 = sub_20C479640(v43, v46, &v81);

      v48 = v72;
      *(v72 + 1) = v47;
      _os_log_impl(&dword_20C472000, v40, v41, "Received musicTrackStopped for track: %{public}s", v48, 0xCu);
      v49 = v73;
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x20F2FFF90](v49, -1, -1);
      MEMORY[0x20F2FFF90](v48, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v7, v39);
    }

    v56 = v80;
    v57 = *(v79 + 8);
    v57(v18, v80);
    if (*(v2 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking))
    {
      v58 = v74;
      sub_20C59FE3C();
      v59 = sub_20C5A01BC();
      v60 = sub_20C5A08AC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_20C472000, v59, v60, "Currently seeking, not posting music track stopped for timeline event", v61, 2u);
        MEMORY[0x20F2FFF90](v61, -1, -1);
      }

      v57(v58, v56);
    }

    else
    {
      sub_20C59D7CC();
      v63 = v62;
      sub_20C59D7BC();
      v65 = v63 + v64;
      sub_20C59D7BC();
      v67 = v66;
      v68 = *MEMORY[0x277D52B78];
      v69 = sub_20C59E78C();
      v70 = *(v69 - 8);
      v71 = v75;
      (*(v70 + 104))(v75, v68, v69);
      (*(v70 + 56))(v71, 0, 1, v69);
      sub_20C4DB4B0(v32, 2u, 0, 0, v71, v65, v67);
      sub_20C477B50(v71, &qword_27C7C4F58, &unk_20C5A5AB0);
    }
  }

  return sub_20C4E16E4(v25, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t sub_20C4D9BD0(uint64_t a1, double a2)
{
  v187 = a1;
  v177 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v177);
  v176 = v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C59E13C();
  MEMORY[0x28223BE20](v4 - 8);
  v175 = v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v8 - 8);
  v170 = v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v10 - 8);
  v169 = v142 - v11;
  v174 = sub_20C59E18C();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v165 = v142 - v14;
  v162 = sub_20C59E80C();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v164 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_20C59E0BC();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v186 = v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v17 - 8);
  v185 = v142 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v19 - 8);
  v158 = v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v156 = v142 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = v142 - v24;
  v155 = sub_20C59E7FC();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v184 = v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v183 = v142 - v27;
  v151 = sub_20C59E95C();
  v150 = *(v151 - 1);
  MEMORY[0x28223BE20](v151);
  v182 = v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_20C59DEBC();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v163 = v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v166 = v142 - v31;
  v181 = sub_20C5A01CC();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E58, &qword_20C5A5938);
  MEMORY[0x28223BE20](v33 - 8);
  v157 = v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v178 = v142 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = v142 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F78, &qword_20C5A5AD0);
  v41 = v40 - 8;
  MEMORY[0x28223BE20](v40);
  v43 = v142 - v42;
  v44 = sub_20C59D7DC();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v149 = v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v147 = v142 - v48;
  MEMORY[0x28223BE20](v49);
  v148 = v142 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = v142 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = v142 - v55;
  MEMORY[0x28223BE20](v57);
  v189 = v142 - v58;
  v59 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  swift_beginAccess();
  v60 = *(v41 + 56);
  v190 = v2;
  v153 = v59;
  sub_20C4775E4(v2 + v59, v43, &qword_27C7C4E58, &qword_20C5A5938);
  v191 = v60;
  v61 = &v43[v60];
  v62 = v44;
  v63 = v45;
  sub_20C4775E4(v187, v61, &qword_27C7C4E58, &qword_20C5A5938);
  v65 = v45 + 48;
  v64 = *(v45 + 48);
  v66 = v64(v43, 1, v62);
  v188 = v62;
  if (v66 != 1)
  {
    sub_20C4775E4(v43, v39, &qword_27C7C4E58, &qword_20C5A5938);
    if (v64(&v43[v191], 1, v62) == 1)
    {
      (*(v63 + 8))(v39, v62);
      goto LABEL_6;
    }

    v146 = v64;
    v74 = v178;
    sub_20C4775E4(&v43[v191], v178, &qword_27C7C4E58, &qword_20C5A5938);
    v187 = v63;
    v75 = *(v63 + 16);
    v143 = v39;
    v75(v56, v39, v62);
    v76 = v74;
    v77 = v63 + 16;
    v145 = v75;
    v75(v53, v76, v62);
    v78 = sub_20C59D7AC();
    v80 = v79;
    if (v78 == sub_20C59D7AC() && v80 == v81)
    {
    }

    else
    {
      v82 = sub_20C5A0E9C();

      if ((v82 & 1) == 0)
      {
        v142[1] = v77;
        v129 = v187;
        v130 = v188;
        v131 = *(v187 + 8);
        v131(v53, v188);
        v144 = v131;
        v131(v56, v130);
        v132 = *(v129 + 32);
        v133 = v148;
        v132(v148, v143, v130);
        v134 = v147;
        v132(v147, v178, v130);
        v135 = sub_20C59D7AC();
        v137 = v136;
        if (v135 == sub_20C59D7AC() && v137 == v138)
        {
        }

        else
        {
          v139 = sub_20C5A0E9C();

          if ((v139 & 1) == 0)
          {
            v180 = v65;
            LODWORD(v181) = v66;
            v145(v189, v134, v130);
            sub_20C59D7CC();
            v141 = v144;
            v144(v134, v130);
            v141(v133, v130);
            v68 = v190;
            v179 = *(v190 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition);
            goto LABEL_14;
          }
        }

        v140 = v144;
        v144(v134, v130);
        v140(v133, v130);
        goto LABEL_6;
      }
    }

    v180 = v65;
    LODWORD(v181) = v66;
    v83 = v188;
    v145(v189, v56, v188);
    sub_20C59D7CC();
    v84 = *(v187 + 8);
    v84(v53, v83);
    v84(v56, v83);
    v68 = v190;
    v179 = *(v190 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition);
    v84(v178, v83);
    v144 = v84;
    v84(v143, v83);
LABEL_14:
    sub_20C477B50(&v43[v191], &qword_27C7C4E58, &qword_20C5A5938);
    goto LABEL_15;
  }

  if (v64(&v43[v191], 1, v62) != 1)
  {
    v146 = v64;
    v180 = v65;
    LODWORD(v181) = 1;
    v67 = v149;
    (*(v63 + 32))(v149, &v43[v191], v62);
    v145 = *(v63 + 16);
    v145(v189, v67, v62);
    sub_20C59D7CC();
    v187 = v63;
    v144 = *(v63 + 8);
    v144(v67, v62);
    v179 = 0;
    v68 = v190;
LABEL_15:
    sub_20C477B50(v43, &qword_27C7C4E58, &qword_20C5A5938);
    LODWORD(v178) = sub_20C4C9020();
    v85 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v150 + 2))(v182, v68 + v85, v151);
    v86 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
    v87 = v152;
    sub_20C59DDFC();
    v88 = sub_20C59E49C();
    v148 = *(v88 - 8);
    v89 = *(v148 + 6);
    LODWORD(v191) = 1;
    LODWORD(v85) = v89(v87, 1, v88);
    sub_20C477B50(v87, &qword_27C7C44C0, qword_20C5A3420);
    v90 = *(v154 + 104);
    v150 = v90;
    v91 = *MEMORY[0x277D52E30];
    v92 = *MEMORY[0x277D52E28];
    if (v85 == 1)
    {
      v93 = v91;
    }

    else
    {
      v93 = v92;
    }

    v94 = v155;
    v90(v183, v93, v155);
    v152 = v86;
    v95 = v156;
    sub_20C59DDFC();
    v154 = v88;
    v151 = v89;
    v96 = v89(v95, 1, v88);
    v97 = v190;
    sub_20C477B50(v95, &qword_27C7C44C0, qword_20C5A3420);
    if (v96 == 1)
    {
      v98 = v91;
    }

    else
    {
      v98 = v92;
    }

    v150(v184, v98, v94);
    v99 = sub_20C59E43C();
    (*(*(v99 - 8) + 56))(v185, 1, 1, v99);
    v156 = sub_20C59D7AC();
    v155 = v100;
    __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v97 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v101 = sub_20C59E31C();
    v103 = v102;
    if (v101 != sub_20C59E31C() || v103 != v104)
    {
      LODWORD(v191) = sub_20C5A0E9C();
    }

    (*(v159 + 16))(v186, v97 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v160);
    sub_20C59D7BC();
    v105 = *(v97 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8);
    v160 = *(v97 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
    v159 = v105;

    v106 = v158;
    sub_20C59DDFC();
    v107 = v154;
    if (v151(v106, 1, v154) == 1)
    {
      sub_20C477B50(v106, &qword_27C7C44C0, qword_20C5A3420);
      v152 = 0;
      v151 = 0;
    }

    else
    {
      v152 = sub_20C59E48C();
      v151 = v108;
      (*(v148 + 1))(v106, v107);
    }

    v109 = v188;
    v110 = v157;
    sub_20C4775E4(v97 + v153, v157, &qword_27C7C4E58, &qword_20C5A5938);
    if (v146(v110, 1, v109))
    {
      sub_20C477B50(v110, &qword_27C7C4E58, &qword_20C5A5938);
    }

    else
    {
      v111 = v187;
      v112 = v149;
      v145(v149, v110, v109);
      sub_20C477B50(v110, &qword_27C7C4E58, &qword_20C5A5938);
      sub_20C59D7AC();
      v187 = v111;
      v144(v112, v109);
    }

    (*(v161 + 104))(v164, *MEMORY[0x277D52E48], v162);
    v113 = *MEMORY[0x277D52B68];
    v114 = sub_20C59E78C();
    v115 = *(v114 - 8);
    v116 = v165;
    (*(v115 + 104))(v165, v113, v114);
    (*(v115 + 56))(v116, 0, 1, v114);
    v117 = v166;
    sub_20C59DE9C();
    v118 = v167;
    v119 = v168;
    (*(v167 + 16))(v163, v117, v168);
    v120 = sub_20C59E40C();
    (*(*(v120 - 8) + 56))(v169, 1, 1, v120);
    v121 = v170;
    static MetricEnvironment.current()();
    v122 = sub_20C59E2AC();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
    (*(*(v123 - 8) + 56))(v172, 1, 1, v123);
    v124 = sub_20C59E5EC();
    (*(*(v124 - 8) + 56))(v175, 1, 1, v124);
    v125 = v171;
    sub_20C59E16C();
    swift_getObjectType();
    v126 = v173;
    v127 = v176;
    v128 = v174;
    (*(v173 + 16))(v176, v125, v174);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v127, type metadata accessor for MetricPlayStreamOccurred);
    (*(v126 + 8))(v125, v128);
    (*(v118 + 8))(v117, v119);
    return (*(v187 + 8))(v189, v188);
  }

LABEL_6:
  v69 = v179;
  sub_20C59FE3C();
  v70 = sub_20C5A01BC();
  v71 = sub_20C5A08AC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_20C472000, v70, v71, "No music track playing at end of seek, not posting event", v72, 2u);
    MEMORY[0x20F2FFF90](v72, -1, -1);
  }

  (*(v180 + 8))(v69, v181);
  sub_20C477B50(&v43[v191], &qword_27C7C4E58, &qword_20C5A5938);
  return sub_20C477B50(v43, &qword_27C7C4E58, &qword_20C5A5938);
}

uint64_t sub_20C4DB4B0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v150 = a5;
  v151 = a4;
  v152 = a3;
  v153 = a2;
  v162 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v162);
  v161 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59E13C();
  MEMORY[0x28223BE20](v11 - 8);
  v157 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v13 - 8);
  v156 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v15 - 8);
  v155 = &v127 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v17 - 8);
  v154 = &v127 - v18;
  v160 = sub_20C59E18C();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v20 - 8);
  v148 = &v127 - v21;
  v145 = sub_20C59E80C();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v128 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v147 = &v127 - v24;
  v141 = sub_20C59E0BC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v168 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v26 - 8);
  v167 = &v127 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v28 - 8);
  v139 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v132 = &v127 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v127 - v33;
  v131 = sub_20C59E7FC();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v166 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v165 = &v127 - v37;
  v129 = sub_20C59E95C();
  v38 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v164 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C59DEBC();
  v171 = *(v40 - 8);
  v172 = v40;
  MEMORY[0x28223BE20](v40);
  v146 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v149 = &v127 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F68, &unk_20C5A5AC0);
  MEMORY[0x28223BE20](v44 - 8);
  v142 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v138 = &v127 - v47;
  MEMORY[0x28223BE20](v48);
  v136 = &v127 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v127 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70, &qword_20C5A8B20);
  MEMORY[0x28223BE20](v53 - 8);
  v143 = &v127 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v127 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v127 - v59;
  v170 = a1;
  v61 = sub_20C59D7AC();
  v63 = v62;
  v64 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap;
  swift_beginAccess();
  v173 = v52;
  v174 = v8;
  v65 = *(v8 + v64);
  v66 = *(v65 + 16);
  v169 = v60;
  if (v66)
  {

    v67 = sub_20C4820C8(v61, v63);
    v69 = v68;

    if (v69)
    {
      v70 = *(v65 + 56);
      started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      v72 = *(started - 8);
      v73 = v70 + *(v72 + 72) * v67;
      v74 = started;
      v60 = v169;
      sub_20C4E1744(v73, v169, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);

      (*(v72 + 56))(v60, 0, 1, v74);
      v52 = v173;
    }

    else
    {

      v74 = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      v60 = v169;
      (*(*(v74 - 8) + 56))(v169, 1, 1, v74);
    }
  }

  else
  {

    v74 = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    (*(*(v74 - 8) + 56))(v60, 1, 1, v74);
  }

  v75 = v172;
  sub_20C4775E4(v60, v57, &qword_27C7C4F70, &qword_20C5A8B20);
  type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  v76 = *(v74 - 8);
  v134 = *(v76 + 48);
  v133 = v76 + 48;
  v77 = v134(v57, 1, v74);
  v137 = v74;
  if (v77 == 1)
  {
    sub_20C477B50(v57, &qword_27C7C4F70, &qword_20C5A8B20);
    v78 = 1;
    v79 = v171;
  }

  else
  {
    v79 = v171;
    (*(v171 + 16))(v52, v57, v75);
    sub_20C4E16E4(v57, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);
    v78 = 0;
  }

  v80 = *(v79 + 56);
  v163 = 1;
  v80(v52, v78, 1, v75);
  v81 = v174;
  v135 = sub_20C4C9020();
  v82 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  (*(v38 + 16))(v164, v81 + v82, v129);
  v83 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  sub_20C59DDFC();
  v84 = sub_20C59E49C();
  v127 = *(v84 - 8);
  v85 = *(v127 + 48);
  LODWORD(v82) = v85(v34, 1, v84);
  sub_20C477B50(v34, &qword_27C7C44C0, qword_20C5A3420);
  v86 = *MEMORY[0x277D52E30];
  v87 = *MEMORY[0x277D52E28];
  if (v82 == 1)
  {
    v88 = v86;
  }

  else
  {
    v88 = v87;
  }

  v89 = *(v130 + 104);
  v90 = v131;
  v89(v165, v88, v131);
  v129 = v83;
  v91 = v132;
  sub_20C59DDFC();
  v130 = v84;
  v92 = v85(v91, 1, v84);
  sub_20C477B50(v91, &qword_27C7C44C0, qword_20C5A3420);
  if (v92 == 1)
  {
    v93 = v86;
  }

  else
  {
    v93 = v87;
  }

  v89(v166, v93, v90);
  v94 = sub_20C59E43C();
  (*(*(v94 - 8) + 56))(v167, 1, 1, v94);
  v132 = sub_20C59D7AC();
  v131 = v95;
  __swift_project_boxed_opaque_existential_1((v174 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v174 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
  sub_20C59F6EC();
  v96 = sub_20C59E31C();
  v98 = v97;
  if (v96 != sub_20C59E31C() || v98 != v99)
  {
    v163 = sub_20C5A0E9C();
  }

  v100 = v174;
  (*(v140 + 16))(v168, v174 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v141);
  sub_20C59D7BC();
  v141 = *(v100 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);

  v101 = v139;
  sub_20C59DDFC();
  v102 = v130;
  if (v85(v101, 1, v130) == 1)
  {
    sub_20C477B50(v101, &qword_27C7C44C0, qword_20C5A3420);
    v140 = 0;
  }

  else
  {
    v140 = sub_20C59E48C();
    (*(v127 + 8))(v101, v102);
  }

  v104 = v171;
  v103 = v172;
  v105 = v136;
  sub_20C4775E4(v173, v136, &qword_27C7C4F68, &unk_20C5A5AC0);
  v106 = *(v104 + 48);
  if (v106(v105, 1, v103) == 1)
  {
    sub_20C477B50(v105, &qword_27C7C4F68, &unk_20C5A5AC0);
  }

  else
  {
    sub_20C59DE8C();
    (*(v104 + 8))(v105, v103);
  }

  v107 = v138;
  sub_20C4775E4(v173, v138, &qword_27C7C4F68, &unk_20C5A5AC0);
  if (v106(v107, 1, v103) == 1)
  {
    sub_20C477B50(v107, &qword_27C7C4F68, &unk_20C5A5AC0);
  }

  else
  {
    sub_20C59DEAC();
    (*(v104 + 8))(v107, v103);
  }

  v108 = v142;
  sub_20C4775E4(v173, v142, &qword_27C7C4F68, &unk_20C5A5AC0);
  if (v106(v108, 1, v103) == 1)
  {
    sub_20C477B50(v108, &qword_27C7C4F68, &unk_20C5A5AC0);
    (*(v144 + 104))(v147, *MEMORY[0x277D52E50], v145);
  }

  else
  {
    v109 = v128;
    sub_20C59DE6C();
    (*(v171 + 8))(v108, v103);
    (*(v144 + 32))(v147, v109, v145);
  }

  v110 = v137;
  v111 = v143;
  sub_20C4775E4(v169, v143, &qword_27C7C4F70, &qword_20C5A8B20);
  if (v134(v111, 1, v110) == 1)
  {
    sub_20C477B50(v111, &qword_27C7C4F70, &qword_20C5A8B20);
  }

  else
  {
    sub_20C4E16E4(v111, type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo);
  }

  sub_20C4775E4(v150, v148, &qword_27C7C4F58, &unk_20C5A5AB0);

  v112 = v149;
  sub_20C59DE9C();
  v113 = v171;
  (*(v171 + 16))(v146, v112, v172);
  v114 = sub_20C59E40C();
  (*(*(v114 - 8) + 56))(v154, 1, 1, v114);
  v115 = v155;
  static MetricEnvironment.current()();
  v116 = sub_20C59E2AC();
  (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
  (*(*(v117 - 8) + 56))(v156, 1, 1, v117);
  v118 = sub_20C59E5EC();
  (*(*(v118 - 8) + 56))(v157, 1, 1, v118);
  v119 = v158;
  sub_20C59E16C();
  swift_getObjectType();
  v120 = v159;
  v121 = v161;
  v122 = v160;
  (*(v159 + 16))(v161, v119, v160);
  sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
  sub_20C59F5FC();
  sub_20C4E16E4(v121, type metadata accessor for MetricPlayStreamOccurred);
  v123 = sub_20C59D7AC();
  v125 = v124;
  swift_beginAccess();
  sub_20C54F224(v175, v123, v125);
  swift_endAccess();

  (*(v120 + 8))(v119, v122);
  (*(v113 + 8))(v112, v172);
  sub_20C477B50(v173, &qword_27C7C4F68, &unk_20C5A5AC0);
  return sub_20C477B50(v169, &qword_27C7C4F70, &qword_20C5A8B20);
}

void sub_20C4DCA74(uint64_t a1)
{
  v204 = sub_20C59D7DC();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v4 = v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for MetricPlayStreamOccurred(0);
  MEMORY[0x28223BE20](v230);
  v229 = v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C59E13C();
  MEMORY[0x28223BE20](v6 - 8);
  v228 = v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v8 - 8);
  v227 = v193 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v10 - 8);
  v226 = v193 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v12 - 8);
  v225 = v193 - v13;
  v246 = sub_20C59E18C();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_20C59E80C();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v240 = v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_20C59E0BC();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v239 = v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10, &qword_20C5A5918);
  MEMORY[0x28223BE20](v17 - 8);
  v238 = v193 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0, qword_20C5A3420);
  MEMORY[0x28223BE20](v19 - 8);
  v218 = v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v216 = v193 - v22;
  MEMORY[0x28223BE20](v23);
  v213 = v193 - v24;
  v215 = sub_20C59E7FC();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v237 = v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v236 = v193 - v27;
  v212 = sub_20C59E95C();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v235 = v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v250);
  v221 = v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v217 = v193 - v31;
  MEMORY[0x28223BE20](v32);
  v210 = v193 - v33;
  v233 = sub_20C59D63C();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v202 = v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v201 = v193 - v36;
  MEMORY[0x28223BE20](v37);
  v200 = v193 - v38;
  v243 = sub_20C59DEBC();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v222 = v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v241 = v193 - v41;
  v208 = sub_20C59D96C();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v206 = v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C5A01CC();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v252 = (v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v249 = (v193 - v47);
  MEMORY[0x28223BE20](v48);
  v209 = v193 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F58, &unk_20C5A5AB0);
  MEMORY[0x28223BE20](v50 - 8);
  v234 = v193 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = v193 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00, &qword_20C5A5A10);
  MEMORY[0x28223BE20](v55 - 8);
  v247 = v193 - v56;
  v248 = sub_20C59ECFC();
  v251 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v205 = v193 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v231 = (v193 - v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E00, &qword_20C5A5910);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = v193 - v61;
  v63 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = v193 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v4;
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) == 3)
  {
    v68 = v44;
    v69 = v43;
    v70 = a1;
    v71 = v63;
    v72 = v193 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v54;
    v74 = v67;
    v75 = sub_20C4C9020();
    v67 = v74;
    v54 = v73;
    v66 = v72;
    v63 = v71;
    a1 = v70;
    v43 = v69;
    v44 = v68;
    if (v75)
    {
      v76 = v252;
      sub_20C59FE3C();
      v77 = sub_20C5A01BC();
      v78 = sub_20C5A088C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        v80 = "MetricPlaybackTracker Disabled";
LABEL_9:
        _os_log_impl(&dword_20C472000, v77, v78, v80, v79, 2u);
        MEMORY[0x20F2FFF90](v79, -1, -1);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) != 5)
  {
    return;
  }

  v252 = v67;
  v81 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  swift_beginAccess();
  v199 = v1;
  sub_20C4775E4(v1 + v81, v62, &qword_27C7C4E00, &qword_20C5A5910);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_20C477B50(v62, &qword_27C7C4E00, &qword_20C5A5910);
    v76 = v249;
    sub_20C59FE3C();
    v77 = sub_20C5A01BC();
    v78 = sub_20C5A088C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      v80 = "Playback transitioning from not playing to termination is not a valid transition";
      goto LABEL_9;
    }

LABEL_10:

    (*(v44 + 8))(v76, v43);
    return;
  }

  sub_20C4E1680(v62, v66);
  if (sub_20C59D95C() & 0x100000000) != 0 && ((v194 = v44, v195 = v43, LODWORD(v249) = sub_20C59D93C(), v196 = sub_20C59D93C(), v83 = *v66, v84 = v66[4], v85 = *(v63 + 36), sub_20C4775E4(&v66[v85], v247, &qword_27C7C4F00, &qword_20C5A5A10), LOBYTE(v254) = v84, v193[1] = v83, v86 = v231, sub_20C59EC6C(), v87 = sub_20C59ECDC(), v88 = *(v251 + 8), v251 += 8, v231 = v88, v88(v86, v248), LODWORD(v254) = v87, BYTE4(v254) = BYTE4(v87) & 1, v253[0] = 0, sub_20C4A24A0(), sub_20C4A24F4(), (sub_20C59DA7C()) || (LODWORD(v254) = v87, BYTE4(v254) = BYTE4(v87) & 1, v253[0] = 2, v97 = sub_20C59DA7C(), v249 != v196) || (v97))
  {
    v193[0] = v63;
    sub_20C4775E4(&v66[v85], v247, &qword_27C7C4F00, &qword_20C5A5A10);
    LOBYTE(v254) = v84;
    v89 = v205;
    sub_20C59EC6C();
    v90 = a1;
    sub_20C59D92C();
    v92 = v91;
    v93 = sub_20C59EC8C();
    v94 = sub_20C59ECDC();
    LODWORD(v254) = v94;
    BYTE4(v254) = BYTE4(v94) & 1;
    v253[0] = 0;
    if (sub_20C59DA7C())
    {
      sub_20C59EC7C();
      v96 = v92 - v93 + v95;
    }

    else
    {
      sub_20C59EC7C();
      v96 = v98;
    }

    v99 = v199;
    v100 = v207;
    v101 = v206;
    v231(v89, v248);
    v102 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
    sub_20C59DE1C();
    if (v249 == v196 && v103 - v96 > 0.5)
    {
      v104 = *MEMORY[0x277D52B80];
      v105 = sub_20C59E78C();
      v106 = *(v105 - 8);
      (*(v106 + 104))(v54, v104, v105);
      (*(v106 + 56))(v54, 0, 1, v105);
      v107 = v90;
    }

    else
    {
      v107 = v90;
      sub_20C4B22AC(v54);
    }

    v108 = v209;
    v109 = v208;
    sub_20C59FE3C();
    (*(v100 + 16))(v101, v107, v109);
    v110 = v101;
    v111 = sub_20C5A01BC();
    v112 = sub_20C5A08AC();
    v113 = os_log_type_enabled(v111, v112);
    v198 = v54;
    v197 = v66;
    if (v113)
    {
      v114 = swift_slowAlloc();
      v251 = v102;
      v115 = v109;
      v116 = v114;
      v249 = swift_slowAlloc();
      v254 = v249;
      *v116 = 136446210;
      sub_20C4E2084(&qword_27C7C4F60, MEMORY[0x277D50140], MEMORY[0x277D50148]);
      v117 = sub_20C5A0E6C();
      v119 = v118;
      (*(v100 + 8))(v110, v115);
      v120 = sub_20C479640(v117, v119, &v254);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_20C472000, v111, v112, "Received session terminated for termination: %{public}s", v116, 0xCu);
      v121 = v249;
      __swift_destroy_boxed_opaque_existential_1Tm(v249);
      MEMORY[0x20F2FFF90](v121, -1, -1);
      MEMORY[0x20F2FFF90](v116, -1, -1);
    }

    else
    {

      (*(v100 + 8))(v110, v109);
    }

    (*(v194 + 8))(v108, v195);
    v122 = v212;
    v123 = v211;
    v124 = v210;
    v249 = sub_20C4C96BC();
    v248 = sub_20C4C98D8();
    LODWORD(v247) = *(v99 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType);
    v125 = *(v99 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale + 8);
    v212 = *(v99 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
    v126 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
    swift_beginAccess();
    sub_20C4E1744(v99 + v126, v124, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v231 = v125;
    v208 = v126;
    if (EnumCaseMultiPayload)
    {

      sub_20C4E16E4(v124, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
      v211 = 0;
      v210 = 0;
    }

    else
    {
      v128 = v232;
      v129 = v200;
      v130 = v124;
      v131 = v233;
      (*(v232 + 32))(v200, v130, v233);
      v211 = sub_20C59D51C();
      v210 = v132;
      v133 = *(v128 + 8);

      v133(v129, v131);
    }

    LODWORD(v209) = sub_20C4C9020();
    v134 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v123 + 16))(v235, v99 + v134, v122);
    v135 = v213;
    sub_20C59DDFC();
    v136 = sub_20C59E49C();
    v200 = *(v136 - 8);
    v137 = *(v200 + 6);
    LODWORD(v251) = 1;
    v138 = v137(v135, 1, v136);
    sub_20C477B50(v135, &qword_27C7C44C0, qword_20C5A3420);
    v139 = *(v214 + 104);
    v214 = v139;
    v140 = *MEMORY[0x277D52E30];
    v141 = *MEMORY[0x277D52E28];
    if (v138 == 1)
    {
      v142 = v140;
    }

    else
    {
      v142 = v141;
    }

    v143 = v215;
    v139(v236, v142, v215);
    v144 = v216;
    sub_20C59DDFC();
    v207 = v136;
    v206 = v137;
    v145 = v137(v144, 1, v136);
    sub_20C477B50(v144, &qword_27C7C44C0, qword_20C5A3420);
    if (v145 == 1)
    {
      v146 = v140;
    }

    else
    {
      v146 = v141;
    }

    v147 = v199;
    (v214)(v237, v146, v143);
    v216 = sub_20C59DD5C();
    v215 = v148;
    v149 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
    swift_beginAccess();
    sub_20C4775E4(v147 + v149, v238, &qword_27C7C4E10, &qword_20C5A5918);
    v214 = sub_20C59DD5C();
    v213 = v150;
    __swift_project_boxed_opaque_existential_1((v147 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator), *(v147 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator + 24));
    sub_20C59F6EC();
    v151 = sub_20C59E31C();
    v153 = v152;
    if (v151 != sub_20C59E31C() || v153 != v154)
    {
      LODWORD(v251) = sub_20C5A0E9C();
    }

    (*(v219 + 16))(v239, v147 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType, v220);
    sub_20C59DE1C();
    v155 = *(v147 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext + 8);
    v220 = *(v147 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
    v219 = v155;

    v156 = v218;
    sub_20C59DDFC();
    v157 = v207;
    v158 = (v206)(v156, 1, v207);
    v159 = v198;
    v160 = v208;
    if (v158 == 1)
    {
      sub_20C477B50(v156, &qword_27C7C44C0, qword_20C5A3420);
      v206 = 0;
      v205 = 0;
    }

    else
    {
      v206 = sub_20C59E48C();
      v205 = v161;
      (*(v200 + 1))(v156, v157);
    }

    v162 = v217;
    v163 = v234;
    sub_20C4E1744(v147 + v160, v217, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v164 = v232;
      v165 = v201;
      v166 = v162;
      v167 = v233;
      (*(v232 + 32))(v201, v166, v233);
      sub_20C59D51C();
      (*(v164 + 8))(v165, v167);
    }

    else
    {
      sub_20C4E16E4(v162, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v168 = v228;
    v169 = v227;
    (*(v223 + 16))(v240, &v197[*(v193[0] + 24)], v224);
    sub_20C4775E4(v159, v163, &qword_27C7C4F58, &unk_20C5A5AB0);
    v170 = v221;
    sub_20C4E1744(v199 + v160, v221, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v171 = v232;
      v172 = v202;
      v173 = v233;
      (*(v232 + 32))(v202, v170, v233);
      sub_20C59D51C();
      (*(v171 + 8))(v172, v173);
    }

    else
    {
      sub_20C4E16E4(v170, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    }

    v174 = v241;
    sub_20C59DE9C();
    (*(v242 + 16))(v222, v174, v243);
    v175 = sub_20C59E40C();
    (*(*(v175 - 8) + 56))(v225, 1, 1, v175);
    v176 = v226;
    static MetricEnvironment.current()();
    v177 = sub_20C59E2AC();
    (*(*(v177 - 8) + 56))(v176, 0, 1, v177);
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
    (*(*(v178 - 8) + 56))(v169, 1, 1, v178);
    v179 = sub_20C59E5EC();
    (*(*(v179 - 8) + 56))(v168, 1, 1, v179);
    v180 = v244;
    sub_20C59E16C();
    swift_getObjectType();
    v181 = v229;
    (*(v245 + 16))(v229, v180, v246);
    sub_20C4E2084(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred, &protocol conformance descriptor for MetricPlayStreamOccurred);
    sub_20C59F5FC();
    sub_20C4E16E4(v181, type metadata accessor for MetricPlayStreamOccurred);
    v182 = sub_20C4CD2C0(v96);
    v183 = *(v182 + 16);
    if (v183)
    {
      v184 = *(v203 + 16);
      v185 = *(v203 + 80);
      v251 = v182;
      v186 = v182 + ((v185 + 32) & ~v185);
      v187 = *(v203 + 72);
      v188 = (v203 + 8);
      v189 = v204;
      v190 = v252;
      v191 = v198;
      do
      {
        v184(v190, v186, v189);
        sub_20C59D7CC();
        sub_20C4DB4B0(v252, 2u, 0, 0, v191, v96, v96 - v192);
        v190 = v252;
        (*v188)(v252, v189);
        v186 += v187;
        --v183;
      }

      while (v183);
    }

    (*(v245 + 8))(v244, v246);
    (*(v242 + 8))(v241, v243);
    sub_20C477B50(v198, &qword_27C7C4F58, &unk_20C5A5AB0);
    v82 = v197;
  }

  else
  {
    v82 = v66;
  }

  sub_20C4E16E4(v82, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
}

uint64_t MetricPlaybackTracker.deinit()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout;
  v2 = sub_20C59DE3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v4 = sub_20C59E0BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_assetClient));

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession, &qword_27C7C4DA8, &unk_20C5A58F0);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric, &qword_27C7C4DC0, &qword_20C5A97E0);
  sub_20C4E16E4(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
  v5 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  v6 = sub_20C59E95C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection, &qword_27C7C4DE0, &unk_20C5A5900);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric, &qword_27C7C4DF0, &unk_20C5A97B0);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo, &qword_27C7C4E00, &qword_20C5A5910);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus, &qword_27C7C4E10, &qword_20C5A5918);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode, &qword_27C7C4E20, &unk_20C5A5920);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection, &qword_27C7C4E30, &unk_20C5A9770);
  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection, &qword_27C7C4688, &qword_20C5A5930);

  sub_20C477B50(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack, &qword_27C7C4E58, &qword_20C5A5938);
  sub_20C490918(*(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition), *(v0 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition + 8));
  return v0;
}

uint64_t MetricPlaybackTracker.__deallocating_deinit()
{
  MetricPlaybackTracker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_20C4DECB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C59EA9C();
}

void sub_20C4DED54(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_20C49B78C(v6, 0);
}

void sub_20C4DEDF0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20C5A0B3C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5058, qword_20C5A5B40);
      v3 = sub_20C5A0BDC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20C5A0B3C();
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
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F2FF0E0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20C5A09AC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_20C4E2140();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_20C5A09BC();

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
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_20C5A09AC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_20C4E2140();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_20C5A09BC();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20C4DF0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B10, &qword_20C5A5B30);
    v3 = sub_20C5A0BDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20C5A0FBC();

      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20C5A0E9C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20C4DF224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, uint64_t a7, void *a8, double a9)
{
  v10 = v9;
  v121 = a8;
  v120 = a7;
  v119 = a6;
  v140 = a5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AB0, &qword_20C5A53B0);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v123 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v16;
  MEMORY[0x28223BE20](v17);
  v124 = &v114 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v114 - v19;
  v20 = sub_20C59DE3C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v133 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v22;
  MEMORY[0x28223BE20](v23);
  v118 = &v114 - v24;
  v117 = sub_20C5A01CC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
  v27 = sub_20C59E1EC();
  (*(*(v27 - 8) + 56))(v10 + v26, 1, 1, v27);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType) = 2;
  v28 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric;
  v30 = sub_20C59DB1C();
  (*(*(v30 - 8) + 56))(v10 + v29, 1, 1, v30);
  type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  swift_storeEnumTagMultiPayload();
  v31 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  v32 = *MEMORY[0x277D53190];
  v33 = sub_20C59E95C();
  (*(*(v33 - 8) + 104))(v10 + v31, v32, v33);
  v34 = v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedStartTime;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 5;
  v35 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection;
  v36 = sub_20C59E7EC();
  (*(*(v36 - 8) + 56))(v10 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric;
  v38 = sub_20C59DF8C();
  (*(*(v38 - 8) + 56))(v10 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastWorkoutPlaybackInfo;
  v40 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  (*(*(v40 - 8) + 56))(v10 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
  v42 = sub_20C59E43C();
  (*(*(v42 - 8) + 56))(v10 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00, &qword_20C5A5A10);
  (*(*(v44 - 8) + 56))(v10 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection;
  v46 = sub_20C59E6EC();
  (*(*(v46 - 8) + 56))(v10 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection;
  v48 = sub_20C59E73C();
  (*(*(v48 - 8) + 56))(v10 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_musicIDStartPlaybackInfoMap;
  *(v10 + v49) = sub_20C5894FC(MEMORY[0x277D84F90]);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_reportedStopMusicIDS) = MEMORY[0x277D84FA0];
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seeking) = 0;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganOverallPosition) = 0;
  v50 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrack;
  v51 = sub_20C59D7DC();
  (*(*(v51 - 8) + 56))(v10 + v50, 1, 1, v51);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganMusicTrackPosition) = 0;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_seekBeganTimestamp) = 0;
  v52 = v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_lastSeekFinishedPosition;
  *v52 = 0;
  *(v52 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_isPictureInPictureStopping) = 0;
  v53 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_onInvalidTransition);
  *v53 = 0;
  v53[1] = 0;
  v139 = v21;
  v54 = *(v21 + 16);
  v54(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_catalogWorkout, a1, v20);
  v55 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_eventHub);
  *v55 = a2;
  v55[1] = a3;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v136 = a2;
  v137 = a3;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_subscriptionToken) = sub_20C59F75C();
  v135 = a4;
  sub_20C477580(a4, v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_networkEvaluator);
  sub_20C477580(v140, v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_assetClient);
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_platform) = v119;
  v56 = (v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playContext);
  v57 = v121;
  *v56 = v120;
  v56[1] = v57;
  *(v10 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_startTime) = a9;
  v58 = sub_20C59DE2C();
  v138 = a1;
  v134 = v20;
  v126 = v21 + 16;
  v125 = v54;
  if ((v60 & 1) == 0)
  {
    sub_20C481884(v58, v59, 0);
    v63 = v115;
    sub_20C59FE2C();
    v64 = v118;
    v54(v118, a1, v20);
    v65 = sub_20C5A01BC();
    v66 = sub_20C5A089C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v143 = v121;
      *v67 = 136446210;
      v68 = sub_20C59DE2C();
      v70 = v69;
      v144[0] = v68;
      v144[1] = v69;
      v72 = v71 & 1;
      v145 = v71 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5028, &unk_20C5A5B20);
      sub_20C59DA4C();
      (*(v139 + 8))(v118, v20);
      sub_20C481884(v68, v70, v72);
      v73 = sub_20C479640(v141, v142, &v143);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_20C472000, v65, v66, "Unexpected media type: %{public}s", v67, 0xCu);
      v74 = v121;
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x20F2FFF90](v74, -1, -1);
      MEMORY[0x20F2FFF90](v67, -1, -1);
    }

    else
    {

      (*(v139 + 8))(v64, v20);
    }

    (*(v116 + 8))(v63, v117);
    goto LABEL_11;
  }

  if (v58 <= 1u)
  {
    v61 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
    v62 = MEMORY[0x277D50BF8];
LABEL_12:
    v80 = *v62;
    v77 = sub_20C59E0BC();
    v78 = *(*(v77 - 8) + 104);
    v81 = v10 + v61;
    v82 = v80;
    goto LABEL_13;
  }

  if (v58 != 2)
  {
LABEL_11:
    v61 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
    v62 = MEMORY[0x277D50C00];
    goto LABEL_12;
  }

  v75 = sub_20C59EC4C();
  v76 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_mediaType;
  v77 = sub_20C59E0BC();
  v78 = *(*(v77 - 8) + 104);
  if (v75 == 2)
  {
    v79 = MEMORY[0x277D50BF8];
  }

  else
  {
    v79 = MEMORY[0x277D50C00];
  }

  v82 = *v79;
  v81 = v10 + v76;
LABEL_13:
  v78(v81, v82, v77);
  __swift_project_boxed_opaque_existential_1(v140, v140[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BA0, &unk_20C5A6810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  *(inited + 32) = sub_20C59DD5C();
  *(inited + 40) = v84;
  sub_20C4DF0BC(inited);
  swift_setDeallocating();
  sub_20C4E1910(inited + 32);
  v85 = v124;
  sub_20C59F16C();

  v86 = swift_allocObject();
  *(v86 + 16) = sub_20C4E1964;
  *(v86 + 24) = v10;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_20C4E1968;
  *(v87 + 24) = v86;
  v88 = v128;
  v89 = v123;
  v90 = v130;
  (*(v128 + 16))(v123, v85, v130);
  v91 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v92 = (v122 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v88 + 32))(v93 + v91, v89, v90);
  v94 = (v93 + v92);
  *v94 = sub_20C4E1994;
  v94[1] = v87;

  v95 = v127;
  sub_20C59EA9C();
  (*(v88 + 8))(v85, v90);
  v96 = v131;
  v97 = sub_20C59EABC();
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  v97(sub_20C4907D4, v98);

  (*(v129 + 8))(v95, v96);
  ObjectType = swift_getObjectType();
  sub_20C59F5AC();
  v100 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_subscriptionToken;
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1A98();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1B24();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F6DC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F57C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F72C();
  swift_allocObject();
  swift_weakInit();
  v131 = ObjectType;
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FC7C();
  v130 = v100;
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F79C();
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = v133;
  v103 = v134;
  v125(v133, v138, v134);
  v104 = v139;
  v105 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v106 = (v132 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  (*(v104 + 32))(v107 + v105, v102, v103);
  *(v107 + v106) = v101;
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  type metadata accessor for MediaPlayerMediaSelectionChanged(0);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E2084(&qword_27C7C4FF8, type metadata accessor for MediaPlayerMediaSelectionChanged, &unk_20C5AAD6C);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FABC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FBFC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1D74();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1DE8();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FB1C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59F8DC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1E54();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FD4C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  sub_20C59FA2C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();
  sub_20C4E1EC0();

  sub_20C59F63C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);

  sub_20C59FCAC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  swift_allocObject();
  swift_weakInit();

  sub_20C4E1F24();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  v108 = objc_opt_self();
  v109 = [v108 defaultCenter];
  [v109 addObserver:v10 selector:sel_handleAppBackground name:*MEMORY[0x277D76660] object:0];

  v110 = [v108 defaultCenter];
  v111 = objc_opt_self();

  v112 = [v111 smm_playbackWasInterruptedNotification];
  [v110 addObserver:v10 selector:sel_handlePlaybackInterrupted name:v112 object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  (*(v139 + 8))(v138, v103);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  return v10;
}

void sub_20C4E0C18(uint64_t a1)
{
  sub_20C59DE3C();
  if (v1 <= 0x3F)
  {
    sub_20C59E0BC();
    if (v2 <= 0x3F)
    {
      sub_20C4E1174(319, &qword_27C7C4EC8, MEMORY[0x277D50FB0]);
      if (v3 <= 0x3F)
      {
        sub_20C4E1174(319, &qword_27C7C4ED0, MEMORY[0x277D50498]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(319);
          if (v5 <= 0x3F)
          {
            sub_20C59E95C();
            if (v6 <= 0x3F)
            {
              sub_20C4E1174(319, &qword_27C7C4ED8, MEMORY[0x277D52DE8]);
              if (v7 <= 0x3F)
              {
                sub_20C4E1174(319, &qword_27C7C4EE0, MEMORY[0x277D50BD0]);
                if (v8 <= 0x3F)
                {
                  sub_20C4E1174(319, &qword_27C7C4EE8, type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo);
                  if (v9 <= 0x3F)
                  {
                    sub_20C4E1174(319, &qword_27C7C4EF0, MEMORY[0x277D51AC8]);
                    if (v10 <= 0x3F)
                    {
                      sub_20C4E11E8(319);
                      if (v11 <= 0x3F)
                      {
                        sub_20C4E1174(319, &qword_27C7C4F08, MEMORY[0x277D52940]);
                        if (v12 <= 0x3F)
                        {
                          sub_20C4E1174(319, &qword_27C7C4F10, MEMORY[0x277D529D8]);
                          if (v13 <= 0x3F)
                          {
                            sub_20C4E1174(319, &qword_27C7C4F18, MEMORY[0x277D4FEC8]);
                            if (v14 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20C4E1174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C5A0A4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20C4E11E8(uint64_t a1)
{
  if (!qword_27C7C4EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C4F00, &qword_20C5A5A10);
    v1 = sub_20C5A0A4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7C4EF8);
    }
  }
}

uint64_t sub_20C4E1294(uint64_t a1)
{
  result = sub_20C59DEBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlaybackTracker.WorkoutPlaybackPause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for MetricPlaybackTracker.WorkoutPlaybackPause(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20C4E1478(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20C4E1494(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_20C4E14E4(uint64_t a1)
{
  sub_20C4E1590(319);
  if (v1 <= 0x3F)
  {
    sub_20C59E80C();
    if (v2 <= 0x3F)
    {
      sub_20C4E15EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C4E1590(uint64_t a1)
{
  if (!qword_27C7C4F40)
  {
    sub_20C4A24F4();
    v1 = sub_20C59DAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7C4F40);
    }
  }
}

void sub_20C4E15EC(uint64_t a1)
{
  if (!qword_27C7C4F48)
  {
    sub_20C59EC9C();
    sub_20C4E2084(&qword_27C7C4F50, MEMORY[0x277D53C20], MEMORY[0x277D53C30]);
    v1 = sub_20C59DAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7C4F48);
    }
  }
}

uint64_t sub_20C4E1680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricPlaybackTracker.WorkoutPlaybackInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4E16E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C4E1744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C4E17AC()
{
  result = qword_27C7C4FB0;
  if (!qword_27C7C4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FB0);
  }

  return result;
}

uint64_t sub_20C4E1800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_20C4E1868()
{
  result = qword_27C7C4FE0;
  if (!qword_27C7C4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FE0);
  }

  return result;
}

unint64_t sub_20C4E18BC()
{
  result = qword_27C7C4FE8;
  if (!qword_27C7C4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FE8);
  }

  return result;
}

double sub_20C4E199C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AB0, &qword_20C5A53B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBEC8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20C4E1A98()
{
  result = qword_27C7C4FF0;
  if (!qword_27C7C4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FF0);
  }

  return result;
}

unint64_t sub_20C4E1B24()
{
  result = qword_27C7C60A0;
  if (!qword_27C7C60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C60A0);
  }

  return result;
}

double sub_20C4E1CA0(uint64_t a1)
{
  v3 = *(sub_20C59DE3C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20C4CBE34(a1, v1 + v4, v5);
}

unint64_t sub_20C4E1D74()
{
  result = qword_27C7C5000;
  if (!qword_27C7C5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5000);
  }

  return result;
}

unint64_t sub_20C4E1DE8()
{
  result = qword_27C7C5008;
  if (!qword_27C7C5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5008);
  }

  return result;
}

unint64_t sub_20C4E1E54()
{
  result = qword_27C7C5010;
  if (!qword_27C7C5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5010);
  }

  return result;
}

unint64_t sub_20C4E1EC0()
{
  result = qword_27C7C5018;
  if (!qword_27C7C5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5018);
  }

  return result;
}

unint64_t sub_20C4E1F24()
{
  result = qword_27C7C5020;
  if (!qword_27C7C5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5020);
  }

  return result;
}

unint64_t sub_20C4E1F78()
{
  result = qword_27C7C5030;
  if (!qword_27C7C5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5030);
  }

  return result;
}

unint64_t sub_20C4E1FCC()
{
  result = qword_27C7C5038;
  if (!qword_27C7C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5038);
  }

  return result;
}

uint64_t sub_20C4E2020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4E2084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C4E20CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_20C4E2140()
{
  result = qword_27C7C4590;
  if (!qword_27C7C4590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C4590);
  }

  return result;
}

uint64_t AudioHintError.hashValue.getter(unsigned __int8 a1)
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](a1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E2224()
{
  result = qword_27C7C5060;
  if (!qword_27C7C5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5060);
  }

  return result;
}

uint64_t sub_20C4E2288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C4E22D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SiriUserActivityType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7365536E69676562;
  v2 = 0x7365536573756170;
  if (a1 != 2)
  {
    v2 = 0x6553656D75736572;
  }

  if (a1)
  {
    v1 = 0x6973736553646E65;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C4E23C4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x7365536E69676562;
  v4 = *a1;
  v5 = 0x7365536573756170;
  if (v4 == 2)
  {
    v6 = 0xEC0000006E6F6973;
  }

  else
  {
    v5 = 0x6553656D75736572;
    v6 = 0xED00006E6F697373;
  }

  v7 = 0x6973736553646E65;
  v8 = 0xEA00000000006E6FLL;
  if (!*a1)
  {
    v7 = 0x7365536E69676562;
    v8 = 0xEC0000006E6F6973;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x7365536573756170;
  if (*a2 == 2)
  {
    v12 = 0xEC0000006E6F6973;
  }

  else
  {
    v11 = 0x6553656D75736572;
    v12 = 0xED00006E6F697373;
  }

  if (*a2)
  {
    v3 = 0x6973736553646E65;
    v2 = 0xEA00000000006E6FLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C5A0E9C();
  }

  return v15 & 1;
}

uint64_t sub_20C4E2524()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

double sub_20C4E25FC(uint64_t a1)
{
  sub_20C5A049C();

  return result;
}

uint64_t sub_20C4E26C0(uint64_t a1)
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

unint64_t sub_20C4E2794@<X0>(Swift::String *a1@<X0>, SeymourMedia::SiriUserActivityType_optional *a2@<X8>)
{
  result = _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_20C4E27C4(uint64_t *a1@<X8>)
{
  v2 = 0x7365536E69676562;
  v3 = 0x7365536573756170;
  v4 = 0xED00006E6F697373;
  if (*v1 == 2)
  {
    v4 = 0xEC0000006E6F6973;
  }

  else
  {
    v3 = 0x6553656D75736572;
  }

  v5 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v2 = 0x6973736553646E65;
  }

  else
  {
    v5 = 0xEC0000006E6F6973;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C5A0D9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C4E28A8()
{
  result = qword_27C7C5068;
  if (!qword_27C7C5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5068);
  }

  return result;
}

void sub_20C4E2910(void *a1@<X8>)
{
  _sSn12SeymourMediaSdRszrlE9canonicalSnySdGyFZ_0();
  *a1 = v2;
  a1[1] = v3;
}

void _sSn12SeymourMediaSdRszrlE9canonicalSnySdGyFZ_0()
{
  sub_20C5A073C();
  sub_20C4E73EC(v0);
  sub_20C4E6AFC(v1, v2);
  v4 = v3;
  sub_20C5A073C();
  sub_20C4E73EC(v5);
  sub_20C4E6AFC(v6, v7);
  if (v8 >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (v4 > v8)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v9 > v10)
  {
    __break(1u);
  }
}

uint64_t AudioLanguageSelectionChanged.selectedLanguageIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AudioLanguageSelectionChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4E2A80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20C4E2AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *MarketingItemProvider.__allocating_init(accountProvider:bag:subscriptionClient:queue:clientIdentifier:clientVersion:serviceType:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  sub_20C4780E8(a1, (v18 + 2));
  v18[7] = a2;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = a7;
  v18[11] = a8;
  v18[12] = a4;
  sub_20C4780E8(a3, (v18 + 13));
  v18[18] = a9;
  v18[19] = a10;
  return v18;
}

uint64_t sub_20C4E2BD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v37 = a3;
  v38 = a1;
  v36 = sub_20C5A01CC();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE2C();
  v15 = a5;

  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v34 = a6;
    v23 = v22;
    v39 = v22;
    *v19 = 136446722;
    *(v19 + 4) = sub_20C479640(v38, a2, &v39);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v15;
    *v21 = v35;
    v24 = v15;
    _os_log_impl(&dword_20C472000, v16, v17, "Fetching marketing item with placement = %{public}s, account = %{mask.hash}@", v19, 0x20u);
    sub_20C4A7CD0(v21);
    v25 = v21;
    a4 = v33;
    MEMORY[0x20F2FFF90](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x20F2FFF90](v23, -1, -1);
    v26 = v19;
    a5 = v35;
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v27 = swift_allocObject();
  v28 = v37;
  v29 = v38;
  v27[2] = v7;
  v27[3] = v29;
  v27[4] = a2;
  v27[5] = a5;
  v27[6] = v28;
  v27[7] = a4;
  sub_20C4E4784();

  v30 = v15;

  return sub_20C59EA9C();
}

void sub_20C4E2E7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v31 = v11;
  swift_unownedRetainStrong();
  v12 = a3[7];

  swift_unknownObjectRetain();

  swift_unownedRetainStrong();

  swift_unownedRetainStrong();

  swift_unownedRetainStrong();

  v13 = objc_allocWithZone(MEMORY[0x277CEE540]);
  v14 = sub_20C5A036C();

  v15 = sub_20C5A036C();

  v16 = sub_20C5A036C();
  v17 = sub_20C5A036C();

  v18 = [v13 initWithBag:v12 clientIdentifier:v14 clientVersion:v15 placement:v16 serviceType:v17];
  swift_unknownObjectRelease();

  [v18 setAccount_];
  if (a8)
  {
    v19 = sub_20C5A036C();
  }

  else
  {
    v19 = 0;
  }

  [v18 setOfferHints_];

  v20 = [objc_opt_self() currentProcess];
  v21 = sub_20C5A036C();
  [v20 setTreatmentNamespace_];

  [v18 setClientInfo_];
  v22 = [v18 perform];
  v23 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = sub_20C49B6E4;
  v24[7] = v31;
  aBlock[4] = sub_20C4E48A4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C499B34;
  aBlock[3] = &block_descriptor_7;
  v25 = _Block_copy(aBlock);

  v26 = a6;

  [v22 addFinishBlock_];
  _Block_release(v25);
}

double sub_20C4E31F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v13 = sub_20C5A020C();
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C5A023C();
  v16 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = *(Strong + 96);

    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a4;
    v21[4] = a5;
    v21[5] = a6;
    v22 = v31;
    v21[6] = v30;
    v21[7] = v22;
    v21[8] = a1;
    aBlock[4] = sub_20C4E48DC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20C4F8F74;
    aBlock[3] = &block_descriptor_28;
    v23 = _Block_copy(aBlock);
    v24 = a2;
    v25 = a1;

    v26 = a6;

    sub_20C5A022C();
    v34 = MEMORY[0x277D84F90];
    sub_20C4959D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0, &unk_20C5A3A80);
    sub_20C495A30();
    sub_20C5A0AEC();
    v27 = v29;
    MEMORY[0x20F2FEDA0](0, v18, v15, v23);
    _Block_release(v23);

    (*(v33 + 8))(v15, v13);
    (*(v16 + 8))(v18, v32);
  }

  return result;
}

void sub_20C4E34E4(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void, void), void *a6, void *a7)
{
  v14 = sub_20C5A01CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v44 = a2;
    v45 = v16;
    v46 = a6;
    v19 = a1;
    sub_20C59FE2C();
    v20 = a1;
    v21 = a4;

    v22 = sub_20C5A01BC();
    v23 = sub_20C5A089C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v41 = v26;
      v42 = swift_slowAlloc();
      v49 = v42;
      *v25 = 136446978;
      *(v25 + 4) = sub_20C479640(v44, a3, &v49);
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v21;
      *v26 = a4;
      *(v25 + 32) = 2082;
      swift_getErrorValue();
      v27 = v47;
      v28 = v48;
      v29 = v21;
      v30 = MEMORY[0x20F2FF3F0](v27, v28);
      v32 = sub_20C479640(v30, v31, &v49);

      *(v25 + 34) = v32;
      _os_log_impl(&dword_20C472000, v22, v23, "Unable to fetch marketing item with placement = %{public}s, account = %{mask.hash}@ -> %{public}s", v25, 0x2Au);
      v33 = v41;
      sub_20C4A7CD0(v41);
      MEMORY[0x20F2FFF90](v33, -1, -1);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v34, -1, -1);
      v35 = v25;
      a5 = v43;
      MEMORY[0x20F2FFF90](v35, -1, -1);
    }

    (*(v15 + 8))(v18, v45);
    v36 = a1;
    a5(a1, 1);
  }

  else
  {
    if (a7)
    {
      v46 = a7;
      a5(a7, 0);
      v37 = v46;
    }

    else
    {
      sub_20C4E4828();
      v38 = swift_allocError();
      *v39 = 0;
      a5(v38, 1);
      v37 = v38;
    }
  }
}

uint64_t MarketingItemProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  return v0;
}

uint64_t MarketingItemProvider.fetchMarketingItem(for:offerHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE2C();
  sub_20C5A01AC();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v14 + 24) = 40;
  *(v14 + 32) = 2;
  *(v14 + 40) = 79;
  *(v14 + 48) = &unk_20C5A5E68;
  *(v14 + 56) = v13;
  sub_20C4E4784();

  return sub_20C59EA9C();
}

uint64_t sub_20C4E3AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = sub_20C5A01CC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5078, &unk_20C5A5EF0);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E3BEC, 0, 0);
}

uint64_t sub_20C4E3BEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = Strong[5];
    v2 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v3);
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_20C4E3D48;

    return MEMORY[0x2821AFC58](v3, v2);
  }

  else
  {
    sub_20C4E4828();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E3D48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_20C4E43D8;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_20C4E3E70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C4E3E70()
{
  v1 = v0[30];
  v0[31] = v1;
  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v1;
  sub_20C4E2BD0(v6, v5, v4, v3, v1, v2);

  v8 = swift_task_alloc();
  v0[32] = v8;
  *(v8 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v8 + 24) = 40;
  *(v8 + 32) = 2;
  *(v8 + 40) = 92;
  *(v8 + 48) = v2;
  v9 = swift_task_alloc();
  v0[33] = v9;
  v10 = sub_20C4E4784();
  *v9 = v0;
  v9[1] = sub_20C4E3FD0;

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C4E487C, v8, v10);
}

uint64_t sub_20C4E3FD0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_20C4E41CC;
  }

  else
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];
    v7 = v2[14];
    v8 = v2[11];

    *v7 = v8;
    (*(v5 + 8))(v4, v6);
    v3 = sub_20C4E413C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C4E413C()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C4E41CC()
{
  v20 = v0;
  v1 = v0[34];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_20C59FE2C();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2FF3F0](v0[6], v0[7]);
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C472000, v3, v4, "Failed to fetch marketing item with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[21];

    (*(v15 + 8))(v13, v14);
  }

  v16 = v0[31];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_20C4E43D8(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 232);
  sub_20C59FE2C();
  v3 = v2;
  v4 = sub_20C5A01BC();
  v5 = sub_20C5A089C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 232);
    v7 = *(v1 + 168);
    v22 = *(v1 + 176);
    v8 = *(v1 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2FF3F0](*(v1 + 72), *(v1 + 80));
    v13 = sub_20C479640(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C472000, v4, v5, "Failed to fetch current account information: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v15 = *(v1 + 168);
    v14 = *(v1 + 176);
    v16 = *(v1 + 160);

    (*(v15 + 8))(v14, v16);
  }

  *(v1 + 248) = 0;
  v17 = *(v1 + 208);
  sub_20C4E2BD0(*(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), 0, v17);
  v18 = swift_task_alloc();
  *(v1 + 256) = v18;
  *(v18 + 16) = "SeymourMedia/MarketingItemProvider.swift";
  *(v18 + 24) = 40;
  *(v18 + 32) = 2;
  *(v18 + 40) = 92;
  *(v18 + 48) = v17;
  v19 = swift_task_alloc();
  *(v1 + 264) = v19;
  v20 = sub_20C4E4784();
  *v19 = v1;
  v19[1] = sub_20C4E3FD0;

  return MEMORY[0x2822008A0](v1 + 88, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C4E487C, v18, v20);
}

uint64_t sub_20C4E4678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C47FCF0;

  return sub_20C4E3AB0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_20C4E4784()
{
  result = qword_2810F3DB0;
  if (!qword_2810F3DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F3DB0);
  }

  return result;
}

unint64_t sub_20C4E4828()
{
  result = qword_27C7C5080;
  if (!qword_27C7C5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5080);
  }

  return result;
}

uint64_t MarketingLinkError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E4984()
{
  result = qword_27C7C5088;
  if (!qword_27C7C5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5088);
  }

  return result;
}

void *sub_20C4E49E8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5090, &qword_20C5A5FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v36 = type metadata accessor for AudioHint(0);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v10;
  v11 = *(a3 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v31 = v9;
  v33 = (v9 + 48);
  v34 = v6;
  v12 = (a3 + 80);
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v39 = v12;
    v40 = v11;
    v13 = *(v12 - 6);
    v14 = *(v12 - 5);
    v15 = *(v12 - 4);
    v16 = *(v12 - 3);
    v18 = *(v12 - 2);
    v17 = *(v12 - 1);
    v19 = *v12;
    v41[0] = v13;
    v41[1] = v14;
    v41[2] = v15;
    v41[3] = v16;
    v41[4] = v18;
    v41[5] = v17;
    v42 = v19;
    sub_20C4E6298(v13, v14, v15, v16, v18, v17, v19);
    v20 = v34;
    v21 = v43;
    v37(v41);
    v43 = v21;
    if (v21)
    {
      break;
    }

    sub_20C497EF0(v13, v14, v15, v16, v18, v17, v19);
    if ((*v33)(v20, 1, v36) == 1)
    {
      sub_20C4E6300(v20);
    }

    else
    {
      v22 = v20;
      v23 = v32;
      sub_20C4B0C04(v22, v32);
      sub_20C4B0C04(v23, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_20C4ECCC4(0, v38[2] + 1, 1, v38);
      }

      v25 = v38[2];
      v24 = v38[3];
      v26 = v31;
      if (v25 >= v24 >> 1)
      {
        v28 = sub_20C4ECCC4((v24 > 1), v25 + 1, 1, v38);
        v26 = v31;
        v38 = v28;
      }

      v27 = v38;
      v38[2] = v25 + 1;
      sub_20C4B0C04(v35, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25);
    }

    v12 = v39 + 56;
    v11 = v40 - 1;
    if (v40 == 1)
    {
      return v38;
    }
  }

  sub_20C497EF0(v13, v14, v15, v16, v18, v17, v19);

  return v38;
}

uint64_t static AudioHint.make(videoTextTrackURL:session:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v35 = sub_20C59D63C();
  v6 = *(v35 - 8);
  v34 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59D37C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60, &qword_20C5A5368);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v14);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v9 + 32))(v18 + v17, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v19 = a2;
  sub_20C59EA9C();
  v20 = v33;
  v21 = v35;
  (*(v6 + 16))(v33, v36, v35);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v20, v21);
  v25 = v31;
  v24 = v32;
  (*(v11 + 16))(v31, v16, v32);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = swift_allocObject();
  (*(v11 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20C4C0280;
  v28[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0, &qword_20C5A52F8);
  sub_20C59EA9C();
  return (*(v11 + 8))(v16, v24);
}

void sub_20C4E50B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_20C59D30C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20C4E6418;
  *(v8 + 24) = v6;
  v11[4] = sub_20C4E6458;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20C4E528C;
  v11[3] = &block_descriptor_40;
  v9 = _Block_copy(v11);

  v10 = [a3 dataTaskWithURL:v7 completionHandler:v9];
  _Block_release(v9);

  [v10 resume];
}

void sub_20C4E51F8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, void))
{
  sub_20C4E6460(a1, a2);
  v7 = a4;
  sub_20C5A100C();
  a5(v8, v9, v10);
  sub_20C4E6474(v8, v9, v10);
}

double sub_20C4E528C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_20C59D3CC();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_20C4BFD68(v6, v10);

  return result;
}

uint64_t sub_20C4E5354(uint64_t *a1, uint64_t a2)
{
  v4 = sub_20C59D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *a1;
  v8 = a1[1];
  sub_20C4B3570();
  v9 = sub_20C5A08EC();
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  (*(v5 + 32))(v11 + v10, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  sub_20C4BFD7C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0, &qword_20C5A52F8);
  return sub_20C59EA9C();
}

uint64_t static AudioHint.make(videoTextTrackData:queue:locale:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_20C59D63C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8, v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_20C4BFD7C(a1, a2);
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0, &qword_20C5A52F8);
  return sub_20C59EA9C();
}

double sub_20C4E5670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v38 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v40 = sub_20C5A020C();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A023C();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59D63C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_20C5A021C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_20C4B3570();
  (*(v15 + 104))(v17, *MEMORY[0x277D851C8], v14);

  v33 = sub_20C5A090C();
  (*(v15 + 8))(v17, v14);
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v23 = v35;
  v22 = v36;
  *(v21 + 16) = v35;
  *(v21 + 24) = v22;
  (*(v12 + 32))(v21 + v19, &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v24 = v38;
  *(v21 + v20) = v38;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_20C49B6E4;
  v25[1] = v18;
  aBlock[4] = sub_20C4E6150;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_8;
  v26 = _Block_copy(aBlock);
  sub_20C4BFD7C(v23, v22);
  v27 = v24;
  v28 = v37;
  sub_20C5A022C();
  v44 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0, &unk_20C5A3A80);
  sub_20C495A30();
  v30 = v39;
  v29 = v40;
  sub_20C5A0AEC();
  v31 = v33;
  MEMORY[0x20F2FEDA0](0, v28, v30, v26);
  _Block_release(v26);

  (*(v43 + 8))(v30, v29);
  (*(v41 + 8))(v28, v42);

  return result;
}

double sub_20C4E5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v28 = a4;
  v10 = sub_20C5A020C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C5A023C();
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C517048(a1, a2);
  v19 = v18;
  v26 = v11;
  MEMORY[0x28223BE20](v17);
  v25 = a5;
  *(&v24 - 2) = v27;

  v20 = sub_20C4E49E8(sub_20C4E622C, (&v24 - 4), v19);
  swift_bridgeObjectRelease_n();

  v21 = swift_allocObject();
  v21[2] = v25;
  v21[3] = a6;
  v21[4] = v20;
  aBlock[4] = sub_20C495AF4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_27;
  v22 = _Block_copy(aBlock);

  sub_20C5A022C();
  v30 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0, &unk_20C5A3A80);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v16, v13, v22);
  _Block_release(v22);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v16, v29);

  return result;
}

uint64_t sub_20C4E5F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 48))
  {
    v4 = type metadata accessor for AudioHint(0);
    return (*(*(v4 - 8) + 56))(a3, 1, 1, v4);
  }

  else
  {
    v7 = a1[4];
    v6 = a1[5];
    v9 = a1[2];
    v8 = a1[3];
    v11 = *a1;
    v10 = a1[1];
    v13 = type metadata accessor for AudioHint(0);
    v14 = *(v13 + 28);
    v15 = sub_20C59D63C();
    (*(*(v15 - 8) + 16))(&a3[v14], a2, v15);
    *a3 = v11;
    *(a3 + 1) = v10;
    *(a3 + 2) = v9;
    *(a3 + 3) = v8;
    *(a3 + 4) = v7;
    *(a3 + 5) = v6;
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }
}

double sub_20C4E6090(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60, &qword_20C5A5368) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBDE4(a1, a2, v2 + v6, v8, v9);
}

double sub_20C4E6150()
{
  v1 = *(sub_20C59D63C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4E5AFC(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t objectdestroy_17Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_20C4E6298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 1 < 2)
  {

LABEL_4:

    return;
  }

  if (!a7)
  {

    goto LABEL_4;
  }
}

uint64_t sub_20C4E6300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5090, &qword_20C5A5FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_20C4E6368(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C59D63C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20C4E5670(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t sub_20C4E6418(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_20C4E6460(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20C4BFD7C(result, a2);
  }

  return result;
}

void sub_20C4E6474(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_20C4A7C7C(a1, a2);
  }
}

uint64_t PlaybackError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4E6528()
{
  result = qword_27C7C5098;
  if (!qword_27C7C5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5098);
  }

  return result;
}

uint64_t AudioHint.description.getter()
{
  v1 = v0;
  sub_20C5A0C0C();

  strcpy(v4, "Identifier: ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  MEMORY[0x20F2FE9A0](*v1, v1[1]);
  MEMORY[0x20F2FE9A0](8236, 0xE200000000000000);
  v2 = v4[0];
  strcpy(v4, "Content: ");
  WORD1(v4[1]) = 0;
  HIDWORD(v4[1]) = -385875968;
  MEMORY[0x20F2FE9A0](v1[4], v1[5]);
  MEMORY[0x20F2FE9A0](44, 0xE100000000000000);

  MEMORY[0x20F2FE9A0](v4[0], v4[1]);

  strcpy(v4, "Time Range: ");
  HIWORD(v4[1]) = -5120;
  sub_20C5A0D0C();
  MEMORY[0x20F2FE9A0](3943982, 0xE300000000000000);
  sub_20C5A0D0C();
  MEMORY[0x20F2FE9A0](0, 0xE000000000000000);

  MEMORY[0x20F2FE9A0](46, 0xE100000000000000);

  MEMORY[0x20F2FE9A0](v4[0], v4[1]);

  return v2;
}

unint64_t static StoreContentOptions.dictionary(backupStreamingURL:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6180, &unk_20C5A60D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  v1 = [objc_opt_self() smm_iTunesStoreContentHLSAssetURLStringKey];
  v2 = sub_20C5A039C();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = sub_20C59D2FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_20C5896D0(inited);
  swift_setDeallocating();
  sub_20C4E684C(inited + 32);
  return v7;
}

uint64_t sub_20C4E684C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C50A0, &qword_20C5AA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WheelchairStatusObserver.__allocating_init(eventHub:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  sub_20C477580(a3, v6 + 16);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = *(v8 + 16);
  swift_unknownObjectRetain();

  v9(v10, v7, v8);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v6;
}

uint64_t WheelchairStatusObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WheelchairStatusObserver.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)()
{
  swift_getObjectType();
  sub_20C4E6A00();
  return sub_20C59F5FC();
}

unint64_t sub_20C4E6A00()
{
  result = qword_27C7C50A8;
  if (!qword_27C7C50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C50A8);
  }

  return result;
}

void sub_20C4E6AFC(uint64_t a1, unint64_t a2)
{
  v5 = sub_20C59D19C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v66 - v10;
  MEMORY[0x28223BE20](v11);
  v75 = &v66 - v12;
  if (a2)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v14 = sub_20C5A036C();
    v72 = a1;
    v15 = v14;
    v16 = [v13 initWithString_];

    [v16 setCharactersToBeSkipped_];
    if (qword_27C7C4110 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v5, qword_27C7CDF38);
    (*(v6 + 16))(v75, v17, v5);
    sub_20C4E7698();
    sub_20C5A0ADC();
    v78 = 48;
    sub_20C5A0ACC();
    v78 = 49;
    sub_20C5A0ACC();
    v78 = 50;
    sub_20C5A0ACC();
    v78 = 51;
    sub_20C5A0ACC();
    v78 = 52;
    sub_20C5A0ACC();
    v78 = 53;
    sub_20C5A0ACC();
    v78 = 54;
    sub_20C5A0ACC();
    v78 = 55;
    sub_20C5A0ACC();
    v78 = 56;
    sub_20C5A0ACC();
    v78 = 57;
    sub_20C5A0ACC();
    v78 = 46;
    sub_20C5A0ACC();
    sub_20C59D17C();
    v19 = *(v6 + 8);
    v18 = v6 + 8;
    v67 = v19;
    v68 = v5;
    v19(v8, v5);
    v20 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v20 = v72 & 0xFFFFFFFFFFFFLL;
    }

    v21 = 7;
    if (((a2 >> 60) & ((v72 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 11;
    }

    v74 = 4 * v20;
    v22 = MEMORY[0x277D84F90];
    v23 = 15;
    v77 = v16;
    v69 = v18;
    v71 = a2;
    v66 = v21 | (v20 << 16);
    while (1)
    {
      v73 = v22;
      v24 = 0;
      v70 = v23;
      v25 = v23 >> 14;
      while (1)
      {
        v26 = sub_20C5A0A0C();
        if (!v27)
        {

          sub_20C5A074C();
          v2 = v50;
          v43 = v73;
          v37 = *(v73 + 2);
          if (v37)
          {
            if (v37 == 1)
            {
LABEL_46:
              v52 = 0;
              v53 = v37;
            }

            else
            {
              v51 = 0;
              v52 = v37 & 0x7FFFFFFFFFFFFFFELL;
              v53 = *(v73 + 2) & 1;
              v54 = &v73[8 * v37 + 24];
              do
              {
                v56 = *(v54 - 1);
                v55 = *v54;
                v57 = pow(60.0, v51);
                v2 = v2 + v55 * v57 + v56 * pow(60.0, (v51 + 1));
                v54 -= 2;
                v51 += 2;
              }

              while (v51 != v52);
              if (v37 == v52)
              {
                goto LABEL_41;
              }
            }

            do
            {
              v58 = *(v43 + 24 + 8 * v53);
              v2 = v2 + v58 * pow(60.0, v52++);
              v16 = v77;
              --v53;
            }

            while (v53);
          }

LABEL_41:

          v60 = v67;
          v59 = v68;
          v67(v76, v68);
          v60(v75, v59);
          return;
        }

        v28 = v26;
        v29 = v27;
        MEMORY[0x28223BE20](v26);
        *(&v66 - 2) = v76;
        swift_bridgeObjectRetain_n();
        sub_20C4E7710(sub_20C4E76F0, (&v66 - 4), v28, v29);
        v31 = v30;
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34)
        {

          swift_bridgeObjectRelease_n();
          sub_20C4E760C();
          swift_allocError();
          *v61 = 3;
          swift_willThrow();

          goto LABEL_44;
        }

        v35 = v77;
        if (v28 == 46 && v29 == 0xE100000000000000)
        {

          if (v24)
          {
            goto LABEL_43;
          }

          v24 = 1;
        }

        else
        {
          v36 = sub_20C5A0E9C();

          if (v36 & v24)
          {
LABEL_43:

            sub_20C4E760C();
            swift_allocError();
            *v62 = 3;
            swift_willThrow();

LABEL_44:
            v63 = v68;
            v64 = v67;
            v67(v76, v68);
            v64(v75, v63);
            return;
          }

          v24 |= v36;
        }

        v37 = sub_20C5A09EC();
        MEMORY[0x28223BE20](v37);
        *(&v66 - 2) = v75;

        sub_20C4E7710(sub_20C4E78E0, (&v66 - 4), v28, v29);
        v39 = v38;
        v41 = v40;
        swift_bridgeObjectRelease_n();

        if (v74 == v37 >> 14)
        {
          break;
        }

        v42 = v39 & 0xFFFFFFFFFFFFLL;
        if ((v41 & 0x2000000000000000) != 0)
        {
          v42 = HIBYTE(v41) & 0xF;
        }

        if (v42)
        {
          goto LABEL_27;
        }

        v16 = v77;
        v43 = sub_20C5A09EC();
        if (v25 > v43 >> 14)
        {
          __break(1u);
          goto LABEL_46;
        }
      }

      if (v74 < v25)
      {
        break;
      }

LABEL_27:
      sub_20C5A059C();
      v44 = sub_20C5A077C();
      v16 = v77;
      if (v45)
      {

        sub_20C4E760C();
        swift_allocError();
        *v65 = 3;
        swift_willThrow();

        goto LABEL_44;
      }

      v46 = v44;
      v22 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_20C4EC738(0, *(v22 + 2) + 1, 1, v22);
      }

      v48 = *(v22 + 2);
      v47 = *(v22 + 3);
      if (v48 >= v47 >> 1)
      {
        v22 = sub_20C4EC738((v47 > 1), v48 + 1, 1, v22);
      }

      *(v22 + 2) = v48 + 1;
      *&v22[8 * v48 + 32] = v46;
      v23 = sub_20C5A09EC();
      if (v74 < v23 >> 14)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  else
  {
    sub_20C4E760C();
    swift_allocError();
    *v49 = 3;
    swift_willThrow();
  }
}

BOOL sub_20C4E73D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

void sub_20C4E73EC(double a1)
{
  v1 = floor(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1 / 3600;
  v3 = v1 % 3600;
  if (!__OFSUB__(v1, 3600 * v2))
  {
    v4 = v3 / 60;
    v5 = a1 - v2 * 60.0 * 60.0 - (v3 / 60) * 60.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B60, &qword_20C5A9150);
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D83B88];
    *(v6 + 16) = xmmword_20C5A4FE0;
    v8 = MEMORY[0x277D83C10];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v2;
    sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](58, 0xE100000000000000);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C5A4FE0;
    *(v9 + 56) = v7;
    *(v9 + 64) = v8;
    *(v9 + 32) = v4;
    v10 = sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](v10);

    MEMORY[0x20F2FE9A0](58, 0xE100000000000000);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D839F8];
    *(v11 + 16) = xmmword_20C5A4FE0;
    v13 = MEMORY[0x277D83A80];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = v5;
    v14 = sub_20C5A03DC();
    MEMORY[0x20F2FE9A0](v14);

    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_20C4E760C()
{
  result = qword_27C7C5110;
  if (!qword_27C7C5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5110);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_20C4E7698()
{
  result = qword_27C7C5118;
  if (!qword_27C7C5118)
  {
    sub_20C59D19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5118);
  }

  return result;
}

void sub_20C4E7710(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[5] = a2;
  v19[2] = 0;
  v19[3] = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v17 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v18 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_20C5A0BFC();
        v14 = v13;
        goto LABEL_16;
      }

      if ((a4 & 0x2000000000000000) != 0)
      {
        v19[0] = a3;
        v19[1] = v18;
        v11 = v19 + v9;
      }

      else
      {
        v10 = v17;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v10 = sub_20C5A0C7C();
        }

        v11 = (v10 + v9);
      }

      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        break;
      }

      v16 = (__clz(v12 ^ 0xFF) - 24);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
          v14 = 4;
        }
      }

      else
      {
        if (v16 == 1)
        {
          break;
        }

        v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
        v14 = 2;
      }

LABEL_16:
      LODWORD(v19[0]) = v12;
      v15 = a1(v19);
      if (v4)
      {

        return;
      }

      if (v15)
      {
        sub_20C5A047C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return;
      }
    }

    v14 = 1;
    goto LABEL_16;
  }
}

uint64_t static MediaPlayerPlaybackReady.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4E79AC(uint64_t a1, uint64_t a2, uint64_t a3, CMTimeValue a4, unint64_t a5, CMTimeEpoch a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v30 = a7;
  v13 = sub_20C5A01CC();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = *(a3 + 56);
  v27 = ObjectType;
  v18 = v17(ObjectType, a3);
  v19 = v18;
  if (*(a1 + 8))
  {
    v20 = 1;
    if (*(a1 + 36))
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_20C5A096C();
    if (!v20 && (result & 1) != 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  v20 = *a1 != v18;
  if ((*(a1 + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 12) = a4;
  *(a1 + 20) = a5;
  *(a1 + 28) = a6;
  *(a1 + 36) = 0;
  CMTime.elapsedTime.getter(a4, a5, a6);
  v23 = v22;
  sub_20C59FE5C();
  swift_unknownObjectRetain();
  v24 = sub_20C5A01BC();
  v25 = sub_20C5A08AC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134349568;
    *(v26 + 4) = (*(a3 + 48))(v27, a3);
    swift_unknownObjectRelease();
    *(v26 + 12) = 2050;
    *(v26 + 14) = v19;
    *(v26 + 22) = 2050;
    *(v26 + 24) = v23;
    _os_log_impl(&dword_20C472000, v24, v25, "Sync Player Status Update: status %{public}ld, timecontrolstatus %{public}ld, elapsedTime: %{public}f", v26, 0x20u);
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v28 + 8))(v15, v29);
  swift_getObjectType();
  v32 = v19;
  v33 = v23;
  sub_20C4E7D0C();
  return sub_20C59F5FC();
}

void sub_20C4E7C68()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 14);
  sub_20C4E7CD8(&v1[4]);
  os_unfair_lock_unlock(v1 + 14);
}

unint64_t sub_20C4E7D0C()
{
  result = qword_27C7C5120;
  if (!qword_27C7C5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5120);
  }

  return result;
}

void *sub_20C4E7D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(ObjectType, a2);
  if (result)
  {
    v10 = result;
    [result duration];

    swift_getObjectType();
    sub_20C4E7E54();
    return sub_20C59F5FC();
  }

  return result;
}

unint64_t sub_20C4E7E54()
{
  result = qword_27C7C5128;
  if (!qword_27C7C5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5128);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C4E7EBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 37))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4E7EDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
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

  *(result + 37) = v3;
  return result;
}

uint64_t sub_20C4E7F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20C4E7F68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t AudioSessionCoordinator.State.sessionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_20C4E7FF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v5 = sub_20C5A002C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20C4E8084(uint64_t a1, uint64_t *a2)
{
  v4 = sub_20C5A002C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E819C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v4 = sub_20C5A002C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20C4E8224(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  swift_beginAccess();
  v4 = sub_20C5A002C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E8314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20C4E83AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_20C4E84CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20C4E8560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_20C4E865C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_20C4E870C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

char *AudioSessionCoordinator.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C476B90(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_20C4E87F8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C5A01CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C59EBBC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E8914, 0, 0);
}

uint64_t sub_20C4E8914()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C59F67C();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for AudioSessionCoordinator(0);
    v4 = sub_20C4EB478(&qword_27C7C5158, &protocol conformance descriptor for AudioSessionCoordinator);
    *v2 = v0;
    v2[1] = sub_20C4E8A70;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E8A70()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C4E8C58, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C4E8C58(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_20C59FE4C();
  v3 = v2;
  v4 = sub_20C5A01BC();
  v5 = sub_20C5A089C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2FF3F0](*(v1 + 48), *(v1 + 56));
    v13 = sub_20C479640(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C472000, v4, v5, "AudioSessionCoordinator - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_20C4E8E40(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C5A01CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C59EBBC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E8F5C, 0, 0);
}

uint64_t sub_20C4E8F5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C59F7DC();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for AudioSessionCoordinator(0);
    v4 = sub_20C4EB478(&qword_27C7C5158, &protocol conformance descriptor for AudioSessionCoordinator);
    *v2 = v0;
    v2[1] = sub_20C4E90B8;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C4E90B8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C4E92A0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C4E92A0(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_20C59FE4C();
  v3 = v2;
  v4 = sub_20C5A01BC();
  v5 = sub_20C5A089C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2FF3F0](*(v1 + 48), *(v1 + 56));
    v13 = sub_20C479640(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C472000, v4, v5, "AudioSessionCoordinator - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

void sub_20C4E9488()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v5;
    os_unfair_lock_unlock((v2 + 24));

    sub_20C4EAA6C(*MEMORY[0x277CB8030], *MEMORY[0x277CB80B8]);
  }
}

void sub_20C4E9554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - v4;
  v6 = sub_20C5A01CC();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 category];
  v13 = sub_20C5A039C();
  v15 = v14;
  if (v13 == sub_20C5A039C() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_20C5A0E9C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v19 = [v11 mode];
  v20 = sub_20C5A039C();
  v22 = v21;
  if (v20 == sub_20C5A039C() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_20C5A0E9C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v25 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
  swift_beginAccess();
  v26 = *(v1 + v25);

  os_unfair_lock_lock((v26 + 24));
  v27 = *(v26 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
    return;
  }

  *(v26 + 16) = v29 & ~(v29 >> 63);
  os_unfair_lock_unlock((v26 + 24));

  v30 = *(v1 + v25);

  os_unfair_lock_lock((v30 + 24));
  v31 = *(v30 + 16);
  os_unfair_lock_unlock((v30 + 24));

  sub_20C59FE5C();
  v32 = sub_20C5A01BC();
  v33 = sub_20C5A08AC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v31;
    _os_log_impl(&dword_20C472000, v32, v33, "AudioSessionCoordinator - moviePlaybackCount is %ld", v34, 0xCu);
    MEMORY[0x20F2FFF90](v34, -1, -1);
  }

  (*(v45 + 8))(v10, v46);
LABEL_16:
  v35 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v35, v2);
  LODWORD(v35) = (*(v3 + 88))(v5, v2);
  v36 = *MEMORY[0x277D4F258];
  (*(v3 + 8))(v5, v2);
  if (v35 == v36)
  {
    v37 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_moviePlaybackCount;
    swift_beginAccess();
    v38 = *(v1 + v37);

    os_unfair_lock_lock((v38 + 24));
    sub_20C4E9AB0((v38 + 16));
    os_unfair_lock_unlock((v38 + 24));

    sub_20C4EAA6C(*MEMORY[0x277CB8020], *MEMORY[0x277CB80A8]);
  }

  else
  {
    v39 = v44;
    sub_20C59FE5C();
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20C472000, v40, v41, "AudioSessionCoordinator - Active workout session exists, refrain from setting AudioSession category to ambient", v42, 2u);
      MEMORY[0x20F2FFF90](v42, -1, -1);
    }

    (*(v45 + 8))(v39, v46);
  }
}

void sub_20C4E9AB0(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_20C59FE5C();
    v6 = sub_20C5A01BC();
    v7 = sub_20C5A08AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C472000, v6, v7, "AudioSessionCoordinator - Active video session exists, refrain from setting AudioSession category to ambient", v8, 2u);
      MEMORY[0x20F2FFF90](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t AudioSessionCoordinator.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_lock;
  v2 = sub_20C5A002C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioSessionCoordinator.startSession(session:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_20C5A01CC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4E9E10, v1, 0);
}

uint64_t sub_20C4E9E10(uint64_t a1)
{
  sub_20C59FE4C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20C472000, v2, v3, "AudioSessionCoordinator - started session", v4, 2u);
    MEMORY[0x20F2FFF90](v4, -1, -1);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[6];

  (*(v6 + 8))(v5, v8);
  v12 = sub_20C59EAFC();
  v14 = v13;
  v15 = sub_20C59EAEC();
  *v7 = v12;
  v7[1] = v14;
  v7[2] = v15;
  (*(v10 + 104))(v7, *MEMORY[0x277D4F250], v9);
  v16 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v10 + 40))(v11 + v16, v7, v9);
  swift_endAccess();

  v17 = v1[1];

  return v17();
}

uint64_t AudioSessionCoordinator.endSession(session:state:)(uint64_t a1, uint64_t *a2)
{
  v3[8] = v2;
  v5 = sub_20C5A01CC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5130, &qword_20C5A6260);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[15] = v7;
  v3[16] = v8;
  v3[17] = v9;

  return MEMORY[0x2822009F8](sub_20C4EA104, v2, 0);
}

uint64_t sub_20C4EA104()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12SeymourMedia23AudioSessionCoordinator_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D4F250])
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v0[13] + 96))(v8, v0[12]);
    v9 = *v8 == v7 && v8[1] == v6;
    if (v9 || (sub_20C5A0E9C() & 1) != 0)
    {
      sub_20C59FE4C();
      v10 = sub_20C5A01BC();
      v11 = sub_20C5A08AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_20C472000, v10, v11, "AudioSessionCoordinator - ended session", v12, 2u);
        MEMORY[0x20F2FFF90](v12, -1, -1);
      }

      else
      {
      }

      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[12];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v14 + 104))(v13, *MEMORY[0x277D4F258], v15);
      swift_beginAccess();
      (*(v14 + 40))(v4 + v5, v13, v15);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20C4EA3FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20C47FCEC;

  return AudioSessionCoordinator.startSession(session:)(a1);
}

uint64_t sub_20C4EA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator(0);
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_20C4EA558(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return AudioSessionCoordinator.endSession(session:state:)(v4, a2);
}

uint64_t sub_20C4EA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator(0);
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator(0);
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AudioSessionCoordinator(0);
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20C4EA844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator(0);
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_20C4EA8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator(0);
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_20C4EA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AudioSessionCoordinator(0);
  *v6 = v3;
  v6[1] = sub_20C47FCEC;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

void sub_20C4EAA6C(void *a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v52 = [objc_opt_self() sharedInstance];
  v11 = [v52 category];
  v12 = sub_20C5A039C();
  v14 = v13;
  if (v12 == sub_20C5A039C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v18 = [v52 mode];
  v19 = sub_20C5A039C();
  v21 = v20;
  if (v19 == sub_20C5A039C() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_20C5A0E9C();

    if ((v23 & 1) == 0)
    {
LABEL_17:
      v51 = a2;
      sub_20C59FE5C();
      v25 = a1;
      v26 = sub_20C5A01BC();
      v27 = sub_20C5A08AC();

      v28 = os_log_type_enabled(v26, v27);
      v50 = v7;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v55[0] = v30;
        *v29 = 136315138;
        v31 = sub_20C5A039C();
        v33 = v5;
        v34 = v4;
        v35 = sub_20C479640(v31, v32, v55);

        *(v29 + 4) = v35;
        v4 = v34;
        _os_log_impl(&dword_20C472000, v26, v27, "Updating audio session category to %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x20F2FFF90](v30, -1, -1);
        MEMORY[0x20F2FFF90](v29, -1, -1);

        v36 = v33;
      }

      else
      {

        v36 = v5;
      }

      v37 = *(v36 + 8);
      v37(v10, v4);
      v55[0] = 0;
      if ([v52 setCategory:v25 mode:v51 options:0 error:v55])
      {
        v38 = v55[0];
      }

      else
      {
        v51 = v4;
        v39 = v55[0];
        v40 = sub_20C59D29C();

        swift_willThrow();
        v41 = v50;
        sub_20C59FE2C();
        v42 = v40;
        v43 = sub_20C5A01BC();
        v44 = sub_20C5A089C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v55[0] = v46;
          *v45 = 136446210;
          swift_getErrorValue();
          v47 = MEMORY[0x20F2FF3F0](v53, v54);
          v49 = sub_20C479640(v47, v48, v55);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_20C472000, v43, v44, "Failed to set audio session category: %{public}s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x20F2FFF90](v46, -1, -1);
          MEMORY[0x20F2FFF90](v45, -1, -1);
        }

        else
        {
        }

        v37(v41, v51);
      }

      return;
    }

    v24 = v52;
  }
}

unint64_t sub_20C4EB030()
{
  result = qword_27C7C5140;
  if (!qword_27C7C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5140);
  }

  return result;
}

uint64_t sub_20C4EB2C0(uint64_t a1, int a2)
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

uint64_t sub_20C4EB308(uint64_t result, int a2, int a3)
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

uint64_t sub_20C4EB348(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C4E87F8(a1, v1);
}

uint64_t sub_20C4EB3E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return sub_20C4E8E40(a1, v1);
}

uint64_t sub_20C4EB478(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioSessionCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SessionDismissalConfirmationRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_20C4EB548()
{
  result = qword_27C7C5160;
  if (!qword_27C7C5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5160);
  }

  return result;
}

uint64_t sub_20C4EB5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_20C4EB630();
  v5 = sub_20C4EB684();

  return a3(a1, v4, v5);
}

unint64_t sub_20C4EB630()
{
  result = qword_27C7C5168;
  if (!qword_27C7C5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5168);
  }

  return result;
}

unint64_t sub_20C4EB684()
{
  result = qword_27C7C5170;
  if (!qword_27C7C5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5170);
  }

  return result;
}

SeymourMedia::MarketingSubscriptionStatus_optional __swiftcall MarketingSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C5A0D9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MarketingSubscriptionStatus.rawValue.getter()
{
  v1 = 0x7263736275736E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_20C4EB79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7263736275736E75;
  v4 = 0xEC00000064656269;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6269726373627573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0x7263736275736E75;
  v8 = 0xEC00000064656269;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6269726373627573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C5A0E9C();
  }

  return v11 & 1;
}

unint64_t sub_20C4EB8B4()
{
  result = qword_27C7C5178;
  if (!qword_27C7C5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5178);
  }

  return result;
}

uint64_t sub_20C4EB908()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

double sub_20C4EB9B8(uint64_t a1)
{
  sub_20C5A049C();

  return result;
}

uint64_t sub_20C4EBA54(uint64_t a1)
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

void sub_20C4EBB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xEC00000064656269;
  v5 = 0x7263736275736E75;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6269726373627573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MarketingArtworkPosition.hashValue.getter()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](0);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4EBBF0()
{
  result = qword_27C7C5180;
  if (!qword_27C7C5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5180);
  }

  return result;
}

void *sub_20C4EBC58(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_20C5A0B3C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20C4AB4DC(v3, 0);
  sub_20C4ED2D4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t MarketingOfferTemplate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  MEMORY[0x20F2FF470](2);

  return sub_20C4976B4(a1, v3);
}

uint64_t MarketingOfferTemplate.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x20F2FF470](v2);
      return sub_20C5A0FFC();
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(v4, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4EBE54()
{
  v1 = *v0;
  sub_20C5A0FBC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x20F2FF470](v2);
      return sub_20C5A0FFC();
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(v4, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4EBF00(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x20F2FF470](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x20F2FF470](v4);
    }
  }

  MEMORY[0x20F2FF470](2);

  return sub_20C4976B4(a1, v3);
}