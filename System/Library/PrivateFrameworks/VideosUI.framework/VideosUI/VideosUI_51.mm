id sub_1E3A3663C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpenURLHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3A36730()
{
  OUTLINED_FUNCTION_31_1();
  v68 = v3;
  v74 = v4;
  v75 = v5;
  v73 = v6;
  v79 = v7;
  v80 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v67 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v77 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_8();
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v81 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47_3();
  v24 = sub_1E324FBDC();
  v69 = *(v20 + 16);
  v70 = v24;
  v69(v0);
  v78 = v10;
  sub_1E37E93E8(v10, v2, &unk_1ECF363C0, &unk_1E42A9420);
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067D4();
  if (os_log_type_enabled(v25, v26))
  {
    v71 = v20;
    v72 = v18;
    OUTLINED_FUNCTION_57_3();
    v28 = v27;
    v29 = swift_slowAlloc();
    v84[0] = OUTLINED_FUNCTION_72_0();
    *v29 = *(v28 + 352);
    *(v29 + 4) = sub_1E3270FC8(0xD000000000000023, 0x80000001E426D7A0, v84);
    *(v29 + 12) = 2080;
    v30 = OUTLINED_FUNCTION_168();
    sub_1E37E93E8(v30, v31, v32, v33);
    v34 = sub_1E41FE414();
    OUTLINED_FUNCTION_52(v1, 1, v34);
    if (v35)
    {
      sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_2_85();
    }

    else
    {
      v83 = v34;
      __swift_allocate_boxed_opaque_existential_1(v82);
      OUTLINED_FUNCTION_37_1();
      (*(v39 + 32))();
    }

    v40 = sub_1E3294FA4(v82);
    v42 = v41;
    sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
    v43 = sub_1E3270FC8(v40, v42, v84);

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1E323F000, v25, v26, "OpenURLHandler::%s back from %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    v38 = v20;
    v18 = v72;
    v36 = *(v20 + 8);
    v44 = OUTLINED_FUNCTION_63_0();
    v36(v44);
  }

  else
  {

    sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
    v36 = *(v20 + 8);
    v37 = OUTLINED_FUNCTION_63_0();
    v36(v37);
    v38 = v20;
  }

  if (v79)
  {
    sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
    v45 = v80;

    v47 = sub_1E3A355A4(v46, v80);
    if (v47)
    {
      v48 = v47;
      (v69)(v81, v70, v18);
      sub_1E37E93E8(v78, v77, &unk_1ECF363C0, &unk_1E42A9420);
      v49 = sub_1E41FFC94();
      v50 = sub_1E42067D4();
      if (OUTLINED_FUNCTION_262(v50))
      {
        v71 = v38;
        v72 = v18;
        OUTLINED_FUNCTION_57_3();
        v51 = swift_slowAlloc();
        v84[0] = OUTLINED_FUNCTION_72_0();
        *v51 = 136315394;
        OUTLINED_FUNCTION_23();
        *(v51 + 4) = sub_1E3270FC8(0xD000000000000023, v52, v84);
        *(v51 + 12) = 2080;
        sub_1E37E93E8(v77, v67, &unk_1ECF363C0, &unk_1E42A9420);
        v53 = sub_1E41FE414();
        OUTLINED_FUNCTION_52(v67, 1, v53);
        if (v35)
        {
          sub_1E325F6F0(v67, &unk_1ECF363C0, &unk_1E42A9420);
          OUTLINED_FUNCTION_2_85();
        }

        else
        {
          v83 = v53;
          __swift_allocate_boxed_opaque_existential_1(v82);
          OUTLINED_FUNCTION_37_1();
          OUTLINED_FUNCTION_240();
          v56();
        }

        sub_1E3294FA4(v82);
        OUTLINED_FUNCTION_16_11();
        sub_1E325F6F0(v77, &unk_1ECF363C0, &unk_1E42A9420);
        v57 = OUTLINED_FUNCTION_146();
        v60 = sub_1E3270FC8(v57, v58, v59);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_1E323F000, v49, v50, "OpenURLHandler::%s process data source %s", v51, 0x16u);
        OUTLINED_FUNCTION_343();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v55 = v18;
        v54 = v81;
      }

      else
      {

        sub_1E325F6F0(v77, &unk_1ECF363C0, &unk_1E42A9420);
        v54 = OUTLINED_FUNCTION_102_3();
      }

      (v36)(v54, v55);
      v61 = [v48 action];
      if (v61)
      {
        v62 = v61;
        objc_opt_self();
        OUTLINED_FUNCTION_20_2();
        v63 = swift_dynamicCastObjCClass();
        if (!v63)
        {
        }
      }

      else
      {
        v63 = 0;
      }

      sub_1E3A32608(v48, v80, 0, v73, v78, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, v78, v79);
      if (v76)
      {
        v76(v63 != 0);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A36D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v231 = v23;
  v244 = v24;
  HIDWORD(v229) = v25;
  v230 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v29);
  v226 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_219();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v251 = v34;
  OUTLINED_FUNCTION_138();
  v35 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v259 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_179_1();
  v253 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  v250 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_78();
  v236 = sub_1E32859C4(v28, &selRef_nativePageName);
  v45 = v44;
  v260 = sub_1E3A49B64(v28, &selRef_localLibraryLink);
  v46 = sub_1E3A49B64(v28, &selRef_channelsResponse);
  v47 = sub_1E3A49AF4(v28);
  if (v47 && (v48 = , v49 = sub_1E3A384DC(v48), , v49))
  {
    v248 = v49;
    v242 = [v49 uiConfiguration];
  }

  else
  {
    v242 = 0;
    v248 = 0;
  }

  v249 = v21;
  v243 = v47;
  v50 = [v28 action];
  sub_1E41FE5C4();
  v257 = v50;
  if (v50)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v46;
      v53 = v50;
      v54 = sub_1E41FE514();
      [v51 setUserPlaybackInitiationDate_];

      v55 = sub_1E41FE514();
      [v51 setOpenURLCompletionDate_];

      v46 = v52;
      LODWORD(v51) = 1;
    }
  }

  else
  {
    LODWORD(v51) = 0;
  }

  v56 = [v28 actionFirst];
  v57 = [v28 postAction];
  sub_1E32859C4(v28, &selRef_tabIdentifier);
  LODWORD(v229) = v56;
  if (!v45 && !v260 && !v257 && !v248 && !v58)
  {

    OUTLINED_FUNCTION_26_3();
    (*((*MEMORY[0x1E69E7D40] & v141) + 0x118))(1);

LABEL_51:
    v115 = v242;
    goto LABEL_27;
  }

  v59 = [objc_opt_self() sharedInstance];
  if (![v59 isPlaybackUIBeingShown])
  {
    v66 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v67 = *v66;
    if (v67)
    {
      sub_1E37E93E8(v231, v251, &unk_1ECF363C0, &unk_1E42A9420);
      v232 = v59;
      v224 = v57;
      v68 = *(v259 + 16);
      (v68)(v250, v244, v35);
      OUTLINED_FUNCTION_91();
      v68();
      OUTLINED_FUNCTION_166_1();
      v70 = (v69 + 56) & ~v69;
      v71 = (v32 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = *(v259 + 80);
      v238 = v35;
      v73 = (v72 + v71 + 8) & ~v72;
      v74 = (v38 + v72 + v73) & ~v72;
      OUTLINED_FUNCTION_134_4();
      v76 = v75 & 0xFFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_231();
      v218 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = OUTLINED_FUNCTION_268();
      *(v78 + 16) = v67;
      *(v78 + 24) = v236;
      OUTLINED_FUNCTION_329();
      v79[4] = v80;
      v79[5] = v46;
      v79[6] = v249;
      sub_1E327D738(v251, v79 + v70);
      *(v78 + v71) = v260;
      v81 = *(v259 + 32);
      v81(v78 + v73, v250, v238);
      v81(v78 + v74, v253, v238);
      *(v78 + v32) = v257;
      *(v78 + v76) = v248;
      v82 = v78 + v219;
      *v82 = v243;
      *(v82 + 8) = BYTE4(v229) & 1;
      v83 = v78 + ((v76 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v83 = v230;
      *(v83 + 8) = v229;
      *(v78 + v220) = v224;
      *(v78 + v218) = v242;
      v84 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x208);
      v85 = v242;
      v86 = v224;
      v87 = v67;
      v88 = v257;
      v89 = v248;
      v90 = v249;
      v91 = v230;
      v92 = OUTLINED_FUNCTION_137_3();
      v84(v92);

      v93 = OUTLINED_FUNCTION_54_16();
LABEL_28:
      v94(v93);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v51)
  {
    if (v45 && v46)
    {
      sub_1E3A39BA4();
      OUTLINED_FUNCTION_26_3();
      (*((*MEMORY[0x1E69E7D40] & v65) + 0x118))(1);

LABEL_25:

LABEL_26:
      v115 = v248;
LABEL_27:

      v93 = OUTLINED_FUNCTION_74();
      goto LABEL_28;
    }

    v113 = v57;
    if (v260)
    {
      sub_1E3A3A7F4(v260, v244, v22, v60, v61, v62, v63, v64, v216, v217, v219, v220, v221, v223, v226, v229, v230, v231, v236, v237);
      OUTLINED_FUNCTION_26_3();
      (*((*MEMORY[0x1E69E7D40] & v114) + 0x118))(1);

      goto LABEL_25;
    }

    if (v257)
    {
      if (v248)
      {
        OUTLINED_FUNCTION_4_0();
        v116 = swift_allocObject();
        v117 = v116;
        if (v243)
        {
          *(v116 + 16) = v243;
          if (sub_1E32AE9B0(v243))
          {
            v246 = v22;
            v240 = v35;

            v118 = v257;
            v119 = v248;
            if ([v118 respondsToSelector_] & 1) == 0 || (objc_msgSend(v118, sel_canPerformNow))
            {
              if (v229)
              {
                OUTLINED_FUNCTION_10_9();
                *(swift_allocObject() + 16) = v249;
                OUTLINED_FUNCTION_158_3();
                *(v120 + 24) = v121;
                *(v120 + 32) = v117;
                *(v120 + 40) = v230;
                v122 = v230;

                v249;
                sub_1E3A3B98C();

                OUTLINED_FUNCTION_116_1();

                goto LABEL_38;
              }

              [objc_opt_self() setAnimationsEnabled_];
              OUTLINED_FUNCTION_67_6();
              v144 = swift_allocObject();
              v144[2] = v249;
              v144[3] = v118;
              v144[4] = v57;
              v144[5] = v242;
              v144[6] = v117;
              v144[7] = v230;
              v258 = v144;
              v144[8] = v119;
              if ((v229 & 0x100000000) != 0)
              {
                v145 = v242;

                v254 = v57;
                v146 = v118;
                v147 = v119;
                v148 = v249;
                v149 = v230;
                v150 = sub_1E40C4340();
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v151 = *v150;
                if (v151)
                {
                  OUTLINED_FUNCTION_5_10();
                  v152 = v145;
                  v153 = swift_allocObject();
                  v153[2] = v151;
                  v153[3] = sub_1E3A4B704;
                  v153[4] = v258;
                  OUTLINED_FUNCTION_21();
                  v233 = v59;
                  v155 = *(v154 + 496);
                  v156 = v151;
                  OUTLINED_FUNCTION_50();

                  v157 = OUTLINED_FUNCTION_137_3();
                  v155(v157);

                  OUTLINED_FUNCTION_81_6();

                  OUTLINED_FUNCTION_116_1();

                  (*(v259 + 8))(v246, v240);
                  goto LABEL_57;
                }

                OUTLINED_FUNCTION_116_1();

LABEL_38:
                v123 = OUTLINED_FUNCTION_54_16();
                v124(v123);
LABEL_57:

                goto LABEL_29;
              }

              OUTLINED_FUNCTION_5_10();
              v177 = swift_allocObject();
              v177[2] = v249;
              v177[3] = v118;
              v177[4] = v57;
              if (v242 && (objc_opt_self(), OUTLINED_FUNCTION_20_2(), swift_dynamicCastObjCClass()))
              {
                v234 = v59;
                OUTLINED_FUNCTION_11_3(v117 + 16, &v261);
                v255 = v230;
                v178 = v242;
                swift_retain_n();
                v179 = v113;
                v180 = v118;
                v181 = v249;
                v182 = v178;
                v183 = v179;
                v184 = v180;
                v185 = v119;
                v186 = v181;
                v187 = sub_1E3A3CBC8();
                swift_endAccess();

                v188 = sub_1E40C4340();
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v189 = *v188;
                if (*v188)
                {
                  OUTLINED_FUNCTION_89();
                  v190 = swift_allocObject();
                  v190[2] = v185;
                  v190[3] = v230;
                  v190[4] = v182;
                  v190[5] = sub_1E3A4B708;
                  v190[6] = v177;
                  OUTLINED_FUNCTION_21();
                  v252 = v183;
                  v192 = *(v191 + 504);
                  v193 = v185;
                  v194 = v255;
                  v195 = v182;
                  v196 = v189;
                  OUTLINED_FUNCTION_50();

                  v197 = OUTLINED_FUNCTION_27_0();
                  v192(v197);
                }

                else
                {
                }

                v59 = v234;
              }

              else
              {
                v198 = v230;
                v199 = v242;
                swift_retain_n();
                v200 = v57;
                v201 = v118;
                v202 = v249;
                v256 = v200;
                v203 = v201;
                v204 = v119;
                v205 = v202;
                v206 = sub_1E40C4340();
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v207 = *v206;
                if (v207)
                {
                  OUTLINED_FUNCTION_25();
                  swift_beginAccess();
                  OUTLINED_FUNCTION_2_4();
                  v235 = v59;
                  v208 = swift_allocObject();
                  *(v208 + 16) = sub_1E3A4B708;
                  *(v208 + 24) = v177;
                  OUTLINED_FUNCTION_21();
                  v209 = v199;
                  v211 = *(v210 + 504);

                  v212 = v207;

                  v211(v213, v230, 0, sub_1E37D1918, v208);

                  v59 = v235;
                }

                else
                {
                }
              }

              OUTLINED_FUNCTION_116_1();

              goto LABEL_79;
            }

            OUTLINED_FUNCTION_5_10();
            v167 = swift_allocObject();
            v167[2] = v117;
            v167[3] = v230;
            v167[4] = v249;
            v168 = v230;
            swift_retain_n();
            v169 = v249;
            if ((v229 & 0x100000000) != 0)
            {
              v170 = sub_1E40C4340();
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v171 = *v170;
              if (v171)
              {
                OUTLINED_FUNCTION_5_10();
                v172 = swift_allocObject();
                v172[2] = v171;
                v172[3] = sub_1E3A4B73C;
                v172[4] = v167;
                OUTLINED_FUNCTION_21();
                v174 = *(v173 + 496);
                v175 = v171;
                OUTLINED_FUNCTION_38();

                v176 = OUTLINED_FUNCTION_137_3();
                v174(v176);

LABEL_70:

                OUTLINED_FUNCTION_116_1();

LABEL_79:
                v214 = OUTLINED_FUNCTION_54_16();
                v215(v214);
                goto LABEL_80;
              }
            }

            else
            {
              OUTLINED_FUNCTION_25_45();
              sub_1E3A3C778();
            }

            goto LABEL_70;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_0();
          swift_deallocUninitializedObject();
        }
      }

      OUTLINED_FUNCTION_4_0();
      *(swift_allocObject() + 16) = v249;
      v249;
      sub_1E3A3B98C();

      goto LABEL_50;
    }

    if (!v248)
    {

LABEL_50:

      goto LABEL_51;
    }

    v228 = v46;
    v222 = v45;
    OUTLINED_FUNCTION_4_0();
    v125 = swift_allocObject();
    v126 = v125;
    if (!v243)
    {

      OUTLINED_FUNCTION_81_6();

      OUTLINED_FUNCTION_116_1();

      v142 = OUTLINED_FUNCTION_74();
      v143(v142);
      OUTLINED_FUNCTION_4_0();
      swift_deallocUninitializedObject();
      goto LABEL_29;
    }

    *(v125 + 16) = v243;
    if (!sub_1E32AE9B0(v243))
    {

      OUTLINED_FUNCTION_81_6();

      OUTLINED_FUNCTION_116_1();

      v158 = OUTLINED_FUNCTION_74();
      v159(v158);
      goto LABEL_57;
    }

    v247 = v22;
    v241 = v35;
    v127 = objc_opt_self();

    v128 = v248;
    [v127 setAnimationsEnabled_];
    OUTLINED_FUNCTION_89();
    v129 = swift_allocObject();
    v129[2] = v242;
    v129[3] = v126;
    v129[4] = v230;
    v129[5] = v128;
    v129[6] = v249;
    v130 = v242;
    swift_retain_n();
    v131 = v128;
    v132 = v249;
    v133 = v230;
    if ((v229 & 0x100000000) != 0)
    {
      v134 = sub_1E40C4340();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v135 = *v134;
      if (v135)
      {
        OUTLINED_FUNCTION_5_10();
        v136 = swift_allocObject();
        v136[2] = v135;
        v136[3] = sub_1E3A4B6D8;
        v136[4] = v129;
        OUTLINED_FUNCTION_21();
        v138 = *(v137 + 496);
        v139 = v135;
        OUTLINED_FUNCTION_38();

        v140 = OUTLINED_FUNCTION_137_3();
        v138(v140);

LABEL_60:

        OUTLINED_FUNCTION_81_6();

        OUTLINED_FUNCTION_116_1();

        v165 = OUTLINED_FUNCTION_54_16();
        v166(v165);
LABEL_80:

        goto LABEL_29;
      }
    }

    else
    {
      v160 = OUTLINED_FUNCTION_142();
      sub_1E3A3CDA0(v160, v161, v230, v131, v132, v162, v163, v164, v216, v217, v219, v220, v222, v223, v228, v229, v230, v231, v236, v241, v242, v243, v247, v248, v249, v250);
    }

    goto LABEL_60;
  }

  sub_1E37E93E8(v231, v251, &unk_1ECF363C0, &unk_1E42A9420);
  v95 = *(v259 + 16);
  (v95)(v250, v244, v35);
  OUTLINED_FUNCTION_91();
  v95();
  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_53_23();
  v227 = v46;
  v97 = (v95 + v38 + v96) & ~v96;
  v225 = v57;
  v98 = (v38 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v245 = v22;
  v239 = v35;
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_231();
  v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  *(v101 + 2) = v236;
  *(v101 + 3) = v45;
  *(v101 + 4) = v227;
  *(v101 + 5) = v249;
  sub_1E327D738(v251, &v101[v259 + 16]);
  *&v101[v32] = v260;
  v102 = *(v259 + 32);
  v102(v95 + v101, v250, v239);
  v102(&v101[v97], v253, v239);
  *&v101[v98] = v257;
  *&v101[(v98 + 15) & 0xFFFFFFFFFFFFFFF8] = v248;
  OUTLINED_FUNCTION_290();
  v104 = &v101[v103];
  *v104 = v243;
  v104[8] = BYTE4(v229) & 1;
  OUTLINED_FUNCTION_329();
  v106 = &v101[v105];
  *v106 = v230;
  v106[8] = v229;
  *&v101[v220] = v225;
  *&v101[v100] = v242;
  v107 = v242;
  v108 = v225;
  v109 = v257;
  v110 = v248;
  v111 = v249;
  v112 = v230;
  sub_1E3A3C02C();

  (*(v259 + 8))(v245, v239);
LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

char *sub_1E3A384DC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_43_0();
      sub_1E34AF4E4(v4, v5, v6);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v7 = OUTLINED_FUNCTION_16_0();
    return MEMORY[0x1E6911E60](v7);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1E3A38568()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x118))(1);
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 isDeeplinkLaunched];

  if (v14)
  {
    type metadata accessor for VideosUI();
    static VideosUI.handleUnifiedMessagingAppDidFinishLoading()();
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v15(v0);
  v16 = OUTLINED_FUNCTION_102_3();
  sub_1E37E93E8(v16, v17, v18, v19);
  v20 = v4;
  v21 = sub_1E41FFC94();
  v22 = sub_1E42067F4();

  if (os_log_type_enabled(v21, v22))
  {
    v38 = v8;
    OUTLINED_FUNCTION_57_3();
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_15_4();
    v37 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v20;
    v36 = v24;
    *v24 = v20;
    OUTLINED_FUNCTION_332();
    v25 = OUTLINED_FUNCTION_75();
    sub_1E37E93E8(v25, v26, v27, v28);
    v29 = sub_1E41FE414();
    LODWORD(v24) = __swift_getEnumTagSinglePayload(v2, 1, v29);
    v30 = v20;
    if (v24 == 1)
    {
      sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
      v31 = 0;
    }

    else
    {
      v31 = sub_1E41FE304();
      OUTLINED_FUNCTION_37_1();
      (*(v32 + 8))(v2, v29);
    }

    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v33 = OUTLINED_FUNCTION_16_0();
    sub_1E3270FC8(v33, v34, v35);
    OUTLINED_FUNCTION_50();

    *(v23 + 14) = v31;
    OUTLINED_FUNCTION_347(&dword_1E323F000, v21, v22, "OpenURLHandler::finished handling %@ for %s");
    sub_1E325F6F0(v36, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v10 + 8))(v0, v38);
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    (*(v10 + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A38918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, void *a24, void *a25, uint64_t a26, char a27, void *a28, char a29, void *a30)
{
  OUTLINED_FUNCTION_31_1();
  v218 = v34;
  v221 = v35;
  v224 = v36;
  v226 = v37;
  v225 = v38;
  v216 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v40);
  v215 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v213 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v43);
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v211 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_47_3();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v47);
  v217 = v48;
  OUTLINED_FUNCTION_219();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_72_13();
  v50 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v209 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4_6();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34_1();
  v58 = objc_opt_self();
  v59 = [v58 sharedInstance];
  v60 = [v59 isShowingExtras];

  if (!v225)
  {
    v207 = v31;
    v208 = v30;
    v222 = v50;
    if (v221)
    {
      sub_1E3A3A7F4(v221, v218, a21, v61, v62, v63, v64, v65, v206, v33, v31, v55, v30, v209, v210, v211, v212, v213, v214, v215);
      OUTLINED_FUNCTION_331();
      goto LABEL_5;
    }

    if ((a22 & v60 & 1) != 0 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), v50 = *(a23 + 16), sub_1E32AE9B0(v50)))
    {
      if ((v50 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1E6911E60](0, v50);
        OUTLINED_FUNCTION_92_2();

        v67 = v58;
        v68 = &selRef_setWaitingForTransactionToStart_;
      }

      else
      {
        v67 = v58;
        v68 = &selRef_setWaitingForTransactionToStart_;
        if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v58 = *(v50 + 32);
      }

      v69 = [v67 v68[64]];
      [v69 presentViewControllerOnExtrasNav_];
    }

    else
    {
      if (a24)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v70 = a25[2];
        if (v70)
        {
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (sub_1E32AE9B0(*(a23 + 16)))
          {
            v71 = a24;
            v70;
            v223 = v71;
            v72 = OUTLINED_FUNCTION_244();
            v74 = v32;
            if ([v72 v73] && (v75 = OUTLINED_FUNCTION_305(), (objc_msgSend(v75, v76) & 1) == 0))
            {
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v109 = *(a26 + 16);
              if (v109 && (v110 = objc_opt_self(), OUTLINED_FUNCTION_345(v110)))
              {
                if ((a27 & 1) != 0 && a28)
                {
                  v111 = v109;
                }

                else
                {
                  v178 = v109;
                }

                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_67_0();
                sub_1E3A3B4EC();

                v179 = [objc_opt_self() topPresentedViewController];
                if (v179)
                {
                  v180 = v179;
                  v181 = objc_opt_self();
                  OUTLINED_FUNCTION_263(v181, sel_presentViewController_fromViewController_WithConfiguration_completion_);
                }

                else
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_164_0();
                  v190(v33);
                  v191 = sub_1E41FFC94();
                  v192 = sub_1E42067F4();
                  if (OUTLINED_FUNCTION_161(v192))
                  {
                    OUTLINED_FUNCTION_13_13();
                    v193 = swift_slowAlloc();
                    OUTLINED_FUNCTION_15_4();
                    v194 = swift_slowAlloc();
                    v233 = v194;
                    *v193 = 136315138;
                    OUTLINED_FUNCTION_23();
                    *(v193 + 4) = sub_1E3270FC8(0xD000000000000019, v195, &v233);
                    OUTLINED_FUNCTION_82_0();
                    _os_log_impl(v196, v197, v198, v199, v200, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v194);
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                  }

                  else
                  {
                  }

                  v203 = OUTLINED_FUNCTION_120();
                  v204(v203);
                }
              }

              else
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_312();
                sub_1E3A3B5DC();
              }

              OUTLINED_FUNCTION_331();
              sub_1E3A38568();
            }

            else if (a29)
            {
              v77 = OUTLINED_FUNCTION_102_3();
              sub_1E37E93E8(v77, v78, v79, v80);
              OUTLINED_FUNCTION_166_1();
              v82 = (v81 + 56) & ~v81;
              v83 = OUTLINED_FUNCTION_340();
              v83[2] = v226;
              v83[3] = a28;
              v83[4] = a23;
              OUTLINED_FUNCTION_158_3();
              *(v84 + 40) = v85;
              OUTLINED_FUNCTION_25_25();
              *(v86 + 48) = a25;
              sub_1E327D738(v32, v86 + v82);
              v87 = a28;

              v88 = a25;
              v226;
              OUTLINED_FUNCTION_341();
            }

            else
            {
              v99 = a30;
              if ((a27 & 1) != 0 && a28)
              {
                v100 = OUTLINED_FUNCTION_312();
              }

              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v102 = *(a26 + 16);
              if (v102 && (v103 = objc_opt_self(), OUTLINED_FUNCTION_345(v103)))
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                v104 = v102;
                OUTLINED_FUNCTION_312();
                sub_1E3A3B4EC();

                v105 = [objc_opt_self() topPresentedViewController];
                if (v105)
                {
                  v106 = v105;
                  v107 = objc_opt_self();
                  OUTLINED_FUNCTION_263(v107, sel_presentViewController_fromViewController_WithConfiguration_completion_);
                }

                else
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_107_0();
                  v182(v207);
                  v183 = sub_1E41FFC94();
                  v184 = sub_1E42067F4();
                  v220 = v183;
                  if (os_log_type_enabled(v183, v184))
                  {
                    OUTLINED_FUNCTION_13_13();
                    v185 = swift_slowAlloc();
                    OUTLINED_FUNCTION_15_4();
                    v186 = swift_slowAlloc();
                    v227 = v186;
                    *v185 = 136315138;
                    OUTLINED_FUNCTION_23();
                    *(v185 + 4) = sub_1E3270FC8(0xD000000000000019, v187, &v227);
                    _os_log_impl(&dword_1E323F000, v220, v184, "OpenURLHandler::%s failed to get topPresentedViewController.", v185, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v186);
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                    v74 = v32;
                    OUTLINED_FUNCTION_7_17();
                    MEMORY[0x1E69143B0]();
                  }

                  else
                  {
                  }

                  v201 = OUTLINED_FUNCTION_287();
                  v202(v201, v222);
                  v99 = a30;
                }
              }

              else
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();

                OUTLINED_FUNCTION_312();
                sub_1E3A3B4EC();
              }

              sub_1E3280A90(0, &qword_1ECF31178, off_1E87281C0);
              swift_getObjCClassFromMetadata();
              v112 = OUTLINED_FUNCTION_305();
              if ([v112 v113])
              {
                sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
                v219 = sub_1E4206A04();
                sub_1E4204004();
                v114.n128_u64[0] = 3.0;
                sub_1E4204074(v114);
                v115 = OUTLINED_FUNCTION_210();
                v116(v115);
                OUTLINED_FUNCTION_4_0();
                v117 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v118 = OUTLINED_FUNCTION_102_3();
                sub_1E37E93E8(v118, v119, v120, v121);
                v122 = v74;
                v123 = (v217[80] + 56) & ~v217[80];
                v124 = v99;
                v125 = swift_allocObject();
                v125[2] = v117;
                v125[3] = v223;
                v125[4] = v124;
                v125[5] = v226;
                OUTLINED_FUNCTION_25_25();
                *(v126 + 48) = v217;
                sub_1E327D738(v122, v126 + v123);
                v231 = sub_1E3A4A79C;
                v232 = v125;
                OUTLINED_FUNCTION_94_8();
                v228 = 1107296256;
                OUTLINED_FUNCTION_14_1();
                v229 = v127;
                v230 = &block_descriptor_176;
                v128 = _Block_copy(&v227);
                v129 = v124;
                v130 = v223;
                v131 = v226;
                v132 = v217;

                sub_1E4203FE4();
                v227 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_3_101();
                sub_1E3A496B8(v133, v134);
                v135 = OUTLINED_FUNCTION_97_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(v135, v136);
                OUTLINED_FUNCTION_47();
                sub_1E328FCF4(v137, v138, &qword_1E429B000);
                OUTLINED_FUNCTION_326();
                sub_1E42072E4();
                MEMORY[0x1E69112E0](v208, v212, v124, v128);
                OUTLINED_FUNCTION_252();

                _Block_release(v128);
                OUTLINED_FUNCTION_15_5();
                v140(v124, v216);
                OUTLINED_FUNCTION_15_5();
                v141(v212, v215);
                OUTLINED_FUNCTION_290();
                v142();
                goto LABEL_68;
              }

              v143 = OUTLINED_FUNCTION_102_3();
              sub_1E37E93E8(v143, v144, v145, v146);
              v147 = (v217[80] + 32) & ~v217[80];
              swift_allocObject();
              OUTLINED_FUNCTION_25_25();
              *(v148 + 16) = v226;
              *(v148 + 24) = v217;
              sub_1E327D738(v74, v148 + v147);
              v226;
              v149 = v217;
              OUTLINED_FUNCTION_74();
              sub_1E3A3B98C();
            }

            OUTLINED_FUNCTION_252();

            goto LABEL_68;
          }
        }

        v89 = OUTLINED_FUNCTION_123_1();
        sub_1E37E93E8(v89, v90, v91, v92);
        OUTLINED_FUNCTION_166_1();
        v94 = (v93 + 32) & ~v93;
        v95 = OUTLINED_FUNCTION_340();
        *(v95 + 16) = v226;
        *(v95 + 24) = v224;
        sub_1E327D738(v32, v95 + v94);
        v96 = a24;
        v226;
        v97 = v224;
        OUTLINED_FUNCTION_341();

LABEL_68:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v58 = a25[2];
      if (!v58)
      {
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (!sub_1E32AE9B0(*(a23 + 16)))
      {
        goto LABEL_68;
      }

      if (a27)
      {
        OUTLINED_FUNCTION_311();
        v98 = v58;
        if (a25)
        {
        }
      }

      else
      {
        v108 = v58;
        OUTLINED_FUNCTION_311();
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v150 = *(v50 + 16);
      if (v150)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_25();
          swift_beginAccess();

          v151 = v150;
          OUTLINED_FUNCTION_53();
          sub_1E3A3B4EC();

          v152 = [objc_opt_self() topPresentedViewController];
          if (v152)
          {
            v153 = v152;
            objc_opt_self();
            v154 = OUTLINED_FUNCTION_123_1();
            sub_1E37E93E8(v154, v155, v156, v157);
            OUTLINED_FUNCTION_166_1();
            v159 = v151;
            v160 = (v158 + 32) & ~v158;
            v161 = swift_allocObject();
            *(v161 + 16) = v226;
            *(v161 + 24) = v224;
            sub_1E327D738(v32, v161 + v160);
            v231 = sub_1E3A4A798;
            v232 = v161;
            OUTLINED_FUNCTION_94_8();
            v228 = 1107296256;
            OUTLINED_FUNCTION_26_41();
            v229 = v162;
            v230 = &block_descriptor_163;
            v163 = _Block_copy(&v227);
            v164 = v226;
            v165 = v224;

            v166 = OUTLINED_FUNCTION_43_0();
            [v166 v167];

            _Block_release(v163);
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_69_8();
            v168(v55);
            v169 = sub_1E41FFC94();
            sub_1E42067F4();
            OUTLINED_FUNCTION_41_15();
            if (os_log_type_enabled(v169, v170))
            {
              OUTLINED_FUNCTION_13_13();
              swift_slowAlloc();
              OUTLINED_FUNCTION_30_35();
              v227 = swift_slowAlloc();
              *v32 = 136315138;
              OUTLINED_FUNCTION_23();
              *(v32 + 4) = sub_1E3270FC8(0xD000000000000019, v171, &v227);
              OUTLINED_FUNCTION_12_17();
              _os_log_impl(v172, v173, v174, v175, v176, 0xCu);
              OUTLINED_FUNCTION_91_6();
              OUTLINED_FUNCTION_7_17();
              MEMORY[0x1E69143B0]();
              v177 = OUTLINED_FUNCTION_19_56();
              MEMORY[0x1E69143B0](v177);
            }

            else
            {
            }

            v188 = OUTLINED_FUNCTION_210();
            v189(v188);
          }

          goto LABEL_68;
        }
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();

      sub_1E3A3B4EC();
    }

    OUTLINED_FUNCTION_331();
    sub_1E3A38568();

    goto LABEL_68;
  }

  OUTLINED_FUNCTION_291();
  sub_1E3A39BA4();
  OUTLINED_FUNCTION_331();
LABEL_5:
  OUTLINED_FUNCTION_25_2();

  sub_1E3A38568();
}

void sub_1E3A39BA4()
{
  OUTLINED_FUNCTION_31_1();
  v121 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v116 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v117 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_8();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v119 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v118 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_6();
  v19 = sub_1E4205F94();
  v20 = v18;
  v21 = v19 == 0x736E6F6361707076 && v18 == 0xEB00000000746E65;
  v22 = v21;
  v120 = v22;
  if (v21 || (v23 = OUTLINED_FUNCTION_169_0(), (OUTLINED_FUNCTION_180_1(v23) & 1) != 0))
  {
    v24 = OUTLINED_FUNCTION_144_4();
    v25(v24);
    if (v26)
    {
      v0 = [objc_opt_self() sharedInstance];
      OUTLINED_FUNCTION_75();
      v27 = sub_1E4205ED4();

      if (v121)
      {
        v28 = sub_1E4205C44();
      }

      else
      {
        v28 = 0;
      }

      v125 = sub_1E3A4D108;
      v126 = 0;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
      v123 = sub_1E3A3E484;
      v124 = &block_descriptor_185;
      v43 = _Block_copy(v122);
      v44 = OUTLINED_FUNCTION_123_3();
      [v44 v45];
      _Block_release(v43);
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v29(v2);
      v0 = sub_1E41FFC94();
      sub_1E42067F4();
      OUTLINED_FUNCTION_101_3();
      if (os_log_type_enabled(v0, v30))
      {
        OUTLINED_FUNCTION_13_13();
        v31 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v122[0] = swift_slowAlloc();
        *v31 = 136315138;
        *(v31 + 4) = OUTLINED_FUNCTION_214("processNativePageLink(_:_:_:)");
        OUTLINED_FUNCTION_122_0();
        _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
        OUTLINED_FUNCTION_248();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      v37 = OUTLINED_FUNCTION_139_0();
      v38(v37);
    }

    if (v120)
    {
      goto LABEL_28;
    }

LABEL_27:
    v46 = OUTLINED_FUNCTION_169_0();
    if (OUTLINED_FUNCTION_180_1(v46))
    {
LABEL_28:

      v47 = OUTLINED_FUNCTION_144_4();
      v49 = v48(v47);
      if (v50)
      {
        v51 = v49;
        v52 = [objc_opt_self() sharedInstance];
        OUTLINED_FUNCTION_57();
        sub_1E4205ED4();
        OUTLINED_FUNCTION_38();

        if (v121)
        {
          v53 = sub_1E4205C44();
        }

        else
        {
          v53 = 0;
        }

        v125 = sub_1E3A3E778;
        v126 = 0;
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
        v123 = sub_1E3A3E484;
        v124 = &block_descriptor_182;
        v77 = _Block_copy(v122);
        [v52 startVPPAConsentFlowForDeeplink:v51 channelsResponse:v53 completion:v77];
        _Block_release(v77);
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_88_4();
        v67(v118);
        v68 = sub_1E41FFC94();
        v69 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v69))
        {
          OUTLINED_FUNCTION_13_13();
          v70 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v71 = swift_slowAlloc();
          v122[0] = v71;
          *v70 = 136315138;
          *(v70 + 4) = OUTLINED_FUNCTION_214("processNativePageLink(_:_:_:)");
          OUTLINED_FUNCTION_82_0();
          _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v119 + 8))(v118, v11);
      }

      goto LABEL_70;
    }

    v54 = v19 == 0x6269726373627573 && v20 == 0xE900000000000065;
    v55 = MEMORY[0x1E69E7D40];
    if (v54 || (OUTLINED_FUNCTION_169_0(), (sub_1E42079A4() & 1) != 0))
    {

      if ([objc_opt_self() isSUIEnabled])
      {
        v56 = sub_1E40C4340();
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v57 = *v56;
        if (*v56)
        {
LABEL_38:
          sub_1E41FE414();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
          sub_1E4205F14();
          OUTLINED_FUNCTION_26_3();
          v63 = *((*v55 & v62) + 0x220);
          v64 = v57;
          v65 = OUTLINED_FUNCTION_242();
          v63(v65);

          v66 = v3;
LABEL_69:
          sub_1E325F6F0(v66, &unk_1ECF363C0, &unk_1E42A9420);
        }

LABEL_70:
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_44:
      v78 = objc_opt_self();
      v79 = sub_1E4205F14();
      sub_1E3A49A04(0, v79, v80, 0, v78);
      goto LABEL_70;
    }

    if (v19 != 0x6D6565646572 || v20 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_169_0();
      if ((sub_1E42079A4() & 1) == 0)
      {
        if (v19 != 0x73676E6974746573 || v20 != 0xE800000000000000)
        {
          OUTLINED_FUNCTION_169_0();
          if ((sub_1E42079A4() & 1) == 0)
          {
            if (v19 == 0x732D796C696D6166 && v20 == 0xEC00000070757465)
            {
            }

            else
            {
              OUTLINED_FUNCTION_169_0();
              v115 = sub_1E42079A4();

              if ((v115 & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            sub_1E3A3E8D8();
            goto LABEL_70;
          }
        }

        if ([objc_opt_self() isSUIEnabled])
        {
          v113 = sub_1E40C4340();
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v57 = *v113;
          if (!*v113)
          {
            goto LABEL_70;
          }

          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

    sub_1E4205F14();
    v93 = v92;
    sub_1E41FE404();

    if ([objc_opt_self() isSUIEnabled])
    {
      v94 = sub_1E40C4340();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v95 = *v94;
      if (!*v94)
      {
LABEL_68:
        v66 = v117;
        goto LABEL_69;
      }

      v96 = *((*v55 & *v95) + 0x220);
      v97 = v95;
      v98 = OUTLINED_FUNCTION_16_5();
      v96(v98, 0, 0, 0);
    }

    else
    {
      sub_1E37E93E8(v117, v116, &unk_1ECF363C0, &unk_1E42A9420);
      sub_1E41FE414();
      v105 = OUTLINED_FUNCTION_92_2();
      v0 = 0;
      if (__swift_getEnumTagSinglePayload(v105, 1, v93) != 1)
      {
        v0 = sub_1E41FE364();
        OUTLINED_FUNCTION_37_1();
        v106 = OUTLINED_FUNCTION_13_8();
        v107(v106);
      }

      [objc_opt_self() handleAccountSettingsEventWithUrl:v0 amsBagKey:0 useAMSWebView:0];
    }

    goto LABEL_68;
  }

  v39 = v19 == 0x656D2D6775626564 && v20 == 0xEA0000000000756ELL;
  if (v39 || (OUTLINED_FUNCTION_169_0(), (sub_1E42079A4() & 1) != 0))
  {
    v40 = [objc_opt_self() sharedInstance];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 debugUIEnabled];

      if (!v42)
      {

        sub_1E324FBDC();
        v81 = OUTLINED_FUNCTION_101();
        v82(v81);
        v83 = sub_1E41FFC94();
        sub_1E42067F4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v85);
          OUTLINED_FUNCTION_70_12();
          _os_log_impl(v86, v87, v88, v89, v90, 2u);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v119 + 8))(v0, v11);
        goto LABEL_70;
      }

      v0 = [objc_allocWithZone(VUIDebugViewController) init];
      sub_1E3A3E4E4();
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    if (v19 != 0xD000000000000010 || 0x80000001E426D210 != v20)
    {
      OUTLINED_FUNCTION_169_0();
      if ((sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v100 = [objc_opt_self() sharedInstance];
    if (v100)
    {
      v101 = v100;
      v102 = [v100 pagePerformanceEnabled];

      if (!v102)
      {

        sub_1E324FBDC();
        OUTLINED_FUNCTION_88_4();
        v108(v1);
        v109 = sub_1E41FFC94();
        v110 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v110))
        {
          v111 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v111);
          _os_log_impl(&dword_1E323F000, v109, v19, "Tried to local metrics view but feature is disabled", v102, 2u);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (*(v119 + 8))(v1, v11);
        goto LABEL_70;
      }

      v103 = *MetricsDiskManager.shared.unsafeMutableAddressor();
      type metadata accessor for MetricsRenderSessionListViewController();
      v104 = v103;
      v0 = MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v104);
      sub_1E3A3E4E4();

LABEL_23:
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1E3A3A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  v120 = v23;
  v121 = v24;
  v26 = v25;
  v115 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v114[1] = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_8();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v32);
  v33 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v117 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v36);
  v37 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_226();
  v122 = 0x64692D6D616461;
  v123 = 0xE700000000000000;
  sub_1E4207414();
  sub_1E375D7E8(v26, &v124, &v129);
  sub_1E375D84C(&v129);
  v118 = v33;
  v119 = v30;
  if (!v126)
  {
    sub_1E325F6F0(&v124, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v114[0] = v20;
  if ((v123 & 0xF00000000000000) == 0)
  {

    v20 = v114[0];
LABEL_16:
    v122 = 6580592;
    v123 = 0xE300000000000000;
    sub_1E4207414();
    sub_1E375D7E8(v26, &v124, &v129);
    sub_1E375D84C(&v129);
    if (v126)
    {
      OUTLINED_FUNCTION_77_8();
      if (swift_dynamicCast())
      {
        v114[0] = v20;
        v51 = v123;
        v52 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        OUTLINED_FUNCTION_27_0();
        v53 = sub_1E4205ED4();

        v54 = [v52 numberFromString_];

        if ([objc_opt_self() vui:v54 mediaItemForPersistentIdentifier:?])
        {
          OUTLINED_FUNCTION_118();
          sub_1E3A3C02C();
          [objc_opt_self() recordPlayOfMediaItem_];
          sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          OUTLINED_FUNCTION_5_10();
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1E4298880;
          *(v55 + 32) = v51;
          v115 = v51;
          v56 = sub_1E3A3F498(5, v55, &qword_1EE23B3F8, 0x1E69705D0, &selRef_initWithPlaybackContext_mpMediaItems_);
          [v56 setIntent_];
          v57 = sub_1E41FE514();
          v58 = sub_1E41FE514();
          [v56 setUserPlaybackInitiationDate:v57 openURLCompletionDate:v58];

          sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
          v59 = sub_1E4206A04();
          OUTLINED_FUNCTION_4_0();
          v60 = swift_allocObject();
          *(v60 + 16) = v56;
          v133 = sub_1E3A4D040;
          v134 = v60;
          OUTLINED_FUNCTION_96_1();
          v130 = 1107296256;
          OUTLINED_FUNCTION_14_1();
          v131 = v61;
          v132 = &block_descriptor_191;
          v62 = _Block_copy(&v129);
          v63 = v56;

          sub_1E4203FE4();
          v129 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_3_101();
          sub_1E3A496B8(v64, v65);
          v66 = OUTLINED_FUNCTION_153_2();
          __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
          OUTLINED_FUNCTION_47();
          sub_1E328FCF4(v68, v69, &qword_1E429B000);
          sub_1E42072E4();
          OUTLINED_FUNCTION_90();
          MEMORY[0x1E6911380]();
          _Block_release(v62);
          OUTLINED_FUNCTION_329();

          v71 = OUTLINED_FUNCTION_39_3();
          v72(v71);
          OUTLINED_FUNCTION_15_5();
          v73(v116, v118);
        }

        else
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_326();
          v83 = OUTLINED_FUNCTION_101();
          v84 = v115;
          v85(v83);
          v86 = sub_1E41FFC94();
          sub_1E42067F4();
          OUTLINED_FUNCTION_101_3();
          if (os_log_type_enabled(v86, v87))
          {
            OUTLINED_FUNCTION_13_13();
            v88 = swift_slowAlloc();
            OUTLINED_FUNCTION_15_4();
            v89 = swift_slowAlloc();
            v129 = v89;
            *v88 = 136315138;
            OUTLINED_FUNCTION_23();
            v90 = OUTLINED_FUNCTION_327();
            *(v88 + 4) = sub_1E3270FC8(v90, v91, v92);
            OUTLINED_FUNCTION_70_12();
            _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v89);
            v98 = OUTLINED_FUNCTION_19_56();
            MEMORY[0x1E69143B0](v98);
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
          }

          (*(v41 + 8))(v21, v84);
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v124, &unk_1ECF296E0, &unk_1E4298030);
    }

    goto LABEL_30;
  }

  v129 = v122;
  v130 = v123 & 0xFFFFFFFFFFFFFFLL;
  if ((v123 & 0xF00000000000000) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_4();
      if (!v45 & v44)
      {
        break;
      }

      OUTLINED_FUNCTION_32_6();
      if (!v45)
      {
        break;
      }

      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        break;
      }

      OUTLINED_FUNCTION_132();
      if (v45)
      {
        goto LABEL_15;
      }
    }
  }

  v48 = 0;
  v49 = 1;
LABEL_15:
  LOBYTE(v124) = v49;
  v50 = v49;

  v20 = v114[0];
  if (v50)
  {
    goto LABEL_16;
  }

  v74 = *(v39 + 16);
  v74(v22, v120, v37);
  v74(v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v121, v37);
  v75 = *(v39 + 80);
  v76 = (v75 + 16) & ~v75;
  v77 = (v41 + v75 + v76) & ~v75;
  v78 = swift_allocObject();
  v79 = *(v39 + 32);
  v79(v78 + v76, v22, v37);
  v79(v78 + v77, v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v122 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A76D0;
  v81 = objc_opt_self();
  *(inited + 32) = [v81 movie];
  *(inited + 40) = [v81 show];
  *(inited + 48) = [v81 movieRental];
  *(inited + 56) = [v81 season];
  *(inited + 64) = [v81 episode];
  if (sub_1E32AE9B0(inited))
  {
    v82 = sub_1E3A490C8(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1E377D458();
    v82 = MEMORY[0x1E69E7CD0];
  }

  sub_1E3280A90(0, &qword_1ECF31180, off_1E87283F8);
  v99 = sub_1E3A3F524(v82);
  v100 = VUIMediaEntityFetchRequestAllPropertiesSet(v99);
  v101 = sub_1E4206624();

  sub_1E3A49A80(v101, v99);
  v102 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v103 = OUTLINED_FUNCTION_121();
  [v103 v104];

  v105 = v99;
  MEMORY[0x1E6910BF0]();
  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E42062F4();
  }

  OUTLINED_FUNCTION_39_3();
  sub_1E4206324();
  v106 = [objc_opt_self() defaultManager];
  v107 = [v106 deviceMediaLibrary];

  OUTLINED_FUNCTION_53();
  v108 = sub_1E42062A4();

  OUTLINED_FUNCTION_2_4();
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1E3A4A8E8;
  *(v109 + 24) = v78;
  v127 = sub_1E3A4A978;
  v128 = v109;
  *&v124 = MEMORY[0x1E69E9820];
  *(&v124 + 1) = 1107296256;
  v125 = sub_1E3A3F5B8;
  v126 = &block_descriptor_200;
  v110 = _Block_copy(&v124);

  v111 = OUTLINED_FUNCTION_123_3();
  v113 = [v111 v112];
  _Block_release(v110);

LABEL_30:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3B4EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  if (!(v0 >> 62))
  {
    v6 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v6 = sub_1E4207384();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1E32AE9B0(v3);
    v8 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      for (i = 0; i != v6; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E6911E60](i, v3);
        }

        else
        {
          v10 = *(v3 + 8 * i + 32);
        }

        v11 = v10;
        if (((v8 == i) & v2) == 0)
        {
          if (v5)
          {
            [v5 pushViewController:v10 animated:0];
          }
        }
      }

      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1E3A3B5DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33_0();
  v6 = MEMORY[0x1E69E7CC0];
  if ((v2 & 1) == 0 && v0)
  {
    v7 = [v0 viewControllers];
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v6 = sub_1E42062B4();
  }

  v42 = v6;

  sub_1E3A3E0D0(v8);
  v9 = sub_1E32AE9B0(v6);

  if (!v9)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1E42074B4();
    v12 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    MEMORY[0x1E6910C30](v4, v12);
    OUTLINED_FUNCTION_16_11();

    v40 = v4;
    v41 = 0;
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000010);
    if (v0)
    {
      v13 = sub_1E3280A90(0, &unk_1EE23B090, 0x1E69DCCD8);
      v14 = v0;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v37 = 0;
      v38 = 0;
    }

    v36 = v14;
    v39 = v13;
    v15 = v0;
    v16 = sub_1E3294FA4(&v36);
    MEMORY[0x1E69109E0](v16);

    MEMORY[0x1E69109E0](0x74537261656C6320, 0xED0000203A6B6361);
    v17 = sub_1E328692C(v2 & 1);
    MEMORY[0x1E69109E0](v17);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v18 = OUTLINED_FUNCTION_33_14();
    v19(v18);

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_57_3();
      v22 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_72_0();
      *v22 = 136315394;
      v23 = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E426D5E0, &v36);
      OUTLINED_FUNCTION_121_0(v23);
      v24 = OUTLINED_FUNCTION_53();
      v27 = sub_1E3270FC8(v24, v25, v26);

      *(v22 + 14) = v27;
      OUTLINED_FUNCTION_189();
      _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v33 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v33);
    }

    else
    {
    }

    v34 = OUTLINED_FUNCTION_13_8();
    v35(v34);
    goto LABEL_16;
  }

  if (!v0)
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  [v0 setViewControllers:sub_1E42062A4() animated:1];
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A3B98C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v3);
  OUTLINED_FUNCTION_10_9();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v4[5] = v0;
  v5 = v2;

  v6 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v6, v7);
  sub_1E3A3E17C();

  return result;
}

void sub_1E3A3BA40()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_198_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OUTLINED_FUNCTION_146();
    sub_1E37E93E8(v11, v12, v13, v14);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v2;
    sub_1E327D738(v0, v16 + v15);
    v17 = v4;
    v18 = v2;
    OUTLINED_FUNCTION_16_0();
    sub_1E3A3B98C();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, char a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, char a29, void *a30)
{
  OUTLINED_FUNCTION_31_1();
  v89 = v32;
  v90 = v33;
  v93 = v35;
  v94 = v34;
  v95 = v36;
  v96 = v37;
  v91 = v38;
  v40 = v39;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_179_1();
  v92 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v49 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v51 = OUTLINED_FUNCTION_8_0(v50);
  v53 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_93_2();
  v88 = v40;
  if (v40)
  {
    sub_1E37E93E8(v89, v31, &unk_1ECF363C0, &unk_1E42A9420);
    v54 = *(v42 + 16);
    v86 = v49;
    v54(v49, a21, v30);
    v54(v92, a22, v30);
    v55 = (*(v53 + 80) + 48) & ~*(v53 + 80);
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_302();
    v58 = v57 & ~v56;
    v59 = (v44 + v56 + v58) & ~v56;
    v84 = v59 + v44;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_230();
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = OUTLINED_FUNCTION_268();
    *(v62 + 2) = v91;
    *(v62 + 3) = v94;
    *(v62 + 4) = v95;
    *(v62 + 5) = v96;
    sub_1E327D738(v31, &v62[v55]);
    *&v62[v53] = v93;
    *&v62[v30] = v90;
    v63 = *(v42 + 32);
    v63(&v62[v58], v86, v30);
    v63(&v62[v59], v92, v30);
    v62[v84] = a23 & 1;
    OUTLINED_FUNCTION_165_3();
    *(v64 + 8) = a24;
    OUTLINED_FUNCTION_290();
    *&v62[v65] = a25;
    *&v62[v61] = a26;
    OUTLINED_FUNCTION_165_3();
    *v66 = a27;
    *(v66 + 8) = a28 & 1;
    v67 = &v62[(v61 + 31) & 0xFFFFFFFFFFFFFFF8];
    *v67 = v88;
    v67[8] = a29 & 1;
    OUTLINED_FUNCTION_252();
    *&v62[v68] = a30;
    v97[4] = sub_1E3A4D03C;
    v97[5] = v62;
    OUTLINED_FUNCTION_24_35();
    v97[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v97[2] = v69;
    v97[3] = &block_descriptor_157;
    v70 = _Block_copy(v97);
    v71 = a30;
    v72 = v88;

    v73 = v95;

    v74 = v93;

    v75 = a25;

    [v72 vui:1 dismissViewControllerAnimated:v70 completion:{(v61 + 47) & 0xFFFFFFFFFFFFFFF8, (v61 + 15) & 0xFFFFFFFFFFFFFFF8}];
    _Block_release(v70);
  }

  else
  {
    LOBYTE(v78) = a29 & 1;
    LOBYTE(v77) = a28 & 1;
    LOBYTE(v76) = a23 & 1;
    sub_1E3A38918(v91, v94, v95, v96, v89, v93, v90, a21, a22, v76, a24, a25, a26, a27, v77, 0, v78, a30, v79, v80, v81, v82, v83, v85, v87, 0, a22, a21, v89, v90);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3C02C()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_50_19();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v3 = OUTLINED_FUNCTION_21_16();
  v4(v3);
  v5 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);
  v14 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v20 = v1;
    v21 = v0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v18 = v15;
    v19 = &block_descriptor_150;
    v1 = _Block_copy(&v16);
  }

  [v14 dismissPlaybackAnimated:0 leaveGroupActivitySession:0 completion:{v1, v16, v17}];
  _Block_release(v1);

  OUTLINED_FUNCTION_95();
}

void sub_1E3A3C1E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33_0();
  v4 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *v4;
  if (v0)
  {
    if (v5)
    {
      type metadata accessor for Router(0);
      v6 = v5;
      v7 = v0;
      v8 = sub_1E4206F64();

      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v5)
  {
LABEL_4:
    v2();
    goto LABEL_9;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v9 = OUTLINED_FUNCTION_33_14();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_57_3();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = *v4;
    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v16;
    v15[1] = v0;
    v17 = v11;
    v18 = v16;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v24 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v24);
  }

  v25 = OUTLINED_FUNCTION_13_8();
  v26(v25);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3C3F4()
{
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v0 = OUTLINED_FUNCTION_301();
  sub_1E3B79200(v0, v1);
}

void sub_1E3A3C474()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_12();
  v25 = sub_1E4204014();
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v24 = sub_1E4206A04();
  sub_1E4204004();
  v10.n128_u64[0] = 0x3FA999999999999ALL;
  sub_1E4204074(v10);
  v11 = *(v7 + 8);
  v11(v2, v25);
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  v28[4] = sub_1E3A4BB2C;
  v28[5] = v12;
  OUTLINED_FUNCTION_12_0();
  v28[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v28[2] = v13;
  v28[3] = &block_descriptor_352;
  v14 = _Block_copy(v28);

  sub_1E4203FE4();
  v28[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v15, v16);
  v17 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v19, v20, &qword_1E429B000);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v21 = OUTLINED_FUNCTION_168();
  MEMORY[0x1E69112E0](v21);
  _Block_release(v14);

  OUTLINED_FUNCTION_215();
  v22 = OUTLINED_FUNCTION_11_6();
  v23(v22);
  (*(v26 + 8))(v0, v27);
  v11(v1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3C778()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v2 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v1;
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1F8);
    v5 = v3;

    v6 = v1;
    v7 = OUTLINED_FUNCTION_8_6();
    v4(v7);
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3A3C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  OUTLINED_FUNCTION_5_10();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v39;
  v42[4] = v37;
  if (v35 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_11_3(v33 + 16, &a12);
    v43 = v37;
    v44 = v41;
    v45 = v39;
    v46 = v35;
    v47 = sub_1E3A3CBC8();
    swift_endAccess();

    v48 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v49 = *v48;
    if (v49)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_89();
      v50 = swift_allocObject();
      v50[2] = v29;
      v50[3] = v31;
      v50[4] = v46;
      v50[5] = sub_1E3A4D11C;
      v50[6] = v42;
      OUTLINED_FUNCTION_21();
      v52 = *(v51 + 504);
      v53 = v31;

      v46 = v46;
      v54 = v49;
      OUTLINED_FUNCTION_16_5();

      v55 = v29;
      v56 = OUTLINED_FUNCTION_39_3();
      v52(v56);
    }
  }

  else
  {
    v57 = v37;
    v58 = v41;
    v59 = v39;
    v60 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v61 = *v60;
    if (v61)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_2_4();
      v62 = swift_allocObject();
      *(v62 + 16) = sub_1E3A4D11C;
      *(v62 + 24) = v42;
      OUTLINED_FUNCTION_21();
      v64 = *(v63 + 504);

      v65 = v61;
      OUTLINED_FUNCTION_31_4();

      v64(v66, v31, 0, sub_1E37D1918, v62);
    }
  }

  OUTLINED_FUNCTION_140_0();
}

double sub_1E3A3CB44()
{
  OUTLINED_FUNCTION_198_1();
  v1 = v0;
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_16_0();
  sub_1E3A3B98C();

  return result;
}

uint64_t sub_1E3A3CBC8()
{
  result = sub_1E32AE9B0(*v0);
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = sub_1E3A4ADDC();
  if (result)
  {
    return result;
  }

  v2 = sub_1E32AE9B0(*v0);
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    goto LABEL_8;
  }

  return sub_1E37EF010(result);
}

double sub_1E3A3CC20(__n128 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*v9)
  {
    v11 = *v9;
    [a4 isAnimated];
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = a5;
    *(v12 + 24) = a6;
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x200);

    v14 = OUTLINED_FUNCTION_16_0();
    v13(v14);
  }

  return result;
}

void sub_1E3A3CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  a25 = v26;
  a26 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (v27 && (v36 = v28, v37 = v27, objc_opt_self(), OUTLINED_FUNCTION_20_2(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_11_3(v35 + 16, &a12);
    v38 = v37;
    v39 = sub_1E3A3CBC8();
    swift_endAccess();

    v40 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v41 = *v40;
    if (v41)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_10_9();
      v42 = swift_allocObject();
      v42[2] = v36;
      v42[3] = v33;
      v42[4] = v38;
      v42[5] = v31;
      v43 = *((*MEMORY[0x1E69E7D40] & *v41) + 0x1F8);
      v44 = v33;
      v45 = v31;
      v46 = v38;
      v47 = v41;
      OUTLINED_FUNCTION_16_5();

      v48 = v36;
      v49 = OUTLINED_FUNCTION_38_0();
      v43(v49);
    }

    else
    {
    }
  }

  else
  {
    v50 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v51 = *v50;
    if (v51)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_4_0();
      v52 = swift_allocObject();
      *(v52 + 16) = v31;
      v53 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x1F8);
      v54 = v31;
      v55 = v51;
      OUTLINED_FUNCTION_31_4();

      v53(v56, v33, 0, sub_1E3A4D044, v52);
    }
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3A3CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, unint64_t a24, char a25, void *a26, char a27, void *a28, void *a29)
{
  OUTLINED_FUNCTION_31_1();
  v31 = v30;
  v33 = v32;
  v170 = v35;
  v172 = v34;
  v37 = v36;
  v175 = v38;
  v177 = v39;
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v41 = OUTLINED_FUNCTION_101();
  v42(v41);
  v43 = v29;
  v44 = sub_1E41FFC94();
  v45 = sub_1E4206814();
  v178 = v43;

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_57_3();
    v165 = v31;
    v46 = swift_slowAlloc();
    v167 = v37;
    v47 = swift_slowAlloc();
    *v46 = 138412546;
    v48 = v33;
    v49 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v50 = *v49;
    *(v46 + 4) = v50;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v178;
    *v47 = v50;
    v47[1] = v29;
    v51 = v178;
    v52 = v50;
    v33 = v48;
    _os_log_impl(&dword_1E323F000, v44, v45, "OpenURLHandler:: continue processRouterDataSource after dismiss %@ before %@", v46, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_343();
    v37 = v167;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v53 = OUTLINED_FUNCTION_210();
  v54(v53);
  v55 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v56 = *v55;
  if (!v29)
  {
    if (v56)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v175 && v177)
    {
      sub_1E3A39BA4();
      OUTLINED_FUNCTION_39();
      (*((*MEMORY[0x1E69E7D40] & v60) + 0x118))(1);
      goto LABEL_13;
    }

    if (v33)
    {
      v61 = OUTLINED_FUNCTION_124();
      sub_1E3A3A7F4(v61, v62, v63, v64, v65, v66, v67, v68, v165, v167, v170, v172, v175, v177, v178, v180, v181, v182, v183, v184);
      OUTLINED_FUNCTION_39();
      (*((*MEMORY[0x1E69E7D40] & v69) + 0x118))(1);
      goto LABEL_13;
    }

    if (a22)
    {
      if (a23)
      {
        OUTLINED_FUNCTION_4_0();
        v70 = swift_allocObject();
        v71 = v70;
        if (a24)
        {
          *(v70 + 16) = a24;
          if (sub_1E32AE9B0(a24))
          {
            v179 = v71;

            v72 = a22;
            v73 = a23;
            if (([v72 respondsToSelector_] & 1) != 0 && (objc_msgSend(v72, sel_canPerformNow) & 1) == 0)
            {
              OUTLINED_FUNCTION_5_10();
              v112 = swift_allocObject();
              v112[2] = v179;
              v112[3] = a26;
              v112[4] = v37;
              if (a25)
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v113 = *v55;
                if (*v55)
                {
                  OUTLINED_FUNCTION_5_10();
                  v114 = swift_allocObject();
                  v114[2] = v113;
                  v114[3] = sub_1E3A4D120;
                  v114[4] = v112;
                  OUTLINED_FUNCTION_21();
                  v116 = *(v115 + 496);
                  v117 = a26;
                  swift_retain_n();
                  v118 = v113;
                  OUTLINED_FUNCTION_16_5();

                  v102 = v113;
                  v119 = v37;
                  v120 = OUTLINED_FUNCTION_137_3();
                  v116(v120);

                  goto LABEL_41;
                }

                v156 = a26;
                swift_retain_n();
                v157 = v37;
              }

              else
              {
                v138 = a26;
                swift_retain_n();
                v139 = v37;
                OUTLINED_FUNCTION_25_45();
                OUTLINED_FUNCTION_16_0();
                sub_1E3A3C778();
              }

              goto LABEL_54;
            }

            if (a27)
            {
              OUTLINED_FUNCTION_10_9();
              v74 = swift_allocObject();
              *(v74 + 16) = v37;
              *(v74 + 24) = a25 & 1;
              *(v74 + 32) = v71;
              *(v74 + 40) = a26;
              v75 = a26;

              v37;
              OUTLINED_FUNCTION_277();
              sub_1E3A3B98C();

              goto LABEL_13;
            }

            [objc_opt_self() setAnimationsEnabled_];
            OUTLINED_FUNCTION_67_6();
            v93 = swift_allocObject();
            v93[2] = v37;
            v93[3] = v72;
            v93[4] = a28;
            v93[5] = a29;
            v93[6] = v179;
            v93[7] = a26;
            v93[8] = v73;
            if (a25)
            {
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v94 = *v55;
              if (v94)
              {
                OUTLINED_FUNCTION_5_10();
                v95 = swift_allocObject();
                v95[2] = v94;
                v95[3] = sub_1E3A4D050;
                v95[4] = v93;
                v96 = *((*MEMORY[0x1E69E7D40] & *v94) + 0x1F0);
                v97 = a28;

                v98 = v94;
                v72 = v72;
                v73 = v73;
                v99 = v37;
                v100 = a26;
                v101 = a29;

                v102 = v98;
                v103 = OUTLINED_FUNCTION_137_3();
                v96(v103);

LABEL_41:

LABEL_49:

LABEL_54:

LABEL_55:
                goto LABEL_56;
              }

              v152 = a28;
              v153 = v37;
              v154 = a26;
              v155 = a29;
            }

            else
            {
              OUTLINED_FUNCTION_5_10();
              v121 = swift_allocObject();
              v121[2] = v37;
              v121[3] = v72;
              v176 = v121;
              v121[4] = a28;
              if (!a29 || (objc_opt_self(), OUTLINED_FUNCTION_20_2(), !swift_dynamicCastObjCClass()))
              {
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v140 = *v55;
                if (!*v55)
                {
                  v158 = a29;
                  swift_retain_n();
                  v159 = a28;
                  v160 = v72;
                  v161 = v37;
                  v162 = v159;
                  v163 = v161;
                  v164 = a26;

                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v166 = *(v179 + 16);
                OUTLINED_FUNCTION_2_4();
                v174 = swift_allocObject();
                *(v174 + 16) = sub_1E3A4D11C;
                *(v174 + 24) = v176;
                v169 = *((*MEMORY[0x1E69E7D40] & *v140) + 0x1F8);
                v141 = a29;
                swift_retain_n();
                v142 = a28;

                v143 = v140;

                v144 = v72;
                v145 = v37;
                v146 = v142;
                v72 = v144;
                v73 = v73;
                v147 = v145;
                v148 = a26;
                v169(v166, a26, 0, sub_1E37D1918, v174);

                goto LABEL_49;
              }

              OUTLINED_FUNCTION_11_3(v179 + 16, v186);
              v171 = a26;
              v122 = a29;
              OUTLINED_FUNCTION_31_4();
              swift_retain_n();
              v123 = a28;
              v124 = v72;
              v125 = v37;
              v126 = a29;
              v127 = v123;
              v173 = v124;
              v73 = v73;
              v128 = v125;
              v129 = sub_1E3A3CBC8();
              swift_endAccess();

              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v130 = *v55;
              if (!*v55)
              {
                OUTLINED_FUNCTION_194_0();

                goto LABEL_55;
              }

              OUTLINED_FUNCTION_89();
              v131 = swift_allocObject();
              v131[2] = v73;
              v131[3] = a26;
              v131[4] = v126;
              v131[5] = sub_1E3A4D11C;
              v131[6] = v176;
              OUTLINED_FUNCTION_21();
              v133 = *(v132 + 504);
              v168 = v73;
              v134 = v171;
              v135 = v126;
              v136 = v130;

              v137 = OUTLINED_FUNCTION_142();
              v133(v137);
            }

            goto LABEL_56;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_0();
          swift_deallocUninitializedObject();
        }
      }

      OUTLINED_FUNCTION_4_0();
      *(swift_allocObject() + 16) = v37;
      v92 = a22;
      v37;
      OUTLINED_FUNCTION_169_0();
      sub_1E3A3B98C();

      goto LABEL_56;
    }

    if (!a23)
    {
      goto LABEL_13;
    }

    v76 = v37;
    OUTLINED_FUNCTION_4_0();
    v77 = swift_allocObject();
    v78 = v77;
    if (!a24)
    {
      OUTLINED_FUNCTION_4_0();
      swift_deallocUninitializedObject();
      goto LABEL_13;
    }

    *(v77 + 16) = a24;
    if (sub_1E32AE9B0(a24))
    {
      v79 = objc_opt_self();

      v80 = a23;
      [v79 setAnimationsEnabled_];
      OUTLINED_FUNCTION_89();
      v81 = swift_allocObject();
      v81[2] = a29;
      v81[3] = v78;
      v81[4] = a26;
      v81[5] = v80;
      v81[6] = v76;
      if (a25)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v82 = *v55;
        if (!*v55)
        {
          v149 = a29;
          v150 = v76;
          v151 = a26;
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_5_10();
        v83 = swift_allocObject();
        v83[2] = v82;
        v83[3] = sub_1E3A4D04C;
        v83[4] = v81;
        v84 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x1F0);
        v85 = a29;
        v86 = v82;
        OUTLINED_FUNCTION_16_5();

        OUTLINED_FUNCTION_194_0();
        swift_retain_n();
        v87 = a29;
        v88 = v80;
        v89 = v76;
        v90 = a26;
        v91 = OUTLINED_FUNCTION_137_3();
        v84(v91);
        OUTLINED_FUNCTION_194_0();
      }

      else
      {
        v104 = a29;
        OUTLINED_FUNCTION_194_0();
        swift_retain_n();
        v88 = v80;
        v105 = v76;
        v106 = a26;
        v107 = OUTLINED_FUNCTION_63_0();
        sub_1E3A3CDA0(v107, v108, a26, v88, v105, v109, v110, v111, v165, v167, v170, v172, v175, v177, v178, v180, v181, v182, v183, v184, v185, v186[0], v186[1], v186[2], v186[3], v186[4]);
        OUTLINED_FUNCTION_194_0();
      }
    }

    else
    {
    }

LABEL_56:

    goto LABEL_13;
  }

  if (v56)
  {
    type metadata accessor for Router(0);
    v57 = v178;
    v58 = v56;
    OUTLINED_FUNCTION_27_0();
    v59 = sub_1E4206F64();

    if (v59)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, char a24, void *a25, char a26, void *a27, void *a28)
{
  OUTLINED_FUNCTION_31_1();
  v76 = v28;
  v78 = v29;
  v83 = v30;
  v84 = v31;
  v80 = v33;
  v82 = v32;
  v35 = v34;
  v79 = v36;
  v37 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_179_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_3();
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_219();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v53 = v52;
  v54 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v55 = *v54;
  if (*v54)
  {
    sub_1E37E93E8(v80, v53, &unk_1ECF363C0, &unk_1E42A9420);
    v81 = v35;
    v56 = *(v39 + 16);
    v75 = v47;
    v56(v47, v76, v37);
    v57 = v44;
    v56(v44, v78, v37);
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_53_23();
    v74 = (v41 + v58 + v53) & ~v58;
    v77 = (v41 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
    v61 = OUTLINED_FUNCTION_268();
    *(v61 + 2) = v55;
    *(v61 + 3) = v79;
    *(v61 + 4) = v82;
    *(v61 + 5) = v81;
    *(v61 + 6) = v83;
    sub_1E327D738(v53, v56 + v61);
    *&v61[v50] = v84;
    v62 = *(v39 + 32);
    v62(&v61[v53], v75, v37);
    v62(&v61[v74], v57, v37);
    *&v61[v77] = a21;
    *&v61[v59] = a22;
    v63 = &v61[(v59 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v63 = a23;
    v63[8] = a24 & 1;
    v64 = &v61[(v59 + 31) & 0xFFFFFFFFFFFFFFF8];
    *v64 = a25;
    v64[8] = a26 & 1;
    *&v61[v60] = a27;
    *&v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8] = a28;
    v65 = *((*MEMORY[0x1E69E7D40] & *v55) + 0x208);
    v66 = a28;
    v67 = v55;

    v68 = v83;

    v69 = a21;
    v70 = a22;

    v71 = a25;
    v72 = a27;
    v73 = OUTLINED_FUNCTION_137_3();
    v65(v73);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A3E0D0(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3A4A0AC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E3A3E17C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_118();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  if ([v0 isAccountRequired] && (v4 = objc_opt_self(), (objc_msgSend(v4, sel_userHasActiveAccount) & 1) == 0) && objc_msgSend(v4, sel_allowsAccountModification))
  {
    OUTLINED_FUNCTION_5_10();
    v5 = swift_allocObject();
    v5[2] = v0;
    v5[3] = v2;
    v5[4] = v1;
    v26 = sub_1E3A4B2A4;
    v27 = v5;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
    v24 = sub_1E326FFE4;
    v25 = &block_descriptor_222;
    v6 = _Block_copy(v23);
    v7 = v0;
    v8 = OUTLINED_FUNCTION_53();
    sub_1E34AF604(v8, v9);

    [v4 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v6];
    _Block_release(v6);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v10 = OUTLINED_FUNCTION_43_0();
    v11(v10);
    v12 = v7;
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067D4();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_57_3();
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_4();
      v23[0] = swift_slowAlloc();
      *v15 = 136315394;
      OUTLINED_FUNCTION_23();
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000023, v17, v23);
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&dword_1E323F000, v13, v14, "OpenURLHandler::%s authentication requested for action: [%@]", v15, 0x16u);
      sub_1E325F6F0(v16, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v19 = OUTLINED_FUNCTION_16_0();
    v20(v19);
  }

  else
  {
    if (v2)
    {
      v26 = v2;
      v27 = v1;
      OUTLINED_FUNCTION_12_0();
      v23[1] = 1107296256;
      OUTLINED_FUNCTION_26_41();
      v24 = v21;
      v25 = &block_descriptor_216;
      v22 = _Block_copy(v23);
    }

    else
    {
      v22 = 0;
    }

    [v0 performWithTargetResponder:0 completionHandler:v22];
    _Block_release(v22);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A3E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_1E3A3E4E4()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  v2 = sub_1E4205ED4();
  v3 = MGGetBoolAnswer();

  if (v3)
  {
    if ([objc_opt_self() isSUIEnabled])
    {
      v4 = sub_1E40C4340();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v5 = *v4;
      if (*v4)
      {
        v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);
        v7 = v5;
        v8 = OUTLINED_FUNCTION_50();
        v6(v8, 1, 1, 1, 0, 0);
      }
    }

    else
    {
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 appController];

      if (v17)
      {
        v18 = [v17 navigationController];

        [v18 pushViewController:v0 animated:1];
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    v9 = OUTLINED_FUNCTION_101();
    v10(v9);
    v11 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v13);
      _os_log_impl(&dword_1E323F000, v11, v2, "Ignored Open Debug event due to invalid config due to internal build being false", v3, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v14 = OUTLINED_FUNCTION_57();
    v15(v14);
  }
}

void sub_1E3A3E77C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v4 = OUTLINED_FUNCTION_43_0();
  v5(v4);
  v6 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_13();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v14 = swift_slowAlloc();
    *v8 = 136315138;
    v9 = sub_1E328692C(v2 & 1);
    v11 = sub_1E3270FC8(v9, v10, &v14);

    *(v8 + 4) = v11;
    OUTLINED_FUNCTION_50_6(&dword_1E323F000, v6, v0, "OpenURLHandler::VPPA consent deeplink was successful %s");
    OUTLINED_FUNCTION_91_6();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3E8D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v6 = OUTLINED_FUNCTION_123_3();
  v7(v6);
  v8 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_13();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v30 = swift_slowAlloc();
    *v10 = 136315138;
    OUTLINED_FUNCTION_23();
    *(v10 + 4) = sub_1E3270FC8(0xD000000000000016, v11, &v30);
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v17 = OUTLINED_FUNCTION_63_0();
  v18(v17);
  v19 = [objc_allocWithZone(VUIFamilyInviteManager) init];
  v20 = OUTLINED_FUNCTION_13_8();
  sub_1E37E93E8(v20, v21, v22, v23);
  sub_1E41FE414();
  v24 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_52(v24, 1, v2);
  if (v25)
  {

    sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    sub_1E39E6E90();
    v27 = v26;
    OUTLINED_FUNCTION_34_34();
    v28 = OUTLINED_FUNCTION_27_0();
    v29(v28);
    sub_1E37E4D10(v27);
    OUTLINED_FUNCTION_12_1();

    sub_1E3A49974(v0, 0, v19);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3EB34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

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
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v11 = v10[1];
    *&v30[0] = *v10;
    *(&v30[0] + 1) = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    v12 = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E3A3EDFC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_12();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v71 = v6;
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  if (v1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      OUTLINED_FUNCTION_5_10();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E4298880;
      *(v16 + 32) = v15;
      v17 = v1;
      v18 = sub_1E3A3F498(5, v16, &unk_1ECF311A8, off_1E8728428, &selRef_initWithPlaybackContext_vuiMediaItems_);
      [v18 setIntent_];
      v19 = sub_1E41FE514();
      v20 = sub_1E41FE514();
      [v18 setUserPlaybackInitiationDate:v19 openURLCompletionDate:v20];

      [v18 setAutomaticPlaybackStart_];
      objc_opt_self();
      v21 = v18;
      v22 = OUTLINED_FUNCTION_43_0();
      [v22 v23];
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v24 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v25 = swift_allocObject();
      *(v25 + 16) = v21;
      v77 = sub_1E3A4ABBC;
      v78 = v25;
      OUTLINED_FUNCTION_12_0();
      v74 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v75 = v26;
      v76 = &block_descriptor_206;
      v27 = _Block_copy(&v73);
      v28 = v21;

      sub_1E4203FE4();
      v73 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_101();
      sub_1E3A496B8(v29, v30);
      v31 = OUTLINED_FUNCTION_153_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v33, v34, &qword_1E429B000);
      OUTLINED_FUNCTION_250();
      sub_1E42072E4();
      OUTLINED_FUNCTION_168_0();
      MEMORY[0x1E6911380]();
      _Block_release(v27);

      v35 = OUTLINED_FUNCTION_39_3();
      v36(v35);
      (*(v71 + 8))(v2, v72);
    }

    else
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      v50 = v1;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000040, 0x80000001E426D570);
      v51 = [v50 description];
      sub_1E4205F14();

      v52 = OUTLINED_FUNCTION_75();
      MEMORY[0x1E69109E0](v52);

      sub_1E324FBDC();
      OUTLINED_FUNCTION_89_5();
      v53(v3);

      v54 = sub_1E41FFC94();
      v55 = sub_1E42067F4();

      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_57_3();
        v56 = swift_slowAlloc();
        v73 = OUTLINED_FUNCTION_72_0();
        *v56 = 136315394;
        OUTLINED_FUNCTION_23();
        v57 = OUTLINED_FUNCTION_327();
        v60 = sub_1E3270FC8(v57, v58, v59);
        OUTLINED_FUNCTION_121_0(v60);
        v61 = OUTLINED_FUNCTION_53();
        v64 = sub_1E3270FC8(v61, v62, v63);

        *(v56 + 14) = v64;
        OUTLINED_FUNCTION_189();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        v70 = OUTLINED_FUNCTION_19_56();
        MEMORY[0x1E69143B0](v70);
      }

      else
      {
      }

      (*(v8 + 8))(v3, v0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_89_5();
    v37(v12);
    v38 = sub_1E41FFC94();
    v39 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_161(v39))
    {
      OUTLINED_FUNCTION_13_13();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v41 = swift_slowAlloc();
      v73 = v41;
      *v40 = 136315138;
      OUTLINED_FUNCTION_23();
      v42 = OUTLINED_FUNCTION_327();
      *(v40 + 4) = sub_1E3270FC8(v42, v43, v44);
      OUTLINED_FUNCTION_82_0();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v8 + 8))(v12, v0);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A3F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_260();
  v8 = v7;
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_91();
  sub_1E3280A90(v10, v11, v12);
  v13 = sub_1E42062A4();

  v14 = [v5 *a5];

  return v14;
}

id sub_1E3A3F524(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF31190, off_1E8728418);
  sub_1E3A4AB54();
  v2 = sub_1E4206614();

  v3 = [v1 initWithMediaEntityTypes_];

  return v3;
}

uint64_t sub_1E3A3F5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E3280A90(0, &qword_1ECF31188, off_1E8728400);
    v4 = sub_1E42062B4();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1E3A3F65C()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v1;
  v41 = v2;
  v39 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_106();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_278();
  v12 = v11 - (v10 & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE3F4();
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = sub_1E4205F94();
  v16 = v15;

  if (v14 == 0x736F65646976 && v16 == 0xE600000000000000)
  {
  }

  else
  {
    v18 = sub_1E42079A4();

    if ((v18 & 1) == 0)
    {
LABEL_7:
      v19 = [objc_opt_self() vui_defaultBag];
      if (v19)
      {
        v20 = v19;
        v21 = objc_allocWithZone(MEMORY[0x1E698C820]);
        v22 = v20;
        v23 = sub_1E41FE364();
        v38 = [v21 initWithURL:v23 bag:v22];

        v24 = [v38 perform];
        OUTLINED_FUNCTION_28_13();
        v25(v12, v0, v6);
        OUTLINED_FUNCTION_272();
        v27 = v26 & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = v5;
        OUTLINED_FUNCTION_240();
        v29();
        *(v28 + v8) = v39;
        v30 = (v28 + v27);
        *v30 = v40;
        v30[1] = v41;
        v42[4] = sub_1E3A4C83C;
        v42[5] = v28;
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_23_40(COERCE_DOUBLE(1107296256));
        v42[2] = v31;
        v42[3] = &block_descriptor_498;
        v32 = _Block_copy(v42);
        v33 = v39;

        v34 = OUTLINED_FUNCTION_11_6();
        sub_1E34AF604(v34, v35);

        [v24 addFinishBlock_];
        _Block_release(v32);

LABEL_14:
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        OUTLINED_FUNCTION_98_6();
        OUTLINED_FUNCTION_313();
        sub_1E3A40514();
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v24 = v36;
    OUTLINED_FUNCTION_313();
    sub_1E3A3F984();
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3F984()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v58 = v2;
  v52 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_317();
  v56 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v53 = v10;
  sub_1E41FE5C4();
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_151_1();
  v13(v14);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  OUTLINED_FUNCTION_26_3();
  inited = *((*MEMORY[0x1E69E7D40] & v18) + 0x270);
  v59 = 0xE700000000000000;
  v60 = 0x64692D6D616461;
  v20 = (inited)(v0, 0x64692D6D616461, 0xE700000000000000);
  v22 = v21;
  sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  v57 = v5;
  if (v22)
  {
    OUTLINED_FUNCTION_203_0();
    goto LABEL_5;
  }

  v60 = 6580592;
  v23 = OUTLINED_FUNCTION_151_1();
  v13(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v20 = (inited)(v0, 6580592, 0xE300000000000000);
  v22 = v27;
  sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  if (v22)
  {
    v59 = 0xE300000000000000;
    OUTLINED_FUNCTION_203_0();
LABEL_5:
    v28 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758, &qword_1E42D9E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1E4297BE0;
    *(v30 + 32) = v60;
    *(v30 + 40) = v59;
    *(v30 + 48) = v20;
    *(v30 + 56) = v22;
    *(inited + 48) = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    OUTLINED_FUNCTION_38_0();
    sub_1E4205CB4();
    sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
    v31 = OUTLINED_FUNCTION_50();
    sub_1E3A3EB34(v31);
    OUTLINED_FUNCTION_87_0();

    v32 = v52;
    v33 = OUTLINED_FUNCTION_34();
    v35 = sub_1E3A355A4(v33, v34);
    if (v35)
    {
      OUTLINED_FUNCTION_273();
      v50();
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
      v35 = v35;
      sub_1E3A32608(v35, v52, 1, v53, v0, v39, v40, v41, v47, v48, v49, v50, v51, v52, 1, 2, v54, v55, v56, v57);

      sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
      v42 = v58;
    }

    else
    {
      v42 = v58;
      OUTLINED_FUNCTION_273();
    }

    goto LABEL_9;
  }

  v35 = 0;
  v42 = v58;
  OUTLINED_FUNCTION_273();
  v28 = v53;
LABEL_9:
  sub_1E3A407C0();
  if (v42)
  {
    v43 = sub_1E4205F14();
    v42(inited, v43, v44, 1, 0);

    OUTLINED_FUNCTION_15_5();
    v45(v28, v56);
  }

  else
  {
    OUTLINED_FUNCTION_15_5();
    v46(v28, v56);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A3FE68()
{
  OUTLINED_FUNCTION_31_1();
  v79 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_144_0();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v85 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v84 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v81 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v83 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_8();
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v86 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47_3();
  v87 = v2;
  if (v5)
  {
    sub_1E324FBDC();
    v24 = OUTLINED_FUNCTION_21_16();
    v25(v24);
    v26 = v5;
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_13_13();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_238();
      v91 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v90 = v88;
      __swift_allocate_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_34_34();
      (*(v31 + 16))(v32);
      v33 = sub_1E3294FA4(v89);
      v35 = sub_1E3270FC8(v33, v34, &v91);

      *(v29 + 4) = v35;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, v27, v28, "OpenURLHandler::error returned in campaignAttributionTask: %s");
      __swift_destroy_boxed_opaque_existential_1(v0);
      v0 = v80;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0](v36);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0](v37);
    }

    v38 = OUTLINED_FUNCTION_153_2();
    v39(v38);
    v2 = v87;
  }

  if (v0)
  {
    v82 = v18;
    v40 = OUTLINED_FUNCTION_47_12(v0);
    v42 = [v40 v41];
    if (v42)
    {
      v43 = v42;
      sub_1E41FE3C4();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    __swift_storeEnumTagSinglePayload(v1, v44, 1, v6);
    v45 = OUTLINED_FUNCTION_146();
    sub_1E327D738(v45, v46);
    sub_1E324FBDC();
    v47 = OUTLINED_FUNCTION_101();
    v48(v47);
    sub_1E37E93E8(v2, v83, &unk_1ECF363C0, &unk_1E42A9420);
    v49 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_13_13();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v52 = swift_slowAlloc();
      v91 = v52;
      *v51 = 136315138;
      sub_1E37E93E8(v83, v81, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_52(v81, 1, v6);
      if (v53)
      {
        v56 = v6;
        sub_1E325F6F0(v81, &unk_1ECF363C0, &unk_1E42A9420);
        OUTLINED_FUNCTION_2_85();
      }

      else
      {
        v90 = v6;
        __swift_allocate_boxed_opaque_existential_1(v89);
        OUTLINED_FUNCTION_322();
        v56 = v6;
        v57();
      }

      sub_1E3294FA4(v89);
      OUTLINED_FUNCTION_9_9();
      sub_1E325F6F0(v83, &unk_1ECF363C0, &unk_1E42A9420);
      v58 = OUTLINED_FUNCTION_34();
      v61 = sub_1E3270FC8(v58, v59, v60);

      *(v51 + 4) = v61;
      _os_log_impl(&dword_1E323F000, v49, v1, "OpenURLHandler::redirectURL returned in campaignAttributionTask: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v20 + 8))(v86, v82);
      v6 = v56;
      v2 = v87;
    }

    else
    {

      sub_1E325F6F0(v83, &unk_1ECF363C0, &unk_1E42A9420);
      v54 = OUTLINED_FUNCTION_16_0();
      v55(v54);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v64 = OUTLINED_FUNCTION_123_1();
      sub_1E37E93E8(v64, v65, v66, v67);
      v68 = OUTLINED_FUNCTION_245();
      OUTLINED_FUNCTION_52(v68, v69, v6);
      if (v53)
      {
        v70 = OUTLINED_FUNCTION_259();
        v71(v70);
        v72 = OUTLINED_FUNCTION_245();
        OUTLINED_FUNCTION_52(v72, v73, v6);
        if (!v53)
        {
          sub_1E325F6F0(v84, &unk_1ECF363C0, &unk_1E42A9420);
        }
      }

      else
      {
        OUTLINED_FUNCTION_322();
        v75(v85, v84, v6);
      }

      OUTLINED_FUNCTION_98_6();
      sub_1E3A40514();

      OUTLINED_FUNCTION_143();
      v77 = OUTLINED_FUNCTION_27_0();
      v78(v77);
    }

    else
    {
      OUTLINED_FUNCTION_143();
    }

    sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40514()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v3;
  v46 = v4;
  v47 = v5;
  v44 = v6;
  v45 = v7;
  v48 = v1;
  v43 = v8;
  OUTLINED_FUNCTION_50_19();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_138();
  v51 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77_0();
  sub_1E41FE5C4();
  v49 = v0;
  if (v0)
  {
    v41 = v9;
    v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = OUTLINED_FUNCTION_8_6();
    v22(v21);
    OUTLINED_FUNCTION_28_13();
    v23 = OUTLINED_FUNCTION_39_9();
    v24(v23);
    v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (*(v16 + 80) + v27 + 8) & ~*(v16 + 80);
    v29 = swift_allocObject();
    (*(v11 + 32))(v29 + v25, v42, v41);
    v31 = v48;
    v30 = v49;
    *(v29 + v26) = v48;
    *(v29 + v27) = v30;
    (*(v16 + 32))(v29 + v28, &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
    v32 = (v29 + ((v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v43;
    *v32 = v44;
    v32[1] = v33;
    v52[4] = v46;
    v52[5] = v29;
    OUTLINED_FUNCTION_12_0();
    v52[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v52[2] = v34;
    v52[3] = v47;
    v35 = _Block_copy(v52);
    v36 = v31;
    v30;
    v37 = OUTLINED_FUNCTION_168();
    v50(v37);

    v38 = OUTLINED_FUNCTION_43_0();
    [v38 v39];
    _Block_release(v35);
  }

  (*(v16 + 8))(v2, v51);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A407C0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_0();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  v6 = [objc_opt_self() isSUIEnabled];
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v7 = sub_1E4206A04();
  if (v6)
  {
    v22 = sub_1E3A465C0;
    v23 = 0;
    OUTLINED_FUNCTION_12_0();
    v19 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v9 = &block_descriptor_420;
  }

  else
  {
    v22 = sub_1E3A465DC;
    v23 = 0;
    OUTLINED_FUNCTION_12_0();
    v19 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v9 = &block_descriptor_417;
  }

  v20 = v8;
  v21 = v9;
  v10 = _Block_copy(&v18);
  sub_1E4203FE4();
  v18 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v13, v14, &qword_1E429B000);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v10);
  _Block_release(v10);

  OUTLINED_FUNCTION_215();
  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  (*(v4 + 8))(v1, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40A38()
{
  OUTLINED_FUNCTION_31_1();
  v54 = v2;
  v55 = v3;
  v52 = v5;
  v53 = v4;
  v57 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_304();
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_132_3();
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v0 objectForKeyedSubscript_];
  if (!v22)
  {
    goto LABEL_4;
  }

  v56 = v22;
  v51 = @"getOpenURLRouterDataSource";
  if ([v22 hasProperty_])
  {
    v23 = sub_1E41FE314();
    v49 = v24;
    v50 = v23;
    OUTLINED_FUNCTION_88_4();
    OUTLINED_FUNCTION_114_3();
    v25();
    OUTLINED_FUNCTION_131_0();
    v48 = v9;
    v26(v1, v52, v9);
    OUTLINED_FUNCTION_303();
    v27 = (v19 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v11 + 80);
    v52 = v0;
    v29 = (v28 + v27 + 8) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v57;
    (*(v17 + 32))(v30 + v8, v21, v15);
    v31 = v53;
    *(v30 + v27) = v53;
    (*(v11 + 32))(v30 + v29, v1, v48);
    v32 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v55;
    *v32 = v54;
    v32[1] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v35 = OUTLINED_FUNCTION_28_30(v34);
    *(v35 + 16) = xmmword_1E4299720;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v36 = v49;
    *(v35 + 32) = v50;
    *(v35 + 40) = v36;
    v37 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
    v38 = v31;
    v39 = v57;
    v40 = OUTLINED_FUNCTION_38_0();
    sub_1E34AF604(v40, v41);
    v42 = sub_1E3A242D8(v52, sub_1E3A4CD24, v30);
    *(v35 + 88) = v37;
    *(v35 + 64) = v42;
    v43 = sub_1E4205F14();
    v45 = sub_1E3780E30(v43, v44, v35, v56);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A40D68()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_12();
  if (!sub_1E32AE9B0(v10))
  {
    OUTLINED_FUNCTION_200_0();
LABEL_13:
    sub_1E325F6F0(&v31, &unk_1ECF296E0, &unk_1E4298030);
    v19 = 0;
    goto LABEL_14;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v29 = OUTLINED_FUNCTION_321();
    v15 = MEMORY[0x1E6911E60](v29);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v15 = *(v10 + 32);
  }

  v16 = v15;
  v17 = [v15 toObject];

  if (v17)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v18)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v19 = v30[8];
  }

  else
  {
    v19 = 0;
  }

LABEL_14:
  v20 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v21 = OUTLINED_FUNCTION_146();
  v22(v21);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  v26 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v30[2] = v0;
  v30[3] = v19;
  v30[4] = v6;
  v30[5] = v4;
  v30[6] = v2;
  v30[7] = v8;
  OUTLINED_FUNCTION_346(v27, v28, v30);
  sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E3A40FD4()
{
  OUTLINED_FUNCTION_31_1();
  v48 = v2;
  v49 = v3;
  v50 = v4;
  v51 = v5;
  v53 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_106();
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_132_3();
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_227();
  v23 = v21 - v22;
  v24 = [v0 objectForKeyedSubscript_];
  if (!v24)
  {
    goto LABEL_4;
  }

  v52 = v24;
  if ([v24 hasProperty_])
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v47 = v0;
    sub_1E3B79200(sub_1E3A41334, 0);
    v25 = v8;
    v26 = sub_1E41FE314();
    v45 = v27;
    v46 = v26;
    OUTLINED_FUNCTION_66_4();
    v28 = OUTLINED_FUNCTION_8_6();
    v29(v28);
    OUTLINED_FUNCTION_88_4();
    v30(v1, v48, v9);
    OUTLINED_FUNCTION_303();
    v31 = (v19 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_53_23();
    v32 = swift_allocObject();
    *(v32 + 16) = v53;
    (*(v17 + 32))(v32 + v25, v23, v15);
    *(v32 + v31) = v50;
    (*(v11 + 32))(v32 + v9, v1, v9);
    v33 = (v32 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v51;
    v33[1] = v49;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v35 = OUTLINED_FUNCTION_28_30(v34);
    *(v35 + 16) = xmmword_1E4299720;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 32) = v46;
    *(v35 + 40) = v45;
    v36 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
    v37 = v50;
    v38 = v53;
    sub_1E34AF604(v51, v49);
    v39 = sub_1E3A242D8(v47, sub_1E3A4B564, v32);
    *(v35 + 88) = v36;
    *(v35 + 64) = v39;
    v40 = sub_1E4205F14();
    v42 = sub_1E3780E30(v40, v41, v35, v52);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A41334()
{
  v0 = objc_opt_self();
  v1 = [v0 loadingScreen];
  v2 = [v1 isVisible];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 loadingScreen];
    [v3 setLoadingDelay_];
    [v3 setTimeout_];
    [v3 showOverKeyWindowWithSpinnerOnly_];
  }
}

void sub_1E3A41418()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  if (!sub_1E32AE9B0(v12))
  {
    OUTLINED_FUNCTION_200_0();
LABEL_13:
    sub_1E325F6F0(&v34, &unk_1ECF296E0, &unk_1E4298030);
    v21 = 0;
    goto LABEL_14;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E6911E60](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v17 = *(v12 + 32);
  }

  v18 = v17;
  v19 = [v17 toObject];

  if (v19)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v20)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v21 = v33;
  }

  else
  {
    v21 = 0;
  }

LABEL_14:
  v22 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_39_0();
  v24(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  v28 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_228();
  *(v29 - 64) = v0;
  *(v29 - 56) = v21;
  *(v29 - 48) = v10;
  *(v29 - 40) = v4;
  *(v29 - 32) = v2;
  *(v29 - 24) = v8;
  *(v29 - 16) = v6;
  OUTLINED_FUNCTION_346(v32, v30, v31);
  sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E3A41684()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v115 = v7;
  v116 = v6;
  OUTLINED_FUNCTION_123_2();
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v112 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = OUTLINED_FUNCTION_27_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v105 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v106 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v117 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v118 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47_3();
  sub_1E324FBDC();
  v30 = OUTLINED_FUNCTION_101();
  v109 = v31;
  v108 = v32;
  (v32)(v30);
  v110 = v2;
  v33 = OUTLINED_FUNCTION_102_3();
  sub_1E37E93E8(v33, v34, &unk_1ECF363C0, &unk_1E42A9420);
  v35 = sub_1E41FFC94();
  v36 = sub_1E42067D4();
  v107 = v8;
  if (os_log_type_enabled(v35, v36))
  {
    v111 = v24;
    v102 = v26;
    v113 = v5;
    OUTLINED_FUNCTION_57_3();
    v38 = v37;
    v40 = v39;
    v41 = swift_slowAlloc();
    v121[0] = OUTLINED_FUNCTION_72_0();
    *v41 = *(v40 + 352);
    v42 = sub_1E3270FC8(0xD000000000000031, (v38 - 32) | 0x8000000000000000, v121);
    OUTLINED_FUNCTION_121_0(v42);
    v43 = OUTLINED_FUNCTION_283();
    sub_1E37E93E8(v43, v44, v45, v46);
    OUTLINED_FUNCTION_52(v3, 1, v8);
    if (v47)
    {
      sub_1E325F6F0(v3, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_2_85();
    }

    else
    {
      v120 = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v119);
      (*(v112 + 32))(boxed_opaque_existential_1, v3, v8);
    }

    sub_1E3294FA4(v119);
    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v51 = OUTLINED_FUNCTION_39_9();
    v54 = sub_1E3270FC8(v51, v52, v53);

    *(v41 + 14) = v54;
    _os_log_impl(&dword_1E323F000, v35, v36, "OpenURLHandler::%s back from %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v55 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v55);

    v48 = *(v102 + 8);
    v24 = v111;
    v48(v0, v111);
    v5 = v113;
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    v48 = *(v26 + 8);
    v49 = OUTLINED_FUNCTION_153_2();
    (v48)(v49);
  }

  if (v116)
  {
    sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
    v56 = v115;

    v58 = sub_1E3A355A4(v57, v115);
    if (v58)
    {
      v59 = v58;
      v108(v118, v109, v24);
      sub_1E37E93E8(v110, v117, &unk_1ECF363C0, &unk_1E42A9420);
      v60 = sub_1E41FFC94();
      v61 = sub_1E42067D4();
      v114 = v5;
      if (os_log_type_enabled(v60, v61))
      {
        OUTLINED_FUNCTION_57_3();
        v62 = swift_slowAlloc();
        v121[0] = OUTLINED_FUNCTION_72_0();
        *v62 = 136315394;
        OUTLINED_FUNCTION_23();
        *(v62 + 4) = sub_1E3270FC8(0xD000000000000031, v63, v121);
        *(v62 + 12) = 2080;
        sub_1E37E93E8(v117, v106, &unk_1ECF363C0, &unk_1E42A9420);
        OUTLINED_FUNCTION_52(v106, 1, v107);
        if (v47)
        {
          sub_1E325F6F0(v106, &unk_1ECF363C0, &unk_1E42A9420);
          OUTLINED_FUNCTION_2_85();
        }

        else
        {
          v120 = v107;
          v66 = __swift_allocate_boxed_opaque_existential_1(v119);
          (*(v112 + 32))(v66, v106, v107);
        }

        sub_1E3294FA4(v119);
        OUTLINED_FUNCTION_16_11();
        sub_1E325F6F0(v117, &unk_1ECF363C0, &unk_1E42A9420);
        v67 = OUTLINED_FUNCTION_146();
        v70 = sub_1E3270FC8(v67, v68, v69);

        *(v62 + 14) = v70;
        _os_log_impl(&dword_1E323F000, v60, v61, "OpenURLHandler::%s process data source %s", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v64 = v118;
        v65 = v24;
      }

      else
      {

        sub_1E325F6F0(v117, &unk_1ECF363C0, &unk_1E42A9420);
        v64 = v118;
        v65 = v24;
      }

      v48(v64, v65);
      v71 = sub_1E3A49AF4(v59);
      if (v71)
      {
        v72 = v71;
        if (sub_1E32AE9B0(v71))
        {
          sub_1E3A384DC(v72);
          OUTLINED_FUNCTION_12_1();

          if (v61)
          {
            if (v115)
            {
              v73 = objc_opt_self();
              v74 = v56;
              v75 = [v73 sharedInstance];
              v76 = [v75 viewControllerWithDocumentDataSource:v61 appContext:v74];

              if (v76)
              {
                if (v114)
                {
                  v114(v76, 0);
                }

                goto LABEL_44;
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      v77 = [v59 action];
      if (v77)
      {
        v61 = v77;
        v78 = objc_opt_self();
        v79 = OUTLINED_FUNCTION_345(v78);
        if (v79 && v115)
        {
          v80 = v79;
          v81 = v56;
          v82 = [v80 document];
          v83 = [objc_opt_self() sharedInstance];
          v84 = [v83 viewControllerWithDocumentDataSource:v82 appContext:v81];

          if (v84)
          {
            if (v114)
            {
              v85 = v84;
              v114(v84, 0);
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      v86 = [v59 action];
      if (v86)
      {
        v87 = v86;
        v88 = objc_opt_self();
        v89 = OUTLINED_FUNCTION_345(v88);
        if (v89)
        {
          v90 = [v89 offerURLString];
          sub_1E4205F14();
          OUTLINED_FUNCTION_9_9();

          OUTLINED_FUNCTION_34();
          sub_1E41FE404();

          v91 = OUTLINED_FUNCTION_88_3();
          OUTLINED_FUNCTION_52(v91, v92, v107);
          if (!v47)
          {
            (*(v112 + 32))(v104, v105, v107);
            OUTLINED_FUNCTION_28_13();
            v93 = OUTLINED_FUNCTION_123_1();
            v94(v93);
            OUTLINED_FUNCTION_114();
            __swift_storeEnumTagSinglePayload(v95, v96, v97, v107);
            OUTLINED_FUNCTION_26_3();
            v98 = OUTLINED_FUNCTION_168();
            v99(v98);

            sub_1E325F6F0(v103, &unk_1ECF363C0, &unk_1E42A9420);
            v100 = OUTLINED_FUNCTION_8_6();
            v101(v100);
            goto LABEL_45;
          }

          sub_1E325F6F0(v105, &unk_1ECF363C0, &unk_1E42A9420);
        }

        else
        {
        }
      }

      objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v61 = sub_1E3A48F5C(0xD000000000000037, 0x80000001E426D880, 1, 0);
      if (v114)
      {
        v114(0, v61);
      }

      goto LABEL_44;
    }

    if (v5)
    {
      v5(0, 0);
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A420EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  v238 = v23;
  v247 = v24;
  v233 = v25;
  v236 = v26;
  v244 = v27;
  v253 = v28;
  OUTLINED_FUNCTION_123_2();
  v232 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v231 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v31);
  v230 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v228 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v34);
  v226 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v225 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  OUTLINED_FUNCTION_17_2(v38);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v40);
  v41 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v242 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v44);
  v45 = OUTLINED_FUNCTION_169_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  v48 = OUTLINED_FUNCTION_17_2(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v219 - v55;
  v57 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v59 = v58;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_6();
  v249 = v64;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_47_3();
  sub_1E324FBDC();
  v67 = OUTLINED_FUNCTION_101();
  v250 = v68;
  v251 = v69;
  v254 = v57;
  v252 = v70;
  v69(v67);
  v245 = v22;
  v71 = OUTLINED_FUNCTION_168();
  sub_1E37E93E8(v71, v72, &unk_1ECF363C0, &unk_1E42A9420);
  v73 = sub_1E41FFC94();
  v74 = sub_1E42067D4();
  v75 = os_log_type_enabled(v73, v74);
  v248 = v41;
  if (v75)
  {
    v239 = v59;
    OUTLINED_FUNCTION_57_3();
    v76 = swift_slowAlloc();
    *&v261 = OUTLINED_FUNCTION_72_0();
    *v76 = 136315394;
    *(v76 + 4) = OUTLINED_FUNCTION_185_0("rPurchaseOrLinkHelper(error:)");
    *(v76 + 12) = 2080;
    v77 = OUTLINED_FUNCTION_53();
    sub_1E37E93E8(v77, v78, v79, v80);
    OUTLINED_FUNCTION_52(v21, 1, v41);
    if (v81)
    {
      sub_1E325F6F0(v21, &unk_1ECF363C0, &unk_1E42A9420);
      v255 = 0u;
      v256 = 0u;
    }

    else
    {
      *(&v256 + 1) = v41;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v255);
      (*(v242 + 32))(boxed_opaque_existential_1, v21, v41);
    }

    v83 = v249;
    sub_1E3294FA4(&v255);
    sub_1E325F6F0(v56, &unk_1ECF363C0, &unk_1E42A9420);
    v85 = OUTLINED_FUNCTION_125();
    v88 = sub_1E3270FC8(v85, v86, v87);

    *(v76 + 14) = v88;
    _os_log_impl(&dword_1E323F000, v73, v74, "OpenURLHandler::%s back from %s", v76, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    OUTLINED_FUNCTION_326();
    v82 = *(v89 + 8);
    v90 = OUTLINED_FUNCTION_16_0();
    v82(v90);
  }

  else
  {

    sub_1E325F6F0(v56, &unk_1ECF363C0, &unk_1E42A9420);
    v82 = *(v59 + 8);
    (v82)(v20, v254);
    v74 = v59;
    v83 = v249;
  }

  v91 = v253;
  if (v253)
  {
    v259 = sub_1E4205F14();
    v260 = v92;
    v93 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    sub_1E375D7E8(v91, &v261, &v255);
    sub_1E375D84C(&v255);
    if (v262)
    {
      OUTLINED_FUNCTION_77_8();
      if ((swift_dynamicCast() & 1) != 0 && v259 == 1)
      {
        v94 = v221;
        OUTLINED_FUNCTION_78_7();
        v95();
        v96 = OUTLINED_FUNCTION_81_6();
        v97 = v222;
        sub_1E37E93E8(v96, v222, v98, v99);
        v100 = sub_1E41FFC94();
        sub_1E42067D4();
        OUTLINED_FUNCTION_41_15();
        if (os_log_type_enabled(v100, v101))
        {
          OUTLINED_FUNCTION_13_13();
          v102 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v253 = swift_slowAlloc();
          *&v261 = v253;
          *v102 = 136315138;
          v103 = v220;
          sub_1E37E93E8(v97, v220, &unk_1ECF363C0, &unk_1E42A9420);
          v104 = OUTLINED_FUNCTION_88_3();
          v105 = v248;
          OUTLINED_FUNCTION_52(v104, v106, v248);
          if (v81)
          {
            sub_1E325F6F0(v103, &unk_1ECF363C0, &unk_1E42A9420);
            v255 = 0u;
            v256 = 0u;
          }

          else
          {
            v212 = sub_1E41FE314();
            *(&v256 + 1) = v93;
            *&v255 = v212;
            *(&v255 + 1) = v213;
            OUTLINED_FUNCTION_15_5();
            v94 = v221;
            v97 = v222;
            v214(v103, v105);
          }

          v215 = sub_1E3294FA4(&v255);
          sub_1E325F6F0(v97, &unk_1ECF363C0, &unk_1E42A9420);
          v216 = OUTLINED_FUNCTION_57();
          sub_1E3270FC8(v216, v217, v218);
          OUTLINED_FUNCTION_38();

          *(v102 + 4) = v215;
          _os_log_impl(&dword_1E323F000, v100, v56, "OpenURLHandler::silent failure for url: %s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v253);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        else
        {

          sub_1E325F6F0(v97, &unk_1ECF363C0, &unk_1E42A9420);
        }

        (v82)(v94, v254);
LABEL_60:
        sub_1E3A407C0();
        goto LABEL_61;
      }
    }

    else
    {
      sub_1E325F6F0(&v261, &unk_1ECF296E0, &unk_1E4298030);
    }

    *&v261 = sub_1E4205F14();
    *(&v261 + 1) = v107;
    sub_1E4207414();
    sub_1E375D7E8(v91, &v261, &v255);
    sub_1E375D84C(&v255);
    if (v262)
    {
      OUTLINED_FUNCTION_77_8();
      v108 = swift_dynamicCast();
      if (v108)
      {
        v109 = v259;
      }

      else
      {
        v109 = 0;
      }

      if (v108)
      {
        v110 = v260;
      }

      else
      {
        v110 = 0;
      }
    }

    else
    {
      sub_1E325F6F0(&v261, &unk_1ECF296E0, &unk_1E4298030);
      v109 = 0;
      v110 = 0;
    }

    v111 = v246;
    OUTLINED_FUNCTION_78_7();
    v112();

    v113 = sub_1E41FFC94();
    v114 = sub_1E42067D4();

    v115 = os_log_type_enabled(v113, v114);
    v222 = v109;
    if (v115)
    {
      v249 = v82;
      OUTLINED_FUNCTION_57_3();
      v116 = swift_slowAlloc();
      *&v261 = OUTLINED_FUNCTION_72_0();
      *v116 = 136315394;
      *(v116 + 4) = OUTLINED_FUNCTION_185_0("rPurchaseOrLinkHelper(error:)");
      *(v116 + 12) = 2080;
      v117 = v74;
      if (v110)
      {
        v118 = MEMORY[0x1E69E6158];
        v119 = v109;
        v120 = v110;
      }

      else
      {
        v119 = 0;
        v120 = 0;
        v118 = 0;
        *&v256 = 0;
      }

      *&v255 = v119;
      *(&v255 + 1) = v120;
      *(&v256 + 1) = v118;

      v121 = sub_1E3294FA4(&v255);
      v123 = sub_1E3270FC8(v121, v122, &v261);

      *(v116 + 14) = v123;
      _os_log_impl(&dword_1E323F000, v113, v114, "OpenURLHandler::%s deep linking to tab: %s", v116, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v74 = v117;
      v124 = OUTLINED_FUNCTION_32_12();
      v82 = v249;
      v249(v124);
      v111 = v246;
    }

    else
    {

      (v82)(v83, v254);
    }

    v125 = v245;
    v126 = v240;
    sub_1E37E93E8(v245, v240, &unk_1ECF363C0, &unk_1E42A9420);
    v127 = OUTLINED_FUNCTION_88_3();
    v128 = v248;
    OUTLINED_FUNCTION_52(v127, v129, v248);
    v130 = v244;
    if (v81)
    {

      sub_1E325F6F0(v126, &unk_1ECF363C0, &unk_1E42A9420);
      v131 = v235;
      OUTLINED_FUNCTION_78_7();
      v132();
      v133 = sub_1E41FFC94();
      v134 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_262(v134))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v135, v136, "OpenURLHandler::skip completion as url is nil");
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      (v82)(v131, v254);
      LODWORD(v141) = 1;
    }

    else
    {
      v137 = v242;
      v138 = OUTLINED_FUNCTION_67_0();
      v139(v138);
      sub_1E3A43404();
      LODWORD(v141) = v140;
      sub_1E3A43404();
      if (v236)
      {
        if (v110)
        {
          v143 = v222;
        }

        else
        {
          v143 = 0;
        }

        v144 = v82;
        v145 = v74;
        v146 = v141;
        v141 = v111;
        if (v110)
        {
          v147 = v110;
        }

        else
        {
          v147 = 0xE000000000000000;
        }

        v236(v141, v143, v147, v146 & 1, v142 & 1);

        v148 = v141;
        LODWORD(v141) = v146;
        v74 = v145;
        v82 = v144;
        (*(v137 + 8))(v148, v248);
      }

      else
      {
        (*(v137 + 8))(v111, v128);
      }
    }

    v149 = v243;
    sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
    v150 = v247;
    v151 = v247;

    v153 = sub_1E3A355A4(v152, v150);
    v154 = v241;
    if (v153)
    {
      v155 = v153;
      OUTLINED_FUNCTION_78_7();
      v156();
      v157 = OUTLINED_FUNCTION_11_6();
      sub_1E37E93E8(v157, v158, v159, v160);
      v161 = sub_1E41FFC94();
      sub_1E42067D4();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v161, v162))
      {
        v249 = v82;
        OUTLINED_FUNCTION_57_3();
        v163 = swift_slowAlloc();
        *&v261 = OUTLINED_FUNCTION_72_0();
        *v163 = 136315394;
        OUTLINED_FUNCTION_23();
        *(v163 + 4) = sub_1E3270FC8(0xD000000000000024, v164, &v261);
        *(v163 + 12) = 2080;
        v165 = v234;
        sub_1E37E93E8(v154, v234, &unk_1ECF363C0, &unk_1E42A9420);
        v166 = v248;
        OUTLINED_FUNCTION_52(v165, 1, v248);
        v239 = v74;
        LODWORD(v246) = v141;
        if (v81)
        {
          sub_1E325F6F0(v165, &unk_1ECF363C0, &unk_1E42A9420);
          v255 = 0u;
          v256 = 0u;
        }

        else
        {
          *(&v256 + 1) = v166;
          v170 = __swift_allocate_boxed_opaque_existential_1(&v255);
          (*(v242 + 32))(v170, v165, v166);
        }

        sub_1E3294FA4(&v255);
        sub_1E325F6F0(v154, &unk_1ECF363C0, &unk_1E42A9420);
        v171 = OUTLINED_FUNCTION_139_0();
        v141 = sub_1E3270FC8(v171, v172, v173);

        *(v163 + 14) = v141;
        OUTLINED_FUNCTION_258();
        _os_log_impl(v174, v175, v176, v177, v163, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v74 = v239;
        v82 = v249;
        (v249)(v243, v254);
        v125 = v245;
        v130 = v244;
        LOBYTE(v141) = v246;
      }

      else
      {

        sub_1E325F6F0(v154, &unk_1ECF363C0, &unk_1E42A9420);
        (v82)(v149, v254);
      }

      sub_1E3A32608(v155, v247, v141 & 1, v238, v125, v167, v168, v169, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230);
    }

    v178 = (*((*MEMORY[0x1E69E7D40] & *v130) + 0x270))(v125, 0x6E6F69746361, 0xE600000000000000);
    if (v179)
    {
      *&v255 = v178;
      *(&v255 + 1) = v179;
      *&v261 = 0xD000000000000015;
      *(&v261 + 1) = 0x80000001E426D250;
      sub_1E41FE6C4();
      v180 = v237;
      OUTLINED_FUNCTION_32_2();
      v185 = __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
      sub_1E32822E0(v185, v186, v187);
      OUTLINED_FUNCTION_25();
      v190 = OUTLINED_FUNCTION_265(v188, v189);
      sub_1E325F6F0(v180, &qword_1ECF2FBA0, &unk_1E42B49D0);

      if (!v190)
      {
        v191 = v223;
        OUTLINED_FUNCTION_78_7();
        v192();
        v193 = sub_1E41FFC94();
        v194 = sub_1E42067D4();
        if (OUTLINED_FUNCTION_262(v194))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v195, v196, "OpenURLHandler::scan network for supported TV+ devices");
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        (v82)(v191, v254);
        sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
        (*(v225 + 104))(v224, *MEMORY[0x1E69E7F98], v226);
        v197 = sub_1E4206A54();
        v198 = OUTLINED_FUNCTION_39_3();
        v199(v198);
        v257 = sub_1E3A43674;
        v258 = 0;
        *&v255 = MEMORY[0x1E69E9820];
        *(&v255 + 1) = 1107296256;
        OUTLINED_FUNCTION_0_48();
        *&v256 = v200;
        *(&v256 + 1) = &block_descriptor_273;
        v201 = _Block_copy(&v255);
        OUTLINED_FUNCTION_326();
        sub_1E4203FE4();
        *&v261 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_101();
        sub_1E3A496B8(v202, v203);
        v204 = OUTLINED_FUNCTION_32_7();
        __swift_instantiateConcreteTypeFromMangledNameV2(v204, v205);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v206, v207, &qword_1E429B000);
        sub_1E42072E4();
        v208 = OUTLINED_FUNCTION_321();
        MEMORY[0x1E6911380](v208);
        _Block_release(v201);

        OUTLINED_FUNCTION_15_5();
        v209 = OUTLINED_FUNCTION_168();
        v210(v209);
        OUTLINED_FUNCTION_15_5();
        v211(v74, v230);
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A43404()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_260();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = OUTLINED_FUNCTION_146();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_317();
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_99_0();
  v12(v11);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v16) + 0x270))(v3, v2, v1);
  v18 = v17;
  v19 = OUTLINED_FUNCTION_151_1();
  sub_1E325F6F0(v19, v20, &unk_1E42A9420);
  if (v18)
  {
    v21 = sub_1E41FE6C4();
    OUTLINED_FUNCTION_32_2();
    v25 = __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    sub_1E32822E0(v25, v26, v27);
    OUTLINED_FUNCTION_25();
    v30 = OUTLINED_FUNCTION_265(v28, v29);
    sub_1E325F6F0(v0, &qword_1ECF2FBA0, &unk_1E42B49D0);
    if (v30)
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v21);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_265(v34, v35);
      sub_1E325F6F0(v0, &qword_1ECF2FBA0, &unk_1E42B49D0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A43674()
{
  sub_1E4146278();

  sub_1E41462B8();

  return result;
}

void sub_1E3A436B8()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v1;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9_5();
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v43 = v15;
  v19(v2);
  OUTLINED_FUNCTION_107_0();
  v40 = v0;
  v20(v14, v0, v8);
  v21 = sub_1E41FFC94();
  v22 = sub_1E42067D4();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_13();
    v39 = v5;
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v23 = 136315138;
    OUTLINED_FUNCTION_6_83();
    sub_1E3A496B8(v24, v25);
    sub_1E4207944();
    v38 = v7;
    (*(v10 + 8))(v14, v8);
    v26 = OUTLINED_FUNCTION_97_1();
    v29 = sub_1E3270FC8(v26, v27, v28);

    *(v23 + 4) = v29;
    OUTLINED_FUNCTION_50_6(&dword_1E323F000, v21, v22, "OpenURLHandler::bundleOffer prepare for [%s]");
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v5 = v39;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  (*(v17 + 8))(v2, v43);
  v30 = [objc_opt_self() vui_defaultBag];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v40;
    *(&v36 - 6) = v41;
    *(&v36 - 5) = v7;
    *(&v36 - 4) = v5;
    *(&v36 - 3) = v33;
    v34 = v42;
    *(&v36 - 2) = v31;
    *(&v36 - 1) = v34;
    sub_1E3B79200(sub_1E3A4C5A0, (&v36 - 8));
  }

  else if (v7)
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v44[3] = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v44[0] = v35;
    v7(v44);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A43A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isPlaybackUIBeingShown];

  if (v22)
  {
    OUTLINED_FUNCTION_69_8();
    v23 = OUTLINED_FUNCTION_75();
    v24(v23);
    v25 = (*(*(v17 + 80) + 0x7E8) & ~*(v17 + 80)) + v19;
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_91();
    v27();
    *(v26 + v25) = v15 & 1;
    *(v26 + (v25 & 0xFFFFFFFFFFFFFFF8) + 8) = v13;
    v28 = v13;
    sub_1E3A3C02C();

LABEL_9:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (![objc_opt_self() isSUIEnabled])
  {
    v30 = [objc_opt_self() currentNavigationController];
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_69_8();
      v32 = OUTLINED_FUNCTION_75();
      v33(v32);
      v34 = ((*(v17 + 80) + 16) & ~*(v17 + 80)) + v19;
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_91();
      v36();
      *(v35 + v34) = v15 & 1;
      *(v35 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v13;
      v40[4] = sub_1E3A4D058;
      v40[5] = v35;
      OUTLINED_FUNCTION_12_0();
      v40[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v40[2] = v37;
      v40[3] = &block_descriptor_459;
      v38 = _Block_copy(v40);
      v39 = v13;

      [v31 dismissViewControllerAnimated:0 completion:v38];
      _Block_release(v38);
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3A43D18();
}

void sub_1E3A43D18()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v8 = [objc_opt_self() isSUIEnabled];
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = sub_1E41FE414();
      OUTLINED_FUNCTION_2();
      v13 = OUTLINED_FUNCTION_124();
      v14(v13);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
      v18 = *((*v9 & *v11) + 0x220);
      v19 = v11;
      v18(v0, 0, 0, v4 & 1);
      v9 = MEMORY[0x1E69E7D40];

      sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = sub_1E41FE364();
    [v20 handleAccountSettingsEventWithUrl:v21 amsBagKey:0 useAMSWebView:v4 & 1];
  }

  sub_1E3A407C0();
  v22 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_124();
  v24(v23);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  OUTLINED_FUNCTION_39();
  LOBYTE(v22) = (*((*v9 & v28) + 0x260))(v0);
  sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  if (v22)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v29 = OUTLINED_FUNCTION_33_14();
    v30(v29);
    v31 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v33);
      OUTLINED_FUNCTION_122_0();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v39 = OUTLINED_FUNCTION_13_8();
    v40(v39);
  }

  else
  {
    (*((*v9 & *v2) + 0x118))(1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A440B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v51 = v3;
  v52 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_227();
  v15 = v13 - v14;
  v16 = &v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion];
  v18 = *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion];
  v17 = *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion + 8];
  *v16 = v8;
  *(v16 + 1) = v6;
  v19 = OUTLINED_FUNCTION_99_0();
  sub_1E34AF604(v19, v20);
  sub_1E34AF594(v18, v17);
  v21 = [objc_opt_self() sharedInstance];
  LODWORD(v6) = [v21 isPlaybackUIBeingShown];

  v22 = &unk_1E429A000;
  if (v6)
  {
    OUTLINED_FUNCTION_28_13();
    v23(v15, v51, v9);
    OUTLINED_FUNCTION_134_4();
    v25 = v24 & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v0;
    OUTLINED_FUNCTION_168_0();
    v27();
    *(v26 + v11) = v52;
    *(v26 + v25) = v2;
    v22 = &unk_1E429A000;

    v28 = v0;
    v29 = v52;
    sub_1E3A3C02C();

    v30 = v52;
  }

  else
  {
    v30 = v52;
    if ([objc_opt_self() currentNavigationController])
    {
      OUTLINED_FUNCTION_28_13();
      v50 = v31;
      v32(v15, v51, v9);
      OUTLINED_FUNCTION_134_4();
      v34 = v33 & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v0;
      v22 = &unk_1E429A000;
      OUTLINED_FUNCTION_168_0();
      v36();
      *(v35 + v11) = v52;
      *(v35 + v34) = v2;
      v30 = v52;
      v56 = sub_1E3A4C5B0;
      v57 = v35;
      OUTLINED_FUNCTION_12_0();
      v53[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v54 = v37;
      v55 = &block_descriptor_471;
      v38 = _Block_copy(v53);

      v39 = v0;
      v40 = v52;

      [v50 dismissViewControllerAnimated:0 completion:v38];
      _Block_release(v38);
    }
  }

  v41 = objc_allocWithZone(MEMORY[0x1E698C820]);
  v42 = v30;
  v43 = sub_1E41FE364();
  v44 = [v41 initWithURL:v43 bag:v42];

  v45 = [v44 perform];
  v56 = sub_1E3A44D3C;
  v57 = 0;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_23_40(v22[375]);
  v54 = v46;
  v55 = &block_descriptor_465;
  v47 = _Block_copy(v53);
  v48 = OUTLINED_FUNCTION_121();
  [v48 v49];
  _Block_release(v47);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A44474()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v70 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v9);
  sub_1E41FE314();
  OUTLINED_FUNCTION_16_11();
  v10 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID);
  *v10 = 0;
  v10[1] = 0;

  v11 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
  *v11 = v1;
  v11[1] = v2;

  *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData) = v4;

  if (v4)
  {
    v12 = sub_1E4205F14();
    OUTLINED_FUNCTION_306(v12);

    sub_1E4207414();
    sub_1E375D7E8(v4, &v80, &v74);
    sub_1E375D84C(&v74);
    if (*(&v81 + 1))
    {
      OUTLINED_FUNCTION_77_8();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_285();
        (*(v13 + 256))();
      }

      goto LABEL_7;
    }
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  sub_1E325F6F0(&v80, &unk_1ECF296E0, &unk_1E4298030);
  if (!v4)
  {
    v80 = 0u;
    v81 = 0u;
    goto LABEL_11;
  }

LABEL_7:
  v14 = sub_1E4205F14();
  OUTLINED_FUNCTION_306(v14);
  sub_1E4207414();
  sub_1E375D7E8(v4, &v80, &v74);
  sub_1E375D84C(&v74);
  if (!*(&v81 + 1))
  {
LABEL_11:
    sub_1E325F6F0(&v80, &unk_1ECF296E0, &unk_1E4298030);
    v16 = 2;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_77_8();
  v15 = swift_dynamicCast();
  v16 = v74;
  if (!v15)
  {
    v16 = 2;
  }

LABEL_12:
  v71 = v16;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 controllerPresenter];

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v69 = v4;
    swift_unknownObjectRetain_n();
  }

  else
  {
    swift_unknownObjectRelease();
    v21 = [objc_opt_self() topMostVisibleViewController];
    if (!v21)
    {
      v57 = 0;
      goto LABEL_20;
    }

    v69 = v4;
    v20 = v21;
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1E42074B4();
  OUTLINED_FUNCTION_81_6();

  *&v80 = 0xD000000000000012;
  *(&v80 + 1) = 0x80000001E426D810;
  v77 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v74 = v20;
  v22 = v20;
  v23 = sub_1E3294FA4(&v74);
  MEMORY[0x1E69109E0](v23);

  v24 = *(&v80 + 1);
  v67 = v80;
  v25 = [objc_allocWithZone(MEMORY[0x1E698C908]) init];
  v26 = sub_1E41FE364();
  v27 = OUTLINED_FUNCTION_244();
  [v27 v28];

  sub_1E41FE9C4();
  v29 = sub_1E41FE9B4();
  v30 = OUTLINED_FUNCTION_244();
  [v30 v31];

  [v25 setPresentationStyle_];
  sub_1E3A45198();
  v68 = v25;
  v32 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:v25 bag:v70 presentingViewController:v22];
  OUTLINED_FUNCTION_285();
  [v32 setAllowMultiplePresentations_];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v34();
  v35 = v32;
  OUTLINED_FUNCTION_92_2();

  v36 = sub_1E41FFC94();
  v37 = v6;
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v36, v38))
  {
    OUTLINED_FUNCTION_57_3();
    v66 = v1;
    v39 = swift_slowAlloc();
    v65 = v37;
    v40 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_15_4();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_275(v41);
    *v39 = 138412546;
    *(v39 + 4) = v32;
    *v40 = v32;
    *(v39 + 12) = 2080;
    v42 = v32;
    v43 = sub_1E3270FC8(v67, v24, &v74);

    *(v39 + 14) = v43;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_1E325F6F0(v40, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_91_6();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v1 = v66;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v73 + 8))(v72, v65);
    OUTLINED_FUNCTION_273();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_120();
    v50(v49);
  }

  v51 = [v32 presentEngagement];
  OUTLINED_FUNCTION_4_0();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v71;
  *(v53 + 32) = v69;
  v78 = sub_1E3A4C70C;
  v79 = v53;
  v74 = MEMORY[0x1E69E9820];
  v75 = 1107296256;
  v76 = sub_1E3A4D110;
  v77 = &block_descriptor_481;
  v54 = _Block_copy(&v74);

  v55 = OUTLINED_FUNCTION_121();
  [v55 v56];
  _Block_release(v54);
  v57 = v22;

LABEL_20:
  v58 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v60 = sub_1E4205F14();
  OUTLINED_FUNCTION_275(v60);
  v75 = v61;
  v62 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  *(inited + 96) = v62;
  *(inited + 72) = v1;
  *(inited + 80) = v2;
  v63 = sub_1E4205CB4();
  sub_1E37E7460(@"VUIPurchaseOrSubscribeRequestDidStartNotification", 0, v63, v58);

  sub_1E3A407C0();
  OUTLINED_FUNCTION_290();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A44D3C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47_3();
  if (v3)
  {
    sub_1E324FBDC();
    v17 = OUTLINED_FUNCTION_101();
    v18(v17);
    v19 = v3;
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_13();
      v52 = v9;
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v51 = v5;
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v56 = v53;
      __swift_allocate_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_37_1();
      (*(v24 + 16))();
      v25 = sub_1E3294FA4(v55);
      v27 = sub_1E3270FC8(v25, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1E323F000, v20, v21, "OpenURLHandler::error returned in campaignAttributionTask: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v5 = v51;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v9 = v52;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v28 = OUTLINED_FUNCTION_153_2();
    v29(v28);
  }

  if (v5)
  {
    v30 = v5;
    v31 = [v30 redirectURL];
    if (v31)
    {
      v0 = v31;
      sub_1E41FE3C4();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    sub_1E41FE414();
    v33 = OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v33, v32, 1, v0);
    v34 = OUTLINED_FUNCTION_53();
    sub_1E327D738(v34, v35);
    OUTLINED_FUNCTION_52(v1, 1, v0);
    if (v36)
    {
      sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_200_0();
    }

    else
    {
      v56 = v0;
      __swift_allocate_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_37_1();
      (*(v37 + 32))();
    }

    sub_1E3294FA4(v55);
    OUTLINED_FUNCTION_9_9();
    sub_1E324FBDC();
    OUTLINED_FUNCTION_164_0();
    v38(v15);

    v39 = sub_1E41FFC94();
    v40 = sub_1E42067D4();

    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_13();
      v41 = v15;
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v55[0] = swift_slowAlloc();
      *v42 = 136315138;
      v43 = OUTLINED_FUNCTION_34();
      v46 = sub_1E3270FC8(v43, v44, v45);

      *(v42 + 4) = v46;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v47, v48, v49, v50, v42, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v11 + 8))(v41, v9);
    }

    else
    {

      (*(v11 + 8))(v15, v9);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A45198()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_123_2();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 getMetricsOverlayForBundleOffer];

  sub_1E4205C64();
  v9 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData);
  if (!v9)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_6;
  }

  sub_1E4205F14();

  sub_1E4207414();
  sub_1E375D7E8(v9, &v30, v29);

  sub_1E375D84C(v29);
  if (!v31)
  {
LABEL_6:
    sub_1E325F6F0(&v30, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v11;
    *(inited + 48) = sub_1E4205F14();
    *(inited + 56) = v12;
    v13 = sub_1E4205CB4();
    sub_1E37E4D10(v13);
    OUTLINED_FUNCTION_16_5();
  }

  v14 = OUTLINED_FUNCTION_57();
  v16 = sub_1E3A4653C(v14, v15);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_88_4();
  v17(v1);

  v18 = sub_1E41FFC94();
  v19 = sub_1E42067D4();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_13_13();
    v28 = v3;
    v20 = v2;
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v29[0] = swift_slowAlloc();
    *v21 = 136315138;
    v22 = sub_1E4205C74();
    v24 = sub_1E3270FC8(v22, v23, v29);

    *(v21 + 4) = v24;
    _os_log_impl(&dword_1E323F000, v18, v19, "OpenURLHandler::bundleOffer metrics overlay: %s", v21, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v2 = v20;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v5 + 8))(v1, v28);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_220();
    v27(v25, v26);
  }

  sub_1E3A4A02C(v16, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A45524()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v28 = v3;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v30 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_12();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v29 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_89();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v28;
  *(v14 + 32) = v7;
  *(v14 + 40) = v5;
  *(v14 + 48) = v2;
  v31[4] = sub_1E3A4C71C;
  v31[5] = v14;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v31[2] = v15;
  v31[3] = &block_descriptor_488;
  v16 = _Block_copy(v31);
  v17 = v7;
  v18 = v5;

  sub_1E4203FE4();
  v31[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v19, v20);
  v21 = OUTLINED_FUNCTION_210();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v23, v24, &qword_1E429B000);
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v25 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v25);
  _Block_release(v16);

  v26 = OUTLINED_FUNCTION_11_6();
  v27(v26);
  (*(v10 + 8))(v0, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A457F0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_9_5();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v154 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_77;
  }

  v18 = Strong;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v19(v2);
    v18 = v18;
    v20 = sub_1E41FFC94();
    v21 = sub_1E4206814();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_13();
      swift_slowAlloc();
      OUTLINED_FUNCTION_30_35();
      *&v159 = swift_slowAlloc();
      *v1 = 136315138;
      v157 = *&v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      v23 = sub_1E41494B4(v22);
      v25 = sub_1E3270FC8(v23, v24, &v159);

      *(v1 + 4) = v25;
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v31 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v31);

      v32 = OUTLINED_FUNCTION_120();
      v33(v32);
    }

    else
    {

      v46 = OUTLINED_FUNCTION_120();
      v47(v46);
    }

    sub_1E3A3472C(3);
    goto LABEL_76;
  }

  if (v8)
  {
    v34 = [v8 purchaseResult];
    if (!v34)
    {
      goto LABEL_10;
    }

    v35 = v34;
    if (v6)
    {

LABEL_10:
      v36 = [v8 carrierLinkResult];
      if (v36)
      {
        v37 = v36;
        if (!v6)
        {
          v63 = OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
          if (v63)
          {
            v65 = *v64;
            v66 = MEMORY[0x1E69E6158];
          }

          else
          {
            v65 = 0;
            v66 = 0;
            *&v158 = 0;
          }

          *&v157 = v65;
          *(&v157 + 1) = v63;
          *(&v158 + 1) = v66;

          v155 = sub_1E3294FA4(&v157);
          v100 = v99;
          OUTLINED_FUNCTION_342();

          OUTLINED_FUNCTION_299("ementResult8@NSError16");
          *(&v158 + 1) = sub_1E3280A90(0, &qword_1ECF311B8, 0x1E698C868);
          *&v157 = v37;
          v101 = v37;
          v102 = sub_1E3294FA4(&v157);
          MEMORY[0x1E69109E0](v102);

          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_152_3();
          v103 = sub_1E3294FA4(&v157);
          MEMORY[0x1E69109E0](v103);

          v104 = *(&v159 + 1);
          sub_1E324FBDC();
          OUTLINED_FUNCTION_107_0();
          v105(v0);

          v106 = sub_1E41FFC94();
          v107 = sub_1E4206814();

          if (os_log_type_enabled(v106, v107))
          {
            OUTLINED_FUNCTION_57_3();
            v108 = swift_slowAlloc();
            OUTLINED_FUNCTION_72_0();
            OUTLINED_FUNCTION_238();
            *&v157 = v109;
            *v108 = 136315394;
            v110 = sub_1E3270FC8(v155, v100, &v157);
            v111 = v101;
            v112 = v110;

            *(v108 + 4) = v112;
            v101 = v111;
            OUTLINED_FUNCTION_332();
            v113 = OUTLINED_FUNCTION_46_12();
            v115 = sub_1E3270FC8(v113, v104, v114);

            *(v108 + 14) = v115;
            OUTLINED_FUNCTION_347(&dword_1E323F000, v106, v107, "OpenURLHandler::ActivateCarrierOffer %s] returned, %s");
            OUTLINED_FUNCTION_343();
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
          }

          else
          {
          }

          v116 = OUTLINED_FUNCTION_287();
          v117(v116, v11);
          v118 = sub_1E3A49BE0([v101 linkParams]);
          v119 = &v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID];
          *v119 = v118;
          v119[1] = v120;

          sub_1E3A3472C(2);

          goto LABEL_76;
        }
      }

      goto LABEL_13;
    }

    v48 = OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
    if (v48)
    {
      v50 = *v49;
      v51 = MEMORY[0x1E69E6158];
    }

    else
    {
      v50 = 0;
      v51 = 0;
      *&v158 = 0;
    }

    *&v157 = v50;
    *(&v157 + 1) = v48;
    *(&v158 + 1) = v51;

    v67 = sub_1E3294FA4(&v157);
    OUTLINED_FUNCTION_275(v67);
    v69 = v68;
    OUTLINED_FUNCTION_342();

    OUTLINED_FUNCTION_299("ementResult8@NSError16");
    *(&v158 + 1) = sub_1E3280A90(0, &qword_1ECF311C0, 0x1E698CAF0);
    *&v157 = v35;
    OUTLINED_FUNCTION_47_12(v35);
    v70 = sub_1E3294FA4(&v157);
    MEMORY[0x1E69109E0](v70);

    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_152_3();
    v71 = sub_1E3294FA4(&v157);
    MEMORY[0x1E69109E0](v71);

    v72 = *(&v159 + 1);
    v73 = sub_1E324FBDC();
    v74 = v11;
    (*(v154 + 16))(v1, v73, v11);

    v75 = sub_1E41FFC94();
    v76 = sub_1E4206814();

    v77 = v69;

    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_57_3();
      v78 = swift_slowAlloc();
      v79 = OUTLINED_FUNCTION_72_0();
      v153 = v74;
      *&v157 = OUTLINED_FUNCTION_306(v79);
      *v78 = 136315394;
      v80 = sub_1E3270FC8(v152, v77, &v157);

      *(v78 + 4) = v80;
      *(v78 + 12) = 2080;
      v81 = OUTLINED_FUNCTION_116_1();
      v83 = sub_1E3270FC8(v81, v72, v82);

      *(v78 + 14) = v83;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v84, v85, v86, v87, v78, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v154 + 8))(v1, v153);
    }

    else
    {

      v88 = OUTLINED_FUNCTION_146();
      v89(v88);
    }

    v90 = OUTLINED_FUNCTION_46_12();
    v92 = [v90 v91];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 buyParams];

      v95 = [v94 parameterForKey_];
      if (v95)
      {
        sub_1E4207264();
        v96 = swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_130_5();
      }

      v157 = v159;
      v158 = v160;
      if (*(&v160 + 1))
      {
        v121 = OUTLINED_FUNCTION_338(v96, v97, v98, MEMORY[0x1E69E6158]);
        v123 = *(&v159 + 1);
        v122 = v159;
        if (!v121)
        {
          v122 = 0;
          v123 = 0;
        }

LABEL_43:
        v124 = &v18[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID];
        *v124 = v122;
        *(v124 + 1) = v123;

        if (v4)
        {
          *&v159 = sub_1E4205F14();
          *(&v159 + 1) = v125;
          sub_1E4207414();
          sub_1E375D7E8(v4, &v159, &v157);
          v126 = sub_1E375D84C(&v157);
          if (*(&v160 + 1))
          {
            v129 = OUTLINED_FUNCTION_182_1(v126, v127, v128, MEMORY[0x1E69E6158]);
            if (v129)
            {
              v130 = v157;
            }

            else
            {
              v130 = 0;
            }

            if (v129)
            {
              v131 = *(&v157 + 1);
            }

            else
            {
              v131 = 0;
            }

LABEL_53:
            OUTLINED_FUNCTION_143();
            v133 = v132;
            v134 = sub_1E3A49B64(v133, &selRef_responseDictionary);
            if (v134)
            {
              v135 = v134;
              sub_1E4207414();
              sub_1E375D7E8(v135, &v159, &v157);

              sub_1E375D84C(&v157);
              if (*(&v160 + 1))
              {
                v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
                if ((OUTLINED_FUNCTION_182_1(v136, v137, v138, v136) & 1) != 0 && v157)
                {
                  sub_1E3A2F770(v157, &v157);

                  if (*(&v158 + 1))
                  {
                    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
                    if (OUTLINED_FUNCTION_338(v139, v140, v141, v139))
                    {
                      v142 = v159;
                      if (v159)
                      {
                        sub_1E4207414();
                        sub_1E375D7E8(v142, &v159, &v157);

                        v143 = sub_1E375D84C(&v157);
                        if (*(&v160 + 1))
                        {
                          v146 = OUTLINED_FUNCTION_182_1(v143, v144, v145, MEMORY[0x1E69E6158]);
                          v149 = v157;
                          if (v146)
                          {
                            v150 = *(&v157 + 1);
                          }

                          else
                          {
                            v149 = 0;
                            v150 = 0;
                          }

                          if (v131)
                          {
                            if (v150)
                            {
                              *&v157 = v149;
                              *(&v157 + 1) = v150;
                              *&v159 = v130;
                              *(&v159 + 1) = v131;
                              sub_1E32822E0(v146, v147, v148);
                              v151 = sub_1E4207254();

LABEL_75:

                              sub_1E3A3472C(v151 & 1);

LABEL_76:
                              goto LABEL_77;
                            }

LABEL_74:
                            v151 = 0;
                            goto LABEL_75;
                          }

LABEL_73:

                          goto LABEL_74;
                        }

LABEL_72:
                        sub_1E325F6F0(&v159, &unk_1ECF296E0, &unk_1E4298030);
                        if (v131)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_73;
                      }
                    }

LABEL_71:
                    OUTLINED_FUNCTION_130_5();
                    goto LABEL_72;
                  }

LABEL_70:
                  sub_1E325F6F0(&v157, &unk_1ECF296E0, &unk_1E4298030);
                  goto LABEL_71;
                }

LABEL_69:
                OUTLINED_FUNCTION_152_3();
                goto LABEL_70;
              }
            }

            else
            {
              OUTLINED_FUNCTION_130_5();
            }

            sub_1E325F6F0(&v159, &unk_1ECF296E0, &unk_1E4298030);
            goto LABEL_69;
          }
        }

        else
        {
          OUTLINED_FUNCTION_130_5();
        }

        sub_1E325F6F0(&v159, &unk_1ECF296E0, &unk_1E4298030);
        v130 = 0;
        v131 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    sub_1E325F6F0(&v157, &unk_1ECF296E0, &unk_1E4298030);
    v122 = 0;
    v123 = 0;
    goto LABEL_43;
  }

LABEL_13:
  sub_1E324FBDC();
  v38 = OUTLINED_FUNCTION_101();
  v39(v38);
  v40 = v6;
  v41 = sub_1E41FFC94();
  v42 = sub_1E42067F4();

  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_13_13();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_35();
    *&v159 = swift_slowAlloc();
    *v154 = 136315138;
    if (v6)
    {
      swift_getErrorValue();
      *(&v158 + 1) = v156;
      __swift_allocate_boxed_opaque_existential_1(&v157);
      OUTLINED_FUNCTION_37_1();
      (*(v43 + 16))();
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    v52 = sub_1E3294FA4(&v157);
    v54 = sub_1E3270FC8(v52, v53, &v159);

    *(v154 + 4) = v54;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v60 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v60);

    v61 = OUTLINED_FUNCTION_57();
    v62(v61);
  }

  else
  {

    v44 = OUTLINED_FUNCTION_57();
    v45(v44);
  }

LABEL_77:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A464B8()
{
  OUTLINED_FUNCTION_198_1();
  v3 = *(v2 + 32);

  v6 = v1;
  v4 = v0;
  v5 = OUTLINED_FUNCTION_16_0();
  v3(v5);
}

uint64_t sub_1E3A4653C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E3A4928C(a1, sub_1E397BCA4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1E3A465F8()
{
  OUTLINED_FUNCTION_198_1();
  v2 = [objc_opt_self() *v1];
  [v2 *v0];
}

void sub_1E3A46658()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID + 8))
  {
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_21_16();
    v4(v3);
    v5 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_13_13();
      swift_slowAlloc();
      OUTLINED_FUNCTION_30_35();
      v31[0] = swift_slowAlloc();
      *v1 = 136315138;
      OUTLINED_FUNCTION_23();
      *(v1 + 4) = sub_1E3270FC8(0xD000000000000011, v7, v31);
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v13 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v13);
    }

    v14 = OUTLINED_FUNCTION_57();
    v15(v14);
  }

  v16 = sub_1E4205CB4();
  v17 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
  v18 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString + 8);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *v17;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = *v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1E4205F14();

    v21 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_337();
    v30 = v21;
    *&v29 = v19;
    *(&v29 + 1) = v18;
    sub_1E329504C(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E377DF14(v28, v31, isUniquelyReferenced_nonNull_native);
    sub_1E375D84C(v31);
    *v17 = 0;
    v17[1] = 0;

    *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData) = 0;

    *&v29 = sub_1E4205F14();
    *(&v29 + 1) = v23;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_201_1();
    sub_1E325F6F0(&v29, &unk_1ECF296E0, &unk_1E4298030);
    v24 = sub_1E375D924(v31);
    if (v25)
    {
      v26 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0, &qword_1E42A7D40);
      sub_1E4207644();
      sub_1E375D84C(*(v16 + 48) + 40 * v26);
      sub_1E329504C((*(v16 + 56) + 32 * v26), v28);
      OUTLINED_FUNCTION_67_0();
      sub_1E4207664();
    }

    else
    {
      OUTLINED_FUNCTION_152_3();
    }

    sub_1E375D84C(v31);
    sub_1E325F6F0(v28, &unk_1ECF296E0, &unk_1E4298030);
    v27 = [objc_opt_self() defaultCenter];
    sub_1E37E7460(@"VUISubscribeRequestDidFinishNotification", 0, v16, v27);
  }

  else
  {
LABEL_11:
  }

  sub_1E3A469E8(0);
  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E3A469E8(char a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion);
  if (v4)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v7 = [v6 initWithBool_];
    v13[3] = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v13[0] = v7;
    v4(v13);
    v8 = OUTLINED_FUNCTION_34();
    sub_1E34AF594(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = *v3;
    v11 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_1E34AF594(v10, v11);
  }

  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))(1);
}

void sub_1E3A46B04()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_294();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v9 = sub_1E4206A04();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v6;
  *(v10 + 32) = v4;
  *(v10 + 40) = v2;
  v25[4] = sub_1E3A4B498;
  v25[5] = v10;
  OUTLINED_FUNCTION_12_0();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v25[2] = v11;
  v25[3] = &block_descriptor_241;
  v12 = _Block_copy(v25);

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v13, v14);
  v15 = OUTLINED_FUNCTION_210();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v17, v18, &qword_1E429B000);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v19 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v19);
  _Block_release(v12);

  OUTLINED_FUNCTION_215();
  v20 = OUTLINED_FUNCTION_11_6();
  v21(v20);
  v22 = OUTLINED_FUNCTION_287();
  v23(v22, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A46D60()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_247();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OUTLINED_FUNCTION_124();
      sub_1E3A46FBC(v7, v8, v1);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = &v9[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle];
      *v10 = 0;
      *(v10 + 1) = 0;
    }
  }

  else
  {
    sub_1E324FBDC();
    v11 = OUTLINED_FUNCTION_21_16();
    v12(v11);
    v13 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v20 = OUTLINED_FUNCTION_63_0();
    v21(v20);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = &v22[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle];
      *v23 = 0;
      *(v23 + 1) = 0;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = &v24[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink];
      *v25 = 0;
      *(v25 + 1) = 0;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1E3A4717C();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      sub_1E3A47770();
    }
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E3A46FBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E3280A90(0, &qword_1ECF311B0, 0x1E69E14F8);

  OUTLINED_FUNCTION_16_0();
  v4 = sub_1E3A47920();
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_325();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = a3;
  v12[4] = sub_1E3A4C064;
  v12[5] = v8;
  OUTLINED_FUNCTION_3_4();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v12[2] = v9;
  v12[3] = &block_descriptor_430;
  v10 = _Block_copy(v12);
  v11 = v4;

  sub_1E34AF604(sub_1E3A4C064, v8);

  [v11 setCompletionBlock_];
  _Block_release(v10);

  [v5 addOperation_];
}

void sub_1E3A4717C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v72 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v71 = v8;
  v9 = sub_1E4205F14();
  v11 = v10;
  v12 = sub_1E4205F14();
  v14 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData;
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData);
  if (!v15)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_6;
  }

  v76 = v12;
  v77 = v13;

  sub_1E4207414();
  sub_1E375D7E8(v15, &v74, v73);

  sub_1E375D84C(v73);
  if (!v75)
  {
LABEL_6:
    sub_1E325F6F0(&v74, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v76 = 0;
    v77 = 0;
  }

  v16 = *(v0 + v14);
  if (!v16)
  {
    OUTLINED_FUNCTION_2_85();
    goto LABEL_17;
  }

  *&v74 = v9;
  *(&v74 + 1) = v11;

  sub_1E4207414();
  sub_1E375D7E8(v16, &v74, v73);

  sub_1E375D84C(v73);
  if (!v75)
  {
LABEL_17:
    sub_1E325F6F0(&v74, &unk_1ECF296E0, &unk_1E4298030);
    v18 = 0;
    v19 = 0;
    goto LABEL_18;
  }

  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = v73[0];
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v73[1];
  }

  else
  {
    v19 = 0;
  }

LABEL_18:
  *(v0 + v14) = 0;

  v20 = v77;
  if (!v77 && v3 == 2)
  {
    v21 = v18;
    v22 = v5;
    v23 = v1;
    v24 = v19;
    v25 = [objc_opt_self() sharedInstance];
    if (!v25)
    {
      __break(1u);
      goto LABEL_44;
    }

    v26 = v25;
    v27 = sub_1E3741090(0xD000000000000024, 0x80000001E426D700, v25);
    v29 = v28;

    v76 = v27;
    v77 = v29;

    v20 = v77;
    v19 = v24;
    v1 = v23;
    v5 = v22;
    v18 = v21;
  }

  if (!v20)
  {
    v30 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    v31 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle + 8);
    if (v31)
    {
      v32 = v19;
      v33 = *v30;
      v34 = objc_opt_self();

      v35 = [v34 sharedInstance];
      if (v35)
      {
        v36 = v35;

        OUTLINED_FUNCTION_23();
        v37 = OUTLINED_FUNCTION_327();
        sub_1E3741090(v37, v38, v36);
        v40 = v39;

        if (v40)
        {
          v41 = v18;
          v42 = MEMORY[0x1E69E6158];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
          OUTLINED_FUNCTION_67_6();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1E4297BE0;
          *(v43 + 56) = v42;
          v18 = v41;
          *(v43 + 64) = sub_1E3283528(v43, v44, v45);
          *(v43 + 32) = v33;
          *(v43 + 40) = v31;
          OUTLINED_FUNCTION_123_1();
          v46 = sub_1E4205F44();
          v48 = v47;

          v76 = v46;
          v77 = v48;
        }

        v19 = v32;
        goto LABEL_29;
      }

LABEL_44:
      __break(1u);
      return;
    }
  }

LABEL_29:
  v49 = v72;
  if (!v77)
  {
    goto LABEL_39;
  }

  v50 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v50 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v51(v71);
    v52 = sub_1E41FFC94();
    sub_1E42067E4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_125_0();
      *v54 = 0;
      OUTLINED_FUNCTION_258();
      _os_log_impl(v55, v56, v57, v58, v54, 2u);
      v49 = v72;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v5 + 8))(v71, v49);
    OUTLINED_FUNCTION_123_1();
    v59 = sub_1E4205ED4();

    if (v19)
    {
      v60 = v18;
    }

    else
    {
      v60 = 0;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_57();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v61 = OUTLINED_FUNCTION_244();
    [v61 v62];
  }

  else
  {
LABEL_39:

    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v63(v1);
    v64 = sub_1E41FFC94();
    v65 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_161(v65))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_82_0();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v5 + 8))(v1, v72);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A47770()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  if (TVAppFeature.isEnabled.getter(12, v4, v5))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_5_10();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v11 = v1;
    sub_1E376FE58(0, 0, v0, &unk_1E42B49C0, v10);
  }

  else
  {
    v12 = [objc_opt_self() sharedInstance];
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v13);
    aBlock[4] = sub_1E3A4B4A8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_245;
    v14 = _Block_copy(aBlock);

    [v12 fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v14];

    _Block_release(v14);
  }
}

id sub_1E3A47920()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithAdamId_];

  return v2;
}

void sub_1E3A47994()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_247();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v24 = sub_1E4206A04();
      OUTLINED_FUNCTION_325();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v7;
      *(v8 + 32) = v1;
      v25[4] = sub_1E3A4C070;
      v25[5] = v8;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v25[2] = v9;
      v25[3] = &block_descriptor_436;
      v10 = _Block_copy(v25);
      v23 = v5;
      v22 = v7;

      sub_1E4203FE4();
      v25[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_101();
      sub_1E3A496B8(v11, v12);
      v13 = OUTLINED_FUNCTION_97_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v15, v16, &qword_1E429B000);
      OUTLINED_FUNCTION_151_0();
      sub_1E42072E4();
      v17 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1E6911380](v17);
      _Block_release(v10);

      v18 = OUTLINED_FUNCTION_11_6();
      v19(v18);
      v20 = OUTLINED_FUNCTION_39_3();
      v21(v20);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A47C60()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_11_14();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  v2 = [v0 error];
  if (v2)
  {
    v3 = v2;
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_101();
    v5(v4);
    v6 = v3;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_57_3();
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_4();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      OUTLINED_FUNCTION_23();
      *(v9 + 4) = sub_1E3270FC8(0xD000000000000022, v12, &v32);
      *(v9 + 12) = 2112;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v14;
      *v10 = v14;
      _os_log_impl(&dword_1E323F000, v7, v8, "OpenURLHandler::%s channel lookup by adamID failed, error: %@", v9, 0x16u);
      sub_1E325F6F0(v10, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v15 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v15);
    }

    else
    {
    }

    v28 = OUTLINED_FUNCTION_63_0();
    v29(v28);
    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    *v30 = 0;
    v30[1] = 0;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink);
    *v31 = 0;
    v31[1] = 0;
  }

  else
  {
    v16 = [v0 channelResponse];
    v17 = [v16 channelTitle];

    v18 = sub_1E4205F14();
    v20 = v19;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
    *v21 = v18;
    v21[1] = v20;

    v22 = [v0 channelResponse];
    v23 = [v22 channelLink];

    v24 = sub_1E4205F14();
    v26 = v25;

    OUTLINED_FUNCTION_23_4(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink);
    *v27 = v24;
    v27[1] = v26;
  }

  sub_1E3A4717C();
  sub_1E3A47770();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A47F58()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 32) = v1;
  v4 = (type metadata accessor for VUIUTSNetworkManagerProxy() + 96);
  v5 = (*v4 + **v4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1E3A48064;

  return v5(1);
}

uint64_t sub_1E3A48064()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1E3A481CC;
  }

  else
  {

    v7 = sub_1E3A48170;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3A48170()
{
  OUTLINED_FUNCTION_24();
  sub_1E3A482B0();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3A481CC()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_87_0();
    sub_1E3A482B0();

    OUTLINED_FUNCTION_54();

    return v4();
  }

  return result;
}

double sub_1E3A482B0()
{
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v0);
  v1 = OUTLINED_FUNCTION_301();
  sub_1E3B79200(v1, v2);

  return result;
}

void sub_1E3A4833C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_21_16();
    v5(v4);
    v6 = v0;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067D4();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_57_3();
      v9 = swift_slowAlloc();
      v21[0] = OUTLINED_FUNCTION_72_0();
      *v9 = 136315394;
      OUTLINED_FUNCTION_23();
      v11 = sub_1E3270FC8(0xD000000000000026, v10, v21);
      OUTLINED_FUNCTION_121_0(v11);
      if (v0)
      {
        swift_getErrorValue();
        v20[3] = v19;
        __swift_allocate_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_37_1();
        (*(v12 + 16))();
      }

      else
      {
        OUTLINED_FUNCTION_201_1();
      }

      v13 = sub_1E3294FA4(v20);
      v15 = sub_1E3270FC8(v13, v14, v21);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1E323F000, v7, v8, "OpenURLHandler::%s subscription state refreshed, error: %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v16 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v16);
    }

    v17 = OUTLINED_FUNCTION_57();
    v18(v17);
    sub_1E3A482B0();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A48574()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v8);
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v12);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v88 = v10;
    v87 = v1;
    v91 = v14;
    v21 = v0;
    v22 = sub_1E4205CB4();
    v23 = &v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString];
    v24 = *&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString + 8];
    if (v24)
    {
      v25 = *v23;
      sub_1E4205F14();

      v26 = MEMORY[0x1E69E6158];
      sub_1E4207414();
      v96 = v26;
      *&v95 = v25;
      *(&v95 + 1) = v24;
      sub_1E329504C(&v95, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_267(isUniquelyReferenced_nonNull_native);
      v22 = v92;
      sub_1E375D84C(v97);
      *v23 = 0;
      *(v23 + 1) = 0;
    }

    if (v5)
    {
      *&v95 = sub_1E4205F14();
      *(&v95 + 1) = v28;
      v29 = v5;
      sub_1E4207414();
      swift_getErrorValue();
      v96 = v94;
      __swift_allocate_boxed_opaque_existential_1(&v95);
      OUTLINED_FUNCTION_37_1();
      (*(v30 + 16))();
      sub_1E329504C(&v95, v93);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_267(v31);
      v22 = v92;
      sub_1E375D84C(v97);
    }

    v32 = [objc_opt_self() defaultCenter];
    sub_1E37E7460(@"VUISubscribeRequestDidFinishNotification", 0, v22, v32);

    v33 = *&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink + 8];
    v34 = v91;
    if (v33)
    {

      v86 = sub_1E324FBDC();
      v85 = *(v91 + 16);
      v85(v2);

      v35 = sub_1E41FFC94();
      v36 = sub_1E42067D4();

      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_57_3();
        v34 = swift_slowAlloc();
        v97[0] = OUTLINED_FUNCTION_72_0();
        *v34 = 136315394;
        *(v34 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
        *(v34 + 12) = 2080;
        v37 = OUTLINED_FUNCTION_291();
        *(v34 + 14) = sub_1E3270FC8(v37, v33, v38);
        _os_log_impl(&dword_1E323F000, v35, v36, "OpenURLHandler::%s redirect user to channel page: %s", v34, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      v66 = *(v91 + 8);
      v66(v2, v21);
      OUTLINED_FUNCTION_25_25();
      v67 = [objc_opt_self() sharedInstance];
      v68 = [v67 appController];

      sub_1E41FE404();

      v69 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v69, v70, v34);
      if (v71)
      {
        sub_1E325F6F0(v90, &unk_1ECF363C0, &unk_1E42A9420);
        (v85)(v87, v86, v21);
        v72 = sub_1E41FFC94();
        sub_1E42067F4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v72, v73))
        {
          OUTLINED_FUNCTION_13_13();
          v74 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v75 = swift_slowAlloc();
          v97[0] = v75;
          *v74 = 136315138;
          *(v74 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
          OUTLINED_FUNCTION_122_0();
          _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          v81 = OUTLINED_FUNCTION_19_56();
          MEMORY[0x1E69143B0](v81);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_143();
        v66(v87, v21);
      }

      else
      {
        (*(v88 + 32))(v89, v90, v34);
        if (v68)
        {
          v82 = [v68 appContext];
        }

        else
        {
          v82 = 0;
        }

        OUTLINED_FUNCTION_11_6();
        sub_1E3A40514();

        v83 = OUTLINED_FUNCTION_75();
        v84(v83);
      }
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion])
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_66_4();
        v53(v3);
        v54 = sub_1E41FFC94();
        sub_1E42067D4();
        OUTLINED_FUNCTION_101_3();
        if (os_log_type_enabled(v54, v55))
        {
          OUTLINED_FUNCTION_13_13();
          v56 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v57 = swift_slowAlloc();
          v97[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
          OUTLINED_FUNCTION_122_0();
          _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v63 = OUTLINED_FUNCTION_19_56();
          MEMORY[0x1E69143B0](v63);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        v64 = OUTLINED_FUNCTION_32_12();
        v65(v64);
        sub_1E3A469E8(1);
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    v39 = OUTLINED_FUNCTION_101();
    v40(v39);
    v41 = sub_1E41FFC94();
    sub_1E42067D4();
    OUTLINED_FUNCTION_101_3();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_13_13();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v44 = swift_slowAlloc();
      v97[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = OUTLINED_FUNCTION_119_4("tion(_:completion:)");
      OUTLINED_FUNCTION_70_12();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v50 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v50);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v51 = OUTLINED_FUNCTION_16_0();
    v52(v51);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A48EB0()
{
  OUTLINED_FUNCTION_198_1();
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 switchTabHandler];

  if (v1)
  {
    OUTLINED_FUNCTION_16_0();
    v2 = sub_1E4205ED4();
    OUTLINED_FUNCTION_107_0();
    v3 = OUTLINED_FUNCTION_13_8();
    v4(v3);

    _Block_release(v1);
  }
}

id sub_1E3A48F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E4205ED4();

  if (a4)
  {
    v8 = sub_1E4205C44();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1E3A4900C(uint64_t a1)
{
  sub_1E3A496B8(&qword_1ECF310E0, type metadata accessor for AMSBuyParamProperty);
  sub_1E3A496B8(&qword_1ECF31168, type metadata accessor for AMSBuyParamProperty);

  return sub_1E4207764();
}

uint64_t sub_1E3A490C8(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311A0, &unk_1E42B49A0);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1ECF31190, off_1E8728418);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_1E3A4928C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1E394CDB0(a1, a2, a3, v38);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v39;

  while (1)
  {
    sub_1E397C154(&v30);
    if (!*(&v31 + 1))
    {
      sub_1E397C6C4(v34);

      return;
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    sub_1E329504C(&v33, v26);
    v7 = *a5;
    v9 = sub_1E375D924(&v27);
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0, &qword_1E42A7D40);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v27);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1E375D84C(&v27);
        v17 = (v16[7] + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v25, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v27;
    v21 = v28;
    *(v19 + 32) = v29;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v26, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E3A494D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setScheme_];
}

void sub_1E3A49558()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A308DC();
}

uint64_t sub_1E3A496B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3A496FC()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();

  sub_1E3A32DF0();
}

uint64_t objectdestroy_35Tm_0()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_241();
  v4(v0 + v3);

  return swift_deallocObject();
}

void sub_1E3A49974(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1E4205C44();

  [a3 presentFamilySetupScreenIfEligible:v5 checkEligibility:a2 & 1];
}

id sub_1E3A49A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_1E4205ED4();

  v9 = [a5 handleAccountSettingsEventWithUrl:a1 amsBagKey:v8 useAMSWebView:a4 & 1];

  return v9;
}

void sub_1E3A49A80(uint64_t a1, void *a2)
{
  v3 = sub_1E4206614();

  [a2 setProperties_];
}

uint64_t sub_1E3A49AF4(void *a1)
{
  v1 = [a1 documentDataSources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B0D0, off_1E87282E8);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3A49B64(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E4205C64();

  return v4;
}

uint64_t sub_1E3A49BE0(void *a1)
{
  v2 = [a1 adamId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3A49C50()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_281();

  sub_1E3A34CB4();
}

void sub_1E3A49DD8()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3A35630();
}

id sub_1E3A49FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E42062A4();

  v6 = [a3 invokeMethod:a1 withArguments:v5];

  return v6;
}

void sub_1E3A4A02C(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 setMetricsOverlay_];
}

uint64_t sub_1E3A4A0AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0, &qword_1E42B49B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0, &qword_1E42B49B0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A4A244(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  v3 = sub_1E3A4A2A8(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

void *sub_1E3A4A2A8(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1E3A4A364(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void *sub_1E3A4A364(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E37FEA14(v2, 0);

    MEMORY[0x1E6911E40](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1E4207384();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_194();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v1);
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  v7 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v7))
  {
    OUTLINED_FUNCTION_34_34();
    v8 = OUTLINED_FUNCTION_187_0();
    v9(v8);
  }

  OUTLINED_FUNCTION_195_0();
  v11 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v12 = (v6 + v4 + v11) & ~v4;
  v13 = (((v12 + v6) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v3 + 8);
  v15(v0 + v11, v18);
  v15(v0 + v12, v18);

  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

void sub_1E3A4A79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3A3BA40();
}

void sub_1E3A4A810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v1 = OUTLINED_FUNCTION_301();
  sub_1E3B79200(v1, v2);
}

void sub_1E3A4A8E8()
{
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3A3EDFC();
}

void sub_1E3A4A978()
{
  OUTLINED_FUNCTION_194();
  i = *(v1 + 16);
  if (!v3)
  {
LABEL_22:
    (i)();
    OUTLINED_FUNCTION_192();

    return;
  }

  v5 = v3;
  v6 = sub_1E32AE9B0(v3);
  if (v6 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    MEMORY[0x1E6911E60](0, v5);
LABEL_19:

    goto LABEL_22;
  }

  v7 = v6;
  v17 = i;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      goto LABEL_21;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_39_3();
      v8 = MEMORY[0x1E6911E60](v12);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v0 = v8;
    v9 = [v8 mediaEntities];
    v10 = OUTLINED_FUNCTION_294();
    sub_1E3280A90(v10, &qword_1EE23B308, off_1E87283F0);
    v11 = sub_1E42062B4();

    v2 = v11 >> 62 ? sub_1E4207384() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      break;
    }
  }

  v13 = [v0 mediaEntities];
  v5 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v5))
  {

LABEL_21:
    i = v17;
    goto LABEL_22;
  }

  i = v17;
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v5 + 32);
    goto LABEL_19;
  }

  __break(1u);
}

unint64_t sub_1E3A4AB54()
{
  result = qword_1ECF31198;
  if (!qword_1ECF31198)
  {
    sub_1E3280A90(255, &qword_1ECF31190, off_1E8728418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31198);
  }

  return result;
}

id sub_1E3A4ABC0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 playMediaInfo:v1 watchType:0 isRentAndWatchNow:0];
}

void sub_1E3A4AC10()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  if (v1)
  {
    v3 = [v1 viewControllers];
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E42062B4();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E32AE9B0(v4) < 2)
  {

    OUTLINED_FUNCTION_124();
    sub_1E3A3B4EC();
LABEL_14:

    OUTLINED_FUNCTION_27_0();
    sub_1E3A38568();
    OUTLINED_FUNCTION_192();
    return;
  }

  if (!v2)
  {
    sub_1E3A3E0D0(v4);
LABEL_11:

    sub_1E3A3E0D0(v9);
    if (v1)
    {
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      OUTLINED_FUNCTION_20_2();
      v10 = sub_1E42062A4();

      [v1 setViewControllers:v10 animated:0];
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]) < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1E32AE9B0(v4);
    v6 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      sub_1E3797CDC(v8, 1);
      sub_1E3A4AE40(0, 0, v5, v4);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1E3A4ADDC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3A4AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_28:
  v15 = sub_1E4207384();
LABEL_6:
  v16 = v15 - v7;
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_1E3A4A244(v4, sub_1E3A4B098);
    goto LABEL_22;
  }

  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || &v18[8 * v16] <= v17)
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_30;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {

    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
LABEL_22:

    return;
  }

  __break(1u);
}

uint64_t sub_1E3A4B020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_159Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_183(v5))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v6 + 8))(v1 + v4, v0);
  }

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

void sub_1E3A4B19C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3A38568();
}

void sub_1E3A4B208(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v6 = Strong;
    v7 = v3;
    sub_1E3A3E17C();
  }

  else if (v4)
  {
    v4(a1 & 1);
  }
}

void sub_1E3A4B2A4(char a1, double a2)
{
  v3 = v2[3];
  v4 = v2[4];
  if (a1)
  {
    v5 = v2[2];
    if (v3)
    {
      v8[4] = v2[3];
      v8[5] = v4;
      OUTLINED_FUNCTION_3_4();
      v8[1] = 1107296256;
      OUTLINED_FUNCTION_26_41();
      v8[2] = v6;
      v8[3] = &block_descriptor_225;
      v7 = _Block_copy(v8);
    }

    else
    {
      v7 = 0;
    }

    [v5 performWithTargetResponder:0 completionHandler:v7];
    _Block_release(v7);
  }

  else if (v3)
  {
    v3(0, a2);
  }
}

uint64_t sub_1E3A4B370(void *a1)
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_23();
  v4 = sub_1E4205ED4();
  v5 = [a1 objectForKeyedSubscript_];

  if (!v5)
  {
    return (v3)(0, 0);
  }

  OUTLINED_FUNCTION_23();
  v6 = sub_1E4205ED4();
  v7 = sub_1E3A49FB0(v6, MEMORY[0x1E69E7CC0], v5);

  if (!v7)
  {
LABEL_5:

    return (v3)(0, 0);
  }

  if ([v7 isUndefined])
  {

    goto LABEL_5;
  }

  v9 = sub_1E32859C4(v7, &selRef_toString);
  v3(v9);
}

uint64_t sub_1E3A4B4B4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3A47F58();
}

double sub_1E3A4B7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  [objc_opt_self() setAnimationsEnabled_];
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v6 = v3;
  v7 = v1;

  if (v2 == 1)
  {
    v8 = sub_1E40C4340();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *v8;
    if (v9)
    {
      OUTLINED_FUNCTION_5_10();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = sub_1E3A4B978;
      v10[4] = v5;
      OUTLINED_FUNCTION_21();
      v12 = *(v11 + 496);
      v13 = v9;
      OUTLINED_FUNCTION_50();

      v14 = OUTLINED_FUNCTION_137_3();
      v12(v14);

      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    OUTLINED_FUNCTION_39_3();
    sub_1E3A3C778();
  }

  return result;
}

void sub_1E3A4B9AC()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 280))(1);

  sub_1E3A3C474();
}

void sub_1E3A4BA18(__n128 a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1E40C4340();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*v6)
  {
    v7 = *v6;
    v8 = [v4 isAnimated];
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v10 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x200);
    v11 = v5;
    v10(v2, v3, v8, sub_1E3A4D044, v9);
  }
}

id sub_1E3A4BB2C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 setAnimationsEnabled_];
}

uint64_t objectdestroy_275Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_194();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v13);
  v15 = *(v14 + 64);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v17 = *(v16 + 80);
  v19 = *(v18 + 64);

  v20 = sub_1E41FE414();
  if (!OUTLINED_FUNCTION_117_4(v20))
  {
    OUTLINED_FUNCTION_34_34();
    v21 = OUTLINED_FUNCTION_187_0();
    v22(v21);
  }

  OUTLINED_FUNCTION_59_10();
  v23 = OUTLINED_FUNCTION_309();
  v17(v23);
  v24 = OUTLINED_FUNCTION_187_0();
  v17(v24);

  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_192();

  return swift_deallocObject();
}

uint64_t objectdestroy_284Tm()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t objectdestroy_294Tm()
{

  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t objectdestroy_310Tm()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}