unint64_t sub_26A694394()
{
  result = qword_2803B2F98[0];
  if (!qword_2803B2F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B2F98);
  }

  return result;
}

uint64_t sub_26A6943E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A694430(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A694484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_26A694518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail_1];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A694600@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number_1];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 number_2];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v10 = v1;
    *(v10 + 8) = &unk_287B13928;
    *(v10 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v7 = v6;
  RFTextProperty.asPartialText()(v266);
  RFTextProperty.asPartialText()(v265);
  v8 = [v1 text_1];
  if (v8)
  {
    v9 = v8;
    *(&v263 + 1) = &type metadata for PartialText;
    v264 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v262 = swift_allocObject();
    RFTextProperty.asPartialText()(v262 + 16);
  }

  else
  {
    v264 = 0;
    v263 = 0u;
    v262 = 0u;
  }

  v12 = [v2 text_2];
  if (v12)
  {
    v13 = v12;
    *(&v260 + 1) = &type metadata for PartialText;
    v261 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v259 = swift_allocObject();
    RFTextProperty.asPartialText()(v259 + 16);
  }

  else
  {
    v261 = 0;
    v260 = 0u;
    v259 = 0u;
  }

  v14 = [v2 text_3];
  if (v14)
  {
    v15 = v14;
    *(&v257 + 1) = &type metadata for PartialText;
    v258 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v256 = swift_allocObject();
    RFTextProperty.asPartialText()(v256 + 16);
  }

  else
  {
    v258 = 0;
    v257 = 0u;
    v256 = 0u;
  }

  v16 = [v2 text_4];
  if (v16)
  {
    v17 = v16;
    *(&v254 + 1) = &type metadata for PartialText;
    v255 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v253 = swift_allocObject();
    RFTextProperty.asPartialText()(v253 + 16);
  }

  else
  {
    v255 = 0;
    v254 = 0u;
    v253 = 0u;
  }

  v18 = sub_26A695520(v2);
  if (v18)
  {
    v19 = v18;
    *(&v251 + 1) = &type metadata for PartialText;
    v252 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v250 = swift_allocObject();
    sub_26A735084(v19, v250 + 16);
  }

  else
  {
    v252 = 0;
    v251 = 0u;
    v250 = 0u;
  }

  v20 = [v2 text_6];
  if (v20)
  {
    v21 = v20;
    *(&v248 + 1) = &type metadata for PartialText;
    v249 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v247 = swift_allocObject();
    RFTextProperty.asPartialText()(v247 + 16);
  }

  else
  {
    v249 = 0;
    v248 = 0u;
    v247 = 0u;
  }

  v22 = [v2 text_7];
  if (v22)
  {
    v23 = v22;
    *(&v245 + 1) = &type metadata for PartialText;
    v246 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v244 = swift_allocObject();
    RFTextProperty.asPartialText()(v244 + 16);
  }

  else
  {
    v246 = 0;
    v245 = 0u;
    v244 = 0u;
  }

  v24 = [v2 text_8];
  if (v24)
  {
    v25 = v24;
    *(&v242 + 1) = &type metadata for PartialText;
    v243 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v241 = swift_allocObject();
    RFTextProperty.asPartialText()(v241 + 16);
  }

  else
  {
    v243 = 0;
    v242 = 0u;
    v241 = 0u;
  }

  v26 = [v2 text_9];
  if (v26)
  {
    v27 = v26;
    *(&v239 + 1) = &type metadata for PartialText;
    v240 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v238 = swift_allocObject();
    RFTextProperty.asPartialText()(v238 + 16);
  }

  else
  {
    v240 = 0;
    v239 = 0u;
    v238 = 0u;
  }

  v28 = [v2 text_10];
  if (v28)
  {
    v29 = v28;
    *(&v236 + 1) = &type metadata for PartialText;
    v237 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v235 = swift_allocObject();
    RFTextProperty.asPartialText()(v235 + 16);
  }

  else
  {
    v237 = 0;
    v235 = 0u;
    v236 = 0u;
  }

  v30 = [v2 thumbnail_1];
  if (v30)
  {
    v31 = v30;
    *(&v233 + 1) = sub_26A84BD28();
    v234 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v232);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v234 = 0;
    v232 = 0u;
    v233 = 0u;
  }

  v32 = [v2 thumbnail_2];
  if (v32)
  {
    v33 = v32;
    *(&v230 + 1) = sub_26A84BD28();
    v231 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v229);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v231 = 0;
    v229 = 0u;
    v230 = 0u;
  }

  v34 = [v2 button_1];
  if (v34)
  {
    v35 = v34;
    *(&v227 + 1) = &type metadata for SearchUIButtonView;
    v228 = &off_287B20490;
    *&v226 = swift_allocObject();
    sub_26A6F9608(4, 1, v226 + 16, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v228 = 0;
    v226 = 0u;
    v227 = 0u;
  }

  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v42 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v43 = v42[6];
  *(a1 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v44 = v42[7];
  *(a1 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v45 = (a1 + v42[8]);
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v218[0] = xmmword_281588758;
  v218[1] = unk_281588768;
  v218[2] = xmmword_281588778;
  v218[3] = xmmword_281588788;
  v219 = xmmword_281588758;
  v220 = unk_281588768;
  v221 = xmmword_281588778;
  v222 = xmmword_281588788;
  v176 = xmmword_281588788;
  v177 = xmmword_281588778;
  sub_26A4EA070(v218, v225, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(__src);
  memcpy(v45, __src, 0xC0uLL);
  v45[12] = v177;
  v45[13] = v176;
  v46 = v220;
  v45[14] = v219;
  v45[15] = v46;
  v47 = v222;
  v45[16] = v221;
  v45[17] = v47;
  v48 = a1 + v42[9];
  *v48 = swift_getKeyPath();
  *(v48 + 8) = 0;
  v49 = a1 + v42[10];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = (a1 + v42[11]);
  v224[0] = 0;
  sub_26A851048();
  v51 = v225[1];
  *v50 = v225[0];
  v50[1] = v51;
  OUTLINED_FUNCTION_5_49(v224);
  OUTLINED_FUNCTION_5_49(v225);
  sub_26A4EC458(v224, v216);
  v52 = sub_26A4EC4B4();
  *(a1 + v42[12]) = sub_26A851248();
  OUTLINED_FUNCTION_6_41(v225);
  OUTLINED_FUNCTION_6_41(v216);
  sub_26A4EC458(v225, &v184);
  *(a1 + v42[13]) = sub_26A851248();
  sub_26A4EA070(&v262, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v53 = OUTLINED_FUNCTION_4_9(v216);
    v55 = v54(v53);
    OUTLINED_FUNCTION_4_52(v55, v56, v57, v58, v59, v60, v61, v62, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[14]) = v52;
  sub_26A4EA070(&v259, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v63 = OUTLINED_FUNCTION_4_9(v216);
    v65 = v64(v63);
    OUTLINED_FUNCTION_4_52(v65, v66, v67, v68, v69, v70, v71, v72, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[15]) = v52;
  sub_26A4EA070(&v256, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v73 = OUTLINED_FUNCTION_4_9(v216);
    v75 = v74(v73);
    OUTLINED_FUNCTION_4_52(v75, v76, v77, v78, v79, v80, v81, v82, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[16]) = v52;
  sub_26A4EA070(&v253, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v83 = OUTLINED_FUNCTION_4_9(v216);
    v85 = v84(v83);
    OUTLINED_FUNCTION_4_52(v85, v86, v87, v88, v89, v90, v91, v92, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[17]) = v52;
  sub_26A4EA070(&v250, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v93 = OUTLINED_FUNCTION_4_9(v216);
    v95 = v94(v93);
    OUTLINED_FUNCTION_4_52(v95, v96, v97, v98, v99, v100, v101, v102, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[18]) = v52;
  sub_26A4EA070(&v247, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v103 = OUTLINED_FUNCTION_4_9(v216);
    v105 = v104(v103);
    OUTLINED_FUNCTION_4_52(v105, v106, v107, v108, v109, v110, v111, v112, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[19]) = v52;
  sub_26A4EA070(&v244, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v113 = OUTLINED_FUNCTION_4_9(v216);
    v115 = v114(v113);
    OUTLINED_FUNCTION_4_52(v115, v116, v117, v118, v119, v120, v121, v122, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[20]) = v52;
  sub_26A4EA070(&v241, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v123 = OUTLINED_FUNCTION_4_9(v216);
    v125 = v124(v123);
    OUTLINED_FUNCTION_4_52(v125, v126, v127, v128, v129, v130, v131, v132, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[21]) = v52;
  sub_26A4EA070(&v238, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v133 = OUTLINED_FUNCTION_4_9(v216);
    v135 = v134(v133);
    OUTLINED_FUNCTION_4_52(v135, v136, v137, v138, v139, v140, v141, v142, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[22]) = v52;
  sub_26A4EA070(&v235, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v143 = OUTLINED_FUNCTION_4_9(v216);
    v145 = v144(v143);
    OUTLINED_FUNCTION_4_52(v145, v146, v147, v148, v149, v150, v151, v152, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[23]) = v52;
  sub_26A4EA070(&v232, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v153 = OUTLINED_FUNCTION_4_9(v216);
    v155 = v154(v153);
    OUTLINED_FUNCTION_4_52(v155, v156, v157, v158, v159, v160, v161, v162, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[24]) = v52;
  sub_26A4EA070(&v229, v216, &qword_2803A91B8, &qword_26A8575C0);
  if (v217)
  {
    v163 = OUTLINED_FUNCTION_4_9(v216);
    v165 = v164(v163);
    OUTLINED_FUNCTION_4_52(v165, v166, v167, v168, v169, v170, v171, v172, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  }

  else
  {
    sub_26A4E2544(v216, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v42[25]) = v52;
  sub_26A4EA070(&v226, &v179, &qword_2803A91B8, &qword_26A8575C0);
  if (v182)
  {
    v173 = OUTLINED_FUNCTION_4_9(&v179);
    v175 = v174(v173);

    OUTLINED_FUNCTION_6_41(&v184);
    sub_26A4EC508(&v184);
    OUTLINED_FUNCTION_5_49(v216);
    sub_26A4EC508(v216);
    OUTLINED_FUNCTION_3_7(&v226);
    OUTLINED_FUNCTION_3_7(&v229);
    OUTLINED_FUNCTION_3_7(&v232);
    OUTLINED_FUNCTION_3_7(&v235);
    OUTLINED_FUNCTION_3_7(&v238);
    OUTLINED_FUNCTION_3_7(&v241);
    OUTLINED_FUNCTION_3_7(&v244);
    OUTLINED_FUNCTION_3_7(&v247);
    OUTLINED_FUNCTION_3_7(&v250);
    OUTLINED_FUNCTION_3_7(&v253);
    OUTLINED_FUNCTION_3_7(&v256);
    OUTLINED_FUNCTION_3_7(&v259);
    OUTLINED_FUNCTION_3_7(&v262);
    result = __swift_destroy_boxed_opaque_existential_1(&v179);
  }

  else
  {

    OUTLINED_FUNCTION_6_41(&v184);
    sub_26A4EC508(&v184);
    OUTLINED_FUNCTION_5_49(v216);
    sub_26A4EC508(v216);
    OUTLINED_FUNCTION_2_8(&v226);
    OUTLINED_FUNCTION_2_8(&v229);
    OUTLINED_FUNCTION_2_8(&v232);
    OUTLINED_FUNCTION_2_8(&v235);
    OUTLINED_FUNCTION_2_8(&v238);
    OUTLINED_FUNCTION_2_8(&v241);
    OUTLINED_FUNCTION_2_8(&v244);
    OUTLINED_FUNCTION_2_8(&v247);
    OUTLINED_FUNCTION_2_8(&v250);
    OUTLINED_FUNCTION_2_8(&v253);
    OUTLINED_FUNCTION_2_8(&v256);
    OUTLINED_FUNCTION_2_8(&v259);
    OUTLINED_FUNCTION_2_8(&v262);
    result = OUTLINED_FUNCTION_2_8(&v179);
    v175 = 0;
  }

  *(a1 + v42[26]) = v175;
  return result;
}

unint64_t sub_26A6954C8()
{
  result = qword_2803AC578;
  if (!qword_2803AC578)
  {
    type metadata accessor for SummaryItemPairNumberV2View(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC578);
  }

  return result;
}

uint64_t sub_26A695520(void *a1)
{
  v1 = [a1 text_5];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A5377B4();
  v3 = sub_26A851A98();

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void *OUTLINED_FUNCTION_5_49(void *a1)
{

  return memcpy(a1, &STACK[0x900], 0xFAuLL);
}

void *OUTLINED_FUNCTION_6_41(void *a1)
{

  return memcpy(a1, &STACK[0x800], 0xFAuLL);
}

uint64_t RFImage.Url.containsImageSizingParameters.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84E318();
  v10 = sub_26A748C50(v9);
  v11 = *(v5 + 8);
  v11(v8, v3);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    sub_26A84E2F8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    if (EnumTagSinglePayload == 1)
    {
      sub_26A67B574(v2);
      v12 = 0;
    }

    else
    {
      v12 = sub_26A748C50(EnumTagSinglePayload);
      v11(v2, v3);
    }
  }

  return v12 & 1;
}

uint64_t RFImage.Url.parameterized(with:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  if (RFImage.Url.containsImageSizingParameters.getter())
  {
    sub_26A84E318();
    sub_26A748CE4(v21, a2, a3);
    v22 = *(v15 + 8);
    v22(v18, v13);
    sub_26A84E2F8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
    {
      sub_26A67B574(v9);
      v23 = 1;
    }

    else
    {
      sub_26A748CE4(v12, a2, a3);
      v22(v9, v13);
      v23 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v23, 1, v13);
    return sub_26A84E308();
  }

  else
  {
    v24 = sub_26A84E328();
    v25 = *(*(v24 - 8) + 16);

    return v25(a1, v3, v24);
  }
}

uint64_t sub_26A6959CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A695A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_26A695A64(void *a1, uint64_t a2))(void **a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_26A697F74(v4, a2);
  return sub_26A695AC8;
}

void sub_26A695AC8(void **a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_20_20();
  v3(v2);

  free(v1);
}

void (*sub_26A695B10(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = sub_26A84ACC8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v2[5] = v4;
  v6 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[6] = v6;
  (*(v5 + 16))();
  v2[7] = sub_26A698060(v2, v6);
  return sub_26A695C08;
}

void sub_26A695C08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = OUTLINED_FUNCTION_20_20();
  v6(v5);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_26A695C7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_26A5484D4(a1);
    if (v4)
    {
      v5 = *(*(a2 + 56) + 8 * v3);
      if (*(v5 + 16))
      {
        v35 = *(v5 + 16);
        v36 = MEMORY[0x277D84F90];

        sub_26A7DCC04(0, v35, 0);
        v6 = sub_26A698D74(v5);
        v8 = v7;
        v9 = v35;
        v10 = 0;
        v11 = v5 + 64;
        v12 = 1;
        v13 = -2;
        if ((v6 & 0x8000000000000000) == 0)
        {
          while (v6 < v12 << *(v5 + 32))
          {
            v14 = v6 >> 6;
            v15 = v12 << v6;
            if ((*(v11 + 8 * (v6 >> 6)) & (v12 << v6)) == 0)
            {
              goto LABEL_27;
            }

            if (*(v5 + 36) != v8)
            {
              goto LABEL_28;
            }

            v16 = *(*(v5 + 48) + 8 * v6);
            v17 = *(*(v5 + 56) + 8 * v6);
            v19 = *(v36 + 16);
            v18 = *(v36 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_26A7DCC04(v18 > 1, v19 + 1, 1);
              OUTLINED_FUNCTION_9_40();
            }

            *(v36 + 16) = v19 + 1;
            v20 = v36 + 16 * v19;
            *(v20 + 32) = v16;
            *(v20 + 40) = v17;
            v21 = v12 << *(v5 + 32);
            if (v6 >= v21)
            {
              goto LABEL_29;
            }

            v22 = *(v11 + 8 * v14);
            if ((v22 & v15) == 0)
            {
              goto LABEL_30;
            }

            if (*(v5 + 36) != v8)
            {
              goto LABEL_31;
            }

            v23 = v22 & (v13 << (v6 & 0x3F));
            if (v23)
            {
              v21 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v24 = v14 << 6;
              v25 = v14 + 1;
              v26 = (v5 + 72 + 8 * v14);
              while (v25 < (v21 + 63) >> 6)
              {
                v28 = *v26++;
                v27 = v28;
                v24 += 64;
                ++v25;
                if (v28)
                {
                  v29 = OUTLINED_FUNCTION_14_29();
                  sub_26A698DB4(v29, v30, v31);
                  OUTLINED_FUNCTION_9_40();
                  v21 = __clz(__rbit64(v27)) + v24;
                  goto LABEL_20;
                }
              }

              v32 = OUTLINED_FUNCTION_14_29();
              sub_26A698DB4(v32, v33, v34);
              OUTLINED_FUNCTION_9_40();
            }

LABEL_20:
            if (++v10 == v9)
            {

              return;
            }

            v8 = *(v5 + 36);
            v6 = v21;
            if (v21 < 0)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }
    }
  }
}

void sub_26A695ED0(uint64_t *a1)
{
  v1 = a1;
  sub_26A695C7C(0, *a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    v39 = v2;
    v40 = v1;
    v38 = *(v2 + 16);
    while (v4 < *(v2 + 16))
    {
      v6 = *(v5 - 8);
      if (v6 >= 2)
      {
        if (!*(*v1 + 16) || (sub_26A5484D4(1), (v7 & 1) == 0))
        {
          v8 = sub_26A8516A8();
          swift_isUniquelyReferenced_nonNull_native();
          v42[0] = *v1;
          sub_26A5484D4(1);
          OUTLINED_FUNCTION_21_19();
          if (__OFADD__(v11, v12))
          {
            goto LABEL_35;
          }

          v13 = v9;
          v14 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CE0, &qword_26A86E6E8);
          if (sub_26A8523E8())
          {
            v15 = sub_26A5484D4(1);
            if ((v14 & 1) != (v16 & 1))
            {
              goto LABEL_39;
            }

            v13 = v15;
          }

          v17 = v42[0];
          if (v14)
          {
            *(*(v42[0] + 56) + 8 * v13) = v8;
          }

          else
          {
            *(v42[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
            *(v17[6] + 8 * v13) = 1;
            *(v17[7] + 8 * v13) = v8;
            v18 = v17[2];
            v19 = __OFADD__(v18, 1);
            v20 = v18 + 1;
            if (v19)
            {
              goto LABEL_37;
            }

            v17[2] = v20;
          }

          *v1 = v17;
        }

        v22 = sub_26A695A64(v42, 1);
        if (*v21)
        {
          v23 = v21;
          v24 = v6 - 1;
          if (*(*v21 + 16))
          {
            sub_26A5484D4(v6 - 1);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v41 = *v23;
          *v23 = 0x8000000000000000;
          sub_26A5484D4(v6 - 1);
          OUTLINED_FUNCTION_21_19();
          if (__OFADD__(v27, v28))
          {
            goto LABEL_36;
          }

          v29 = v25;
          v30 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
          if (sub_26A8523E8())
          {
            v31 = sub_26A5484D4(v24);
            if ((v30 & 1) != (v32 & 1))
            {
              goto LABEL_39;
            }

            v29 = v31;
          }

          if (v30)
          {
            OUTLINED_FUNCTION_17_21(v41);
          }

          else
          {
            OUTLINED_FUNCTION_4_53(v41);
            *(v34 + 8 * v29) = v24;
            OUTLINED_FUNCTION_17_21(v35);
            v36 = *(v33 + 16);
            v19 = __OFADD__(v36, 1);
            v37 = v36 + 1;
            if (v19)
            {
              goto LABEL_38;
            }

            *(v33 + 16) = v37;
          }

          *v23 = v33;
        }

        (v22)(v42, 0);
        v2 = v39;
        v1 = v40;
        v3 = v38;
      }

      ++v4;
      v5 += 16;
      if (v3 == v4)
      {

        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_26A852618();
    __break(1u);
  }

  else
  {
  }
}

void *sub_26A69620C(uint64_t a1, void *a2)
{
  v67 = a2;
  v3 = a1 + 64;
  OUTLINED_FUNCTION_0_66();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v58 = a1;

  v9 = 0;
  v56 = v8;
  v57 = v3;
  if (v6)
  {
    do
    {
      v10 = v9;
LABEL_6:
      v11 = (v10 << 9) | (8 * __clz(__rbit64(v6)));
      v64 = *(*(v58 + 48) + v11);
      v12 = *(*(v58 + 56) + v11);
      v59 = (v6 - 1) & v6;
      v13 = v12 + 64;
      OUTLINED_FUNCTION_0_66();
      v16 = v15 & v14;
      v18 = (v17 + 63) >> 6;

      v19 = 0;
      v60 = v18;
      v61 = v12 + 64;
      v63 = v12;
      if (!v16)
      {
        goto LABEL_7;
      }

      do
      {
LABEL_11:
        v21 = *(*(v12 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));
        v22 = v67;
        if (!v67[2] || (sub_26A5484D4(v64), (v23 & 1) == 0))
        {
          v24 = v21;
          v25 = sub_26A8516A8();
          swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v22;
          sub_26A5484D4(v64);
          OUTLINED_FUNCTION_21_19();
          if (__OFADD__(v28, v29))
          {
            goto LABEL_43;
          }

          v30 = v26;
          v31 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CE0, &qword_26A86E6E8);
          if (sub_26A8523E8())
          {
            v32 = sub_26A5484D4(v64);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_47;
            }

            v30 = v32;
          }

          v34 = v66[0];
          if (v31)
          {
            *(*(v66[0] + 56) + 8 * v30) = v25;
          }

          else
          {
            *(v66[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
            *(v34[6] + 8 * v30) = v64;
            *(v34[7] + 8 * v30) = v25;
            v35 = v34[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_45;
            }

            v34[2] = v37;
          }

          v67 = v34;
          v21 = v24;
          v12 = v63;
        }

        v16 &= v16 - 1;
        v38 = sub_26A695A64(v66, v64);
        v40 = v38;
        if (*v39)
        {
          v41 = v39;
          v62 = v38;
          if (*(*v39 + 16))
          {
            sub_26A5484D4(v21);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v65 = *v41;
          *v41 = 0x8000000000000000;
          sub_26A5484D4(v21);
          OUTLINED_FUNCTION_21_19();
          if (__OFADD__(v44, v45))
          {
            goto LABEL_44;
          }

          v46 = v42;
          v47 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
          if (sub_26A8523E8())
          {
            v48 = sub_26A5484D4(v21);
            v12 = v63;
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_47;
            }

            v46 = v48;
          }

          else
          {
            v12 = v63;
          }

          if (v47)
          {
            OUTLINED_FUNCTION_17_21(v65);
          }

          else
          {
            OUTLINED_FUNCTION_4_53(v65);
            *(v51 + 8 * v46) = v21;
            OUTLINED_FUNCTION_17_21(v52);
            v53 = *(v50 + 16);
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_46;
            }

            *(v50 + 16) = v54;
          }

          *v41 = v50;

          v40 = v62;
        }

        (v40)(v66, 0);
        v18 = v60;
        v13 = v61;
      }

      while (v16);
      while (1)
      {
LABEL_7:
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v20 >= v18)
        {
          break;
        }

        v16 = *(v13 + 8 * v20);
        ++v19;
        if (v16)
        {
          v19 = v20;
          goto LABEL_11;
        }
      }

      v9 = v10;
      v8 = v56;
      v3 = v57;
      v6 = v59;
    }

    while (v59);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v67;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_42:
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
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A69662C(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(*v3 + 16) || (sub_26A5484D4(a1), (v7 & 1) == 0))
  {
    sub_26A8516A8();
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;
    v8 = OUTLINED_FUNCTION_14_29();
    sub_26A654BE8(v8, v9, v10);
    *v3 = v19[0];
  }

  v11 = sub_26A695A64(v19, a1);
  v13 = v12;
  v14 = *v12;
  if (v14)
  {
    v15 = COERCE_DOUBLE(sub_26A507558(a2, v14));
    if (v16)
    {
      v15 = 0.0;
    }

    if (v15 > a3)
    {
      a3 = v15;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v13;
    sub_26A654AF8(a2, a3);
    *v13 = v18;
  }

  return (v11)(v19, 0);
}

uint64_t sub_26A69676C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(*(result + 56) + ((v6 << 9) | (8 * v7))) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A696814(unint64_t a1, uint64_t a2)
{
  v5 = a1;
  if (sub_26A69714C(a1, a2))
  {
    return 1;
  }

  v7 = sub_26A697590(v5, a2);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3020, &qword_26A872B40);
  sub_26A852468();
  v8 = 0;
  v9 = v5 + 64;
  OUTLINED_FUNCTION_1_65();
  v136 = v10;
  v11 = (v10 + 8);
  for (i = v5; v3; v5 = i)
  {
    OUTLINED_FUNCTION_12_31();
LABEL_11:
    v16 = v12 | (v8 << 6);
    v17 = *(v5 + 56);
    v18 = *(*(v5 + 48) + 8 * v16);
    if (*(*(v17 + 8 * v16) + 16))
    {
      sub_26A5484D4(1);
      v20 = (v19 & 1) == 0;
    }

    else
    {
      v20 = 1;
    }

    OUTLINED_FUNCTION_13_27();
    *(v11 + v21) |= v22;
    *(v136[6] + 8 * v16) = v18;
    v23 = v136[7] + 16 * v16;
    *v23 = v24;
    *(v23 + 8) = v20;
    v25 = v136[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_123;
    }

    v136[2] = v27;
  }

  v13 = v8;
  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_117;
    }

    if (v8 >= v2)
    {
      break;
    }

    ++v13;
    if (*(v9 + 8 * v8))
    {
      OUTLINED_FUNCTION_2_66();
      v3 = v15 & v14;
      goto LABEL_11;
    }
  }

  v28 = sub_26A852468();
  v29 = 0;
  OUTLINED_FUNCTION_1_65();
  v132 = v30 + 8;
  v135 = v30;
LABEL_19:
  v32 = v29;
  while (1)
  {
    v29 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_118;
    }

    if (v29 >= v2)
    {
      break;
    }

    ++v32;
    if (*(a2 + 64 + 8 * v29))
    {
      OUTLINED_FUNCTION_2_66();
      v35 = v34 & v33;
      while (1)
      {
        v36 = v31 | (v29 << 6);
        v37 = *(*(a2 + 48) + 8 * v36);
        if (*(*(*(a2 + 56) + 8 * v36) + 16))
        {
          sub_26A5484D4(1);
          v11 = (v38 & 1) == 0;
        }

        else
        {
          v11 = 1;
        }

        OUTLINED_FUNCTION_13_27();
        *(v132 + v39) |= v40;
        v28 = v135;
        *(v135[6] + 8 * v36) = v37;
        v41 = v135[7] + 16 * v36;
        *v41 = v42;
        *(v41 + 8) = v11;
        v43 = v135[2];
        v26 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v26)
        {
          goto LABEL_124;
        }

        v135[2] = v44;
        if (!v35)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_12_31();
      }
    }
  }

  if ((sub_26A697258(v136, v28) & 1) == 0)
  {

    goto LABEL_113;
  }

  v45 = i;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3028, &qword_26A872B48);
  v46 = sub_26A852468();
  v131 = v46;
  v47 = 0;
  v48 = 0;
  v49 = 1 << *(i + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = (v49 + 63) >> 6;
  v126 = v46 + 64;
  if ((v50 & *(i + 64)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_7_49();
LABEL_40:
      v56 = v52 | (v47 << 6);
      v129 = *(*(v45 + 48) + 8 * v56);
      v57 = *(*(v45 + 56) + 8 * v56);
      OUTLINED_FUNCTION_10_38();

      MEMORY[0x28223BE20](v58);
      OUTLINED_FUNCTION_5_50(v59, v60, v61, v62, v63, v64, v65, v66, v124);
      v48 = v132;
      v67 = sub_26A6988DC(1, v11, v57);
      if (v132)
      {
        goto LABEL_134;
      }

      v11 = v67;
      v45 = i;

      *(v126 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      *(*(v131 + 48) + 8 * v56) = v129;
      OUTLINED_FUNCTION_18_19();
      if (v26)
      {
        goto LABEL_130;
      }

      *(v69 + 16) = v68;
    }

    while (v128);
  }

  v53 = v47;
  while (1)
  {
    v47 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_121;
    }

    if (v47 >= v51)
    {
      break;
    }

    ++v53;
    if (*(v9 + 8 * v47))
    {
      v132 = v48;
      OUTLINED_FUNCTION_2_66();
      v128 = v55 & v54;
      goto LABEL_40;
    }
  }

  v70 = sub_26A852468();
  v71 = v70;
  v72 = 0;
  v73 = 1 << *(v45 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = (v73 + 63) >> 6;
  v125 = v70 + 64;
  v127 = v70;
  if ((v74 & *(v45 + 64)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_7_49();
LABEL_54:
      v80 = v76 | (v72 << 6);
      v130 = *(*(v45 + 48) + 8 * v80);
      v81 = *(*(v45 + 56) + 8 * v80);
      OUTLINED_FUNCTION_10_38();

      MEMORY[0x28223BE20](v82);
      OUTLINED_FUNCTION_5_50(v83, v84, v85, v86, v87, v88, v89, v90, v124);
      v48 = v132;
      v91 = sub_26A6988DC(1, v11, v81);
      if (v132)
      {
        goto LABEL_134;
      }

      v11 = v91;
      v45 = i;

      *(v125 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
      *(*(v127 + 48) + 8 * v80) = v130;
      OUTLINED_FUNCTION_18_19();
      if (v26)
      {
        goto LABEL_131;
      }

      v71 = v93;
      *(v93 + 16) = v92;
    }

    while (v128);
  }

  v77 = v72;
  while (1)
  {
    v72 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      goto LABEL_122;
    }

    if (v72 >= v75)
    {
      break;
    }

    ++v77;
    if (*(v9 + 8 * v72))
    {
      v132 = v48;
      OUTLINED_FUNCTION_2_66();
      v128 = v79 & v78;
      goto LABEL_54;
    }
  }

  v94 = v131;

  v96 = sub_26A697490(v95);

  v97 = v96[2];
  if (!v97)
  {
LABEL_112:

    return 1;
  }

  v98 = 0;
  v134 = v96 + 4;
  while (1)
  {
    if (v98 >= v96[2])
    {
      goto LABEL_125;
    }

    v99 = v134[v98];
    if (*(v94 + 16))
    {
      v100 = sub_26A5484D4(v134[v98]);
      if (v101)
      {
        v102 = *(*(v94 + 56) + 8 * v100);
        if (*(v102 + 16))
        {
          break;
        }
      }
    }

LABEL_86:
    if (*(v71 + 16))
    {
      v113 = sub_26A5484D4(v99);
      if (v114)
      {
        v115 = *(*(v71 + 56) + 8 * v113);
        if (*(v115 + 16))
        {
          v97 = 0;
          v94 = v115 + 64;
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_21_21();
LABEL_90:
          if (v96)
          {
            goto LABEL_95;
          }

          while (1)
          {
            v116 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              goto LABEL_120;
            }

            if (v116 >= v71)
            {
              break;
            }

            v96 = *(v94 + 8 * v116);
            ++v97;
            if (v96)
            {
              v97 = v116;
LABEL_95:
              OUTLINED_FUNCTION_8_48();
              v118 = v99 + v117;
              if (__OFADD__(v99, v117))
              {
                goto LABEL_128;
              }

              if (v118 < v99)
              {
                goto LABEL_129;
              }

              if (v99 != v118)
              {
                v119 = v136[2];
                v120 = v99;
                while (v120 < v118)
                {
                  if (v119 && (v121 = sub_26A5484D4(v120), (v122 & 1) != 0))
                  {
                    v123 = v136[7] + 16 * v121;
                    if (*(v123 + 8))
                    {
                      goto LABEL_133;
                    }

                    OUTLINED_FUNCTION_6_42(v123);
                    if (v106)
                    {
                      goto LABEL_98;
                    }
                  }

                  else if (v118 == ++v120)
                  {
                    goto LABEL_98;
                  }
                }

LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
LABEL_120:
                __break(1u);
LABEL_121:
                __break(1u);
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
              }

LABEL_98:
              OUTLINED_FUNCTION_15_24();
              if (!(v107 ^ v26 | v106))
              {
LABEL_74:

LABEL_113:

                return 0;
              }

              goto LABEL_90;
            }
          }

          OUTLINED_FUNCTION_19_20();
        }
      }
    }

    if (++v98 == v97)
    {
      goto LABEL_112;
    }
  }

  v97 = 0;
  v94 = v102 + 64;
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_21_21();
  while (2)
  {
    if (v96)
    {
      goto LABEL_70;
    }

    do
    {
      v103 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_119;
      }

      if (v103 >= v71)
      {
        OUTLINED_FUNCTION_19_20();
        goto LABEL_86;
      }

      v96 = *(v94 + 8 * v103);
      ++v97;
    }

    while (!v96);
    v97 = v103;
LABEL_70:
    OUTLINED_FUNCTION_8_48();
    v105 = v99 + v104;
    if (__OFADD__(v99, v104))
    {
      goto LABEL_126;
    }

    if (v105 < v99)
    {
      goto LABEL_127;
    }

    if (v99 == v105)
    {
LABEL_73:
      OUTLINED_FUNCTION_15_24();
      if (!(v107 ^ v26 | v106))
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v108 = v135[2];
  v109 = v99;
  while (1)
  {
    while (1)
    {
      if (v109 >= v105)
      {
        __break(1u);
        goto LABEL_116;
      }

      if (v108)
      {
        v110 = sub_26A5484D4(v109);
        if (v111)
        {
          break;
        }
      }

      if (v105 == ++v109)
      {
        goto LABEL_73;
      }
    }

    v112 = v135[7] + 16 * v110;
    if (*(v112 + 8))
    {
      break;
    }

    OUTLINED_FUNCTION_6_42(v112);
    if (v106)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  result = swift_willThrow();
  __break(1u);
  return result;
}

unint64_t sub_26A69714C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_26A5484D4(*(*(v3 + 48) + 8 * v12));
    if (v15)
    {
      result = sub_26A697388(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A697258(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(v3 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    result = sub_26A5484D4(v13);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = *(a2 + 56) + 16 * result;
    if (*(v18 + 8))
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 == v15)
      {
        v19 = v16;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A697388(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_26A5484D4(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_26A697490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_26A7A2FE4();
  v4 = sub_26A826640(&v6, v3 + 4, v1, a1);

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_26A697678(&v6);
  return v6;
}

unint64_t sub_26A697590(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  v3 = *(result + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (1)
  {
    v9 = v4;
    if (!v7)
    {
      break;
    }

LABEL_10:
    if (v3)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      result = sub_26A5484D4(*(*(v2 + 48) + ((v4 << 9) | (8 * v10))));
      if (v11)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v7 = *(v2 + 64 + 8 * v4);
    ++v9;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_26A697678(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A544F28(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v8[0] = v2 + 32;
  v8[1] = v7;
  sub_26A6976E4(v8);
  *a1 = v2;
}

void sub_26A6976E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A697834(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A6977D8(0, v2, 1, a1);
  }
}

uint64_t sub_26A6977D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

void sub_26A697834(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
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

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
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
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
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

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0DBC(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_26A7A0DBC(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_26A697E00((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_26A697CD4(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_26A697CD4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A544B3C(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_26A697E00((*a3 + 8 * *v12), (*a3 + 8 * *v14), (*a3 + 8 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26A697E00(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_26A7A5640(a1, a2 - a1, a4);
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

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
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

  sub_26A7A5640(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
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

void (*sub_26A697F74(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_26A698880(v4);
  v4[9] = sub_26A698210(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_26A698004;
}

void sub_26A698004(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = OUTLINED_FUNCTION_20_20();
  v2(v3);

  free(v1);
}

void (*sub_26A698060(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = sub_26A84ACC8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_26A6988A8(v4);
  v4[12] = sub_26A6983E4(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_26A69817C;
}

void sub_26A69817C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = OUTLINED_FUNCTION_20_20();
  v2(v6);
  free(v3);

  free(v1);
}

void (*sub_26A698210(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = *v3;
  v9 = sub_26A5484D4(a2);
  *(v7 + 32) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CE0, &qword_26A86E6E8);
  if (sub_26A8523E8())
  {
    v13 = sub_26A5484D4(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[3] = v11;
  if (v12)
  {
    v15 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v15 = 0;
  }

  *v7 = v15;
  return sub_26A698338;
}

void sub_26A698338(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_26A655FD8(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_26A852408();
  }

  free(v1);
}

void (*sub_26A6983E4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x78uLL);
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v8 = sub_26A84ACC8();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v7[4] = __swift_coroFrameAllocStub(*(v9 + 64));
  v10 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v7[5] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[6] = v11;
  v13 = *(v11 + 64);
  v7[7] = __swift_coroFrameAllocStub(v13);
  v7[8] = __swift_coroFrameAllocStub(v13);
  v7[9] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60) - 8) + 64);
  v7[10] = __swift_coroFrameAllocStub(v14);
  v7[11] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v7[12] = v15;
  v16 = *v3;
  v17 = sub_26A5485E4();
  *(v7 + 112) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEC8, &unk_26A868440);
  if (sub_26A8523E8())
  {
    v21 = sub_26A5485E4();
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[13] = v19;
  if (v20)
  {
    sub_26A698D10(*(*v4 + 56) + *(v12 + 72) * v19, v15);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_26A698684;
}

void sub_26A698684(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = v2[5];
  if (a2)
  {
    v5 = v2[10];
    sub_26A698C38(v3, v5);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[10];
    if (EnumTagSinglePayload != 1)
    {
      v9 = v2[1];
      sub_26A698D10(v8, v2[8]);
      v10 = *v9;
      v11 = v2[13];
      v12 = v2[8];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v13 = v2[7];
        v14 = v2[4];
        (*(v2[3] + 16))(v14, *v2, v2[2]);
        sub_26A698D10(v12, v13);
        sub_26A656338(v11, v14, v13, v10);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = v2[11];
    sub_26A698C38(v3, v15);
    v16 = __swift_getEnumTagSinglePayload(v15, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[11];
    if (v16 != 1)
    {
      v17 = v2[1];
      sub_26A698D10(v8, v2[9]);
      v10 = *v17;
      v11 = v2[13];
      v12 = v2[9];
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_26A698D10(v12, *(v10 + 56) + *(v2[6] + 72) * v11);
      goto LABEL_10;
    }
  }

  sub_26A698CA8(v8);
  if (v7)
  {
    (*(v2[3] + 8))(*(*v2[1] + 48) + *(v2[3] + 72) * v2[13], v2[2]);
    sub_26A625378();
    sub_26A852408();
  }

LABEL_10:
  v18 = v2[11];
  v19 = v2[12];
  v21 = v2[9];
  v20 = v2[10];
  v23 = v2[7];
  v22 = v2[8];
  v24 = v2[4];
  sub_26A698CA8(v19);
  free(v19);
  free(v18);
  free(v20);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_26A698880(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26A698DCC;
}

uint64_t (*sub_26A6988A8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26A6988D0;
}

unint64_t *sub_26A6988DC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11) >= 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_26A698A3C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_26A698A3C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_26A6989C8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v4 = OUTLINED_FUNCTION_14_29();
    v6 = sub_26A6988DC(v4, v5, a3);

    return v6;
  }

  return result;
}

uint64_t sub_26A698A3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3030, &unk_26A872B50);
  result = sub_26A852488();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_26A8526A8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26A698C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A698CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A698D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26A698DB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_5_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
}

void sub_26A698FC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    v23[3] = &type metadata for PartialText;
    v23[4] = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v23[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v23[0] + 16);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v21 + 1) = &type metadata for PartialText;
      v22 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v20 = swift_allocObject();
      RFTextProperty.asPartialText()(v20 + 16);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    v10 = [v2 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v18 + 1) = &type metadata for PartialText;
      v19 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v17 = swift_allocObject();
      RFTextProperty.asPartialText()(v17 + 16);
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    v12 = [v2 text_4];
    if (v12)
    {
      v13 = v12;
      *(&v15 + 1) = &type metadata for PartialText;
      v16 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v14 = swift_allocObject();
      RFTextProperty.asPartialText()(v14 + 16);
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    ReferenceFootnoteView.init(text1:text2:text3:text4:addTint:)(v23, [v2 addTint], a1, &v20, &v17, &v14);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13718;
    *(v8 + 16) = 0;
    swift_willThrow();
    v9 = v1;
  }
}

unint64_t sub_26A69920C()
{
  result = qword_2803AFD80;
  if (!qword_2803AFD80)
  {
    type metadata accessor for ReferenceFootnoteView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD80);
  }

  return result;
}

void sub_26A69928C(void *a1@<X8>)
{
  v3 = [v1 button_1];
  if (v3)
  {
    v4 = v3;
    v15[3] = &type metadata for SearchUIButtonView;
    v15[4] = &off_287B20490;
    v15[0] = swift_allocObject();
    sub_26A6F9608(0, 0, v15[0] + 16, v5, v6, v7, v8, v9, v10);
    v11 = sub_26A851248();
    v14[3] = MEMORY[0x277CE11C8];
    v14[4] = &protocol witness table for AnyView;
    v14[0] = v11;
    BinaryButtonView.init(primaryButton:secondaryButton:)(v15, v14, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v12 = v1;
    *(v12 + 8) = &unk_287B13898;
    *(v12 + 16) = 0;
    swift_willThrow();
    v13 = v1;
  }
}

unint64_t sub_26A6993E0()
{
  result = qword_2803B3038;
  if (!qword_2803B3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3038);
  }

  return result;
}

uint64_t SummaryItemThumbnailPairView.init(thumbnail1:thumbnail2:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t SummaryItemThumbnailPairView.init(thumbnail1:thumbnail2:verticalSeparatorView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *SummaryItemThumbnailPairView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3040, &qword_26A872C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __src - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  *v5 = sub_26A84FA78();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3048, &qword_26A872C68);
  sub_26A699590(v6, v7, v8, &v5[*(v9 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A699964(v5, a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3050, &qword_26A872C70);
  return memcpy((a1 + *(v10 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A699590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v48 = a4;
  v49 = a2;
  v5 = sub_26A84B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v40 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v40 - v18);
  v20 = *(v6 + 104);
  v44 = *MEMORY[0x277D62B50];
  v43 = v20;
  v20(v8, v17);
  KeyPath = swift_getKeyPath();
  v45 = v9;
  v22 = (v19 + *(v9 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
  v23 = *(v41 + 28);
  v42 = *(v6 + 32);
  v42(v22 + v23, v8, v5);
  __swift_storeEnumTagSinglePayload(v22 + v23, 0, 1, v5);
  *v22 = KeyPath;
  v24 = v49;
  *v19 = a1;
  if (a1 && v24)
  {

    sub_26A850408();
    sub_26A8503A8();
    v25 = sub_26A850428();

    v26 = sub_26A84FED8();
    v52 = MEMORY[0x277CE04F8];
    v53 = MEMORY[0x277CE04E8];
    v51 = v26;
    v50 = v25;
    sub_26A607A7C();
    v28 = v27;
    sub_26A57E57C(&v50);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v43(v8, v44, v5);
  v30 = swift_getKeyPath();
  v31 = (v15 + *(v45 + 36));
  v32 = *(v41 + 28);
  v42(v31 + v32, v8, v5);
  __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v5);
  *v31 = v30;
  *v15 = v49;
  v33 = v46;
  sub_26A699AF4(v19, v46);
  v34 = v47;
  sub_26A699AF4(v15, v47);
  v35 = v48;
  sub_26A699AF4(v33, v48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3068, &qword_26A872D58);
  v37 = v35 + v36[12];
  *v37 = 0;
  *(v37 + 8) = 1;
  *(v35 + v36[16]) = v29;
  v38 = v35 + v36[20];
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_26A699AF4(v34, v35 + v36[24]);

  sub_26A699B64(v15);
  sub_26A699B64(v19);
  sub_26A699B64(v34);

  return sub_26A699B64(v33);
}

uint64_t sub_26A699964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3040, &qword_26A872C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A699A04()
{
  result = qword_2803B3058;
  if (!qword_2803B3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3050, &qword_26A872C70);
    sub_26A699A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3058);
  }

  return result;
}

unint64_t sub_26A699A90()
{
  result = qword_2803B3060;
  if (!qword_2803B3060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3040, &qword_26A872C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3060);
  }

  return result;
}

uint64_t sub_26A699AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A699B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReferenceButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_26A84E098();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = sub_26A84B8A8();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = sub_26A84AD78();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_41();
  v19 = sub_26A84BE98();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a2, a1, v19);
  v24[3] = sub_26A84BAB8();
  v24[4] = MEMORY[0x277D62EC8];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_26A84BE88();
  v23[3] = sub_26A84B888();
  v23[4] = MEMORY[0x277D62DE8];
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_26A84BE68();
  sub_26A84BE58();
  (*(v13 + 104))(v17, *MEMORY[0x277D62E10], v11);
  (*(v6 + 104))(v10, *MEMORY[0x277D636A0], v22);
  type metadata accessor for ReferenceButtonView(0);
  sub_26A84E128();
  return (*(v20 + 8))(a1, v19);
}

uint64_t type metadata accessor for ReferenceButtonView(uint64_t a1)
{
  result = qword_2803B3080;
  if (!qword_2803B3080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReferenceButtonView(0) + 20);
  v4 = type metadata accessor for ButtonView(0);
  v5 = *(v4 + 20);
  v6 = sub_26A84E158();
  (*(*(v6 - 8) + 16))(a1 + v5, v1 + v3, v6);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v7 = (a1 + *(v4 + 24));
  *v7 = 0;
  v7[1] = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26A68CB2C;
  *(v8 + 24) = 0;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3070, &unk_26A872D88) + 36);
  *(v9 + 16) = swift_getKeyPath();
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v11 = *(v10 + 40);
  *(v9 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v12 = v9 + *(v10 + 44);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *v9 = sub_26A4D1F7C;
  *(v9 + 8) = v8;
  return result;
}

uint64_t sub_26A69A0A0(uint64_t a1)
{
  result = sub_26A69A260(&qword_2803B3078, MEMORY[0x277D631E8], MEMORY[0x277D631E0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A69A120(uint64_t a1)
{
  result = sub_26A84BE98();
  if (v2 <= 0x3F)
  {
    result = sub_26A84E158();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26A69A1A4()
{
  result = qword_2803B3090;
  if (!qword_2803B3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3070, &unk_26A872D88);
    sub_26A69A260(&qword_2803ABC10, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    sub_26A5AAEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3090);
  }

  return result;
}

uint64_t sub_26A69A260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TableRowCellWatchView(uint64_t a1)
{
  result = qword_2803B3098;
  if (!qword_2803B3098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A69A31C(uint64_t a1)
{
  type metadata accessor for TableRowWatchCellViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_26A69A3C0(319);
    if (v2 <= 0x3F)
    {
      sub_26A5F203C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A69A3C0(uint64_t a1)
{
  if (!qword_2803B30A8)
  {
    type metadata accessor for TableRowWatchState(255);
    sub_26A69BC3C(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
    v1 = sub_26A84F688();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B30A8);
    }
  }
}

uint64_t sub_26A69A470@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30B8, &qword_26A872EE8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v44 = type metadata accessor for TableRowCellWatchView(0);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30C0, &qword_26A872EF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30C8, &qword_26A872EF8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30D0, &qword_26A872F00);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v45 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30D8, &qword_26A872F08);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  if (*(v1 + 8) == 1)
  {
    v39 = v2;
    v40 = v5;
    sub_26A69A9DC();
    sub_26A69A9DC();
    sub_26A69B868(v1, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v24 = swift_allocObject();
    sub_26A69B8CC(v7, v24 + v23);
    v25 = sub_26A851448();
    v27 = v26;
    v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3120, &qword_26A872F30) + 36)];
    *v28 = sub_26A8027E0;
    v28[1] = 0;
    v28[2] = v25;
    v28[3] = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_26A69B930;
    *(v29 + 24) = v24;
    v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3128, &qword_26A872F38) + 36)];
    *v30 = sub_26A52E998;
    v30[1] = v29;
    *&v10[*(v42 + 36)] = 0;
    if (*(v1 + *(v44 + 20)))
    {
      sub_26A851448();
      sub_26A84F028();
      sub_26A4DBDB4(v10, v13, &qword_2803B30C0, &qword_26A872EF0);
      v31 = &v13[*(v43 + 36)];
      v32 = v48;
      *v31 = v47;
      *(v31 + 1) = v32;
      *(v31 + 2) = v49;
      v33 = sub_26A851448();
      v35 = v34;
      v36 = &v19[*(v16 + 36)];
      sub_26A4DBDB4(v13, v36, &qword_2803B30C8, &qword_26A872EF8);
      v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3118, &unk_26A872F20) + 36));
      *v37 = v33;
      v37[1] = v35;
      sub_26A4DBDB4(v45, v19, &qword_2803B30D0, &qword_26A872F00);
      sub_26A4DBDB4(v19, v22, &qword_2803B30D8, &qword_26A872F08);
      sub_26A4DBD68(v22, v40, &qword_2803B30D8, &qword_26A872F08);
      swift_storeEnumTagMultiPayload();
      sub_26A69B66C();
      sub_26A84FDF8();
      return sub_26A4DBD10(v22, &qword_2803B30D8, &qword_26A872F08);
    }

    else
    {
      type metadata accessor for TableRowWatchState(0);
      sub_26A69BC3C(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
      result = sub_26A84F668();
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26A69B66C();
    return sub_26A84FDF8();
  }

  return result;
}

uint64_t sub_26A69A9DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B30F8, &qword_26A872F10);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3130, &qword_26A872F40);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  sub_26A60A310();
  if (v7)
  {
    swift_storeEnumTagMultiPayload();
    sub_26A69B7B0();
    return sub_26A84FDF8();
  }

  else
  {
    *v3 = sub_26A84FC08();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3138, &qword_26A872F48);
    sub_26A69ACA0(v0, &v3[*(v9 + 44)]);
    v10 = sub_26A850298();
    type metadata accessor for TableRowCellWatchView(0);
    sub_26A84ED48();
    v11 = &v3[*(v1 + 36)];
    *v11 = v10;
    *(v11 + 1) = v12;
    *(v11 + 2) = v13;
    *(v11 + 3) = v14;
    *(v11 + 4) = v15;
    v11[40] = 0;
    sub_26A4DBD68(v3, v6, &qword_2803B30F8, &qword_26A872F10);
    swift_storeEnumTagMultiPayload();
    sub_26A69B7B0();
    sub_26A84FDF8();
    return sub_26A4DBD10(v3, &qword_2803B30F8, &qword_26A872F10);
  }
}

uint64_t sub_26A69ABD4(unint64_t *a1, double a2)
{
  if (*(a1 + *(type metadata accessor for TableRowCellWatchView(0) + 20)))
  {
    v4 = *a1;

    sub_26A5CC2E4(v4, a2);
  }

  else
  {
    type metadata accessor for TableRowWatchState(0);
    sub_26A69BC3C(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A69ACA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3140, &qword_26A872F50);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_26A84F3A8();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3148, &unk_26A872F58);
  MEMORY[0x28223BE20](v43);
  v38 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98, &unk_26A865370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v42 = sub_26A84E4A8();
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3150, &qword_26A872F68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  v26 = type metadata accessor for TableRowWatchCellViewModel(0);
  v27 = a1;
  sub_26A4DBD68(a1 + *(v26 + 28), v13, &qword_2803ACE98, &unk_26A865370);
  v28 = sub_26A84AE88();
  if (__swift_getEnumTagSinglePayload(v13, 1, v28) == 1)
  {
    sub_26A4DBD10(v13, &qword_2803ACE98, &unk_26A865370);
    v29 = 1;
    v30 = v27;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v25, v29, 1, v43);
    v33 = *(v30 + *(type metadata accessor for TableRowCellWatchView(0) + 28));
    *v7 = sub_26A84FA78();
    *(v7 + 1) = v33;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3158, &qword_26A872F70);
    sub_26A69B274(v30);
    sub_26A4DBD68(v25, v22, &qword_2803B3150, &qword_26A872F68);
    v34 = v44;
    sub_26A4DBD68(v7, v44, &qword_2803B3140, &qword_26A872F50);
    v35 = v45;
    sub_26A4DBD68(v22, v45, &qword_2803B3150, &qword_26A872F68);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3160, &unk_26A872F78);
    sub_26A4DBD68(v34, v35 + *(v36 + 48), &qword_2803B3140, &qword_26A872F50);
    sub_26A4DBD10(v7, &qword_2803B3140, &qword_26A872F50);
    sub_26A4DBD10(v25, &qword_2803B3150, &qword_26A872F68);
    sub_26A4DBD10(v34, &qword_2803B3140, &qword_26A872F50);
    return sub_26A4DBD10(v22, &qword_2803B3150, &qword_26A872F68);
  }

  sub_26A84AE68();
  (*(*(v28 - 8) + 8))(v13, v28);
  (*(v14 + 32))(v19, v16, v42);
  if (*(v27 + *(type metadata accessor for TableRowCellWatchView(0) + 20)))
  {
    v30 = v27;

    v31 = v39;
    sub_26A72003C(v39);
    v32 = v38;
    sub_26A5CCB04(v19, v31, v38);

    (*(v40 + 8))(v31, v41);
    (*(v14 + 8))(v19, v42);
    sub_26A4DBDB4(v32, v25, &qword_2803B3148, &unk_26A872F58);
    v29 = 0;
    goto LABEL_5;
  }

  type metadata accessor for TableRowWatchState(0);
  sub_26A69BC3C(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A69B274(uint64_t a1)
{
  v2 = type metadata accessor for TableRowCellWatchView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(*(a1 + 16) + 16);
  v9[0] = 0;
  v9[1] = v5;
  swift_getKeyPath();
  sub_26A69B868(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26A69B8CC(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3148, &unk_26A872F58);
  sub_26A4EEF40();
  sub_26A69BBB0();
  return sub_26A8512F8();
}

uint64_t sub_26A69B3F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = sub_26A84F3A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84E4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*(a2 + *(type metadata accessor for TableRowCellWatchView(0) + 20)))
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *(a2 + 16);
      if (v13 < *(v14 + 16))
      {
        (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v9);

        sub_26A72003C(v8);
        sub_26A5CCB04(v12, v8, v17);

        (*(v6 + 8))(v8, v5);
        return (*(v10 + 8))(v12, v9);
      }
    }

    __break(1u);
  }

  type metadata accessor for TableRowWatchState(0);
  sub_26A69BC3C(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

unint64_t sub_26A69B66C()
{
  result = qword_2803B30E0;
  if (!qword_2803B30E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B30D8, &qword_26A872F08);
    sub_26A69B724();
    sub_26A4DBCC8(&qword_2803B3110, &qword_2803B3118, &unk_26A872F20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B30E0);
  }

  return result;
}

unint64_t sub_26A69B724()
{
  result = qword_2803B30E8;
  if (!qword_2803B30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B30D0, &qword_26A872F00);
    sub_26A69B7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B30E8);
  }

  return result;
}

unint64_t sub_26A69B7B0()
{
  result = qword_2803B30F0;
  if (!qword_2803B30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B30F8, &qword_26A872F10);
    sub_26A4DBCC8(&qword_2803B3100, &qword_2803B3108, &qword_26A872F18, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B30F0);
  }

  return result;
}

uint64_t sub_26A69B868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableRowCellWatchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A69B8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableRowCellWatchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A69B930(double a1)
{
  v3 = *(type metadata accessor for TableRowCellWatchView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_26A69ABD4(v4, a1);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for TableRowCellWatchView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(type metadata accessor for TableRowWatchCellViewModel(0) + 28);
  v4 = sub_26A84AE88();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A69BB30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TableRowCellWatchView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A69B3F8(a1, v6, a2);
}

unint64_t sub_26A69BBB0()
{
  result = qword_2803B3168;
  if (!qword_2803B3168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3148, &unk_26A872F58);
    sub_26A5CF9C0();
    sub_26A5CFC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3168);
  }

  return result;
}

uint64_t sub_26A69BC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A69BC84()
{
  result = qword_2803B3170;
  if (!qword_2803B3170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3178, &qword_26A872FC8);
    sub_26A69B66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3170);
  }

  return result;
}

uint64_t sub_26A69BD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A62FFBC();
  *a1 = v3;
  return result;
}

uint64_t sub_26A69BD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A63001C();
  *a1 = v3;
  return result;
}

uint64_t sub_26A69BDE0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  KeyPath = swift_getKeyPath();
  v35 = 0;
  v8 = swift_getKeyPath();
  v34 = 0;
  v9 = swift_getKeyPath();
  v33 = 0;
  v10 = swift_getKeyPath();
  v32 = 0;
  v11 = swift_getKeyPath();
  v31 = 0;
  v12 = swift_getKeyPath();
  v30 = 0;
  v13 = swift_getKeyPath();
  v29 = 0;
  v14 = swift_getKeyPath();
  v28 = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_66();
  __src[0] = sub_26A69E6B4;
  __src[1] = v6;
  __src[2] = KeyPath;
  LOBYTE(__src[3]) = v15;
  __src[4] = v8;
  LOBYTE(__src[5]) = v16;
  __src[6] = v9;
  LOBYTE(__src[7]) = v17;
  __src[8] = v10;
  LOBYTE(__src[9]) = v18;
  __src[10] = v11;
  LOBYTE(__src[11]) = v19;
  __src[12] = v12;
  LOBYTE(__src[13]) = v20;
  __src[14] = v13;
  LOBYTE(__src[15]) = v21;
  __src[16] = v14;
  LOBYTE(__src[17]) = v22;
  __src[18] = v23;
  LOBYTE(__src[19]) = 0;
  MEMORY[0x26D662ED0](__src, a1, &type metadata for ComponentPreferredSpacingModifier, a2);
  memcpy(__dst, __src, 0x99uLL);
  return sub_26A69E31C(__dst);
}

uint64_t View.lastComponentBottomSpacing(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t View.componentSpacing(top:bottom:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  *v10 = a3;
  *&v10[1] = a4;
  LOBYTE(v10[2]) = 1;
  v10[3] = swift_getKeyPath();
  LOBYTE(v10[4]) = 0;
  v10[5] = swift_getKeyPath();
  LOBYTE(v10[6]) = 0;
  v10[7] = swift_getKeyPath();
  LOBYTE(v10[8]) = 0;
  v10[9] = swift_getKeyPath();
  LOBYTE(v10[10]) = 0;
  v10[11] = KeyPath;
  LOBYTE(v10[12]) = 0;
  MEMORY[0x26D662ED0](v10, a1, &type metadata for UserPreferredComponentSpacingModifier, a2);
  memcpy(__dst, v10, 0x61uLL);
  return sub_26A69C14C(__dst);
}

uint64_t sub_26A69C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v34 = 0;
  v7 = swift_getKeyPath();
  v33 = 0;
  v8 = swift_getKeyPath();
  v32 = 0;
  v9 = swift_getKeyPath();
  v31 = 0;
  v10 = swift_getKeyPath();
  v30 = 0;
  v11 = swift_getKeyPath();
  v29 = 0;
  v12 = swift_getKeyPath();
  v28 = 0;
  v13 = swift_getKeyPath();
  v27 = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_66();
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = KeyPath;
  LOBYTE(__src[3]) = v14;
  __src[4] = v7;
  LOBYTE(__src[5]) = v15;
  __src[6] = v8;
  LOBYTE(__src[7]) = v16;
  __src[8] = v9;
  LOBYTE(__src[9]) = v17;
  __src[10] = v10;
  LOBYTE(__src[11]) = v18;
  __src[12] = v11;
  LOBYTE(__src[13]) = v19;
  __src[14] = v12;
  LOBYTE(__src[15]) = v20;
  __src[16] = v13;
  LOBYTE(__src[17]) = v21;
  __src[18] = v22;
  LOBYTE(__src[19]) = 0;

  MEMORY[0x26D662ED0](__src, a3, &type metadata for ComponentPreferredSpacingModifier, a4);
  memcpy(__dst, __src, 0x99uLL);
  return sub_26A69E31C(__dst);
}

uint64_t View.isLastComponent(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26A8509A8();
}

unint64_t sub_26A69C384()
{
  result = qword_2803B31C0;
  if (!qword_2803B31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B31C0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_26A84F4F8();
  sub_26A4DBCC8(a4, a2, a3, MEMORY[0x277CE0868]);
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

uint64_t sub_26A69C478(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A69C4B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A69C538(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 97))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A69C584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26A69C610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v126 = a1;
  v127 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B31D8, &qword_26A873678);
  MEMORY[0x28223BE20](v117);
  v116 = &v102 - v3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B31E0, &qword_26A873680);
  MEMORY[0x28223BE20](v105);
  v104 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B31E8, &qword_26A873688);
  v124 = *(v5 - 8);
  v125 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v102 - v6;
  v8 = sub_26A84F988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 8);
  v118 = *v2;
  v119 = v13;
  v14 = *(v2 + 16);
  v123 = *(v2 + 24);
  v15 = *(v2 + 32);
  v16 = *(v2 + 40);
  v121 = *(v2 + 48);
  v122 = v14;
  LODWORD(v14) = *(v2 + 56);
  v17 = *(v2 + 64);
  v113 = *(v2 + 72);
  v115 = *(v2 + 80);
  v120 = *(v2 + 88);
  v109 = *(v2 + 96);
  v108 = *(v2 + 104);
  v18 = *(v2 + 112);
  LODWORD(v13) = *(v2 + 120);
  v107 = *(v2 + 128);
  v106 = *(v2 + 136);
  v112 = *(v2 + 144);
  v111 = *(v2 + 152);
  v110 = v14;
  v114 = v17;
  if (v13 != 1)
  {
    v103 = v15;

    sub_26A851EA8();
    v23 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    v24 = v9;
    v25 = *(v9 + 8);
    v26 = v12;
    v27 = v8;
    v25(v12, v8);
    v15 = v103;
    if (v129 == 1)
    {
      goto LABEL_8;
    }

LABEL_4:
    v128 = v27;
    if (v16)
    {
      v19 = v24;
      v20 = v121;
      v21 = v122;
      v22 = v120;
      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v30 = v15;

      sub_26A851EA8();
      v31 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v30, 0);
      v19 = v24;
      (*(v24 + 8))(v26, v27);
      v20 = v121;
      v21 = v122;
      v22 = v120;
      if (v129 != 1)
      {
        goto LABEL_17;
      }
    }

    v32 = v21;
    if ((v123 & 1) == 0)
    {

      sub_26A851EA8();
      v33 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v21, 0);
      (*(v19 + 8))(v26, v128);
      v32 = v129;
    }

    if (!sub_26A61B05C(v32, &unk_287B13248))
    {
      v34 = v21;
      if ((v123 & 1) == 0)
      {

        sub_26A851EA8();
        v35 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v21, 0);
        (*(v19 + 8))(v26, v128);
        v34 = v129;
      }

      if (!sub_26A61B05C(v34, &unk_287B13068))
      {
        v42 = swift_allocObject();
        v43 = v119;
        *(v42 + 16) = v118;
        *(v42 + 24) = v43;
        v44 = v104;
        (*(v124 + 16))(v104, v126, v125);
        v45 = &v44[*(v105 + 36)];
        *v45 = sub_26A69DFF4;
        v45[1] = v42;
        sub_26A69E02C();

        goto LABEL_9;
      }
    }

LABEL_17:
    if (v111)
    {
      v36 = v115;
      if ((v112 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v37 = v112;

      sub_26A851EA8();
      v38 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v37, 0);
      (*(v19 + 8))(v26, v128);
      v36 = v115;
      if (v129 != 1)
      {
        goto LABEL_29;
      }
    }

    if (v106)
    {
      if (v107)
      {
LABEL_29:
        v47 = v22;
        if (v22)
        {
          v131 = v36;
          v48 = v36;
        }

        else
        {

          sub_26A851EA8();
          v49 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v36, 0);
          (*(v19 + 8))(v26, v128);
          v48 = v131;
        }

        v50 = v114;
        if ((v113 & 1) == 0)
        {

          sub_26A851EA8();
          v51 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v50, 0);
          (*(v19 + 8))(v26, v128);
          v50 = v129;
        }

        LOBYTE(v129) = v48;
        BYTE1(v129) = 74;
        v130 = v50;
        v118(&v129, v10);
        v52 = v110;
        if (v110)
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {

          sub_26A851EA8();
          v53 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v20, 0);
          (*(v19 + 8))(v26, v128);
          if (v129 != 1)
          {
            goto LABEL_42;
          }
        }

        v54 = v21;
        if ((v123 & 1) == 0)
        {

          sub_26A851EA8();
          v55 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v21, 0);
          (*(v19 + 8))(v26, v128);
          v54 = v129;
        }

        if (sub_26A61B05C(v54, &unk_287B13B48))
        {
          v56 = v126;
          v29 = v127;
          v57 = v117;
          v58 = v116;
          v60 = v124;
          v59 = v125;
LABEL_56:
          v66 = sub_26A850258();
          sub_26A84ED48();
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;
          (*(v60 + 16))(v58, v56, v59);
          v75 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B31F0, &qword_26A873690) + 36)];
          *v75 = v66;
          *(v75 + 1) = v68;
          *(v75 + 2) = v70;
          *(v75 + 3) = v72;
          *(v75 + 4) = v74;
          v75[40] = 0;
          v76 = sub_26A850268();
          sub_26A84ED48();
          v77 = &v58[*(v57 + 36)];
          *v77 = v76;
          *(v77 + 1) = v78;
          *(v77 + 2) = v79;
          *(v77 + 3) = v80;
          *(v77 + 4) = v81;
          v77[40] = 0;
          sub_26A69E110(&qword_28157FDA8, &qword_2803B31D8, &qword_26A873678, sub_26A69DF3C);
LABEL_57:
          result = sub_26A851248();
          goto LABEL_58;
        }

LABEL_42:
        if (v123)
        {
          if (v52)
          {
            goto LABEL_44;
          }
        }

        else
        {

          sub_26A851EA8();
          v61 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v21, 0);
          (*(v19 + 8))(v26, v128);
          v21 = v129;
          if (v52)
          {
LABEL_44:
            if (v47)
            {
LABEL_45:
              LOBYTE(v129) = v36;
LABEL_49:
              if (v108)
              {
                v131 = v109;
              }

              else
              {
                v64 = v109;

                sub_26A851EA8();
                v65 = sub_26A8501F8();
                sub_26A84EA78();

                sub_26A84F978();
                swift_getAtKeyPath();
                sub_26A49035C(v64, 0);
                (*(v19 + 8))(v26, v128);
              }

              v56 = v126;
              v29 = v127;
              v57 = v117;
              v58 = v116;
              v60 = v124;
              v59 = v125;
              if (!sub_26A61B05C(v21, &unk_287B13B08) || sub_26A61B05C(v21, &unk_287B13068) || ((v20 ^ 1) & 1) != 0)
              {
                sub_26A61B05C(v21, &unk_287B13068);
              }

              goto LABEL_56;
            }

LABEL_48:

            sub_26A851EA8();
            v63 = sub_26A8501F8();
            sub_26A84EA78();

            sub_26A84F978();
            swift_getAtKeyPath();
            sub_26A49035C(v36, 0);
            (*(v19 + 8))(v26, v128);
            goto LABEL_49;
          }
        }

        sub_26A851EA8();
        v62 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v20, 0);
        (*(v19 + 8))(v26, v128);
        LODWORD(v20) = v129;
        if (v47)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v39 = v107;

      sub_26A851EA8();
      v40 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v39, 0);
      (*(v19 + 8))(v26, v128);
      if (v129)
      {
        goto LABEL_29;
      }
    }

    sub_26A4D7E10();
    switch(sub_26A63CD18(v41))
    {
      case 1u:

        goto LABEL_29;
      case 4u:
        break;
      default:
        v46 = sub_26A852598();

        if (v46)
        {
          goto LABEL_29;
        }

        break;
    }

    if (v22)
    {
      v131 = v36;
    }

    else
    {

      sub_26A851EA8();
      v82 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v36, 0);
      (*(v19 + 8))(v26, v128);
      LOBYTE(v36) = v131;
    }

    v83 = v114;
    if ((v113 & 1) == 0)
    {

      sub_26A851EA8();
      v84 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v83, 0);
      (*(v19 + 8))(v26, v128);
      v83 = v129;
    }

    v29 = v127;
    LOBYTE(v129) = v36;
    BYTE1(v129) = 74;
    v130 = v83;
    (v118)(&v129);
    v85 = sub_26A850258();
    sub_26A84ED48();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v116;
    (*(v124 + 16))(v116, v126, v125);
    v95 = &v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B31F0, &qword_26A873690) + 36)];
    *v95 = v85;
    *(v95 + 1) = v87;
    *(v95 + 2) = v89;
    *(v95 + 3) = v91;
    *(v95 + 4) = v93;
    v95[40] = 0;
    v96 = sub_26A850268();
    sub_26A84ED48();
    v97 = &v94[*(v117 + 36)];
    *v97 = v96;
    *(v97 + 1) = v98;
    *(v97 + 2) = v99;
    *(v97 + 3) = v100;
    *(v97 + 4) = v101;
    v97[40] = 0;
    sub_26A69E110(&qword_28157FDA8, &qword_2803B31D8, &qword_26A873678, sub_26A69DF3C);
    goto LABEL_57;
  }

  v26 = v12;
  v24 = v9;
  v27 = v8;
  if ((v18 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_8:
  (*(v124 + 16))(v7, v126, v125, v10);
  sub_26A4DBCC8(&qword_28157FBD8, &qword_2803B31E8, &qword_26A873688, MEMORY[0x277CE04B0]);
LABEL_9:
  result = sub_26A851248();
  v29 = v127;
LABEL_58:
  *v29 = result;
  return result;
}

uint64_t sub_26A69D798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v63 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3210, &qword_26A8736A0);
  MEMORY[0x28223BE20](v61);
  v59 = &v51[-v3];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3218, &qword_26A8736A8);
  MEMORY[0x28223BE20](v53);
  v5 = &v51[-v4];
  v6 = sub_26A84F988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v2;
  v10 = v2[1];
  v52 = *(v2 + 16);
  v12 = v2[3];
  LODWORD(v8) = *(v2 + 32);
  v60 = v2[5];
  v13 = *(v2 + 48);
  v56 = v2[7];
  v14 = *(v2 + 64);
  v54 = v13;
  v55 = v14;
  v58 = v2[9];
  v57 = *(v2 + 80);
  v15 = v2[11];
  v16 = *(v2 + 96);
  if (v8 == 1)
  {
    v17 = v7;
    v18 = v6;
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v12, 0);
    v17 = v7;
    v18 = v6;
    (*(v7 + 8))(v9, v6);
    if (v65 != 1)
    {
      goto LABEL_8;
    }
  }

  v20 = v15;
  if ((v16 & 1) == 0)
  {

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v17 + 8))(v9, v18);
    v20 = v65;
  }

  if (!sub_26A61B05C(v20, &unk_287B13248))
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3220, &qword_26A8736B0);
    (*(*(v48 - 8) + 16))(v5, v63, v48);
    v49 = &v5[*(v53 + 36)];
    *v49 = v11;
    *(v49 + 1) = v10;
    v49[16] = v52;
    sub_26A69E238();
    goto LABEL_25;
  }

LABEL_8:
  if (v16)
  {
    v22 = v17;
  }

  else
  {

    sub_26A851EA8();
    v23 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    v22 = v17;
    (*(v17 + 8))(v9, v18);
    v15 = v65;
  }

  v24 = v60;
  if (!v54)
  {

    sub_26A851EA8();
    v25 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v24, 0);
    (*(v22 + 8))(v9, v18);
    LODWORD(v24) = v65;
  }

  if (v55)
  {
    LOBYTE(v65) = v56;
  }

  else
  {
    v26 = v56;

    sub_26A851EA8();
    v27 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v26, 0);
    (*(v22 + 8))(v9, v18);
  }

  if (v57)
  {
    v64 = v58;
  }

  else
  {
    v28 = v58;

    sub_26A851EA8();
    v29 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v28, 0);
    (*(v22 + 8))(v9, v18);
  }

  if (!sub_26A61B05C(v15, &unk_287B13B08) || sub_26A61B05C(v15, &unk_287B13068) || ((v24 ^ 1) & 1) != 0)
  {
    sub_26A61B05C(v15, &unk_287B13068);
  }

  v30 = sub_26A850258();
  sub_26A84ED48();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3220, &qword_26A8736B0);
  v40 = v59;
  (*(*(v39 - 8) + 16))(v59, v63, v39);
  v41 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3228, &qword_26A8736B8) + 36)];
  *v41 = v30;
  *(v41 + 1) = v32;
  *(v41 + 2) = v34;
  *(v41 + 3) = v36;
  *(v41 + 4) = v38;
  v41[40] = 0;
  v42 = sub_26A850268();
  sub_26A84ED48();
  v43 = &v40[*(v61 + 36)];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_26A69E110(&qword_2803B3230, &qword_2803B3210, &qword_26A8736A0, sub_26A69E180);
LABEL_25:
  result = sub_26A851248();
  *v62 = result;
  return result;
}

unint64_t sub_26A69DF3C()
{
  result = qword_28157FE30;
  if (!qword_28157FE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B31F0, &qword_26A873690);
    sub_26A4DBCC8(&qword_28157FBD8, &qword_2803B31E8, &qword_26A873688, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE30);
  }

  return result;
}

void sub_26A69DFF4(uint64_t a1@<X8>)
{
  *a1 = (*(v1 + 16))();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
}

unint64_t sub_26A69E02C()
{
  result = qword_2803B31F8;
  if (!qword_2803B31F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B31E0, &qword_26A873680);
    sub_26A4DBCC8(&qword_28157FBD8, &qword_2803B31E8, &qword_26A873688, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&qword_2803B3200, &qword_2803B3208, &qword_26A873698, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B31F8);
  }

  return result;
}

uint64_t sub_26A69E110(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A69E180()
{
  result = qword_2803B3238;
  if (!qword_2803B3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3228, &qword_26A8736B8);
    sub_26A4DBCC8(&qword_2803B3240, &qword_2803B3220, &qword_26A8736B0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3238);
  }

  return result;
}

unint64_t sub_26A69E238()
{
  result = qword_2803B3248;
  if (!qword_2803B3248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3218, &qword_26A8736A8);
    sub_26A4DBCC8(&qword_2803B3240, &qword_2803B3220, &qword_26A8736B0, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&qword_2803B3250, &qword_2803B3258, &qword_26A8736C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3248);
  }

  return result;
}

double sub_26A69E34C()
{
  result = *&xmmword_2803B3180;
  xmmword_2803B3198 = xmmword_2803B3180;
  byte_2803B31A8 = byte_2803B3190;
  return result;
}

double sub_26A69E370@<D0>(uint64_t a1@<X8>)
{
  if (qword_2803A8D00 != -1)
  {
    swift_once();
  }

  v2 = byte_2803B31A8;
  result = *&xmmword_2803B3198;
  *a1 = xmmword_2803B3198;
  *(a1 + 16) = v2;
  return result;
}

void sub_26A69E3D8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

double sub_26A69E3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260, &qword_26A8713F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = qword_281588988;
  *(v1 + 32) = qword_281588988;
  v3 = byte_281588990;
  *(v1 + 40) = byte_281588990;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = 0x4020000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v5 = sub_26A8516A8();
  sub_26A80D9E4(v5, v7, 16.0);
  result = *v7;
  xmmword_2803D2028 = v7[0];
  *&qword_2803D2038 = v7[1];
  qword_2803D2048 = v8;
  return result;
}

uint64_t sub_26A69E580(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xB6 && a1[16])
    {
      v2 = *a1 + 181;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 0x4A)
      {
        v4 = 74;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 75;
      if (v3 < 0x4A)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A69E5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB5)
  {
    *result = a2 - 182;
    *(result + 8) = 0;
    if (a3 >= 0xB6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 74;
    }
  }

  return result;
}

uint64_t sub_26A69E618(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A69E664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_26A69E724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail_1];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A69E80C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26A84BD28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v57 - v11;
  v13 = [v3 text_1];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v3 thumbnail_1];
  if (!v15)
  {
LABEL_7:

LABEL_8:
    sub_26A4E353C();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = &unk_287B135D8;
    *(v18 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v97 = v15;
  v63 = [v3 thumbnail_2];
  if (!v63)
  {

    v14 = v97;
    goto LABEL_7;
  }

  v59 = v2;
  v60 = v6;
  v61 = v5;
  v62 = v8;
  RFTextProperty.asPartialText()(v96);
  v16 = [v3 text_2];
  if (v16)
  {
    v17 = v16;
    *(&v94 + 1) = &type metadata for PartialText;
    v95 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v93 = swift_allocObject();
    RFTextProperty.asPartialText()(v93 + 16);
  }

  else
  {
    v95 = 0;
    v94 = 0u;
    v93 = 0u;
  }

  v20 = [v3 text_3];
  if (v20)
  {
    v21 = v20;
    *(&v91 + 1) = &type metadata for PartialText;
    v92 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v90 = swift_allocObject();
    RFTextProperty.asPartialText()(v90 + 16);
  }

  else
  {
    v92 = 0;
    v91 = 0u;
    v90 = 0u;
  }

  v22 = [v3 text_4];
  if (v22)
  {
    v23 = v22;
    *(&v88 + 1) = &type metadata for PartialText;
    v89 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v87 = swift_allocObject();
    RFTextProperty.asPartialText()(v87 + 16);
  }

  else
  {
    v89 = 0;
    v88 = 0u;
    v87 = 0u;
  }

  v24 = [v3 text_5];
  if (v24)
  {
    v25 = v24;
    *(&v85 + 1) = &type metadata for PartialText;
    v86 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v84 = swift_allocObject();
    RFTextProperty.asPartialText()(v84 + 16);
  }

  else
  {
    v86 = 0;
    v85 = 0u;
    v84 = 0u;
  }

  v26 = [v3 text_6];
  if (v26)
  {
    v27 = v26;
    *(&v82 + 1) = &type metadata for PartialText;
    v83 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v81 = swift_allocObject();
    RFTextProperty.asPartialText()(v81 + 16);
  }

  else
  {
    v83 = 0;
    v82 = 0u;
    v81 = 0u;
  }

  v28 = [v3 text_7];
  if (v28)
  {
    v29 = v28;
    *(&v79 + 1) = &type metadata for PartialText;
    v80 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v78 = swift_allocObject();
    RFTextProperty.asPartialText()(v78 + 16);
  }

  else
  {
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
  }

  v30 = [v3 text_8];
  if (v30)
  {
    v31 = v30;
    *(&v76 + 1) = &type metadata for PartialText;
    v77 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v75 = swift_allocObject();
    RFTextProperty.asPartialText()(v75 + 16);
  }

  else
  {
    v77 = 0;
    v76 = 0u;
    v75 = 0u;
  }

  RFVisualProperty.asVisualProperty()();
  RFVisualProperty.asVisualProperty()();
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v68[0] = xmmword_281588758;
  v68[1] = unk_281588768;
  v68[2] = xmmword_281588778;
  v68[3] = xmmword_281588788;
  v69 = xmmword_281588758;
  v70 = unk_281588768;
  v71 = xmmword_281588778;
  v72 = xmmword_281588788;
  v57 = xmmword_281588788;
  v58 = xmmword_281588778;
  sub_26A4EA070(v68, v74, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v73);
  memcpy(a1, v73, 0xC0uLL);
  v32 = v57;
  *(a1 + 192) = v58;
  *(a1 + 208) = v32;
  v33 = v70;
  *(a1 + 224) = v69;
  *(a1 + 240) = v33;
  v34 = v72;
  *(a1 + 256) = v71;
  *(a1 + 272) = v34;
  *(a1 + 288) = swift_getKeyPath();
  *(a1 + 296) = 0;
  v35 = type metadata accessor for SummaryItemPairV2View(0);
  v36 = v35[6];
  *(a1 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v37 = v35[7];
  *(a1 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  memcpy(v74, v96, 0xFAuLL);
  memcpy(v67, v96, 0xFAuLL);
  sub_26A4EC458(v74, v64);
  sub_26A4EC4B4();
  *(a1 + v35[8]) = sub_26A851248();
  sub_26A4EA070(&v93, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v38 = OUTLINED_FUNCTION_0_67();
    v39(v38);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[9]) = v37;
  sub_26A4EA070(&v90, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v40 = OUTLINED_FUNCTION_0_67();
    v41(v40);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[10]) = v37;
  sub_26A4EA070(&v87, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v42 = OUTLINED_FUNCTION_0_67();
    v43(v42);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[11]) = v37;
  sub_26A4EA070(&v84, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v44 = OUTLINED_FUNCTION_0_67();
    v45(v44);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[12]) = v37;
  sub_26A4EA070(&v81, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v46 = OUTLINED_FUNCTION_0_67();
    v47(v46);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[13]) = v37;
  sub_26A4EA070(&v78, v67, &qword_2803A91B8, &qword_26A8575C0);
  if (v67[3])
  {
    v48 = OUTLINED_FUNCTION_0_67();
    v49(v48);
    OUTLINED_FUNCTION_3_59();
  }

  else
  {
    sub_26A4E2544(v67, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *(a1 + v35[14]) = v37;
  sub_26A4EA070(&v75, v64, &qword_2803A91B8, &qword_26A8575C0);
  v50 = v65;
  if (v65)
  {
    v51 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v52 = (*(v51 + 8))(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    sub_26A4E2544(v64, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *(a1 + v35[15]) = v52;
  *(a1 + v35[16]) = VisualProperty.asAnyView()();
  v53 = v62;
  v54 = VisualProperty.asAnyView()();

  v55 = v61;
  v56 = *(v60 + 8);
  v56(v53, v61);
  v56(v12, v55);
  memcpy(v67, v96, 0xFAuLL);
  sub_26A4EC508(v67);
  OUTLINED_FUNCTION_2_67(&v75);
  OUTLINED_FUNCTION_2_67(&v78);
  OUTLINED_FUNCTION_2_67(&v81);
  OUTLINED_FUNCTION_2_67(&v84);
  OUTLINED_FUNCTION_2_67(&v87);
  OUTLINED_FUNCTION_2_67(&v90);
  result = OUTLINED_FUNCTION_2_67(&v93);
  *(a1 + v35[17]) = v54;
  return result;
}

unint64_t sub_26A69F1DC()
{
  result = qword_2803B1EF0;
  if (!qword_2803B1EF0)
  {
    type metadata accessor for SummaryItemPairV2View(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1EF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_67(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_59()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 336);
}

void *sub_26A69F2DC()
{
  v1 = type metadata accessor for PopOver(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  sub_26A6A0318(v0, &v10 - v5);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B32E8, qword_26A873A38));
  v7 = OUTLINED_FUNCTION_11_35();
  sub_26A6A0318(v7, v3);
  sub_26A84FCE8();
  v8 = OUTLINED_FUNCTION_11_35();
  sub_26A4F6028(v8);
  sub_26A84FCB8();
  [v0 setPreferredContentSize_];
  return v0;
}

void sub_26A69F3CC(int a1, id a2)
{
  v2 = [a2 commandReference];
  sub_26A69F458();
  v4 = v3;

  if (v4)
  {
    InteractionDelegateWrapper.perform(sfCommand:)();
  }
}

void sub_26A69F458()
{
  OUTLINED_FUNCTION_28_0();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 8);
    v4 = sub_26A73670C();
    v5 = v2;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_15;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6644E0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = [v7 commandReference];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 isEqual_];

        if (v11)
        {

          goto LABEL_15;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_26A69F554()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v3 = type metadata accessor for PopOver(0);
  v4 = OUTLINED_FUNCTION_2_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_26A6A0318(v0, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_1_67();
  sub_26A6A0C58();
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v9 = swift_getKeyPath();
  v18 = 0;
  v16[15] = 0;
  sub_26A851048();
  v10 = v16[16];
  v11 = v17;
  v12 = v19;
  v13 = v18;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *v2 = KeyPath;
  *(v2 + 8) = v12;
  *(v2 + 16) = v9;
  *(v2 + 24) = v13;
  *(v2 + 32) = v10;
  *(v2 + 40) = v11;
  *(v2 + 48) = sub_26A6A0498;
  *(v2 + 56) = v7;
  *(v2 + 64) = v14;
  *(v2 + 72) = 4;
  *(v2 + 80) = v15;
  *(v2 + 88) = 1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A69F704(uint64_t a1)
{
  v3 = type metadata accessor for PopOver(0);
  v4 = OUTLINED_FUNCTION_2_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = sub_26A73670C() > 1;
  v13[1] = a1;
  swift_getKeyPath();
  sub_26A6A0318(v1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + v8;
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_67();
  sub_26A6A0C58();
  *(v11 + v10) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3318, &qword_26A873B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3320, &qword_26A873B68);
  sub_26A4DBCC8(&qword_2803B3328, &qword_2803B3318, &qword_26A873B60, MEMORY[0x277D83980]);
  sub_26A6A05A0();
  sub_26A6A0608();
  return sub_26A8512F8();
}

uint64_t sub_26A69F8D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v51 = type metadata accessor for SeparatorsConfig(0);
  MEMORY[0x28223BE20](v51);
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_26A84BBF8();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26A84F588();
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PopOver(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3350, &qword_26A873B78);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43[-v18];
  v20 = *a1;
  v55 = v20;
  v56 = v44;
  v57 = a2;
  sub_26A6A0318(a2, &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v21 = (v15 + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_26A6A0C58();
  *(v22 + v21) = v20;
  v52 = sub_26A6A07DC;
  v53 = &v54;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3360, &qword_26A873B88);
  sub_26A6A0898();
  sub_26A8510D8();
  sub_26A84F578();
  sub_26A4DBCC8(&qword_2803B3358, &qword_2803B3350, &qword_26A873B78, MEMORY[0x277CDF028]);
  sub_26A55FDBC();
  v24 = v47;
  v25 = v45;
  sub_26A850978();
  (*(v46 + 8))(v12, v25);
  (*(v17 + 8))(v19, v16);
  LOBYTE(v22) = sub_26A850248();
  sub_26A84ED48();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3348, &qword_26A873B70) + 36);
  *v34 = v22;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v36 = v48;
  v35 = v49;
  (v7)[13](v48, *MEMORY[0x277D62F28], v49);
  v37 = v50;
  (v7)[2](v50, v36, v35);
  v38 = v51;
  v39 = &v37[*(v51 + 20)];
  (v7)[4](v39, v36, v35);
  v40 = type metadata accessor for SeparatorConfig(0);
  v37[*(v40 + 20)] = 0;
  v39[*(v40 + 20)] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3320, &qword_26A873B68) + 36);
  sub_26A6A0C58();
  return __swift_storeEnumTagSinglePayload(v24 + v41, 0, 1, v38);
}

uint64_t sub_26A69FE1C@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 index];
  if (v7)
  {
    v8 = v7;
    [v7 integerValue];
  }

  sub_26A565BD0(0, a1, v15);
  KeyPath = swift_getKeyPath();
  sub_26A4F5FCC(a3 + 16, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_26A53F320(v12);
  if (Strong)
  {
    swift_getObjectType();
    VRXInteractionDelegate.boxed()();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = Strong == 0;
  sub_26A4D7EA8();
  *(a4 + 192) = KeyPath;
  return sub_26A4D7EA8();
}

uint64_t sub_26A69FFA8(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_2803D2050);
  OUTLINED_FUNCTION_2_34();
  v5 = v4;
  OUTLINED_FUNCTION_77();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v11 - v8, a1, v3, v7);
  v9 = sub_26A84FCE8();
  (*(v5 + 8))(a1, v3);
  return v9;
}

void *sub_26A6A00C0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = OUTLINED_FUNCTION_11_35();
  return sub_26A6A0100(v4);
}

void *sub_26A6A0100(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_2803D2050);
  OUTLINED_FUNCTION_2_34();
  v5 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_50();
  (*(v5 + 16))(v2);
  v7 = sub_26A84FCD8();
  v8 = *(v5 + 8);
  v9 = v7;
  v10 = OUTLINED_FUNCTION_11_35();
  v8(v10, v3);
  if (v7)
  {
  }

  return v7;
}

id sub_26A6A0220(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t type metadata accessor for PopOver(uint64_t a1)
{
  result = qword_2803B32F0;
  if (!qword_2803B32F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6A0318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopOver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A6A03A4(uint64_t a1)
{
  sub_26A615528(319, &qword_2803B3300, &qword_2803B3308, 0x277D4BF68);
  if (v1 <= 0x3F)
  {
    sub_26A615528(319, &qword_2803B3310, &qword_2803AB078, 0x277D4C2A8);
    if (v2 <= 0x3F)
    {
      sub_26A5B96FC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A6A0498()
{
  v1 = *(type metadata accessor for PopOver(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26A69F6DC(v2);
}

uint64_t sub_26A6A0508@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PopOver(0);
  OUTLINED_FUNCTION_2_5(v5);
  v8 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_26A69F8D8(a1, v8, v9, a2);
}

unint64_t sub_26A6A05A0()
{
  result = qword_2803B3330;
  if (!qword_2803B3330)
  {
    sub_26A4EC5B0(255, &qword_2803B3308, 0x277D4BF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3330);
  }

  return result;
}

unint64_t sub_26A6A0608()
{
  result = qword_2803B3338;
  if (!qword_2803B3338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3320, &qword_26A873B68);
    sub_26A6A06C0();
    sub_26A4DBCC8(&qword_2803B0808, &qword_2803B0800, &qword_26A873B80, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3338);
  }

  return result;
}

unint64_t sub_26A6A06C0()
{
  result = qword_2803B3340;
  if (!qword_2803B3340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3348, &qword_26A873B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3350, &qword_26A873B78);
    sub_26A84F588();
    sub_26A4DBCC8(&qword_2803B3358, &qword_2803B3350, &qword_26A873B78, MEMORY[0x277CDF028]);
    sub_26A55FDBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3340);
  }

  return result;
}

void sub_26A6A07EC()
{
  v1 = type metadata accessor for PopOver(0);
  OUTLINED_FUNCTION_2_5(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26A69F3CC(v0 + v6, v7);
}

unint64_t sub_26A6A0898()
{
  result = qword_2803B3368;
  if (!qword_2803B3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3360, &qword_26A873B88);
    sub_26A6A0950();
    sub_26A4DBCC8(&qword_28157FBA0, &qword_2803ACAE0, &qword_26A85C070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3368);
  }

  return result;
}

unint64_t sub_26A6A0950()
{
  result = qword_2803B3370;
  if (!qword_2803B3370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3378, &unk_26A873B90);
    sub_26A6A0A08();
    sub_26A4DBCC8(&qword_28157FBA8, &qword_2803ABBE0, &unk_26A8596B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3370);
  }

  return result;
}

unint64_t sub_26A6A0A08()
{
  result = qword_2803B3380;
  if (!qword_2803B3380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD9D0, &qword_26A85F498);
    sub_26A6A0AC0();
    sub_26A4DBCC8(&unk_28157FB40, &qword_2803ABBD8, &qword_26A85C170, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3380);
  }

  return result;
}

unint64_t sub_26A6A0AC0()
{
  result = qword_2803B3388;
  if (!qword_2803B3388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3390, &qword_26A873BA0);
    sub_26A6A0B78();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3388);
  }

  return result;
}

unint64_t sub_26A6A0B78()
{
  result = qword_2803B3398;
  if (!qword_2803B3398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B33A0, &qword_26A873BA8);
    sub_26A6A0C04();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3398);
  }

  return result;
}

unint64_t sub_26A6A0C04()
{
  result = qword_2803B33A8;
  if (!qword_2803B33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B33A8);
  }

  return result;
}

uint64_t sub_26A6A0C58()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

void sub_26A6A0CAC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = sub_26A84BD28();
  OUTLINED_FUNCTION_2_34();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3480, &qword_26A873DB0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_50();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3488, &qword_26A873DB8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v53 - v19;
  v21 = [v2 image];
  if (v21)
  {
    v22 = v21;
    RFVisualProperty.asVisualProperty()();

    (*(v10 + 16))(v0, v13, v8);
    v23 = type metadata accessor for VisualPropertyView(0);
    v24 = v23[5];
    v53 = v4;
    v25 = v0 + v24;
    *v25 = swift_getKeyPath();
    *(v25 + 9) = 0;
    swift_unknownObjectWeakInit();
    v26 = v0 + v23[6];
    *v26 = swift_getKeyPath();
    *(v26 + 8) = 0;
    v27 = v0 + v23[7];
    *v27 = swift_getKeyPath();
    *(v27 + 8) = 0;
    v28 = v23[8];
    *(v0 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v29 = v0 + v23[9];
    v54 = 0;
    sub_26A851048();
    (*(v10 + 8))(v13, v8);
    v30 = v56;
    *v29 = v55;
    *(v29 + 8) = v30;
    KeyPath = swift_getKeyPath();
    v32 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3490, &qword_26A873E40) + 36);
    *v32 = KeyPath;
    *(v32 + 8) = 0x4044000000000000;
    *(v32 + 16) = 0;
    v33 = swift_getKeyPath();
    v34 = v0 + *(v14 + 36);
    *v34 = v33;
    *(v34 + 8) = 0x4044000000000000;
    *(v34 + 16) = 0;
    v35 = swift_getKeyPath();
    v36 = &v20[*(v16 + 36)];
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3498, &qword_26A873E98) + 28);
    sub_26A84B268();
    v38 = sub_26A84B2B8();
    __swift_storeEnumTagSinglePayload(v36 + v37, 0, 1, v38);
    *v36 = v35;
    sub_26A4D7EA8();
    v39 = swift_getKeyPath();
    sub_26A850338();
    v40 = OUTLINED_FUNCTION_10_39();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    v44 = sub_26A8503E8();
    sub_26A6A1DE4(v7, &qword_2803AB208, &qword_26A857FD0);
    v45 = v53;
    sub_26A4D7EA8();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B34A0, &qword_26A873ED0);
    v47 = (v45 + *(v46 + 36));
    *v47 = v39;
    v47[1] = v44;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B34A0, &qword_26A873ED0);
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }
}

void sub_26A6A1128()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3428, &qword_26A873CC8);
  OUTLINED_FUNCTION_2_34();
  v7 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_50();
  v9 = [v2 title];
  if (v9)
  {
    v10 = v9;
    RFTextProperty.asPartialText()(v25);

    v11 = sub_26A850E78();
    KeyPath = swift_getKeyPath();
    v13 = sub_26A8502D8();
    v14 = swift_getKeyPath();
    v25[32] = KeyPath;
    v25[33] = v11;
    v25[34] = v14;
    v25[35] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3430, &qword_26A873D30);
    sub_26A6A1E2C();
    sub_26A850B98();
    memcpy(v26, v25, sizeof(v26));
    sub_26A6A1DE4(v26, &qword_2803B3430, &qword_26A873D30);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3450, &unk_26A873D50);
    v16 = (v4 + *(v15 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC8, &qword_26A8600F0) + 28);
    v18 = *MEMORY[0x277CE1050];
    sub_26A850F88();
    OUTLINED_FUNCTION_46();
    (*(v19 + 104))(v16 + v17, v18);
    *v16 = swift_getKeyPath();
    (*(v7 + 32))(v4, v0, v5);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3450, &unk_26A873D50);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

uint64_t sub_26A6A1388(void *a1, char a2)
{
  v4 = [a1 subtitle];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    sub_26A734BFC(0, v18);

    v7 = v18[0];

    sub_26A51CE58(v18);
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_26A7CFEEC(a1);
  if (v9)
  {
    v19 = v8;
    v20 = v9;
    MEMORY[0x26D663B00](10535470, 0xA300000000000000);
    v10 = v19;
    v11 = v20;
    v12 = *(v7 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || v12 >= *(v7 + 24) >> 1)
    {
      sub_26A7A1034();
      v7 = v13;
    }

    *&v21 = v10;
    *(&v21 + 1) = v11;
    v22 = 0;
    v23 = v5;
    v24 = 0;
    v25 = 0;
    sub_26A6A210C(0, 0, 1, &v21);
  }

LABEL_10:
  if (qword_2803A8BD0 != -1)
  {
    swift_once();
  }

  v14 = xmmword_2803B0080;
  v15 = byte_2803B0090;
  v16 = qword_2803B0098;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  sub_26A7D193C(v7, v14, *(&v14 + 1), v15, v16, 0, 0, &v19);
  sub_26A7D1500();
  sub_26A850E88();
  swift_getKeyPath();
  sub_26A850498();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3458, &qword_26A873D90);
  sub_26A6A1F9C();
  sub_26A850B98();
}

uint64_t sub_26A6A15DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26A84FA78();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B33E0, &qword_26A873C80);
  sub_26A6A16A0(a1, a2);
  LOBYTE(a2) = sub_26A850248();
  sub_26A84ED48();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B33E8, &qword_26A873C88);
  v15 = a3 + *(result + 36);
  *v15 = a2;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_26A6A16A0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B33F0, &qword_26A873C90);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B33F8, &qword_26A873C98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_26A6A0CAC();
  *v9 = sub_26A84FC08();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3400, &qword_26A873CA0);
  sub_26A6A1938(a1, v2, &v9[*(v16 + 44)]);
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v17 = &v9[*(v4 + 36)];
  *v17 = qword_28157FC80;
  *(v17 + 1) = sub_26A48F9E4;
  *(v17 + 2) = 0;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3408, &qword_26A873CA8);
  sub_26A4D7E54();
  sub_26A6A1DE4(v9, &qword_2803B33F0, &qword_26A873C90);
  sub_26A6A1DE4(v15, &qword_2803B33F8, &qword_26A873C98);
  sub_26A6A1DE4(v6, &qword_2803B33F0, &qword_26A873C90);
  return sub_26A6A1DE4(v12, &qword_2803B33F8, &qword_26A873C98);
}

uint64_t sub_26A6A1938@<X0>(void *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3410, &qword_26A873CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3418, &qword_26A873CB8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  sub_26A6A1388(a1, a2);
  sub_26A6A1128();
  v19 = *(v13 + 16);
  v19(v15, v18, v12);
  sub_26A4D7E54();
  v19(a3, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3420, &qword_26A873CC0);
  sub_26A4D7E54();
  sub_26A6A1DE4(v11, &qword_2803B3410, &qword_26A873CB0);
  v20 = *(v13 + 8);
  v20(v18, v12);
  sub_26A6A1DE4(v8, &qword_2803B3410, &qword_26A873CB0);
  return (v20)(v15, v12);
}

uint64_t sub_26A6A1B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A6A1BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A6A1C2C()
{
  result = qword_2803B33B0;
  if (!qword_2803B33B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B33B8, &qword_26A873C08);
    sub_26A6A1CE4();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B33B0);
  }

  return result;
}

unint64_t sub_26A6A1CE4()
{
  result = qword_2803B33C0;
  if (!qword_2803B33C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B33C8, &qword_26A873C10);
    sub_26A4DBCC8(&qword_2803B33D0, &qword_2803B33D8, &qword_26A873C18, &protocol conformance descriptor for ComponentStack<A>);
    sub_26A4DBCC8(&qword_2803AD010, &qword_2803AD018, &unk_26A873C20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B33C0);
  }

  return result;
}

uint64_t sub_26A6A1DE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_13_28(a1, a2, a3);
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v3);
  return v3;
}

unint64_t sub_26A6A1E2C()
{
  result = qword_2803B3438;
  if (!qword_2803B3438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3430, &qword_26A873D30);
    sub_26A6A1EE4();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8, &qword_26A85AFA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3438);
  }

  return result;
}

unint64_t sub_26A6A1EE4()
{
  result = qword_2803B3440;
  if (!qword_2803B3440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3448, &qword_26A873D38);
    sub_26A4EC4B4();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38, &unk_26A873D40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3440);
  }

  return result;
}

unint64_t sub_26A6A1F9C()
{
  result = qword_2803B3460;
  if (!qword_2803B3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3458, &qword_26A873D90);
    sub_26A6A2054();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8, &qword_26A85AFA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3460);
  }

  return result;
}

unint64_t sub_26A6A2054()
{
  result = qword_2803B3468;
  if (!qword_2803B3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3470, &qword_26A873D98);
    sub_26A4F5A04();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38, &unk_26A873D40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3468);
  }

  return result;
}

uint64_t sub_26A6A210C(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = 3 * result;
  v12 = v10 + 48 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v9 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_14;
  }

  result = sub_26A7A5644(v10 + 48 * a2, v15 - a2, (v12 + 48 * a3));
  v16 = *(v9 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v9 + 16) = v17;
LABEL_7:
  if (a3 > 0)
  {
    *v19 = a4[1];
    *&v19[10] = *(a4 + 26);
    v18 = (16 * v11 + v9);
    v18[2] = *a4;
    v18[3] = *v19;
    *(v18 + 58) = *&v19[10];
    if ((v18 + 5) >= v12 + 48 * a3)
    {
      return result;
    }

    sub_26A4D7E54();
    __break(1u);
  }

  return sub_26A6A1DE4(a4, &qword_2803B3478, &unk_26A873DA0);
}

unint64_t sub_26A6A226C()
{
  result = qword_2803B34A8;
  if (!qword_2803B34A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B33E8, &qword_26A873C88);
    sub_26A4DBCC8(&qword_2803B34B0, &qword_2803B34B8, &qword_26A873ED8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B34A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void PrimaryHeaderMarqueeView.init(text1:text2:thumbnail:addTint:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v10[5];
  *(v14 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v16 = v10[6];
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + v10[7];
  v29 = 0;
  sub_26A851048();
  v18 = v27[1];
  *v17 = v27[0];
  *(v17 + 8) = v18;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v19 = OUTLINED_FUNCTION_2_36();
  *(v14 + v10[8]) = v20(v19);
  sub_26A4DBD68(v5, v27, &qword_2803A91B8, &qword_26A8575C0);
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v21 = OUTLINED_FUNCTION_2_36();
    v23 = v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_26A4DBD10(v27, &qword_2803A91B8, &qword_26A8575C0);
    v23 = 0;
  }

  *(v14 + v10[9]) = v23;
  sub_26A4DBD68(v3, v27, &qword_2803A91B8, &qword_26A8575C0);
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v24 = OUTLINED_FUNCTION_2_36();
    v26 = v25(v24);
    sub_26A4DBD10(v3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v5, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_26A4DBD10(v3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v5, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v27, &qword_2803A91B8, &qword_26A8575C0);
    v26 = 0;
  }

  *(v14 + v10[10]) = v26;
  *(v14 + v10[11]) = v1 & 1;
  sub_26A6A26A0(v14, v9);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for PrimaryHeaderMarqueeView(uint64_t a1)
{
  result = qword_2803B3530;
  if (!qword_2803B3530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6A26A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6A2704()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v4 + 8))(v1, v2);
    return v9;
  }

  return v6;
}

uint64_t sub_26A6A2830@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A6A2A38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void PrimaryHeaderMarqueeView.init(text1:text2:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v7;
  v8 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  sub_26A50429C(v6, v32);
  sub_26A4DBD68(v4, v31, &qword_2803A91B8, &qword_26A8575C0);
  sub_26A4DBD68(v2, v30, &qword_2803A91B8, &qword_26A8575C0);
  *v0 = swift_getKeyPath();
  *(v0 + 8) = 0;
  v10 = v8[5];
  *(v0 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v11 = v8[6];
  *(v0 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v12 = v0 + v8[7];
  v29 = 0;
  sub_26A851048();
  v13 = v26[1];
  *v12 = v26[0];
  *(v12 + 8) = v13;
  v15 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_4_30();
  *(v0 + v8[8]) = v16(v15, v14);
  sub_26A4DBD68(v31, v26, &qword_2803A91B8, &qword_26A8575C0);
  v17 = v27;
  if (v27)
  {
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_4_30();
    v20 = v19(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_26A4DBD10(v26, &qword_2803A91B8, &qword_26A8575C0);
    v20 = 0;
  }

  *(v0 + v8[9]) = v20;
  sub_26A4DBD68(v30, v26, &qword_2803A91B8, &qword_26A8575C0);
  v21 = v27;
  if (v27)
  {
    v22 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_4_30();
    v24 = v23(v21, v22);
    OUTLINED_FUNCTION_11_22(v2);
    OUTLINED_FUNCTION_11_22(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_11_22(v30);
    OUTLINED_FUNCTION_11_22(v31);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_32_5(v2);
    OUTLINED_FUNCTION_32_5(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_32_5(v30);
    OUTLINED_FUNCTION_32_5(v31);
    OUTLINED_FUNCTION_32_5(v26);
    v24 = 0;
  }

  *(v0 + v8[10]) = v24;
  *(v0 + v8[11]) = 0;
  sub_26A6A26A0(v0, v25);
  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_27_0();
}

uint64_t PrimaryHeaderMarqueeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_0();
  sub_26A6A2A38(v2);
  sub_26A6A31B4(v20);
  v20[4] = v20[0];
  v20[5] = v20[1];
  v21 = 0;
  sub_26A6A2704();
  sub_26A6A2830(v7);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  v19 = v1;
  sub_26A4CC920();
  v11 = *(v1 + *(type metadata accessor for PrimaryHeaderMarqueeView(0) + 44));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3510, &qword_26A873F68) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CCD4;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3518, &unk_26A873F70) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3520, &qword_26A873FA8);
  *(a1 + *(result + 36)) = 19;
  return result;
}

double sub_26A6A31B4@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    v16 = *v1;
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v4 + 8))(v6, v3);
  }

  sub_26A5A0164();
  v9 = v13;
  *a1 = *&v12[8];
  a1[1] = v9;
  result = *&v14;
  v11 = v15;
  a1[2] = v14;
  a1[3] = v11;
  return result;
}

void *sub_26A6A3370@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B28, &qword_26A8559B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  sub_26A6A31B4(v9);
  *v5 = v10;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3560, &unk_26A874040);
  sub_26A6A34C4(v1, &v5[*(v6 + 44)]);
  sub_26A6A31B4(&v11);
  sub_26A84F628();
  sub_26A4DBDB4(v5, a1, &qword_2803A9B28, &qword_26A8559B8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B00, &qword_26A8559A0);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A6A34C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3568, &unk_26A874050);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-v8 - 8];
  sub_26A6A37E8();
  v10 = sub_26A850268();
  sub_26A6A31B4(v41);
  sub_26A84ED48();
  v11 = &v9[*(v4 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = *(a1 + *(type metadata accessor for PrimaryHeaderMarqueeView(0) + 32));
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2940, v39, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v42);
  memcpy(v38, v42, sizeof(v38));
  v39[11] = 0;
  v39[10] = sub_26A80A810;
  v37 = v16;
  v39[12] = swift_getKeyPath();
  v40 = 1;

  sub_26A6A3A30(v30);
  v17 = sub_26A850258();
  sub_26A6A31B4(&v43);
  sub_26A84ED48();
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = 0;
  sub_26A4DBD68(v9, v6, &qword_2803B3568, &unk_26A874050);
  sub_26A4DBD68(&v37, v29, &qword_2803B3570, &unk_26A874090);
  sub_26A4DBD68(v30, v28, &qword_2803AAF88, &unk_26A861C90);
  v22 = v6;
  v23 = v6;
  v24 = v27;
  sub_26A4DBD68(v22, v27, &qword_2803B3568, &unk_26A874050);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3578, &unk_26A8740A0);
  sub_26A4DBD68(v29, v24 + *(v25 + 48), &qword_2803B3570, &unk_26A874090);
  sub_26A4DBD68(v28, v24 + *(v25 + 64), &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v30, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(&v37, &qword_2803B3570, &unk_26A874090);
  sub_26A4DBD10(v9, &qword_2803B3568, &unk_26A874050);
  sub_26A4DBD10(v28, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v29, &qword_2803B3570, &unk_26A874090);
  return sub_26A4DBD10(v23, &qword_2803B3568, &unk_26A874050);
}

void sub_26A6A37E8()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v4 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74_0();
  v13 = *(v0 + *(type metadata accessor for PrimaryHeaderMarqueeView(0) + 40));
  if (v13)
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D62B38], v4);
    KeyPath = swift_getKeyPath();
    v15 = (v1 + *(v11 + 36));
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v6 + 32))(v15 + v16, v10, v4);
    __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v4);
    *v15 = KeyPath;
    *v1 = v13;
    v17 = swift_getKeyPath();
    sub_26A4DBDB4(v1, v3, &qword_2803AAFA0, &unk_26A85D4D0);
    v18 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36);
    *v18 = v17;
    *(v18 + 8) = 0;
    v19 = swift_getKeyPath();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v21 = v3 + *(v20 + 36);
    *v21 = v19;
    *(v21 + 8) = 1;
    v22 = v3;
    v23 = 0;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v22 = v3;
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v20);

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6A3A30@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PrimaryHeaderMarqueeView(0) + 36));
  if (v3)
  {
    if (qword_2803A8D30 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(qword_2803B34C0, (a1 + 25), &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v5);
    memcpy(a1 + 1, v5, 0xBFuLL);
    a1[35] = sub_26A80A810;
    a1[36] = 0;
    *a1 = v3;
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

__n128 sub_26A6A3B10(uint64_t a1)
{
  v1 = sub_26A84FBF8();
  v2 = sub_26A84FA78();
  __asm { FMOV            V0.2D, #14.0 }

  xmmword_2803D2060 = result;
  *algn_2803D2070 = result;
  *&xmmword_2803D2080 = 0;
  *(&xmmword_2803D2080 + 1) = v1;
  qword_2803D2090 = v2;
  unk_2803D2098 = 0x4028000000000000;
  return result;
}

__n128 sub_26A6A3B54(uint64_t a1)
{
  v1 = sub_26A84FBF8();
  v2 = sub_26A84FA78();
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_2803D20A0 = result;
  *algn_2803D20B0 = result;
  *&xmmword_2803D20C0 = 0;
  *(&xmmword_2803D20C0 + 1) = v1;
  qword_2803D20D0 = v2;
  unk_2803D20D8 = 0x402C000000000000;
  return result;
}

__n128 sub_26A6A3B98(uint64_t a1)
{
  v1 = sub_26A84FBF8();
  v2 = sub_26A84FA78();
  __asm { FMOV            V0.2D, #28.0 }

  xmmword_2803D20E0 = result;
  *algn_2803D20F0 = result;
  *&xmmword_2803D2100 = 0x4020000000000000;
  *(&xmmword_2803D2100 + 1) = v1;
  qword_2803D2110 = v2;
  unk_2803D2118 = 0x4034000000000000;
  return result;
}

__n128 sub_26A6A3BE0(uint64_t a1)
{
  v1 = sub_26A84FC08();
  v2 = sub_26A84FA78();
  __asm { FMOV            V0.2D, #14.0 }

  xmmword_2803D2120 = result;
  *algn_2803D2130 = result;
  *&xmmword_2803D2140 = 0x4000000000000000;
  *(&xmmword_2803D2140 + 1) = v1;
  qword_2803D2150 = v2;
  unk_2803D2158 = 0x4020000000000000;
  return result;
}

uint64_t sub_26A6A3C2C(uint64_t a1)
{
  result = sub_26A6A4CDC(&qword_2803B3528, MEMORY[0x277D63488], MEMORY[0x277D63480]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6A3CAC(uint64_t a1)
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A64C3E0(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26A64C3E0(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A6A3E04()
{
  result = qword_2803B3540;
  if (!qword_2803B3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3520, &qword_26A873FA8);
    sub_26A6A3E90();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3540);
  }

  return result;
}

unint64_t sub_26A6A3E90()
{
  result = qword_2803B3548;
  if (!qword_2803B3548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3518, &unk_26A873F70);
    sub_26A6A3F48();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3548);
  }

  return result;
}

unint64_t sub_26A6A3F48()
{
  result = qword_2803B3550;
  if (!qword_2803B3550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3510, &qword_26A873F68);
    sub_26A4DBCC8(&qword_2803B3558, &qword_2803A9B10, &qword_26A8559B0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3550);
  }

  return result;
}

void sub_26A6A4000()
{
  v0 = sub_26A850448();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v5 = swift_initStackObject();
  v33 = xmmword_26A8570D0;
  *(v5 + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v6 = qword_281588978;
  *(v5 + 32) = qword_281588978;
  v7 = byte_281588980;
  *(v5 + 40) = byte_281588980;
  sub_26A4E324C(v6, v7);
  sub_26A621A9C(v5);
  *(inited + 32) = v8;
  sub_26A8502F8();
  sub_26A850308();

  v9 = *(v1 + 104);
  v31 = *MEMORY[0x277CE0A10];
  v30 = v9;
  v9(v3);
  v10 = sub_26A850478();

  v11 = *(v1 + 8);
  v32 = v0;
  v29 = v11;
  v11(v3, v0);
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v12 = sub_26A573830();
  *(inited + 80) = v12;
  *(inited + 48) = 1;
  *(inited + 40) = v10;
  v13 = swift_initStackObject();
  *(v13 + 16) = v33;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v14 = qword_281588968;
  *(v13 + 32) = qword_281588968;
  v15 = byte_281588970;
  *(v13 + 40) = byte_281588970;
  sub_26A4E324C(v14, v15);
  sub_26A621A9C(v13);
  *(inited + 88) = v16;
  sub_26A8502F8();
  v17 = sub_26A850308();

  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = v12;
  *(inited + 104) = 1;
  *(inited + 96) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = v33;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v19 = qword_281588938;
  *(v18 + 32) = qword_281588938;
  v20 = byte_281588940;
  *(v18 + 40) = byte_281588940;
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(inited + 144) = v21;
  v22 = sub_26A8502F8();
  v23 = sub_26A84FED8();
  v24 = MEMORY[0x277CE04E8];
  *(inited + 184) = MEMORY[0x277CE04F8];
  *(inited + 192) = v24;
  *(inited + 160) = v23;
  *(inited + 152) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v25 = sub_26A8516A8();
  sub_26A8502F8();
  sub_26A850308();

  v26 = v32;
  v30(v3, v31, v32);
  v27 = sub_26A850478();

  v29(v3, v26);
  v28 = sub_26A84FED8();
  v36 = MEMORY[0x277CE04F8];
  v37 = v24;
  v35 = v28;
  v34 = v27;
  sub_26A80D690(v25);
}

void sub_26A6A4448()
{
  OUTLINED_FUNCTION_28_0();
  v68 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v62 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v61 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v66 = v6;
  MEMORY[0x28223BE20](v7);
  v64 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = type metadata accessor for PrimaryHeaderMarqueeView(0);
  v25 = OUTLINED_FUNCTION_79(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v69 = v27 - v26;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABB8, &qword_26A856CB0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = &v60 - v29;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABC0, &qword_26A856CB8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  v65 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - v34;
  sub_26A84CE88();
  v36 = TextProperty.asAnyView()();
  v37 = *(v19 + 8);
  v37(v23, v17);
  v81 = MEMORY[0x277CE11C8];
  v82 = &protocol witness table for AnyView;
  v80 = v36;
  sub_26A84CE98();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_26A4DBD10(v16, &qword_2803AA838, &unk_26A856770);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v76 = 0;
    v77 = 0;
  }

  else
  {
    v38 = TextProperty.asAnyView()();
    v37(v16, v17);
    v40 = &protocol witness table for AnyView;
    v39 = MEMORY[0x277CE11C8];
  }

  v75 = v38;
  v78 = v39;
  v79 = v40;
  sub_26A84CEB8();
  v41 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v12, 1, v41) == 1)
  {
    sub_26A4DBD10(v12, &qword_2803AAD50, &unk_26A857890);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v42 = VisualProperty.asAnyView()();
    (*(*(v41 - 8) + 8))(v12, v41);
    v44 = &protocol witness table for AnyView;
    v43 = MEMORY[0x277CE11C8];
  }

  v70 = v42;
  v73 = v43;
  v74 = v44;
  PrimaryHeaderMarqueeView.init(text1:text2:thumbnail:)();
  v45 = v64;
  sub_26A84CEA8();
  v46 = v66;
  sub_26A4DBDB4(v45, v66, &qword_2803B3800, &unk_26A856760);
  v47 = v68;
  if (__swift_getEnumTagSinglePayload(v46, 1, v68) == 1)
  {
    sub_26A4DBD10(v46, &qword_2803B3800, &unk_26A856760);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_22();
    v49 = &v30[v48];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v51 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v49 + v50, 1, 1, v51);
    *v49 = v46;
  }

  else
  {
    v52 = *(v62 + 32);
    v53 = v61;
    v52(v61, v46, v47);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_22();
    v55 = &v30[v54];
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v52(v55 + v56, v53, v47);
    v57 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v55 + v56, 0, 1, v57);
    *v55 = v46;
  }

  sub_26A6A26A0(v69, v30);
  v58 = sub_26A84CE68();
  sub_26A4DDAA4(v58, v59);

  sub_26A4DBD10(v30, &qword_2803AABB8, &qword_26A856CB0);
  sub_26A4DBD68(v35, v65, &qword_2803AABC0, &qword_26A856CB8);
  sub_26A6A4AB0();
  sub_26A851248();
  OUTLINED_FUNCTION_32_5(v35);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6A4AB0()
{
  result = qword_2803B3580;
  if (!qword_2803B3580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABC0, &qword_26A856CB8);
    sub_26A6A4B68();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3580);
  }

  return result;
}

unint64_t sub_26A6A4B68()
{
  result = qword_2803B3588;
  if (!qword_2803B3588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABB0, &qword_26A856CA8);
    sub_26A6A4BF4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3588);
  }

  return result;
}

unint64_t sub_26A6A4BF4()
{
  result = qword_2803B3590;
  if (!qword_2803B3590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABB8, &qword_26A856CB0);
    sub_26A6A4CDC(&qword_2803AF0B8, type metadata accessor for PrimaryHeaderMarqueeView, &protocol conformance descriptor for PrimaryHeaderMarqueeView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3590);
  }

  return result;
}

uint64_t sub_26A6A4CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for VibrancyModifier(uint64_t a1)
{
  result = qword_28157EC90;
  if (!qword_28157EC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6A4D98(uint64_t a1)
{
  sub_26A6A4E6C(319, &qword_2803B0190, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A5B96FC(319);
    if (v2 <= 0x3F)
    {
      sub_26A6A4E6C(319, &qword_2803AB788, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A6A4E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A6A4EDC@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_26A84EE68();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5, v7);
    v10 = sub_26A84EE58();
    (*(v6 + 8))(v9, v5);
    v11 = sub_26A8514D8();
    if (v10)
    {
      v12 = MEMORY[0x277CE13B8];
    }

    else
    {
      v12 = MEMORY[0x277CE13B0];
    }

    return (*(*(v11 - 8) + 104))(a3, *v12, v11);
  }

  else
  {
    v13 = *MEMORY[0x277CE13D8];
    v14 = sub_26A8514D8();
    v15 = *(*(v14 - 8) + 104);

    return v15(a3, v13, v14);
  }
}

uint64_t sub_26A6A50A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v29 = v5;
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  v16 = sub_26A8514D8();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = type metadata accessor for VibrancyModifier(0);
  sub_26A720064(v15);
  LODWORD(v2) = *v2;
  if (v2 == 2)
  {
    v24 = v3 + *(v23 + 24);
    v2 = *v24;
    if (*(v24 + 8) != 1)
    {

      sub_26A851EA8();
      v25 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v2, 0);
      (*(v29 + 8))(v8, v30);
      LOBYTE(v2) = v33;
    }
  }

  sub_26A6A4EDC(v2 & 1, v22);
  (*(v11 + 8))(v15, v9);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3598, &qword_26A8741A8);
  (*(v18 + 32))(a2 + *(v26 + 36), v22, v16);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B35A0, &unk_26A8741B0);
  return (*(*(v27 - 8) + 16))(a2, a1, v27);
}

unint64_t sub_26A6A538C()
{
  result = qword_28157FE18;
  if (!qword_28157FE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3598, &qword_26A8741A8);
    sub_26A6A5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE18);
  }

  return result;
}

unint64_t sub_26A6A5418()
{
  result = qword_28157FBC0;
  if (!qword_28157FBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B35A0, &unk_26A8741B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FBC0);
  }

  return result;
}

uint64_t sub_26A6A547C()
{
  sub_26A84F218();
  OUTLINED_FUNCTION_0_68();
  sub_26A6A6BFC(v0, v1, MEMORY[0x277CDF820]);
  sub_26A851D88();
  sub_26A851DD8();
  result = v4;
  if (v3 < v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A6A550C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void *sub_26A6A5550()
{
  sub_26A71D074();
  v0 = v15;

  result = sub_26A574360();
  v2 = result;
  v3 = v13[2];
  v4 = v13[3];
  if (v5)
  {
LABEL_12:
    sub_26A55E6A0();

    return v2;
  }

  else
  {
    v7 = v13[5];
    v6 = v14;
    v8 = (v13[4] + 64) >> 6;
    if (!v14)
    {
      goto LABEL_4;
    }

    do
    {
      v9 = v7;
LABEL_8:
      v10 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
      v11 = *(*(v3 + 56) + v10);
      v6 &= v6 - 1;
      v13[0] = *(*(v3 + 48) + v10);
      v13[1] = v11;
      result = v0(&v12, v13);
      if (v2 <= v12)
      {
        v2 = v12;
      }
    }

    while (v6);
LABEL_4:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_12;
      }

      v6 = *(v4 + 8 * v9);
      ++v7;
      if (v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void SearchUIButtonLayout.init(numberOfButtons:numberOfButtonsInRow:fullWidth:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SearchUIButtonLayout(0);
  v9 = *(v8 + 40);
  v10 = *MEMORY[0x277CDFA88];
  sub_26A84F4E8();
  OUTLINED_FUNCTION_5_0();
  (*(v11 + 104))(a4 + v9, v10);
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  v12 = qword_2803D1B10;
  memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v14 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v15 = byte_281588980;
  *(inited + 40) = byte_281588980;
  sub_26A4E324C(v14, v15);

  sub_26A58787C(v16);
  if (!*(v12 + 16))
  {

    goto LABEL_9;
  }

  v18 = sub_26A548580(v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_9:
    sub_26A54DFFC(__dst, v35);

    v21 = __dst[10];
    v22 = *(&__dst[9] + 1);
    v23 = *(&__dst[8] + 8);
    v24 = *(&__dst[7] + 8);
    v25 = *(&__dst[6] + 8);
    v26 = *(&__dst[5] + 8);
    v28 = __dst[3];
    v27 = __dst[4];
    v29 = __dst[5];
    v31 = __dst[1];
    v30 = __dst[2];
    v32 = __dst[0];
    goto LABEL_10;
  }

  memcpy(v35, (*(v12 + 56) + 176 * v18), sizeof(v35));
  sub_26A54DFFC(v35, &v34);

  v21 = v35[10];
  v22 = *(&v35[9] + 1);
  v23 = *(&v35[8] + 8);
  v24 = *(&v35[7] + 8);
  v25 = *(&v35[6] + 8);
  v26 = *(&v35[5] + 8);
  v28 = v35[3];
  v27 = v35[4];
  v29 = v35[5];
  v31 = v35[1];
  v30 = v35[2];
  v32 = v35[0];
LABEL_10:
  LOBYTE(v35[0]) = v29;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0x4000000000000000;
  v33 = a4 + *(v8 + 44);
  *v33 = v32;
  *(v33 + 16) = v31;
  *(v33 + 32) = v30;
  *(v33 + 48) = v28;
  *(v33 + 64) = v27;
  *(v33 + 80) = v29;
  *(v33 + 88) = v26;
  *(v33 + 104) = v25;
  *(v33 + 120) = v24;
  *(v33 + 136) = v23;
  *(v33 + 152) = v22;
  *(v33 + 160) = v21;
}

double SearchUIButtonLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_26A6A59A0(a1, a2 & 1, a3, a4 & 1, a7);

  return *(a6 + *(type metadata accessor for SearchUIButtonLayout.Cache(0) + 44));
}

void sub_26A6A59A0(uint64_t a1, char a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v80 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v79 = v15 - v14;
  if ((*(v6 + 233) & 1) == 0)
  {
    LOBYTE(v82[0]) = a2 & 1;
    LOBYTE(v83) = a4 & 1;
    if (sub_26A84F5A8())
    {
      type metadata accessor for SearchUIButtonLayout.Cache(0);
LABEL_52:

      return;
    }
  }

  v74 = a2;
  v75 = a1;
  v16 = type metadata accessor for SearchUIButtonLayout.Cache(0);
  sub_26A84F218();
  OUTLINED_FUNCTION_0_68();
  sub_26A6A6BFC(v17, v18, MEMORY[0x277CDF820]);
  v19 = sub_26A851D98();
  v20 = MEMORY[0x277D84F90];
  v78 = v16;
  v77 = a4;
  v76 = a3;
  if (v19)
  {
    v21 = v19;
    v83 = MEMORY[0x277D84F90];
    sub_26A7DD274(0, v19 & ~(v19 >> 63), 0);
    sub_26A851D88();
    if (v21 < 0)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v22 = v83;
    do
    {
      v23 = sub_26A851E18();
      (*(v12 + 16))(v79);
      v23(v82, 0);
      sub_26A84F598();
      LOBYTE(v82[0]) = v24 & 1;
      sub_26A84F0E8();
      v26 = v25;
      v28 = v27;
      (*(v12 + 8))(v79, v80);
      v83 = v22;
      v29 = v6;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_26A7DD274(v30 > 1, v31 + 1, 1);
        v22 = v83;
      }

      *(v22 + 16) = v31 + 1;
      v32 = v22 + 16 * v31;
      *(v32 + 32) = v26;
      *(v32 + 40) = v28;
      sub_26A851DE8();
      --v21;
      v6 = v29;
    }

    while (v21);
    v20 = v22;
  }

  v33 = *(v6 + 192);
  v34 = v33;
  v35 = *(v6 + 176);
  v36 = ceil(*(v6 + 184) / v33);
  v37 = *(v20 + 16);
  v38 = MEMORY[0x277D84F90];
  v39 = v20;
  if (v37)
  {
    v40 = v20;
    v82[0] = MEMORY[0x277D84F90];
    sub_26A7DCC7C(0, v37, 0);
    v38 = v82[0];
    v41 = *(v82[0] + 16);
    v42 = (v40 + 40);
    do
    {
      v43 = *v42;
      v82[0] = v38;
      v44 = *(v38 + 24);
      if (v41 >= v44 >> 1)
      {
        sub_26A7DCC7C(v44 > 1, v41 + 1, 1);
        v38 = v82[0];
      }

      *(v38 + 16) = v41 + 1;
      *(v38 + 8 * v41 + 32) = v43;
      v42 += 2;
      ++v41;
      --v37;
    }

    while (v37);
  }

  v45 = sub_26A6A550C(v38);
  v47 = v46;

  v48 = *&v45;
  if (v47)
  {
    v48 = 0.0;
  }

  if (v35 > v48)
  {
    v48 = v35;
  }

  v49 = v36 * v48;
  v50 = v36 + -1.0;
  if (v36 + -1.0 < 0.0)
  {
    v50 = 0.0;
  }

  v51 = *(v6 + 8);
  v52 = v50 * v51;
  if (v74)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = *&v75;
  }

  v54 = (v6 + *(v16 + 44));
  *v54 = v53;
  v54[1] = v49 + v52;
  *(v6 + 208) = v75;
  *(v6 + 216) = v74 & 1;
  *(v6 + 224) = v76;
  *(v6 + 232) = v77 & 1;
  *(v6 + 233) = 0;
  v55 = sub_26A6A547C();
  if (v55 == v56)
  {

    v57 = MEMORY[0x277D84F90];
LABEL_51:
    v73 = *(v16 + 48);

    *(v6 + v73) = v57;
    goto LABEL_52;
  }

  v58 = v55;
  v59 = v56;
  if (v56 < v55)
  {
    goto LABEL_59;
  }

  if (v55 < v56)
  {
    v60 = *(v6 + 200);
    v61 = v35 + v51;
    v81 = v6;
    v62 = *v6;
    v63 = __OFSUB__(v33, 1);
    v64 = (v53 - v62 * (v33 - 1)) / v34;
    v65 = 16 * v55 + 32;
    v57 = MEMORY[0x277D84F90];
    v66 = 0.0;
    while (1)
    {
      if (v60)
      {
        v67 = v64;
        if (v63)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v58 < 0)
        {
          goto LABEL_54;
        }

        if (v58 >= *(v39 + 16))
        {
          goto LABEL_56;
        }

        v67 = *(v39 + v65);
      }

      if (!v33)
      {
        break;
      }

      if (v33 == -1 && v58 == 0x8000000000000000)
      {
        goto LABEL_57;
      }

      if (v58 % v33)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0.0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A12C4();
        v57 = v71;
      }

      v69 = *(v57 + 16);
      if (v69 >= *(v57 + 24) >> 1)
      {
        sub_26A7A12C4();
        v57 = v72;
      }

      *(v57 + 16) = v69 + 1;
      v70 = (v57 + 32 * v69);
      v70[4] = v68;
      v70[5] = v61 * floor(v58 / v34);
      v70[6] = v67;
      v70[7] = v35;
      v66 = v62 + v67 + v68;
      v65 += 16;
      if (v59 == ++v58)
      {

        v6 = v81;
        v16 = v78;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_60:
  __break(1u);
}

void SearchUIButtonLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, void (**a3)(char *, char *, uint64_t), int a4, uint64_t a5)
{
  v85 = a3;
  v86 = a5;
  LODWORD(v82) = a4;
  v83 = a1;
  v80 = sub_26A84F4E8();
  OUTLINED_FUNCTION_15();
  v66 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v79 = v9 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA8, qword_26A871C70);
  MEMORY[0x28223BE20](v88);
  v78 = &v65 - v10;
  v11 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v81 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90, &unk_26A8741C0);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = (&v65 - v21);
  v22 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B98, &unk_26A871C60);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v65 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0, &unk_26A8741D0);
  v33 = v32 - 8;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v65 - v35;
  LOBYTE(v89[0]) = a2 & 1;
  v90 = v82 & 1;
  sub_26A6A59A0(v83, a2 & 1, v85, v82 & 1, v34);
  v38 = v37;
  (*(v24 + 16))(v31, v86, v22);
  (*(v24 + 32))(v28, v31, v22);
  v39 = v11;
  v40 = MEMORY[0x277CDF7F8];
  sub_26A6A6BFC(&qword_28157FE78, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_26A851998();
  v41 = *(v33 + 44);
  v42 = v22;
  v43 = v36;
  v75 = v41;
  *&v36[v41] = 0;
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168, &qword_26A868B00) + 36);
  v86 = sub_26A6A6BFC(&qword_28157FE70, v40, MEMORY[0x277CDF820]);
  v82 = 0;
  v76 = (v81 + 16);
  v85 = (v81 + 32);
  v45 = (v81 + 8);
  v71 = (v66 + 2);
  v70 = (v66 + 11);
  v69 = *MEMORY[0x277CDFA88];
  v67 = *MEMORY[0x277CDFA90];
  v83 = v38;
  v68 = v38 + 32;
  v46 = v78;
  ++v66;
  v81 = v42;
  v74 = v45;
  v73 = v15;
  while (1)
  {
    sub_26A851DD8();
    if (*(v43 + v44) != v89[0])
    {
      break;
    }

    v47 = v39;
    v48 = 1;
    v49 = v84;
LABEL_6:
    v58 = v88;
    __swift_storeEnumTagSinglePayload(v49, v48, 1, v88);
    v59 = v87;
    sub_26A6A6C44(v49, v87, &qword_2803B2B90, &unk_26A8741C0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v58) == 1)
    {
      sub_26A6A6CA0(v43);

      return;
    }

    v60 = *v87;
    v39 = v47;
    (*v85)(v15, v87 + *(v88 + 48), v47);
    if (v60 >= *(v83 + 16))
    {
      (*v45)(v15, v47);
    }

    else
    {
      v61 = type metadata accessor for SearchUIButtonLayout(0);
      v62 = v79;
      v63 = v80;
      (*v71)(v79, v72 + *(v61 + 40), v80);
      v64 = (*v70)(v62, v63);
      if (v64 == v69)
      {
        if (v60 < 0)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_7_51(v64);
        OUTLINED_FUNCTION_2_68();
        sub_26A84F0F8();
        v39 = v47;
        (*v45)(v15, v47);
      }

      else if (v64 == v67)
      {
        if (v60 < 0)
        {
          goto LABEL_22;
        }

        v39 = v47;
        sub_26A851568();
        OUTLINED_FUNCTION_2_68();
        sub_26A84F0F8();
        (*v45)(v15, v47);
      }

      else
      {
        if (v60 < 0)
        {
          goto LABEL_23;
        }

        v39 = v47;
        OUTLINED_FUNCTION_7_51(v64);
        OUTLINED_FUNCTION_2_68();
        sub_26A84F0F8();
        (*v45)(v15, v47);
        (*v66)(v79, v80);
      }

      v46 = v78;
    }
  }

  v50 = sub_26A851E18();
  v51 = v77;
  (*v76)(v77);
  v50(v89, 0);
  v52 = v44;
  v53 = v88;
  sub_26A851DE8();
  v54 = *(v53 + 48);
  v55 = v82;
  *v46 = v82;
  v47 = v39;
  (*v85)(&v46[v54], v51, v39);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (!v56)
  {
    v82 = v57;
    *(v43 + v75) = v57;
    v49 = v84;
    sub_26A6A6C44(v46, v84, &qword_2803B2BA8, qword_26A871C70);
    v48 = 0;
    v15 = v73;
    v44 = v52;
    v45 = v74;
    goto LABEL_6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t SearchUIButtonLayout.makeCache(subviews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + *(type metadata accessor for SearchUIButtonLayout(0) + 44));
  if (*(v2 + 32))
  {
    v6 = 74.0 / v2[5];
  }

  else
  {
    v6 = v5[16];
  }

  v7 = type metadata accessor for SearchUIButtonLayout.Cache(0);
  v8 = v7[10];
  sub_26A84F218();
  OUTLINED_FUNCTION_5_0();
  (*(v9 + 16))(a2 + v8, a1);
  v10 = *(v2 + 16);
  v13 = *v2;
  memcpy(__dst, v5, 0xB0uLL);
  OUTLINED_FUNCTION_6_43();
  v11 = (a2 + v7[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + v7[12]) = MEMORY[0x277D84F90];
  *(a2 + 184) = v13;
  *(a2 + 200) = v10;
  memcpy(a2, v5, 0xB0uLL);
  *(a2 + 176) = v6;
  return sub_26A54DFFC(__dst, v14);
}

void SearchUIButtonLayout.updateCache(_:subviews:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = type metadata accessor for SearchUIButtonLayout.Cache(0);
  v15 = *(v14 + 40);
  (*(v7 + 16))(v11, a1 + v15, v5);
  OUTLINED_FUNCTION_0_68();
  sub_26A6A6BFC(v16, v17, MEMORY[0x277CDF808]);
  v18 = sub_26A851758();
  (*(v7 + 8))(v11, v5);
  if ((v18 & 1) == 0 || *(a1 + 184) != v12 || *(a1 + 192) != v12 || v13 != *(a1 + 200))
  {
    (*(v7 + 24))(a1 + v15, a2, v5);
    *(a1 + 184) = v12;
    *(a1 + 192) = v12;
    *(a1 + 200) = v13;
    OUTLINED_FUNCTION_6_43();
    v19 = *(v14 + 48);

    *(a1 + v19) = MEMORY[0x277D84F90];
  }
}

void (*sub_26A6A6B68(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A6A6BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A6A6C44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A6A6CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0, &unk_26A8741D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A6A6D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VRXIdiom(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_26A84F4E8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A6A6E5C(uint64_t a1)
{
  sub_26A6A6F44();
  if (v1 <= 0x3F)
  {
    sub_26A84F218();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_26A6A6F94(319, v5, v6, v7);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6A6F44()
{
  if (!qword_2803B35D8)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B35D8);
    }
  }
}

void sub_26A6A6F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803B35E0)
  {
    type metadata accessor for CGRect(255, a2, a3, a4);
    v4 = sub_26A851B48();
    if (!v5)
    {
      atomic_store(v4, &qword_2803B35E0);
    }
  }
}

double OUTLINED_FUNCTION_2_68()
{
  *(v0 - 176) = 0;
  *(v0 - 144) = 0;
  return v1;
}

void OUTLINED_FUNCTION_6_43()
{
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 208) = 0;
  *(v0 + 232) = 256;
}

double OUTLINED_FUNCTION_7_51(uint64_t a1)
{

  sub_26A851568();
  return result;
}

id sub_26A6A7080()
{
  v1 = sub_26A6A7194(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_26A73670C())
    {
      v3 = sub_26A6A712C();
      return sub_26A6F9208(v2, 4, v3, 0);
    }
  }

  sub_26A4E353C();
  swift_allocError();
  *v5 = v0;
  *(v5 + 8) = &unk_287B134F8;
  *(v5 + 16) = 0;
  swift_willThrow();
  return v0;
}

uint64_t sub_26A6A712C()
{
  LODWORD(result) = [v0 layoutType];
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_26A6A7194(void *a1)
{
  v1 = [a1 buttons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A6A71F4();
  v3 = sub_26A851A98();

  return v3;
}

unint64_t sub_26A6A71F4()
{
  result = qword_2803AFE28;
  if (!qword_2803AFE28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AFE28);
  }

  return result;
}

void sub_26A6A7238(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v3 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = sub_26A73670C();
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D6644E0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v9 = [v6 index];
    if (v9)
    {
      v10 = v9;
      sub_26A851D58();
      v11 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
      v12 = sub_26A852568();
      MEMORY[0x26D663B00](v12);

      sub_26A6A78B0(0xD000000000000020, 0x800000026A88E5C0, v11);

      MEMORY[0x26D663CE0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v3 = v15;
      v5 = v8;
    }

    else
    {

      ++v5;
    }
  }

  sub_26A6A782C(v3, v2);
  v13 = [objc_allocWithZone(MEMORY[0x277D4C250]) initWithCard_];
  if (v13)
  {
    v14 = v13;
    InteractionDelegateWrapper.report(feedback:)();

    v2 = v14;
  }
}

void sub_26A6A7470(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_26A84E278();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v6 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  v8 = (a1 + 56);
  for (i = v5; v7; v5 = i)
  {
    v10 = *(v8 - 2);
    v9 = *(v8 - 1);
    v11 = *(v8 - 3);
    v12 = *v8;
    v13 = objc_allocWithZone(MEMORY[0x277D4C328]);

    v14 = [v13 init];
    v29 = 0xD000000000000014;
    v30 = 0x800000026A88E5F0;
    MEMORY[0x26D663B00](v11, v10);
    sub_26A6A78B0(v29, v30, v14);

    sub_26A5066FC(v9, v12);
    MEMORY[0x26D663CE0]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26A851B08();
    }

    sub_26A851B28();
    v6 = v31;
    v8 += 32;
    --v7;
  }

  sub_26A6A782C(v6, v5);
  sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
  switch(sub_26A63CD18(v15))
  {
    case 1u:

      goto LABEL_8;
    case 4u:
      goto LABEL_9;
    default:
      v16 = sub_26A852598();

      if (v16)
      {
LABEL_8:
        v17 = v26;
        (*(v24 + 104))(v26, *MEMORY[0x277D63760], v25);
        LOBYTE(v29) = 1;
        LOBYTE(v31) = 74;
        v18 = objc_allocWithZone(type metadata accessor for RFInteractionPerformed(0));
        v19 = RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:)(0xD000000000000011, 0x800000026A88E610, v17, &v29, &v31, 0, 0);
        sub_26A5E6164(v19, 0xD000000000000011, 0x800000026A88E610);
      }

      else
      {
LABEL_9:
        v20 = objc_allocWithZone(MEMORY[0x277D4C250]);
        v21 = [v20 initWithCard_];
        if (v21)
        {
          v22 = v21;
          InteractionDelegateWrapper.report(feedback:)();
        }

        v23 = i;
      }

      return;
  }
}

void sub_26A6A782C(uint64_t a1, void *a2)
{
  sub_26A4EC5B0(0, qword_2815804E0, 0x277D4C238);
  v3 = sub_26A851A88();

  [a2 setCardSections_];
}

void sub_26A6A78B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setCommandDetail_];
}

uint64_t sub_26A6A7914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = (v6 - v5);
  sub_26A54F32C(a1, a2);
  sub_26A54F32C(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = (a2 + *(type metadata accessor for AnyRootView(0) + 20));
  if (EnumCaseMultiPayload == 1)
  {
    v9[3] = &type metadata for PluginView;
    v9[4] = sub_26A54F390();
    v10 = swift_allocObject();
    *v9 = v10;
    memcpy((v10 + 16), v7, 0x58uLL);
  }

  else
  {
    v9[3] = type metadata accessor for ResponseView(0);
    v9[4] = sub_26A6A80B0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    sub_26A54F494(v7, boxed_opaque_existential_1);
  }

  return sub_26A6A8058(a1, type metadata accessor for AnyRootView.ContentType);
}

uint64_t AnyRootView.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ResponseView(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = (v8 - v7);
  sub_26A54F32C(v1, v8 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v12, v9, sizeof(v12));
    v10 = PluginView.description.getter();
    sub_26A6A7DE0(__dst);
  }

  else
  {
    sub_26A54F494(v9, v5);
    v10 = ResponseView.description.getter();
    sub_26A6A8058(v5, type metadata accessor for ResponseView);
  }

  return v10;
}

uint64_t AnyRootView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnyRootView(0) + 20));
  v4 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = View.eraseToAnyView()(v4);
  *a1 = result;
  return result;
}

uint64_t sub_26A6A7F10(uint64_t a1)
{
  result = type metadata accessor for AnyRootView.ContentType(319);
  if (v2 <= 0x3F)
  {
    result = sub_26A6A7F94();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26A6A7F94()
{
  result = qword_2803B35F8;
  if (!qword_2803B35F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803B35F8);
  }

  return result;
}

uint64_t sub_26A6A7FF0(uint64_t a1)
{
  result = type metadata accessor for ResponseView(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6A8058(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A6A80B0()
{
  result = qword_2803ACF80;
  if (!qword_2803ACF80)
  {
    type metadata accessor for ResponseView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACF80);
  }

  return result;
}

uint64_t sub_26A6A8134(uint64_t a1)
{
  sub_26A5582C8(a1, &v6);
  if (v7)
  {
    sub_26A4C2314(&v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    sub_26A537648(a1);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_26A537648(a1);
    sub_26A537648(&v6);
    return 0;
  }

  return v4;
}

BOOL sub_26A6A8230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A6A8318@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v119);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v117 + 1) = &type metadata for PartialText;
      v118 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v116[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v116[0] + 16);
    }

    else
    {
      v118 = 0;
      v117 = 0u;
      *v116 = 0u;
    }

    v10 = [v2 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v114 + 1) = &type metadata for PartialText;
      v115 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v113[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v113[0] + 16);
    }

    else
    {
      v115 = 0;
      v114 = 0u;
      *v113 = 0u;
    }

    v12 = [v2 text_4];
    if (v12)
    {
      v13 = v12;
      *(&v111 + 1) = &type metadata for PartialText;
      v112 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v110[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v110[0] + 16);
    }

    else
    {
      v112 = 0;
      v111 = 0u;
      *v110 = 0u;
    }

    v14 = [v2 thumbnail];
    if (v14)
    {
      v15 = v14;
      *(&v108 + 1) = sub_26A84BD28();
      v109 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v107);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v109 = 0;
      v108 = 0u;
      *v107 = 0u;
    }

    v16 = [v2 addTint];
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    *v97 = xmmword_281588758;
    v98 = unk_281588768;
    *v99 = xmmword_281588778;
    v100 = xmmword_281588788;
    *v101 = xmmword_281588758;
    v102 = unk_281588768;
    *v103 = xmmword_281588778;
    v104 = xmmword_281588788;
    *v59 = xmmword_281588788;
    v62 = xmmword_281588778;
    sub_26A4EA070(v97, __dst, &qword_2803A91B0, &unk_26A854CA0);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xC0uLL);
    a1[12] = v62;
    a1[13] = *v59;
    v17 = v102;
    a1[14] = *v101;
    a1[15] = v17;
    v18 = v104;
    a1[16] = *v103;
    a1[17] = v18;
    v19 = type metadata accessor for PrimaryHeaderRichView(0);
    v20 = v19[5];
    *(a1 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v21 = a1 + v19[6];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v22 = v19[7];
    *(a1 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v23 = memcpy(__dst, v119, 0xFAuLL);
    OUTLINED_FUNCTION_1_68(v23, v24, v25, v26, v27, v28, v29, v30, v59[0], v59[1], v62, *(&v62 + 1), v65[0], v65[1], v65[2], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]);
    sub_26A4EC458(__dst, v65);
    sub_26A4EC4B4();
    *(a1 + v19[8]) = sub_26A851248();
    sub_26A4EA070(v116, v95, &qword_2803A91B8, &qword_26A8575C0);
    if (v96)
    {
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v31 = OUTLINED_FUNCTION_1_2();
      v33 = v32(v31);
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    else
    {
      sub_26A4E2544(v95, &qword_2803A91B8, &qword_26A8575C0);
      v33 = 0;
    }

    *(a1 + v19[9]) = v33;
    sub_26A4EA070(v113, v95, &qword_2803A91B8, &qword_26A8575C0);
    if (v96)
    {
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v34 = OUTLINED_FUNCTION_1_2();
      v36 = v35(v34);
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    else
    {
      sub_26A4E2544(v95, &qword_2803A91B8, &qword_26A8575C0);
      v36 = 0;
    }

    *(a1 + v19[10]) = v36;
    sub_26A4EA070(v110, v95, &qword_2803A91B8, &qword_26A8575C0);
    if (v96)
    {
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v37 = OUTLINED_FUNCTION_1_2();
      v39 = v38(v37);
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    else
    {
      sub_26A4E2544(v95, &qword_2803A91B8, &qword_26A8575C0);
      v39 = 0;
    }

    *(a1 + v19[11]) = v39;
    v40 = sub_26A4EA070(v107, v65, &qword_2803A91B8, &qword_26A8575C0);
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v48 = OUTLINED_FUNCTION_1_2();
      v50 = v49(v48);

      OUTLINED_FUNCTION_1_68(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v63, v64, v65[0], v65[1], v65[2], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]);
      sub_26A4EC508(v95);
      OUTLINED_FUNCTION_4_54(v107);
      OUTLINED_FUNCTION_4_54(v110);
      OUTLINED_FUNCTION_4_54(v113);
      OUTLINED_FUNCTION_4_54(v116);
      result = __swift_destroy_boxed_opaque_existential_1(v65);
    }

    else
    {
      OUTLINED_FUNCTION_1_68(v40, v41, v42, v43, v44, v45, v46, v47, v60, v61, v63, v64, v65[0], v65[1], v65[2], 0, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]);
      sub_26A4EC508(v95);

      OUTLINED_FUNCTION_2_8(v107);
      OUTLINED_FUNCTION_2_8(v110);
      OUTLINED_FUNCTION_2_8(v113);
      OUTLINED_FUNCTION_2_8(v116);
      result = OUTLINED_FUNCTION_2_8(v65);
      v50 = 0;
    }

    *(a1 + v19[12]) = v50;
    *(a1 + v19[13]) = v16;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B136B8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}