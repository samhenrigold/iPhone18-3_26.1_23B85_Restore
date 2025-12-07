void sub_1D7FB7ECC()
{

  sub_1D818EDB4();

  v1 = *(v0 + 72);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = v1 + 1;

    sub_1D818EDC4();
  }
}

uint64_t Plugin.deinit()
{

  sub_1D7E166A0(v0 + 40);

  return v0;
}

uint64_t Plugin.__deallocating_deinit()
{
  Plugin.deinit();
  OUTLINED_FUNCTION_1_64();

  return swift_deallocClassInstance();
}

uint64_t Plugin.pluggableViewController(_:didChangeSizeTo:)(double a1, double a2)
{
  v3 = v2;
  sub_1D7FB7ECC();
  v7 = v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = v3[6];
    ObjectType = swift_getObjectType();
    v11 = v3[2];
    v12 = v3[3];
    v14 = v3[7];
    v13 = v3[8];
    type metadata accessor for PluginModel();
    swift_allocObject();
    sub_1D8190DB4();
    v15 = sub_1D7F17BE4(v11, v12, v7, v14, v13, a1, a2);
    (*(v9 + 8))(v3, v15, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Plugin.description.getter()
{
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1D7E13698(0, &qword_1EDBBE100, 255, sub_1D7F06938, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D81A1B70;
  sub_1D7E13698(0, &qword_1ECA0EB80, v2, type metadata accessor for Plugin, MEMORY[0x1E69E6000]);
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1D7FB82D8(v3, v4, v5);
  *(v1 + 32) = v11;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 96) = MEMORY[0x1E69E6158];
  *(v1 + 104) = sub_1D7E13BF4();
  *(v1 + 72) = v7;
  *(v1 + 80) = v6;
  v8 = *(v0 + 32);
  v9 = MEMORY[0x1E69E63A8];
  *(v1 + 136) = MEMORY[0x1E69E6370];
  *(v1 + 144) = v9;
  *(v1 + 112) = v8;
  sub_1D8190DB4();
  return sub_1D8190F54();
}

unint64_t sub_1D7FB82D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECA0EB88;
  if (!qword_1ECA0EB88)
  {
    sub_1D7E13698(255, &qword_1ECA0EB80, a3, type metadata accessor for Plugin, MEMORY[0x1E69E6000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EB88);
  }

  return result;
}

__n128 sub_1D7FB84CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

void BlueprintImpressionManager.endImpression(at:view:triggerSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v287 = v25;
  v296 = v26;
  v27 = *v20;
  v28 = sub_1D818E754();
  v29 = OUTLINED_FUNCTION_1_65(v28, v302);
  v274 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v32);
  v33 = v27[11];
  v34 = v27[10];
  OUTLINED_FUNCTION_81_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81_3();
  v36 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_82_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_82_1();
  v38 = swift_getAssociatedConformanceWitness();
  v306.n128_u64[0] = AssociatedTypeWitness;
  v306.n128_u64[1] = v36;
  v307 = AssociatedConformanceWitness;
  v308 = v38;
  v39 = OUTLINED_FUNCTION_22_10();
  v41 = type metadata accessor for BlueprintImpressionSection(v39, v40);
  OUTLINED_FUNCTION_1_65(v41, &v304);
  v277 = v42;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v44);
  v45 = OUTLINED_FUNCTION_63_2();
  v49 = type metadata accessor for BlueprintImpressionManager.SectionContext(v45, v46, v47, v48);
  OUTLINED_FUNCTION_107();
  v50 = sub_1D8191E84();
  OUTLINED_FUNCTION_1_65(v50, v299);
  v272 = v51;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v53);
  v282 = v49;
  OUTLINED_FUNCTION_32_5();
  v280 = v54;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v56);
  v306.n128_u64[0] = AssociatedTypeWitness;
  v306.n128_u64[1] = v36;
  v307 = AssociatedConformanceWitness;
  v308 = v38;
  v57 = type metadata accessor for BlueprintSection(255, &v306);
  OUTLINED_FUNCTION_107();
  v58 = sub_1D8191E84();
  OUTLINED_FUNCTION_1_65(v58, &v308);
  v284 = v59;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v61);
  v292 = v57;
  OUTLINED_FUNCTION_32_5();
  v285 = v62;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v65);
  v306.n128_u64[0] = AssociatedTypeWitness;
  v306.n128_u64[1] = v36;
  v307 = AssociatedConformanceWitness;
  v308 = v38;
  v66 = OUTLINED_FUNCTION_22_10();
  v68 = type metadata accessor for Blueprint(v66, v67);
  v69 = OUTLINED_FUNCTION_1_65(v68, &v312);
  v290 = v70;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v72);
  v74 = type metadata accessor for BlueprintItem(0, v36, v38, v73);
  OUTLINED_FUNCTION_1_65(v74, &a14);
  v288 = v75;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v77);
  v306.n128_u64[0] = AssociatedTypeWitness;
  v306.n128_u64[1] = v36;
  v307 = AssociatedConformanceWitness;
  v308 = v38;
  v78 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for BlueprintImpression(v78, v79);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v80);
  v84 = *v24;
  if (v84 >= 0 != *(v20 + v27[19]))
  {
    v297 = &v256[-v82];
    v269 = v83;
    v286 = v81;
    OUTLINED_FUNCTION_15_2((v20 + 5), v311);
    v85 = sub_1D818E994();
    v86 = v20;
    v87 = AssociatedConformanceWitness;
    v88 = v85;
    v306.n128_u64[0] = v34;
    v306.n128_u64[1] = AssociatedTypeWitness;
    v270 = AssociatedTypeWitness;
    v307 = v36;
    v308 = v33;
    v271 = v87;
    v309 = v87;
    v310 = v38;
    v89 = type metadata accessor for BlueprintImpressionManager.Context(255, &v306);
    OUTLINED_FUNCTION_0_87();
    v92 = sub_1D7E2491C(v90, v91, MEMORY[0x1E6969C38]);
    v268 = v88;
    v265 = v89;
    sub_1D8190E14();
    v93 = v86;
    sub_1D8190D74();
    swift_endAccess();
    v94 = v305[0];
    if (v305[0])
    {
      v261 = v92;
      v267 = v34;
      v95 = v33;
      v96 = OUTLINED_FUNCTION_45_6();
      v97 = v93;
      sub_1D7EA3F14(v96);
      v260 = v84 & 0x7F;
      v306.n128_u8[0] = v84 & 0x7F;
      OUTLINED_FUNCTION_85_2();
      sub_1D7FBB2A8(v98, v99, v100, v101, v102, v103);
      DurationType.duration.getter(v286, &protocol witness table for BlueprintImpression<A, B>);
      OUTLINED_FUNCTION_3_52();
      v105 = v94 + *(v104 + 168);
      v106 = *(v105 + 24);
      v107 = MEMORY[0x1E69E6158];
      v264 = v38;
      v263 = v36;
      v287 = v94;
      v283 = v95;
      if (v106 <= v108)
      {
        if (qword_1EDBBB328 != -1)
        {
          OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
        }

        v141 = qword_1EDBC6080;
        v142 = sub_1D81919B4();
        v257 = v142;
        OUTLINED_FUNCTION_10_17(v142, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
        v144 = OUTLINED_FUNCTION_92_1(v143);
        *(v144 + 16) = xmmword_1D819FAC0;
        OUTLINED_FUNCTION_53_4();
        v146 = (v97 + *(v145 + 160));
        v147 = *v146;
        v148 = v146[1];
        *(v149 + 56) = v107;
        v150 = sub_1D7E13BF4();
        *(v144 + 64) = v150;
        v258 = v147;
        *(v144 + 32) = v147;
        *(v144 + 40) = v148;
        v151 = v287;
        OUTLINED_FUNCTION_41_4();
        OUTLINED_FUNCTION_42_0(v151 + *(v152 + 136));
        OUTLINED_FUNCTION_67_2();
        v154 = OUTLINED_FUNCTION_27_9(v153);
        v155(v154);
        v259 = v148;
        sub_1D8190DB4();
        v156 = BlueprintItem.visualDescription.getter(v38);
        v158 = v157;
        v159 = OUTLINED_FUNCTION_66_4();
        v160(v159);
        *(v144 + 96) = MEMORY[0x1E69E6158];
        *(v144 + 104) = v150;
        *(v144 + 72) = v156;
        *(v144 + 80) = v158;
        v262 = v141;
        sub_1D818FD44("%{public}@, ending impression for item=%@", 41, 2, &dword_1D7DFF000, v141, v257, v144);

        Strong = swift_unknownObjectWeakLoadStrong();
        v140 = v267;
        if (Strong)
        {
          v158 = v97[4];
          swift_getObjectType();
          OUTLINED_FUNCTION_29_6();
          v164(v162, v163);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_58_5();
        OUTLINED_FUNCTION_8_4(v97 + *(*v97 + 192), v305);
        v165 = OUTLINED_FUNCTION_84_2();
        type metadata accessor for BlueprintImpressionManagerProcessor(v165, v166, v283, v167);
        sub_1D8190DB4();
        v168 = sub_1D8191324();
        v306.n128_u64[0] = v168;
        OUTLINED_FUNCTION_33_7();
        v169 = sub_1D8191414();
        v139 = v289;
        if (v168 != v169)
        {
          do
          {
            OUTLINED_FUNCTION_33_7();
            v194 = sub_1D81913E4();
            OUTLINED_FUNCTION_75_3(v194);
            if (v158)
            {
            }

            else
            {
              OUTLINED_FUNCTION_30_8();
              sub_1D8192204();
            }

            OUTLINED_FUNCTION_30_8();
            sub_1D8191454();
            sub_1D81251E8();

            OUTLINED_FUNCTION_33_7();
          }

          while (v306.n128_u64[0] != sub_1D8191414());
        }
      }

      else
      {
        if (qword_1EDBBB328 != -1)
        {
          OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
        }

        v262 = qword_1EDBC6080;
        v109 = sub_1D81919B4();
        v257 = v109;
        OUTLINED_FUNCTION_10_17(v109, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_1D81A3F90;
        OUTLINED_FUNCTION_53_4();
        v112 = (v97 + *(v111 + 160));
        v114 = *v112;
        v113 = v112[1];
        *(v115 + 56) = v107;
        v116 = sub_1D7E13BF4();
        *(v110 + 64) = v116;
        v258 = v114;
        *(v110 + 32) = v114;
        *(v110 + 40) = v113;
        OUTLINED_FUNCTION_3_52();
        OUTLINED_FUNCTION_42_0(v94 + *(v117 + 136));
        OUTLINED_FUNCTION_67_2();
        v119 = OUTLINED_FUNCTION_27_9(v118);
        v120(v119);
        v259 = v113;
        sub_1D8190DB4();
        v121 = BlueprintItem.visualDescription.getter(v38);
        v123 = v122;
        v124 = OUTLINED_FUNCTION_66_4();
        v125(v124);
        *(v110 + 96) = MEMORY[0x1E69E6158];
        *(v110 + 104) = v116;
        *(v110 + 72) = v121;
        *(v110 + 80) = v123;
        v126 = DurationType.duration.getter(v286, &protocol witness table for BlueprintImpression<A, B>);
        v127 = MEMORY[0x1E69E63B0];
        v128 = MEMORY[0x1E69E6438];
        *(v110 + 136) = MEMORY[0x1E69E63B0];
        *(v110 + 144) = v128;
        *(v110 + 112) = v126;
        v129 = *(v105 + 24);
        *(v110 + 176) = v127;
        *(v110 + 184) = v128;
        *(v110 + 152) = v129;
        sub_1D818FD44("%{public}@, cancelling impression for item=%@ because duration=%.3f was less than minimum=%.3f", 94, 2, &dword_1D7DFF000, v262, v257, v110);

        v130 = swift_unknownObjectWeakLoadStrong();
        v131 = v267;
        v132 = v283;
        if (v130)
        {
          v116 = v97[4];
          swift_getObjectType();
          OUTLINED_FUNCTION_29_6();
          OUTLINED_FUNCTION_79_2();
          v135(v133, v134);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_58_5();
        OUTLINED_FUNCTION_8_4(v97 + *(*v97 + 192), v305);
        type metadata accessor for BlueprintImpressionManagerProcessor(0, v131, v132, v136);
        sub_1D8190DB4();
        v137 = sub_1D8191324();
        v306.n128_u64[0] = v137;
        OUTLINED_FUNCTION_33_7();
        v138 = sub_1D8191414();
        v139 = v289;
        if (v137 != v138)
        {
          do
          {
            OUTLINED_FUNCTION_33_7();
            v193 = sub_1D81913E4();
            OUTLINED_FUNCTION_75_3(v193);
            if (v116)
            {
            }

            else
            {
              OUTLINED_FUNCTION_30_8();
              sub_1D8192204();
            }

            OUTLINED_FUNCTION_30_8();
            sub_1D8191454();
            sub_1D8125210();

            OUTLINED_FUNCTION_33_7();
          }

          while (v306.n128_u64[0] != sub_1D8191414());
        }

        v140 = v131;
      }

      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_48_5();
      BlueprintProviderType.blueprint.getter(v140, v283);
      v170 = v287;
      v171 = *(*v287 + 136);
      OUTLINED_FUNCTION_8_4(v287 + v171, &v303);
      v172 = v294;
      v173 = v295;
      v266(v294, v170 + v171, v295);
      v174 = BlueprintItem.identifier.getter(v173);
      v176 = v175;
      v288(v172, v173);
      OUTLINED_FUNCTION_65_5();
      Blueprint.section(forItem:)(v174);
      v177 = v172;

      v178 = v292;
      OUTLINED_FUNCTION_43_0(v172, 1, v292);
      v179 = v293;
      if (v180)
      {

        v181 = OUTLINED_FUNCTION_11_23();
        v182(v181, v139);
        OUTLINED_FUNCTION_14_15();
        v183 = OUTLINED_FUNCTION_64_4();
        v185(v183, *(v184 - 256));
        OUTLINED_FUNCTION_14_15();
        v187 = v177;
        v188 = &v308;
      }

      else
      {
        OUTLINED_FUNCTION_85_2();
        (*(v189 + 32))(v179, v177, v178);
        v190 = BlueprintSection.isImpressionable.getter(v178);
        if ((v190 & 1) != 0 && (swift_getWitnessTable(), swift_getWitnessTable(), OUTLINED_FUNCTION_68_0(), sub_1D81918C4(), (v306.n128_u8[8] & 1) == 0))
        {
          v195 = v306.n128_u64[0];
          sub_1D8190DB4();
          v196 = v265;
          v197 = sub_1D8190DB4();

          v306.n128_u64[0] = v197;
          MEMORY[0x1EEE9AC00](v198);
          OUTLINED_FUNCTION_84_2();
          sub_1D8190DA4();
          OUTLINED_FUNCTION_8_24();
          swift_getWitnessTable();
          v199 = sub_1D8191234();

          if (v199)
          {
            OUTLINED_FUNCTION_45_6();

            OUTLINED_FUNCTION_14_15();
            v200 = OUTLINED_FUNCTION_62_3();
            v201(v200);
            OUTLINED_FUNCTION_14_15();
            v191 = v291;
          }

          else
          {
            v202 = OUTLINED_FUNCTION_51_4(&a11);
            v301 = BlueprintSection.identifier.getter(v202);
            v302[0] = v203;
            OUTLINED_FUNCTION_25_7((v97 + 6));
            v204 = v282;
            sub_1D8190E14();
            v205 = v279;
            sub_1D8190D74();
            swift_endAccess();

            OUTLINED_FUNCTION_43_0(v205, 1, v204);
            if (v180)
            {
              OUTLINED_FUNCTION_45_6();

              v206 = OUTLINED_FUNCTION_11_23();
              v207(v206, v196);
              OUTLINED_FUNCTION_14_15();
              v208(v291, v139);
              OUTLINED_FUNCTION_14_15();
              v209 = OUTLINED_FUNCTION_64_4();
              v211(v209, *(v210 - 256));
              OUTLINED_FUNCTION_14_15();
              v187 = v205;
              v188 = v299;
              goto LABEL_24;
            }

            (*(v280 + 32))(v281, v205, v204);
            OUTLINED_FUNCTION_53_4();
            v213 = (v97 + *(v212 + 176));
            OUTLINED_FUNCTION_8_4(v213, &v301);
            v214 = v213[3];
            if (v214)
            {
              v215 = v213[4];
              v216 = __swift_project_boxed_opaque_existential_1(v213, v213[3]);
              v217 = *(v214 - 8);
              v218 = MEMORY[0x1EEE9AC00](v216);
              v220 = &v256[-((v219 + 15) & 0xFFFFFFFFFFFFFFF0)];
              (*(v217 + 16))(v220, v218);
              (*(v215 + 8))(&v306, v214, v215);
              (*(v217 + 8))(v220, v214);
              v214 = v308;
              v221 = v309;
              __swift_project_boxed_opaque_existential_1(&v306, v308);
              (*(v221 + 8))(&v298, v195, v214, v221);
              v296 = v298;
              v222 = v299[0];
              v223 = v299[1];
              __swift_destroy_boxed_opaque_existential_1Tm(&v306);
              v204 = v282;
            }

            else
            {
              v296 = 0;
              v222 = 0;
              v223 = 0;
            }

            OUTLINED_FUNCTION_38_6();
            v224 = v273;
            v225(v273, v291, v139);
            OUTLINED_FUNCTION_38_6();
            v226 = OUTLINED_FUNCTION_83_1();
            v227(v226);
            OUTLINED_FUNCTION_46_7();
            v228 = v276;
            v229 = v281;
            v230(v276, v281, v275);
            OUTLINED_FUNCTION_65_5();
            sub_1D818E744();
            LOBYTE(v298) = *(v229 + *(v204 + 36));
            v300 = v260;
            v231 = *&v297[*(v286 + 72) + 8];
            v306.n128_u64[0] = v296;
            v306.n128_u64[1] = v222;
            v307 = v223;
            OUTLINED_FUNCTION_48_5();
            sub_1D8094178(v224, v97, v228, v214, v232, v233, v234, v231, v235, &v306);
            sub_1D8190DB4();
            v236 = v278;
            DurationType.duration.getter(v278, &protocol witness table for BlueprintImpressionSection<A, B>);
            OUTLINED_FUNCTION_39_5();
            if (*(v97 + *(v237 + 168) + 24) <= v238)
            {
              if (qword_1EDBBB328 != -1)
              {
                OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
              }

              v240 = sub_1D81919B4();
              OUTLINED_FUNCTION_10_17(v240, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
              v242 = OUTLINED_FUNCTION_92_1(v241);
              *(v242 + 16) = xmmword_1D819FAC0;
              v243 = MEMORY[0x1E69E6158];
              *(v242 + 56) = MEMORY[0x1E69E6158];
              v244 = sub_1D7E13BF4();
              *(v242 + 64) = v244;
              v245 = v259;
              *(v242 + 32) = v258;
              *(v242 + 40) = v245;
              sub_1D8190DB4();
              v246 = OUTLINED_FUNCTION_51_4(&a11);
              v247 = BlueprintSection.visualDescription.getter(v246);
              *(v242 + 96) = v243;
              *(v242 + 104) = v244;
              *(v242 + 72) = v247;
              *(v242 + 80) = v248;
              sub_1D818FD44("%{public}@, ending section impression for section=%@", 52, 2, &dword_1D7DFF000, v262, v240, v242);

              if (swift_unknownObjectWeakLoadStrong())
              {
                swift_getObjectType();
                v236 = v278;
                OUTLINED_FUNCTION_29_6();
                OUTLINED_FUNCTION_79_2();
                v251(v249, v250);
                OUTLINED_FUNCTION_45_6();

                swift_unknownObjectRelease();
              }

              else
              {
                OUTLINED_FUNCTION_45_6();
              }

              v239 = v291;
            }

            else
            {
              OUTLINED_FUNCTION_45_6();

              v239 = v291;
              v224 = v292;
            }

            v252 = OUTLINED_FUNCTION_11_23();
            v253(v252, v236);
            OUTLINED_FUNCTION_14_15();
            v254(v281, v282);
            OUTLINED_FUNCTION_14_15();
            v255(v293, v224);
            OUTLINED_FUNCTION_14_15();
            v191 = v239;
          }
        }

        else
        {
          OUTLINED_FUNCTION_45_6();

          (*(v176 + 8))(v179, v178);
          v191 = OUTLINED_FUNCTION_11_23();
        }

        v192(v191, v139);
        OUTLINED_FUNCTION_14_15();
        v187 = OUTLINED_FUNCTION_64_4();
      }

LABEL_24:
      v186(v187, *(v188 - 32));
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_15_2((v93 + 7), v311);
    v306.n128_u64[0] = v34;
    v306.n128_u64[1] = v270;
    v307 = v36;
    v308 = v33;
    v309 = v271;
    v310 = v38;
    type metadata accessor for BlueprintImpressionManager.StagedContext(255, &v306);
    sub_1D8190E14();
    sub_1D8190D74();
    swift_endAccess();
  }

LABEL_25:
  OUTLINED_FUNCTION_100();
}

uint64_t *BlueprintImpressionManagerOptions.init(requiredPercentVisible:requiredEndPercentVisible:requiredMinimumDurationInSeconds:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  v5 = *(result + 8);
  *a2 = a3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = a4;
  return result;
}

uint64_t BlueprintImpressionTracking.performWithoutImpressions(block:)()
{
  OUTLINED_FUNCTION_88_1();
  v7 = *(v3 + 16);
  v5 = v7(0, v4, v3);
  v2(v5);

  return v7(1, v1, v0);
}

void BlueprintImpressionManagerOptions.requiredEndPercentVisible.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t BlueprintImpressionManager.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FB9C88(uint64_t a1)
{
  sub_1D81927E4();
  BlueprintImpressionManager.Behavior.hash(into:)();
  return sub_1D8192824();
}

uint64_t BlueprintImpressionManager.layoutViewStateProvider.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 176);
  OUTLINED_FUNCTION_8_4(v1 + v4, v6);
  return sub_1D7FBC4AC(v1 + v4, a1);
}

uint64_t (*BlueprintImpressionManager.layoutViewStateProvider.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_2(v1 + *(v3 + 176), a1);
  return j__swift_endAccess;
}

uint64_t BlueprintImpressionManager.__allocating_init(provider:behavior:name:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_88_1();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_110();
  BlueprintImpressionManager.init(provider:behavior:name:options:)(v9, v10, v6, v5, a5);
  return v8;
}

void BlueprintImpressionManager.endSession(triggerSource:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v85 = type metadata accessor for BlueprintImpressionSession(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_2();
  v86 = v6;
  v7 = sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v90 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_12();
  v89 = v12;
  v13 = v4[10];
  v87 = v4[11];
  v88 = v13;
  v15 = type metadata accessor for BlueprintImpressionManager.Session(0, v13, v87, v14);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_0();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v72 - v23);
  v25 = *v3;
  if (v25 >= 0 == *(v1 + v4[19]) || (v26 = v4[17], OUTLINED_FUNCTION_42_0(v1 + v26), v27 = *(v17 + 16), v83 = v26, v27(v24, v1 + v26, v15), swift_getEnumCaseMultiPayload() == 1))
  {
LABEL_11:
    OUTLINED_FUNCTION_100();
    return;
  }

  v81 = v17;
  v80 = v25;
  v28 = v24[1];
  v76 = *v24;
  v75 = v28;
  sub_1D7E0D158(0);
  v30 = v29[12];
  v78 = *(v24 + v29[16]);
  v82 = *(v24 + v29[20]);
  v31 = *(v90 + 32);
  v79 = v7;
  v77 = v90 + 32;
  v74 = v31;
  v32 = (v31)(v89, v24 + v30, v7);
  if (qword_1EDBBB328 != -1)
  {
    v32 = OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
  }

  v33 = qword_1EDBC6080;
  OUTLINED_FUNCTION_10_17(v32, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v35 = OUTLINED_FUNCTION_92_1(v34);
  *(v35 + 16) = xmmword_1D819FAC0;
  OUTLINED_FUNCTION_39_5();
  v37 = (v1 + *(v36 + 160));
  v39 = *v37;
  v38 = v37[1];
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1D7E13BF4();
  *(v35 + 64) = v41;
  *(v35 + 32) = v39;
  *(v35 + 40) = v38;
  v27(v21, v1 + v83, v15);
  sub_1D8190DB4();
  v42 = sub_1D7FBA708(v15);
  v44 = v43;
  (*(v81 + 8))(v21, v15);
  *(v35 + 96) = MEMORY[0x1E69E6158];
  *(v35 + 104) = v41;
  *(v35 + 72) = v42;
  *(v35 + 80) = v44;
  v45 = sub_1D81919E4();
  sub_1D818FD44("%{public}@, ending impression session, session=%@", 49, 2, &dword_1D7DFF000, v33, v45, v35);

  Strong = swift_unknownObjectWeakLoadStrong();
  v48 = v87;
  v47 = v88;
  if (Strong)
  {
    v73 = v1[4];
    v72[2] = Strong;
    OUTLINED_FUNCTION_8_4((v1 + 5), &v98);
    v72[1] = sub_1D818E994();
    OUTLINED_FUNCTION_37_7();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_37_7();
    v50 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_68_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_68_0();
    v52 = swift_getAssociatedConformanceWitness();
    sub_1D8190DB4();
    v92 = v47;
    v93 = AssociatedTypeWitness;
    v94 = v50;
    v95 = v48;
    v96 = AssociatedConformanceWitness;
    v97 = v52;
    type metadata accessor for BlueprintImpressionManager.Context(0, &v92);
    OUTLINED_FUNCTION_0_87();
    sub_1D7E2491C(v53, v54, MEMORY[0x1E6969C38]);
    v55 = sub_1D8190DB4();

    v92 = v55;
    sub_1D8190DA4();
    OUTLINED_FUNCTION_8_24();
    swift_getWitnessTable();
    v56 = sub_1D81914A4();
    LOBYTE(v50) = v80 & 0x7F;
    OUTLINED_FUNCTION_51_4(&v99);
    ObjectType = swift_getObjectType();
    LOBYTE(v92) = v50;
    (*(v73 + 40))(v1, v56, &v92, v47, v48, ObjectType);
    swift_unknownObjectRelease();
  }

  v58 = v79;
  if (v82 != -1)
  {
    *v21 = v82 + 1;
    swift_storeEnumTagMultiPayload();
    v59 = v83;
    OUTLINED_FUNCTION_15_2(v1 + v83, &v92);
    (*(v81 + 40))(v1 + v59, v21, v15);
    swift_endAccess();
    OUTLINED_FUNCTION_15_2((v1 + 5), &v91);
    sub_1D818E994();
    OUTLINED_FUNCTION_37_7();
    v60 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_37_7();
    v61 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_68_0();
    v62 = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_68_0();
    v63 = swift_getAssociatedConformanceWitness();
    v92 = v47;
    v93 = v60;
    v94 = v61;
    v95 = v48;
    v96 = v62;
    v97 = v63;
    type metadata accessor for BlueprintImpressionManager.Context(0, &v92);
    OUTLINED_FUNCTION_0_87();
    sub_1D7E2491C(v64, v65, MEMORY[0x1E6969C38]);
    OUTLINED_FUNCTION_78();
    sub_1D8190E14();
    sub_1D8190E04();
    swift_endAccess();
    v66 = v84;
    (*(v90 + 16))(v84, v89, v58);
    OUTLINED_FUNCTION_48_5();
    sub_1D818E744();
    LOBYTE(v59) = v80 & 0x7F;
    v67 = v85;
    v68 = v86;
    v69 = v75;
    *v86 = v76;
    *(v68 + 8) = v69;
    v70 = v74;
    (v74)(v68 + v67[5], v66, v58);
    OUTLINED_FUNCTION_78_1();
    v70();
    *(v68 + v67[7]) = v78;
    *(v68 + v67[8]) = v59;
    *(v68 + v67[9]) = v82;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_81_3();
      v71();
      swift_unknownObjectRelease();
    }

    sub_1D7E4939C(v68, type metadata accessor for BlueprintImpressionSession);
    (*(v90 + 8))(v89, v58);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1D7FBA708(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return 0x7669746341746F6ELL;
  }

  v6 = *v3;
  v7 = *(v3 + 1);
  sub_1D7E0D158(0);
  v9 = *(v8 + 48);
  v12[0] = 0x28657669746361;
  v12[1] = 0xE700000000000000;
  MEMORY[0x1DA713260](v6, v7);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  v5 = v12[0];
  v10 = sub_1D818E754();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);
  return v5;
}

Swift::Void __swiftcall BlueprintImpressionManager.endSession(trigger:)(TeaUI::BlueprintImpressionSessionTrigger trigger)
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_69_3(v1);
  BlueprintImpressionManager.endSession(triggerSource:)();
}

uint64_t BlueprintImpressionManager.endImpressions(with:triggerSource:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_4((v2 + 5), v22);
  v5 = sub_1D818E994();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_6();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_8();
  v11 = swift_getAssociatedConformanceWitness();
  sub_1D8190DB4();
  v21[0] = v6;
  v21[1] = AssociatedTypeWitness;
  v21[2] = v9;
  v21[3] = v7;
  v21[4] = AssociatedConformanceWitness;
  v21[5] = v11;
  type metadata accessor for BlueprintImpressionManager.Context(0, v21);
  OUTLINED_FUNCTION_0_87();
  v14 = sub_1D7E2491C(v12, v13, MEMORY[0x1E6969C38]);
  v15 = sub_1D8190DB4();

  v21[0] = v15;
  OUTLINED_FUNCTION_84_2();
  sub_1D8190DA4();
  OUTLINED_FUNCTION_8_24();
  swift_getWitnessTable();
  v16 = sub_1D81916D4();
  v21[0] = a1;
  sub_1D7FBC53C(0);
  v18 = v17;
  v19 = sub_1D7E2491C(&qword_1ECA0EB98, sub_1D7FBC53C, MEMORY[0x1E69E6328]);
  v21[0] = MEMORY[0x1DA713840](v21, v16, v5, v18, v14, v19);
  sub_1D7FBC5B4(0);
  sub_1D7E2491C(qword_1ECA0EBA8, sub_1D7FBC5B4, MEMORY[0x1E69E6508]);
  sub_1D8191224();
}

void sub_1D7FBABE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = a4 & 0x7F;
  BlueprintImpressionManager.endImpression(at:view:trigger:)(a1, Strong, &v7);
}

uint64_t sub_1D7FBAC6C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D818E994();
  v11[0] = a4;
  v11[1] = swift_getAssociatedTypeWitness();
  v11[2] = swift_getAssociatedTypeWitness();
  v11[3] = a5;
  v11[4] = swift_getAssociatedConformanceWitness();
  v11[5] = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintImpressionManager.Context(255, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_1D7FBADA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v50 = a3;
  v6 = *a2;
  v7 = *(*a2 + 112);
  v48 = *(*a2 + 88);
  v49 = v7;
  v53 = v7;
  v52 = v48;
  v8 = type metadata accessor for Blueprint(0, &v52);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v36 - v9;
  v47 = sub_1D818E994();
  v39 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(&v48 + 1);
  v38 = *(&v49 + 1);
  v12 = type metadata accessor for BlueprintItem(255, *(&v48 + 1), *(&v49 + 1), v11);
  v13 = sub_1D8191E84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v43 = v8;
  Blueprint.item(indexPath:)();
  if (__swift_getEnumTagSinglePayload(v16, 1, v12) == 1)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v23 = v41;
  v24 = v21;
  (*(v41 + 32))(v21, v16, v12);
  (*(v39 + 16))(v46, a1, v47);
  v25 = *(v6 + 104);
  *&v52 = *(v6 + 80);
  *(&v52 + 1) = v48;
  *&v53 = v37;
  *(&v53 + 1) = v25;
  v54 = v49;
  v55 = v38;
  type metadata accessor for BlueprintImpressionManager.StagedContext(0, &v52);
  v26 = v44;
  (*(v42 + 16))(v44, v50, v43);
  v27 = v40;
  (*(v23 + 16))(v40, v21, v12);
  v28 = (a2 + *(*a2 + 160));
  v29 = *v28;
  v30 = v28[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = a2 + *(*a2 + 168);
  v33 = *(v32 + 1);
  v34 = v32[16];
  v35 = *(v32 + 3);
  *&v52 = *v32;
  *(&v52 + 1) = v33;
  LOBYTE(v53) = v34;
  *(&v53 + 1) = v35;
  sub_1D8190DB4();
  v51 = sub_1D7EA4D60(v26, v27, v29, v30, Strong, &v52);
  swift_beginAccess();
  sub_1D7E2491C(&qword_1EDBBC6C0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  sub_1D8190E14();
  sub_1D8190E34();
  swift_endAccess();
  return (*(v23 + 8))(v24, v12);
}

void sub_1D7FBB2A8(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v36 = a1;
  v42 = a2;
  v11 = *v6;
  v41 = sub_1D818E754();
  v12 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v34 - v15;
  v16 = v11[15];
  v17 = v11[12];
  v37 = v17;
  v19 = type metadata accessor for BlueprintItem(0, v17, v16, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  v39 = v11[11];
  *&v23 = v39;
  *(&v23 + 1) = v17;
  v35 = v11[14];
  *&v24 = v35;
  *(&v24 + 1) = v16;
  v45[1] = v24;
  v45[0] = v23;
  v25 = type metadata accessor for Blueprint(0, v45);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - v27;
  LODWORD(v36) = *v36;
  v29 = v11[16];
  swift_beginAccess();
  (*(v26 + 16))(v28, v6 + v29, v25);
  v30 = *(*v6 + 136);
  swift_beginAccess();
  (*(v20 + 16))(v22, v6 + v30, v19);
  v31 = v38;
  (*(v12 + 16))(v38, v6 + *(*v6 + 144), v41);
  v32 = v40;
  sub_1D818E744();
  v33 = *v6;
  v44 = *(v6 + *(*v6 + 152));
  v43 = v36;
  sub_1D8035574(v28, v22, v31, v32, &v44, &v43, *(v6 + *(v33 + 160)), *(v6 + *(v33 + 160) + 8), v42, a3, a4, a5, a6, v39, v37, v35, v16);
  sub_1D8190DB4();
}

uint64_t sub_1D7FBB698()
{
  v1 = *(*v0 + 128);
  v10 = *(*v0 + 112);
  v11[0] = *(*v0 + 88);
  v9 = *(&v11[0] + 1);
  v11[1] = v10;
  v2 = type metadata accessor for Blueprint(0, v11);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 136);
  v5 = type metadata accessor for BlueprintItem(0, v9, *(&v10 + 1), v4);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(*v0 + 144);
  v7 = sub_1D818E754();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  MEMORY[0x1DA715E30](v0 + *(*v0 + 176));
  return v0;
}

uint64_t *sub_1D7FBB844(unsigned __int8 *a1)
{
  v36 = a1;
  v34 = *v1;
  v2 = v34;
  v3 = sub_1D818E754();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v34[15];
  v33 = v34 + 13;
  v6 = v34[12];
  v37 = type metadata accessor for BlueprintItem(0, v6, v5, v7);
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v33 - v9;
  v10 = v2[11];
  *&v11 = v10;
  *(&v11 + 1) = v6;
  v12 = v2[14];
  *&v13 = v12;
  *(&v13 + 1) = v5;
  v41 = v13;
  v40 = v11;
  v14 = type metadata accessor for Blueprint(0, &v40);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  LODWORD(v36) = *v36;
  *&v18 = v6;
  *(&v18 + 1) = *v33;
  *&v19 = v34[10];
  *(&v19 + 1) = v10;
  v41 = v18;
  v40 = v19;
  v42 = v12;
  v43 = v5;
  type metadata accessor for BlueprintImpressionManager.Context(0, &v40);
  v20 = v2[16];
  swift_beginAccess();
  (*(v15 + 16))(v17, v1 + v20, v14);
  v21 = *(*v1 + 136);
  swift_beginAccess();
  v22 = v35;
  (*(v8 + 16))(v35, v1 + v21, v37);
  v23 = v38;
  sub_1D818E744();
  v39 = v36;
  v24 = (v1 + *(*v1 + 144));
  v25 = *v24;
  v26 = v24[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = v1 + *(*v1 + 152);
  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  *&v40 = *v28;
  *(&v40 + 1) = v29;
  LOBYTE(v41) = v30;
  *(&v41 + 1) = v31;
  sub_1D8190DB4();
  return sub_1D7EA4200(v17, v22, v23, &v39, v25, v26, Strong, &v40);
}

char *BlueprintImpressionManager.deinit()
{
  v1 = *v0;
  sub_1D7E166A0((v0 + 24));

  OUTLINED_FUNCTION_12();
  v3 = *(v2 + 136);
  v4 = *(v1 + 80);
  v5 = OUTLINED_FUNCTION_107();
  type metadata accessor for BlueprintImpressionManager.Session(v5, v6, v7, v8);
  OUTLINED_FUNCTION_8();
  (*(v9 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_12();
  (*(*(v4 - 8) + 8))(&v0[*(v10 + 144)], v4);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();
  sub_1D7FBC648(&v0[*(v11 + 176)]);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintImpressionManager.__deallocating_deinit()
{
  BlueprintImpressionManager.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D7FBBF14(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintImpressionManager.isEnabled.modify(v2);
  return sub_1D7F4150C;
}

uint64_t BlueprintImpressionManager.description.getter()
{
  v1 = *v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D81921A4();
  v21 = 0;
  v22 = 0xE000000000000000;
  MEMORY[0x1DA713260](0xD000000000000028, 0x80000001D81CCB50);
  OUTLINED_FUNCTION_8_4((v0 + 5), v20);
  sub_1D818E994();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = OUTLINED_FUNCTION_89_1();
  v5 = OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_55_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_81_3();
  v11 = swift_getAssociatedConformanceWitness();
  sub_1D8190DB4();
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v17 = v3;
  v18 = AssociatedConformanceWitness;
  v19 = v11;
  type metadata accessor for BlueprintImpressionManager.Context(0, &v14);
  OUTLINED_FUNCTION_0_87();
  sub_1D7E2491C(v6, v7, MEMORY[0x1E6969C38]);
  v8 = sub_1D8190DB4();

  v14 = v8;
  OUTLINED_FUNCTION_107();
  sub_1D8190DA4();
  swift_getWitnessTable();
  sub_1D8192604();

  MEMORY[0x1DA713260](0xD000000000000014, 0x80000001D81CCB80);
  OUTLINED_FUNCTION_8_4((v0 + 7), v13);
  sub_1D8190DB4();
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v17 = v3;
  v18 = AssociatedConformanceWitness;
  v19 = v11;
  type metadata accessor for BlueprintImpressionManager.StagedContext(0, &v14);
  v9 = sub_1D8190DB4();

  v14 = v9;
  OUTLINED_FUNCTION_56_0();
  sub_1D8190DA4();
  swift_getWitnessTable();
  sub_1D8192604();

  MEMORY[0x1DA713260](10506, 0xE200000000000000);
  return v21;
}

void BlueprintImpressionManager.activeSession.getter()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = *v0;
  v5 = type metadata accessor for BlueprintImpressionManager.Session(0, *(*v0 + 80), *(*v0 + 88), v4);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  v11 = *(v3 + 136);
  OUTLINED_FUNCTION_8_4(v0 + v11, &v25);
  (*(v7 + 16))(v10, v0 + v11, v5);
  OUTLINED_FUNCTION_87_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for BlueprintImpressionActiveSession(0);
    v13 = v2;
    v14 = 1;
  }

  else
  {
    v15 = *v10;
    v16 = v10[1];
    sub_1D7E0D158(0);
    v18 = v17[12];
    v19 = *(v10 + v17[16]);
    v20 = *(v10 + v17[20]);
    v21 = type metadata accessor for BlueprintImpressionActiveSession(0);
    v22 = v21[5];
    sub_1D818E754();
    OUTLINED_FUNCTION_8();
    (*(v23 + 32))(&v2[v22], v10 + v18);
    *v2 = v15;
    *(v2 + 1) = v16;
    v2[v21[6]] = v19;
    *&v2[v21[7]] = v20;
    v13 = v2;
    v14 = 0;
    active = v21;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, active);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FBC4AC(uint64_t a1, uint64_t a2)
{
  sub_1D7E13630(0, &qword_1EDBB49B0, &qword_1EDBB49B8, &protocol descriptor for BlueprintLayoutViewStateProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7FBC53C(uint64_t a1)
{
  if (!qword_1EDBB33E0)
  {
    sub_1D818E994();
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB33E0);
    }
  }
}

void sub_1D7FBC5B4(uint64_t a1)
{
  if (!qword_1ECA0EBA0)
  {
    sub_1D818E994();
    sub_1D7E2491C(&qword_1EDBBC6C0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    v1 = sub_1D81916C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EBA0);
    }
  }
}

uint64_t sub_1D7FBC648(uint64_t a1)
{
  sub_1D7E13630(0, &qword_1EDBB49B0, &qword_1EDBB49B8, &protocol descriptor for BlueprintLayoutViewStateProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7FBC7F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 32))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FBC830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1D7FBC8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7FBC994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1D7FBCA18(void *__src)
{
  memcpy(__dst, __src, 0x191uLL);
  v5 = *&__dst[18];
  MaxY = 0.0;
  if (*(__dst[32] + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8) == 1)
  {
    [__dst[42] bounds];
    MaxY = CGRectGetMaxY(v38);
  }

  v7 = *&__dst[46] - MaxY;
  if (__dst[50])
  {
    v7 = 0.0;
  }

  v8 = MaxY + v7;
  v9 = sub_1D7FBCC6C(__dst, MaxY + v7);
  v10 = [__dst[41] contentOffset];
  if (v18 >= -v8)
  {
    if (*&__dst[44] > 0.0 && (__dst[45] & 1) != 0)
    {
      v24 = -(*&__dst[38] - v5);
      OUTLINED_FUNCTION_1_66(v10, v11, v12, v13, v14, v15, v16, v17, v35, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30], __dst[31], __dst[32], __dst[33], __dst[34], __dst[35], __dst[36], __dst[37], __dst[38], __dst[39], __dst[40], __dst[41], __dst[42]);
      OUTLINED_FUNCTION_0_88();
      if (0.0 - (v8 + v25) < v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0.0 - (v8 + v25);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_66(v10, v11, v12, v13, v14, v15, v16, v17, v35, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30], __dst[31], __dst[32], __dst[33], __dst[34], __dst[35], __dst[36], __dst[37], __dst[38], __dst[39], __dst[40], __dst[41], __dst[42]);
      OUTLINED_FUNCTION_0_88();
      v26 = 0.0 - (v8 + v27);
    }

    v41.origin.x = v5;
    v41.origin.y = v2;
    v41.size.width = v3;
    v41.size.height = v4;
    v42 = CGRectOffset(v41, 0.0, v26);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    [v1 setCenter_];
    [v1 setAlpha_];
  }

  else
  {
    OUTLINED_FUNCTION_1_66(v10, v11, v12, v13, v14, v15, v16, v17, v35, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30], __dst[31], __dst[32], __dst[33], __dst[34], __dst[35], __dst[36], __dst[37], __dst[38], __dst[39], __dst[40], __dst[41], __dst[42]);
    v19 = v39.origin.x;
    v20 = v39.origin.y;
    v21 = v39.size.width;
    v22 = v39.size.height;
    v23 = CGRectGetMidX(v39);
    v40.origin.x = v19;
    v40.origin.y = v20;
    v40.size.width = v21;
    v40.size.height = v22;
    [v1 setCenter_];
    [v1 setAlpha_];
  }

  v33 = __dst[43];
  [v1 alpha];
  [v33 setAlpha_];
  [v1 center];

  return [v33 setCenter_];
}

double sub_1D7FBCC6C(uint64_t a1, double a2)
{
  v4 = 0.0;
  if ((sub_1D8190B24() & 1) == 0 && (*(a1 + 400) & 1) == 0)
  {
    v5 = vabdd_f64(44.0, a2);
    if (a2 - v5 != 0.0)
    {
      v6 = fabs(a2 - v5);
      [*(a1 + 328) contentOffset];
      v8 = v5 + v7;
      v9 = fabs(v5 + v7);
      v10 = v8 < 0.0;
      v11 = 0.0;
      if (v10)
      {
        v11 = v9;
      }

      return 1.0 - v11 / v6;
    }
  }

  return v4;
}

double sub_1D7FBCD2C()
{
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_contentOffset);
  swift_beginAccess();
  return *v0;
}

void sub_1D7FBCD90(double a1, double a2)
{
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_contentOffset);
  swift_beginAccess();
  *v2 = a1;
  v2[1] = a2;
}

void PaddedShapeButton.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_contentOffset);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onTap;
  sub_1D7E40308(0, a2, a3, a4);
  v8 = v7;
  *(v4 + v6) = [objc_allocWithZone(v7) init];
  v9 = OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onMenuPresentation;
  *(v4 + v9) = [objc_allocWithZone(v8) init];
  *(v4 + OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor) = 0;
  OUTLINED_FUNCTION_3_54();
  __break(1u);
}

double sub_1D7FBCF38(double a1, double a2)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PaddedShapeButton();
  objc_msgSendSuper2(&v9, sel_sizeThatFits_, a1, a2);
  v7 = v6;
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_contentOffset);
  swift_beginAccess();
  return v7 + *v2 + *v2;
}

void sub_1D7FBD068(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor;
  if (!*&v2[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor] || (v16.receiver = v2, v16.super_class = type metadata accessor for PaddedShapeButton(), objc_msgSendSuper2(&v16, sel_isHighlighted) != (a1 & 1)))
  {
    v5 = type metadata accessor for PaddedShapeButton();
    v17.receiver = v2;
    v17.super_class = v5;
    objc_msgSendSuper2(&v17, sel_setHighlighted_, a1 & 1);
    if ((a1 & 1) == 0)
    {
      v14 = *&v2[v4];
      v13 = v14;
      if (!v14)
      {
        v13 = [v2 backgroundColor];
      }

      v15 = v14;
      [v2 setBackgroundColor_];
      goto LABEL_13;
    }

    v6 = [v2 backgroundColor];
    v7 = *&v2[v4];
    *&v2[v4] = v6;

    v8 = [v2 backgroundColor];
    if (v8)
    {
      v9 = v8;
      UIColor.getRGBA()(v18);

      if ((v20 & 1) == 0)
      {
        v10 = v19;
        v11 = [v2 backgroundColor];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 colorWithAlphaComponent_];
        }

        else
        {
          v13 = 0;
        }

        [v2 setBackgroundColor_];
LABEL_13:
      }
    }
  }
}

void sub_1D7FBD244(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PaddedShapeButton();
  objc_msgSendSuper2(&v8, sel_setEnabled_, a1 & 1);
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor];
    v4 = v3;
    if (!v3)
    {
      v4 = [v1 backgroundColor];
    }

    v5 = v3;
    [v1 setBackgroundColor_];
  }

  else
  {
    v6 = [v1 backgroundColor];
    v7 = *&v1[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor];
    *&v1[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor] = v6;

    if (qword_1ECA0C390 != -1)
    {
      swift_once();
    }

    [v1 setBackgroundColor_];
  }
}

id sub_1D7FBD414()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() fillColor];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {

    return 0;
  }

  return v4;
}

void sub_1D7FBD528(void *a1)
{
  v3 = [v1 layer];
  v4 = objc_opt_self();
  v5 = OUTLINED_FUNCTION_6_34(v4);
  if (a1)
  {
    v6 = [a1 CGColor];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setFillColor_];
}

id PillButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PillButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PillButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RoundedRectButton.__allocating_init(frame:cornerRadius:)()
{
  OUTLINED_FUNCTION_5_32();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_7_3();
  return RoundedRectButton.init(frame:cornerRadius:)();
}

id RoundedRectButton.init(frame:cornerRadius:)()
{
  OUTLINED_FUNCTION_5_32();
  *(v0 + OBJC_IVAR____TtC5TeaUI17RoundedRectButton_cornerRadius) = v2;
  v9 = type metadata accessor for RoundedRectButton();
  v3 = OUTLINED_FUNCTION_7_3();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v9);
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  return v6;
}

id _s5TeaUI10PillButtonC5frameACSo6CGRectV_tcfC_0()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id sub_1D7FBD8BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D7FBDB74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7E328A8(0, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

id sub_1D7FBDBF8@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 isCollapsed];
  *a1 = result ^ 1;
  return result;
}

id CardSplitViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CardSplitViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_preservedItems) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC5TeaUI23CardSplitViewController_eventManager;
  sub_1D7E362A4(0);
  swift_allocObject();
  *(v0 + v1) = sub_1D818EF74();
  sub_1D81923A4();
  __break(1u);
}

unint64_t sub_1D7FBDDE4(unint64_t result, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = result;
  if (result >> 62)
  {
    result = sub_1D81920A4();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v23 = v6 & 0xC000000000000001;
    v24 = v6;
    do
    {
      if (v23)
      {
        v9 = MEMORY[0x1DA714420](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v27 = v9;
      sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
      sub_1D7E0631C(0, qword_1EDBB0228, &protocol descriptor for CardSplitViewAutoObserver);
      v11 = v10;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(v25, v28);
        v13 = v29;
        v12 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        LOBYTE(v25[0]) = a3;
        (*(v12 + 24))(v25, v13, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      else
      {
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        OUTLINED_FUNCTION_1_67();
        sub_1D7E70D8C(v25, &unk_1EDBB0220, qword_1EDBB0228, &protocol descriptor for CardSplitViewAutoObserver, v14);
      }

      v15 = [v11 presentedViewController];
      if (v15)
      {
        v16 = v15;
        OUTLINED_FUNCTION_0_89();
        sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, v17);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D81A50A0;
        *(inited + 32) = v16;
        v19 = v16;
        a4(inited, a2);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v8;
      v20 = [v11 childViewControllers];
      v21 = sub_1D8191314();

      a4(v21, a2);

      v6 = v24;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_1D7FBE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong togglePrimaryViewVisibilityAnimated_];
  }
}

uint64_t sub_1D7FBE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1D7FBE180(_BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    LOBYTE(v6) = 0;
    goto LABEL_5;
  }

  v4 = Strong;
  v5 = [Strong displayMode];
  if (v5 < 4)
  {
    v6 = 0x100u >> (8 * v5);

LABEL_5:
    *a2 = v6;
    return;
  }

  sub_1D81923A4();
  __break(1u);
}

void sub_1D7FBE254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v8 = [Strong isCollapsed] ^ 1;
    v5 = sub_1D7FBE2F8(&v8);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 popViewControllerAnimated_];

      v4 = v7;
    }
  }
}

uint64_t sub_1D7FBE2F8(char *a1)
{
  v2 = *a1;
  v3 = [v1 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v4 = sub_1D8191314();

  if ((v2 & 1) == 0)
  {
    if (!sub_1D7E36AB8(v4))
    {

      return 0;
    }

    sub_1D7E33DD8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) == 0)
    {
      v7 = *(v4 + 32);
      goto LABEL_8;
    }

    v11 = 0;
LABEL_16:
    v8 = MEMORY[0x1DA714420](v11, v4);
    goto LABEL_9;
  }

  v5 = sub_1D7E36AB8(v4);

  if (v5 < 2)
  {
    return 0;
  }

  v6 = [v1 viewControllers];
  v4 = sub_1D8191314();

  sub_1D7E33DD8(1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v11 = 1;
    goto LABEL_16;
  }

  v7 = *(v4 + 40);
LABEL_8:
  v8 = v7;
LABEL_9:
  v9 = v8;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

void *sub_1D7FBE458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v13 = [result isCollapsed] ^ 1;
    v5 = sub_1D7FBE2F8(&v13);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 presentedViewController];
      if (!v7 || (v8 = v7, v9 = [v7 isBeingDismissed], v8, (v9 & 1) != 0))
      {
        v10 = [v6 viewControllers];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
        v11 = sub_1D8191314();

        v12 = sub_1D7E36AB8(v11);

        return (v12 > 1);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id CardSplitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CardSplitViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

uint64_t sub_1D7FBE754()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_commands);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = qword_1EDBB3708;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_8_7(&qword_1EDBB3708);
  }

  v5 = MEMORY[0x1E69E7CA8];
  (*(v2 + 144))(qword_1EDBB3710, MEMORY[0x1E69E7CA8] + 8, ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = *(v1 + 24);
  v7 = swift_getObjectType();
  v8 = qword_1EDBBC918;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    OUTLINED_FUNCTION_3_56(&qword_1EDBBC918);
  }

  (*(v6 + 144))(qword_1EDBB36F8, v5 + 8, v7, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7FBE870(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  v8 = a1;
  sub_1D7FBE754();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D7FBE958(void *a1)
{
  v3 = sub_1D818F5F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7FBFE84(a1, &v17);
  if (!v18)
  {
    sub_1D7E70D8C(&v17, &qword_1EDBB0C80, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable, sub_1D7E328A8);
    return 0;
  }

  sub_1D7E05450(&v17, v19);
  LOBYTE(v17) = [v1 isCollapsed] ^ 1;
  v7 = sub_1D7FBE2F8(&v17);
  if (!v7)
  {
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v16 = [v1 isCollapsed] ^ 1;
    (*(v10 + 16))(&v17, &v16, v9, v10);
    if ((v17 & 0xE0) != 0x20)
    {
      goto LABEL_10;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return 0;
  }

LABEL_10:
  sub_1D7E26264(0, &qword_1EDBB2CC0, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D819FAC0;
  sub_1D818F5E4();
  sub_1D818F5D4();
  *&v17 = v11;
  sub_1D7E343E4();
  sub_1D7E26264(0, &qword_1EDBB33C8, MEMORY[0x1E69E62F8]);
  sub_1D7E26188();
  sub_1D8192004();
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1D7E0E768(v19, &v17);
  v13 = swift_allocObject();
  sub_1D7E05450(&v17, v13 + 16);
  *(v13 + 56) = v12;
  *(v13 + 64) = a1;

  v14 = a1;
  sub_1D818EF44();

  (*(v4 + 8))(v6, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return 1;
}

uint64_t sub_1D7FBECEC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, void *))
{
  if (a5)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    v13 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v14 = a3;
    v15 = a4;
    v13 = a1;
  }

  v16 = a6(v13, a4);

  sub_1D7E70D8C(v18, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7E72050);
  return v16 & 1;
}

void __swiftcall CardSplitViewController.splitViewController(_:separateSecondaryFrom:)(UIViewController_optional *__return_ptr retstr, UISplitViewController *_, UIViewController *separateSecondaryFrom)
{
  v4 = v3;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_25();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = separateSecondaryFrom;
      v11 = [v9 viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
      v12 = sub_1D8191314();

      if (sub_1D7E36AB8(v12))
      {
        sub_1D7E33DD8(0, (v12 & 0xC000000000000001) == 0, v12);
        if ((v12 & 0xC000000000000001) != 0)
        {
          goto LABEL_35;
        }

        v13 = *(v12 + 32);
LABEL_6:
        v14 = v13;

        v15 = *(v4 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8);
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 8))(ObjectType, v15);
        if (v17)
        {
          v60 = v17;
          v61 = v9;
          v58 = v10;
          v9 = (*(v15 + 16))(ObjectType, v15);
          v59 = ObjectType;
          v18 = (*(v15 + 32))(ObjectType, v15);
          MEMORY[0x1EEE9AC00](v18);
          sub_1D7FBF5BC(v9, v18, sub_1D7FC1310);
          v12 = v19;

          v20 = 0;
          v21 = *(v12 + 16);
          v10 = MEMORY[0x1E69E7CC0];
LABEL_8:
          v22 = v12 + 16 + 40 * v20;
          while (v21 != v20)
          {
            if (v20 >= *(v12 + 16))
            {
              __break(1u);
LABEL_35:
              v13 = MEMORY[0x1DA714420](0, v12);
              goto LABEL_6;
            }

            ++v20;
            v23 = (v22 + 40);
            v24 = *(v22 + 16);
            v22 += 40;
            if (v24)
            {
              v54 = *(v23 - 2);
              v57 = *(v23 - 1);
              v25 = *v23;
              v26 = v23[1];
              v53 = v24;
              v55 = v26;
              v56 = v25;
              sub_1D7E38808(v25, v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D7EE5190();
                v10 = v29;
              }

              overrideTransitioningDelegate = v10->_overrideTransitioningDelegate;
              v9 = (overrideTransitioningDelegate + 1);
              if (overrideTransitioningDelegate >= v10->_view >> 1)
              {
                sub_1D7EE5190();
                v10 = v30;
              }

              v10->_overrideTransitioningDelegate = v9;
              v28 = v10 + 40 * overrideTransitioningDelegate;
              *(v28 + 4) = v53;
              *(v28 + 5) = v54;
              v28[48] = v57;
              *(v28 + 7) = v56;
              *(v28 + 8) = v55;
              goto LABEL_8;
            }
          }

          (*(v15 + 104))(v59, v15);
          v31 = v10->_overrideTransitioningDelegate;
          if (v31)
          {
            p_toolbarItems = &v10->_toolbarItems;
            do
            {
              v33 = *(p_toolbarItems - 16);
              v34 = *(p_toolbarItems - 1);
              v35 = *p_toolbarItems;
              v62 = *(p_toolbarItems - 2);
              v63 = v33;
              v64 = v34;
              v65 = v35;
              v36 = v62;
              sub_1D7E38808(v34, v35);
              sub_1D7FBF8D4(&v62, 1);

              sub_1D7E418F4(v34, v35);
              p_toolbarItems += 5;
              v31 = (v31 - 1);
            }

            while (v31);
          }

          v37 = objc_allocWithZone(type metadata accessor for CardNavigationController());
          v38 = v60;
          OUTLINED_FUNCTION_6_35();
          swift_unknownObjectRetain();
          v39 = CardNavigationController.init(rootViewController:commandCenter:)();
          v40 = [v61 childViewControllers];
          v41 = sub_1D8191314();

          v42 = sub_1D7E36AB8(v41);
          if (!v42)
          {
LABEL_30:

            OUTLINED_FUNCTION_0_89();
            sub_1D7E72050(0, v48, v47 + 8, v49);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1D81A50A0;
            *(v50 + 32) = v14;
            v51 = v14;
            v52 = sub_1D8191304();

            [v61 setViewControllers_];

            return;
          }

          v43 = v42;
          if (v42 >= 1)
          {
            for (i = 0; i != v43; ++i)
            {
              if ((v41 & 0xC000000000000001) != 0)
              {
                v45 = MEMORY[0x1DA714420](i, v41);
              }

              else
              {
                v45 = *(v41 + 8 * i + 32);
              }

              v46 = v45;
              if (v45 != v14)
              {
                [v39 pushViewController:v45 animated:0];
              }
            }

            goto LABEL_30;
          }

          __break(1u);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  }
}

double sub_1D7FBF350@<D0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = v5;
  ObjectType = swift_getObjectType();
  v9 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for CardSplitViewPanable);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v19 = v5;
    v13 = swift_getObjectType();
    v14 = *(v12 + 8);
    v15 = a1;

    v16 = v14(v13, v12);

    if (v16)
    {
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v19;
      a3[3] = sub_1D7FC14C4;
      a3[4] = v7;
      return result;
    }
  }

  else
  {
    v18 = a1;
  }

  a3[4] = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void sub_1D7FBF4A8(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = *&Strong[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
  v7 = *&Strong[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

  ObjectType = swift_getObjectType();
  v9 = (*(v6 + 16))(ObjectType, v6);

  sub_1D80D04C0(a2, v9);
  v11 = v10;
  LOBYTE(a2) = v12;

  if ((a2 & 1) == 0)
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *&v13[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
    v15 = *&v13[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

    v16 = swift_getObjectType();
    v17 = a3;
    CardContainerControllerType.setCard(at:to:animated:completion:)(v11, &v17, 0, 0, 0, v16, v14);
  }
}

void sub_1D7FBF5BC(unint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  v4 = a1;
  v5 = sub_1D7E36AB8(a1);
  v6 = v5;
  v7 = *(a2 + 16);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v43 = MEMORY[0x1E69E7CC0];
  sub_1D7F0904C(0, v8 & ~(v8 >> 63), 0);
  if (v6 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:

LABEL_47:
    __break(1u);
    return;
  }

  v10 = v43;
  v36 = v4 >> 62;
  v33 = v4;
  if (v8)
  {
    v11 = a2;
    v12 = 0;
    v13 = v4 & 0xFFFFFFFFFFFFFF8;
    v35 = v4 & 0xC000000000000001;
    v30 = v11;
    v32 = v11 + 32;
    while (1)
    {
      v9 = v36 ? sub_1D81920A4() : *(v13 + 16);
      if (v12 == v9)
      {
        goto LABEL_47;
      }

      if (v35)
      {
        v9 = MEMORY[0x1DA714420](v12, v4);
      }

      else
      {
        if (v12 >= *(v13 + 16))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v9 = *(v4 + 8 * v12 + 32);
      }

      if (v7 == v12)
      {
        goto LABEL_46;
      }

      v37 = v9;
      v39[0] = *(v32 + v12);
      if (!v9)
      {
        goto LABEL_47;
      }

      (a3)(&v40, v9, v39);

      v14 = v40;
      v15 = v41;
      v16 = v42;
      v43 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v41;
        v28 = v40;
        sub_1D7F0904C(v17 > 1, v18 + 1, 1);
        v15 = v27;
        v14 = v28;
        v10 = v43;
      }

      ++v12;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 40 * v18;
      *(v19 + 32) = v14;
      *(v19 + 48) = v15;
      *(v19 + 64) = v16;
      v4 = v33;
      if (v8 == v12)
      {
        a2 = v30;
        goto LABEL_22;
      }
    }
  }

  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  v35 = v4 & 0xC000000000000001;
LABEL_22:
  v20 = a2 + 32;
  while (1)
  {
    v9 = v36 ? sub_1D81920A4() : *(v13 + 16);
    if (v8 == v9)
    {
      break;
    }

    if (v35)
    {
      v9 = MEMORY[0x1DA714420](v8, v4);
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_42;
      }

      v9 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_41;
    }

    if (v7 == v8)
    {

      return;
    }

    if (v8 >= v7)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_44;
    }

    v38 = v9;
    v39[0] = *(v20 + v8);
    a3(&v40);

    v21 = v40;
    v22 = v41;
    v23 = v42;
    v43 = v10;
    v25 = *(v10 + 16);
    v24 = *(v10 + 24);
    if (v25 >= v24 >> 1)
    {
      v29 = v41;
      v31 = v40;
      sub_1D7F0904C(v24 > 1, v25 + 1, 1);
      v22 = v29;
      v21 = v31;
      v10 = v43;
    }

    *(v10 + 16) = v25 + 1;
    v26 = v10 + 40 * v25;
    *(v26 + 32) = v21;
    *(v26 + 48) = v22;
    *(v26 + 64) = v23;
    ++v8;
    v4 = v33;
  }
}

id sub_1D7FBF8D4(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (a2)
  {
    [*a1 willMoveToParentViewController_];
    result = [v4 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    [result removeFromSuperview];

    [v4 removeFromParentViewController];
  }

  v11 = OBJC_IVAR____TtC5TeaUI23CardSplitViewController_preservedItems;
  v12 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v12);
  sub_1D8190DB4();
  v13 = sub_1D7F8F158();

  if (!v13)
  {
    swift_beginAccess();
    v14 = v4;
    sub_1D7E38808(v7, v8);
    sub_1D7EE441C();
    v15 = *(*(v3 + v11) + 16);
    sub_1D7EE4648();
    v16 = *(v3 + v11);
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 40 * v15;
    *(v17 + 32) = v14;
    *(v17 + 40) = v5;
    *(v17 + 48) = v6;
    *(v17 + 56) = v7;
    *(v17 + 64) = v8;
    *(v3 + v11) = v16;
    return swift_endAccess();
  }

  return result;
}

id CardSplitViewController.show(_:sender:transitionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  if (*(a3 + 16))
  {
    if (v10 == 1)
    {
      v17 = OUTLINED_FUNCTION_55_0();
      v19 = sub_1D7FC1318(v17, v18, 1);
      v14 = v8(v19);
      v15 = v20;
    }

    else
    {
      if (v10 != 2)
      {
        return [v5 showViewController:a1 sender:{a2, a4}];
      }

      v11 = OUTLINED_FUNCTION_55_0();
      v13 = sub_1D7FC1318(v11, v12, 2);
      (v8)(&v37, v13);
      v14 = v37;
      v15 = v38;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_55_0();
    sub_1D7FC136C(v21, v22, 0);
    sub_1D8190DB4();
    v14 = v8;
    v15 = v9;
  }

  v23._countAndFlagsBits = v14;
  v23._object = v15;
  UIViewController.findSourceView(identifier:)(v16, v23);
  v25 = v24;

  if (v25)
  {
    v26 = objc_opt_self();
    OUTLINED_FUNCTION_0_8();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_8();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v8;
    *(v28 + 32) = v9;
    *(v28 + 40) = v10;
    *(v28 + 48) = v25;
    v41 = sub_1D7FC1358;
    v42 = v28;
    v37 = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1D7FBFE1C;
    v40 = &block_descriptor_26;
    v29 = _Block_copy(&v37);
    v30 = OUTLINED_FUNCTION_55_0();
    sub_1D7FC136C(v30, v31, v10);
    v32 = v25;

    v33 = [v26 zoomWithSourceViewProvider_];
    _Block_release(v29);
    [a1 _setPreferredTransition_];
  }

  v34 = OUTLINED_FUNCTION_55_0();
  a4 = sub_1D7FC1344(v34, v35, v10);
  return [v5 showViewController:a1 sender:{a2, a4}];
}

void *sub_1D7FBFD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, char a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v11 = Strong;
  if (a5)
  {
    if (a5 == 1)
    {
      a3 = a3();
      a4 = v13;
    }

    else
    {
      (a3)(v19);
      a3 = v19[0];
      a4 = v19[1];
    }
  }

  else
  {
    sub_1D8190DB4();
  }

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  UIViewController.findSourceView(identifier:)(v12, v14);
  v16 = v15;

  if (!v16)
  {
LABEL_8:
    v17 = a6;
    return a6;
  }

  return v16;
}

id sub_1D7FBFE1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1D7FBFE84(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D7E70D8C(&v12, &qword_1EDBB0C80, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable, sub_1D7E328A8);
LABEL_12:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  sub_1D7E0631C(0, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable);
  v4 = a1;
  if (swift_dynamicCast())
  {
    if (*(&v13 + 1))
    {
      sub_1D7E05450(&v12, a2);
      return;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  sub_1D7E70D8C(&v12, &qword_1EDBB0C80, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable, sub_1D7E328A8);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = v4;
  v8 = [v6 childViewControllers];
  v9 = sub_1D8191314();

  if (sub_1D7E36AB8(v9))
  {
    sub_1D7E33DD8(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA714420](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  sub_1D7FBFE84(v11, a2);
}

void sub_1D7FC0090(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong isCollapsed];

  v92 = v7 ^ 1;
  (*(v5 + 16))(v88, &v92, v4, v5);
  v8 = v88[0];
  switch(LOBYTE(v88[0]) >> 5)
  {
    case 1:
      v42 = swift_unknownObjectUnownedLoadStrong();
      v43 = swift_unknownObjectUnownedLoadStrong();
      v44 = [v43 &selRef_setVerticalOffset_ + 7];

      LOBYTE(v88[0]) = v44 ^ 1;
      v87 = sub_1D7FBE2F8(v88);

      if (!v87)
      {
        return;
      }

      if ((v8 & 1) == 0)
      {
        v52 = swift_unknownObjectUnownedLoadStrong();
        v53 = [v87 visibleViewController];
        v54 = sub_1D7FC0A10(v53, a3);

        if ((v54 & 1) == 0)
        {
          [v87 showViewController:a3 sender:0];
        }

LABEL_27:
        v51 = v87;
        goto LABEL_28;
      }

      v45 = [v87 viewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
      v46 = sub_1D8191314();

      if (sub_1D7E36AB8(v46))
      {
        sub_1D7E33DD8(0, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1DA714420](0, v46);
        }

        else
        {
          v47 = *(v46 + 32);
        }

        v86 = v47;
      }

      else
      {

        v86 = 0;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = [v55 topViewController];
        if (!v56)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v56 = a3;
      }

      v57 = *MEMORY[0x1E69DD930];
      v58 = v56;
      v59.n128_u64[0] = 1.0;
      static Accessibility.Notifications.blockNotification(_:forInterval:)(v57, v60, v61, v62, v63, v59, v64);
      v65 = swift_unknownObjectUnownedLoadStrong();
      v66 = sub_1D7FC0A10(v86, v58);

      if (v66)
      {
        v67 = [v87 viewControllers];
        v68 = sub_1D8191314();

        v69 = sub_1D7E36AB8(v68);

        if (v69 < 2)
        {

          goto LABEL_51;
        }

LABEL_43:
LABEL_51:
        v51 = v86;
        goto LABEL_28;
      }

      v70 = swift_unknownObjectUnownedLoadStrong();
      v71 = [v70 &selRef_setVerticalOffset_ + 7];

      LOBYTE(v88[0]) = v71 ^ 1;
      if (!sub_1D7FC0D00(v88))
      {
        [v87 dismissViewControllerAnimated:0 completion:0];
      }

      sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1D81A50A0;
      *(v72 + 32) = v58;
      v85 = v58;
      v73 = sub_1D8191304();

      [v87 setViewControllers_];

      if (v86)
      {
        ObjectType = swift_getObjectType();
        v75 = dynamic_cast_existential_1_conditional(v86, ObjectType, &protocol descriptor for CardSplitViewPanable);
        if (v75)
        {
          v77 = v75;
          v78 = v76;
          v79 = swift_getObjectType();
          v88[0] = v77;
          v80 = *(v78 + 8);
          v81 = v86;
          if (v80(v79, v78))
          {
            v82 = swift_unknownObjectUnownedLoadStrong();
            v88[0] = v77;
            v88[1] = v78;
            v89 = 8;
            v90 = 0;
            v91 = 0;
            v83 = v85;
            v84 = sub_1D8191CC4();

            sub_1D7FBF8D4(v88, (v84 & 1) == 0);
            sub_1D7E418F4(0, 0);
          }

          else
          {
          }

          return;
        }

        goto LABEL_27;
      }

      v51 = v85;
LABEL_28:

      return;
    case 2:
    case 3:
      v9 = [a3 presentationController];
      if (v9)
      {
        v10 = v9;
        [v9 ts:1 containerIgnoresDirectTouchEvents:?];
      }

      v11 = [objc_opt_self() defaultCenter];
      if (qword_1EDBB30A0 != -1)
      {
        swift_once();
      }

      v12 = sub_1D818E454();
      __swift_project_value_buffer(v12, qword_1EDBB30A8);
      v13 = sub_1D818E404();
      [v11 postNotification_];

      v14 = swift_unknownObjectUnownedLoadStrong();
      v15 = [v14 isCollapsed];

      v16 = swift_unknownObjectUnownedLoadStrong();
      LOBYTE(v88[0]) = (v8 & 1) != 0 && !v15;
      v48 = sub_1D7FBE2F8(v88);

      if (!v48)
      {
        return;
      }

      v87 = v48;
      v49 = UIViewController.topPresentedViewController.getter();

      v50 = v49;
      [v50 presentViewController:a3 animated:1 completion:0];

      goto LABEL_27;
    case 4:
      v17 = [a3 presentationController];
      if (v17)
      {
        v18 = v17;
        [v17 ts:1 containerIgnoresDirectTouchEvents:?];
      }

      v19 = [objc_opt_self() defaultCenter];
      if (qword_1EDBB30A0 != -1)
      {
        swift_once();
      }

      v20 = sub_1D818E454();
      __swift_project_value_buffer(v20, qword_1EDBB30A8);
      v21 = sub_1D818E404();
      [v19 postNotification_];

      v87 = swift_unknownObjectUnownedLoadStrong();
      [v87 presentViewController:a3 animated:1 completion:0];
      goto LABEL_27;
    default:
      v22 = swift_unknownObjectUnownedLoadStrong();
      v23 = swift_unknownObjectUnownedLoadStrong();
      v24 = *&v23[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
      v25 = *&v23[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

      v26 = swift_getObjectType();
      v27 = (*(v24 + 8))(v26, v24);

      LOBYTE(v25) = sub_1D7FC0A10(v27, a3);
      v28 = swift_unknownObjectUnownedLoadStrong();
      v29 = *&v28[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
      v30 = *&v28[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

      v31 = swift_getObjectType();
      if (v25)
      {
        (*(v29 + 40))(v88, v31, v29);

        switch(LOBYTE(v88[0]))
        {
          case 2:
          case 3:
          case 7:
            v32 = swift_unknownObjectUnownedLoadStrong();
            v33 = *&v32[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
            v34 = *&v32[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

            v35 = swift_getObjectType();
            v36 = swift_unknownObjectUnownedLoadStrong();
            v37 = *&v36[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController + 8];
            v38 = *&v36[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];

            v39 = swift_getObjectType();
            v40 = (*(v37 + 16))(v39, v37);

            v41 = sub_1D7E36AB8(v40);

            if (__OFSUB__(v41, 1))
            {
              __break(1u);
            }

            else
            {
              LOBYTE(v88[0]) = v8;
              CardContainerControllerType.setCard(at:to:animated:completion:)(v41 - 1, v88, 1, 0, 0, v35, v33);
            }

            break;
          default:
            return;
        }
      }

      else
      {
        LOBYTE(v88[0]) = v8;
        CardContainerControllerType.pushCard(_:to:animated:completion:)(a3, v88, 1, 0, 0, v31, v29);
      }

      return;
  }
}

uint64_t sub_1D7FC0A10(void *a1, void *a2)
{
  if (!a1 || (v25[0] = a1, sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), sub_1D7E0631C(0, &qword_1EDBBC530, MEMORY[0x1E69D6488]), v4 = a1, (swift_dynamicCast() & 1) == 0))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_23;
  }

  if (!*(&v23 + 1))
  {
LABEL_23:
    sub_1D7E70D8C(&v22, &qword_1EDBBC520, &qword_1EDBBC530, MEMORY[0x1E69D6488], sub_1D7E328A8);
LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  sub_1D7E05450(&v22, v25);
  if (!a2 || (v5 = a2, (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_27;
  }

  if (!*(&v20 + 1))
  {
LABEL_27:
    sub_1D7E70D8C(&v19, &qword_1EDBBC520, &qword_1EDBBC530, MEMORY[0x1E69D6488], sub_1D7E328A8);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    goto LABEL_24;
  }

  sub_1D7E05450(&v19, &v22);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  if (sub_1D818EF94() == 0x296C6C756E28 && v6 == 0xE600000000000000)
  {
    goto LABEL_29;
  }

  v8 = sub_1D8192634();

  if (v8)
  {
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  if (sub_1D818EF94() == 0x296C6C756E28 && v9 == 0xE600000000000000)
  {
LABEL_29:

    goto LABEL_30;
  }

  v11 = sub_1D8192634();

  if (v11)
  {
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(v25, v26);
  v12 = sub_1D818EF94();
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  if (v12 == sub_1D818EF94() && v14 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1D8192634();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v17 & 1;
}

BOOL sub_1D7FC0D00(char *a1)
{
  v1 = *a1;
  v8 = UIViewController.topPresentedViewController.getter();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  sub_1D7E0631C(0, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v8) = v1;
    (*(v3 + 16))(v6, &v8, v2, v3);
    v4 = (v6[0] & 0xE0) == 96;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7E70D8C(v6, &qword_1EDBB0C80, &qword_1EDBB0C88, &protocol descriptor for CardSplitViewPanable, sub_1D7E328A8);
    return 0;
  }

  return v4;
}

Swift::Void __swiftcall CardSplitViewController.toggleSplitViewFocus(to:)(TeaUI::CardSplitViewFocus to)
{
  v2 = *to;
  v3 = OUTLINED_FUNCTION_41_0();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
  v4 = sub_1D8191314();

  v5 = sub_1D7E36AB8(v4);

  if (v5 < 2)
  {
    return;
  }

  if (v2)
  {
    v6 = OUTLINED_FUNCTION_41_0();
    v7 = sub_1D8191314();

    sub_1D7E33DD8(1, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](1, v7);
    }

    else
    {
      v8 = *(v7 + 40);
    }

    v9 = v8;

    v14 = sub_1D808F510(v9);

    if (![v14 canBecomeFirstResponder])
    {
      goto LABEL_15;
    }

    if (([v14 isFirstResponder] & 1) == 0)
    {
      [v14 becomeFirstResponder];
    }

    v1[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_splitViewFocus] = 1;
    v10 = [v1 childViewControllers];
    v11 = sub_1D8191314();

    sub_1D7FBDDC8(v11, v1);
    goto LABEL_14;
  }

  v14 = sub_1D808F510(*&v1[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController]);
  if ([v14 canBecomeFirstResponder])
  {
    if (([v14 isFirstResponder] & 1) == 0)
    {
      [v14 becomeFirstResponder];
    }

    v1[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_splitViewFocus] = 0;
    v12 = [v1 childViewControllers];
    v13 = sub_1D8191314();

    sub_1D7FBDDAC(v13, v1);
LABEL_14:
  }

LABEL_15:
}

double CardSplitViewController.keyCommands.getter()
{
  if (([v0 isCollapsed] & 1) == 0)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3260, 0x1E69DCBA0);
    v2 = sub_1D7E3DCEC(9, 0xE100000000000000, 0, sel_toggleResponderPane);
    v3 = sub_1D7E3DCEC(9, 0xE100000000000000, 0x20000, sel_toggleResponderPane);
    OUTLINED_FUNCTION_0_89();
    sub_1D7E72050(0, v5, v4 + 8, v6);
    v7 = swift_allocObject();
    *&result = 2;
    *(v7 + 16) = xmmword_1D81A5090;
    *(v7 + 32) = v2;
    *(v7 + 40) = v3;
  }

  return result;
}

uint64_t sub_1D7FC12E0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

double sub_1D7FC1318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1D8190DB4();
  }

  return result;
}

double sub_1D7FC1344(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D7F2FBA8(a1, a2, a3);
  }

  return result;
}

double sub_1D7FC136C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D7FC1318(a1, a2, a3);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardSplitViewController.Event(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_1D7FC1458(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1D7F27C24(v5, v7);
}

uint64_t HighlightStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FC15A8()
{
  result = qword_1ECA0EC90;
  if (!qword_1ECA0EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EC90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HighlightStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id sub_1D7FC1788(uint64_t a1, SEL *a2, uint64_t *a3)
{
  result = [objc_opt_self() *a2];
  v5 = result;
  if (!result)
  {
    sub_1D8190F14();
    v5 = sub_1D8190EE4();
  }

  *a3 = v5;
  return result;
}

uint64_t BlueprintTraversalCollectionBuilder.__deallocating_deinit()
{
  BlueprintTraversalCollectionBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FC1970(uint64_t a1)
{
  sub_1D7FC19CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7FC19CC(uint64_t a1)
{
  if (!qword_1ECA0EC58)
  {
    sub_1D7EB952C();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EC58);
    }
  }
}

TeaUI::ScrollDirection __swiftcall ScrollDirection.init(horizontal:vertical:)(TeaUI::ScrollDirection::Horizontal horizontal, TeaUI::ScrollDirection::Vertical vertical)
{
  v3 = *vertical;
  *v2 = *horizontal;
  v2[1] = v3;
  result.horizontal = horizontal;
  return result;
}

TeaUI::ScrollDirection __swiftcall ScrollDirection.init(fromContentOffset:toContentOffset:)(CGPoint fromContentOffset, CGPoint toContentOffset)
{
  v3 = 2 * (toContentOffset.x >= fromContentOffset.x);
  if (fromContentOffset.x < toContentOffset.x)
  {
    v3 = 1;
  }

  v4 = 2 * (toContentOffset.y >= fromContentOffset.y);
  if (fromContentOffset.y < toContentOffset.y)
  {
    v4 = 1;
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

unint64_t sub_1D7FC1ACC()
{
  result = qword_1ECA0EC98;
  if (!qword_1ECA0EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EC98);
  }

  return result;
}

unint64_t sub_1D7FC1B24()
{
  result = qword_1ECA0ECA0;
  if (!qword_1ECA0ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0ECA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollDirection(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D7FC1CE8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t CoverView.Animation.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

char *sub_1D7FC1E74()
{
  sub_1D7E298B0(v0, &v53);
  v1 = 0;
  switch(v61)
  {
    case 1:
      v43 = v53;
      v21 = v57;
      v22 = v58;
      sub_1D7E05450(&v54, v50);
      v45 = v43;
      *&v46 = v21;
      *(&v46 + 1) = v22;
      sub_1D7E0E768(v50, v47);
      v23 = objc_allocWithZone(type metadata accessor for ErrorView());
      v1 = ErrorView.init(model:styler:)(&v45, v47);
      [v1 setAutoresizingMask_];
      goto LABEL_10;
    case 2:
      v24 = v59;
      v42 = v54;
      v44 = v53;
      sub_1D7E05450(&v55, v50);
      v45 = v44;
      v46 = v42;
      sub_1D7E0E768(v50, v47);
      v25 = objc_allocWithZone(type metadata accessor for ErrorView());
      v1 = ErrorView.init(model:styler:)(&v45, v47);
      [v1 setAutoresizingMask_];
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      v26 = OBJC_IVAR____TtC5TeaUI9ErrorView_errorPosition;
      swift_beginAccess();
      v1[v26] = v24;
      goto LABEL_6;
    case 3:
      sub_1D7E05450(&v53, v50);
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v10 = OUTLINED_FUNCTION_4_1();
      v12 = v11(v10);
      v13 = v51;
      v14 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v15 = (*(v14 + 16))(v13, v14);
      v16 = v51;
      v17 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v18 = (*(v17 + 24))(v16, v17);
      v19 = objc_allocWithZone(type metadata accessor for ActivityIndicatorLoadingView());
      v20 = ActivityIndicatorLoadingView.init(style:color:backgroundColor:activityText:)(v12, v15, v18, 0, 0);
      goto LABEL_9;
    case 4:
      v29 = *(&v55 + 1);
      v30 = v56;
      sub_1D7E05450(&v53, v50);
      v31 = v51;
      v32 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v33 = (*(v32 + 8))(v31, v32);
      v34 = v51;
      v35 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v36 = (*(v35 + 16))(v34, v35);
      v37 = v51;
      v38 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v39 = (*(v38 + 24))(v37, v38);
      v40 = objc_allocWithZone(type metadata accessor for ActivityIndicatorLoadingView());
      v20 = ActivityIndicatorLoadingView.init(style:color:backgroundColor:activityText:)(v33, v36, v39, v29, v30);
LABEL_9:
      v1 = v20;
      [v1 setAutoresizingMask_];
      ActivityIndicatorLoadingView.startAnimating()();

      goto LABEL_10;
    case 5:
      return v53;
    case 6:
      sub_1D7E05450(&v53, v50);
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v27 = OUTLINED_FUNCTION_4_1();
      v1 = v28(v27);
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      break;
    case 7:
      return v1;
    default:
      v2 = *(&v53 + 1);
      v3 = v53;
      v4 = v54;
      v5 = v55;
      v6 = v60;
      sub_1D7E05450((&v55 + 8), v50);
      v47[0] = v3;
      v47[1] = v2;
      v48 = v4;
      v49 = v5;
      sub_1D7E0E768(v50, &v45);
      v7 = objc_allocWithZone(type metadata accessor for EmptyStateView());
      v8 = v5;
      sub_1D8190DB4();
      sub_1D8190DB4();
      v1 = EmptyStateView.init(model:styler:)(v47, &v45);
      [v1 setAutoresizingMask_];

      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      v9 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
      swift_beginAccess();
      v1[v9] = v6;
LABEL_6:

      break;
  }

  return v1;
}

Swift::Void __swiftcall CoverView.layout(with:)(TeaUI::CoverViewOptions with)
{
  v2 = *with.traitCollection.super.isa;
  v3 = *(with.traitCollection.super.isa + 1);
  v4 = *(with.traitCollection.super.isa + 2);
  sub_1D7E298B0(v1, &v16);
  switch(v19[41])
  {
    case 1:

      v6 = &v17;
      goto LABEL_8;
    case 2:

      v6 = &v18;
      goto LABEL_8;
    case 3:
      goto LABEL_7;
    case 4:

LABEL_7:
      v6 = &v16;
      goto LABEL_8;
    case 5:
      sub_1D7E298F0(&v16);
      return;
    case 6:
      sub_1D7E05450(&v16, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = v14;
      v10 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v11 = (*(v10 + 8))(v9, v10);
      v12[0] = v2;
      v12[1] = v3;
      v12[2] = v4;
      (*(v8 + 16))(v11, v12, v7, v8);

      v6 = v13;
      goto LABEL_8;
    case 7:
      return;
    default:
      v5 = v18;

      v6 = v19;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return;
  }
}

unint64_t sub_1D7FC2448()
{
  result = qword_1ECA0ECA8;
  if (!qword_1ECA0ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0ECA8);
  }

  return result;
}

uint64_t sub_1D7FC249C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 82))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 81);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7FC24D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7FC252C(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    v2 = a2 - 7;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 81) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CoverView.Animation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D7FC2648()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI18CoverContainerView_view);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for KeyboardAwareView))
  {
    v4 = v3;
    v5 = swift_getObjectType();
    v6 = v0 + OBJC_IVAR____TtC5TeaUI18CoverContainerView_keyboardInfo;
    swift_beginAccess();
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v9 = *(v6 + 16);
    v12[0] = *v6;
    v12[1] = v9;
    v13 = v8;
    v14 = v7;
    v10 = *(v4 + 16);
    swift_unknownObjectRetain();
    v11 = v1;
    v10(v12, v5, v4);
  }
}

double sub_1D7FC2724@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI18CoverContainerView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  swift_unknownObjectRetain();
  return result;
}

void sub_1D7FC2780(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + OBJC_IVAR____TtC5TeaUI18CoverContainerView_keyboardInfo;
  swift_beginAccess();
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v6;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  swift_unknownObjectRelease();
  sub_1D7FC2648();
}

id sub_1D7FC27F4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC5TeaUI18CoverContainerView_keyboardInfo];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *&v1[OBJC_IVAR____TtC5TeaUI18CoverContainerView_view] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setInsetsLayoutMarginsFromSafeArea_];
  v7 = [v5 backgroundColor];
  [v6 setBackgroundColor_];

  [v6 addSubview_];
  return v6;
}

void sub_1D7FC28F4()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI18CoverContainerView_keyboardInfo);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7FC2980()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI18CoverContainerView_view];
  [v0 safeAreaInsets];
  v3 = v2;
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 safeAreaInsets];
  v6 = Width - v5;
  [v0 bounds];
  return [v1 setFrame_];
}

void (*sub_1D7FC2B4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D7FC2BB0;
}

void sub_1D7FC2BB0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D7FC2648();
  }
}

id sub_1D7FC2BE4(void *a1, uint64_t a2, char a3)
{
  v11[3] = swift_getObjectType();
  v11[0] = v3;
  if (a3)
  {
    objc_allocWithZone(MEMORY[0x1E69DCC48]);
    v7 = v3;
    v8 = sub_1D7FB6EA8(v11, sel_handleLongPressWithRecognizer_);
    [v8 setDelegate_];
    [a1 addGestureRecognizer_];
  }

  else
  {
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v9 = v3;
    v8 = sub_1D7E40E74(v11, sel_handleAction);
    [v8 setNumberOfTapsRequired_];
    [a1 addGestureRecognizer_];
  }

  return v8;
}

id static TappableLabel.tappableLabel()()
{
  v1 = [objc_allocWithZone(v0) initWithFrame_];
  [v1 setUserInteractionEnabled_];

  return v1;
}

id TappableLabel.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id TappableLabel.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI13TappableLabel_onTap;
  sub_1D7E40308(0, v3, v4, v5);
  *(v0 + v2) = [objc_allocWithZone(v6) init];
  v7 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
}

id TappableLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TappableLabel.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI13TappableLabel_onTap;
  sub_1D7E40308(0, v5, v6, v7);
  *&v1[v4] = [objc_allocWithZone(v8) init];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id TappableLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TappableLabel.prepareForReuse()()
{
  v0 = sub_1D7F293FC();
}

uint64_t (*TappableLabel.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = sub_1D7FC3208(v1);
  a1[1] = v3;
  return sub_1D7F3CB0C;
}

uint64_t sub_1D7FC3208(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

id SettingsNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

char *SettingsViewController.__allocating_init(layout:actionHandler:)(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_18_0());
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_27_10(v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_32_6();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

id SettingsNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id SettingsNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v6 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v6);
}

id SettingsNavigationController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id SettingsNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id SettingsNavigationController.init(coder:)()
{
  OUTLINED_FUNCTION_18_0();
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, v1);

  if (v2)
  {
  }

  return v2;
}

char *SettingsViewController.init(layout:actionHandler:)(uint64_t a1, void *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_27_10(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_32_6();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id SettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SettingsViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_akeyboardWillChangeFrame);
  *v2 = sub_1D7FC409C;
  v2[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall SettingsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = sub_1D7FC8240([v0 navigationItem]);
  if (!v4)
  {
    v3 = 0x73676E6974746553;
    v4 = 0xE800000000000000;
  }

  sub_1D7FC82B0(v3, v4, v2, &selRef_setTitle_);

  v5 = *&v0[OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView];
  type metadata accessor for TextFieldTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = OUTLINED_FUNCTION_14_2();
  [v5 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  type metadata accessor for SwitchTableViewCell();
  swift_getObjCClassFromMetadata();
  v8 = OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_8_25(v8);

  type metadata accessor for StepperTableViewCell();
  swift_getObjCClassFromMetadata();
  v9 = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_8_25(v9);

  type metadata accessor for SliderTableViewCell();
  swift_getObjCClassFromMetadata();
  v10 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_8_25(v10);

  sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028);
  swift_getObjCClassFromMetadata();
  v11 = sub_1D8190EE4();
  OUTLINED_FUNCTION_8_25(v11);

  v12 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_8_25(v12);

  v13 = OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_8_25(v13);

  type metadata accessor for OptionTableViewCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = OUTLINED_FUNCTION_29_7();
  [v5 registerClass:v14 forCellReuseIdentifier:v15];

  v16 = OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_8_25(v16);

  v17 = [v0 view];
  if (v17)
  {
    v18 = v17;
    [v17 addSubview_];

    v19 = [v0 navigationItem];
    v23[3] = ObjectType;
    v23[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v20 = v0;
    v21 = sub_1D7FC8078(0, v23, sel_doDone);
    [v19 setRightBarButtonItem_];

    v22 = [objc_opt_self() defaultCenter];
    [v22 addObserver:v20 selector:sel_keyboardWillChangeFrameWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SettingsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  [*&v1[OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView] reloadData];
}

Swift::Void __swiftcall SettingsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  [v1 becomeFirstResponder];
  [v1 resignFirstResponder];
}

Swift::Void __swiftcall SettingsViewController.viewDidLayoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];

    v3 = OUTLINED_FUNCTION_6_36();
    [v4 v5];
  }

  else
  {
    __break(1u);
  }
}

double sub_1D7FC3E70()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v1);
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  (*(v2 + 24))(v0, sub_1D7FC8B08, v3, v1, v2);

  return result;
}

void sub_1D7FC409C(uint64_t a1, void *a2)
{
  if (sub_1D818E444())
  {
    v25 = sub_1D8190F14();
    sub_1D8192124();
    sub_1D7EDF46C();

    sub_1D7F060D8(v26);
    if (v28)
    {
      sub_1D7E0A1A8(0, &unk_1EDBAE440, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [a2 contentInset];
        [v25 CGRectValue];
        Height = CGRectGetHeight(v30);
        v4 = [a2 safeAreaInsets];
        OUTLINED_FUNCTION_45_7(v6, v7, Height - v5, v4, sel_setContentInset_);
        [a2 verticalScrollIndicatorInsets];
        [v25 CGRectValue];
        v8 = CGRectGetHeight(v31);
        v9 = [a2 safeAreaInsets];
        OUTLINED_FUNCTION_45_7(v11, v12, v8 - v10, v9, sel_setVerticalScrollIndicatorInsets_);

        return;
      }
    }

    else
    {
      sub_1D7FC8B20(v27, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7E72050);
    }

    v19 = OUTLINED_FUNCTION_6_36();
    [v20 v21];
    v22 = OUTLINED_FUNCTION_6_36();
    [v23 v24];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6_36();
    [v14 v15];
    v18 = OUTLINED_FUNCTION_6_36();

    [v16 v17];
  }
}

id sub_1D7FC42FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_1D8190EE4();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

unint64_t SettingsViewController.tableView(_:shouldHighlightRowAt:)()
{
  v1 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout);
  result = sub_1D818E974();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v8 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v1);
  v10 = sub_1D818EBC4();
  (*(v3 + 8))(v7, v1);
  result = sub_1D818E964();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v10 + 16))
  {
    sub_1D7E0E768(v10 + 40 * result + 32, v12);

    OUTLINED_FUNCTION_141(v12, v12[3]);
    OUTLINED_FUNCTION_31();
    v11 = sub_1D818EC94();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return v11 & 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t SettingsViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D818EB64();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v8 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = *&v1[OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout];
  result = sub_1D818E974();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (result >= *(v15 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(v10 + 16))(v14, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v8);
  v17 = sub_1D818EBC4();
  (*(v10 + 8))(v14, v8);
  result = sub_1D818E964();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result < *(v17 + 16))
  {
    sub_1D7E0E768(v17 + 40 * result + 32, v111);

    __swift_project_boxed_opaque_existential_1(v111, v112);
    sub_1D818EC84();
    v18 = OUTLINED_FUNCTION_111();
    v20 = v19(v18);
    if (v20 == *MEMORY[0x1E69D6DE8])
    {
      v21 = OUTLINED_FUNCTION_10_28();
      v22(v21);
      v23 = *v7;
      v24 = v7[3];

      v24(1);
      v25 = *&v1[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24];
      v26 = *&v1[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 32];
      OUTLINED_FUNCTION_141(&v1[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v25);
      (*(v26 + 16))(v23, v25, v26);

      v27 = a1;
      [a1 reloadData];

      goto LABEL_14;
    }

    v28 = v20;
    if (v20 == *MEMORY[0x1E69D6DC8])
    {
      v29 = OUTLINED_FUNCTION_10_28();
      v30(v29);
      sub_1D7E0E768(&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v110);
      v31 = objc_allocWithZone(ObjectType);
      v32 = OUTLINED_FUNCTION_23_8();
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      OUTLINED_FUNCTION_2();
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_15();
      v36 = OUTLINED_FUNCTION_26_8(v35);
      v37(v36);
      v38 = OUTLINED_FUNCTION_33_8();
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v39 = v38;
      v40 = OUTLINED_FUNCTION_44_6();
      sub_1D7FC82B0(v40, v41, v31, &selRef_setTitle_);

      v42 = [v2 navigationController];
    }

    else
    {
      if (v20 != *MEMORY[0x1E69D6DF0])
      {
        if (v20 == *MEMORY[0x1E69D6DD0])
        {
          v58 = OUTLINED_FUNCTION_10_28();
          v60.n128_f64[0] = v59(v58);
          sub_1D7FC8670(0, v60);
          v62 = *(v7 + *(v61 + 48));
          (*(v7 + *(v61 + 64)))();
          v63 = &v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler];
          v64 = *&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24];
          v65 = *&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 32];
          OUTLINED_FUNCTION_141(&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v64);
          (*(v65 + 16))(v62, v64, v65);

          v27 = a1;
          [a1 reloadData];
          v66 = *(v63 + 3);
          v67 = *(v63 + 4);
          OUTLINED_FUNCTION_141(v63, v66);
          (*(v67 + 24))(v2, nullsub_1, 0, v66, v67);
        }

        else
        {
          if (v20 != *MEMORY[0x1E69D6DC0])
          {
            if (v20 == *MEMORY[0x1E69D6DB8])
            {
              v89 = OUTLINED_FUNCTION_10_28();
              v90(v89);
              v92 = *v7;
              v91 = v7[1];
              v93 = v7[2];
              v94 = v7[3];
              OUTLINED_FUNCTION_0_8();
              v95 = swift_allocObject();
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_21_0();
              v96 = swift_allocObject();
              v96[2] = v93;
              v96[3] = v94;
              v96[4] = v95;
              v96[5] = v91;
              v97 = *&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_akeyboardWillChangeFrame];
              v98 = *&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_akeyboardWillChangeFrame + 8];
              objc_allocWithZone(type metadata accessor for StringArrayViewController());

              v99 = sub_1D806B860(v92, v97, v98, sub_1D7FC84E4, v96);
              OUTLINED_FUNCTION_141(v111, v112);
              v100 = sub_1D818EC74();
              sub_1D7FC82B0(v100, v101, v99, &selRef_setTitle_);
              v102 = [v2 navigationController];
              if (v102)
              {
                v103 = v102;
                [v102 pushViewController:v99 animated:1];
              }

              v27 = a1;
            }

            else
            {
              v104 = *MEMORY[0x1E69D6DB0];
              v105 = OUTLINED_FUNCTION_111();
              v106(v105);
              v27 = a1;
              if (v28 != v104)
              {
                return __swift_destroy_boxed_opaque_existential_1Tm(v111);
              }
            }

LABEL_14:
            v57 = sub_1D818E8E4();
            [v27 deselectRowAtIndexPath:v57 animated:1];

            return __swift_destroy_boxed_opaque_existential_1Tm(v111);
          }

          v68 = OUTLINED_FUNCTION_10_28();
          v69(v68);
          sub_1D7FC84F0(0);
          v71 = (v7 + v70[12]);
          v107 = v71[1];
          v108 = *v71;
          v72 = (v7 + v70[16]);
          v73 = *v72;
          v74 = v72[1];
          v75 = (v7 + v70[20]);
          v77 = *v75;
          v76 = v75[1];
          v78 = *(v7 + v70[24]);
          v79 = (v7 + v70[28]);
          v81 = *v79;
          v80 = v79[1];
          sub_1D7E0A1A8(0, &qword_1ECA0ED08, 0x1E69DC650);
          v82 = sub_1D7FC5088(v73, v74, v77, v76, 1);
          sub_1D7E0A1A8(0, &qword_1ECA0ED10, 0x1E69DC648);
          OUTLINED_FUNCTION_0_8();
          v83 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v84 = swift_allocObject();
          v84[2] = v83;
          v84[3] = v81;
          v84[4] = v80;
          v84[5] = v78;
          v84[6] = a1;

          v85 = a1;
          v86 = sub_1D7FC52F8(v108, v107, 2, sub_1D7FC8660, v84);
          [v82 addAction_];

          v87 = sub_1D7FC52F8(0x6C65636E6143, 0xE600000000000000, 1, 0, 0);
          v27 = a1;
          [v82 addAction_];

          [v2 presentViewController:v82 animated:1 completion:0];
        }

        sub_1D818EB54();
        OUTLINED_FUNCTION_4_3();
        (*(v88 + 8))(v7);
        goto LABEL_14;
      }

      v43 = OUTLINED_FUNCTION_10_28();
      v44(v43);

      sub_1D7E0E768(&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v110);
      v31 = objc_allocWithZone(ObjectType);
      v45 = OUTLINED_FUNCTION_23_8();
      __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
      OUTLINED_FUNCTION_2();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_15();
      v49 = OUTLINED_FUNCTION_26_8(v48);
      v50(v49);
      v51 = OUTLINED_FUNCTION_33_8();
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v52 = v51;
      v53 = OUTLINED_FUNCTION_44_6();
      sub_1D7FC82B0(v53, v54, v31, &selRef_setTitle_);

      v42 = [v2 navigationController];
    }

    v55 = v42;
    if (v55)
    {
      v56 = v55;
      [v55 pushViewController:v31 animated:1];
    }

    v27 = a1;
    goto LABEL_14;
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_1D7FC5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1D8190EE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_15_5();
  v8 = sub_1D8190EE4();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

void sub_1D7FC513C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    a3();
    v11 = &v10[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler];
    v12 = *&v10[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24];
    v13 = *&v10[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler], v12);
    (*(v13 + 16))(a5, v12, v13);
    v14 = *(v11 + 3);
    v15 = *(v11 + 4);
    __swift_project_boxed_opaque_existential_1(v11, v14);
    sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D81A50A0;
    sub_1D818EAC4();
    *(v16 + 32) = sub_1D818EB14();
    (*(v15 + 16))(v16, v14, v15);

    [a6 reloadData];
    v17 = *(v11 + 3);
    v18 = *(v11 + 4);
    __swift_project_boxed_opaque_existential_1(v11, v17);
    (*(v18 + 24))(v10, nullsub_1, 0, v17, v18);
  }
}

uint64_t sub_1D7FC52F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1D8190EE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D7F845F8;
  v13[3] = &block_descriptor_27;
  v9 = _Block_copy(v13);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  v11 = OUTLINED_FUNCTION_47();
  _Block_release(v11);

  return a3;
}

void sub_1D7FC53FC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler);
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v10 + 16))(a5, v9, v10);
  }
}

Swift::Int __swiftcall SettingsViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v4 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  if (numberOfRowsInSection < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout);
    if (*(v12 + 16) > numberOfRowsInSection)
    {
      (*(v6 + 16))(v11, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * numberOfRowsInSection, v4);
      v13 = sub_1D818EBC4();
      (*(v6 + 8))(v11, v4);
      v14 = *(v13 + 16);

      return v14;
    }
  }

  __break(1u);
  return result;
}

char *SettingsViewController.tableView(_:cellForRowAt:)(void *a1, void *a2)
{
  v287 = a1;
  sub_1D7FC872C();
  v281 = v4;
  OUTLINED_FUNCTION_9();
  v283 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v280 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v282 = &v276 - v9;
  *&v284 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D818EB64();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = (v21 - v20);
  v277 = sub_1D818EB54();
  OUTLINED_FUNCTION_9();
  v279 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v278 = v26 - v25;
  v289 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v288 = v31 - v30;
  v285 = v2;
  v32 = *&v2[OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout];
  v290 = a2;
  v33 = sub_1D818E974();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_137;
  }

  if (v33 >= *(v32 + 16))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  (*(v28 + 16))(v288, v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33, v289);
  v34 = sub_1D818EBC4();
  v33 = sub_1D818E964();
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v33 >= *(v34 + 16))
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v286 = v28;
  sub_1D7E0E768(v34 + 40 * v33 + 32, v294);

  v35 = OUTLINED_FUNCTION_23_8();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  sub_1D818EC84();
  LODWORD(v33) = (*(v18 + 88))(v22, v16);
  if (v33 == *MEMORY[0x1E69D6DE0])
  {
    v37 = OUTLINED_FUNCTION_7_31();
    v38(v37);
    v39 = *v22;
    v283 = *(v22 + 1);
    v282 = *(v22 + 1);
    v40 = OUTLINED_FUNCTION_43_7();
    v41 = sub_1D818E8E4();
    v42 = OUTLINED_FUNCTION_31_7(v41, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    v43 = type metadata accessor for SwitchTableViewCell();
    v44 = OUTLINED_FUNCTION_16_18(v42, v43);
    v281 = v42;
    [v44 setSelectionStyle_];
    v45 = OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl;
    [*&v44[OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl] setOn_];
    v46 = *&v44[v45];
    v47 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_141(v47, v48);
    v49 = v46;
    [v49 setEnabled_];

    v50 = v44;
    v51 = [v44 textLabel];
    if (v51)
    {
      v52 = v51;
      v53 = OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_141(v53, v54);
      v55 = sub_1D818EC74();
      sub_1D7FC82B0(v55, v56, v52, &selRef_setText_);
    }

    v57 = [v44 textLabel];
    v58 = v287;
    if (v57)
    {
      v59 = v57;
      v60 = OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_141(v60, v61);
      if (sub_1D818EC94())
      {
        v62 = [objc_opt_self() labelColor];
      }

      else
      {
        if (qword_1ECA0C390 != -1)
        {
          OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
        }

        v62 = qword_1ECA108B8;
      }

      v91 = v62;
      [v59 setTextColor_];
    }

    (*(v286 + 8))(v288, v289);
    v92 = v284;
    (*(v11 + 16))(&v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v290, v284);
    v93 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v94 = (v13 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    *(v95 + 16) = v282;
    *(v95 + 32) = v58;
    (*(v11 + 32))(v95 + v93, v15, v92);
    v96 = v285;
    *(v95 + v94) = v285;
    *(v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8)) = v283;
    v97 = &v50[OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_onChange];
    *v97 = sub_1D7FC8A2C;
    v97[1] = v95;
    v98 = v58;
    v99 = v96;
    v100 = OUTLINED_FUNCTION_31();
    sub_1D7E0E10C(v100, v101);

    goto LABEL_97;
  }

  if (v33 == *MEMORY[0x1E69D6DE8])
  {
    v63 = OUTLINED_FUNCTION_7_31();
    v64(v63);
    v65 = *(v22 + 1);

    v66 = OUTLINED_FUNCTION_41_5();
    v67 = sub_1D818E8E4();
    v68 = OUTLINED_FUNCTION_31_7(v67, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    [v68 setSelectionStyle_];
    if ([v68 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      v69 = sub_1D818EC74();
      sub_1D7FC82B0(v69, v70, v66, &selRef_setText_);
    }

    OUTLINED_FUNCTION_5_33();
    v50 = v68;
    OUTLINED_FUNCTION_15_5();
    [v50 setUserInteractionEnabled_];

    if (v65())
    {
      v71 = 3;
    }

    else
    {
      v71 = 0;
    }

    [v50 setAccessoryType_];

    goto LABEL_18;
  }

  if (v33 == *MEMORY[0x1E69D6E08])
  {
    v74 = OUTLINED_FUNCTION_7_31();
    v75(v74);
    v76 = *(v22 + 1);
    v77 = *(v22 + 2);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_14_2();
    v78 = OUTLINED_FUNCTION_35_9();
    v79 = OUTLINED_FUNCTION_20_12(v78, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    v80 = type metadata accessor for TextFieldTableViewCell();
    v50 = OUTLINED_FUNCTION_16_18(v79, v80);
    v81 = v79;
    OUTLINED_FUNCTION_34_7(v81, sel_setSelectionStyle_);
    if ([v50 ts_editableTextField])
    {
      v82 = OUTLINED_FUNCTION_47();
      sub_1D7FC831C(v82, v76, v78);

      v83 = [v50 ts_editableTextField];
      if (v83)
      {
        v84 = v83;

        v85 = v295;
        OUTLINED_FUNCTION_9_18();
        [v84 setEnabled_];

        v86 = [v50 textLabel];
        if (v86)
        {
          v85 = v86;
          OUTLINED_FUNCTION_5_33();
          OUTLINED_FUNCTION_15_5();
          v87 = sub_1D818EC74();
          sub_1D7FC82B0(v87, v88, v85, &selRef_setText_);
        }

        v89 = [v50 textLabel];
        if (v89)
        {
          v85 = v89;
          OUTLINED_FUNCTION_5_33();
          OUTLINED_FUNCTION_15_5();
          if (sub_1D818EC94())
          {
            v90 = [objc_opt_self() labelColor];
          }

          else
          {
            if (qword_1ECA0C390 != -1)
            {
              OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
            }

            v90 = qword_1ECA108B8;
          }

          v78 = v90;
          [v85 setTextColor_];
        }

        v135 = OUTLINED_FUNCTION_37_8();
        v136(v135);
        OUTLINED_FUNCTION_21_0();
        v137 = swift_allocObject();
        OUTLINED_FUNCTION_11_25(v137);
        *(v138 + 32) = v139;
        *(v138 + 40) = v77;
        OUTLINED_FUNCTION_38_7();
        v143 = sub_1D7FC8844;
        goto LABEL_96;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_146;
  }

  if (v33 == *MEMORY[0x1E69D6DA8])
  {
    v102 = OUTLINED_FUNCTION_7_31();
    v103(v102);
    v104 = *v22;
    v85 = *(v22 + 1);
    v105 = *(v22 + 2);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_14_2();
    v106 = OUTLINED_FUNCTION_35_9();
    v107 = OUTLINED_FUNCTION_20_12(v106, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    v108 = type metadata accessor for TextFieldTableViewCell();
    v50 = OUTLINED_FUNCTION_16_18(v107, v108);
    v81 = v107;
    OUTLINED_FUNCTION_34_7(v81, sel_setSelectionStyle_);
    if (!OUTLINED_FUNCTION_48_6())
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v109 = OUTLINED_FUNCTION_47();
    sub_1D7FC831C(v109, v85, v106);

    if (!OUTLINED_FUNCTION_48_6())
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_1_68();
    [v104 setEnabled_];

    if ([v50 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      v110 = sub_1D818EC74();
      sub_1D7FC82B0(v110, v111, v104, &selRef_setText_);
    }

    if ([v50 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      if (sub_1D818EC94())
      {
        v112 = [objc_opt_self() labelColor];
      }

      else
      {
        if (qword_1ECA0C390 != -1)
        {
          OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
        }

        v112 = qword_1ECA108B8;
      }

      v171 = v112;
      OUTLINED_FUNCTION_47_5(v112, sel_setTextColor_);
    }

    v172 = OUTLINED_FUNCTION_48_6();
    if (!v172)
    {
      goto LABEL_148;
    }

    v173 = v172;
    [v172 setSecureTextEntry_];

    v174 = OUTLINED_FUNCTION_48_6();
    if (!v174)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v78 = v174;

    [v78 setTextContentType_];

    (*(v286 + 8))(v288, v289);
    OUTLINED_FUNCTION_21_0();
    v175 = swift_allocObject();
    OUTLINED_FUNCTION_11_25(v175);
    *(v176 + 32) = v177;
    *(v176 + 40) = v105;
    OUTLINED_FUNCTION_38_7();
    v143 = sub_1D7FC8B78;
LABEL_96:
    *v141 = v143;
    v141[1] = v140;
    v228 = v142;
    sub_1D7E0E10C(v78, v85);

    goto LABEL_97;
  }

  if (v33 == *MEMORY[0x1E69D6DF8])
  {
    v113 = OUTLINED_FUNCTION_7_31();
    v114(v113);
    v115 = *v22;
    v116 = *(v22 + 1);
    v118 = *(v22 + 2);
    v117 = *(v22 + 3);
    v119 = *(v22 + 2);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_30_9();
    v120 = OUTLINED_FUNCTION_35_9();
    v121 = OUTLINED_FUNCTION_20_12(v120, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    v122 = type metadata accessor for StepperTableViewCell();
    v50 = OUTLINED_FUNCTION_16_18(v121, v122);
    v81 = v121;
    OUTLINED_FUNCTION_34_7(v81, sel_setSelectionStyle_);
    v123 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
    [*&v50[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper] setStepValue_];
    [*&v50[v123] setMinimumValue_];
    [*&v50[v123] setMaximumValue_];
    [*&v50[v123] setValue_];
    v124 = *&v50[v123];
    OUTLINED_FUNCTION_9_18();
    v125 = v124;
    OUTLINED_FUNCTION_17_16();
    [v124 setEnabled_];

    v126 = *&v50[v123];
    OUTLINED_FUNCTION_5_33();
    v127 = v126;
    OUTLINED_FUNCTION_15_5();
    v128 = 0;
    if ((sub_1D818EC94() & 1) == 0)
    {
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v128 = qword_1ECA108B8;
    }

    [v127 setTintColor_];

    v129 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
    v130 = *&v50[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel];
    v291 = 0;
    v292 = 0xE000000000000000;
    v131 = v130;
    sub_1D81915F4();
    sub_1D7FC82B0(v291, v292, v131, &selRef_setText_);

    v132 = *&v50[v129];
    OUTLINED_FUNCTION_5_33();
    v133 = v132;
    OUTLINED_FUNCTION_15_5();
    if (sub_1D818EC94())
    {
      v134 = [objc_opt_self() labelColor];
    }

    else
    {
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v134 = qword_1ECA108B8;
    }

    v178 = v134;
    OUTLINED_FUNCTION_24_9();

    v179 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
    v180 = *&v50[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label];
    OUTLINED_FUNCTION_9_18();
    v181 = v180;
    OUTLINED_FUNCTION_17_16();
    v182 = sub_1D818EC74();
    sub_1D7FC82B0(v182, v183, v180, &selRef_setText_);

    v85 = *&v50[v179];
    OUTLINED_FUNCTION_5_33();
    OUTLINED_FUNCTION_15_5();
    if (sub_1D818EC94())
    {
      v78 = [objc_opt_self() labelColor];
      v184 = v286;
    }

    else
    {
      v184 = v286;
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v78 = qword_1ECA108B8;
    }

    OUTLINED_FUNCTION_24_9();

    (*(v184 + 8))(v288, v289);
    OUTLINED_FUNCTION_21_0();
    v193 = swift_allocObject();
    OUTLINED_FUNCTION_11_25(v193);
    *(v194 + 32) = v195;
    *(v194 + 40) = v119;
    OUTLINED_FUNCTION_38_7();
    v143 = sub_1D7FC8A0C;
    goto LABEL_96;
  }

  if (v33 == *MEMORY[0x1E69D6DD8])
  {
    v144 = OUTLINED_FUNCTION_7_31();
    v145(v144);
    v146 = *v22;
    sub_1D7FC8864(0);
    v148 = v147[12];
    v149 = *&v22[v147[16]];
    v150 = *&v22[v147[20]];
    v151 = *&v22[v147[24]];
    v284 = *&v22[v147[28]];
    v152 = &v22[v148];
    v153 = v281;
    (*(v283 + 32))(v282, v152, v281);
    OUTLINED_FUNCTION_42_6();
    v154 = OUTLINED_FUNCTION_35_9();
    v155 = OUTLINED_FUNCTION_20_12(v154, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    v156 = type metadata accessor for SliderTableViewCell();
    v50 = OUTLINED_FUNCTION_16_18(v155, v156);
    v81 = v155;
    OUTLINED_FUNCTION_34_7(v81, sel_setSelectionStyle_);
    v157 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider;
    LODWORD(v158) = v149;
    [*&v50[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider] setMinimumValue_];
    LODWORD(v159) = v150;
    [*&v50[v157] setMaximumValue_];
    *&v160 = v146;
    [*&v50[v157] setValue_];
    v161 = *&v50[v157];
    OUTLINED_FUNCTION_9_18();
    v162 = v161;
    OUTLINED_FUNCTION_17_16();
    [v161 setEnabled_];

    v163 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_label;
    v164 = *&v50[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_label];
    OUTLINED_FUNCTION_9_18();
    v165 = v164;
    OUTLINED_FUNCTION_17_16();
    v166 = sub_1D818EC74();
    sub_1D7FC82B0(v166, v167, v164, &selRef_setText_);

    v168 = *&v50[v163];
    OUTLINED_FUNCTION_5_33();
    v169 = v168;
    OUTLINED_FUNCTION_15_5();
    if (sub_1D818EC94())
    {
      v170 = [objc_opt_self() labelColor];
    }

    else
    {
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v170 = qword_1ECA108B8;
    }

    v196 = v170;
    OUTLINED_FUNCTION_24_9();

    v197 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel;
    v198 = *&v50[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel];
    v291 = 0;
    v292 = 0xE000000000000000;
    v199 = v198;
    sub_1D81915F4();
    sub_1D7FC82B0(v291, v292, v199, &selRef_setText_);

    v200 = *&v50[v197];
    OUTLINED_FUNCTION_5_33();
    v201 = v200;
    OUTLINED_FUNCTION_15_5();
    if (sub_1D818EC94())
    {
      v202 = [objc_opt_self() labelColor];
      v203 = v283;
      v204 = v280;
    }

    else
    {
      v203 = v283;
      v204 = v280;
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v202 = qword_1ECA108B8;
    }

    OUTLINED_FUNCTION_24_9();

    v217 = v282;
    (*(v203 + 16))(v204, v282, v153);
    v218 = (*(v203 + 88))(v204, v153);
    v78 = v218;
    v85 = *MEMORY[0x1E69D6E40];
    if (v218 == v85)
    {
      (*(v203 + 8))(v217, v153);
      v222 = OUTLINED_FUNCTION_37_8();
      v223(v222);
      (*(v203 + 96))(v204, v153);
      v221 = *v204;
    }

    else
    {
      if (v218 != *MEMORY[0x1E69D6E38])
      {
LABEL_150:
        sub_1D8192624();
        __break(1u);
        goto LABEL_151;
      }

      (*(v203 + 8))(v217, v153);
      v219 = OUTLINED_FUNCTION_37_8();
      v220(v219);
      v221 = 0;
    }

    v224 = &v50[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_precision];
    *v224 = v221;
    v224[8] = v78 != v85;
    OUTLINED_FUNCTION_21_0();
    v225 = swift_allocObject();
    OUTLINED_FUNCTION_11_25(v225);
    *(v226 + 32) = v227;
    *(v226 + 40) = v151;
    OUTLINED_FUNCTION_38_7();
    v143 = sub_1D7FC8B74;
    goto LABEL_96;
  }

  if (v33 == *MEMORY[0x1E69D6DC8])
  {
    goto LABEL_68;
  }

  if (v33 == *MEMORY[0x1E69D6DF0])
  {
    v205 = OUTLINED_FUNCTION_7_31();
    v206(v205);
    v207 = *(v22 + 1);

    v208 = OUTLINED_FUNCTION_29_7();
    v209 = sub_1D818E8E4();
    v210 = [v287 dequeueReusableCellWithIdentifier:v208 forIndexPath:v209];

    v211 = type metadata accessor for OptionTableViewCell();
    v212 = OUTLINED_FUNCTION_16_18(v210, v211);
    v213 = v210;
    [v212 setAccessoryType_];
    if ([v212 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      v214 = sub_1D818EC74();
      sub_1D7FC82B0(v214, v215, v210, &selRef_setText_);
    }

    v50 = v212;
    if ([v212 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      if (sub_1D818EC94())
      {
        v216 = [objc_opt_self() labelColor];
      }

      else
      {
        if (qword_1ECA0C390 != -1)
        {
          OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
        }

        v216 = qword_1ECA108B8;
      }

      v254 = v216;
      OUTLINED_FUNCTION_47_5(v216, sel_setTextColor_);
    }

    v255 = [v212 detailTextLabel];
    if (v255)
    {
      v210 = v255;
      v207(&v291);
      if (v293)
      {
        OUTLINED_FUNCTION_141(&v291, v293);
        OUTLINED_FUNCTION_111();
        sub_1D818EC74();
        __swift_destroy_boxed_opaque_existential_1Tm(&v291);
        v256 = sub_1D8190EE4();
      }

      else
      {
        v257 = sub_1D7FC8B20(&v291, &unk_1ECA0ED38, sub_1D7FC87E8, MEMORY[0x1E69E6720], sub_1D7FC8784);
        v256 = 0;
      }

      OUTLINED_FUNCTION_47_5(v257, sel_setText_);
    }

    if ([v212 detailTextLabel])
    {
      OUTLINED_FUNCTION_1_68();
      v267 = sub_1D818EC94();
      v268 = v286;
      if (v267)
      {
        v269 = [objc_opt_self() labelColor];
      }

      else
      {
        if (qword_1ECA0C390 != -1)
        {
          OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
        }

        v269 = qword_1ECA108B8;
      }

      v270 = v269;
      OUTLINED_FUNCTION_47_5(v269, sel_setTextColor_);
    }

    else
    {

      v268 = v286;
    }

    (*(v268 + 8))(v288, v289);
    goto LABEL_97;
  }

  if (v33 == *MEMORY[0x1E69D6DD0])
  {
    v230 = v287;
    v231 = OUTLINED_FUNCTION_7_31();
    v233.n128_f64[0] = v232(v231);
    sub_1D7FC8670(0, v233);
    v235 = v234;

    v236 = (v235 + 64);
LABEL_106:
    OUTLINED_FUNCTION_36_7(*v236);

    v242 = v277;
    (*(v279 + 32))(v278, v22, v277);
    v243 = OUTLINED_FUNCTION_40_6();
    v244 = sub_1D818E8E4();
    v245 = [v230 dequeueReusableCellWithIdentifier:v243 forIndexPath:v244];

    v246 = [v245 textLabel];
    if (v246)
    {
      v247 = v246;
      OUTLINED_FUNCTION_141(v294, v295);
      OUTLINED_FUNCTION_111();
      v248 = sub_1D818EC74();
      sub_1D7FC82B0(v248, v249, v247, &selRef_setText_);
    }

    OUTLINED_FUNCTION_9_18();
    v50 = v245;
    [v50 setUserInteractionEnabled_];

    OUTLINED_FUNCTION_34_7(v250, sel_setAccessoryType_);
    v251 = [v50 textLabel];
    if (!v251)
    {
      (*(v279 + 8))(v278, v242);
      goto LABEL_18;
    }

    v191 = v251;
    v253 = v278;
    v237 = sub_1D7FC77EC(v278, v252);
    (*(v279 + 8))(v253, v242);
LABEL_110:
    [v191 setTextColor_];

LABEL_18:
    v72 = OUTLINED_FUNCTION_37_8();
    v73(v72);
LABEL_97:
    __swift_destroy_boxed_opaque_existential_1Tm(v294);
    return v50;
  }

  if (v33 == *MEMORY[0x1E69D6DC0])
  {
    v230 = v287;
    v238 = OUTLINED_FUNCTION_7_31();
    v239(v238);
    sub_1D7FC84F0(0);
    v241 = v240;
    OUTLINED_FUNCTION_36_7(v240[12]);

    OUTLINED_FUNCTION_36_7(v241[16]);

    OUTLINED_FUNCTION_36_7(v241[20]);

    v236 = v241 + 28;
    goto LABEL_106;
  }

  if (v33 == *MEMORY[0x1E69D6DB8])
  {
LABEL_68:
    (*(v18 + 8))(v22, v16);
    sub_1D8190EE4();
    v185 = OUTLINED_FUNCTION_35_9();
    v50 = OUTLINED_FUNCTION_20_12(v185, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    [v50 setAccessoryType_];
    v186 = [v50 textLabel];
    if (v186)
    {
      v187 = v186;
      OUTLINED_FUNCTION_9_18();
      v188 = sub_1D818EC74();
      sub_1D7FC82B0(v188, v189, v187, &selRef_setText_);
    }

    v190 = [v50 textLabel];
    if (!v190)
    {
      goto LABEL_18;
    }

    v191 = v190;
    OUTLINED_FUNCTION_9_18();
    if (sub_1D818EC94())
    {
      v192 = [objc_opt_self() labelColor];
    }

    else
    {
      if (qword_1ECA0C390 != -1)
      {
        OUTLINED_FUNCTION_0_91(&qword_1ECA0C390);
      }

      v192 = qword_1ECA108B8;
    }

    v237 = v192;
    goto LABEL_110;
  }

  if (v33 == *MEMORY[0x1E69D6DB0])
  {
    v258 = OUTLINED_FUNCTION_7_31();
    v259(v258);
    sub_1D7E05450(v22, &v291);
    v260 = sub_1D818ED34();
    v261 = OUTLINED_FUNCTION_46_8();
    v262 = sub_1D818E8E4();
    v263 = OUTLINED_FUNCTION_31_7(v262, sel_dequeueReusableCellWithIdentifier_forIndexPath_);

    if ([v263 textLabel])
    {
      OUTLINED_FUNCTION_1_68();
      v264 = sub_1D818EC74();
      sub_1D7FC82B0(v264, v265, v261, &selRef_setText_);
    }

    if (v260)
    {
      [v263 setAccessoryType_];
      [v263 setAccessoryView_];
      v266 = &selRef_greenColor;
    }

    else
    {
      [v263 setAccessoryType_];
      sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
      v272 = sub_1D7E47238(0x656C637269632E78, 0xE800000000000000);
      v273 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

      [v263 setAccessoryView_];
      v266 = &selRef_redColor;
    }

    v274 = objc_opt_self();
    v50 = v263;
    v275 = [v274 *v266];
    [v50 setTintColor_];

    __swift_destroy_boxed_opaque_existential_1Tm(&v291);
    goto LABEL_18;
  }

LABEL_140:
  if (v33 == *MEMORY[0x1E69D6E00])
  {
    v271 = objc_allocWithZone(MEMORY[0x1E69DD028]);
    v50 = sub_1D7FC81C0(0, 0x6C6172656E6567, 0xE700000000000000);
    goto LABEL_18;
  }

LABEL_151:
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

uint64_t sub_1D7FC74CC(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a7;
  v25[1] = a5;
  v10 = sub_1D818E8B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D818EB04();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != *MEMORY[0x1E69D6D78])
  {
    if (v19 == *MEMORY[0x1E69D6D70])
    {
      sub_1D818E974();
      sub_1D818E864();
      v20 = sub_1D818E814();
      (*(v11 + 8))(v13, v10);
      [v26 reloadSections:v20 withRowAnimation:0];
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }
  }

  v21 = (a6 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler);
  v22 = *(a6 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24);
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  return (*(v23 + 16))(v27, v22, v23);
}

uint64_t sub_1D7FC7714(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  OUTLINED_FUNCTION_141((a3 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler), *(a3 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24));
  v4 = OUTLINED_FUNCTION_31();
  return v5(v4);
}

uint64_t sub_1D7FC7780(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a1, a2);
  OUTLINED_FUNCTION_141((a5 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler), *(a5 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler + 24));
  v6 = OUTLINED_FUNCTION_31();
  return v7(v6);
}

id sub_1D7FC77EC(uint64_t a1, __n128 a2)
{
  v3 = sub_1D818EB54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69D6DA0])
  {
    v9 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v10 = v8;
    v11 = *MEMORY[0x1E69D6D98];
    v12 = objc_opt_self();
    if (v10 != v11)
    {
      v13 = [v12 systemBlueColor];
      (*(v4 + 8))(v7, v3);
      return v13;
    }

    v9 = [v12 redColor];
  }

  return v9;
}

unint64_t SettingsViewController.tableView(_:heightForRowAt:)()
{
  sub_1D818EB64();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = *(v0 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout);
  result = sub_1D818E974();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v12 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v7 + 16))(v11, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v5);
  v14 = sub_1D818EBC4();
  (*(v7 + 8))(v11, v5);
  result = sub_1D818E964();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v14 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_1D7E0E768(v14 + 40 * result + 32, v24);

  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  OUTLINED_FUNCTION_15_5();
  sub_1D818EC84();
  v15 = OUTLINED_FUNCTION_31();
  if (v16(v15) == *MEMORY[0x1E69D6DD8])
  {
    v17 = OUTLINED_FUNCTION_31();
    v18(v17);
    sub_1D7FC8864(0);
    v20 = *(v19 + 48);

    sub_1D7FC872C();
    OUTLINED_FUNCTION_4_3();
    (*(v21 + 8))(v4 + v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_31();
    v23(v22);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

Swift::String_optional __swiftcall SettingsViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  sub_1D7FC7EA0(_, titleForHeaderInSection, MEMORY[0x1E69D6E68]);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall SettingsViewController.tableView(_:titleForFooterInSection:)(UITableView *_, Swift::Int titleForFooterInSection)
{
  sub_1D7FC7EA0(_, titleForFooterInSection, MEMORY[0x1E69D6E70]);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void sub_1D7FC7EA0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_1D818EBE4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout);
    if (*(v13 + 16) > a2)
    {
      v14 = (*(v8 + 16))(v12, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v6);
      a3(v14);
      (*(v8 + 8))(v12, v6);
      return;
    }
  }

  __break(1u);
}

id sub_1D7FC7FE0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a3;
  v8 = a1;
  a5();
  v10 = v9;

  if (v10)
  {
    v11 = sub_1D8190EE4();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1D7FC8078(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    OUTLINED_FUNCTION_2();
    v9 = v8;
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_15();
    v13 = v12 - v11;
    (*(v9 + 16))(v12 - v11);
    v14 = sub_1D8192614();
    (*(v9 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 initWithBarButtonSystemItem:a1 target:v14 action:a3];
  swift_unknownObjectRelease();
  return v15;
}

id sub_1D7FC81C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithStyle:a1 reuseIdentifier:v5];

  return v6;
}

uint64_t sub_1D7FC8240(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D7FC82B0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1D8190EE4();

  [a3 *a4];
}

void sub_1D7FC831C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();
  [a3 setText_];
}

char *sub_1D7FC8374(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v20[3] = a4;
  v20[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v12 = OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView;
  *&a3[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = &a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_akeyboardWillChangeFrame];
  *v13 = sub_1D7FC409C;
  *(v13 + 1) = 0;
  *&a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_layout] = a1;
  sub_1D7E0E768(v20, &a3[OBJC_IVAR____TtC5TeaUI22SettingsViewController_actionHandler]);
  v19.receiver = a3;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v15 = OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView;
  v16 = *&v14[OBJC_IVAR____TtC5TeaUI22SettingsViewController_tableView];
  v17 = v14;
  [v16 setDelegate_];
  [*&v14[v15] setDataSource_];

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v17;
}

void sub_1D7FC84F0(uint64_t a1)
{
  if (!qword_1ECA0ECF0)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1D818EB54();
    sub_1D7FC8784(255, &unk_1ECA0ECF8, MEMORY[0x1E69D6D60], MEMORY[0x1E69E62F8]);
    sub_1D7E31228();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECA0ECF0);
    }
  }
}

void sub_1D7FC8670(uint64_t a1, __n128 a2)
{
  if (!qword_1ECA0ED18)
  {
    sub_1D818EB54();
    sub_1D7FC8784(255, &unk_1ECA0ECF8, MEMORY[0x1E69D6D60], MEMORY[0x1E69E62F8]);
    sub_1D7E31228();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECA0ED18);
    }
  }
}

void sub_1D7FC872C()
{
  if (!qword_1ECA0ED28)
  {
    v0 = sub_1D818EB94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0ED28);
    }
  }
}

void sub_1D7FC8784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7FC87E8()
{
  result = qword_1ECA0ED40;
  if (!qword_1ECA0ED40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0ED40);
  }

  return result;
}

void sub_1D7FC8864(uint64_t a1)
{
  if (!qword_1ECA0ED48)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1D7FC872C();
    sub_1D7FC8784(255, &unk_1ECA0ECF8, MEMORY[0x1E69D6D60], MEMORY[0x1E69E62F8]);
    sub_1D7E31228();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECA0ED48);
    }
  }
}

uint64_t objectdestroy_9Tm()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7FC8A2C(uint64_t a1)
{
  v3 = *(sub_1D818E994() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7FC74CC(a1, v6, v7, v8, v1 + v4, v9, v10);
}

uint64_t sub_1D7FC8B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t PresentationHandlerError.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

void __swiftcall PresentationOperation.init(handlerUID:operationUID:requiredAppLaunchCount:maxPrecedingSameSessionPresentations:maxPresentationAttempts:endsPresentationSession:ignoreAfterSuccessfulPresentation:maxRetries:)(TeaUI::PresentationOperation *__return_ptr retstr, Swift::String handlerUID, Swift::String operationUID, Swift::Int requiredAppLaunchCount, Swift::Int_optional maxPrecedingSameSessionPresentations, Swift::Int_optional maxPresentationAttempts, Swift::Bool endsPresentationSession, Swift::Bool ignoreAfterSuccessfulPresentation, Swift::Int_optional maxRetries)
{
  retstr->handlerUID = handlerUID;
  retstr->operationUID = operationUID;
  retstr->requiredAppLaunchCount = requiredAppLaunchCount;
  retstr->maxPrecedingSameSessionPresentations.value = maxPrecedingSameSessionPresentations.value;
  retstr->maxPrecedingSameSessionPresentations.is_nil = maxPrecedingSameSessionPresentations.is_nil;
  *(&retstr->maxPresentationAttempts.value + 7) = maxPresentationAttempts.value;
  LOBYTE(retstr->suppressOnLaunchConditions.rawValue) = maxPresentationAttempts.is_nil;
  BYTE1(retstr->suppressOnLaunchConditions.rawValue) = endsPresentationSession;
  *&retstr->ignoreAfterSuccessfulPresentation = 0;
  HIBYTE(retstr->maxRetries.value) = ignoreAfterSuccessfulPresentation;
  retstr[1].handlerUID._countAndFlagsBits = maxRetries.value;
  LOBYTE(retstr[1].handlerUID._object) = maxRetries.is_nil;
}

void __swiftcall PresentationOperation.init(handlerUID:operationUID:requiredAppLaunchCount:maxPrecedingSameSessionPresentations:maxPresentationAttempts:endsPresentationSession:suppressOnLaunchConditions:ignoreAfterSuccessfulPresentation:maxRetries:)(TeaUI::PresentationOperation *__return_ptr retstr, Swift::String handlerUID, Swift::String operationUID, Swift::Int requiredAppLaunchCount, Swift::Int_optional maxPrecedingSameSessionPresentations, Swift::Int_optional maxPresentationAttempts, Swift::Bool endsPresentationSession, TeaUI::PresentationOperation::LaunchConditions suppressOnLaunchConditions, Swift::Bool ignoreAfterSuccessfulPresentation, Swift::Int_optional maxRetries)
{
  v10 = *suppressOnLaunchConditions.rawValue;
  retstr->handlerUID = handlerUID;
  retstr->operationUID = operationUID;
  retstr->requiredAppLaunchCount = requiredAppLaunchCount;
  retstr->maxPrecedingSameSessionPresentations.value = maxPrecedingSameSessionPresentations.value;
  retstr->maxPrecedingSameSessionPresentations.is_nil = maxPrecedingSameSessionPresentations.is_nil;
  *(&retstr->maxPresentationAttempts.value + 7) = maxPresentationAttempts.value;
  LOBYTE(retstr->suppressOnLaunchConditions.rawValue) = maxPresentationAttempts.is_nil;
  BYTE1(retstr->suppressOnLaunchConditions.rawValue) = endsPresentationSession;
  *&retstr->ignoreAfterSuccessfulPresentation = v10;
  HIBYTE(retstr->maxRetries.value) = ignoreAfterSuccessfulPresentation;
  retstr[1].handlerUID._countAndFlagsBits = maxRetries.value;
  LOBYTE(retstr[1].handlerUID._object) = maxRetries.is_nil;
}

TeaUI::PresentationOperation::LaunchConditions sub_1D7FC8D2C@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PresentationOperation.LaunchConditions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7FC8D6C@<X0>(uint64_t *a1@<X8>)
{
  result = PresentationOperation.LaunchConditions.rawValue.getter();
  *a1 = result;
  return result;
}

TeaUI::LaunchPresentationConfiguration __swiftcall LaunchPresentationConfiguration.init(version:presentationOperations:minimumTimeIntervalSinceLastBackground:)(Swift::Int version, Swift::OpaquePointer presentationOperations, Swift::Double minimumTimeIntervalSinceLastBackground)
{
  *v3 = version;
  *(v3 + 8) = presentationOperations;
  *(v3 + 16) = 0x4014000000000000;
  *(v3 + 24) = minimumTimeIntervalSinceLastBackground;
  result.presentationRequirementTimeout = minimumTimeIntervalSinceLastBackground;
  result.presentationOperations = presentationOperations;
  result.version = version;
  return result;
}

TeaUI::LaunchPresentationConfiguration __swiftcall LaunchPresentationConfiguration.init(version:presentationOperations:presentationRequirementTimeout:minimumTimeIntervalSinceLastBackground:)(Swift::Int version, Swift::OpaquePointer presentationOperations, Swift::Double presentationRequirementTimeout, Swift::Double minimumTimeIntervalSinceLastBackground)
{
  *v4 = version;
  *(v4 + 8) = presentationOperations;
  *(v4 + 16) = presentationRequirementTimeout;
  *(v4 + 24) = minimumTimeIntervalSinceLastBackground;
  result.minimumTimeIntervalSinceLastBackground = minimumTimeIntervalSinceLastBackground;
  result.presentationRequirementTimeout = presentationRequirementTimeout;
  result.presentationOperations = presentationOperations;
  result.version = version;
  return result;
}

uint64_t PresentationProcessingStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1);
  return sub_1D8192824();
}

uint64_t sub_1D7FC8E34(uint64_t a1)
{
  v2 = *v1;
  sub_1D81927E4();
  PresentationProcessingStatus.hash(into:)(v4, v2);
  return sub_1D8192824();
}

uint64_t PresentationOperationManager.__allocating_init(bootstrapper:launchPresentationConfigurationProvider:launchConditionProvider:dataStore:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_6_37();
  v8 = swift_allocObject();
  PresentationOperationManager.init(bootstrapper:launchPresentationConfigurationProvider:launchConditionProvider:dataStore:)(a1, a2, a3, a4);
  return v8;
}

double sub_1D7FC8F5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 232) = 0;
  }

  return result;
}

double sub_1D7FC8FAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 232) = 1;
    sub_1D818F154();
    if (v9 == 1)
    {
      v3 = [objc_opt_self() sharedApplication];
      v4 = [v3 applicationState];

      if (v4 != 2)
      {
        if (qword_1EDBBC3C8 != -1)
        {
          swift_once();
        }

        v5 = sub_1D818FE34();
        __swift_project_value_buffer(v5, qword_1EDBC6120);
        v6 = sub_1D818FE14();
        v7 = sub_1D81919E4();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_1D7DFF000, v6, v7, "Processing was suspended while app is in the foreground during keyboard dismissal. Resuming processing...", v8, 2u);
          MEMORY[0x1DA715D00](v8, -1, -1);
        }

        sub_1D7E64CF4(0);
      }
    }
  }

  return result;
}

uint64_t PresentationOperationManager.__allocating_init(bootstrapper:launchPresentationConfigurationProvider:dataStore:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  OUTLINED_FUNCTION_6_37();
  v6 = swift_allocObject();
  PresentationOperationManager.init(bootstrapper:launchPresentationConfigurationProvider:dataStore:)(a1, a2, a3);
  return v6;
}

uint64_t PresentationOperationManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  OUTLINED_FUNCTION_0_92();
  sub_1D7E15B28(v0 + 176, v1, v2, v3, v4);

  return v0;
}

uint64_t PresentationOperationManager.__deallocating_deinit()
{
  PresentationOperationManager.deinit();
  OUTLINED_FUNCTION_6_37();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FC9284(void *a1)
{
  v13 = a1;
  v2 = a1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D818FE34();
    __swift_project_value_buffer(v3, qword_1EDBC6120);
    v4 = a1;
    v5 = sub_1D818FE14();
    v6 = sub_1D81919E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_1D8192754();
      v11 = sub_1D7E1C3D8(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D7DFF000, v5, v6, "Failed during app launch configuration retrieval with the following error: %s. | Presentation operations will NOT be processed.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA715D00](v8, -1, -1);
      MEMORY[0x1DA715D00](v7, -1, -1);
    }
  }

  return sub_1D7E7017C();
}

uint64_t sub_1D7FC943C(double a1)
{
  sub_1D7E313D0(0);
  sub_1D818FC24();
  v2 = sub_1D818FA14();
  sub_1D818FB74();

  *(swift_allocObject() + 16) = a1;
  v3 = sub_1D818FA14();
  v4 = sub_1D818FAB4();

  return v4;
}

uint64_t sub_1D7FC9534()
{
  swift_allocObject();
  swift_weakInit();
  sub_1D7E0E7CC(0, &qword_1EDBBC3E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0 = sub_1D818FBA4();

  return v0;
}

uint64_t sub_1D7FC95F4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D7E69A6C();
  }

  return a1(Strong);
}

uint64_t sub_1D7FC9668(void *a1, uint64_t a2)
{
  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D818FE34();
  __swift_project_value_buffer(v4, qword_1EDBC6120);
  sub_1D7E68F40(a2, v14);
  v5 = a1;
  v6 = sub_1D818FE14();
  v7 = sub_1D81919E4();
  sub_1D7E69A3C(a2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D7E1C3D8(*(a2 + 16), *(a2 + 24), v14);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_1D8192754();
    v12 = sub_1D7E1C3D8(v10, v11, v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1D7DFF000, v6, v7, "Presentation handler for operation (%s) encountered the following error: %s. | Its operation will NOT be presented.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA715D00](v9, -1, -1);
    MEMORY[0x1DA715D00](v8, -1, -1);
  }

  LOBYTE(v14[0]) = 0;
  sub_1D7E0E7CC(0, &qword_1EDBBC3E8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D818FB44();
}

void sub_1D7FC9868(void *a1)
{
  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D818FE34();
  __swift_project_value_buffer(v2, qword_1EDBC6120);
  v3 = a1;
  oslog = sub_1D818FE14();
  v4 = sub_1D81919E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D8192754();
    v9 = sub_1D7E1C3D8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D7DFF000, oslog, v4, "Encountered error during required operation filtering: %s. | Operations will NOT be presented.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA715D00](v6, -1, -1);
    MEMORY[0x1DA715D00](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D7FC9A00(void *a1)
{
  v1 = a1[20];
  v2 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, v1);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v4 = sub_1D8190DB4();
  v5 = v3(v4, v1, v2);

  return v5;
}

uint64_t sub_1D7FC9AAC(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v8 = a2;
  v10 = sub_1D8190BD4();
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8190C34();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v16 = sub_1D8191AB4();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  memcpy((v18 + 24), a4, 0x61uLL);
  *(v18 + 128) = a1;
  LOBYTE(v17) = v8 & 1;
  *(v18 + 136) = v8 & 1;
  aBlock[4] = sub_1D7FCB670;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_28;
  v19 = _Block_copy(aBlock);
  sub_1D7E68F40(a4, v23);
  sub_1D7FCB684(a1, v17);

  sub_1D8190BF4();
  v23[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E0EFD4(&qword_1EDBB34B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7FCB690(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v15, v12, v19);
  _Block_release(v19);

  (*(v22 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v21);
}

double sub_1D7FC9E00(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7FC9E7C(*(a2 + 16), *(a2 + 24), a3, a4 & 1);
  }

  return result;
}

void sub_1D7FC9E7C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D818FE34();
    __swift_project_value_buffer(v10, qword_1EDBC6120);
    sub_1D8190DB4();
    sub_1D7FCB684(a3, 1);
    v11 = sub_1D818FE14();
    v12 = sub_1D81919C4();

    sub_1D7FCB664(a3, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      __dst[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D7E1C3D8(a1, a2, __dst);
      *(v13 + 12) = 2112;
      v16 = a3;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1D7DFF000, v11, v12, "Presentation operation (%s) encountered the following error during presentation: %@.\nIts presentation count will not be incremented.", v13, 0x16u);
      sub_1D7E15B28(v14, &unk_1EDBB2F30, &qword_1EDBB2F40, 0x1E69E58C0, sub_1D7E0A1A8);
      MEMORY[0x1DA715D00](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA715D00](v15, -1, -1);
      MEMORY[0x1DA715D00](v13, -1, -1);
    }
  }

  swift_beginAccess();
  v18 = *(v5 + 40);
  if (*(v18 + 16))
  {
    memcpy(__dst, (v18 + 32), 0x61uLL);
    v20 = __dst[2];
    v19 = __dst[3];
    v21 = __dst[2] == a1 && __dst[3] == a2;
    if (!v21 && (sub_1D8192634() & 1) == 0)
    {
      sub_1D7E68F40(__dst, v48);
      if (qword_1EDBBC3C8 == -1)
      {
LABEL_36:
        v40 = sub_1D818FE34();
        __swift_project_value_buffer(v40, qword_1EDBC6120);
        sub_1D8190DB4();
        sub_1D7E68F40(__dst, v48);
        v41 = sub_1D818FE14();
        v42 = sub_1D81919C4();

        sub_1D7E69A3C(__dst);
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v48[0] = v44;
          *v43 = 136315394;
          *(v43 + 4) = sub_1D7E1C3D8(a1, a2, v48);
          *(v43 + 12) = 2080;
          sub_1D8190DB4();
          sub_1D7E69A3C(__dst);
          v45 = sub_1D7E1C3D8(v20, v19, v48);

          *(v43 + 14) = v45;
          _os_log_impl(&dword_1D7DFF000, v41, v42, "Presentation operation (%s) has completed execution but doesn't match the UID that's currently pending completion (%s)! | This queue is in a bad state so no further items will be processed.", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA715D00](v44, -1, -1);
          MEMORY[0x1DA715D00](v43, -1, -1);
        }

        else
        {

          sub_1D7E69A3C(__dst);
        }

        *(v5 + 40) = MEMORY[0x1E69E7CC0];

        sub_1D7E651EC(0, &qword_1EDBAE288, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8);
        goto LABEL_40;
      }

LABEL_43:
      swift_once();
      goto LABEL_36;
    }

    if (a4)
    {
      sub_1D7E68F40(__dst, v48);
    }

    else
    {
      swift_beginAccess();
      v27 = *(v5 + 72);
      sub_1D7E68F40(__dst, v48);
      v28 = sub_1D7E69954(a1, a2, v27);
      v30 = v29;
      swift_endAccess();
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v5 + 72);
      sub_1D7E63458();
      *(v5 + 72) = v47;
      swift_endAccess();
      swift_beginAccess();
      sub_1D8190DB4();
      sub_1D7E91548(&v47, a1, a2, v32);
      swift_endAccess();
    }

    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D818FE34();
    __swift_project_value_buffer(v33, qword_1EDBC6120);
    sub_1D8190DB4();
    v34 = sub_1D818FE14();
    v35 = sub_1D81919E4();

    if (os_log_type_enabled(v34, v35))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D7E1C3D8(a1, a2, v48);
      _os_log_impl(&dword_1D7DFF000, v34, v35, "Presentation operation (%s) has reported that its presentation is now complete! | Please review the associated presentation handler log channel for details about the presentation process.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA715D00](v20, -1, -1);
      MEMORY[0x1DA715D00](v19, -1, -1);
    }

    sub_1D7E69A3C(__dst);
    if ((__dst[8] & 0x100) != 0)
    {
      sub_1D8190DB4();
      v36 = sub_1D818FE14();
      v37 = sub_1D81919E4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_1D7E1C3D8(a1, a2, v48);
        _os_log_impl(&dword_1D7DFF000, v36, v37, "Presentation operation (%s) is flagged to terminate the current presentation session.  Presentation queue will be emptied. . .", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1DA715D00](v39, -1, -1);
        MEMORY[0x1DA715D00](v38, -1, -1);
      }

      *(v5 + 40) = MEMORY[0x1E69E7CC0];

      sub_1D7E651EC(0, &qword_1EDBAE288, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8);
      goto LABEL_40;
    }

    swift_beginAccess();
    if (*(*(v5 + 40) + 16))
    {
      sub_1D7E6AF1C(0, 1);
      swift_endAccess();
      sub_1D7E651EC(0, &qword_1EDBAE288, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8);
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D818FE34();
  __swift_project_value_buffer(v22, qword_1EDBC6120);
  sub_1D8190DB4();
  v23 = sub_1D818FE14();
  v24 = sub_1D81919C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    __dst[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1D7E1C3D8(a1, a2, __dst);
    _os_log_impl(&dword_1D7DFF000, v23, v24, "Presentation operation (%s) just completed execution but the pending operation queue is already empty!", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA715D00](v26, -1, -1);
    MEMORY[0x1DA715D00](v25, -1, -1);
  }

  sub_1D7E651EC(0, &qword_1EDBAE288, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8);
LABEL_40:
  sub_1D818FC24();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v46 = sub_1D8191AB4();
  sub_1D818FAE4();
}

uint64_t sub_1D7FCA81C(void *a1)
{
  v1 = a1[20];
  v2 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, v1);
  return (*(v2 + 88))(v1, v2);
}

uint64_t sub_1D7FCA878(void *a1)
{
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D818FE34();
  __swift_project_value_buffer(v5, qword_1EDBC6120);
  v6 = a1;
  v7 = sub_1D818FE14();
  v8 = sub_1D81919E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1D8192754();
    v13 = sub_1D7E1C3D8(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D7DFF000, v7, v8, "Failed to retrieve app background date and / or required background time interval because of the following error: %s. | Assuming background date in distant past and proceeding with app launch processing. . .", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA715D00](v10, -1, -1);
    MEMORY[0x1DA715D00](v9, -1, -1);
  }

  sub_1D818E6A4();
  v14 = sub_1D818E754();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
  sub_1D7FCB690(0, &qword_1ECA0EDC8, sub_1D7E313D0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t sub_1D7FCAAA8(uint64_t a1, double a2)
{
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E754();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D818E744();
  sub_1D7FA9E88(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D818E6A4();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_1D7FCBA58(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_1D818E6B4();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
  v19 = sub_1D7FCACE0(v15, a2);
  sub_1D7E0E7CC(0, &qword_1EDBBC3E8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D818FB44();
}

BOOL sub_1D7FCACE0(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D818FE34();
    __swift_project_value_buffer(v9, qword_1EDBC6120);
    v5 = sub_1D818FE14();
    v6 = sub_1D81919E4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2048;
      *(v7 + 14) = a2;
      v8 = "Time interval since last background date: %f | Minimum time interval since last background: %f | An insufficient amount of time has passed to treat this scene activation as an application launch.";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D818FE34();
    __swift_project_value_buffer(v4, qword_1EDBC6120);
    v5 = sub_1D818FE14();
    v6 = sub_1D81919E4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2048;
      *(v7 + 14) = a2;
      v8 = "Time interval since last background date: %f | Minimum time interval since last background: %f | Enough time has passed to treat this scene activation as an application launch.";
LABEL_10:
      _os_log_impl(&dword_1D7DFF000, v5, v6, v8, v7, 0x16u);
      MEMORY[0x1DA715D00](v7, -1, -1);
    }
  }

  return a2 < a1;
}

Swift::Void __swiftcall PresentationOperationManager.sceneDidEnterBackground()()
{
  v1 = sub_1D818E754();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v5);
  sub_1D818E744();
  (*(v6 + 96))(v4, v5, v6);

  (*(v2 + 8))(v4, v1);
  *(v0 + 216) = 1;
}

uint64_t sub_1D7FCB0B4(void *a1)
{
  v2 = a1[20];
  v3 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, v2);
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = sub_1D8190DB4();
  v4(v5, v2, v3);

  v6 = a1[20];
  v7 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, v6);
  swift_beginAccess();
  v8 = *(v7 + 80);
  v9 = sub_1D8190DB4();
  v8(v9, v6, v7);

  v10 = sub_1D818FBE4();

  return v10;
}

unint64_t sub_1D7FCB1EC()
{
  result = qword_1ECA0EDB0;
  if (!qword_1ECA0EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EDB0);
  }

  return result;
}

unint64_t sub_1D7FCB244()
{
  result = qword_1ECA0EDB8;
  if (!qword_1ECA0EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EDB8);
  }

  return result;
}

unint64_t sub_1D7FCB29C()
{
  result = qword_1ECA0EDC0;
  if (!qword_1ECA0EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EDC0);
  }

  return result;
}

uint64_t sub_1D7FCB340(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FCB380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PresentationProcessingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1D7FCB664(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_1D7FCB684(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1D7FCB690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_30Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D7FCB774(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  sub_1D81927E4();
  sub_1D8190FF4();
  v7 = sub_1D8192824();
  v15 = ~(-1 << *(v6 + 32));
  v16 = 1;
  while (1)
  {
    v17 = v7 & v15;
    v18 = (v7 & v15) >> 6;
    v19 = 1 << (v7 & v15);
    v20 = v19 & *(v6 + 56 + 8 * v18);
    if (!v20)
    {
      break;
    }

    v21 = (*(v6 + 48) + 16 * v17);
    v8 = v21[1];
    v22 = *v21 == a1 && v8 == a2;
    if (v22 || (sub_1D8192634() & 1) != 0)
    {
      v16 = 0;
      break;
    }

    v7 = v17 + 1;
  }

  v23 = *(v6 + 16);
  v24 = v23 + v16;
  if (__OFADD__(v23, v16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v25 = *(v6 + 24);
  v26 = v42;
  if (v25 < v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D7EAF62C(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      goto LABEL_20;
    }

    if (v25 < v24)
    {
      sub_1D7EAF3D4(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
LABEL_20:
      v27 = *v26;
      sub_1D81927E4();
      sub_1D8190FF4();
      v28 = sub_1D8192824();
      v29 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v17 = v28 & v29;
        v18 = (v28 & v29) >> 6;
        v19 = 1 << (v28 & v29);
        if ((v19 & *(v27 + 56 + 8 * v18)) == 0)
        {
          break;
        }

        v30 = (*(v27 + 48) + 16 * v17);
        v31 = *v30 == a1 && v30[1] == a2;
        if (v31 || (sub_1D8192634() & 1) != 0)
        {
          v26 = v43;
          if (!v20)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v28 = v17 + 1;
      }

      v26 = v43;
      if (v20)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_1D7F5C484(v24);
  }

  if (v20)
  {
LABEL_29:
    v32 = (*(*v26 + 48) + 16 * v17);
    result = *v32;
    *v32 = a1;
    v32[1] = a2;
    return result;
  }

LABEL_31:
  v34 = *v26;
  *(*v26 + 8 * v18 + 56) |= v19;
  v35 = (*(v34 + 48) + 16 * v17);
  *v35 = a1;
  v35[1] = a2;
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    result = 0;
    *(v34 + 16) = v38;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1D8192704();
  __break(1u);
  return result;
}

unint64_t sub_1D7FCB9A4()
{
  result = qword_1EDBAFB30;
  if (!qword_1EDBAFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFB30);
  }

  return result;
}

uint64_t sub_1D7FCBA58(uint64_t a1)
{
  sub_1D7E313D0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1D7FCBAB4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D7FCBB64()
{
  result = qword_1ECA0EDD0;
  if (!qword_1ECA0EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EDD0);
  }

  return result;
}

UIImage __swiftcall UIImage.with(tintColor:size:)(UIColor tintColor, CGSize_optional size)
{
  OUTLINED_FUNCTION_19_13();
  v29 = v3;
  v30 = v6;
  v8 = v7;
  if (v9)
  {
    [v2 size];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = v4;
    v13 = v5;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v15 = swift_allocObject();
  *(v15 + 2) = v8;
  *(v15 + 3) = v2;
  v15[4] = 0.0;
  v15[5] = 0.0;
  v15[6] = v11;
  v15[7] = v13;
  OUTLINED_FUNCTION_0_32();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D7FCC258;
  *(v16 + 24) = v15;
  v27 = sub_1D7E6FA78;
  v28 = v16;
  OUTLINED_FUNCTION_2_1();
  v24 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  v25 = v17;
  v26 = &block_descriptor_29;
  v18 = _Block_copy(&v23);
  v19 = v8;
  v20 = v2;

  [v14 imageWithActions_];

  _Block_release(v18);
  v21 = OUTLINED_FUNCTION_22_11(v16, "", 86, 36);

  if (v21)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_16();
  }

  return result;
}

id sub_1D7FCBD8C(void *a1, id a2, void *a3, double a4, double a5, double a6, double a7)
{
  [a2 setFill];
  [a3 drawInRect_];

  return [a1 fillRect:22 blendMode:{a4, a5, a6, a7}];
}

void UIImage.blend(with:blendMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_19_13();
  a25 = v27;
  a26 = v28;
  v29 = v26;
  v31 = v30;
  v33 = v32;
  v34 = [v29 imageRendererFormat];
  [v29 scale];
  [v34 setScale_];
  [v34 setOpaque_];
  [v29 size];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v34 format:{v35, v36}];
  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v33;
  *(v38 + 32) = v31;
  OUTLINED_FUNCTION_0_32();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1D7FCC268;
  *(v39 + 24) = v38;
  a13 = sub_1D7E6FA30;
  a14 = v39;
  OUTLINED_FUNCTION_2_1();
  a10 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  a11 = v40;
  a12 = &block_descriptor_13_1;
  v41 = _Block_copy(&a9);
  v42 = v29;
  v43 = v33;

  [v37 imageWithActions_];

  _Block_release(v41);
  LOBYTE(v34) = OUTLINED_FUNCTION_22_11(v39, "", 86, 57);

  if (v34)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_16();
  }
}

id sub_1D7FCC030(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 size];
  v9 = v8;
  v11 = v10;
  [a3 setFill];
  [a2 drawInRect_];

  return [a1 fillRect:a4 blendMode:{0.0, 0.0, v9, v11}];
}

void UIImage.with(size:supplementActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_19_13();
  a25 = v27;
  a26 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_7_32();
  v35 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  v36 = OUTLINED_FUNCTION_1_23();
  v39 = [v37 v38];
  v40 = swift_allocObject();
  v40[2] = v29;
  v40[3] = v28;
  v40[4] = v34;
  v40[5] = v32;
  v40[6] = v26;
  OUTLINED_FUNCTION_0_32();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1D7FCC2F0;
  *(v41 + 24) = v40;
  a13 = sub_1D7E6FA30;
  a14 = v41;
  OUTLINED_FUNCTION_2_1();
  a10 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  a11 = v42;
  a12 = &block_descriptor_23_1;
  v43 = _Block_copy(&a9);
  sub_1D7E19F24(v34, v32);
  v44 = v26;

  [v39 imageWithActions_];

  _Block_release(v43);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_16();
  }
}

id sub_1D7FCC274(uint64_t a1, void (*a2)(uint64_t, double, double, double, double), uint64_t a3, id a4, double a5, double a6)
{
  if (a2)
  {
    a2(a1, 0.0, 0.0, a5, a6);
  }

  return [a4 drawInRect_];
}

void sub_1D7FCC360(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  Alpha = CGColorGetAlpha(v10);
  v13 = [a2 CGContext];
  CGContextSetFillColorWithColor(v13, v10);

  v14 = [a2 CGContext];
  CGContextSetStrokeColorWithColor(v14, v10);

  if (a3)
  {
    v17 = a3;
    [v17 setLineWidth_];
    [v17 strokeWithBlendMode:dword_1D81ABE14[v11] alpha:Alpha];
  }

  else
  {
    v15 = [a2 CGContext];
    CGContextSetAlpha(v15, Alpha);

    v16 = [a2 CGContext];
    CGContextSetBlendMode(v16, dword_1D81ABE14[v11]);

    v17 = [a2 CGContext];
    v19.origin.x = v9 * 0.5;
    v19.origin.y = v9 * 0.5;
    v19.size.width = a4 - v9;
    v19.size.height = a5 - v9;
    v20 = CGRectIntegral(v19);
    CGContextStrokeRectWithWidth(v17, v20, v9);
  }
}

void UIImage.roundedCornerImage(of:scale:cornerRadius:continuousCurve:border:fillColor:maintainTargetSize:imageScaleFactor:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_9_20();
  a35 = v37;
  a36 = v40;
  v42 = v41;
  v44 = v43;
  v87 = v45;
  OUTLINED_FUNCTION_7_32();
  v48 = *v47;
  v49 = v47[1];
  v50 = *(v47 + 16);
  v51 = 0.0;
  v52 = 0.0;
  v54 = v53;
  v56 = v55;
  if ((v57 & 1) == 0)
  {
    v58 = v46;
    v52 = (v38 - v38 * v46) * 0.5;
    v51 = (v39 - v39 * v46) * 0.5;
    OUTLINED_FUNCTION_21_13();
    v60 = v59;
    OUTLINED_FUNCTION_21_13();
    v62 = v61;
    OUTLINED_FUNCTION_21_13();
    if (v62 < v60)
    {
      v63 = v64;
    }

    v65 = v39 / v63;
    [v36 size];
    v54 = v65 * v66 * v58;
    OUTLINED_FUNCTION_21_13();
    v56 = v65 * v67 * v58;
  }

  objc_opt_self();
  v70 = OUTLINED_FUNCTION_12_22();
  if (v44)
  {
    v71 = [v68 v69];
  }

  else
  {
    v71 = [v68 v69];
  }

  v72 = v71;
  sub_1D7FCE0DC();
  v73 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v73 setOpaque_];
  [v73 setScale_];
  v74 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  v75 = OUTLINED_FUNCTION_1_23();
  v78 = [v76 v77];
  v79 = swift_allocObject();
  *(v79 + 16) = v36;
  *(v79 + 24) = v42;
  *(v79 + 32) = v72;
  *(v79 + 40) = v51;
  *(v79 + 48) = v52;
  *(v79 + 56) = v54;
  *(v79 + 64) = v56;
  *(v79 + 72) = v48;
  *(v79 + 80) = v49;
  *(v79 + 88) = v50;
  *(v79 + 96) = v39;
  *(v79 + 104) = v38;
  OUTLINED_FUNCTION_0_32();
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1D7FCE120;
  *(v80 + 24) = v79;
  a15 = sub_1D7E6FA30;
  a16 = v80;
  OUTLINED_FUNCTION_1_70();
  a12 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  a13 = v81;
  a14 = &block_descriptor_43_0;
  v82 = _Block_copy(&aBlock);
  v83 = v49;

  v84 = v36;
  v85 = v42;
  v86 = v72;

  [v78 imageWithActions_];

  _Block_release(v82);
  LOBYTE(v86) = OUTLINED_FUNCTION_22_11(v80, "", 86, 374);

  if (v86)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_27();
  }
}

void sub_1D7FCC828(void *a1, void *a2, void *a3, id a4, uint64_t a5, void *a6, char a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12, double a13)
{
  if (a3)
  {
    v25 = a3;
    if (sub_1D7FCC990(a2))
    {
      v26 = [a1 CGContext];
      v27 = [v25 CGColor];
      CGContextSetFillColorWithColor(v26, v27);

      [a4 fill];
    }
  }

  [a4 addClip];
  v31.origin.x = a8;
  v31.origin.y = a9;
  v31.size.width = a10;
  v31.size.height = a11;
  v32 = CGRectIntegral(v31);
  [a2 drawInRect_];
  if (a6)
  {
    v29[0] = a5;
    v29[1] = a6;
    v30 = a7;
    v28 = a6;
    sub_1D7FCC360(v29, a1, a4, a12, a13);
  }
}

uint64_t sub_1D7FCC990(void *a1)
{
  v1 = [a1 CGImage];
  if (v1)
  {
    v2 = v1;
    AlphaInfo = CGImageGetAlphaInfo(v1);

    if (AlphaInfo > kCGImageAlphaNoneSkipFirst)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 0x1Eu >> AlphaInfo;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

id UIImage.applying(descriptor:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithImage_];
  if (v0)
  {
    v1 = v0;
    sub_1D8132A4C();
    v2 = sub_1D8190EE4();

    sub_1D8132C80();
    v3 = sub_1D8190D44();

    v4 = [v1 imageByApplyingFilter:v2 withInputParameters:v3];

    v5 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v6 = sub_1D7FCE050(0);
    [v4 extent];
    v7 = [v6 createCGImage:v4 fromRect:?];
    if (v7)
    {
      v8 = v7;
      [v15 scale];
      v10 = v9;
      v11 = [v15 imageOrientation];
      v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v8 scale:v11 orientation:v10];

      return v12;
    }

    else
    {
      v14 = v15;

      return v14;
    }
  }

  else
  {

    return v15;
  }
}

void UIImage.applyingOverlay(gradient:blendMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_14_16(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v30);
  memcpy(v8, v9, 0x90uLL);
  v10 = [v28 size];
  v18 = OUTLINED_FUNCTION_17_17(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v31);
  sub_1D7FCCC68(v18, v19, v20, v21, v22);
  if (!v23)
  {

    v24 = v29;
  }
}

{
  v8 = OUTLINED_FUNCTION_14_16(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v30);
  memcpy(v8, v9, 0x49uLL);
  v10 = [v28 size];
  v18 = OUTLINED_FUNCTION_17_17(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v31);
  sub_1D7FCD0EC(v18, v19, v20, v21, v22);
  if (!v23)
  {

    v24 = v29;
  }
}

void sub_1D7FCCC68(void *__src, void *a2, int a3, double a4, double a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = a2;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  memcpy((v11 + 56), __src, 0x90uLL);
  *(v11 + 200) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D7FCE304;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D7E6FA30;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E6F8AC;
  aBlock[3] = &block_descriptor_97;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  sub_1D7FCE31C(__dst, &v15);

  [v10 imageWithActions_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

id UIImage.applyingAlphaMask(gradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_14_16(a1, a2, a3, a4, a5, a6, a7, a8, v34, v37, v40);
  memcpy(v9, v10, 0x90uLL);
  v11 = [v38 size];
  v19 = OUTLINED_FUNCTION_16_19(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41);
  sub_1D7FCCC68(v19, v20, v21, v22, v23);
  if (v24.super.isa)
  {
    v32 = OUTLINED_FUNCTION_20_13(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39);

    if (v32)
    {
      return v32;
    }
  }

  return v39;
}

{
  v9 = OUTLINED_FUNCTION_14_16(a1, a2, a3, a4, a5, a6, a7, a8, v34, v37, v40);
  memcpy(v9, v10, 0x49uLL);
  v11 = [v38 size];
  v19 = OUTLINED_FUNCTION_16_19(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41);
  sub_1D7FCD0EC(v19, v20, v21, v22, v23);
  if (v24.super.isa)
  {
    v32 = OUTLINED_FUNCTION_20_13(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39);

    if (v32)
    {
      return v32;
    }
  }

  return v39;
}

void sub_1D7FCD0EC(void *__src, void *a2, int a3, double a4, double a5)
{
  memcpy(__dst, __src, 0x49uLL);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  memcpy((v11 + 40), __src, 0x49uLL);
  *(v11 + 116) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D7FCE294;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D7E6FA30;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E6F8AC;
  aBlock[3] = &block_descriptor_87;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  sub_1D7FCE2A8(__dst, &v15);

  [v10 imageWithActions_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

void sub_1D7FCD354(void *a1, void *a2, uint64_t a3, CGBlendMode a4, CGFloat a5, double a6)
{
  if (!a2)
  {
    return;
  }

  v29 = a2;
  [v29 drawInRect:0 blendMode:0.0 alpha:{0.0, a5, a6, 1.0}];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  memcpy(__dst, a3, sizeof(__dst));
  GradientDescriptor.cgColors.getter();
  type metadata accessor for CGColor();
  v12 = sub_1D8191304();

  memcpy(v30, a3, sizeof(v30));
  v13 = GradientDescriptor.cgLocations.getter();
  if (v13)
  {
    v14 = (v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  v15 = CGGradientCreateWithColors(DeviceRGB, v12, v14);

  if (v15)
  {
    v16 = *(a3 + 16);
    v17 = *(a3 + 24);
    v19 = *(a3 + 32);
    v18 = *(a3 + 40);
    if (*(a3 + 48) == 1)
    {
      v20 = *&v19 | *&v17;
      if (!(v20 | *&v16 | v18))
      {
        v23 = 0.5;
        v22 = a5 * 0.5;
        goto LABEL_14;
      }

      v21 = v20 | v18;
      if (*&v16 == 1 && !v21)
      {
        v22 = a5 * 0.5;
        v23 = 0.0;
LABEL_14:
        v25 = a6 * v23;
        v24 = 1.0;
LABEL_15:
        a5 = v22;
        goto LABEL_16;
      }

      if (*&v16 == 2 && !v21)
      {
        v22 = a5 * 0.5;
        v24 = 0.0;
        v25 = a6;
        goto LABEL_15;
      }

      if (*&v16 != 3 || v21)
      {
        if (*&v16 != 4 || v21)
        {
          if (*&v16 != 5 || v21)
          {
            if (*&v16 != 6 || v21)
            {
              if (*&v16 != 7 || v21)
              {
                v24 = 0.0;
                v22 = a5;
                a5 = a5 * 0.0;
              }

              else
              {
                v24 = 0.0;
                v22 = a5 * 0.0;
              }

              v25 = a6;
              goto LABEL_16;
            }

            v25 = a6 * 0.0;
            v22 = a5;
            a5 = a5 * 0.0;
          }

          else
          {
            v22 = a5 * 0.0;
            v25 = a6 * 0.0;
          }

          v24 = 1.0;
        }

        else
        {
          v24 = 0.5;
          v25 = a6 * 0.5;
          v22 = a5;
          a5 = a5 * 0.0;
        }
      }

      else
      {
        v22 = a5 * 0.0;
        v24 = 0.5;
        v25 = a6 * 0.5;
      }
    }

    else
    {
      v22 = v16 * a5;
      v24 = *(a3 + 40);
      v25 = v17 * a6;
      a5 = v19 * a5;
    }

LABEL_16:
    v26 = v24 * a6;
    v27 = [a1 CGContext];
    CGContextSetBlendMode(v27, a4);

    v28 = [a1 CGContext];
    v33.x = v22;
    v33.y = v25;
    v34.x = a5;
    v34.y = v26;
    CGContextDrawLinearGradient(v28, v15, v33, v34, 0);
  }
}

void sub_1D7FCD640(void *a1, void *a2, uint64_t a3, CGBlendMode a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a2)
  {
    v40 = a2;
    [v40 drawInRect:0 blendMode:a5 alpha:{a6, a7, a8, 1.0}];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    memcpy(__dst, a3, sizeof(__dst));
    v16 = RadialGradientDescriptor.cfColors.getter();
    v17 = *(a3 + 136);
    if (v17)
    {
      v18 = (v17 + 32);
    }

    else
    {
      v18 = 0;
    }

    v19 = CGGradientCreateWithColors(DeviceRGB, v16, v18);

    if (v19)
    {
      v20 = [a1 CGContext];
      CGContextSetBlendMode(v20, a4);

      v21 = [a1 CGContext];
      v22 = *(a3 + 16);
      startCenter = *(a3 + 24);
      v23 = *(a3 + 32);
      if (*(a3 + 64))
      {
        v24 = *(a3 + 56);
        v25 = *(a3 + 40);
        v26 = vabdd_f64(v23, *(a3 + 48));
        v45.origin.x = a5;
        v45.origin.y = a6;
        v45.size.width = a7;
        v45.size.height = a8;
        v27 = v26 * CGRectGetWidth(v45);
        v28 = vabdd_f64(v25, v24);
        v46.origin.x = a5;
        v46.origin.y = a6;
        v46.size.width = a7;
        v46.size.height = a8;
        Height = CGRectGetHeight(v46);
        v23 = sqrt(v27 * v27 + v28 * Height * (v28 * Height));
      }

      v31 = *(a3 + 72);
      v30 = *(a3 + 80);
      v32 = *(a3 + 88);
      if (*(a3 + 120))
      {
        v37 = *(a3 + 112);
        v38 = v22;
        v36 = *(a3 + 96);
        v33 = vabdd_f64(v32, *(a3 + 104));
        v47.origin.x = a5;
        v47.origin.y = a6;
        v47.size.width = a7;
        v47.size.height = a8;
        v35 = v33 * CGRectGetWidth(v47);
        v48.origin.x = a5;
        v48.origin.y = a6;
        v48.size.width = a7;
        v48.size.height = a8;
        v34 = vabdd_f64(v36, v37) * CGRectGetHeight(v48);
        v22 = v38;
        v32 = sqrt(v35 * v35 + v34 * v34);
      }

      v43.x = v22;
      v43.y = startCenter;
      v44.x = v31;
      v44.y = v30;
      CGContextDrawRadialGradient(v21, v19, v43, v23, v44, v32, 0);
    }
  }
}

uint64_t UIImage.Scaling.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void UIImage.apply(supplementActions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v19 = v3;

    [v19 size];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v9 = swift_allocObject();
    v9[2] = v19;
    v9[3] = a1;
    v9[4] = a2;
    OUTLINED_FUNCTION_0_32();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D7FCE140;
    *(v10 + 24) = v9;
    v24 = sub_1D7E6FA30;
    v25 = v10;
    OUTLINED_FUNCTION_1_70();
    v21 = 1107296256;
    OUTLINED_FUNCTION_0_93();
    v22 = v11;
    v23 = &block_descriptor_63;
    v12 = _Block_copy(aBlock);
    v13 = OUTLINED_FUNCTION_112();
    sub_1D7E19F24(v13, v14);
    v15 = v19;

    [v8 imageWithActions_];
    v16 = OUTLINED_FUNCTION_112();
    sub_1D7E0E10C(v16, v17);

    _Block_release(v12);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }
  }

  else
  {

    v18 = v2;
  }
}

UIImage *UIImage.scaled(to:scaling:)()
{
  OUTLINED_FUNCTION_7_32();
  v3 = *v2;
  [v4 size];
  v15 = OUTLINED_FUNCTION_15_18(v5);
  if (!v3)
  {
    v14 = v15 <= v16;
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = OUTLINED_FUNCTION_23_9(v6, v7, v8, v9, v10, v11, v12, v13, v53, v57);
  v20 = (v1 - v17 * v19) * 0.5;
  v28 = OUTLINED_FUNCTION_23_9(v18, v21, v22, v23, v24, v25, v26, v27, v54, v58);
  v30 = (v0 - v17 * v29) * 0.5;
  v38 = OUTLINED_FUNCTION_23_9(v28, v31, v32, v33, v34, v35, v36, v37, v55, v59);
  v40 = v17 * v39;
  OUTLINED_FUNCTION_23_9(v38, v41, v42, v43, v44, v45, v46, v47, v56, v60);
  v49 = v17 * v48;
  v63.width = OUTLINED_FUNCTION_1_23();
  UIGraphicsBeginImageContextWithOptions(v63, 0, v50);
  [v61 drawInRect_];
  v51 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v51)
  {
    return v51;
  }

  return v61;
}

void UIImage.scaleImage(to:scaling:)()
{
  OUTLINED_FUNCTION_7_32();
  v3 = *v2;
  v31 = v4;
  v5 = [v4 CGImage];
  if (v5)
  {
    v6 = v5;
    [v31 size];
    v9 = OUTLINED_FUNCTION_15_18(v7);
    if (!v3)
    {
      v8 = v9 <= v10;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [v31 size];
    v13 = v11 * v12;
    [v31 size];
    v15 = round((v0 - v11 * v14) * 0.5);
    v16 = round(v11 * v14);
    v17 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    v18 = OUTLINED_FUNCTION_1_23();
    v21 = [v19 v20];
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    *(v22 + 24) = v0;
    *(v22 + 32) = v6;
    *(v22 + 40) = round((v1 - v13) * 0.5);
    *(v22 + 48) = v15;
    *(v22 + 56) = round(v13);
    *(v22 + 64) = v16;
    OUTLINED_FUNCTION_0_32();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D7FCE14C;
    *(v23 + 24) = v22;
    v36 = sub_1D7E6FA30;
    v37 = v23;
    OUTLINED_FUNCTION_1_70();
    v33 = 1107296256;
    OUTLINED_FUNCTION_0_93();
    v34 = v24;
    v35 = &block_descriptor_73;
    v25 = _Block_copy(aBlock);
    v26 = v6;

    v27 = [v21 imageWithActions_];

    _Block_release(v25);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_24_10();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_10();

    v30 = v28;
  }
}

void sub_1D7FCDEEC(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  c = [a1 CGContext];
  CGContextSetInterpolationQuality(c, kCGInterpolationHigh);
  CGContextScaleCTM(c, 1.0, -1.0);
  CGContextTranslateCTM(c, 0.0, -a4);
  sub_1D8191964();
}

id sub_1D7FCDFB4(uint64_t a1, id a2, void (*a3)(uint64_t, double, double, double, double))
{
  [a2 size];
  v7 = v6;
  v9 = v8;
  a3(a1, 0.0, 0.0, v6, v8);

  return [a2 drawInRect_];
}

id sub_1D7FCE050(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption();
    sub_1D7FCE378();
    v2 = sub_1D8190D44();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

unint64_t sub_1D7FCE0DC()
{
  result = qword_1EDBB3030;
  if (!qword_1EDBB3030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3030);
  }

  return result;
}

unint64_t sub_1D7FCE164()
{
  result = qword_1ECA0EDD8;
  if (!qword_1ECA0EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EDD8);
  }

  return result;
}

_BYTE *_s7ScalingOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7FCE378()
{
  result = qword_1ECA0CE18;
  if (!qword_1ECA0CE18)
  {
    type metadata accessor for CIContextOption();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0CE18);
  }

  return result;
}

id sub_1D7FCE408(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1D7FCE494(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1D7FCE564(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7FBDC30();
  return sub_1D8192824();
}

uint64_t sub_1D7FCE5FC(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7E39788(v3, *v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FCE6D0()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_5_0(v0);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7FCE738(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v3[5] = v4;
  OUTLINED_FUNCTION_15_2(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F0D010;
}

id (*sub_1D7FCE83C(void *a1))()
{
  a1[1] = v1;
  sub_1D7FCE7D4();
  *a1 = v3;
  return sub_1D7FCE884;
}

id (*sub_1D7FCE930(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D7FCE8AC() & 1;
  return sub_1D7FCE97C;
}

uint64_t sub_1D7FCE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1D8191E84();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_1D7FCEB64(v8);
}

uint64_t sub_1D7FCEA94@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_34_8();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_10(v1 + v4, v5);
  OUTLINED_FUNCTION_34_8();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_1D7FCEB64(uint64_t a1)
{
  OUTLINED_FUNCTION_34_8();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_15_2(v1 + v4, v7);
  OUTLINED_FUNCTION_34_8();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1D7FCEC40())(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_2(v1 + *((*MEMORY[0x1E69E7D40] & v2) + 0x88), v0);
  return j__swift_endAccess;
}

void *sub_1D7FCECE0(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
  OUTLINED_FUNCTION_10(v2 + v3, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_1D7FCED3C()
{
  OUTLINED_FUNCTION_34_0();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0x90);
  OUTLINED_FUNCTION_5_0(v4);
  v5 = *(v1 + v3);
  *(v1 + v3) = v0;
}

uint64_t (*sub_1D7FCED9C())(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_2(v1 + *((*MEMORY[0x1E69E7D40] & v2) + 0x90), v0);
  return j_j__swift_endAccess;
}

void sub_1D7FCEE18(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    sub_1D7FD28C4(v4, a2);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
  }
}

void sub_1D7FCEF00(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x98)) *a1];
  sub_1D7FCEE18(v4, a2);
}

id sub_1D7FCEF90(SEL *a1)
{
  v2 = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98)) *a1];

  return v2;
}

uint64_t sub_1D7FCEFEC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_10(v1 + v4, v5);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_11();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  return (*(v9 + 16))(a1, v1 + v4);
}

uint64_t sub_1D7FCF0F0(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_15_2(v1 + v4, v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_11();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

double sub_1D7FCF200(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC8), a2);
  sub_1D8190DB4();
  return result;
}

uint64_t sub_1D7FCF2B0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = sub_1D7FCF334(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D7FCF334(void *a1)
{
  type metadata accessor for PageSheetPresentationObserver();
  swift_allocObject();
  return PageSheetPresentationObserver.init(viewController:)(a1);
}

id PageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PageViewController.init(coder:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *v0;
  swift_unknownObjectWeakInit();
  v5 = *((*v3 & *v0) + 0x88);
  v6 = *((v4 & v2) + 0x68);
  v7 = *((v4 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_19();
  *(v1 + *(v9 + 144)) = 0;
  OUTLINED_FUNCTION_10_19();
  v11 = *(v10 + 152);
  v12 = objc_allocWithZone(TUPageViewController);
  *(v1 + v11) = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_10_19();
  v14 = *(v13 + 168);
  swift_getAssociatedConformanceWitness();
  v15 = OUTLINED_FUNCTION_31_0();
  v18 = type metadata accessor for PageBlueprint(v15, AssociatedTypeWitness, v16, v17);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v18);
  OUTLINED_FUNCTION_10_19();
  v20 = *(v19 + 184);
  v22 = *((v4 & v2) + 0x78);
  v23.i64[0] = v7;
  v33 = *((v4 & v2) + 0x70);
  v21 = v33;
  v34 = v22;
  v31 = *(v30 + 88);
  *&v24 = vdupq_laneq_s64(v31, 1).u64[0];
  *(&v24 + 1) = v6;
  *v32 = vzip1q_s64(v23, v31);
  *&v32[16] = v24;
  v25 = type metadata accessor for PageViewController.Event(255, v32);
  OUTLINED_FUNCTION_10_31(v25);
  OUTLINED_FUNCTION_31_0();
  sub_1D818EF84();
  *(v1 + v20) = sub_1D818EF64();
  OUTLINED_FUNCTION_10_19();
  v27 = *(v26 + 200);
  *v32 = v7;
  *&v32[8] = v31;
  *&v32[24] = v6;
  v33 = v21;
  v34 = v22;
  type metadata accessor for PageViewController.NavigationAction(0, v32);
  *(v1 + v27) = sub_1D8190D34();
  OUTLINED_FUNCTION_10_19();
  *(v1 + *(v28 + 208)) = 0;
  OUTLINED_FUNCTION_10_19();
  *(v1 + *(v29 + 216)) = 0;
  sub_1D81923A4();
  __break(1u);
}

void *PageViewController.init(blueprintProvider:prewarmer:sessionManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_34_8();
  v46 = v8;
  swift_unknownObjectWeakInit();
  v9 = *((*v6 & *v3) + 0x88);
  v10 = *((v7 & v5) + 0x68);
  v11 = *((v7 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v4 + v9, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_3_59();
  *(v4 + *(v13 + 144)) = 0;
  OUTLINED_FUNCTION_3_59();
  v15 = *(v14 + 152);
  v16 = objc_allocWithZone(TUPageViewController);
  *(v4 + v15) = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_3_59();
  v18 = *(v17 + 168);
  OUTLINED_FUNCTION_90_0();
  swift_getAssociatedConformanceWitness();
  v19 = OUTLINED_FUNCTION_31_0();
  v22 = type metadata accessor for PageBlueprint(v19, AssociatedTypeWitness, v20, v21);
  __swift_storeEnumTagSinglePayload(v4 + v18, 1, 1, v22);
  OUTLINED_FUNCTION_3_59();
  v24 = *(v23 + 184);
  v25 = *((v7 & v5) + 0x78);
  v26.i64[0] = v11;
  v50 = *((v7 & v5) + 0x70);
  v51 = v25;
  v27 = v50;
  v42 = v50;
  v47 = *(v46 + 88);
  *&v28 = vdupq_laneq_s64(v47, 1).u64[0];
  *(&v28 + 1) = v10;
  *v49 = vzip1q_s64(v26, v47);
  *&v49[16] = v28;
  v29 = type metadata accessor for PageViewController.Event(255, v49);
  OUTLINED_FUNCTION_10_31(v29);
  OUTLINED_FUNCTION_31_0();
  sub_1D818EF84();
  *(v4 + v24) = sub_1D818EF64();
  OUTLINED_FUNCTION_3_59();
  v31 = *(v30 + 200);
  *v49 = v11;
  *&v49[8] = v47;
  *&v49[24] = v10;
  v50 = v27;
  v51 = v25;
  type metadata accessor for PageViewController.NavigationAction(0, v49);
  *(v4 + v31) = sub_1D8190D34();
  OUTLINED_FUNCTION_3_59();
  *(v4 + *(v32 + 208)) = 0;
  OUTLINED_FUNCTION_3_59();
  *(v4 + *(v33 + 216)) = 0;
  v34 = *(v11 - 8);
  (*(v34 + 16))(v4 + *((*v6 & *v4) + 0xA0), a1, v11);
  OUTLINED_FUNCTION_3_59();
  v36 = *(v47.i64[1] - 8);
  (*(v36 + 16))(v4 + *(v35 + 176), a2, v47.i64[1]);
  sub_1D7E0E768(a3, v4 + *((*v6 & *v4) + 0xC0));
  *v49 = v11;
  *&v49[8] = v47;
  *&v49[24] = v10;
  v50 = v42;
  v51 = v25;
  v48.receiver = v4;
  v48.super_class = type metadata accessor for PageViewController(0, v49);
  v37 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
  v38 = *((*v6 & *v37) + 0x98);
  v39 = *(v37 + v38);
  v40 = v37;
  [v39 setDataSource_];
  [*(v37 + v38) setDelegate_];

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v36 + 8))(a2, v47.i64[1]);
  (*(v34 + 8))(a1, v11);
  return v40;
}