uint64_t sub_1D930652C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v187 = a1;
  v181 = a2;
  v177 = sub_1D9326BE4();
  v173 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v180 = &v161 - v5;
  v175 = sub_1D9327DB4();
  v174 = *(v175 - 8);
  v6 = MEMORY[0x1EEE9AC00](v175);
  v8 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v162 = &v161 - v9;
  v167 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D93271E4();
  v183 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v166 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v172 = &v161 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v179 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v163 = &v161 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v165 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v161 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v188 = &v161 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v164 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v170 = &v161 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v171 = &v161 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v169 = &v161 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v206 = &v161 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v161 - v36;
  v38 = sub_1D9327D64();
  v199 = *(v38 - 8);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v182 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v161 - v41;
  v43 = *(*v2 + 152);
  v186 = v2;
  v184 = v43;
  v44 = *(v2 + v43);
  if (!v44)
  {
    goto LABEL_9;
  }

  BSDispatchQueueAssertMain();
  v45 = *(v44 + 32);

  if (v45)
  {
    v44 = sub_1D9326A24();
  }

  else
  {
    v44 = 0;
  }

  if (*(v186 + v184))
  {

    v46 = sub_1D92C6A40();

    v198 = v46;
    if (v46)
    {
      v44 = 0;
    }
  }

  else
  {
LABEL_9:
    v198 = 0;
  }

  v185 = v44;
  v47 = sub_1D9327D74();
  v48 = *(v47 + 16);
  v197 = v11;
  if (v48)
  {
    v216 = MEMORY[0x1E69E7CC0];
    v49 = v47;
    sub_1D93094F0(0, v48, 0);
    result = v49;
    v51 = 0;
    v192 = result + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v52 = v216;
    v191 = v199 + 16;
    v205 = (v183 + 48);
    v190 = (v183 + 8);
    v189 = (v199 + 8);
    v196 = v8;
    v195 = v37;
    v194 = result;
    v193 = v48;
    while (1)
    {
      if (v51 >= *(result + 16))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v207 = v52;
      (*(v199 + 16))(v42, v192 + *(v199 + 72) * v51, v38);
      v53 = sub_1D9327D44();
      v203 = v54;
      v204 = v53;
      sub_1D9327D24();
      v55 = *v205;
      if ((*v205)(v37, 1, v11) == 1)
      {
        sub_1D92933A0(v37, &qword_1ECAFCBD8, &qword_1D932E920);
        v202 = 0;
        if (v198)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v56 = sub_1D93270E4();
        v57 = v188;
        (*(*(v56 - 8) + 56))(v188, 1, 1, v56);
        v202 = sub_1D93271A4();
        sub_1D92933A0(v57, &qword_1ECAFCE68, &qword_1D932F470);
        (*v190)(v37, v11);
        if (v198)
        {
          goto LABEL_18;
        }
      }

      sub_1D9327D34();
      if ((v58 & 1) == 0)
      {
        v201 = sub_1D9327434();
        goto LABEL_20;
      }

LABEL_18:
      v201 = 0;
LABEL_20:
      v59 = sub_1D9327D54();
      v200 = v60;
      v61 = sub_1D9327D14();
      v63 = v62;
      v64 = v206;
      sub_1D9327D24();
      if (v55(v64, 1, v11) == 1)
      {
        sub_1D92933A0(v64, &qword_1ECAFCBD8, &qword_1D932E920);
        v65 = 0;
      }

      else
      {
        v65 = sub_1D9327174();
        (*v190)(v206, v11);
      }

      (*v189)(v42, v38);
      v52 = v207;
      v216 = v207;
      v67 = *(v207 + 16);
      v66 = *(v207 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D93094F0((v66 > 1), v67 + 1, 1);
        v52 = v216;
      }

      ++v51;
      *(v52 + 16) = v67 + 1;
      v68 = (v52 + 72 * v67);
      v69 = v203;
      v68[4] = v204;
      v68[5] = v69;
      v70 = v201;
      v68[6] = v202;
      v68[7] = v65;
      v68[8] = v70;
      v68[9] = v59;
      v68[10] = v200;
      v68[11] = v61;
      v68[12] = v63;
      v11 = v197;
      v8 = v196;
      v37 = v195;
      result = v194;
      if (v193 == v51)
      {
        v207 = v52;

        goto LABEL_28;
      }
    }
  }

  v207 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v71 = v187;
  v72 = *(sub_1D9327D74() + 16);

  if (v185 < v72)
  {
    v73 = v185;
    result = sub_1D9327D74();
    if ((v73 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    if (v73 >= *(result + 16))
    {
LABEL_68:
      __break(1u);
      return result;
    }

    (*(v199 + 16))(v182, result + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v73, v38);

    if (v198)
    {
      v206 = 0;
      v74 = v183;
      v75 = v170;
      v76 = v169;
    }

    else
    {
      sub_1D9327D34();
      v74 = v183;
      v75 = v170;
      v76 = v169;
      if (v94)
      {
        v206 = 0;
      }

      else
      {
        v206 = sub_1D9327434();
      }
    }

    sub_1D9327D24();
    v95 = v74;
    v96 = *(v74 + 48);
    v97 = v96(v76, 1, v11);
    v161 = v38;
    if (v97 == 1)
    {
      sub_1D92933A0(v76, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D9327DA4();
      if (v96(v75, 1, v11) == 1)
      {
        sub_1D92933A0(v75, &qword_1ECAFCBD8, &qword_1D932E920);
        v98 = v162;
        sub_1D9327CF4();
        v99 = MEMORY[0x1DA72E290](v71, v98);
        (*(v174 + 8))(v98, v175);
        if ((v99 & 1) != 0 && *(v186 + v184))
        {
          swift_beginAccess();

          v100 = sub_1D93276C4();

          if (v100)
          {
            v101 = sub_1D93277C4();

            if (v101)
            {
              v102 = v178;
              sub_1D92F06E8(v178);
              v103 = type metadata accessor for ControlIconView(0);
              (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
LABEL_56:
              v141 = sub_1D9327D04();
              v143 = v142;
              sub_1D92973DC(v102, v179, &qword_1ECAFCA50, &unk_1D932DF60);
              v144 = sub_1D9327D94();
              v146 = v145;
              v147 = sub_1D9327CC4();
              sub_1D9327CB4();
              if (*(v186 + v184))
              {

                LODWORD(v204) = sub_1D92C6A40();
              }

              else
              {
                LODWORD(v204) = 0;
              }

              v148 = sub_1D9327D84();
              v149 = *(v186 + v184);
              LODWORD(v205) = v147;
              LODWORD(v203) = v148;
              if (v149)
              {
                swift_beginAccess();

                v150 = sub_1D93276C4();

                if (v150)
                {
                  v151 = sub_1D93277C4();
                }

                else
                {
                  v151 = 0;
                }

                v152 = v144;
              }

              else
              {
                v152 = v144;
                v151 = 0;
              }

              v153 = sub_1D9327CD4();
              v155 = v154;

              sub_1D92933A0(v178, &qword_1ECAFCA50, &unk_1D932DF60);
              (*(v199 + 8))(v182, v161);
              v156 = v181;
              *v181 = v185;
              v156[1] = v141;
              v157 = v207;
              v156[2] = v143;
              v156[3] = v157;
              v158 = type metadata accessor for ControlInstancePicker.ViewModel(0);
              sub_1D9297374(v179, v156 + v158[7], &qword_1ECAFCA50, &unk_1D932DF60);
              v159 = (v156 + v158[8]);
              *v159 = v152;
              v159[1] = v146;
              *(v156 + v158[9]) = v205 & 1;
              sub_1D9297374(v180, v156 + v158[10], &qword_1ECAFD1A8, &qword_1D932FC48);
              *(v156 + v158[11]) = v204 & 1;
              *(v156 + v158[12]) = v203 & 1;
              *(v156 + v158[13]) = v151 & 1;
              v160 = (v156 + v158[14]);
              *v160 = v153;
              v160[1] = v155;
              return (*(*(v158 - 1) + 56))(v156, 0, 1, v158);
            }
          }

          else
          {
          }
        }

        v140 = type metadata accessor for ControlIconView(0);
        v102 = v178;
        (*(*(v140 - 8) + 56))(v178, 1, 1, v140);
        goto LABEL_56;
      }

      v121 = v183;
      v122 = v166;
      (*(v183 + 32))(v166, v75, v11);
      v123 = v164;
      (*(v121 + 16))(v164, v122, v11);
      (*(v121 + 56))(v123, 0, 1, v11);
      v124 = 0;
      if ((v198 & 1) == 0)
      {
        sub_1D9327D34();
        v124 = v125 ^ 1;
      }

      LOBYTE(v213) = v124 & 1;
      sub_1D9327544();
      v126 = v216;
      v127 = v217;
      v128 = v218;
      v129 = v164;
      v130 = v168;
      sub_1D92973DC(v164, v168, &qword_1ECAFCBD8, &qword_1D932E920);
      swift_storeEnumTagMultiPayload();
      v113 = type metadata accessor for ControlIconView(0);
      v131 = v113[7];
      v115 = v163;
      v163[v113[10]] = 1;
      v132 = v113[11];
      v133 = sub_1D9326E44();
      (*(*(v133 - 8) + 56))(v115 + v132, 1, 1, v133);
      v134 = v115 + v113[12];
      *v134 = swift_getKeyPath();
      *(v134 + 8) = 0;
      sub_1D92970C4(v130, v115, type metadata accessor for ControlIconView.Mode);
      *(v115 + v113[5]) = 0;
      *(v115 + v113[6]) = 1;
      *(v115 + v131) = v206;
      v135 = v115 + v113[8];
      *v135 = v126;
      *(v135 + 8) = v127;
      *(v135 + 16) = v128;
      v210 = v126;
      v211 = v127;
      v212 = v128;

      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v209, v136);
      v208 = v209;
      sub_1D9327544();
      sub_1D930A65C(v130, type metadata accessor for ControlIconView.Mode);
      sub_1D92933A0(v129, &qword_1ECAFCBD8, &qword_1D932E920);
      (*(v183 + 8))(v166, v197);
    }

    else
    {
      v104 = v172;
      (*(v95 + 32))(v172, v76, v11);
      v105 = v171;
      (*(v95 + 16))(v171, v104, v11);
      (*(v95 + 56))(v105, 0, 1, v11);
      v106 = 0;
      if ((v198 & 1) == 0)
      {
        sub_1D9327D34();
        v106 = v107 ^ 1;
      }

      LOBYTE(v213) = v106 & 1;
      sub_1D9327544();
      v108 = v216;
      v109 = v217;
      v110 = v218;
      v111 = v171;
      v112 = v168;
      sub_1D92973DC(v171, v168, &qword_1ECAFCBD8, &qword_1D932E920);
      swift_storeEnumTagMultiPayload();
      v113 = type metadata accessor for ControlIconView(0);
      v114 = v113[7];
      v115 = v165;
      v165[v113[10]] = 1;
      v116 = v113[11];
      v117 = sub_1D9326E44();
      (*(*(v117 - 8) + 56))(v115 + v116, 1, 1, v117);
      v118 = v115 + v113[12];
      *v118 = swift_getKeyPath();
      *(v118 + 8) = 0;
      sub_1D92970C4(v112, v115, type metadata accessor for ControlIconView.Mode);
      *(v115 + v113[5]) = 0;
      *(v115 + v113[6]) = 1;
      *(v115 + v114) = v206;
      v119 = v115 + v113[8];
      *v119 = v108;
      *(v119 + 8) = v109;
      *(v119 + 16) = v110;
      v210 = v108;
      v211 = v109;
      v212 = v110;

      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v209, v120);
      v208 = v209;
      sub_1D9327544();
      sub_1D930A65C(v112, type metadata accessor for ControlIconView.Mode);
      sub_1D92933A0(v111, &qword_1ECAFCBD8, &qword_1D932E920);
      (*(v183 + 8))(v172, v197);
    }

    v137 = v214;
    v138 = v215;
    v139 = v115 + v113[9];
    *v139 = v213;
    *(v139 + 8) = v137;
    *(v139 + 16) = v138;
    (*(*(v113 - 1) + 56))(v115, 0, 1, v113);
    v102 = v178;
    sub_1D9297374(v115, v178, &qword_1ECAFCA50, &unk_1D932DF60);
    goto LABEL_56;
  }

  v77 = v186;
  v78 = v173;
  v79 = v176;
  v80 = v177;
  (*(v173 + 16))(v176, v77 + *(*v77 + 176), v177);
  v81 = v174;
  v82 = v175;
  (*(v174 + 16))(v8, v71, v175);

  v83 = sub_1D9326BC4();
  v84 = sub_1D9328214();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = v78;
    v87 = swift_slowAlloc();
    v216 = v87;
    *v85 = 136446722;
    v88 = (v77 + *(*v77 + 184));
    v89 = *v88;
    v90 = v88[1];

    v91 = sub_1D9293524(v89, v90, &v216);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2050;
    *(v85 + 14) = v185;
    *(v85 + 22) = 2050;
    v92 = *(sub_1D9327D74() + 16);

    (*(v81 + 8))(v8, v82);
    *(v85 + 24) = v92;
    _os_log_impl(&dword_1D928E000, v83, v84, "[%{public}s] State and picker option mismatch.  State=%{public}ld, picker option count: %{public}ld", v85, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    MEMORY[0x1DA72F920](v87, -1, -1);
    MEMORY[0x1DA72F920](v85, -1, -1);

    (*(v86 + 8))(v176, v177);
  }

  else
  {
    (*(v81 + 8))(v8, v82);

    (*(v78 + 8))(v79, v80);
  }

  v93 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  return (*(*(v93 - 8) + 56))(v181, 1, 1, v93);
}

uint64_t sub_1D9307C64()
{
  v1[2] = v0;
  v2 = sub_1D9326BE4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1D93280A4();
  v1[6] = sub_1D9328094();
  v4 = sub_1D9328064();

  return MEMORY[0x1EEE6DFA0](sub_1D9307D58, v4, v3);
}

uint64_t sub_1D9307D58()
{
  v21 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  BSDispatchQueueAssertMain();
  (*(v3 + 16))(v1, v4 + *(*v4 + 176), v2);

  v5 = sub_1D9326BC4();
  v6 = sub_1D9328214();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v14 = (v11 + *(*v11 + 184));
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_1D9293524(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D928E000, v5, v6, "[%{public}s] Attempted to perform action on a picker, but a picker action is no-op.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72F920](v13, -1, -1);
    MEMORY[0x1DA72F920](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D9307F38(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1D9326BE4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for SetControlStateRequest(0);
  v2[25] = swift_task_alloc();
  v4 = sub_1D9327A94();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1D93280A4();
  v2[30] = sub_1D9328094();
  v6 = sub_1D9328064();
  v2[31] = v6;
  v2[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D93080D0, v6, v5);
}

uint64_t sub_1D93080D0(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v3 = v2[19];
  BSDispatchQueueAssertMain();
  v4 = *v3;
  v5 = *(*v3 + 168);
  v2[33] = v5;
  v6 = *(v3 + v5);
  v2[34] = v6;
  if (v6)
  {
    v7 = *(v2[19] + *(v4 + 120));
    v2[35] = v7;

    v8 = [v7 control];
    v9 = [v8 intentReference];
    v2[36] = v9;

    if (v9)
    {
      v10 = v9;
      sub_1D9327A44();
      v11 = swift_task_alloc();
      v2[37] = v11;
      *v11 = v2;
      v11[1] = sub_1D9308478;
      v12 = v2[29];

      return sub_1D9303C6C(v12);
    }

    else
    {
      v16 = *(v2[19] + *(*v2[19] + 152));
      if (v16 && (, BSDispatchQueueAssertMain(), v17 = *(v16 + 32), , , v17))
      {
        v18 = sub_1D93269F4();
      }

      else
      {
        sub_1D9326A34();
        v18 = sub_1D9326A04();
      }

      v2[39] = v18;
      if (*(v2[19] + v2[33]))
      {

        sub_1D92D3994((v2 + 2));
        if (v2[5])
        {
          sub_1D929CF00((v2 + 2), (v2 + 12));
          sub_1D92933A0((v2 + 2), &qword_1ECAFC858, &unk_1D932FC60);
          __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
          sub_1D9327AB4();
          __swift_destroy_boxed_opaque_existential_1Tm(v2 + 12);
        }

        else
        {
          sub_1D92933A0((v2 + 2), &qword_1ECAFC858, &unk_1D932FC60);
          memset(v19, 0, sizeof(v19));
          v20 = 0;
        }

        sub_1D92D3B80(v19);
      }

      sub_1D9305CE0();
      sub_1D9327A34();

      return MEMORY[0x1EEE6DFA0](sub_1D930879C, 0, 0);
    }
  }

  else
  {

    sub_1D92F0450();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();

    v15 = v2[1];

    return v15();
  }
}

uint64_t sub_1D9308478()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_1D9309118;
  }

  else
  {
    v5 = sub_1D93085B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D93085B4()
{
  v10 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);
  v4 = *(*(v0 + 152) + *(**(v0 + 152) + 152));
  if (v4 && (, BSDispatchQueueAssertMain(), v5 = *(v4 + 32), , , v5))
  {
    v6 = sub_1D93269F4();
  }

  else
  {
    sub_1D9326A34();
    v6 = sub_1D9326A04();
  }

  *(v0 + 312) = v6;
  if (*(*(v0 + 152) + *(v0 + 264)))
  {

    sub_1D92D3994(v0 + 16);
    if (*(v0 + 40))
    {
      sub_1D929CF00(v0 + 16, v0 + 96);
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      memset(v8, 0, sizeof(v8));
      v9 = 0;
    }

    sub_1D92D3B80(v8);
  }

  sub_1D9305CE0();
  sub_1D9327A34();

  return MEMORY[0x1EEE6DFA0](sub_1D930879C, 0, 0);
}

uint64_t sub_1D930879C()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[25];
  v4 = v0[24];
  v5 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  (*(v0[27] + 16))(&v3[*(v4 + 20)], v0[28], v0[26]);
  *v3 = v5;
  *&v3[*(v4 + 24)] = v1;
  sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = *(v7 + 72);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_1D9308948;
  v10 = v0[25];

  return v12(v10, v6, v7);
}

uint64_t sub_1D9308948()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1D9308DF8;
  }

  else
  {
    v2 = sub_1D9308A5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9308A5C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1D930A65C(v0[25], type metadata accessor for SetControlStateRequest);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_1D9308B00, v4, v5);
}

uint64_t sub_1D9308B00()
{
  v27 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];

  (*(v3 + 16))(v1, v4 + *(*v4 + 176), v2);

  v5 = sub_1D9326BC4();
  v6 = sub_1D93281F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[39];
    v8 = v0[21];
    v24 = v0[20];
    v25 = v0[23];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446466;
    v12 = (v9 + *(*v9 + 184));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1D9293524(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v0[17] = v7;
    sub_1D9326A34();
    sub_1D9309FF0(&qword_1ECAFC780, MEMORY[0x1E6994010], MEMORY[0x1E6994038]);
    v16 = sub_1D9328614();
    v18 = sub_1D9293524(v16, v17, &v26);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1D928E000, v5, v6, "[%{public}s] Control set state succeeded (new state %{public}s)", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v11, -1, -1);
    MEMORY[0x1DA72F920](v10, -1, -1);

    (*(v8 + 8))(v25, v24);
  }

  else
  {
    v19 = v0[23];
    v20 = v0[20];
    v21 = v0[21];

    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D9308DF8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1D930A65C(v0[25], type metadata accessor for SetControlStateRequest);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_1D9308E9C, v4, v5);
}

uint64_t sub_1D9308E9C()
{
  v1 = v0[41];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  (*(v3 + 16))(v2, v5 + *(*v5 + 176), v4);

  v6 = v1;
  v7 = sub_1D9326BC4();
  v8 = sub_1D9328214();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[41];
  if (v9)
  {
    v11 = v0[35];
    v12 = v0[21];
    v24 = v0[22];
    v13 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543618;
    v16 = [v11 control];
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2114;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}@] Control action failed: %{public}@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v15, -1, -1);
    MEMORY[0x1DA72F920](v14, -1, -1);

    (*(v12 + 8))(v24, v13);
  }

  else
  {
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];

    (*(v20 + 8))(v19, v21);
  }

  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D9309118()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t ControlInstancePicker.__allocating_init(instanceIdentity:client:)(void *a1, void *a2)
{
  swift_allocObject();
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E1390(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstancePicker.init(instanceIdentity:client:)(void *a1, void *a2)
{
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E1390(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstancePicker.__deallocating_deinit()
{
  _s16ChronoUIServices21ControlInstancePickerCfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9309318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D92D9CEC;

  return sub_1D9307C64();
}

uint64_t sub_1D93093A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92DA198;

  return sub_1D9307F38(v2);
}

uint64_t sub_1D9309444(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1D930947C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_1D93094F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9309510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9309510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1E0, &qword_1D932FE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL _s16ChronoUIServices21ControlInstancePickerC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v26 = a2[7];
    v27 = a2[8];
    v28 = a1[8];
    v29 = a1[7];
    if ((*a1 != *a2 || v3 != v9) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = a2[7];
    v27 = a2[8];
    v28 = a1[8];
    v29 = a1[7];
    if (v9)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v10)
    {
      return 0;
    }

    v15 = sub_1D9327484();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v12)
    {
      return 0;
    }

    sub_1D9296448(0, &qword_1EDE3B230, 0x1E69DCAB8);
    v16 = v12;
    v17 = v5;
    v18 = sub_1D9328314();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v19 = sub_1D9327364();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v8)
  {
    v21 = v28;
    v20 = v29;
    v22 = v26;
    v23 = v27;
    if (!v13)
    {
      return 0;
    }

    if (v7 != v14 || v8 != v13)
    {
      v24 = sub_1D9328654();
      v22 = v26;
      v23 = v27;
      v21 = v28;
      v20 = v29;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v21 = v28;
    v20 = v29;
    v22 = v26;
    v23 = v27;
    if (v13)
    {
      return 0;
    }
  }

  if (v21)
  {
    return v23 && (v20 == v22 && v21 == v23 || (sub_1D9328654() & 1) != 0);
  }

  return !v23;
}

uint64_t _s16ChronoUIServices21ControlInstancePickerC9ViewModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9326814();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD200, &qword_1D9330960);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v54 - v9;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = a1[2];
  v21 = a2[2];
  if (v20)
  {
    if (!v21 || (a1[1] != a2[1] || v20 != v21) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if ((sub_1D9305AF8(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v54 = v4;
  v55 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v22 = *(v55 + 28);
  v23 = *(v17 + 48);
  sub_1D92973DC(a1 + v22, v19, &qword_1ECAFCA50, &unk_1D932DF60);
  v24 = a2 + v22;
  v25 = v23;
  sub_1D92973DC(v24, &v19[v23], &qword_1ECAFCA50, &unk_1D932DF60);
  v26 = *(v11 + 48);
  if (v26(v19, 1, v10) == 1)
  {
    if (v26(&v19[v25], 1, v10) == 1)
    {
      sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
      goto LABEL_20;
    }

LABEL_15:
    v27 = &qword_1ECAFD208;
    v28 = &unk_1D932FED0;
    v29 = v19;
LABEL_16:
    sub_1D92933A0(v29, v27, v28);
    return 0;
  }

  sub_1D92973DC(v19, v16, &qword_1ECAFCA50, &unk_1D932DF60);
  if (v26(&v19[v25], 1, v10) == 1)
  {
    sub_1D930A65C(v16, type metadata accessor for ControlIconView);
    goto LABEL_15;
  }

  sub_1D930ABC8(&v19[v25], v13, type metadata accessor for ControlIconView);
  v31 = static ControlIconView.== infix(_:_:)(v16, v13);
  sub_1D930A65C(v13, type metadata accessor for ControlIconView);
  sub_1D930A65C(v16, type metadata accessor for ControlIconView);
  sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v32 = v55;
  v33 = *(v55 + 32);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    v38 = v59;
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v38 = v59;
    if (v37)
    {
      return 0;
    }
  }

  if (*(a1 + v32[9]) != *(a2 + v32[9]))
  {
    return 0;
  }

  v39 = v32[10];
  v40 = *(v8 + 48);
  v41 = v57;
  sub_1D92973DC(a1 + v39, v57, &qword_1ECAFD1A8, &qword_1D932FC48);
  sub_1D92973DC(a2 + v39, v41 + v40, &qword_1ECAFD1A8, &qword_1D932FC48);
  v42 = v58;
  v43 = *(v58 + 48);
  v44 = v54;
  if (v43(v41, 1, v54) != 1)
  {
    sub_1D92973DC(v41, v38, &qword_1ECAFD1A8, &qword_1D932FC48);
    if (v43(v41 + v40, 1, v44) != 1)
    {
      v45 = v41 + v40;
      v46 = v56;
      (*(v42 + 32))(v56, v45, v44);
      sub_1D9309FF0(&qword_1ECAFD210, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v47 = sub_1D9327F64();
      v48 = *(v42 + 8);
      v48(v46, v44);
      v48(v38, v44);
      sub_1D92933A0(v41, &qword_1ECAFD1A8, &qword_1D932FC48);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

    (*(v42 + 8))(v38, v44);
    goto LABEL_33;
  }

  if (v43(v41 + v40, 1, v44) != 1)
  {
LABEL_33:
    v27 = &qword_1ECAFD200;
    v28 = &qword_1D9330960;
    v29 = v41;
    goto LABEL_16;
  }

  sub_1D92933A0(v41, &qword_1ECAFD1A8, &qword_1D932FC48);
LABEL_35:
  if (*(a1 + v32[11]) == *(a2 + v32[11]) && *(a1 + v32[12]) == *(a2 + v32[12]) && *(a1 + v32[13]) == *(a2 + v32[13]))
  {
    v49 = v32[14];
    v50 = (a1 + v49);
    v51 = *(a1 + v49 + 8);
    v52 = (a2 + v49);
    v53 = v52[1];
    if (v51)
    {
      if (v53 && (*v50 == *v52 && v51 == v53 || (sub_1D9328654() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v53)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9309F98(uint64_t a1)
{
  result = sub_1D9309FF0(&qword_1ECAFD1B0, type metadata accessor for ControlInstancePicker.ViewModel, &protocol conformance descriptor for ControlInstancePicker.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D9309FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ControlInstancePicker.performAction()()
{
  v4 = (*(*v0 + 672) + **(*v0 + 672));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D92D9CEC;

  return v4();
}

uint64_t dispatch thunk of ControlInstancePicker.setState(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 680) + **(*v1 + 680));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D92DA198;

  return v6(a1);
}

void sub_1D930A358(uint64_t a1)
{
  sub_1D930A4C4(319, &qword_1EDE3DA78, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D930A4C4(319, &qword_1ECAFD1D8, &type metadata for ControlInstancePicker.ViewModel.Option, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D930A514(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
      if (v3 <= 0x3F)
      {
        sub_1D930A514(319, &qword_1EDE3BAE0, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D930A4C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D930A514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D930A58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D930A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D930A65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D930A728()
{
  result = qword_1EDE3BC58;
  if (!qword_1EDE3BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BC58);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D930AB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D930ABC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D930AC80()
{
  v0 = sub_1D9327774();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_1D93276B4();

  v4 = sub_1D9327764();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D930ADC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D9293400(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D92934B4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1D930AE80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  return sub_1D9293400(v1 + v3, a1);
}

uint64_t sub_1D930AED8()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D930AF1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t ControlArchiveEntry.__allocating_init(entry:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  v4 = sub_1D9326884();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
  *(v2 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = a1;
  return v2;
}

uint64_t ControlArchiveEntry.init(entry:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  v4 = sub_1D9326884();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = a1;
  return v1;
}

uint64_t sub_1D930B128()
{
  v1 = v0;
  v2 = sub_1D9326884();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D9328444();
  v28 = v26;
  v29 = v27;
  MEMORY[0x1DA72E570](60, 0xE100000000000000);
  v9 = sub_1D93287C4();
  MEMORY[0x1DA72E570](v9);

  MEMORY[0x1DA72E570](8250, 0xE200000000000000);
  swift_beginAccess();

  v10 = sub_1D93276C4();

  if (v10)
  {

    v11 = 0xEB00000000657669;
    v12 = 0x6863726120736168;
  }

  else
  {
    v11 = 0xEA00000000006576;
    v12 = 0x6968637261206F6ELL;
  }

  MEMORY[0x1DA72E570](v12, v11);

  MEMORY[0x1DA72E570](0xD00000000000001DLL, 0x80000001D93379F0);
  v13 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + v13))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v14, v15);

  MEMORY[0x1DA72E570](0xD00000000000001BLL, 0x80000001D9337A10);
  v16 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D9293400(v1 + v16, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D930B524(v8);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1D930B524(v8);
    if (qword_1ECAFC3D0 != -1)
    {
      swift_once();
    }

    v19 = qword_1ECAFCAE8;
    v20 = sub_1D9326844();
    v21 = [v19 stringFromDate_];

    v22 = sub_1D9327F84();
    v17 = v23;

    (*(v3 + 8))(v5, v2);
    v18 = v22;
  }

  MEMORY[0x1DA72E570](v18, v17);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return v28;
}

uint64_t sub_1D930B524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlArchiveEntry.deinit()
{
  sub_1D930B524(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate);

  return v0;
}

uint64_t ControlArchiveEntry.__deallocating_deinit()
{
  sub_1D930B524(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ControlArchiveEntry(uint64_t a1)
{
  result = qword_1EDE3CFA0;
  if (!qword_1EDE3CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D930B6D0(uint64_t a1)
{
  sub_1D930B894(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D930B894(uint64_t a1)
{
  if (!qword_1EDE3DA60)
  {
    sub_1D9326884();
    v1 = sub_1D9328374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE3DA60);
    }
  }
}

uint64_t sub_1D930B8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D92F79F8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D9327774();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D9293100(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D92F7FA8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D9327774();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1D930E9AC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D9327774();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1D930BAAC()
{
  if (*(v0 + 16))
  {

    sub_1D93276F4();
  }

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1D930BB40()
{
  if (*(*v0 + 16))
  {

    sub_1D93276F4();
  }
}

uint64_t sub_1D930BB94(unint64_t *a1, uint64_t a2)
{
  v57 = sub_1D9327614();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D9327654();
  v5 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_1D9327774();
  v58 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (v15 >> 62)
    {
      result = sub_1D9328544();
      v18 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_4:
        if (v18 < 1)
        {
          __break(1u);
          return result;
        }

        v64 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
        v49 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue;
        v63 = v15 & 0xC000000000000001;
        swift_beginAccess();
        v19 = 0;
        v48 = v58 + 16;
        v47 = v58 + 32;
        v46 = v68;
        v45 = (v3 + 8);
        v44 = (v5 + 8);
        v62 = (v58 + 8);
        v51 = v14;
        v50 = v15;
        v61 = v17;
        v65 = v18;
        v43 = v9;
        do
        {
          if (v63)
          {
            v20 = MEMORY[0x1DA72EA00](v19, v15);
          }

          else
          {
            v20 = *(v15 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
          (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
          v23 = v21;
          sub_1D9327754();
          v24 = *(v17 + v64);
          v25 = *(v24 + 16);

          os_unfair_lock_lock(v25);
          if (*(*(v17 + 16) + 16))
          {

            sub_1D9293100(v14);
            v27 = v26;

            if (v27)
            {
              v28 = *(v17 + v49);
              v29 = v58;
              v30 = v52;
              (*(v58 + 16))(v52, v14, v10);
              v31 = (*(v29 + 80) + 24) & ~*(v29 + 80);
              v32 = swift_allocObject();
              *(v32 + 16) = v61;
              (*(v29 + 32))(v32 + v31, v30, v10);
              v68[2] = sub_1D9290DF4;
              v68[3] = v32;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              v68[0] = sub_1D9290DB0;
              v68[1] = &block_descriptor_61;
              v60 = _Block_copy(aBlock);
              v59 = v28;

              v33 = v54;
              sub_1D9327634();
              v66 = MEMORY[0x1E69E7CC0];
              sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
              sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0, MEMORY[0x1E69E6328]);
              v34 = v56;
              v35 = v10;
              v36 = v57;
              v14 = v51;
              sub_1D93283C4();
              v37 = v60;
              v38 = v59;
              MEMORY[0x1DA72E860](0, v33, v34, v60);
              _Block_release(v37);

              v39 = v34;
              v9 = v43;
              v40 = v36;
              v10 = v35;
              v15 = v50;
              (*v45)(v39, v40);
              v41 = v33;
              v17 = v61;
              (*v44)(v41, v55);
            }
          }

          ++v19;
          os_unfair_lock_unlock(*(v24 + 16));

          (*v62)(v14, v10);
        }

        while (v65 != v19);
      }
    }
  }

  return result;
}

uint64_t sub_1D930C294@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD230, &qword_1D93300C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v84 - v6;
  v8 = sub_1D9327B64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v87 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v84 - v16;
  v18 = sub_1D9327774();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v84 - v23;
  v90 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v84 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  v28 = a1;
  sub_1D9327754();
  swift_beginAccess();
  v29 = *(a2 + 16);
  v30 = *(v29 + 16);
  v99 = v18;
  v100 = v26;
  if (!v30)
  {
LABEL_5:
    v95 = v8;
    v92 = v19;
    v97 = a2;
    v34 = (a2 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
    sub_1D929CF00(a2 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider, v103);
    __swift_project_boxed_opaque_existential_1(v103, v103[3]);
    v35 = sub_1D9327764();
    v36 = [v35 extensionIdentity];

    v37 = v98;
    sub_1D9327904();
    v94 = v9;
    if (v37)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      v38 = v95;
      (*(v9 + 56))(v7, 1, 1, v95);
    }

    else
    {

      v38 = v95;
      (*(v9 + 56))(v7, 0, 1, v95);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      if ((*(v9 + 48))(v7, 1, v38) != 1)
      {
        v98 = 0;
        (*(v9 + 32))(v96, v7, v38);
        v46 = v92;
        v45 = v100;
LABEL_11:
        __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory), *(v97 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory + 24));
        v47 = sub_1D9327764();
        v48 = [v47 extensionIdentity];

        sub_1D93278E4();
        sub_1D93276E4();
        v49 = *(v46 + 16);
        v84 = v46 + 16;
        v85 = v49;
        (v49)(v93, v45, v99);
        sub_1D929CF00(v103, v102);
        v50 = v94;
        v51 = v87;
        v52 = v95;
        (*(v94 + 16))(v87, v96, v95);
        v53 = sub_1D93276A4();
        type metadata accessor for ControlArchiveEntry(0);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        v54 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
        v55 = sub_1D9326884();
        (*(*(v55 - 8) + 56))(v33 + v54, 1, 1, v55);
        v56 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        *(v33 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
        *(v33 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
        *(v33 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = v53;
        swift_retain_n();

        sub_1D9327664();
        v86 = v53;

        __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v97 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
        v57 = v88;
        sub_1D93278D4();
        sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
        LOBYTE(v54) = sub_1D9327F44();
        v58 = *(v50 + 8);
        v58(v57, v52);
        v94 = v50 + 8;
        v88 = v58;
        v58(v51, v52);
        swift_beginAccess();
        *(v33 + v56) = v54 & 1;
        a2 = v97;
        v59 = v89;
        v60 = v99;
        v85(v89, v100);
        v61 = sub_1D9326BC4();
        v62 = sub_1D9328234();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v101[0] = v64;
          *v63 = 136446210;
          v65 = sub_1D9327744();
          v67 = v66;
          (*(v92 + 8))(v59, v60);
          v68 = sub_1D9293524(v65, v67, v101);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_1D928E000, v61, v62, "Adding entry: %{public}s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          v69 = v64;
          a2 = v97;
          MEMORY[0x1DA72F920](v69, -1, -1);
          MEMORY[0x1DA72F920](v63, -1, -1);

          v18 = v60;
          v19 = v92;
        }

        else
        {

          v19 = v92;
          (*(v92 + 8))(v59, v60);
          v18 = v60;
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = *(a2 + 16);
        *(a2 + 16) = 0x8000000000000000;
        v26 = v100;
        sub_1D92F79F8(v33, v100, isUniquelyReferenced_nonNull_native);
        *(a2 + 16) = v104;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        (v88)(v96, v95);
        goto LABEL_15;
      }
    }

    v39 = v34[3];
    v40 = __swift_project_boxed_opaque_existential_1(v34, v39);
    v41 = *(v39 - 8);
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v43);
    sub_1D93278F4();
    (*(v41 + 8))(v43, v39);
    v44 = (*(v9 + 48))(v7, 1, v38);
    v98 = 0;
    if (v44 != 1)
    {
      sub_1D92933A0(v7, &qword_1ECAFD230, &qword_1D93300C0);
    }

    v45 = v100;
    v46 = v92;
    goto LABEL_11;
  }

  v31 = sub_1D9293100(v26);
  if ((v32 & 1) == 0)
  {

    goto LABEL_5;
  }

  v33 = *(*(v29 + 56) + 8 * v31);
  swift_retain_n();

LABEL_15:
  sub_1D930D34C(v26);
  v71 = type metadata accessor for ControlArchiveEntryAssertion();
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  *(v72 + 24) = v33;
  sub_1D9327704();
  v73 = v93;
  (*(v19 + 16))(v93, v26, v18);
  v74 = v19;
  v75 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v76 = swift_allocObject();
  v76[2] = a2;
  v76[3] = v72;
  v76[4] = v33;
  v77 = v76 + v75;
  v78 = v99;
  (*(v74 + 32))(v77, v73, v99);
  swift_retain_n();

  *(v72 + 16) = sub_1D9327714();

  v79 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1DA72E5B0](v80);
  if (*((*(v33 + v79) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + v79) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D9328044();
    v78 = v99;
  }

  sub_1D9328054();
  swift_endAccess();

  v81 = v91;
  v91[3] = v71;
  v81[4] = sub_1D9290D18(&qword_1EDE3C170, v82, type metadata accessor for ControlArchiveEntryAssertion, &unk_1D9330090);

  *v81 = v72;
  return (*(v74 + 8))(v100, v78);
}

uint64_t sub_1D930CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 16);

  os_unfair_lock_lock(v9);
  sub_1D930D000(a3, v8, a1, a4);
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_1D930D000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v8 = sub_1D9327774();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1D930EF80((a1 + v14), a2);
  v38 = v4;

  v16 = *(a1 + v14);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    result = sub_1D9328544();
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v17 = sub_1D9328544();
  if (v17 < v15)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1D930F2F8(v15, v17);
  swift_endAccess();
  v18 = *(a1 + v14);
  if (v18 >> 62)
  {
    goto LABEL_12;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return result;
  }

LABEL_5:
  v20 = *(v9 + 16);
  v20(v13, v36, v8);
  v21 = sub_1D9326BC4();
  v22 = sub_1D9328234();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v20;
    v24 = v23;
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v24 = 136446210;
    v25 = sub_1D9327744();
    v34 = a3;
    v27 = v26;
    (*(v9 + 8))(v13, v8);
    v28 = sub_1D9293524(v25, v27, v37);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1D928E000, v21, v22, "Removing entry: %{public}s", v24, 0xCu);
    v29 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1DA72F920](v29, -1, -1);
    v30 = v24;
    v20 = v33;
    MEMORY[0x1DA72F920](v30, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v31 = v35;
  v20(v35, v36, v8);
  swift_beginAccess();
  sub_1D930B8EC(0, v31);
  return swift_endAccess();
}

uint64_t sub_1D930D34C(uint64_t a1)
{
  v19 = sub_1D9327614();
  v22 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9327654();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9327774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v9 + 32))(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1D9290DA8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = &block_descriptor_47;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  sub_1D9327634();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0, MEMORY[0x1E69E6328]);
  v16 = v19;
  sub_1D93283C4();
  MEMORY[0x1DA72E860](0, v7, v4, v14);
  _Block_release(v14);

  (*(v22 + 8))(v4, v16);
  (*(v20 + 8))(v7, v21);
}

uint64_t sub_1D930D6F8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *a8)
{
  v124 = a8;
  v123 = a7;
  v122 = a6;
  v121 = a5;
  v119 = a4;
  v120 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v102 - v12;
  v14 = sub_1D9327614();
  v116 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v114 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D9327654();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1D9327774();
  v117 = *(v118 - 8);
  v17 = *(v117 + 64);
  v18 = MEMORY[0x1EEE9AC00](v118);
  v111 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v125 = v102 - v19;
  v20 = sub_1D9327B64();
  v126 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v110 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = v102 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v102 - v25;
  result = swift_beginAccess();
  v28 = *(a1 + 16);
  if (*(v28 + 16))
  {

    v109 = a2;
    v29 = sub_1D9293100(a2);
    if (v30)
    {
      v104 = v14;
      v106 = v8;
      v31 = *(*(v28 + 56) + 8 * v29);

      v105 = a1;
      v32 = (a1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
      v33 = v20;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_1D93278D4();
      v34 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v35 = v31;

      v36 = v134;
      sub_1D9327664();

      sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      v107 = v26;
      v37 = sub_1D9327F44();
      v38 = *(v126 + 8);
      v39 = v36;
      v40 = (v126 + 8);
      v108 = v33;
      v38(v39, v33);
      v41 = v125;
      if ((v37 & 1) == 0)
      {
LABEL_6:
        swift_beginAccess();
        *(v35 + 16) = 1;
        v43 = v121;
        swift_beginAccess();
        LOBYTE(v43) = *v43;
        v44 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        swift_beginAccess();
        *(v35 + v44) = v43;
        sub_1D9293400(v122, v13);
        v45 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1D92934B4(v13, v35 + v45);
        swift_endAccess();
        swift_beginAccess();

        sub_1D9327674();

        sub_1D93276D4();

        return (v38)(v107, v108);
      }

      v42 = *(v105 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
      if (v120->isa)
      {
        if (v120->isa == v42)
        {
          goto LABEL_6;
        }
      }

      else if (!v42)
      {
        goto LABEL_6;
      }

      if (v119)
      {
        aBlock = 0;
        v128 = 0xE000000000000000;
        sub_1D9328444();
        MEMORY[0x1DA72E570](91, 0xE100000000000000);
        v46 = sub_1D9327744();
        MEMORY[0x1DA72E570](v46);

        v47 = v38;
        MEMORY[0x1DA72E570](0xD000000000000043, 0x80000001D9337D90);
        v48 = v35;

        v49 = v134;
        sub_1D9327664();

        sub_1D9290D18(&qword_1ECAFD240, 255, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v50 = v40;
        v51 = v108;
        v52 = sub_1D9328614();
        MEMORY[0x1DA72E570](v52);

        v134 = v50;
        v47(v49, v51);
        MEMORY[0x1DA72E570](0xD00000000000004CLL, 0x80000001D9337D40);
        v53 = v107;
        v54 = sub_1D9328614();
        MEMORY[0x1DA72E570](v54);

        MEMORY[0x1DA72E570](41, 0xE100000000000000);
        v56 = aBlock;
        v55 = v128;

        sub_1D93276D4();

        sub_1D9327674();

        v57 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        swift_beginAccess();
        *(v48 + v57) = 1;

        v58 = sub_1D9326BC4();
        v59 = sub_1D9328214();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v103 = v47;
          v62 = v61;
          v133 = v61;
          *v60 = 136446210;
          v63 = sub_1D9293524(v56, v55, &v133);

          *(v60 + 4) = v63;
          _os_log_impl(&dword_1D928E000, v58, v59, "%{public}s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          MEMORY[0x1DA72F920](v62, -1, -1);
          MEMORY[0x1DA72F920](v60, -1, -1);

          return v103(v53, v51);
        }

        else
        {

          return (v47)(v53, v51);
        }
      }

      else
      {
        v122 = v34;
        v64 = *(v117 + 16);
        v65 = v109;
        v124 = (v117 + 16);
        v123 = v64;
        (v64)(v125, v109, v118);
        v66 = v110;
        (*(v126 + 16))(v110, v107, v108);

        v67 = sub_1D9326BC4();
        v68 = sub_1D9328214();

        LODWORD(v126) = v68;
        v69 = os_log_type_enabled(v67, v68);
        v103 = v38;
        v102[1] = v35;
        if (v69)
        {
          v70 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          aBlock = v121;
          *v70 = 136446722;
          v120 = v67;
          v71 = sub_1D9327744();
          v73 = v72;
          (*(v117 + 8))(v41, v118);
          v74 = sub_1D9293524(v71, v73, &aBlock);

          *(v70 + 4) = v74;
          *(v70 + 12) = 2082;

          v75 = v66;
          v76 = v134;
          sub_1D9327664();

          sub_1D9290D18(&qword_1ECAFD240, 255, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
          v77 = v108;
          v78 = sub_1D9328614();
          v80 = v79;
          v81 = v76;
          v82 = v103;
          v103(v81, v77);
          v83 = sub_1D9293524(v78, v80, &aBlock);

          *(v70 + 14) = v83;
          *(v70 + 22) = 2082;
          v84 = sub_1D9328614();
          v86 = v85;
          v82(v75, v77);
          v87 = sub_1D9293524(v84, v86, &aBlock);
          v65 = v109;

          *(v70 + 24) = v87;
          v88 = v120;
          _os_log_impl(&dword_1D928E000, v120, v126, "[%{public}s] Content load was successful, but now the data protection level [%{public}s] does not allow loading the content at this time (system protection level: %{public}s.  Trying again with placeholder...", v70, 0x20u);
          v89 = v121;
          swift_arrayDestroy();
          MEMORY[0x1DA72F920](v89, -1, -1);
          MEMORY[0x1DA72F920](v70, -1, -1);

          v90 = v118;
          v91 = v117;
        }

        else
        {

          v38(v66, v108);
          v92 = v117;
          v90 = v118;
          (*(v117 + 8))(v41, v118);
          v91 = v92;
        }

        v93 = v105;
        v134 = *(v105 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue);
        v94 = v111;
        (v123)(v111, v65, v90);
        v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
        v96 = swift_allocObject();
        *(v96 + 16) = v93;
        (*(v91 + 32))(v96 + v95, v94, v90);
        v131 = sub_1D930E9A4;
        v132 = v96;
        aBlock = MEMORY[0x1E69E9820];
        v128 = 1107296256;
        v129 = sub_1D9290DB0;
        v130 = &block_descriptor_4;
        v97 = _Block_copy(&aBlock);
        v98 = v134;

        v99 = v112;
        sub_1D9327634();
        v133 = MEMORY[0x1E69E7CC0];
        sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
        sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0, MEMORY[0x1E69E6328]);
        v100 = v114;
        v101 = v104;
        sub_1D93283C4();
        MEMORY[0x1DA72E860](0, v99, v100, v97);
        _Block_release(v97);

        (*(v116 + 8))(v100, v101);
        (*(v113 + 8))(v99, v115);
        v103(v107, v108);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D930E660()
{

  v1 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel;
  v2 = sub_1D9327B64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger;
  v4 = sub_1D9326BE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory));
  return v0;
}

uint64_t sub_1D930E788()
{
  sub_1D930E660();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ControlArchiveServiceStore(uint64_t a1)
{
  result = qword_1EDE3C528;
  if (!qword_1EDE3C528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D930E834(uint64_t a1)
{
  result = sub_1D9327B64();
  if (v2 <= 0x3F)
  {
    result = sub_1D9326BE4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D930E94C(uint64_t a1, uint64_t a2)
{
  result = sub_1D9290D18(qword_1EDE3C178, a2, type metadata accessor for ControlArchiveEntryAssertion, &unk_1D9330068);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D930E9AC(int64_t a1, uint64_t a2)
{
  v40 = sub_1D9327774();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D93283D4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D9290D18(&qword_1EDE3BCE0, 255, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DD0]);
      v23 = sub_1D9327F14();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1D930ECD0()
{
  v1 = *(sub_1D9327774() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1D930CF24(v2, v3, v4, v5);
}

unint64_t sub_1D930ED38(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1D9328544();
    }

    result = sub_1D9328464();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D930EDF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D9328544();
  }

  return sub_1D9328464();
}

unint64_t sub_1D930EE58(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1D9328544();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA72EA00](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (v7 == Strong)
      {
        return v5;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1D930EF80(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_1D930EE58(*a1, a2);
  v9 = v7;
  if (v2)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1D9328544();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1D9328544())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA72EA00](v10, v6);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v12 != Strong))
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1DA72EA00](v9, v6);
          v14 = MEMORY[0x1DA72EA00](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v15)
          {
            goto LABEL_48;
          }

          if (v10 >= v15)
          {
            goto LABEL_49;
          }

          v3 = *(v6 + 32 + 8 * v9);
          v14 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_1D930EDF4(v6);
          v16 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v16)
        {
          v6 = sub_1D930EDF4(v6);
          v4 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v10 >= *(v4 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        *(v4 + 8 * v10 + 32) = v3;

        *a1 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_45;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
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
  return sub_1D9328544();
}

uint64_t sub_1D930F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ControlArchiveEntryAssertion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D9328544();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D9328544();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D930F2F8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D9328544();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1D9328544();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1D930ED38(result, 1);

  return sub_1D930F1FC(v5, v3, 0);
}

uint64_t sub_1D930F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D93270F4();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D9327104();
}

uint64_t sub_1D930F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D93270F4();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D9327104();
}

unint64_t CHUISSolariumLayerType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D930F75C()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ED00](v1);
  return sub_1D9328764();
}

uint64_t sub_1D930F7D0(uint64_t a1)
{
  v2 = *v1;
  sub_1D9328724();
  MEMORY[0x1DA72ED00](v2);
  return sub_1D9328764();
}

unint64_t *sub_1D930F814@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

double sub_1D930F830()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  return *(v0 + 16);
}

double sub_1D930F8D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1D930F978(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    sub_1D93268F4();
  }
}

uint64_t sub_1D930FA90()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  return *(v0 + 24);
}

__n128 sub_1D930FB34@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = *(v3 + 40);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1D930FBE4()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  return *(v0 + 48);
}

uint64_t sub_1D930FC84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D930FD2C(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    sub_1D93268F4();
  }

  return result;
}

id sub_1D930FE30()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v1 = *(v0 + 56);

  return v1;
}

id sub_1D930FEE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D930FF98@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v3 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  return sub_1D92973DC(v5 + v3, a1, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D9310070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  return sub_1D92973DC(v3 + v4, a2, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D9310148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D92973DC(a1, &v6 - v3, &qword_1ECAFC438, &qword_1D932CA10);
  return sub_1D93101F4(v4);
}

uint64_t sub_1D93101F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D92973DC(v1 + v6, v5, &qword_1ECAFC438, &qword_1D932CA10);
  v7 = sub_1D9314930(v5, a1);
  sub_1D92933A0(v5, &qword_1ECAFC438, &qword_1D932CA10);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    sub_1D93268F4();
  }

  else
  {
    sub_1D92973DC(a1, v5, &qword_1ECAFC438, &qword_1D932CA10);
    swift_beginAccess();
    sub_1D9314C50(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1D92933A0(a1, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D93103FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D92973DC(a2, &v9 - v5, &qword_1ECAFC438, &qword_1D932CA10);
  v7 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D9314C50(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t SolariumEffectViewModel.__allocating_init(layerType:tintParameters:preferredColorScheme:cornerRadius:fixedSize:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  v18 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v19 = sub_1D9326D04();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  sub_1D9326914();
  *(v17 + 16) = a7;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  v20 = a2;
  sub_1D92955BC(a4, a5, a6 & 1);
  sub_1D92973DC(a3, v16, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v16);

  sub_1D92933A0(a3, &qword_1ECAFC438, &qword_1D932CA10);
  return v17;
}

uint64_t SolariumEffectViewModel.init(layerType:tintParameters:preferredColorScheme:cornerRadius:fixedSize:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - v16;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  v18 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v19 = sub_1D9326D04();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  sub_1D9326914();
  *(v7 + 16) = a7;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v20 = a2;
  sub_1D92955BC(a4, a5, a6 & 1);
  sub_1D92973DC(a3, v17, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v17);

  sub_1D92933A0(a3, &qword_1ECAFC438, &qword_1D932CA10);
  return v7;
}

id sub_1D93107DC()
{
  v1 = v0;
  v2 = sub_1D9327354();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  if ([*(v0 + 56) filterStyle] != 5)
  {
    swift_getKeyPath();
    v14 = v0;
    sub_1D9326904();

    if ([*(v0 + 56) filterStyle] != 6)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  v14 = v0;
  sub_1D9326904();

  result = [*(v0 + 56) primaryTintColor];
  if (result)
  {
    v7 = result;
    [result red];
    [v7 green];
    [v7 blue];
    [v7 alpha];
    (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
    v8 = sub_1D9327424();

    swift_getKeyPath();
    v14 = v1;
    sub_1D9326904();

    v9 = [*(v1 + 56) glassOptions];
    if (v9 && (v10 = v9, v11 = [v9 wantsSubduedGlass], v10, v11))
    {
      v12 = sub_1D93273C4();

      return v12;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_1D9310AF4()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v1 = [*(v0 + 56) filterStyle];
  if (v1 == 5)
  {
    return 1;
  }

  if (v1 != 3)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D9326904();

  result = [*(v0 + 56) glassOptions];
  if (result)
  {
    v3 = result;
    v4 = [result wantsWhitePointBoost];

    return v4;
  }

  return result;
}

uint64_t SolariumEffectViewModel.deinit()
{
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme, &qword_1ECAFC438, &qword_1D932CA10);
  v1 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel___observationRegistrar;
  v2 = sub_1D9326924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SolariumEffectViewModel.__deallocating_deinit()
{
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme, &qword_1ECAFC438, &qword_1D932CA10);
  v1 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel___observationRegistrar;
  v2 = sub_1D9326924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D9310D80@<X0>(void *a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SolariumEffectView(0);
  sub_1D92973DC(v1 + *(v10 + 20), v9, &qword_1ECAFD298, &unk_1D9330130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D9326D04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1D9328224();
    v13 = sub_1D93271F4();
    sub_1D9326BB4();

    sub_1D9327024();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D9310F88(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD350, &qword_1D93304A8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD330, &qword_1D9330460);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = [a1 glassOptions];
  if (v10 && (v11 = v10, v12 = [v10 backdropGroupName], v11, v12))
  {
    v13 = sub_1D9327F84();
    v15 = v14;

    sub_1D92973DC(v2, v9, &qword_1ECAFD300, &qword_1D9330400);
    v16 = &v9[*(v7 + 36)];
    *v16 = 1;
    *(v16 + 1) = v13;
    *(v16 + 2) = v15;
    sub_1D92973DC(v9, v6, &qword_1ECAFD330, &qword_1D9330460);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D931486C();
    sub_1D929ABFC();
    sub_1D9327104();
    return sub_1D92933A0(v9, &qword_1ECAFD330, &qword_1D9330460);
  }

  else
  {
    sub_1D92973DC(v2, v6, &qword_1ECAFD300, &qword_1D9330400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D931486C();
    sub_1D929ABFC();
    return sub_1D9327104();
  }
}

uint64_t sub_1D93111F4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD320, &qword_1D9330450);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD348, &qword_1D9330478);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = *a1;
  swift_getKeyPath();
  *&v14[0] = v10;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  if (*(v10 + 40))
  {
    sub_1D92973DC(a2, v9, &qword_1ECAFD308, &qword_1D9330408);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D93146C8();
    sub_1D93147E0();
    return sub_1D9327104();
  }

  else
  {
    sub_1D93275E4();
    sub_1D9326D84();
    sub_1D92973DC(a2, v6, &qword_1ECAFD308, &qword_1D9330408);
    v12 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD328, &qword_1D9330458) + 36)];
    v13 = v14[1];
    *v12 = v14[0];
    *(v12 + 1) = v13;
    *(v12 + 2) = v14[2];
    *&v6[*(v4 + 36)] = 257;
    sub_1D92973DC(v6, v9, &qword_1ECAFD320, &qword_1D9330450);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D93146C8();
    sub_1D93147E0();
    sub_1D9327104();
    return sub_1D92933A0(v6, &qword_1ECAFD320, &qword_1D9330450);
  }
}

id sub_1D93114D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D93275C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1D93107DC();
  sub_1D93275A4();

  sub_1D9327584();
  v14 = *(v5 + 8);
  v14(v7, v4);
  swift_getKeyPath();
  v15 = v8;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v9 = [*(v8 + 56) glassOptions];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 wantsSubduedGlass];

    if (v11)
    {
      sub_1D9327554();
      v14(a2, v4);
      (*(v5 + 32))(a2, v7, v4);
    }
  }

  if (sub_1D9310AF4())
  {
    sub_1D9327564();
    v14(a2, v4);
    (*(v5 + 32))(a2, v7, v4);
  }

  swift_getKeyPath();
  v15 = v8;
  sub_1D9326904();

  result = [*(v8 + 56) glassOptions];
  if (result)
  {
    v13 = result;
    [result wantsHighlightsDisplayAngle];
    sub_1D9327594();

    v14(a2, v4);
    return (*(v5 + 32))(a2, v7, v4);
  }

  return result;
}

uint64_t View.backgroundGlassEffectIfNecessary(tintParameters:includeBackground:preferredColorScheme:cornerRadius:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v49 = a5;
  v50 = a6;
  v44 = a3;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD260, &qword_1D93300E8);
  v18 = sub_1D9326E04();
  v46 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v43 - v22;
  v23 = sub_1D9327114();
  v47 = *(v23 - 8);
  v48 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  if ((a2 & 1) == 0 || !a1)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v27 = [v26 wantsGlassMaterial];
  if (!v27)
  {

LABEL_6:
    v35 = *(v12 + 16);
    v35(v17, v7, a4);
    v35(v15, v17, a4);
    v36 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8, MEMORY[0x1E697F940]);
    v29 = v49;
    v57 = v49;
    v58 = v36;
    WitnessTable = swift_getWitnessTable();
    sub_1D930F650(v15, v18, a4, WitnessTable, v29);
    v38 = *(v12 + 8);
    v38(v15, a4);
    v38(v17, a4);
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v27);
  v28 = v44;
  *(&v43 - 4) = v26;
  *(&v43 - 3) = v28;
  *(&v43 - 2) = a7;
  sub_1D93275E4();
  v44 = v26;
  type metadata accessor for SolariumEffectView(0);
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView, &unk_1D93303A0);
  v29 = v49;
  sub_1D93272D4();
  v30 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8, MEMORY[0x1E697F940]);
  v51 = v29;
  v52 = v30;
  v43 = swift_getWitnessTable();
  v31 = v45;
  v32 = v46;
  v33 = *(v46 + 16);
  v33(v45, v21, v18);
  v34 = *(v32 + 8);
  v34(v21, v18);
  v33(v21, v31, v18);
  sub_1D930F558(v21, v18, a4, v43, v29);

  v34(v21, v18);
  v34(v31, v18);
LABEL_7:
  v39 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8, MEMORY[0x1E697F940]);
  v55 = v29;
  v56 = v39;
  v53 = swift_getWitnessTable();
  v54 = v29;
  v40 = v48;
  swift_getWitnessTable();
  v41 = v47;
  (*(v47 + 16))(v50, v25, v40);
  return (*(v41 + 8))(v25, v40);
}

uint64_t sub_1D9311D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_1D92973DC(a2, v26 - v12, &qword_1ECAFC438, &qword_1D932CA10);
  type metadata accessor for SolariumEffectViewModel(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  v15 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v16 = sub_1D9326D04();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  sub_1D9326914();
  *(v14 + 16) = a4;
  *(v14 + 48) = 0;
  *(v14 + 56) = a1;
  if (*(v14 + 40) == 1)
  {
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v17 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v26[-3] = 0;
    v26[-2] = 0;
    v26[-4] = v14;
    LOBYTE(v26[-1]) = 1;
    v26[1] = v14;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    v19 = a1;
    sub_1D93268F4();
  }

  sub_1D92973DC(v13, v11, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v11);
  sub_1D92933A0(v13, &qword_1ECAFC438, &qword_1D932CA10);
  v20 = type metadata accessor for SolariumEffectView(0);
  v21 = *(v20 + 20);
  *(a3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v22 = *(v20 + 24);
  v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v24 = sub_1D9327F74();
  [v23 initWithSuiteName_];

  result = sub_1D9326CD4();
  *(a3 + v22) = result;
  *a3 = v14;
  return result;
}

uint64_t View.foregroundGlassEffectIfNecessary(tintParameters:preferredColorScheme:cornerRadius:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v52 = a4;
  v53 = a5;
  v48 = a2;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD270, &qword_1D93300F0);
  v16 = sub_1D9326E04();
  v49 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = sub_1D9327114();
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  if (!a1)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v26 = [v25 wantsGlassMaterial];
  if ((v26 & 1) == 0)
  {
    v26 = [v25 filterStyle];
    if (v26 != 7)
    {

LABEL_6:
      v37 = v24;
      v38 = *(v10 + 16);
      v38(v15, v6, a3);
      v38(v13, v15, a3);
      v36 = v37;
      v39 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0, MEMORY[0x1E697EC18]);
      v35 = v52;
      v60 = v52;
      v61 = v39;
      WitnessTable = swift_getWitnessTable();
      sub_1D930F650(v13, v16, a3, WitnessTable, v35);
      v41 = *(v10 + 8);
      v41(v13, a3);
      v41(v15, a3);
      goto LABEL_7;
    }
  }

  v47 = &v46;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v48;
  *(&v46 - 4) = v25;
  *(&v46 - 3) = v27;
  *(&v46 - 2) = a6;
  sub_1D93275E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD280, &qword_1D93300F8);
  v48 = v24;
  sub_1D9313F08();
  v28 = v52;
  sub_1D9327304();
  v29 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0, MEMORY[0x1E697EC18]);
  v54 = v28;
  v55 = v29;
  v30 = swift_getWitnessTable();
  v47 = v25;
  v31 = v30;
  v32 = v49;
  v33 = *(v49 + 16);
  v33(v21, v19, v16);
  v34 = *(v32 + 8);
  v34(v19, v16);
  v33(v19, v21, v16);
  sub_1D930F558(v19, v16, a3, v31, v28);

  v35 = v28;
  v34(v19, v16);
  v34(v21, v16);
  v36 = v48;
LABEL_7:
  v42 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0, MEMORY[0x1E697EC18]);
  v58 = v35;
  v59 = v42;
  v56 = swift_getWitnessTable();
  v57 = v35;
  v43 = v51;
  swift_getWitnessTable();
  v44 = v50;
  (*(v50 + 16))(v53, v36, v43);
  return (*(v44 + 8))(v36, v43);
}

uint64_t sub_1D9312670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_1D92973DC(a2, v26 - v12, &qword_1ECAFC438, &qword_1D932CA10);
  type metadata accessor for SolariumEffectViewModel(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  v15 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v16 = sub_1D9326D04();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  sub_1D9326914();
  *(v14 + 16) = a4;
  *(v14 + 48) = 1;
  *(v14 + 56) = a1;
  if (*(v14 + 40) == 1)
  {
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v17 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v26[-3] = 0;
    v26[-2] = 0;
    v26[-4] = v14;
    LOBYTE(v26[-1]) = 1;
    v26[1] = v14;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    v19 = a1;
    sub_1D93268F4();
  }

  sub_1D92973DC(v13, v11, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v11);
  sub_1D92933A0(v13, &qword_1ECAFC438, &qword_1D932CA10);
  v20 = type metadata accessor for SolariumEffectView(0);
  v21 = *(v20 + 20);
  *(a3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v22 = *(v20 + 24);
  v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v24 = sub_1D9327F74();
  [v23 initWithSuiteName_];

  *(a3 + v22) = sub_1D9326CD4();
  *a3 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD280, &qword_1D93300F8);
  *(a3 + *(result + 36)) = 0;
  return result;
}

char *CHUISSolariumEffectView.__allocating_init(layerType:tintParameters:preferredColorScheme:cornerRadius:frame:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v48 = a2;
  v51 = a1;
  v15 = type metadata accessor for SolariumEffectView(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D9326D04();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v47 - v26;
  v28 = objc_allocWithZone(v8);
  v49 = v15;
  v50 = v8;
  if (a3 == 1)
  {
    v29 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a3 != 2)
    {
      v30 = *(v19 + 56);
      v30(v27, 1, 1, v18);
      goto LABEL_7;
    }

    v29 = MEMORY[0x1E697DBA8];
  }

  (*(v19 + 104))(v21, *v29, v18);
  (*(v19 + 32))(v27, v21, v18);
  v30 = *(v19 + 56);
  v30(v27, 0, 1, v18);
LABEL_7:
  type metadata accessor for SolariumEffectViewModel(0);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  v30((v31 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme), 1, 1, v18);
  v32 = v48;
  sub_1D9326914();
  *(v31 + 16) = a4;
  *(v31 + 48) = v51;
  *(v31 + 56) = v32;
  v33 = v32;
  sub_1D92955BC(*&a7, *&a8, 0);
  sub_1D92973DC(v27, v25, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v25);

  sub_1D92933A0(v27, &qword_1ECAFC438, &qword_1D932CA10);
  *&v28[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel] = v31;
  v34 = v49;
  v35 = *(v49 + 20);
  *(v17 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v36 = *(v34 + 24);
  v37 = objc_allocWithZone(MEMORY[0x1E695E000]);
  swift_retain_n();
  v38 = sub_1D9327F74();
  [v37 initWithSuiteName_];

  *(v17 + v36) = sub_1D9326CD4();
  *v17 = v31;
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView, &unk_1D93303A0);
  v53 = sub_1D93274F4();
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v40 = sub_1D9326DD4();
  v41 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView;
  *&v28[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView] = v40;
  [v40 setBackgroundColor_];
  v42 = *&v28[v41];
  sub_1D9326DF4();

  [*&v28[v41] setFrame_];
  v52.receiver = v28;
  v52.super_class = v50;
  v43 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a5, a6, a7, a8);
  v44 = *&v43[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  v45 = v43;
  [v45 addSubview_];
  [v45 setBackgroundColor_];

  return v45;
}

char *CHUISSolariumEffectView.init(layerType:tintParameters:preferredColorScheme:cornerRadius:frame:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v53 = a1;
  v16 = type metadata accessor for SolariumEffectView(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D9326D04();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v51 = v16;
  v52 = v8;
  v50 = a2;
  if (a3 == 1)
  {
    v29 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a3 != 2)
    {
      v30 = *(v20 + 56);
      v30(&v49 - v27, 1, 1, v19);
      goto LABEL_7;
    }

    v29 = MEMORY[0x1E697DBA8];
  }

  (*(v20 + 104))(v22, *v29, v19);
  (*(v20 + 32))(v28, v22, v19);
  v30 = *(v20 + 56);
  v30(v28, 0, 1, v19);
LABEL_7:
  type metadata accessor for SolariumEffectViewModel(0);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  v30((v31 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme), 1, 1, v19);
  v32 = v50;
  sub_1D9326914();
  *(v31 + 16) = a4;
  *(v31 + 48) = v53;
  *(v31 + 56) = v32;
  v33 = v32;
  sub_1D92955BC(*&a7, *&a8, 0);
  sub_1D92973DC(v28, v26, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v26);

  sub_1D92933A0(v28, &qword_1ECAFC438, &qword_1D932CA10);
  v34 = v51;
  v35 = v52;
  *&v52[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel] = v31;
  v36 = *(v34 + 20);
  *(v18 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v37 = *(v34 + 24);
  v38 = objc_allocWithZone(MEMORY[0x1E695E000]);
  swift_retain_n();
  v39 = sub_1D9327F74();
  [v38 initWithSuiteName_];

  *(v18 + v37) = sub_1D9326CD4();
  *v18 = v31;
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView, &unk_1D93303A0);
  v55 = sub_1D93274F4();
  v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v41 = sub_1D9326DD4();
  v42 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView;
  *&v35[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView] = v41;
  [v41 setBackgroundColor_];
  v43 = *&v35[v42];
  sub_1D9326DF4();

  [*&v35[v42] setFrame_];
  v44 = type metadata accessor for CHUISSolariumEffectView();
  v54.receiver = v35;
  v54.super_class = v44;
  v45 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a5, a6, a7, a8);
  v46 = *&v45[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  v47 = v45;
  [v47 addSubview_];
  [v47 setBackgroundColor_];

  return v47;
}

id CHUISSolariumEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1D9313634(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2A8, &qword_1D9330168);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = sub_1D9326D04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v34 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v37 = v21;
  if (a1 == 1)
  {
    v22 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v22 = MEMORY[0x1E697DBA8];
LABEL_5:
    (*(v7 + 104))(v11, *v22, v6);
    (*(v7 + 32))(v20, v11, v6);
    (*(v7 + 56))(v20, 0, 1, v6);
    goto LABEL_7;
  }

  (*(v7 + 56))(&v34 - v19, 1, 1, v6);
LABEL_7:
  v38 = v1;
  v36 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v23 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  v39 = v23;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);

  sub_1D9326904();

  v24 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D92973DC(v23 + v24, v18, &qword_1ECAFC438, &qword_1D932CA10);

  v25 = *(v3 + 48);
  sub_1D92973DC(v18, v5, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92973DC(v20, &v5[v25], &qword_1ECAFC438, &qword_1D932CA10);
  v26 = *(v7 + 48);
  if (v26(v5, 1, v6) != 1)
  {
    v27 = v35;
    sub_1D92973DC(v5, v35, &qword_1ECAFC438, &qword_1D932CA10);
    if (v26(&v5[v25], 1, v6) != 1)
    {
      v31 = v34;
      (*(v7 + 32))(v34, &v5[v25], v6);
      sub_1D9313FC4(&qword_1ECAFD2B0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
      v32 = sub_1D9327F64();
      v33 = *(v7 + 8);
      v33(v31, v6);
      sub_1D92933A0(v18, &qword_1ECAFC438, &qword_1D932CA10);
      v33(v27, v6);
      sub_1D92933A0(v5, &qword_1ECAFC438, &qword_1D932CA10);
      v28 = v38;
      if (v32)
      {
        return sub_1D92933A0(v20, &qword_1ECAFC438, &qword_1D932CA10);
      }

      goto LABEL_13;
    }

    sub_1D92933A0(v18, &qword_1ECAFC438, &qword_1D932CA10);
    (*(v7 + 8))(v27, v6);
LABEL_12:
    sub_1D92933A0(v5, &qword_1ECAFD2A8, &qword_1D9330168);
    v28 = v38;
LABEL_13:
    v29 = v37;
    sub_1D92973DC(v20, v37, &qword_1ECAFC438, &qword_1D932CA10);

    sub_1D93101F4(v29);

    [v28 setNeedsLayout];
    return sub_1D92933A0(v20, &qword_1ECAFC438, &qword_1D932CA10);
  }

  sub_1D92933A0(v18, &qword_1ECAFC438, &qword_1D932CA10);
  if (v26(&v5[v25], 1, v6) != 1)
  {
    goto LABEL_12;
  }

  sub_1D92933A0(v5, &qword_1ECAFC438, &qword_1D932CA10);
  return sub_1D92933A0(v20, &qword_1ECAFC438, &qword_1D932CA10);
}

id sub_1D9313C5C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v5 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);

  sub_1D9326904();

  v6 = *(v5 + 48);

  if (v6 != a1)
  {
    if (*(*&v2[v4] + 48) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1D93268F4();
    }

    return [v2 setNeedsLayout];
  }

  return result;
}

id CHUISSolariumEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHUISSolariumEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D9313F08()
{
  result = qword_1ECAFD288;
  if (!qword_1ECAFD288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD280, &qword_1D93300F8);
    sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView, &unk_1D93303A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD288);
  }

  return result;
}

uint64_t sub_1D9313FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D931401C()
{
  result = qword_1ECAFD2B8;
  if (!qword_1ECAFD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD2B8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyAA08ModifiedE0VyxAA19_BackgroundModifierVy16ChronoUIServices014SolariumEffectC0VGGxGAaBHPAmaBHPxAaBHD1__AlA0cH0HPyHCHC_xAaBHD1_HCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D9326E04();
  sub_1D9327114();
  sub_1D9290D60(a4, a2, a3, a5);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1D93142AC(uint64_t a1)
{
  type metadata accessor for SolariumEffectViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1D9314364(319, &qword_1ECAFD2D8, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D93143C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9314364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D9326D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D93143C4(uint64_t a1)
{
  if (!qword_1ECAFD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
    v1 = sub_1D9326CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAFD2E0);
    }
  }
}

uint64_t sub_1D9314428(uint64_t a1)
{
  v2 = sub_1D9326D04();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D9326E84();
}

uint64_t sub_1D93144F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolariumEffectView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9314554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolariumEffectView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D93145B8()
{
  result = qword_1EDE3B280;
  if (!qword_1EDE3B280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F0, &qword_1D93303F0);
    sub_1D931463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B280);
  }

  return result;
}

unint64_t sub_1D931463C()
{
  result = qword_1EDE3B298;
  if (!qword_1EDE3B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD318, &qword_1D9330448);
    sub_1D93146C8();
    sub_1D93147E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B298);
  }

  return result;
}

unint64_t sub_1D93146C8()
{
  result = qword_1EDE3B2B8;
  if (!qword_1EDE3B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD320, &qword_1D9330450);
    sub_1D9314754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2B8);
  }

  return result;
}

unint64_t sub_1D9314754()
{
  result = qword_1EDE3B2D8;
  if (!qword_1EDE3B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD328, &qword_1D9330458);
    sub_1D93147E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2D8);
  }

  return result;
}

unint64_t sub_1D93147E0()
{
  result = qword_1EDE3B2A0;
  if (!qword_1EDE3B2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D931486C();
    sub_1D929ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2A0);
  }

  return result;
}

unint64_t sub_1D931486C()
{
  result = qword_1EDE3B2C0;
  if (!qword_1EDE3B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD330, &qword_1D9330460);
    sub_1D929ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2C0);
  }

  return result;
}

void sub_1D93148F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

uint64_t sub_1D9314930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9326D04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2A8, &qword_1D9330168);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D92973DC(a1, &v21 - v13, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92973DC(a2, &v14[v15], &qword_1ECAFC438, &qword_1D932CA10);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D92973DC(v14, v10, &qword_1ECAFC438, &qword_1D932CA10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D9313FC4(&qword_1ECAFD2B0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
      v18 = sub_1D9327F64();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D92933A0(v14, &qword_1ECAFC438, &qword_1D932CA10);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D92933A0(v14, &qword_1ECAFD2A8, &qword_1D9330168);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D92933A0(v14, &qword_1ECAFC438, &qword_1D932CA10);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9314C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9314D24(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1D9326BE4();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAD8, &qword_1D932E038);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC8, &unk_1D932E7D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A8, &qword_1D93306E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v63 - v9;
  v10 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3B0, &qword_1D93306F0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = *(*v2 + 112);
  swift_beginAccess();
  v27 = *(v23 + 56);
  sub_1D92973DC(v2 + v26, v25, &unk_1ECAFD180, &unk_1D932E7E0);
  sub_1D92973DC(v76, &v25[v27], &unk_1ECAFD180, &unk_1D932E7E0);
  v28 = *(v11 + 48);
  if (v28(v25, 1, v10) == 1)
  {
    if (v28(&v25[v27], 1, v10) == 1)
    {
      sub_1D92933A0(v25, &unk_1ECAFD180, &unk_1D932E7E0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v25, v21, &unk_1ECAFD180, &unk_1D932E7E0);
  if (v28(&v25[v27], 1, v10) == 1)
  {
    sub_1D92974EC(v21, type metadata accessor for ControlInstanceButton.ViewModel);
LABEL_6:
    sub_1D92933A0(v25, &qword_1ECAFD3B0, &qword_1D93306F0);
    goto LABEL_7;
  }

  v45 = &v25[v27];
  v46 = v67;
  sub_1D931EF58(v45, v67, type metadata accessor for ControlInstanceButton.ViewModel);
  v47 = _s16ChronoUIServices21ControlInstanceButtonC9ViewModelV2eeoiySbAE_AEtFZ_0(v21, v46);
  sub_1D92974EC(v46, type metadata accessor for ControlInstanceButton.ViewModel);
  sub_1D92974EC(v21, type metadata accessor for ControlInstanceButton.ViewModel);
  sub_1D92933A0(v25, &unk_1ECAFD180, &unk_1D932E7E0);
  if (!v47)
  {
LABEL_7:
    v76 = v10;
    v29 = v73;
    v30 = v74;
    v31 = v75;
    (*(v74 + 16))(v73, v2 + *(*v2 + 176), v75);

    v32 = sub_1D9326BC4();
    v33 = sub_1D9328234();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78[0] = v64;
      *v34 = 136446466;
      v35 = (v2 + *(*v2 + 184));
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1D9293524(v36, v37, v78);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = v66;
      sub_1D92973DC(v2 + v26, v66, &unk_1ECAFD180, &unk_1D932E7E0);
      v10 = v76;
      v40 = v28(v39, 1, v76);
      sub_1D92933A0(v39, &unk_1ECAFD180, &unk_1D932E7E0);
      if (v40 == 1)
      {
        v41 = 7104878;
      }

      else
      {
        v41 = 0x6C696E20746F6ELL;
      }

      if (v40 == 1)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      v43 = sub_1D9293524(v41, v42, v78);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D928E000, v32, v33, "[%{public}s] View model changed. new value is %{public}s", v34, 0x16u);
      v44 = v64;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v44, -1, -1);
      MEMORY[0x1DA72F920](v34, -1, -1);

      (*(v74 + 8))(v73, v75);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
      v10 = v76;
    }
  }

LABEL_17:
  v48 = v77;
  sub_1D92973DC(v2 + v26, v77, &unk_1ECAFD180, &unk_1D932E7E0);
  if (v28(v48, 1, v10) == 1)
  {
    v49 = &unk_1ECAFD180;
    v50 = &unk_1D932E7E0;
    v51 = v48;
  }

  else
  {
    v52 = v68;
    sub_1D931EF58(v48, v68, type metadata accessor for ControlInstanceButton.ViewModel);
    v53 = *(*v2 + 104);
    swift_beginAccess();
    v54 = v2 + v53;
    v55 = v69;
    sub_1D92973DC(v54, v69, &qword_1ECAFCAC8, &unk_1D932E7D0);
    v56 = v70;
    v57 = v72;
    if ((*(v70 + 48))(v55, 1, v72))
    {
      sub_1D92974EC(v52, type metadata accessor for ControlInstanceButton.ViewModel);
      sub_1D92933A0(v55, &qword_1ECAFCAC8, &unk_1D932E7D0);
      v58 = 1;
      v59 = v71;
    }

    else
    {
      v60 = v65;
      (*(v56 + 16))(v65, v55, v57);
      sub_1D92933A0(v55, &qword_1ECAFCAC8, &unk_1D932E7D0);
      sub_1D929712C(v52, v67, type metadata accessor for ControlInstanceButton.ViewModel);
      v59 = v71;
      sub_1D9328114();
      (*(v56 + 8))(v60, v57);
      sub_1D92974EC(v52, type metadata accessor for ControlInstanceButton.ViewModel);
      v58 = 0;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3B8, &qword_1D93306F8);
    (*(*(v61 - 8) + 56))(v59, v58, 1, v61);
    v49 = &qword_1ECAFD3A8;
    v50 = &qword_1D93306E8;
    v51 = v59;
  }

  return sub_1D92933A0(v51, v49, v50);
}

uint64_t sub_1D93156A0(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1D9326BE4();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAB8, &unk_1D932E000);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA8, &qword_1D932DFF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E8, &unk_1D9330750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v63 - v9;
  v10 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = (&v63 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v63 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3F0, &qword_1D9330760);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = *(*v2 + 112);
  swift_beginAccess();
  v27 = *(v23 + 56);
  sub_1D92973DC(v2 + v26, v25, &qword_1ECAFCBC8, qword_1D932E7F0);
  sub_1D92973DC(v76, &v25[v27], &qword_1ECAFCBC8, qword_1D932E7F0);
  v28 = *(v11 + 48);
  if (v28(v25, 1, v10) == 1)
  {
    if (v28(&v25[v27], 1, v10) == 1)
    {
      sub_1D92933A0(v25, &qword_1ECAFCBC8, qword_1D932E7F0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v25, v21, &qword_1ECAFCBC8, qword_1D932E7F0);
  if (v28(&v25[v27], 1, v10) == 1)
  {
    sub_1D92974EC(v21, type metadata accessor for ControlInstancePicker.ViewModel);
LABEL_6:
    sub_1D92933A0(v25, &qword_1ECAFD3F0, &qword_1D9330760);
    goto LABEL_7;
  }

  v45 = &v25[v27];
  v46 = v67;
  sub_1D931EF58(v45, v67, type metadata accessor for ControlInstancePicker.ViewModel);
  v47 = _s16ChronoUIServices21ControlInstancePickerC9ViewModelV2eeoiySbAE_AEtFZ_0(v21, v46);
  sub_1D92974EC(v46, type metadata accessor for ControlInstancePicker.ViewModel);
  sub_1D92974EC(v21, type metadata accessor for ControlInstancePicker.ViewModel);
  sub_1D92933A0(v25, &qword_1ECAFCBC8, qword_1D932E7F0);
  if ((v47 & 1) == 0)
  {
LABEL_7:
    v76 = v10;
    v29 = v73;
    v30 = v74;
    v31 = v75;
    (*(v74 + 16))(v73, v2 + *(*v2 + 176), v75);

    v32 = sub_1D9326BC4();
    v33 = sub_1D9328234();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78[0] = v64;
      *v34 = 136446466;
      v35 = (v2 + *(*v2 + 184));
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1D9293524(v36, v37, v78);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = v66;
      sub_1D92973DC(v2 + v26, v66, &qword_1ECAFCBC8, qword_1D932E7F0);
      v10 = v76;
      v40 = v28(v39, 1, v76);
      sub_1D92933A0(v39, &qword_1ECAFCBC8, qword_1D932E7F0);
      if (v40 == 1)
      {
        v41 = 7104878;
      }

      else
      {
        v41 = 0x6C696E20746F6ELL;
      }

      if (v40 == 1)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      v43 = sub_1D9293524(v41, v42, v78);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D928E000, v32, v33, "[%{public}s] View model changed. new value is %{public}s", v34, 0x16u);
      v44 = v64;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v44, -1, -1);
      MEMORY[0x1DA72F920](v34, -1, -1);

      (*(v74 + 8))(v73, v75);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
      v10 = v76;
    }
  }

LABEL_17:
  v48 = v77;
  sub_1D92973DC(v2 + v26, v77, &qword_1ECAFCBC8, qword_1D932E7F0);
  if (v28(v48, 1, v10) == 1)
  {
    v49 = &qword_1ECAFCBC8;
    v50 = qword_1D932E7F0;
    v51 = v48;
  }

  else
  {
    v52 = v68;
    sub_1D931EF58(v48, v68, type metadata accessor for ControlInstancePicker.ViewModel);
    v53 = *(*v2 + 104);
    swift_beginAccess();
    v54 = v2 + v53;
    v55 = v69;
    sub_1D92973DC(v54, v69, &qword_1ECAFCAA8, &qword_1D932DFF0);
    v56 = v70;
    v57 = v72;
    if ((*(v70 + 48))(v55, 1, v72))
    {
      sub_1D92974EC(v52, type metadata accessor for ControlInstancePicker.ViewModel);
      sub_1D92933A0(v55, &qword_1ECAFCAA8, &qword_1D932DFF0);
      v58 = 1;
      v59 = v71;
    }

    else
    {
      v60 = v65;
      (*(v56 + 16))(v65, v55, v57);
      sub_1D92933A0(v55, &qword_1ECAFCAA8, &qword_1D932DFF0);
      sub_1D929712C(v52, v67, type metadata accessor for ControlInstancePicker.ViewModel);
      v59 = v71;
      sub_1D9328114();
      (*(v56 + 8))(v60, v57);
      sub_1D92974EC(v52, type metadata accessor for ControlInstancePicker.ViewModel);
      v58 = 0;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3F8, &qword_1D9330768);
    (*(*(v61 - 8) + 56))(v59, v58, 1, v61);
    v49 = &qword_1ECAFD3E8;
    v50 = &unk_1D9330750;
    v51 = v59;
  }

  return sub_1D92933A0(v51, v49, v50);
}

uint64_t sub_1D931601C(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1D9326BE4();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA90, &unk_1D932DFC0);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA80, &qword_1D932DFB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3C0, &unk_1D9330700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v63 - v9;
  v10 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = (&v63 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v63 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3C8, &qword_1D9330710);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = *(*v2 + 112);
  swift_beginAccess();
  v27 = *(v23 + 56);
  sub_1D92973DC(v2 + v26, v25, &qword_1ECAFCBC0, &unk_1D932E7C0);
  sub_1D92973DC(v76, &v25[v27], &qword_1ECAFCBC0, &unk_1D932E7C0);
  v28 = *(v11 + 48);
  if (v28(v25, 1, v10) == 1)
  {
    if (v28(&v25[v27], 1, v10) == 1)
    {
      sub_1D92933A0(v25, &qword_1ECAFCBC0, &unk_1D932E7C0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v25, v21, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (v28(&v25[v27], 1, v10) == 1)
  {
    sub_1D92974EC(v21, type metadata accessor for ControlInstanceToggle.ViewModel);
LABEL_6:
    sub_1D92933A0(v25, &qword_1ECAFD3C8, &qword_1D9330710);
    goto LABEL_7;
  }

  v45 = &v25[v27];
  v46 = v67;
  sub_1D931EF58(v45, v67, type metadata accessor for ControlInstanceToggle.ViewModel);
  v47 = _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV2eeoiySbAE_AEtFZ_0(v21, v46);
  sub_1D92974EC(v46, type metadata accessor for ControlInstanceToggle.ViewModel);
  sub_1D92974EC(v21, type metadata accessor for ControlInstanceToggle.ViewModel);
  sub_1D92933A0(v25, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (!v47)
  {
LABEL_7:
    v76 = v10;
    v29 = v73;
    v30 = v74;
    v31 = v75;
    (*(v74 + 16))(v73, v2 + *(*v2 + 176), v75);

    v32 = sub_1D9326BC4();
    v33 = sub_1D9328234();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78[0] = v64;
      *v34 = 136446466;
      v35 = (v2 + *(*v2 + 184));
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1D9293524(v36, v37, v78);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = v66;
      sub_1D92973DC(v2 + v26, v66, &qword_1ECAFCBC0, &unk_1D932E7C0);
      v10 = v76;
      v40 = v28(v39, 1, v76);
      sub_1D92933A0(v39, &qword_1ECAFCBC0, &unk_1D932E7C0);
      if (v40 == 1)
      {
        v41 = 7104878;
      }

      else
      {
        v41 = 0x6C696E20746F6ELL;
      }

      if (v40 == 1)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      v43 = sub_1D9293524(v41, v42, v78);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D928E000, v32, v33, "[%{public}s] View model changed. new value is %{public}s", v34, 0x16u);
      v44 = v64;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v44, -1, -1);
      MEMORY[0x1DA72F920](v34, -1, -1);

      (*(v74 + 8))(v73, v75);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
      v10 = v76;
    }
  }

LABEL_17:
  v48 = v77;
  sub_1D92973DC(v2 + v26, v77, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (v28(v48, 1, v10) == 1)
  {
    v49 = &qword_1ECAFCBC0;
    v50 = &unk_1D932E7C0;
    v51 = v48;
  }

  else
  {
    v52 = v68;
    sub_1D931EF58(v48, v68, type metadata accessor for ControlInstanceToggle.ViewModel);
    v53 = *(*v2 + 104);
    swift_beginAccess();
    v54 = v2 + v53;
    v55 = v69;
    sub_1D92973DC(v54, v69, &qword_1ECAFCA80, &qword_1D932DFB0);
    v56 = v70;
    v57 = v72;
    if ((*(v70 + 48))(v55, 1, v72))
    {
      sub_1D92974EC(v52, type metadata accessor for ControlInstanceToggle.ViewModel);
      sub_1D92933A0(v55, &qword_1ECAFCA80, &qword_1D932DFB0);
      v58 = 1;
      v59 = v71;
    }

    else
    {
      v60 = v65;
      (*(v56 + 16))(v65, v55, v57);
      sub_1D92933A0(v55, &qword_1ECAFCA80, &qword_1D932DFB0);
      sub_1D929712C(v52, v67, type metadata accessor for ControlInstanceToggle.ViewModel);
      v59 = v71;
      sub_1D9328114();
      (*(v56 + 8))(v60, v57);
      sub_1D92974EC(v52, type metadata accessor for ControlInstanceToggle.ViewModel);
      v58 = 0;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3D0, &qword_1D9330718);
    (*(*(v61 - 8) + 56))(v59, v58, 1, v61);
    v49 = &qword_1ECAFD3C0;
    v50 = &unk_1D9330700;
    v51 = v59;
  }

  return sub_1D92933A0(v51, v49, v50);
}

uint64_t sub_1D9316998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D9326BE4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1D9328504();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_1D93280A4();
  v4[9] = sub_1D9328094();
  v8 = sub_1D9328064();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D9316AE8, v8, v7);
}

uint64_t sub_1D9316AE8()
{
  sub_1D93286C4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D9316BB4;

  return sub_1D931CFD0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D9316BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1D931F204;
  }

  else
  {
    v8 = sub_1D9316D4C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D9316D4C()
{
  v24 = v0;
  v1 = v0[13];

  sub_1D93281B4();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    v3 = v0[2];
    v4 = qword_1EDE3CCC8[0];
    v5 = *(v3 + qword_1EDE3CCC8[0]);
    *(v3 + qword_1EDE3CCC8[0]) = 0;
    *(v3 + qword_1EDE3CCC0) = 0;

    if (v5 != *(v3 + v4))
    {
      sub_1D93184C8();
    }

    (*(v0[4] + 16))(v0[5], v0[2] + *(*v0[2] + 176), v0[3]);

    v6 = sub_1D9326BC4();
    v7 = sub_1D9328204();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    if (v8)
    {
      v22 = v0[5];
      v13 = swift_slowAlloc();
      v21 = v12;
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446466;
      v15 = (v11 + *(*v11 + 184));
      v20 = v7;
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_1D9293524(v16, v17, &v23);

      *(v13 + 4) = v18;
      *(v13 + 12) = 1026;
      *(v13 + 14) = *(v3 + v4);

      _os_log_impl(&dword_1D928E000, v6, v20, "[%{public}s] Control action: animation cancelled (isAnimating: %{BOOL,public}d).", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1DA72F920](v14, -1, -1);
      MEMORY[0x1DA72F920](v13, -1, -1);

      (*(v9 + 8))(v22, v21);
    }

    else
    {

      (*(v9 + 8))(v10, v12);
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_1D9316FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D92973DC(a3, v22 - v9, &unk_1ECAFC910, &qword_1D932E360);
  v11 = sub_1D93280D4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D92933A0(v10, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D9328064();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D9327FA4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D931727C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = qword_1EDE3CCB0;
  v8 = *(v2 + qword_1EDE3CCB0);
  *(v2 + qword_1EDE3CCB0) = a1;
  v9 = qword_1EDE3CCC0;
  *(v2 + qword_1EDE3CCC0) = 0;

  if (v8 != *(v2 + v7))
  {
    result = sub_1D93184C8();
    if (*(v2 + v7) != 1)
    {
      v11 = sub_1D93280D4();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      sub_1D93280A4();

      v12 = sub_1D9328094();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v2;
      *(v2 + v9) = sub_1D9316FD0(0, 0, v6, &unk_1D9330738, v13);
    }
  }

  return result;
}

uint64_t sub_1D93173FC(uint64_t result)
{
  v2 = qword_1EDE3CCC8[0];
  v3 = *(v1 + qword_1EDE3CCC8[0]);
  *(v1 + qword_1EDE3CCC8[0]) = result;
  if (result)
  {
    if (v3)
    {
      return result;
    }
  }

  else
  {
    *(v1 + qword_1EDE3CCC0) = 0;

    if (v3 == *(v1 + v2))
    {
      return result;
    }
  }

  return sub_1D93184C8();
}

uint64_t sub_1D9317478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A0, &qword_1D93306E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1D9327C54();
  v34 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = *(*v0 + 112);
  swift_beginAccess();
  sub_1D92973DC(v0 + v16, v15, &unk_1ECAFD180, &unk_1D932E7E0);
  v17 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17))
  {
    sub_1D92933A0(v15, &unk_1ECAFD180, &unk_1D932E7E0);
  }

  else
  {
    v18 = v10;
    v33 = v7;
    v19 = v34;
    v20 = v15[*(v17 + 60)];
    sub_1D92933A0(v15, &unk_1ECAFD180, &unk_1D932E7E0);
    if ((v20 & 1) == 0)
    {
      v22 = *(v0 + *(*v0 + 152));
      if (!v22)
      {
        return 1;
      }

      BSDispatchQueueAssertMain();
      v23 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
      swift_beginAccess();
      sub_1D92973DC(v22 + v23, v3, &qword_1ECAFC4F0, &qword_1D932CC18);

      v24 = sub_1D9327B44();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v3, 1, v24) == 1)
      {
        v26 = &qword_1ECAFC4F0;
        v27 = &qword_1D932CC18;
        v28 = v3;
      }

      else
      {
        sub_1D9327B14();
        (*(v25 + 8))(v3, v24);
        v29 = sub_1D9327CA4();
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(v6, 1, v29) != 1)
        {
          sub_1D9327C74();
          (*(v30 + 8))(v6, v29);
          v31 = v33;
          (*(v19 + 32))(v12, v18, v33);
          v32 = sub_1D931790C();
          (*(v19 + 8))(v12, v31);
          return v32;
        }

        v26 = &qword_1ECAFD3A0;
        v27 = &qword_1D93306E0;
        v28 = v6;
      }

      sub_1D92933A0(v28, v26, v27);
      return 1;
    }
  }

  return 2;
}

uint64_t sub_1D931790C()
{
  v0 = sub_1D9326D44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1D93271E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9327C04();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D92933A0(v6, &qword_1ECAFCBD8, &qword_1D932E920);
    return 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = *(sub_1D9327184() + 16);

  if (!v11)
  {
    (*(v8 + 8))(v10, v7);
    return 1;
  }

  v17 = v8;
  v18 = v7;
  result = sub_1D9327184();
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  while (1)
  {
    if (v15 == v14)
    {
      (*(v17 + 8))(v10, v18);

      return 0;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14++, v0);
    v16 = sub_1D9326D34();
    result = (*(v1 + 8))(v3, v0);
    if (v16)
    {
      (*(v17 + 8))(v10, v18);

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ControlInstanceButton.ViewModel.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 32);

  return sub_1D9317DF4(a1, v3);
}

uint64_t sub_1D9317DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ControlInstanceButton.ViewModel.tint.getter()
{
  type metadata accessor for ControlInstanceButton.ViewModel(0);
}

uint64_t ControlInstanceButton.ViewModel.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 40));

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.actionHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 44));

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.isLauncher.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 64));

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D931848C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1D93184C8()
{
  v1 = v0;
  v2 = sub_1D9326BE4();
  v57 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A0, &qword_1D93306E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_1D9327CA4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v54 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v51 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v24 = *(v5 + 56);
  v59 = v4;
  v60 = &v51 - v25;
  v53 = v24;
  v24();
  v26 = *(v1 + *(*v1 + 152));
  if (!v26)
  {
    goto LABEL_4;
  }

  v52 = v2;

  BSDispatchQueueAssertMain();
  v27 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v26 + v27, v9, &qword_1ECAFC4F0, &qword_1D932CC18);

  v28 = sub_1D9327B44();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
    sub_1D92933A0(v9, &qword_1ECAFC4F0, &qword_1D932CC18);
    v2 = v52;
LABEL_4:
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_5:
    sub_1D92933A0(v12, &qword_1ECAFD3A0, &qword_1D93306E0);
    v30 = v60;
    goto LABEL_6;
  }

  sub_1D9327B14();
  (*(v29 + 8))(v9, v28);
  v48 = (*(v14 + 48))(v12, 1, v13);
  v2 = v52;
  if (v48 == 1)
  {
    goto LABEL_5;
  }

  v49 = v51;
  (*(v14 + 32))(v51, v12, v13);
  v50 = v58;
  sub_1D9318CDC(v49, v58);
  (*(v14 + 8))(v49, v13);
  v30 = v60;
  sub_1D92933A0(v60, &unk_1ECAFD180, &unk_1D932E7E0);
  sub_1D9297374(v50, v30, &unk_1ECAFD180, &unk_1D932E7E0);
LABEL_6:
  sub_1D92973DC(v30, v21, &unk_1ECAFD180, &unk_1D932E7E0);
  v31 = v59;
  if ((*(v5 + 48))(v21, 1, v59) == 1)
  {
    sub_1D92933A0(v21, &unk_1ECAFD180, &unk_1D932E7E0);
    v33 = v56;
    v32 = v57;
    (*(v57 + 16))(v56, v1 + *(*v1 + 176), v2);

    v34 = sub_1D9326BC4();
    v35 = sub_1D9328234();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61[0] = v37;
      *v36 = 136446210;
      v38 = (v1 + *(*v1 + 184));
      v39 = *v38;
      v40 = v38[1];

      v41 = sub_1D9293524(v39, v40, v61);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1D928E000, v34, v35, "[%{public}s] No view model changes found.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72F920](v37, -1, -1);
      MEMORY[0x1DA72F920](v36, -1, -1);
    }

    (*(v32 + 8))(v33, v2);
    v42 = v60;
  }

  else
  {
    v43 = v55;
    sub_1D931EF58(v21, v55, type metadata accessor for ControlInstanceButton.ViewModel);
    v44 = v58;
    sub_1D929712C(v43, v58, type metadata accessor for ControlInstanceButton.ViewModel);
    (v53)(v44, 0, 1, v31);
    v45 = *(*v1 + 112);
    swift_beginAccess();
    v46 = v54;
    sub_1D92973DC(v1 + v45, v54, &unk_1ECAFD180, &unk_1D932E7E0);
    swift_beginAccess();
    sub_1D931EFC0(v44, v1 + v45);
    swift_endAccess();
    sub_1D9314D24(v46);
    sub_1D92933A0(v46, &unk_1ECAFD180, &unk_1D932E7E0);
    sub_1D92933A0(v44, &unk_1ECAFD180, &unk_1D932E7E0);
    sub_1D92974EC(v43, type metadata accessor for ControlInstanceButton.ViewModel);
    v42 = v30;
  }

  return sub_1D92933A0(v42, &unk_1ECAFD180, &unk_1D932E7E0);
}

uint64_t sub_1D9318CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D9327A94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9327C54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + *(*v3 + 152));
  if (!v14)
  {
    v18 = 0;
LABEL_9:
    sub_1D9327C94();
    goto LABEL_10;
  }

  v21 = v6;
  v15 = a2;
  v16 = *(v14 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v17 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  if (*(v16 + v17))
  {
    v18 = 0;
LABEL_8:
    a2 = v15;
    v6 = v21;
    goto LABEL_9;
  }

  if (*(v3 + qword_1EDE3CCC8[0]) != 1)
  {
    v18 = 1;
    goto LABEL_8;
  }

  sub_1D9327C74();
  v18 = 1;
  a2 = v15;
  v6 = v21;
LABEL_10:
  sub_1D9327C64();
  sub_1D9318F58(v13, v9, a1, v3, v18, a2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v19 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
}

uint64_t sub_1D9318F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v98) = a5;
  v102 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD398, &qword_1D93306A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v87 - v15;
  v93 = type metadata accessor for ControlIconView.Mode(0);
  v92 = *(v93 - 8);
  v17 = MEMORY[0x1EEE9AC00](v93);
  v95 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v94 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v87 - v23;
  v25 = sub_1D9327CA4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ControlIconView(0);
  v97 = *(v29 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  sub_1D9327C14();
  v104 = 0;
  if ((v31 & 1) == 0)
  {
    v104 = sub_1D9327434();
  }

  sub_1D9327BE4();
  v32 = MEMORY[0x1DA72E180](a3, v28);
  (*(v26 + 8))(v28, v25);
  v100 = a4;
  if ((v32 & 1) != 0 && *(a4 + *(*a4 + 152)))
  {
    swift_beginAccess();

    v33 = sub_1D93276C4();

    if (v33)
    {
      v34 = sub_1D93277C4();

      if (v34)
      {
        v35 = v96;
        sub_1D92F06E8(v96);
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  sub_1D9327C04();
  v36 = v93;
  swift_storeEnumTagMultiPayload();
  sub_1D931BA4C(v102, v16);
  v37 = (*(v92 + 48))(v16, 1, v36);
  v89 = a3;
  if (v37 == 1)
  {
    sub_1D92933A0(v16, &qword_1ECAFD398, &qword_1D93306A8);
  }

  else
  {
    sub_1D92974EC(v24, type metadata accessor for ControlIconView.Mode);
    v38 = v91;
    sub_1D931EF58(v16, v91, type metadata accessor for ControlIconView.Mode);
    sub_1D931EF58(v38, v24, type metadata accessor for ControlIconView.Mode);
  }

  v39 = v94;
  sub_1D929712C(v24, v94, type metadata accessor for ControlIconView.Mode);
  sub_1D9327C04();

  v93 = sub_1D931B0C0();
  v92 = v40;
  LODWORD(v91) = v41;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v42;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v44;
  sub_1D9327534();
  v90 = v105;
  v88 = v106;
  v46 = v107;
  v47 = v95;
  sub_1D929712C(v39, v95, type metadata accessor for ControlIconView.Mode);
  v48 = v24;
  v49 = v29[7];
  v35 = v96;
  *(v96 + v29[10]) = 1;
  v50 = v29[11];
  v51 = sub_1D9326E44();
  (*(*(v51 - 8) + 56))(v35 + v50, 1, 1, v51);
  v52 = v35 + v29[12];
  *v52 = swift_getKeyPath();
  *(v52 + 8) = 0;
  sub_1D929712C(v47, v35, type metadata accessor for ControlIconView.Mode);
  *(v35 + v29[5]) = 0;
  *(v35 + v29[6]) = 0;
  *(v35 + v49) = v104;
  v53 = v35 + v29[8];
  v54 = v92;
  *v53 = v93;
  *(v53 + 8) = v54;
  *(v53 + 16) = v91 & 1;
  sub_1D92974EC(v47, type metadata accessor for ControlIconView.Mode);
  sub_1D92933A0(v99, &qword_1ECAFCBD8, &qword_1D932E920);
  sub_1D92974EC(v39, type metadata accessor for ControlIconView.Mode);
  sub_1D92974EC(v48, type metadata accessor for ControlIconView.Mode);
  v55 = v35 + v29[9];
  v56 = v88;
  *v55 = v90;
  *(v55 + 8) = v56;
  *(v55 + 16) = v46;
LABEL_13:
  if (v98)
  {
    v57 = v100;
    LODWORD(v99) = *(v100 + qword_1EDE3CCC8[0]);
  }

  else
  {
    LODWORD(v99) = 0;
    v57 = v100;
  }

  LODWORD(v101) = *(v57 + qword_1EDE3CCB0);
  v100 = sub_1D9327C24();
  v98 = v58;
  v59 = sub_1D9327C44();
  v95 = v60;
  v96 = v59;
  v61 = v103;
  sub_1D929712C(v35, v103, type metadata accessor for ControlIconView);
  (*(v97 + 56))(v61, 0, 1, v29);
  v62 = v104;
  if (!v104)
  {
    if (qword_1EDE3C838 != -1)
    {
      swift_once();
    }

    v62 = qword_1EDE400F8;
  }

  v97 = sub_1D9327C34();
  v94 = v63;
  v93 = sub_1D9327BF4();
  v92 = v64;
  v65 = *(*v57 + 152);
  if (*(v57 + v65))
  {

    LODWORD(v91) = sub_1D92C6A40();
  }

  else
  {
    LODWORD(v91) = 0;
  }

  LODWORD(v90) = sub_1D9327C84();
  if (*(v57 + v65))
  {
    swift_beginAccess();

    v66 = sub_1D93276C4();

    if (v66)
    {
      v67 = sub_1D93277C4();
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v67 = 0;
  }

  v68 = *(v57 + *(*v57 + 168));
  if (v68 && (swift_beginAccess(), (v69 = *(v68 + 32)) != 0))
  {
    v70 = [v69 actionMetadata];
    v71 = [v70 isLauncher];
  }

  else
  {
    v71 = 0;
  }

  v72 = sub_1D9327BC4();
  v74 = v73;

  sub_1D92974EC(v35, type metadata accessor for ControlIconView);
  v75 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v76 = v75[17];
  v77 = sub_1D9327A94();
  v78 = *(v77 - 8);
  (*(v78 + 16))(a6 + v76, v102, v77);
  (*(v78 + 56))(a6 + v76, 0, 1, v77);
  *a6 = v101;
  *(a6 + 1) = v99;
  v79 = v98;
  *(a6 + 8) = v100;
  *(a6 + 16) = v79;
  v80 = v95;
  *(a6 + 24) = v96;
  *(a6 + 32) = v80;
  result = sub_1D9297374(v103, a6 + v75[8], &qword_1ECAFCA50, &unk_1D932DF60);
  *(a6 + v75[9]) = v62;
  v82 = (a6 + v75[10]);
  v83 = v93;
  v84 = v94;
  *v82 = v97;
  v82[1] = v84;
  v85 = (a6 + v75[11]);
  *v85 = v83;
  v85[1] = v92;
  *(a6 + v75[12]) = v91 & 1;
  *(a6 + v75[13]) = v90 & 1;
  *(a6 + v75[14]) = v67 & 1;
  *(a6 + v75[15]) = v71;
  v86 = (a6 + v75[16]);
  *v86 = v72;
  v86[1] = v74;
  return result;
}

uint64_t sub_1D9319AAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D93173FC(v4);
  }

  return result;
}

uint64_t sub_1D9319B0C()
{
  v1[5] = v0;
  v2 = sub_1D9326884();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  v1[11] = swift_task_alloc();
  v3 = sub_1D9327A94();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_1D9326BE4();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_1D93280A4();
  v1[21] = sub_1D9328094();
  v6 = sub_1D9328064();
  v1[22] = v6;
  v1[23] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D9319D58, v6, v5);
}

uint64_t sub_1D9319D58(uint64_t a1, uint64_t a2)
{
  v83 = v2;
  v3 = v2[5];
  BSDispatchQueueAssertMain();
  v4 = *v3;
  v5 = *(v3 + *(*v3 + 168));
  v2[24] = v5;
  if (!v5)
  {

    sub_1D92F0450();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
LABEL_22:

    v8 = v2[1];
    goto LABEL_23;
  }

  v6 = v2[5];
  v7 = qword_1EDE3CCC8[0];
  v2[25] = qword_1EDE3CCC8[0];
  if (*(v6 + v7))
  {

    v8 = v2[1];
LABEL_23:

    return v8();
  }

  v10 = v2[20];
  v11 = v2[15];
  v12 = v2[16];
  v13 = *(v4 + 176);
  v2[26] = v13;
  v14 = *(v12 + 16);
  v2[27] = v14;
  v2[28] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v77 = v13;
  v76 = v14;
  v14(v10, v6 + v13, v11);

  v15 = sub_1D9326BC4();
  v16 = sub_1D9328234();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v2[20];
  v19 = v2[15];
  v20 = v2[16];
  if (v17)
  {
    v21 = v2[5];
    v80 = v2[15];
    v22 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v82[0] = v73;
    *v22 = 136446466;
    v23 = (v21 + *(*v21 + 184));
    v74 = v18;
    v24 = *v23;
    v25 = v23[1];

    v26 = sub_1D9293524(v24, v25, v82);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_1D9327F54();
    v29 = sub_1D9293524(v27, v28, v82);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_1D928E000, v15, v16, "[%{public}s] Control action: asked to perform. instance:%{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v73, -1, -1);
    MEMORY[0x1DA72F920](v22, -1, -1);

    v30 = *(v20 + 8);
    v30(v74, v80);
  }

  else
  {

    v30 = *(v20 + 8);
    v30(v18, v19);
  }

  v81 = v30;
  v2[29] = v30;
  v31 = v2[10];
  v32 = v2[5];
  v33 = *(*v32 + 112);
  swift_beginAccess();
  sub_1D92973DC(v32 + v33, v31, &unk_1ECAFD180, &unk_1D932E7E0);
  v34 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v75 = *(*(v34 - 8) + 48);
  if (v75(v31, 1, v34))
  {
    v35 = v2[12];
    v36 = v2[13];
    v38 = v2[10];
    v37 = v2[11];

    sub_1D92933A0(v38, &unk_1ECAFD180, &unk_1D932E7E0);
    (*(v36 + 56))(v37, 1, 1, v35);
LABEL_12:
    v43 = v2[18];
    v44 = v2[15];
    sub_1D92933A0(v2[11], &qword_1ECAFD360, qword_1D93304C8);
    v76(v43, v6 + v77, v44);

    v45 = sub_1D9326BC4();
    v46 = sub_1D9328214();

    v79 = v46;
    v47 = os_log_type_enabled(v45, v46);
    v48 = v2[18];
    v49 = v2[15];
    if (v47)
    {
      v78 = v2[18];
      v50 = v2[9];
      v51 = v2[5];
      v52 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v52 = 136446722;
      v53 = (v51 + *(*v51 + 184));
      v72 = v49;
      v54 = v33;
      v55 = *v53;
      v56 = v53[1];

      v57 = sub_1D9293524(v55, v56, v82);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      sub_1D92973DC(v32 + v54, v50, &unk_1ECAFD180, &unk_1D932E7E0);
      v58 = v75(v50, 1, v34);
      sub_1D92933A0(v50, &unk_1ECAFD180, &unk_1D932E7E0);
      if (v58 == 1)
      {
        v59 = 7104878;
      }

      else
      {
        v59 = 0x6C696E20746F6ELL;
      }

      if (v58 == 1)
      {
        v60 = 0xE300000000000000;
      }

      else
      {
        v60 = 0xE700000000000000;
      }

      v61 = sub_1D9293524(v59, v60, v82);

      *(v52 + 14) = v61;
      *(v52 + 22) = 2082;
      v62 = sub_1D9327F54();
      v64 = sub_1D9293524(v62, v63, v82);

      *(v52 + 24) = v64;
      _os_log_impl(&dword_1D928E000, v45, v79, "[%{public}s] viewModel?.action is nil, viewModel is %{public}s, instance:%{public}s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v71, -1, -1);
      MEMORY[0x1DA72F920](v52, -1, -1);

      v65 = v78;
      v66 = v72;
    }

    else
    {

      v65 = v48;
      v66 = v49;
    }

    v81(v65, v66);
    sub_1D92F0450();
    swift_allocError();
    *v67 = 1;
    swift_willThrow();

    goto LABEL_22;
  }

  v39 = v2[12];
  v40 = v2[13];
  v42 = v2[10];
  v41 = v2[11];
  sub_1D92973DC(v42 + *(v34 + 68), v41, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92933A0(v42, &unk_1ECAFD180, &unk_1D932E7E0);
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {

    goto LABEL_12;
  }

  (*(v2[13] + 32))(v2[14], v2[11], v2[12]);
  v69 = swift_task_alloc();
  v2[30] = v69;
  *v69 = v2;
  v69[1] = sub_1D931A5A4;
  v70 = v2[14];

  return sub_1D9302D24(v70);
}

uint64_t sub_1D931A5A4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D931AB9C;
  }

  else
  {
    v5 = sub_1D931A6E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D931A6E0()
{
  sub_1D9326874();
  if (sub_1D9317478() != 2)
  {
    sub_1D931727C(1);
  }

  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_1D931A7A0;
  v2 = *(v0 + 112);

  return sub_1D92D7500(v2);
}

uint64_t sub_1D931A7A0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D931ACA4;
  }

  else
  {
    v5 = sub_1D931A8DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D931A8DC()
{
  v32 = v0;
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[5];

  v1(v3, v5 + v2, v4);

  v6 = sub_1D9326BC4();
  v7 = sub_1D9328234();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  if (v8)
  {
    v10 = v0[25];
    v29 = v0[15];
    v30 = v0[19];
    v11 = v0[5];
    v12 = v0[29];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = (v11 + *(*v11 + 184));
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_1D9293524(v16, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1026;
    *(v13 + 14) = *(v11 + v10);

    _os_log_impl(&dword_1D928E000, v6, v7, "[%{public}s] Button control action succeeded (isAnimating: %{BOOL,public}d).", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72F920](v14, -1, -1);
    MEMORY[0x1DA72F920](v13, -1, -1);

    v12(v30, v29);
  }

  else
  {
    v19 = v0[19];
    v20 = v0[15];

    v9(v19, v20);
  }

  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  v25 = v0[7];
  v24 = v0[8];
  v26 = v0[6];
  sub_1D931E330(v0[5], v24);

  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v21, v23);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D931AB9C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D931ACA4()
{
  v37 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[5];

  v2(v4, v6 + v3, v5);

  v7 = v1;
  v8 = sub_1D9326BC4();
  v9 = sub_1D9328214();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[33];
    v34 = v0[17];
    v35 = v0[29];
    v33 = v0[15];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v12 = 136446466;
    v15 = (v11 + *(*v11 + 184));
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_1D9293524(v17, v16, &v36);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2114;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_1D928E000, v8, v9, "[%{public}s] Button control action failed with error: %{public}@", v12, 0x16u);
    sub_1D92933A0(v13, &qword_1ECAFC510, &qword_1D932CEE0);
    MEMORY[0x1DA72F920](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72F920](v14, -1, -1);
    MEMORY[0x1DA72F920](v12, -1, -1);

    v35(v34, v33);
  }

  else
  {
    v21 = v0[29];
    v22 = v0[17];
    v23 = v0[15];

    v21(v22, v23);
  }

  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];
  v28 = v0[7];
  v27 = v0[8];
  v30 = v0[5];
  v29 = v0[6];
  swift_willThrow();
  sub_1D931E330(v30, v27);

  (*(v28 + 8))(v27, v29);
  (*(v25 + 8))(v24, v26);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D931AFC4()
{
  sub_1D93280A4();
  *(v0 + 16) = sub_1D9328094();
  v2 = sub_1D9328064();

  return MEMORY[0x1EEE6DFA0](sub_1D931B058, v2, v1);
}

uint64_t sub_1D931B058()
{

  BSDispatchQueueAssertMain();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D931B0C0()
{
  v1 = *v0;
  if (sub_1D9317478())
  {
    sub_1D9327544();
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v2;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v4;
    v5[5] = v1;
    sub_1D9327534();
  }

  return v7;
}

uint64_t sub_1D931B21C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1D931727C(v10);
    if (*(v12 + qword_1EDE3CCB0) == 1)
    {
      v13 = sub_1D93280D4();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_1D93280A4();

      v14 = sub_1D9328094();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v12;
      v15[5] = a5;
      *(v12 + qword_1EDE3CCC0) = sub_1D9316FD0(0, 0, v9, &unk_1D9330690, v15);
    }
  }

  return result;
}

uint64_t sub_1D931B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D9326BE4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1D9328504();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_1D93280A4();
  v4[9] = sub_1D9328094();
  v8 = sub_1D9328064();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D931B508, v8, v7);
}

uint64_t sub_1D931B508()
{
  v1 = sub_1D9328794();
  v3 = v2;
  sub_1D93286C4();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1D931B5E4;

  return sub_1D931CFD0(v1, v3, 0, 0, 1);
}

uint64_t sub_1D931B5E4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1D931B9D4;
  }

  else
  {
    v8 = sub_1D931B77C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D931B77C()
{
  v23 = v0;
  v1 = v0[13];

  sub_1D93281B4();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_1D931727C(0);
    (*(v4 + 16))(v3, v6 + *(*v6 + 176), v5);

    v7 = sub_1D9326BC4();
    v8 = sub_1D9328204();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[4];
    v11 = v0[5];
    v13 = v0[2];
    v12 = v0[3];
    if (v9)
    {
      v21 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446466;
      v16 = (v13 + *(*v13 + 184));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_1D9293524(v17, v18, &v22);

      *(v14 + 4) = v19;
      *(v14 + 12) = 1026;
      *(v14 + 14) = *(v13 + qword_1EDE3CCC8[0]);

      _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}s] Control action: active state cancelled (isAnimating: %{BOOL,public}d).", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA72F920](v15, -1, -1);
      MEMORY[0x1DA72F920](v14, -1, -1);

      (*(v10 + 8))(v21, v12);
    }

    else
    {

      (*(v10 + 8))(v11, v12);
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_1D931B9D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D931BA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD40, &qword_1D932ECC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v71[1] = v71 - v4;
  v5 = sub_1D9327A64();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v77 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD368, &qword_1D9330660);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v71 - v12;
  v14 = *(*v2 + 120);
  v72 = v2;
  v76 = *(v2 + v14);
  v15 = [v76 control];
  v16 = [v15 extensionIdentity];

  v17 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v8 + 16))(v13, &v16[v17], v7);

  sub_1D9326A74();
  sub_1D9290D60(&qword_1EDE3DA30, &qword_1ECAFD368, &qword_1D9330660, MEMORY[0x1E69940D0]);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v92 == v88)
  {
    v18 = *(v8 + 8);
    v18(v11, v7);
    v18(v13, v7);
  }

  else
  {
    v19 = sub_1D9328654();
    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v13, v7);

    if ((v19 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v21 = v76;
  v22 = [v76 control];
  v23 = [v22 kind];

  v24 = sub_1D9327F84();
  v26 = v25;

  if (v24 == 0x437070416E65704FLL && v26 == 0xEE006C6F72746E6FLL)
  {

    v27 = v77;
  }

  else
  {
    v28 = sub_1D9328654();

    v27 = v77;
    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  sub_1D9327A74();
  v30 = v73;
  v29 = v74;
  v31 = (*(v73 + 88))(v27, v74);
  if (v31 == *MEMORY[0x1E69858A0])
  {
    (*(v30 + 8))(v27, v29);
    v32 = sub_1D9327A84();
    if (!v32)
    {
      goto LABEL_61;
    }

    goto LABEL_20;
  }

  if (v31 != *MEMORY[0x1E6985898])
  {
    (*(v30 + 8))(v27, v29);
    goto LABEL_61;
  }

  v33 = qword_1EDE3CCB8;
  v34 = v72;
  v32 = *(v72 + qword_1EDE3CCB8);
  if (!v32)
  {
    v35 = [v21 control];
    v36 = [v35 intentReference];

    if (v36)
    {
      v37 = [v36 intent];

      if (v37)
      {
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
LABEL_18:
          v39 = *(v34 + v33);
          *(v34 + v33) = v38;

          v32 = *(v34 + v33);
          goto LABEL_19;
        }
      }
    }

    v38 = 0;
    goto LABEL_18;
  }

LABEL_19:
  v40 = v32;
  if (!v32)
  {
    goto LABEL_61;
  }

LABEL_20:
  v41 = [v32 appIntentIdentifier];
  if (v41)
  {
    v42 = v41;
    v75 = sub_1D9327F84();
    v76 = v43;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v77 = v32;
  v44 = [v32 serializedParameters];
  v45 = sub_1D9327EF4();

  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v45 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v51 = &qword_1ECAFD370;
  while (1)
  {
    if (!v48)
    {
      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= v49)
        {

          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0;
          goto LABEL_40;
        }

        v48 = *(v45 + 64 + 8 * v52);
        ++v50;
        if (v48)
        {
          v50 = v52;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_66:
      swift_once();
LABEL_56:
      v61 = sub_1D9326BE4();
      __swift_project_value_buffer(v61, qword_1EDE40088);

      v62 = sub_1D9326BC4();
      v63 = sub_1D9328234();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v88 = v65;
        *v64 = 136446210;
        *(v64 + 4) = sub_1D9293524(v51, v49, &v88);
        _os_log_impl(&dword_1D928E000, v62, v63, "Using shortcuts app icon for %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x1DA72F920](v65, -1, -1);
        MEMORY[0x1DA72F920](v64, -1, -1);
      }

      sub_1D9326A74();
      v66 = v78;
      sub_1D9326B24();

      sub_1D92933A0(&v92, &qword_1ECAFD378, &qword_1D9330670);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      v68 = type metadata accessor for ControlIconView.Mode(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v68 - 8) + 56))(v66, 0, 1, v68);
    }

LABEL_34:
    v53 = __clz(__rbit64(v48)) | (v50 << 6);
    sub_1D931EDA8(*(v45 + 48) + 40 * v53, &v88);
    sub_1D92936FC(*(v45 + 56) + 32 * v53, v90 + 8);
    v86 = v90[1];
    v87 = v91;
    v84 = v89;
    v85 = v90[0];
    v83 = v88;
    sub_1D92973DC(&v83, &v81, &qword_1ECAFD370, &qword_1D9330668);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      goto LABEL_28;
    }

    if (v79 == 7368801 && v80 == 0xE300000000000000)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v82);

      goto LABEL_64;
    }

    v54 = sub_1D9328654();

    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    if (v54)
    {
      break;
    }

LABEL_28:
    v48 &= v48 - 1;
    sub_1D92933A0(&v83, &qword_1ECAFD370, &qword_1D9330668);
  }

LABEL_64:
  v94 = v85;
  v95 = v86;
  v96 = v87;
  v92 = v83;
  v93 = v84;
LABEL_40:

  v55 = v76;
  sub_1D92973DC(&v92, &v88, &qword_1ECAFD378, &qword_1D9330670);
  if (!*(&v89 + 1))
  {
    sub_1D92933A0(&v88, &qword_1ECAFD378, &qword_1D9330670);
    v83 = 0u;
    v84 = 0u;
    goto LABEL_47;
  }

  sub_1D92C6364((v90 + 8), &v83);
  sub_1D931EE04(&v88);
  if (!*(&v84 + 1))
  {
LABEL_47:
    sub_1D92933A0(&v83, &qword_1ECAFC580, &qword_1D932CF48);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD380, &unk_1D9330678);
  if (swift_dynamicCast())
  {
    v56 = v88;
    if (*(v88 + 16))
    {
      v57 = sub_1D931D620(0xD000000000000010, 0x80000001D9338090);
      if (v58)
      {
        v59 = *(v56 + 56) + 16 * v57;
        v51 = *v59;
        v49 = *(v59 + 8);

        goto LABEL_49;
      }
    }
  }

LABEL_48:
  v51 = 0;
  v49 = 0;
LABEL_49:
  if (!v55)
  {
    goto LABEL_59;
  }

  if (v75 == 0x497070416E65704FLL && v55 == 0xED0000746E65746ELL)
  {

    goto LABEL_54;
  }

  v60 = sub_1D9328654();

  if ((v60 & 1) == 0)
  {
LABEL_59:

    sub_1D92933A0(&v92, &qword_1ECAFD378, &qword_1D9330670);
    goto LABEL_61;
  }

LABEL_54:
  if (v49)
  {
    if (qword_1EDE3BF60 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_66;
  }

  sub_1D92933A0(&v92, &qword_1ECAFD378, &qword_1D9330670);

LABEL_61:
  v70 = type metadata accessor for ControlIconView.Mode(0);
  return (*(*(v70 - 8) + 56))(v78, 1, 1, v70);
}

uint64_t ControlInstanceButton.__allocating_init(instanceIdentity:client:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + qword_1EDE3CCC0) = 0;
  *(v4 + qword_1EDE3CCB0) = 0;
  *(v4 + qword_1EDE3CCC8) = 0;
  *(v4 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(a2, v7);
  v5 = sub_1D92E0EA4(a1, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}

uint64_t ControlInstanceButton.init(instanceIdentity:client:)(void *a1, void *a2)
{
  *(v2 + qword_1EDE3CCC0) = 0;
  *(v2 + qword_1EDE3CCB0) = 0;
  *(v2 + qword_1EDE3CCC8) = 0;
  *(v2 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(a2, v7);
  v5 = sub_1D92E0EA4(a1, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}

void sub_1D931C784()
{

  v1 = *(v0 + qword_1EDE3CCB8);
}

uint64_t ControlInstanceButton.deinit()
{
  sub_1D9302744();
  v1 = v0;

  return v1;
}

uint64_t ControlInstanceButton.__deallocating_deinit()
{
  sub_1D9302744();
  v1 = v0;

  v2 = *(v1 + qword_1EDE3CCB8);

  v3 = *(*v1 + 48);
  v4 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v3, v4);
}

uint64_t sub_1D931C8A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D92D9CEC;

  return sub_1D9319B0C();
}

uint64_t sub_1D931C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D9326BE4();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1D9328504();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  sub_1D93280A4();
  v5[10] = sub_1D9328094();
  v9 = sub_1D9328064();
  v5[11] = v9;
  v5[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D931CA84, v9, v8);
}

uint64_t sub_1D931CA84()
{
  sub_1D9326864();
  v1 = sub_1D9328794();
  v3 = v2;
  sub_1D93286C4();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D931CB68;

  return sub_1D931CFD0(v1, v3, 0, 0, 1);
}

uint64_t sub_1D931CB68()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1D931CF58;
  }

  else
  {
    v8 = sub_1D931CD00;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D931CD00()
{
  v23 = v0;
  v1 = v0[14];

  sub_1D93281B4();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    v4 = v0[5];
    v3 = v0[6];
    v6 = v0[3];
    v5 = v0[4];
    sub_1D931727C(0);
    (*(v4 + 16))(v3, v6 + *(*v6 + 176), v5);

    v7 = sub_1D9326BC4();
    v8 = sub_1D9328204();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[5];
    v11 = v0[6];
    v13 = v0[3];
    v12 = v0[4];
    if (v9)
    {
      v21 = v0[6];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446466;
      v16 = (v13 + *(*v13 + 184));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_1D9293524(v17, v18, &v22);

      *(v14 + 4) = v19;
      *(v14 + 12) = 1026;
      *(v14 + 14) = *(v13 + qword_1EDE3CCC8[0]);

      _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}s] Control action: animation completed after waiting for minimum duration to pass (isAnimating: %{BOOL,public}d).", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA72F920](v15, -1, -1);
      MEMORY[0x1DA72F920](v14, -1, -1);

      (*(v10 + 8))(v21, v12);
    }

    else
    {

      (*(v10 + 8))(v11, v12);
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_1D931CF58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D931CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D93284F4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D931D0D0, 0, 0);
}

uint64_t sub_1D931D0D0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D9328504();
  v5 = sub_1D9293198(&qword_1ECAFD388, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D93286A4();
  sub_1D9293198(&qword_1ECAFD390, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D9328514();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D931D260;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D931D260()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D931D41C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D931D41C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D931D488(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D931D4FC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1D931D52C(uint64_t a1)
{
  v2 = sub_1D9328404();

  return sub_1D931D698(a1, v2);
}

unint64_t sub_1D931D570(uint64_t a1)
{
  v2 = sub_1D9328714();

  return sub_1D931D760(a1, v2);
}

unint64_t sub_1D931D5B4(uint64_t a1)
{
  sub_1D9328724();
  sub_1D92F4CB4(v4);
  v2 = sub_1D9328764();

  return sub_1D931D7CC(a1, v2);
}

unint64_t sub_1D931D620(uint64_t a1, uint64_t a2)
{
  sub_1D9328724();
  sub_1D9327FB4();
  v4 = sub_1D9328764();

  return sub_1D931DA58(a1, a2, v4);
}

unint64_t sub_1D931D698(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D931EDA8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA72E9C0](v9, a1);
      sub_1D931EE04(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D931D760(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D931D7CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIconImageCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + 64;
  v18 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v16 = ~v9;
    v11 = *(v6 + 72);
    do
    {
      sub_1D929712C(*(v18 + 48) + v11 * v10, v8, type metadata accessor for AppIconImageCache.CacheKey);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9290D60(&qword_1ECAFCF18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E6994150]);
      sub_1D9327FF4();
      sub_1D9327FF4();
      if (v21 == v19 && v22 == v20)
      {
      }

      else
      {
        v12 = sub_1D9328654();

        if ((v12 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (*&v8[*(v5 + 20)] != *(a1 + *(v5 + 20)))
      {
LABEL_3:
        sub_1D92974EC(v8, type metadata accessor for AppIconImageCache.CacheKey);
        goto LABEL_4;
      }

      v13 = *&v8[*(v5 + 24)];
      sub_1D92974EC(v8, type metadata accessor for AppIconImageCache.CacheKey);
      if (v13 == *(a1 + *(v5 + 24)))
      {
        return v10;
      }

LABEL_4:
      v10 = (v10 + 1) & v16;
    }

    while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D931DA58(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D9328654())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL _s16ChronoUIServices21ControlInstanceButtonC9ViewModelV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D9327A94();
  v71 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E0, &unk_1D9330740);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v67 - v9;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    return 0;
  }

  v21 = *(a1 + 2);
  v22 = *(a2 + 2);
  if (v21)
  {
    if (!v22 || (*(a1 + 1) != *(a2 + 1) || v21 != v22) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 4);
  v24 = *(a2 + 4);
  if (v23)
  {
    if (!v24 || (*(a1 + 3) != *(a2 + 3) || v23 != v24) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v67 = v4;
  v68 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v25 = v68[8];
  v26 = *(v17 + 48);
  sub_1D92973DC(&a1[v25], v19, &qword_1ECAFCA50, &unk_1D932DF60);
  v27 = &a2[v25];
  v28 = v26;
  sub_1D92973DC(v27, &v19[v26], &qword_1ECAFCA50, &unk_1D932DF60);
  v29 = *(v11 + 48);
  if (v29(v19, 1, v10) == 1)
  {
    if (v29(&v19[v28], 1, v10) == 1)
    {
      sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
      goto LABEL_25;
    }

LABEL_22:
    v30 = &qword_1ECAFD208;
    v31 = &unk_1D932FED0;
    v32 = v19;
LABEL_23:
    sub_1D92933A0(v32, v30, v31);
    return 0;
  }

  sub_1D92973DC(v19, v16, &qword_1ECAFCA50, &unk_1D932DF60);
  if (v29(&v19[v28], 1, v10) == 1)
  {
    sub_1D92974EC(v16, type metadata accessor for ControlIconView);
    goto LABEL_22;
  }

  sub_1D931EF58(&v19[v28], v13, type metadata accessor for ControlIconView);
  v33 = static ControlIconView.== infix(_:_:)(v16, v13);
  sub_1D92974EC(v13, type metadata accessor for ControlIconView);
  sub_1D92974EC(v16, type metadata accessor for ControlIconView);
  sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v34 = v68;
  v35 = v68[9];
  v36 = *&a2[v35];
  if (*&a1[v35])
  {
    if (!v36)
    {
      return 0;
    }

    v37 = sub_1D9327364();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v38 = v34[10];
  v39 = &a1[v38];
  v40 = *&a1[v38 + 8];
  v41 = &a2[v38];
  v42 = *(v41 + 1);
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v34[11];
  v44 = &a1[v43];
  v45 = *&a1[v43 + 8];
  v46 = &a2[v43];
  v47 = *(v46 + 1);
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  if (a1[v34[12]] != a2[v34[12]] || a1[v34[13]] != a2[v34[13]] || a1[v34[14]] != a2[v34[14]] || a1[v34[15]] != a2[v34[15]])
  {
    return 0;
  }

  v48 = v34[16];
  v49 = &a1[v48];
  v50 = *&a1[v48 + 8];
  v51 = &a2[v48];
  v52 = *(v51 + 1);
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  v53 = v68[17];
  v54 = *(v8 + 48);
  v55 = &a1[v53];
  v56 = v72;
  sub_1D92973DC(v55, v72, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92973DC(&a2[v53], v56 + v54, &qword_1ECAFD360, qword_1D93304C8);
  v57 = *(v71 + 48);
  if (v57(v56, 1, v67) != 1)
  {
    v58 = v72;
    sub_1D92973DC(v72, v70, &qword_1ECAFD360, qword_1D93304C8);
    if (v57(v58 + v54, 1, v67) == 1)
    {
      (*(v71 + 8))(v70, v67);
      goto LABEL_60;
    }

    v59 = v71;
    v60 = v72;
    v61 = v72 + v54;
    v62 = v69;
    v63 = v67;
    (*(v71 + 32))(v69, v61, v67);
    sub_1D9293198(&qword_1EDE3BC90, MEMORY[0x1E69858A8], MEMORY[0x1E69858B8]);
    v64 = v70;
    v65 = sub_1D9327F64();
    v66 = *(v59 + 8);
    v66(v62, v63);
    v66(v64, v63);
    sub_1D92933A0(v60, &qword_1ECAFD360, qword_1D93304C8);
    return (v65 & 1) != 0;
  }

  if (v57(v72 + v54, 1, v67) != 1)
  {
LABEL_60:
    v30 = &qword_1ECAFD3E0;
    v31 = &unk_1D9330740;
    v32 = v72;
    goto LABEL_23;
  }

  sub_1D92933A0(v72, &qword_1ECAFD360, qword_1D93304C8);
  return 1;
}

uint64_t sub_1D931E330(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v37 - v4);
  v6 = sub_1D9326BE4();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9326884();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  result = sub_1D9317478();
  if (result == 1)
  {
    v41 = v5;
    sub_1D9326854();
    sub_1D9326874();
    sub_1D9293198(&qword_1ECAFD3D8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v17 = sub_1D9327F44();
    v18 = *(v10 + 8);
    v18(v13, v9);
    if (v17)
    {
      v19 = sub_1D93280D4();
      (*(*(v19 - 8) + 56))(v41, 1, 1, v19);
      (*(v10 + 16))(v13, v15, v9);
      sub_1D93280A4();

      v20 = sub_1D9328094();
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = swift_allocObject();
      v43 = v10 + 8;
      v23 = v22;
      v24 = MEMORY[0x1E69E85E0];
      *(v22 + 16) = v20;
      *(v22 + 24) = v24;
      (*(v10 + 32))(v22 + v21, v13, v9);
      *(v23 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
      v25 = sub_1D9316FD0(0, 0, v41, &unk_1D9330728, v23);
      v18(v15, v9);
      *(a1 + qword_1EDE3CCC0) = v25;
    }

    else
    {
      v40 = v15;
      v41 = v18;
      sub_1D931727C(0);
      v26 = v42;
      v27 = v43;
      (*(v42 + 16))(v8, a1 + *(*a1 + 176), v43);

      v28 = sub_1D9326BC4();
      v29 = sub_1D9328204();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = v29;
        v31 = v30;
        v38 = swift_slowAlloc();
        v44 = v38;
        *v31 = 136446466;
        v32 = (a1 + *(*a1 + 184));
        v33 = *v32;
        v34 = v32[1];

        v35 = sub_1D9293524(v33, v34, &v44);

        *(v31 + 4) = v35;
        *(v31 + 12) = 1026;
        *(v31 + 14) = *(a1 + qword_1EDE3CCC8[0]);

        _os_log_impl(&dword_1D928E000, v28, v39, "[%{public}s] Control action: animation completed (isAnimating: %{BOOL,public}d).", v31, 0x12u);
        v36 = v38;
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1DA72F920](v36, -1, -1);
        MEMORY[0x1DA72F920](v31, -1, -1);
      }

      else
      {
      }

      (*(v26 + 8))(v8, v27);
      return v41(v40, v9);
    }
  }

  return result;
}

uint64_t sub_1D931E850(uint64_t a1)
{
  result = sub_1D9293198(&qword_1EDE3CCA8, type metadata accessor for ControlInstanceButton.ViewModel, &protocol conformance descriptor for ControlInstanceButton.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of ControlInstanceButton.performAction()()
{
  v4 = (*(*v0 + 808) + **(*v0 + 808));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D92DA198;

  return v4();
}

uint64_t dispatch thunk of ControlInstanceButton.setState(_:)()
{
  v4 = (*(*v0 + 816) + **(*v0 + 816));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D92DA198;

  return v4();
}

void sub_1D931EBD0(uint64_t a1)
{
  sub_1D931ED08(319, &qword_1EDE3DA78, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D931ED54(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
    if (v2 <= 0x3F)
    {
      sub_1D931ED08(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0]);
      if (v3 <= 0x3F)
      {
        sub_1D931ED54(319, &qword_1EDE3BC88, MEMORY[0x1E69858A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D931ED08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D931ED54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D931EE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92DA198;

  return sub_1D931B3B8(a1, v4, v5, v6);
}

uint64_t sub_1D931EF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D931EFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D931F030(uint64_t a1)
{
  v4 = *(sub_1D9326884() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D92D9CEC;

  return sub_1D931C934(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D931F150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92DA198;

  return sub_1D9316998(a1, v4, v5, v6);
}

uint64_t ControlInstanceToggle.ViewModel.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.icon.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void *ControlInstanceToggle.ViewModel.Option.platformIcon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.tint.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.status.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.status.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.actionHint.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.currentValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.currentValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.currentTint.getter()
{
  type metadata accessor for ControlInstanceToggle.ViewModel(0);
}

uint64_t ControlInstanceToggle.ViewModel.currentTint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.on.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 40);

  return sub_1D93248D8(a1, v3);
}

uint64_t ControlInstanceToggle.ViewModel.off.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 44);

  return sub_1D93248D8(a1, v3);
}

uint64_t ControlInstanceToggle.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 64));

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D931FDA8()
{
  v1 = v0;
  v60 = sub_1D9326BE4();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD400, &unk_1D9330950);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - v10;
  v12 = sub_1D9327EC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v51 - v23;
  BSDispatchQueueAssertMain();
  v25 = *(v4 + 56);
  v58 = v3;
  v59 = v24;
  v52 = v25;
  v25(v24, 1, 1, v3);
  v26 = *(v1 + *(*v1 + 152));
  if (!v26)
  {
    goto LABEL_4;
  }

  BSDispatchQueueAssertMain();
  v27 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v26 + v27, v8, &qword_1ECAFC4F0, &qword_1D932CC18);

  v28 = sub_1D9327B44();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    sub_1D92933A0(v8, &qword_1ECAFC4F0, &qword_1D932CC18);
LABEL_4:
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_5:
    sub_1D92933A0(v11, &unk_1ECAFD400, &unk_1D9330950);
    v30 = v59;
    goto LABEL_6;
  }

  sub_1D9327B34();
  (*(v29 + 8))(v8, v28);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_5;
  }

  v48 = v51;
  (*(v13 + 32))(v51, v11, v12);
  v49 = v57;
  sub_1D93205FC(v48, v57);
  (*(v13 + 8))(v48, v12);
  v30 = v59;
  sub_1D92933A0(v59, &qword_1ECAFCBC0, &unk_1D932E7C0);
  sub_1D9297374(v49, v30, &qword_1ECAFCBC0, &unk_1D932E7C0);
LABEL_6:
  sub_1D92973DC(v30, v20, &qword_1ECAFCBC0, &unk_1D932E7C0);
  v31 = v58;
  if ((*(v4 + 48))(v20, 1, v58) == 1)
  {
    sub_1D92933A0(v20, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v33 = v55;
    v32 = v56;
    (*(v56 + 16))(v55, v1 + *(*v1 + 176), v60);

    v34 = sub_1D9326BC4();
    v35 = sub_1D9328234();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v30;
      v38 = swift_slowAlloc();
      v61[0] = v38;
      *v36 = 136446210;
      v39 = (v1 + *(*v1 + 184));
      v40 = *v39;
      v41 = v39[1];

      v42 = sub_1D9293524(v40, v41, v61);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1D928E000, v34, v35, "[%{public}s] No view model changes found.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1DA72F920](v38, -1, -1);
      MEMORY[0x1DA72F920](v36, -1, -1);

      (*(v32 + 8))(v33, v60);
      v43 = v37;
    }

    else
    {

      (*(v32 + 8))(v33, v60);
      v43 = v30;
    }
  }

  else
  {
    v44 = v54;
    sub_1D93250E0(v20, v54, type metadata accessor for ControlInstanceToggle.ViewModel);
    v45 = v57;
    sub_1D9325018(v44, v57, type metadata accessor for ControlInstanceToggle.ViewModel);
    v52(v45, 0, 1, v31);
    v46 = *(*v1 + 112);
    swift_beginAccess();
    v47 = v53;
    sub_1D92973DC(v1 + v46, v53, &qword_1ECAFCBC0, &unk_1D932E7C0);
    swift_beginAccess();
    sub_1D9325148(v45, v1 + v46);
    swift_endAccess();
    sub_1D931601C(v47);
    sub_1D92933A0(v47, &qword_1ECAFCBC0, &unk_1D932E7C0);
    sub_1D92933A0(v45, &qword_1ECAFCBC0, &unk_1D932E7C0);
    sub_1D9325080(v44, type metadata accessor for ControlInstanceToggle.ViewModel);
    v43 = v30;
  }

  return sub_1D92933A0(v43, &qword_1ECAFCBC0, &unk_1D932E7C0);
}

uint64_t sub_1D93205FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v84 - v7;
  v86 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v84 - v10;
  v89 = sub_1D9327EC4();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlIconView(0);
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D9327E94();
  v16 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v97 = &v84 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = (&v84 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v102 = (&v84 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v101 = (&v84 - v28);
  BSDispatchQueueAssertMain();
  v29 = *(*v2 + 152);
  v104 = v2;
  v30 = *(v2 + v29);
  v95 = v29;
  v93 = v15;
  v90 = v13;
  if (v30 && (, v31 = sub_1D92C6A40(), , (v31 & 1) != 0) || (BSDispatchQueueAssertMain(), (v32 = *(v104 + v29)) == 0) || (, BSDispatchQueueAssertMain(), v33 = *(v32 + 32), , , !v33))
  {
    v35 = 0;
  }

  else
  {
    v34 = sub_1D9326A24();

    v35 = v34 > 0;
  }

  v36 = v105;
  sub_1D9327DF4();
  v37 = v101;
  sub_1D93211EC(v101);
  v38 = *(v16 + 8);
  v39 = v94;
  v38(v18, v94);
  sub_1D9327E04();
  v40 = v102;
  sub_1D93211EC(v102);
  v38(v18, v39);
  v96 = v35;
  if (v35)
  {
    v41 = v37;
  }

  else
  {
    v41 = v40;
  }

  v42 = v103;
  sub_1D9325018(v41, v103, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  v91 = v42[4];
  sub_1D9327E14();
  v43 = MEMORY[0x1DA72E390](v36, v12);
  (*(v88 + 8))(v12, v89);
  v44 = v93;
  v45 = v95;
  if ((v43 & 1) != 0 && *(v104 + v95))
  {
    swift_beginAccess();

    v46 = sub_1D93276C4();

    if (v46)
    {
      v47 = sub_1D93277C4();

      if (v47)
      {
        sub_1D92F06E8(v44);
        v48 = v91;
        v49 = v90;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v50 = v96;
  v84 = a2;
  if (v96)
  {
    sub_1D9327DF4();
  }

  else
  {
    sub_1D9327E04();
  }

  v51 = v85;
  sub_1D9327E44();
  v38(v18, v94);
  LOBYTE(v114) = v50;
  v48 = v91;

  sub_1D9327544();
  v52 = v106;
  v53 = v107;
  v54 = v108;
  v55 = v87;
  sub_1D92973DC(v51, v87, &qword_1ECAFCBD8, &qword_1D932E920);
  swift_storeEnumTagMultiPayload();
  v49 = v90;
  v56 = v90[7];
  *(v44 + v90[10]) = 1;
  v57 = v49[11];
  v58 = sub_1D9326E44();
  (*(*(v58 - 8) + 56))(v44 + v57, 1, 1, v58);
  v59 = v44 + v49[12];
  *v59 = swift_getKeyPath();
  *(v59 + 8) = 0;
  sub_1D9325018(v55, v44, type metadata accessor for ControlIconView.Mode);
  *(v44 + v49[5]) = 0;
  *(v44 + v49[6]) = 1;
  *(v44 + v56) = v48;
  v60 = v44 + v49[8];
  *v60 = v52;
  *(v60 + 8) = v53;
  *(v60 + 16) = v54;
  v111 = v52;
  v112 = v53;
  v113 = v54;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v110, v61);
  v109 = v110;
  sub_1D9327544();
  sub_1D9325080(v55, type metadata accessor for ControlIconView.Mode);
  sub_1D92933A0(v51, &qword_1ECAFCBD8, &qword_1D932E920);
  v62 = v115;
  v63 = v116;
  v64 = v44 + v49[9];
  *v64 = v114;
  *(v64 + 8) = v62;
  *(v64 + 16) = v63;
  v45 = v95;
  a2 = v84;
LABEL_20:
  v95 = sub_1D9327E24();
  v94 = v65;
  v91 = sub_1D9327EB4();
  v89 = v66;
  v67 = v99;
  sub_1D9325018(v44, v99, type metadata accessor for ControlIconView);
  (*(v92 + 56))(v67, 0, 1, v49);
  v68 = v103[1];
  v92 = *v103;
  if (v48)
  {

    v69 = v48;
  }

  else
  {
    v70 = qword_1EDE3C838;

    if (v70 != -1)
    {
      swift_once();
    }

    v69 = qword_1EDE400F8;
  }

  sub_1D9325018(v101, v97, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9325018(v102, v98, type metadata accessor for ControlInstanceToggle.ViewModel.Option);

  sub_1D9327DC4();
  if (*(v104 + v45))
  {

    v71 = sub_1D92C6A40();
  }

  else
  {
    v71 = 0;
  }

  v72 = sub_1D9327EA4();
  if (*(v104 + v45))
  {
    swift_beginAccess();

    v73 = sub_1D93276C4();

    if (v73)
    {
      v74 = sub_1D93277C4();
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v74 = 0;
  }

  v75 = sub_1D9327DD4();
  v77 = v76;
  sub_1D9325080(v44, type metadata accessor for ControlIconView);
  sub_1D9325080(v102, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9325080(v101, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  *a2 = v96;
  v78 = v94;
  *(a2 + 8) = v95;
  *(a2 + 16) = v78;
  v79 = v89;
  *(a2 + 24) = v91;
  *(a2 + 32) = v79;
  v80 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  sub_1D9297374(v99, a2 + v80[7], &qword_1ECAFCA50, &unk_1D932DF60);
  v81 = (a2 + v80[8]);
  *v81 = v92;
  v81[1] = v68;
  *(a2 + v80[9]) = v69;
  sub_1D93250E0(v97, a2 + v80[10], type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D93250E0(v98, a2 + v80[11], type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9297374(v100, a2 + v80[12], &qword_1ECAFD1A8, &qword_1D932FC48);
  *(a2 + v80[13]) = v71 & 1;
  *(a2 + v80[14]) = v72 & 1;
  *(a2 + v80[15]) = v74 & 1;
  v82 = (a2 + v80[16]);
  *v82 = v75;
  v82[1] = v77;
  sub_1D9325080(v103, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  return (*(*(v80 - 1) + 56))(a2, 0, 1, v80);
}

uint64_t sub_1D93211EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1D9327E24();
  v35 = v12;
  v36 = v11;
  sub_1D9327E44();
  v13 = sub_1D93271E4();
  v14 = *(v13 - 8);
  v34 = *(v14 + 48);
  if (v34(v10, 1, v13) == 1)
  {
    sub_1D92933A0(v10, &qword_1ECAFCBD8, &qword_1D932E920);
    v33 = 0;
  }

  else
  {
    v15 = sub_1D93270E4();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v33 = sub_1D93271A4();
    sub_1D92933A0(v4, &qword_1ECAFCE68, &qword_1D932F470);
    (*(v14 + 8))(v10, v13);
  }

  sub_1D9327E54();
  v37 = v13;
  v38 = v8;
  v32 = v14;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1D9327434();
  }

  v18 = sub_1D9327E84();
  v20 = v19;
  v21 = sub_1D9327E34();
  v23 = v22;
  v24 = *(type metadata accessor for ControlInstanceToggle.ViewModel.Option(0) + 40);
  sub_1D9327E74();
  v25 = sub_1D9327A94();
  (*(*(v25 - 8) + 56))(a1 + v24, 0, 1, v25);
  v26 = v35;
  *a1 = v36;
  a1[1] = v26;
  a1[2] = v33;
  a1[4] = v17;
  a1[5] = v18;
  a1[6] = v20;
  a1[7] = v21;
  a1[8] = v23;
  v27 = v38;
  sub_1D9327E44();
  v28 = v37;
  if (v34(v27, 1, v37) == 1)
  {
    result = sub_1D92933A0(v27, &qword_1ECAFCBD8, &qword_1D932E920);
    v30 = 0;
  }

  else
  {
    v30 = sub_1D9327174();
    result = (*(v32 + 8))(v27, v28);
  }

  a1[3] = v30;
  return result;
}

uint64_t sub_1D9321554@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = *(*v2 + 112);
  if (a1)
  {
    swift_beginAccess();
    sub_1D92973DC(v2 + v14, v10, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v15 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
    if ((*(*(v15 - 8) + 48))(v10, 1, v15))
    {
      v8 = v10;
LABEL_5:
      sub_1D92933A0(v8, &qword_1ECAFCBC0, &unk_1D932E7C0);
      v17 = sub_1D9327A94();
      (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
LABEL_9:
      sub_1D92933A0(v13, &qword_1ECAFD360, qword_1D93304C8);
      sub_1D92F0450();
      swift_allocError();
      *v23 = 1;
      return swift_willThrow();
    }

    v18 = (v15 + 40);
  }

  else
  {
    swift_beginAccess();
    sub_1D92973DC(v2 + v14, v8, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v16 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
    if ((*(*(v16 - 8) + 48))(v8, 1, v16))
    {
      goto LABEL_5;
    }

    v18 = (v16 + 44);
    v10 = v8;
  }

  v19 = *v18;
  v20 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  sub_1D92973DC(&v10[v19 + *(v20 + 40)], v13, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92933A0(v10, &qword_1ECAFCBC0, &unk_1D932E7C0);
  v21 = sub_1D9327A94();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    goto LABEL_9;
  }

  return (*(v22 + 32))(a2, v13, v21);
}

uint64_t sub_1D93218CC()
{
  v1[12] = v0;
  v2 = sub_1D9327A94();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_1D9326BE4();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_1D93280A4();
  v1[21] = sub_1D9328094();
  v5 = sub_1D9328064();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D9321A34, v5, v4);
}

uint64_t sub_1D9321A34(uint64_t a1, uint64_t a2)
{
  v34 = v2;
  v3 = *(v2 + 160);
  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  v6 = *(v2 + 96);
  BSDispatchQueueAssertMain();
  v7 = *(*v6 + 176);
  *(v2 + 192) = v7;
  v8 = *(v5 + 16);
  *(v2 + 200) = v8;
  *(v2 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);

  v9 = sub_1D9326BC4();
  v10 = sub_1D9328234();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v2 + 160);
  v14 = *(v2 + 128);
  v13 = *(v2 + 136);
  if (v11)
  {
    v15 = *(v2 + 96);
    v32 = *(v2 + 160);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136446210;
    v18 = (v15 + *(*v15 + 184));
    v19 = *v18;
    v20 = v18[1];

    v21 = sub_1D9293524(v19, v20, &v33);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1D928E000, v9, v10, "[%{public}s] Asked to perform control action", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72F920](v17, -1, -1);
    MEMORY[0x1DA72F920](v16, -1, -1);

    v22 = *(v13 + 8);
    v22(v32, v14);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
  }

  *(v2 + 216) = v22;
  v23 = *(v2 + 96);
  BSDispatchQueueAssertMain();
  v24 = *(*v23 + 152);
  *(v2 + 224) = v24;
  v25 = *(v23 + v24);
  if (v25 && (, BSDispatchQueueAssertMain(), v26 = *(v25 + 32), , , v26))
  {
    v27 = sub_1D9326A24();

    v28 = v27 < 1;
  }

  else
  {
    v28 = 1;
  }

  *(v2 + 280) = v28;
  sub_1D9321554(v28, *(v2 + 120));
  v29 = swift_task_alloc();
  *(v2 + 232) = v29;
  *v29 = v2;
  v29[1] = sub_1D9321D78;
  v30 = *(v2 + 120);

  return sub_1D9303580(v30);
}

uint64_t sub_1D9321D78()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D9322664;
  }

  else
  {
    v5 = sub_1D9321EB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D9321EB4()
{
  v33 = v0;
  v1 = *(*(v0 + 96) + *(v0 + 224));
  if (v1 && (, BSDispatchQueueAssertMain(), v2 = *(v1 + 32), , , v2))
  {
    v3 = sub_1D93269F4();
  }

  else
  {
    sub_1D9326A34();
    v3 = sub_1D9326A14();
  }

  *(v0 + 248) = v3;
  v4 = *(v0 + 96);
  v5 = *(*v4 + 168);
  if (*(v4 + v5))
  {

    sub_1D92D3994(v0 + 16);
    if (*(v0 + 40))
    {
      sub_1D929CF00(v0 + 16, v0 + 56);
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    else
    {
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      memset(v31, 0, sizeof(v31));
      v32 = 0;
    }

    sub_1D92D3B80(v31);
  }

  sub_1D931FDA8();
  v6 = *(v4 + v5);
  *(v0 + 256) = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = sub_1D93222EC;
    v8 = *(v0 + 120);

    return sub_1D92D7500(v8);
  }

  else
  {

    (*(v0 + 200))(*(v0 + 152), *(v0 + 96) + *(v0 + 192), *(v0 + 128));

    v10 = sub_1D9326BC4();
    v11 = sub_1D9328234();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 216);
    v14 = *(v0 + 152);
    v30 = *(v0 + 128);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);
    if (v12)
    {
      v29 = *(v0 + 120);
      v18 = *(v0 + 96);
      v28 = *(v0 + 216);
      v19 = swift_slowAlloc();
      v27 = v14;
      v20 = swift_slowAlloc();
      *&v31[0] = v20;
      *v19 = 136446210;
      v21 = (v18 + *(*v18 + 184));
      v26 = v17;
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_1D9293524(v22, v23, v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D928E000, v10, v11, "[%{public}s] Toggle control action succeeded", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72F920](v20, -1, -1);
      MEMORY[0x1DA72F920](v19, -1, -1);

      v28(v27, v30);
      (*(v16 + 8))(v29, v26);
    }

    else
    {

      v13(v14, v30);
      (*(v16 + 8))(v15, v17);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1D93222EC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1D9322718;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1D9322408;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D9322408()
{
  v24 = v0;

  (*(v0 + 200))(*(v0 + 152), *(v0 + 96) + *(v0 + 192), *(v0 + 128));

  v1 = sub_1D9326BC4();
  v2 = sub_1D9328234();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 152);
  v22 = *(v0 + 128);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (v3)
  {
    v21 = *(v0 + 120);
    v9 = *(v0 + 96);
    v20 = *(v0 + 216);
    v10 = swift_slowAlloc();
    v19 = v5;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v12 = (v9 + *(*v9 + 184));
    v18 = v8;
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1D9293524(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D928E000, v1, v2, "[%{public}s] Toggle control action succeeded", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72F920](v11, -1, -1);
    MEMORY[0x1DA72F920](v10, -1, -1);

    v20(v19, v22);
    (*(v7 + 8))(v21, v18);
  }

  else
  {

    v4(v5, v22);
    (*(v7 + 8))(v6, v8);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D9322664()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9322718()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[12];

  v2(v4, v6 + v3, v5);

  v7 = v1;
  v8 = sub_1D9326BC4();
  v9 = sub_1D9328214();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[34];
  v12 = v0[27];
  v13 = v0[18];
  v14 = v0[15];
  v31 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  if (v10)
  {
    v30 = v0[27];
    v17 = v0[13];
    v18 = v0[15];
    v19 = v0[12];
    v29 = v0[18];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543618;
    v22 = *(v19 + *(*v19 + 120));
    v14 = v18;
    v16 = v17;
    v12 = v30;
    v23 = [v22 control];
    *(v20 + 4) = v23;
    *v21 = v23;
    *(v20 + 12) = 2114;
    v24 = v11;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v25;
    v21[1] = v25;
    _os_log_impl(&dword_1D928E000, v8, v9, "[%{public}@] Toggle control action failed: %{public}@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v21, -1, -1);
    v26 = v20;
    v13 = v29;
    MEMORY[0x1DA72F920](v26, -1, -1);
  }

  v12(v13, v31);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D93229AC(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 296) = a1;
  v3 = sub_1D9326BE4();
  *(v2 + 144) = v3;
  *(v2 + 152) = *(v3 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = type metadata accessor for SetControlStateRequest(0);
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_1D9327A94();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  sub_1D93280A4();
  *(v2 + 216) = sub_1D9328094();
  v6 = sub_1D9328064();
  *(v2 + 224) = v6;
  *(v2 + 232) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D9322B3C, v6, v5);
}

uint64_t sub_1D9322B3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  BSDispatchQueueAssertMain();
  v4 = *(*v3 + 168);
  *(v2 + 240) = v4;
  v5 = *(v3 + v4);
  *(v2 + 248) = v5;
  if (v5)
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 296);

    sub_1D9321554(v7, v6);
    v11 = swift_task_alloc();
    *(v2 + 256) = v11;
    *v11 = v2;
    v11[1] = sub_1D9322D00;
    v12 = *(v2 + 208);

    return sub_1D9303580(v12);
  }

  else
  {

    sub_1D92F0450();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();

    v9 = *(v2 + 8);

    return v9();
  }
}

uint64_t sub_1D9322D00()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1D93238F0;
  }

  else
  {
    v5 = sub_1D9322E3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D9322E3C()
{
  v7 = v0;
  v1 = *(v0[17] + *(*v0[17] + 152));
  if (v1 && (, BSDispatchQueueAssertMain(), v2 = *(v1 + 32), , , v2))
  {
    v3 = sub_1D93269F4();
  }

  else
  {
    sub_1D9326A34();
    v3 = sub_1D9326A14();
  }

  v0[34] = v3;
  if (*(v0[17] + v0[30]))
  {

    sub_1D92D3994((v0 + 2));
    if (v0[5])
    {
      sub_1D929CF00((v0 + 2), (v0 + 12));
      sub_1D92933A0((v0 + 2), &qword_1ECAFC858, &unk_1D932FC60);
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    }

    else
    {
      sub_1D92933A0((v0 + 2), &qword_1ECAFC858, &unk_1D932FC60);
      memset(v5, 0, sizeof(v5));
      v6 = 0;
    }

    sub_1D92D3B80(v5);
  }

  sub_1D931FDA8();

  return MEMORY[0x1EEE6DFA0](sub_1D9322FF0, 0, 0);
}

uint64_t sub_1D9322FF0()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[22];
  v5 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  (*(v0[25] + 16))(&v3[*(v4 + 20)], v0[26], v0[24]);
  *v3 = v5;
  *&v3[*(v4 + 24)] = v1;
  sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = *(v7 + 72);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1D932319C;
  v10 = v0[23];

  return v12(v10, v6, v7);
}

uint64_t sub_1D932319C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1D93235D0;
  }

  else
  {
    v2 = sub_1D93232B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D93232B0()
{
  sub_1D9325080(v0[23], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[28];
  v2 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1D9323330, v1, v2);
}

uint64_t sub_1D9323330()
{
  v29 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);

  (*(v3 + 16))(v1, v4 + *(*v4 + 176), v2);

  v5 = sub_1D9326BC4();
  v6 = sub_1D9328234();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  if (v7)
  {
    v27 = *(v0 + 192);
    v14 = *(v0 + 136);
    v23 = *(v0 + 296);
    v26 = *(v0 + 144);
    v15 = swift_slowAlloc();
    v25 = v8;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446466;
    v17 = (v14 + *(*v14 + 184));
    v24 = v11;
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_1D9293524(v18, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1026;
    *(v15 + 14) = v23;
    _os_log_impl(&dword_1D928E000, v5, v6, "[%{public}s] Control set state succeeded (new state %{BOOL,public}d)", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72F920](v16, -1, -1);
    MEMORY[0x1DA72F920](v15, -1, -1);

    (*(v12 + 8))(v24, v26);
    (*(v9 + 8))(v25, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D93235D0()
{
  sub_1D9325080(v0[23], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[28];
  v2 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1D9323650, v1, v2);
}

uint64_t sub_1D9323650()
{
  v1 = v0[36];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];

  (*(v3 + 16))(v2, v5 + *(*v5 + 176), v4);

  v6 = v1;
  v7 = sub_1D9326BC4();
  v8 = sub_1D9328214();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[36];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  v14 = v0[19];
  v27 = v0[18];
  v28 = v0[20];
  if (v9)
  {
    v15 = v0[24];
    v16 = v0[17];
    v26 = v0[26];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543618;
    v19 = *(v16 + *(*v16 + 120));
    v13 = v15;
    v20 = [v19 control];
    *(v17 + 4) = v20;
    *v18 = v20;
    *(v17 + 12) = 2114;
    v21 = v10;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    v18[1] = v22;
    _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}@] Control action failed: %{public}@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v18, -1, -1);
    v23 = v17;
    v11 = v26;
    MEMORY[0x1DA72F920](v23, -1, -1);
  }

  (*(v14 + 8))(v28, v27);
  swift_willThrow();

  (*(v12 + 8))(v11, v13);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D93238F0()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t ControlInstanceToggle.__allocating_init(instanceIdentity:client:)(void *a1, void *a2)
{
  swift_allocObject();
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E23F8(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstanceToggle.init(instanceIdentity:client:)(void *a1, void *a2)
{
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E23F8(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstanceToggle.__deallocating_deinit()
{
  _s16ChronoUIServices21ControlInstanceToggleCfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9323AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D92D9CEC;

  return sub_1D93218CC();
}

uint64_t sub_1D9323B68(char *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92DA198;

  return sub_1D93229AC(v2);
}

BOOL _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9326814();
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD200, &qword_1D9330960);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v9;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = a1[2];
  v22 = a2[2];
  if (v21)
  {
    if (!v22 || (a1[1] != a2[1] || v21 != v22) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = a1[4];
  v24 = a2[4];
  if (v23)
  {
    if (!v24 || (a1[3] != a2[3] || v23 != v24) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v59 = v4;
  v60 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v25 = *(v60 + 28);
  v26 = *(v17 + 48);
  sub_1D92973DC(a1 + v25, v19, &qword_1ECAFCA50, &unk_1D932DF60);
  v27 = a2 + v25;
  v28 = v26;
  sub_1D92973DC(v27, &v19[v26], &qword_1ECAFCA50, &unk_1D932DF60);
  v29 = *(v11 + 48);
  if (v29(v19, 1, v10) == 1)
  {
    if (v29(&v19[v28], 1, v10) == 1)
    {
      sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
      goto LABEL_26;
    }

LABEL_23:
    v30 = &qword_1ECAFD208;
    v31 = &unk_1D932FED0;
    v32 = v19;
LABEL_24:
    sub_1D92933A0(v32, v30, v31);
    return 0;
  }

  sub_1D92973DC(v19, v16, &qword_1ECAFCA50, &unk_1D932DF60);
  if (v29(&v19[v28], 1, v10) == 1)
  {
    sub_1D9325080(v16, type metadata accessor for ControlIconView);
    goto LABEL_23;
  }

  sub_1D93250E0(&v19[v28], v13, type metadata accessor for ControlIconView);
  v33 = static ControlIconView.== infix(_:_:)(v16, v13);
  sub_1D9325080(v13, type metadata accessor for ControlIconView);
  sub_1D9325080(v16, type metadata accessor for ControlIconView);
  sub_1D92933A0(v19, &qword_1ECAFCA50, &unk_1D932DF60);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v34 = v60;
  v35 = *(v60 + 32);
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    v40 = v64;
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v40 = v64;
    if (v39)
    {
      return 0;
    }
  }

  v41 = v34[9];
  v42 = *(a2 + v41);
  if (*(a1 + v41))
  {
    if (!v42)
    {
      return 0;
    }

    v43 = sub_1D9327364();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (!_s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0((a1 + v34[10]), (a2 + v34[10])) || !_s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0((a1 + v34[11]), (a2 + v34[11])))
  {
    return 0;
  }

  v44 = v34[12];
  v45 = *(v8 + 48);
  v46 = v62;
  sub_1D92973DC(a1 + v44, v62, &qword_1ECAFD1A8, &qword_1D932FC48);
  sub_1D92973DC(a2 + v44, v46 + v45, &qword_1ECAFD1A8, &qword_1D932FC48);
  v47 = v63;
  v48 = *(v63 + 48);
  v49 = v59;
  if (v48(v46, 1, v59) != 1)
  {
    sub_1D92973DC(v46, v40, &qword_1ECAFD1A8, &qword_1D932FC48);
    if (v48(v46 + v45, 1, v49) != 1)
    {
      v50 = v46 + v45;
      v51 = v61;
      (*(v47 + 32))(v61, v50, v49);
      sub_1D93249DC(&qword_1ECAFD210, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v52 = sub_1D9327F64();
      v53 = *(v47 + 8);
      v53(v51, v49);
      v53(v40, v49);
      sub_1D92933A0(v46, &qword_1ECAFD1A8, &qword_1D932FC48);
      if ((v52 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    (*(v47 + 8))(v40, v49);
    goto LABEL_45;
  }

  if (v48(v46 + v45, 1, v49) != 1)
  {
LABEL_45:
    v30 = &qword_1ECAFD200;
    v31 = &qword_1D9330960;
    v32 = v46;
    goto LABEL_24;
  }

  sub_1D92933A0(v46, &qword_1ECAFD1A8, &qword_1D932FC48);
LABEL_47:
  if (*(a1 + v34[13]) == *(a2 + v34[13]) && *(a1 + v34[14]) == *(a2 + v34[14]) && *(a1 + v34[15]) == *(a2 + v34[15]))
  {
    v54 = v34[16];
    v55 = (a1 + v54);
    v56 = *(a1 + v54 + 8);
    v57 = (a2 + v54);
    v58 = v57[1];
    if (v56)
    {
      return v58 && (*v55 == *v57 && v56 == v58 || (sub_1D9328654() & 1) != 0);
    }

    if (!v58)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9327A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E0, &unk_1D9330740);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a2[2];
  if (a1[2])
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_1D9327484();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v37 = v5;
  v18 = a1[3];
  v19 = a2[3];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_1D9324F78();
    v20 = v19;
    v21 = v18;
    v22 = sub_1D9328314();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = a2[4];
  if (a1[4])
  {
    if (!v23)
    {
      return 0;
    }

    v24 = sub_1D9327364();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = a1[6];
  v26 = a2[6];
  if (v25)
  {
    if (!v26 || (a1[5] != a2[5] || v25 != v26) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = a1[8];
  v28 = a2[8];
  if (v27)
  {
    if (!v28 || (a1[7] != a2[7] || v27 != v28) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = *(type metadata accessor for ControlInstanceToggle.ViewModel.Option(0) + 40);
  v30 = *(v11 + 48);
  sub_1D92973DC(a1 + v29, v13, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92973DC(a2 + v29, &v13[v30], &qword_1ECAFD360, qword_1D93304C8);
  v31 = v37;
  v32 = *(v37 + 48);
  if (v32(v13, 1, v4) == 1)
  {
    if (v32(&v13[v30], 1, v4) == 1)
    {
      sub_1D92933A0(v13, &qword_1ECAFD360, qword_1D93304C8);
      return 1;
    }

    goto LABEL_42;
  }

  sub_1D92973DC(v13, v10, &qword_1ECAFD360, qword_1D93304C8);
  if (v32(&v13[v30], 1, v4) == 1)
  {
    (*(v31 + 8))(v10, v4);
LABEL_42:
    sub_1D92933A0(v13, &qword_1ECAFD3E0, &unk_1D9330740);
    return 0;
  }

  (*(v31 + 32))(v7, &v13[v30], v4);
  sub_1D93249DC(&qword_1EDE3BC90, MEMORY[0x1E69858A8], MEMORY[0x1E69858B8]);
  v34 = sub_1D9327F64();
  v35 = *(v31 + 8);
  v35(v7, v4);
  v35(v10, v4);
  sub_1D92933A0(v13, &qword_1ECAFD360, qword_1D93304C8);
  return (v34 & 1) != 0;
}

uint64_t sub_1D93248D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D932493C(uint64_t a1)
{
  result = sub_1D93249DC(qword_1EDE3B8E0, type metadata accessor for ControlInstanceToggle.ViewModel, &protocol conformance descriptor for ControlInstanceToggle.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D93249DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ControlInstanceToggle.performAction()()
{
  v4 = (*(*v0 + 688) + **(*v0 + 688));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D92D9CEC;

  return v4();
}

uint64_t dispatch thunk of ControlInstanceToggle.setState(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 696) + **(*v1 + 696));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D92DA198;

  return v6(a1);
}

void sub_1D9324CC4(uint64_t a1)
{
  sub_1D931ED08(319, &qword_1EDE3DA78, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D9324FC4(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
    if (v2 <= 0x3F)
    {
      sub_1D931ED08(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ControlInstanceToggle.ViewModel.Option(319);
        if (v4 <= 0x3F)
        {
          sub_1D9324FC4(319, &qword_1EDE3BAE0, MEMORY[0x1E6968FB0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9324E38(uint64_t a1)
{
  sub_1D931ED08(319, &qword_1EDE3DA78, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D931ED08(319, &qword_1EDE3BD00, MEMORY[0x1E6981748]);
    if (v2 <= 0x3F)
    {
      sub_1D9324FC4(319, &qword_1EDE3B228, sub_1D9324F78);
      if (v3 <= 0x3F)
      {
        sub_1D931ED08(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0]);
        if (v4 <= 0x3F)
        {
          sub_1D9324FC4(319, &qword_1EDE3BC88, MEMORY[0x1E69858A8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D9324F78()
{
  result = qword_1EDE3B230;
  if (!qword_1EDE3B230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3B230);
  }

  return result;
}

void sub_1D9324FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D9325018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9325080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D93250E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9325148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CHSDynamicColor.resolvedColor(in:)()
{
  v1 = sub_1D9326D24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1D9326D04();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  sub_1D9326E74();
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 88))(v12, v8);
  if (v15 == *MEMORY[0x1E697DBB8])
  {
    v16 = 1;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697DBA8])
    {
LABEL_15:
      sub_1D9328644();
      __break(1u);
      goto LABEL_16;
    }

    v16 = 2;
  }

  sub_1D9326E94();
  (*(v2 + 16))(v5, v7, v1);
  v17 = (*(v2 + 88))(v5, v1);
  if (v17 == *MEMORY[0x1E697DE20])
  {
    v18 = 1;
LABEL_9:
    v19 = [v0 resolvedColorForColorScheme:v16 displayGamut:v18];
    if (!v19)
    {
      v21 = 0;
      goto LABEL_13;
    }

    v20 = v19;
    if ([v19 CGColor])
    {
      v21 = sub_1D9327334();

LABEL_13:
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v14, v8);
      return v21;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v17 == *MEMORY[0x1E697DE28])
  {
    v18 = 0;
    goto LABEL_9;
  }

LABEL_16:
  result = sub_1D9328644();
  __break(1u);
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}