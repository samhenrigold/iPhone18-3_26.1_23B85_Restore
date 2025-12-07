uint64_t sub_22701D448(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = sub_22742F870(a1, *v4, v4[1], *(v4 + 16), v4[3]);
  v6 = sub_226EC6320(0);
  if (v2)
  {
  }

  else
  {
    v7 = v6;
    [v6 setResultType_];
    [v7 setFetchLimit_];
    [v7 setFetchOffset_];
    [v7 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v5 = sub_22766C9D0();
  }

  return v5;
}

char *sub_22701D560(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230638(a1);
  v12 = v11;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v31[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v31, v29, &unk_27D7BC990, &qword_227670A30);
  v14 = v30;
  if (v30)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v29, v30);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v31, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v22 = sub_22766A080();
  v24 = v23;
  MEMORY[0x22AA985C0]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v22(v31, 0);
  swift_endAccess();

  v25 = sub_227232EB8(100);
  swift_setDeallocating();

  v26 = qword_2813B2078;
  v27 = sub_22766A100();
  (*(*(v27 - 8) + 8))(v8 + v26, v27);
  swift_deallocClassInstance();
  return v25;
}

char *sub_22701D97C(uint64_t a1, void *a2, double a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  sub_227230638(a1);
  v14 = v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v51[0] = v14;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v48 = v15;
  v16 = sub_22766C820();
  sub_226E93170(v51, v49, &unk_27D7BC990, &qword_227670A30);
  v17 = v50;
  if (v50)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v49, v50);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    v23 = 0;
  }

  v47 = objc_opt_self();
  v24 = [v47 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  [objc_allocWithZone(v46) initWithLeftExpression:v16 rightExpression:v24 modifier:0 type:10 options:0];

  sub_226E97D1C(v51, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v51, 0);
  swift_endAccess();

  swift_getKeyPath();
  v52 = MEMORY[0x277D839F8];
  *v51 = a3;

  v28 = sub_22766C820();
  sub_226E93170(v51, v49, &unk_27D7BC990, &qword_227670A30);
  v29 = v50;
  if (v50)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v49, v50);
    v31 = *(v29 - 8);
    v32 = MEMORY[0x28223BE20](v30);
    v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    v35 = 0;
  }

  v36 = [v47 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v37 = [objc_allocWithZone(v46) initWithLeftExpression:v28 rightExpression:v36 modifier:0 type:3 options:0];

  sub_226E97D1C(v51, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v38 = v37;
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(v51, 0);
  swift_endAccess();

  v42 = sub_227232EB8(100);
  swift_setDeallocating();

  v43 = qword_2813B2078;
  v44 = sub_22766A100();
  (*(*(v44 - 8) + 8))(v10 + v43, v44);
  swift_deallocClassInstance();
  return v42;
}

char *sub_22701DFE8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230638(a1);
  v12 = v11;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v31[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v31, v29, &unk_27D7BC990, &qword_227670A30);
  v14 = v30;
  if (v30)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v29, v30);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9180 &qword_227673220))];

  sub_226E97D1C(v31, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v22 = sub_22766A080();
  v24 = v23;
  MEMORY[0x22AA985C0]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v22(v31, 0);
  swift_endAccess();

  v25 = sub_2272361B8(100);
  swift_setDeallocating();

  v26 = qword_2813B2078;
  v27 = sub_22766A100();
  (*(*(v27 - 8) + 8))(v8 + v26, v27);
  swift_deallocClassInstance();
  return v25;
}

unint64_t sub_22701E404()
{
  result = qword_28139B740;
  if (!qword_28139B740)
  {
    sub_227665CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B740);
  }

  return result;
}

void sub_22701E5B0(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v284 = a8;
  v278 = a7;
  v262 = a6;
  v282 = a5;
  v277 = a4;
  v290 = a3;
  v300 = a2;
  v292 = a1;
  v293 = a9;
  v275 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA0, &qword_227675D18);
  v265 = *(v14 - 8);
  v266 = v14;
  MEMORY[0x28223BE20](v14);
  v264 = &v253 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v286 = *(v16 - 8);
  v287 = v16;
  MEMORY[0x28223BE20](v16);
  v285 = &v253 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CC8, &unk_227675D50);
  MEMORY[0x28223BE20](v18 - 8);
  v299 = &v253 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  MEMORY[0x28223BE20](v20 - 8);
  v297 = &v253 - v21;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  v283 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v294 = &v253 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  MEMORY[0x28223BE20](v23 - 8);
  v279 = &v253 - v24;
  v25 = sub_227665970();
  v280 = *(v25 - 8);
  v281 = v25;
  MEMORY[0x28223BE20](v25);
  v269 = &v253 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  MEMORY[0x28223BE20](v27 - 8);
  v259 = &v253 - v28;
  v29 = sub_2276659A0();
  v260 = *(v29 - 8);
  v261 = v29;
  MEMORY[0x28223BE20](v29);
  v256 = &v253 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_227662750();
  v273 = *(v31 - 8);
  v274 = v31;
  MEMORY[0x28223BE20](v31);
  v272 = &v253 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  MEMORY[0x28223BE20](v33 - 8);
  v270 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v268 = &v253 - v36;
  MEMORY[0x28223BE20](v37);
  v276 = &v253 - v38;
  MEMORY[0x28223BE20](v39);
  v267 = &v253 - v40;
  v41 = sub_227665AD0();
  v295 = *(v41 - 8);
  v296 = v41;
  MEMORY[0x28223BE20](v41);
  v271 = &v253 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v258 = &v253 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v253 - v46;
  v48 = sub_2276651F0();
  v289 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v253 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22766B7F0();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v253 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22766B390();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v255 = &v253 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v254 = &v253 - v59;
  MEMORY[0x28223BE20](v60);
  v257 = &v253 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = &v253 - v63;
  sub_22766A740();
  sub_22766B370();
  v66 = *(v56 + 8);
  v65 = (v56 + 8);
  v263 = v55;
  v67 = v55;
  v68 = v66;
  v66(v64, v67);
  v291 = v52;
  v69 = *(v52 + 16);
  v301 = v54;
  v70 = v292;
  v292 = v51;
  v71 = v51;
  v72 = v48;
  v73 = v289;
  v69(v54, v70, v71);
  sub_226E93170(v290, v47, &qword_27D7B9140, &unk_22767F4E0);
  if ((*(v73 + 48))(v47, 1, v72) == 1)
  {
    v253 = v68;
    v257 = v65;
    sub_226E97D1C(v47, &qword_27D7B9140, &unk_22767F4E0);
    v74 = v277;
    v75 = v275;
    goto LABEL_6;
  }

  (*(v73 + 32))(v50, v47, v72);
  v76 = sub_2276651D0();
  sub_2275A5038(v76);
  v78 = v77;

  if (v78)
  {
    v79 = v50;
    sub_227331EA0(v78);
    v81 = v80;

    v82 = sub_22766B7D0();
    v84 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v304[0] = *v84;
    *v84 = 0x8000000000000000;
    v75 = v275;
    sub_2270318E8(v81, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v304);
    if (v75)
    {
      goto LABEL_72;
    }

    v253 = v68;
    v257 = v65;

    *v84 = v304[0];

    v82(&v305, 0);
    (*(v73 + 8))(v79, v72);
    v74 = v277;
LABEL_6:

    v86 = sub_22766B7D0();
    v84 = v87;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v304[0] = *v84;
    *v84 = 0x8000000000000000;
    sub_2270318E8(a14, sub_227553D14, 0, v88, v304);
    if (!v75)
    {

      *v84 = v304[0];

      v86(&v305, 0);

      v89 = sub_22766B7D0();
      v91 = v90;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v304[0] = *v91;
      *v91 = 0x8000000000000000;
      sub_2270318E8(v74, sub_227553D14, 0, v92, v304);
      v93 = a10;

      *v91 = v304[0];

      v89(&v305, 0);
      v94 = sub_2276636F0();
      v96 = v295;
      v95 = v296;
      v97 = v299;
      if (v94)
      {
        v98 = v267;
        sub_226E93170(a10, v267, &qword_27D7B8428, &qword_227675CB0);
        if ((*(v96 + 48))(v98, 1, v95) == 1)
        {
          sub_226E97D1C(v98, &qword_27D7B8428, &qword_227675CB0);
        }

        else
        {
          v99 = v258;
          (*(v96 + 32))(v258, v98, v95);
          v100 = v272;
          sub_227662740();
          v101 = sub_227665AA0();
          (*(v273 + 8))(v100, v274);
          if (v101)
          {
            v305 = sub_227666680();
            LOBYTE(v306) = v102 & 1;
            LOBYTE(v304[0]) = 1;
            sub_227033D54();
            sub_227033DA8();
            if (sub_227663B30())
            {
              v103 = v99;
              v104 = sub_227664770();
              v106 = v105;
              v307 = MEMORY[0x277D837D0];
              v305 = 0x65766F72706D69;
              v306 = 0xE700000000000000;
              v107 = sub_22766B7D0();
              sub_22736373C(&v305, v104, v106);
              v107(v304, 0);
              v96 = v295;
              v108 = *(v295 + 8);
              v109 = v103;
            }

            else
            {
              v96 = v295;
              v108 = *(v295 + 8);
              v109 = v99;
            }

            v95 = v296;
            v108(v109, v296);
            v97 = v299;
            v93 = a10;
          }

          else
          {
            (*(v96 + 8))(v99, v95);
            v97 = v299;
          }
        }
      }

      v120 = v276;
      sub_226E93170(v93, v276, &qword_27D7B8428, &qword_227675CB0);
      v121 = v96;
      v122 = v120;
      v123 = *(v121 + 48);
      v289 = v121 + 48;
      v277 = v123;
      if (v123(v120, 1, v95) == 1)
      {
        sub_226E97D1C(v120, &qword_27D7B8428, &qword_227675CB0);
        v124 = v298;
      }

      else
      {
        v125 = v271;
        (*(v121 + 32))(v271, v122, v95);
        v126 = sub_227663700();
        v124 = v298;
        if (v126)
        {
          v127 = sub_227665A90();
          sub_2275A5364(v127);
          v129 = v128;

          if (v129)
          {
            v130 = sub_22766B7D0();
            v132 = v131;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v304[0] = *v132;
            *v132 = 0x8000000000000000;
            sub_2270318E8(v129, sub_227553D14, 0, v133, v304);

            *v132 = v304[0];

            v130(&v305, 0);
            v95 = v296;
            (*(v295 + 8))(v271, v296);
          }

          else
          {
            v134 = v254;
            sub_22766A740();
            v135 = sub_22766B380();
            v136 = sub_22766C890();
            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              *v137 = 0;
              _os_log_impl(&dword_226E8E000, v135, v136, "Unable to serialize subscription data", v137, 2u);
              MEMORY[0x22AA9A450](v137, -1, -1);
            }

            v138 = v263;
            v253(v134, v263);
            v139 = sub_2276636A0();
            sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
            v140 = swift_allocError();
            (*(*(v139 - 8) + 104))(v141, *MEMORY[0x277D50040], v139);
            swift_willThrow();
            v142 = v140;
            v143 = v255;
            sub_22766A740();
            v144 = v140;
            v145 = sub_22766B380();
            v146 = sub_22766C890();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v305 = v148;
              *v147 = 136446210;
              swift_getErrorValue();
              LODWORD(v276) = v146;
              v149 = MEMORY[0x22AA995D0](v302, v303);
              v151 = sub_226E97AE8(v149, v150, &v305);

              *(v147 + 4) = v151;
              _os_log_impl(&dword_226E8E000, v145, v276, "Error applying subscription data: %{public}s", v147, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v148);
              MEMORY[0x22AA9A450](v148, -1, -1);
              MEMORY[0x22AA9A450](v147, -1, -1);

              v152 = v143;
              v153 = v263;
            }

            else
            {

              v152 = v143;
              v153 = v138;
            }

            v253(v152, v153);
            v95 = v296;
            (*(v295 + 8))(v271, v296);
          }

          v124 = v298;
          v97 = v299;
        }

        else
        {
          (*(v121 + 8))(v125, v95);
        }
      }

      v154 = sub_2276636E0();
      v155 = v297;
      if (v154)
      {
        v156 = v268;
        sub_226E93170(v93, v268, &qword_27D7B8428, &qword_227675CB0);
        if (v277(v156, 1, v95) == 1)
        {
          sub_226E97D1C(v156, &qword_27D7B8428, &qword_227675CB0);
          v157 = 0;
        }

        else
        {
          v158 = v272;
          sub_227662740();
          v157 = sub_227665AA0();
          (*(v273 + 8))(v158, v274);
          (*(v295 + 8))(v156, v95);
        }

        v159 = sub_227664790();
        v161 = v160;
        v307 = MEMORY[0x277D839B0];
        LOBYTE(v305) = v157 & 1;
        v162 = sub_22766B7D0();
        sub_22736373C(&v305, v159, v161);
        v162(v304, 0);
        v124 = v298;
        v97 = v299;
        v155 = v297;
      }

      v290 = v93;
      if (v278 & 1) != 0 && (sub_227663710())
      {
        v163 = v259;
        sub_226E93170(v262, v259, &qword_27D7B9148, &qword_2276730B0);
        v165 = v260;
        v164 = v261;
        v166 = (*(v260 + 48))(v163, 1, v261);
        v167 = MEMORY[0x277D839B0];
        if (v166 == 1)
        {
          sub_226E97D1C(v163, &qword_27D7B9148, &qword_2276730B0);
          v168 = sub_2276647C0();
          v170 = v169;
          v307 = v167;
          LOBYTE(v305) = 0;
          v171 = sub_22766B7D0();
          sub_22736373C(&v305, v168, v170);
          v171(v304, 0);
        }

        else
        {
          v173 = v256;
          (*(v165 + 32))(v256, v163, v164);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
          v174 = v164;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_227675BD0;
          *(inited + 32) = sub_2276647C0();
          *(inited + 40) = v176;
          *(inited + 72) = v167;
          *(inited + 48) = 1;
          *(inited + 80) = sub_227664870();
          *(inited + 88) = v177;
          v178 = sub_227665980();
          v179 = MEMORY[0x277D83B88];
          *(inited + 120) = MEMORY[0x277D83B88];
          *(inited + 96) = v178;
          *(inited + 128) = sub_227664850();
          *(inited + 136) = v180;
          v181 = sub_227665990();
          *(inited + 168) = v179;
          *(inited + 144) = v181;
          v182 = sub_227149264(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
          swift_arrayDestroy();
          v183 = sub_22766B7D0();
          v185 = v184;
          v186 = swift_isUniquelyReferenced_nonNull_native();
          v304[0] = *v185;
          *v185 = 0x8000000000000000;
          sub_2270318E8(v182, sub_227553D14, 0, v186, v304);

          *v185 = v304[0];

          v183(&v305, 0);
          (*(v165 + 8))(v173, v174);
        }

        v172 = v294;
        v124 = v298;
        v97 = v299;
        v155 = v297;
      }

      else
      {
        v172 = v294;
      }

      v187 = v279;
      sub_226E93170(v282, v279, &qword_27D7B9150, &unk_227675CD0);
      v189 = v280;
      v188 = v281;
      if ((*(v280 + 48))(v187, 1, v281) == 1)
      {
        sub_226E97D1C(v187, &qword_27D7B9150, &unk_227675CD0);
      }

      else
      {
        v190 = v269;
        (*(v189 + 32))(v269, v187, v188);
        v191 = sub_227665960();
        sub_227331EA0(v191);
        v193 = v192;

        v194 = sub_22766B7D0();
        v196 = v195;
        v197 = swift_isUniquelyReferenced_nonNull_native();
        v304[0] = *v196;
        *v196 = 0x8000000000000000;
        sub_2270318E8(v193, sub_227553D14, 0, v197, v304);

        *v196 = v304[0];

        v194(&v305, 0);
        (*(v189 + 8))(v190, v188);
        v172 = v294;
        v124 = v298;
        v97 = v299;
        v155 = v297;
      }

      v198 = v290;
      sub_226E93170(v284, v155, &qword_27D7B9138, &unk_227675CC0);
      v199 = (*(v283 + 48))(v155, 1, v124);
      v200 = v288;
      v201 = v301;
      if (v199 == 1)
      {
        v202 = &qword_27D7B9138;
        v203 = &unk_227675CC0;
        v204 = v155;
      }

      else
      {
        sub_226E95D18(v155, v172, &qword_27D7B9160, &qword_227675CE0);
        sub_227663B00();
        v205 = sub_227664D00();
        v206 = *(v205 - 8);
        if ((*(v206 + 48))(v97, 1, v205) == 1)
        {
          sub_226E97D1C(v172, &qword_27D7B9160, &qword_227675CE0);
          v202 = &qword_27D7B9CC8;
          v203 = &unk_227675D50;
          v204 = v97;
        }

        else
        {
          v207 = sub_227664CF0();
          v209 = v208;
          (*(v206 + 8))(v97, v205);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
          v210 = swift_initStackObject();
          *(v210 + 16) = xmmword_227670CD0;
          *(v210 + 32) = 0xD00000000000001DLL;
          v211 = v210 + 32;
          *(v210 + 72) = MEMORY[0x277D837D0];
          *(v210 + 40) = 0x8000000227697410;
          *(v210 + 48) = v207;
          *(v210 + 56) = v209;
          v212 = sub_227149264(v210);
          swift_setDeallocating();
          sub_226E97D1C(v211, &unk_27D7BE5C0, &qword_22767D1D0);
          v213 = sub_22766B7D0();
          v215 = v214;
          v216 = swift_isUniquelyReferenced_nonNull_native();
          v304[0] = *v215;
          *v215 = 0x8000000000000000;
          sub_2270318E8(v212, sub_227553D14, 0, v216, v304);

          *v215 = v304[0];

          v213(&v305, 0);
          v202 = &qword_27D7B9160;
          v203 = &qword_227675CE0;
          v204 = v294;
        }
      }

      sub_226E97D1C(v204, v202, v203);
      __swift_project_boxed_opaque_existential_0((v200 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider), *(v200 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider + 24));
      v217 = off_283A9A9B0(v300);
      if ((v218 & 1) == 0)
      {
        v219 = v217;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
        v220 = swift_initStackObject();
        *(v220 + 16) = xmmword_227670CD0;
        *(v220 + 32) = sub_2276647B0();
        *(v220 + 72) = MEMORY[0x277D83B88];
        *(v220 + 40) = v221;
        *(v220 + 48) = v219;
        v222 = sub_227149264(v220);
        swift_setDeallocating();
        sub_226E97D1C(v220 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
        v223 = sub_22766B7D0();
        v225 = v224;
        v226 = swift_isUniquelyReferenced_nonNull_native();
        v304[0] = *v225;
        *v225 = 0x8000000000000000;
        sub_2270318E8(v222, sub_227553D14, 0, v226, v304);

        *v225 = v304[0];

        v223(&v305, 0);
      }

      v227 = v285;
      v228 = v286;
      v229 = v287;
      (*(v286 + 16))(v285, v200 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior, v287);
      sub_227669730();
      (*(v228 + 8))(v227, v229);
      if (v305)
      {
        goto LABEL_61;
      }

      v230 = v270;
      sub_226E93170(v198, v270, &qword_27D7B8428, &qword_227675CB0);
      v231 = v296;
      if (v277(v230, 1, v296) == 1)
      {
        sub_226E97D1C(v230, &qword_27D7B8428, &qword_227675CB0);
      }

      else
      {
        v232 = v272;
        sub_227662740();
        v233 = sub_227665AA0();
        (*(v273 + 8))(v232, v274);
        (*(v295 + 8))(v230, v231);
        if (v233)
        {
LABEL_61:
          sub_22766B870();
          v307 = sub_22766B9C0();
          v308 = MEMORY[0x277D21FB0];
          __swift_allocate_boxed_opaque_existential_0(&v305);
          sub_22766B9B0();
          sub_22766BDC0();

          __swift_destroy_boxed_opaque_existential_0(&v305);
          sub_227669270();
LABEL_70:
          (*(v291 + 8))(v201, v292);
          return;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
      v234 = swift_initStackObject();
      *(v234 + 16) = xmmword_227670CD0;
      *(v234 + 32) = sub_2276648A0();
      *(v234 + 40) = v235;
      v236 = sub_2276637A0();
      *(v234 + 72) = MEMORY[0x277D837D0];
      *(v234 + 48) = v236;
      *(v234 + 56) = v237;
      v238 = sub_227149264(v234);
      swift_setDeallocating();
      sub_226E97D1C(v234 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
      v239 = sub_22766B7D0();
      v241 = v240;
      v242 = swift_isUniquelyReferenced_nonNull_native();
      v304[0] = *v241;
      *v241 = 0x8000000000000000;
      sub_226FDAC14(v238, sub_227553D14, 0, v242, v304);

      *v241 = v304[0];

      v239(&v305, 0);
      v243 = v264;
      sub_22766BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
      sub_22766BA90();
      (*(v265 + 8))(v243, v266);
      v244 = v305;
      if (!v305)
      {
        v244 = sub_227149264(MEMORY[0x277D84F90]);
      }

      v245 = sub_22766B7D0();
      v247 = v246;
      v248 = swift_isUniquelyReferenced_nonNull_native();
      v304[0] = *v247;
      *v247 = 0x8000000000000000;
      sub_226FDAC14(v244, sub_227553D14, 0, v248, v304);

      *v247 = v304[0];

      v245(&v305, 0);
      v249 = *(v200 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_amsEngagement);
      v250 = sub_22766B7E0();
      sub_227332110(v250);

      v251 = sub_22766BE90();

      v252 = [v249 enqueueData_];

      *(swift_allocObject() + 16) = v252;
      sub_227669280();
      goto LABEL_70;
    }

LABEL_72:

    *v84 = v304[0];

    __break(1u);
    return;
  }

  v110 = v257;
  sub_22766A740();
  v111 = sub_22766B380();
  v112 = sub_22766C890();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = v72;
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_226E8E000, v111, v112, "Unable to serialize click event", v114, 2u);
    v115 = v114;
    v72 = v113;
    MEMORY[0x22AA9A450](v115, -1, -1);
  }

  v68(v110, v263);
  v116 = sub_2276636A0();
  sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
  v117 = swift_allocError();
  (*(*(v116 - 8) + 104))(v118, *MEMORY[0x277D50040], v116);
  *(swift_allocObject() + 16) = v117;
  v119 = v117;
  sub_227669280();
  (*(v73 + 8))(v50, v72);
  (*(v291 + 8))(v301, v292);
}

void sub_227020644(void *a1)
{
  v3[4] = sub_2270206FC;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_226E9F1D0;
  v3[3] = &block_descriptor_8;
  v2 = _Block_copy(v3);
  [a1 addFinishBlock_];
  _Block_release(v2);
}

void sub_2270206FC(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    sub_22766A740();
    v8 = a2;
    v9 = sub_22766B380();
    v10 = sub_22766C890();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x22AA995D0](v16[2], v16[3]);
      v15 = sub_226E97AE8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_226E8E000, v9, v10, "Error reporting engagement event for non subscribed user %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA9A450](v12, -1, -1);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2270208EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v507) = a3;
  v468 = a2;
  v505 = a4;
  v503 = 0;
  v431 = sub_2276651A0();
  v430 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v429 = &v424 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_22766B390();
  v432 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v434 = &v424 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_227663A40();
  v427 = *(v428 - 8);
  MEMORY[0x28223BE20](v428);
  v426 = &v424 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = v7;
  MEMORY[0x28223BE20](v8);
  v440 = &v424 - v9;
  v439 = sub_227665E10();
  v438 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v437 = &v424 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = v10;
  MEMORY[0x28223BE20](v11);
  v445 = &v424 - v12;
  v454 = sub_227667520();
  v453 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v444 = &v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v451 = &v424 - v15;
  v461 = sub_227664D20();
  v467 = *(v461 - 8);
  MEMORY[0x28223BE20](v461);
  v466 = &v424 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = sub_2276651C0();
  v477 = *(v478 - 8);
  MEMORY[0x28223BE20](v478);
  v476 = &v424 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_227663690();
  v473 = *(v474 - 8);
  MEMORY[0x28223BE20](v474);
  v472 = &v424 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = v18;
  MEMORY[0x28223BE20](v19);
  v485 = &v424 - v20;
  v484 = sub_227667DA0();
  v483 = *(v484 - 8);
  v21 = *(v483 + 64);
  MEMORY[0x28223BE20](v484);
  v482 = &v424 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v492 = &v424 - v23;
  v496 = sub_227663260();
  v502 = *(v496 - 8);
  MEMORY[0x28223BE20](v496);
  v446 = &v424 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v441 = &v424 - v26;
  MEMORY[0x28223BE20](v27);
  v455 = &v424 - v28;
  MEMORY[0x28223BE20](v29);
  v460 = &v424 - v30;
  MEMORY[0x28223BE20](v31);
  v486 = &v424 - v32;
  v498 = sub_22766B910();
  v497 = *(v498 - 8);
  MEMORY[0x28223BE20](v498);
  v448 = &v424 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v452 = &v424 - v35;
  MEMORY[0x28223BE20](v36);
  v465 = &v424 - v37;
  MEMORY[0x28223BE20](v38);
  v470 = &v424 - v39;
  MEMORY[0x28223BE20](v40);
  *&v494 = &v424 - v41;
  v504 = sub_22766B7F0();
  v501 = *(v504 - 8);
  MEMORY[0x28223BE20](v504);
  v447 = &v424 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v450 = &v424 - v44;
  MEMORY[0x28223BE20](v45);
  v459 = &v424 - v46;
  MEMORY[0x28223BE20](v47);
  v469 = &v424 - v48;
  MEMORY[0x28223BE20](v49);
  v500 = &v424 - v50;
  v499 = v51;
  MEMORY[0x28223BE20](v52);
  v493 = &v424 - v53;
  v54 = sub_2276624A0();
  v495 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v435 = &v424 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v458 = &v424 - v57;
  MEMORY[0x28223BE20](v58);
  v457 = &v424 - v59;
  MEMORY[0x28223BE20](v60);
  v481 = &v424 - v61;
  MEMORY[0x28223BE20](v62);
  v480 = &v424 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v64 - 8);
  v442 = &v424 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v463 = &v424 - v67;
  MEMORY[0x28223BE20](v68);
  v462 = &v424 - v69;
  MEMORY[0x28223BE20](v70);
  v479 = &v424 - v71;
  MEMORY[0x28223BE20](v72);
  v475 = &v424 - v73;
  MEMORY[0x28223BE20](v74);
  v487 = &v424 - v75;
  MEMORY[0x28223BE20](v76);
  v490 = &v424 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = &v424 - v79;
  MEMORY[0x28223BE20](v81);
  v83 = &v424 - v82;
  MEMORY[0x28223BE20](v84);
  v86 = &v424 - v85;
  v87 = sub_227666180();
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v424 = &v424 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v92 = (&v424 - v91);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v488 = *(v93 - 8);
  v94 = *(v488 + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v443 = &v424 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v449 = &v424 - v96;
  MEMORY[0x28223BE20](v97);
  v456 = &v424 - v98;
  MEMORY[0x28223BE20](v99);
  v464 = &v424 - v100;
  MEMORY[0x28223BE20](v101);
  v489 = &v424 - v102;
  MEMORY[0x28223BE20](v103);
  v491 = &v424 - v104;
  MEMORY[0x28223BE20](v105);
  v508 = &v424 - v106;
  sub_227665170();
  sub_227665190();
  v107 = (*(v88 + 88))(v92, v87);
  if (v107 == *MEMORY[0x277D52140])
  {
    (*(v88 + 96))(v92, v87);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CB8, &qword_227675D38);
    v109 = *(v108 + 48);
    v110 = (v92 + *(v108 + 64));
    v112 = *v110;
    v111 = v110[1];
    v488 = v112;
    v489 = v111;
    sub_226E95D18(v92, v86, &unk_27D7BB570, &unk_227670FC0);
    v492 = v83;
    sub_226E95D18(v92 + v109, v83, &unk_27D7BB570, &unk_227670FC0);
    v113 = sub_227149264(MEMORY[0x277D84F90]);
    sub_226E93170(v86, v80, &unk_27D7BB570, &unk_227670FC0);
    v114 = v495;
    v115 = *(v495 + 48);
    v116 = v86;
    if (v115(v80, 1, v54) == 1)
    {
      sub_226E97D1C(v80, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v127 = v480;
      (*(v114 + 32))(v480, v80, v54);
      v128 = sub_227662390();
      v512 = MEMORY[0x277D837D0];
      *&v511 = v128;
      *(&v511 + 1) = v129;
      sub_226F04970(&v511, &v510);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v513 = v113;
      sub_22736A46C(&v510, 0x6C72556E65706FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      (*(v114 + 8))(v127, v54);
      v113 = v513;
    }

    v131 = v490;
    sub_226E93170(v492, v490, &unk_27D7BB570, &unk_227670FC0);
    v132 = v115(v131, 1, v54);
    v133 = v506;
    if (v132 == 1)
    {
      sub_226E97D1C(v131, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v145 = v481;
      (*(v114 + 32))(v481, v131, v54);
      v146 = v487;
      (*(v114 + 16))(v487, v145, v54);
      (*(v114 + 56))(v146, 0, 1, v54);
      v147 = v114;
      v148 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
      swift_beginAccess();
      sub_227033718(v146, v133 + v148);
      swift_endAccess();
      v149 = sub_227662390();
      v512 = MEMORY[0x277D837D0];
      *&v511 = v149;
      *(&v511 + 1) = v150;
      sub_226F04970(&v511, &v510);
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v113;
      sub_22736A46C(&v510, 0x7255666552747865, 0xE90000000000006CLL, v151);
      (*(v147 + 8))(v145, v54);
      v113 = v513;
    }

    v152 = v508;
    v153 = v502;
    v154 = v496;
    v155 = v489;
    v508 = v116;
    if (v489)
    {
      v156 = (v133 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
      v157 = v488;
      *v156 = v488;
      v156[1] = v155;

      v512 = MEMORY[0x277D837D0];
      *&v511 = v157;
      *(&v511 + 1) = v155;
      sub_226F04970(&v511, &v510);
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v113;
      sub_22736A46C(&v510, 0x707041666572, 0xE600000000000000, v158);
      v113 = v513;
    }

    v159 = v494;
    sub_22766B8E0();
    v160 = sub_227149264(MEMORY[0x277D84F90]);
    v161 = sub_22766B900();
    v512 = MEMORY[0x277D837D0];
    *&v511 = v161;
    *(&v511 + 1) = v162;
    sub_226F04970(&v511, &v510);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    v513 = v160;
    sub_22736A46C(&v510, 0x707954746E657665, 0xE900000000000065, v163);
    v164 = v513;
    v165 = v491;
    sub_226E93170(v152, v491, &qword_27D7B9158, &qword_2276730B8);
    if (v153[6](v165, 1, v154) == 1)
    {
      sub_226E97D1C(v165, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v166 = v152;
      v167 = v486;
      v153[4](v486, v165, v154);
      v168 = sub_227663200();
      sub_2275A5364(v168);
      v170 = v169;

      if (v170)
      {
        v171 = swift_isUniquelyReferenced_nonNull_native();
        *&v511 = v164;
        sub_2270318E8(v170, sub_227553D14, 0, v171, &v511);

        (v153[1])(v167, v154);
        v164 = v511;
      }

      else
      {
        (v153[1])(v167, v154);
      }

      v152 = v166;
    }

    v189 = swift_isUniquelyReferenced_nonNull_native();
    *&v511 = v164;
    sub_2270318E8(v113, sub_227553D14, 0, v189, &v511);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v190 = sub_22766BC20();
    v191 = *(v190 - 8);
    v192 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v193);
    swift_setDeallocating();
    (*(v191 + 8))(v193 + v192, v190);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v194);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v195 = v493;
    sub_22766B7C0();
    (*(v497 + 8))(v159, v498);
    v196 = v501;
    v197 = v500;
    v198 = v504;
    (*(v501 + 16))(v500, v195, v504);
    v199 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v200 = swift_allocObject();
    (*(v196 + 32))(v200 + v199, v197, v198);
    sub_227669280();
    (*(v196 + 8))(v195, v198);
    sub_226E97D1C(v492, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v508, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_25;
  }

  if (v107 == *MEMORY[0x277D52108])
  {
    (*(v88 + 96))(v92, v87);
    v117 = v483;
    v503 = *(v483 + 32);
    v118 = v492;
    v119 = v484;
    v503(v492, v92, v484);
    v120 = v482;
    (*(v117 + 16))(v482, v118, v119);
    v121 = v489;
    sub_226E93170(v508, v489, &qword_27D7B9158, &qword_2276730B8);
    v122 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v123 = (v21 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = (*(v488 + 80) + v123 + 9) & ~*(v488 + 80);
    v125 = swift_allocObject();
    v503((v125 + v122), v120, v119);
    v126 = v125 + v123;
    *v126 = v506;
    *(v126 + 8) = v507;
    sub_226E95D18(v121, v125 + v124, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v117 + 8))(v492, v119);
LABEL_11:
    v144 = v508;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v107 == *MEMORY[0x277D52120])
  {
    (*(v88 + 96))(v92, v87);
    v134 = v473;
    v503 = *(v473 + 32);
    v135 = v485;
    v136 = v474;
    v503(v485, v92, v474);
    v137 = v472;
    (*(v134 + 16))(v472, v135, v136);
    v138 = v489;
    sub_226E93170(v508, v489, &qword_27D7B9158, &qword_2276730B8);
    v139 = (*(v134 + 80) + 16) & ~*(v134 + 80);
    v140 = (v471 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = (*(v488 + 80) + v140 + 9) & ~*(v488 + 80);
    v142 = swift_allocObject();
    v503((v142 + v139), v137, v136);
    v143 = v142 + v140;
    *v143 = v506;
    *(v143 + 8) = v507;
    sub_226E95D18(v138, v142 + v141, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v134 + 8))(v485, v136);
    goto LABEL_11;
  }

  v172 = v54;
  if (v107 == *MEMORY[0x277D52128])
  {
    (*(v88 + 96))(v92, v87);
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CB0, &qword_227675D30);
    v174 = v173[12];
    v175 = v173[16];
    v176 = (v92 + v173[20]);
    v178 = *v176;
    v177 = v176[1];
    v492 = v178;
    v493 = v177;
    (*(v477 + 32))(v476, v92, v478);
    v179 = v475;
    sub_226E95D18(v92 + v174, v475, &unk_27D7BB570, &unk_227670FC0);
    sub_226E95D18(v92 + v175, v479, &unk_27D7BB570, &unk_227670FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v180 = swift_allocObject();
    v494 = xmmword_227670CD0;
    *(v180 + 16) = xmmword_227670CD0;
    *(v180 + 32) = 1701869940;
    *(v180 + 40) = 0xE400000000000000;
    v181 = sub_2276651B0();
    v182 = MEMORY[0x277D837D0];
    *(v180 + 72) = MEMORY[0x277D837D0];
    *(v180 + 48) = v181;
    *(v180 + 56) = v183;
    v184 = sub_227149264(v180);
    swift_setDeallocating();
    sub_226E97D1C(v180 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    swift_deallocClassInstance();
    v185 = v462;
    sub_226E93170(v179, v462, &unk_27D7BB570, &unk_227670FC0);
    v186 = v495;
    v187 = *(v495 + 48);
    v188 = v172;
    if (v187(v185, 1, v172) == 1)
    {
      sub_226E97D1C(v185, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v217 = v457;
      (*(v186 + 32))(v457, v185, v172);
      v218 = sub_227662390();
      v512 = v182;
      *&v511 = v218;
      *(&v511 + 1) = v219;
      sub_226F04970(&v511, &v510);
      v220 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v184;
      sub_22736A46C(&v510, 0x6C72556E65706FLL, 0xE700000000000000, v220);
      v188 = v172;
      (*(v186 + 8))(v217, v172);
      v184 = v513;
    }

    v152 = v508;
    v221 = v463;
    sub_226E93170(v479, v463, &unk_27D7BB570, &unk_227670FC0);
    if (v187(v221, 1, v188) == 1)
    {
      sub_226E97D1C(v221, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v227 = v495;
      v228 = v458;
      (*(v495 + 32))(v458, v221, v188);
      v229 = v487;
      (*(v227 + 16))(v487, v228, v188);
      (*(v227 + 56))(v229, 0, 1, v188);
      v230 = v188;
      v231 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
      v232 = v506;
      swift_beginAccess();
      sub_227033718(v229, v232 + v231);
      swift_endAccess();
      v233 = sub_227662390();
      v512 = v182;
      *&v511 = v233;
      *(&v511 + 1) = v234;
      sub_226F04970(&v511, &v510);
      v235 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v184;
      sub_22736A46C(&v510, 0x7255666552747865, 0xE90000000000006CLL, v235);
      (*(v227 + 8))(v228, v230);
      v184 = v513;
    }

    v236 = v493;
    if (v493)
    {
      v237 = (v506 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
      v238 = v492;
      *v237 = v492;
      v237[1] = v236;

      v512 = v182;
      *&v511 = v238;
      *(&v511 + 1) = v236;
      sub_226F04970(&v511, &v510);
      v239 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v184;
      sub_22736A46C(&v510, 0x707041666572, 0xE600000000000000, v239);
      v184 = v513;
    }

    v240 = v470;
    v241 = v468;
    if (sub_2276636D0())
    {
      if (*(v241 + 16))
      {
        v242 = sub_226E92000(0x644972657375, 0xE600000000000000);
        if (v243)
        {
          sub_226E97CC0(*(v241 + 56) + 32 * v242, &v511);
          if (swift_dynamicCast())
          {
            v244 = *(&v510 + 1);
            v495 = v510;
            v245 = v506;
            v246 = *(v506 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore + 24);
            v247 = *(v506 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore + 40);
            __swift_project_boxed_opaque_existential_0((v506 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore), v246);
            v248 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline;
            v249 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
            v250 = sub_2276637A0();
            v251 = v245 + v248;
            v152 = v508;
            v252 = v245 + v249;
            v240 = v470;
            sub_2274E99DC(v495, v244, v251, v252, v250, v253, v246, v247);
          }
        }
      }
    }

    sub_22766B8C0();
    v254 = sub_227149264(MEMORY[0x277D84F90]);
    v255 = sub_22766B900();
    v512 = v182;
    *&v511 = v255;
    *(&v511 + 1) = v256;
    sub_226F04970(&v511, &v510);
    v257 = swift_isUniquelyReferenced_nonNull_native();
    v513 = v254;
    sub_22736A46C(&v510, 0x707954746E657665, 0xE900000000000065, v257);
    v258 = v513;
    v259 = v464;
    sub_226E93170(v152, v464, &qword_27D7B9158, &qword_2276730B8);
    v260 = v502;
    v261 = v496;
    if (v502[6](v259, 1, v496) == 1)
    {
      sub_226E97D1C(v259, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v262 = v460;
      v260[4](v460, v259, v261);
      v263 = sub_227663200();
      sub_2275A5364(v263);
      v265 = v264;

      if (v265)
      {
        v266 = swift_isUniquelyReferenced_nonNull_native();
        *&v511 = v258;
        sub_2270318E8(v265, sub_227553D14, 0, v266, &v511);

        (v260[1])(v262, v261);
        v258 = v511;
      }

      else
      {
        (v260[1])(v262, v261);
      }
    }

    v295 = swift_isUniquelyReferenced_nonNull_native();
    *&v511 = v258;
    sub_2270318E8(v184, sub_227553D14, 0, v295, &v511);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v296 = sub_22766BC20();
    v297 = *(v296 - 8);
    v298 = (*(v297 + 80) + 32) & ~*(v297 + 80);
    v299 = swift_allocObject();
    *(v299 + 16) = v494;
    sub_22766BC10();
    sub_226F4C828(v299);
    swift_setDeallocating();
    (*(v297 + 8))(v299 + v298, v296);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v300 = swift_allocObject();
    *(v300 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v300);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v301 = v469;
    sub_22766B7C0();
    (*(v497 + 8))(v240, v498);
    v302 = v501;
    v303 = v500;
    v304 = v504;
    (*(v501 + 16))(v500, v301, v504);
    v305 = (*(v302 + 80) + 16) & ~*(v302 + 80);
    v306 = swift_allocObject();
    (*(v302 + 32))(v306 + v305, v303, v304);
    sub_227669280();
    (*(v302 + 8))(v301, v304);
    sub_226E97D1C(v479, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v475, &unk_27D7BB570, &unk_227670FC0);
    (*(v477 + 8))(v476, v478);
    goto LABEL_25;
  }

  v202 = v506;
  if (v107 == *MEMORY[0x277D52110])
  {
    (*(v88 + 96))(v92, v87);
    v203 = v461;
    (*(v467 + 32))(v466, v92, v461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v204 = swift_allocObject();
    v506 = xmmword_227670CD0;
    *(v204 + 16) = xmmword_227670CD0;
    *(v204 + 32) = 1701869940;
    *(v204 + 40) = 0xE400000000000000;
    v205 = sub_227664D10();
    v206 = MEMORY[0x277D837D0];
    *(v204 + 72) = MEMORY[0x277D837D0];
    *(v204 + 48) = v205;
    *(v204 + 56) = v207;
    v208 = sub_227149264(v204);
    swift_setDeallocating();
    sub_226E97D1C(v204 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    swift_deallocClassInstance();
    sub_22766B8A0();
    v209 = sub_227149264(MEMORY[0x277D84F90]);
    v210 = sub_22766B900();
    v512 = v206;
    *&v511 = v210;
    *(&v511 + 1) = v211;
    sub_226F04970(&v511, &v510);
    v212 = swift_isUniquelyReferenced_nonNull_native();
    v513 = v209;
    sub_22736A46C(&v510, 0x707954746E657665, 0xE900000000000065, v212);
    v213 = v513;
    v152 = v508;
    v214 = v456;
    sub_226E93170(v508, v456, &qword_27D7B9158, &qword_2276730B8);
    v215 = v502;
    v216 = v496;
    if (v502[6](v214, 1, v496) == 1)
    {
      sub_226E97D1C(v214, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v267 = v455;
      v215[4](v455, v214, v216);
      v268 = sub_227663200();
      sub_2275A5364(v268);
      v270 = v269;

      if (v270)
      {
        v271 = swift_isUniquelyReferenced_nonNull_native();
        *&v511 = v213;
        sub_2270318E8(v270, sub_227553D14, 0, v271, &v511);

        (v215[1])(v267, v216);
        v213 = v511;
      }

      else
      {
        (v215[1])(v267, v216);
      }
    }

    v311 = swift_isUniquelyReferenced_nonNull_native();
    *&v511 = v213;
    sub_2270318E8(v208, sub_227553D14, 0, v311, &v511);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v312 = sub_22766BC20();
    v313 = *(v312 - 8);
    v314 = (*(v313 + 80) + 32) & ~*(v313 + 80);
    v315 = swift_allocObject();
    *(v315 + 16) = v506;
    sub_22766BC10();
    sub_226F4C828(v315);
    swift_setDeallocating();
    (*(v313 + 8))(v315 + v314, v312);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v316 = swift_allocObject();
    *(v316 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v316);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v317 = v459;
    sub_22766B7C0();
    (*(v497 + 8))(v465, v498);
    v318 = v501;
    v319 = v500;
    v320 = v504;
    (*(v501 + 16))(v500, v317, v504);
    v321 = (*(v318 + 80) + 16) & ~*(v318 + 80);
    v322 = swift_allocObject();
    (*(v318 + 32))(v322 + v321, v319, v320);
    sub_227669280();
    (*(v318 + 8))(v317, v320);
    (*(v467 + 8))(v466, v203);
LABEL_25:
    v144 = v152;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v107 == *MEMORY[0x277D52100])
  {
    (*(v88 + 96))(v92, v87);
    v222 = *v92;
    v223 = v508;
    v224 = v489;
    sub_226E93170(v508, v489, &qword_27D7B9158, &qword_2276730B8);
    v225 = (*(v488 + 80) + 33) & ~*(v488 + 80);
    v226 = swift_allocObject();
    *(v226 + 16) = v222;
    *(v226 + 24) = v202;
    *(v226 + 32) = v507;
    sub_226E95D18(v224, v226 + v225, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    v144 = v223;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v107 == *MEMORY[0x277D52130])
  {
    (*(v88 + 96))(v92, v87);
    v272 = *v92;
    v273 = v92[1];
    sub_22766C4F0();
    v275 = ceil(v274);
    sub_22766C4F0();
    v277 = v276;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    v278 = swift_allocObject();
    *(v278 + 32) = 25705;
    *(v278 + 16) = xmmword_227675BE0;
    v279 = MEMORY[0x277D837D0];
    *(v278 + 40) = 0xE200000000000000;
    *(v278 + 48) = v272;
    *(v278 + 56) = v273;
    *(v278 + 72) = v279;
    *(v278 + 80) = 0x657079546469;
    *(v278 + 88) = 0xE600000000000000;
    result = sub_2276647E0();
    *(v278 + 96) = result;
    *(v278 + 104) = v280;
    *(v278 + 120) = v279;
    *(v278 + 128) = 0x79546E6F69746361;
    *(v278 + 136) = 0xEA00000000006570;
    *(v278 + 144) = 1886352499;
    *(v278 + 152) = 0xE400000000000000;
    *(v278 + 168) = v279;
    *(v278 + 176) = 0x6E6F697469736F70;
    *(v278 + 184) = 0xE800000000000000;
    v281 = 0.0;
    if ((*&v275 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v281 = v275;
    }

    if (v281 <= -1.0)
    {
      __break(1u);
    }

    else
    {
      v152 = v508;
      v282 = v502;
      v283 = v452;
      if (v281 < 1.84467441e19)
      {
        v284 = ceil(v277);
        v285 = MEMORY[0x277D84D38];
        *(v278 + 192) = v281;
        *(v278 + 216) = v285;
        *(v278 + 224) = 0x6E6F697461727564;
        *(v278 + 232) = 0xE800000000000000;
        v286 = 0.0;
        if ((*&v284 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v286 = v284;
        }

        if (v286 > -1.0)
        {
          if (v286 < 1.84467441e19)
          {
            *(v278 + 264) = v285;
            *(v278 + 240) = v286;
            v287 = sub_227149264(v278);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22766B8D0();
            v288 = sub_227149264(MEMORY[0x277D84F90]);
            v289 = sub_22766B900();
            v512 = v279;
            *&v511 = v289;
            *(&v511 + 1) = v290;
            sub_226F04970(&v511, &v510);
            v291 = swift_isUniquelyReferenced_nonNull_native();
            v513 = v288;
            sub_22736A46C(&v510, 0x707954746E657665, 0xE900000000000065, v291);
            v292 = v513;
            v293 = v449;
            sub_226E93170(v152, v449, &qword_27D7B9158, &qword_2276730B8);
            v294 = v496;
            if (v282[6](v293, 1, v496) == 1)
            {
              sub_226E97D1C(v293, &qword_27D7B9158, &qword_2276730B8);
            }

            else
            {
              v332 = v152;
              v333 = v441;
              v282[4](v441, v293, v294);
              v334 = sub_227663200();
              sub_2275A5364(v334);
              v336 = v335;

              if (v336)
              {
                v337 = swift_isUniquelyReferenced_nonNull_native();
                *&v511 = v292;
                sub_2270318E8(v336, sub_227553D14, 0, v337, &v511);

                (v282[1])(v333, v294);
                v292 = v511;
              }

              else
              {
                (v282[1])(v333, v294);
              }

              v152 = v332;
              v283 = v452;
            }

            v382 = swift_isUniquelyReferenced_nonNull_native();
            *&v511 = v292;
            sub_2270318E8(v287, sub_227553D14, 0, v382, &v511);
            swift_bridgeObjectRelease_n();
            sub_2276637A0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
            v383 = sub_22766BC20();
            v384 = *(v383 - 8);
            v385 = (*(v384 + 80) + 32) & ~*(v384 + 80);
            v386 = swift_allocObject();
            *(v386 + 16) = xmmword_227670CD0;
            sub_22766BC10();
            sub_226F4C828(v386);
            swift_setDeallocating();
            (*(v384 + 8))(v386 + v385, v383);
            swift_deallocClassInstance();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
            sub_22766BC00();
            v387 = swift_allocObject();
            *(v387 + 16) = xmmword_2276728D0;
            sub_22766BBA0();
            sub_22766BBC0();
            sub_226F4CB48(v387);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v388 = v450;
            sub_22766B7C0();
            (*(v497 + 8))(v283, v498);
            v389 = v501;
            v390 = v500;
            v391 = v504;
            (*(v501 + 16))(v500, v388, v504);
            v392 = (*(v389 + 80) + 16) & ~*(v389 + 80);
            v393 = swift_allocObject();
            (*(v389 + 32))(v393 + v392, v390, v391);
            sub_227669280();
            (*(v389 + 8))(v388, v391);
            goto LABEL_25;
          }

          goto LABEL_98;
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  if (v107 == *MEMORY[0x277D52118])
  {
    (*(v88 + 96))(v92, v87);
    v307 = v453;
    v308 = v454;
    (*(v453 + 32))(v451, v92, v454);
    v309 = v444;
    (*(v307 + 104))(v444, *MEMORY[0x277D52E00], v308);
    sub_2270336B8(&qword_28139B520, MEMORY[0x277D52E18], MEMORY[0x277D52E20]);
    sub_22766C290();
    sub_22766C290();
    if (v511 == v510)
    {
      v310 = 1;
    }

    else
    {
      v310 = sub_22766D190();
    }

    v338 = v502;
    v339 = *(v307 + 8);
    v453 = v307 + 8;
    v502 = v339;
    (v339)(v309, v454);

    v340 = MEMORY[0x277D837D0];
    if (v310)
    {
      v341 = sub_227149264(MEMORY[0x277D84F90]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
      v352 = swift_allocObject();
      *(v352 + 16) = xmmword_227670CD0;
      *(v352 + 32) = 0x697461676976616ELL;
      *(v352 + 40) = 0xEA00000000006E6FLL;
      v353 = sub_227667510();
      *(v352 + 72) = v340;
      *(v352 + 48) = v353;
      *(v352 + 56) = v354;
      v341 = sub_227149264(v352);
      swift_setDeallocating();
      sub_226E97D1C(v352 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
      swift_deallocClassInstance();
    }

    v355 = v442;
    v356 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
    swift_beginAccess();
    sub_226E93170(v202 + v356, v355, &unk_27D7BB570, &unk_227670FC0);
    v357 = v495;
    v358 = v172;
    if ((*(v495 + 48))(v355, 1, v172) == 1)
    {
      sub_226E97D1C(v355, &unk_27D7BB570, &unk_227670FC0);
    }

    else
    {
      v359 = v355;
      v360 = v435;
      (*(v357 + 32))(v435, v359, v172);
      v361 = v487;
      (*(v357 + 56))(v487, 1, 1, v358);
      swift_beginAccess();
      sub_227033718(v361, v202 + v356);
      swift_endAccess();
      v362 = sub_227662390();
      v512 = v340;
      *&v511 = v362;
      *(&v511 + 1) = v363;
      sub_226F04970(&v511, &v510);
      v364 = swift_isUniquelyReferenced_nonNull_native();
      v509 = v341;
      sub_22736A46C(&v510, 0x7255666552747865, 0xE90000000000006CLL, v364);
      (*(v357 + 8))(v360, v358);
      v341 = v509;
    }

    v365 = v448;
    v366 = (v202 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
    v367 = *(v202 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);
    if (v367)
    {
      v368 = *v366;
      *v366 = 0;
      v366[1] = 0;
      v512 = v340;
      *&v511 = v368;
      *(&v511 + 1) = v367;
      sub_226F04970(&v511, &v510);
      v369 = swift_isUniquelyReferenced_nonNull_native();
      v509 = v341;
      sub_22736A46C(&v510, 0x707041666572, 0xE600000000000000, v369);
      v341 = v509;
    }

    v370 = v446;
    sub_22766B8B0();
    v371 = sub_227149264(MEMORY[0x277D84F90]);
    v372 = sub_22766B900();
    v512 = v340;
    *&v511 = v372;
    *(&v511 + 1) = v373;
    sub_226F04970(&v511, &v510);
    v374 = swift_isUniquelyReferenced_nonNull_native();
    v509 = v371;
    sub_22736A46C(&v510, 0x707954746E657665, 0xE900000000000065, v374);
    v375 = v509;
    v376 = v443;
    sub_226E93170(v508, v443, &qword_27D7B9158, &qword_2276730B8);
    v377 = v496;
    if (v338[6](v376, 1, v496) == 1)
    {
      sub_226E97D1C(v376, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v338[4](v370, v376, v377);
      v378 = sub_227663200();
      sub_2275A5364(v378);
      v380 = v379;

      if (v380)
      {
        v381 = swift_isUniquelyReferenced_nonNull_native();
        *&v511 = v375;
        sub_2270318E8(v380, sub_227553D14, 0, v381, &v511);

        (v338[1])(v370, v377);
        v375 = v511;
      }

      else
      {
        (v338[1])(v370, v377);
      }
    }

    v408 = swift_isUniquelyReferenced_nonNull_native();
    *&v511 = v375;
    sub_2270318E8(v341, sub_227553D14, 0, v408, &v511);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v409 = sub_22766BC20();
    v410 = *(v409 - 8);
    v411 = (*(v410 + 80) + 32) & ~*(v410 + 80);
    v412 = swift_allocObject();
    *(v412 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v412);
    swift_setDeallocating();
    (*(v410 + 8))(v412 + v411, v409);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v413 = swift_allocObject();
    *(v413 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v413);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v414 = v447;
    sub_22766B7C0();
    (*(v497 + 8))(v365, v498);
    v415 = v501;
    v416 = v500;
    v417 = v504;
    (*(v501 + 16))(v500, v414, v504);
    v418 = (*(v415 + 80) + 16) & ~*(v415 + 80);
    v419 = swift_allocObject();
    (*(v415 + 32))(v419 + v418, v416, v417);
    sub_227669280();
    (*(v415 + 8))(v414, v417);
    (v502)(v451, v454);
    v144 = v508;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v107 == *MEMORY[0x277D52148])
  {
    (*(v88 + 96))(v92, v87);
    v323 = v438;
    v503 = *(v438 + 32);
    v324 = v445;
    v325 = v439;
    v503(v445, v92, v439);
    v326 = v437;
    (*(v323 + 16))(v437, v324, v325);
    v327 = v489;
    sub_226E93170(v508, v489, &qword_27D7B9158, &qword_2276730B8);
    v328 = (*(v323 + 80) + 17) & ~*(v323 + 80);
    v329 = (v436 + v328 + 7) & 0xFFFFFFFFFFFFFFF8;
    v330 = (*(v488 + 80) + v329 + 8) & ~*(v488 + 80);
    v331 = swift_allocObject();
    *(v331 + 16) = v507;
    v503((v331 + v328), v326, v325);
    *(v331 + v329) = v506;
    sub_226E95D18(v327, v331 + v330, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v323 + 8))(v445, v325);
    v144 = v508;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  if (v107 == *MEMORY[0x277D52138])
  {
    (*(v88 + 96))(v92, v87);
    v342 = v427;
    v503 = *(v427 + 32);
    v343 = v440;
    v344 = v428;
    v503(v440, v92, v428);
    v345 = v426;
    (*(v342 + 16))(v426, v343, v344);
    v346 = v489;
    sub_226E93170(v508, v489, &qword_27D7B9158, &qword_2276730B8);
    v347 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v348 = (v425 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
    v349 = (*(v488 + 80) + v348 + 9) & ~*(v488 + 80);
    v350 = swift_allocObject();
    v503((v350 + v347), v345, v344);
    v351 = v350 + v348;
    *v351 = v506;
    *(v351 + 8) = v507;
    sub_226E95D18(v346, v350 + v349, &qword_27D7B9158, &qword_2276730B8);

    sub_227669280();
    (*(v342 + 8))(v440, v344);
    v144 = v508;
    return sub_226E97D1C(v144, &qword_27D7B9158, &qword_2276730B8);
  }

  v394 = v434;
  sub_22766A740();
  v395 = v430;
  v396 = v429;
  v397 = v431;
  (*(v430 + 16))(v429, a1, v431);
  v398 = sub_22766B380();
  v399 = sub_22766C890();
  if (os_log_type_enabled(v398, v399))
  {
    v400 = v396;
    v401 = swift_slowAlloc();
    v507 = swift_slowAlloc();
    *&v511 = v507;
    *v401 = 136446210;
    sub_227665190();
    v402 = sub_22766C060();
    v403 = v395;
    v405 = v404;
    (*(v403 + 8))(v400, v397);
    v406 = sub_226E97AE8(v402, v405, &v511);

    *(v401 + 4) = v406;
    _os_log_impl(&dword_226E8E000, v398, v399, "Received unsupported click stream type: %{public}s", v401, 0xCu);
    v407 = v507;
    __swift_destroy_boxed_opaque_existential_0(v507);
    MEMORY[0x22AA9A450](v407, -1, -1);
    MEMORY[0x22AA9A450](v401, -1, -1);

    (*(v432 + 8))(v434, v433);
  }

  else
  {

    (*(v395 + 8))(v396, v397);
    (*(v432 + 8))(v394, v433);
  }

  v420 = sub_2276636A0();
  sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
  v421 = swift_allocError();
  (*(*(v420 - 8) + 104))(v422, *MEMORY[0x277D500C0], v420);
  *(swift_allocObject() + 16) = v421;
  v423 = v421;
  sub_227669280();
  sub_226E97D1C(v508, &qword_27D7B9158, &qword_2276730B8);

  return (*(v88 + 8))(v92, v87);
}

uint64_t sub_227024BD8@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a1;
  v63 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v59 = sub_227663260();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22766B910();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227665AD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667D50();
  v16 = sub_227665A90();
  (*(v13 + 8))(v15, v12);
  sub_2275A5364(v16);
  v18 = v17;

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    v54 = xmmword_227670CD0;
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = sub_227664790();
    *(inited + 40) = v20;
    sub_227667D90();
    v21 = sub_227667D60();
    v23 = v22;
    v24 = 1;
    if (v21 != sub_227667D60() || v23 != v25)
    {
      v24 = sub_22766D190();
    }

    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v24 & 1;
    v26 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v18;
    v28 = v56;
    sub_226FDAC14(v26, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v66);
    if (v28)
    {

      __break(1u);
    }

    else
    {

      v29 = v66;
      sub_22766B8E0();
      v30 = sub_227149264(MEMORY[0x277D84F90]);
      v31 = sub_22766B900();
      v67 = MEMORY[0x277D837D0];
      *&v66 = v31;
      *(&v66 + 1) = v32;
      sub_226F04970(&v66, v65);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v30;
      sub_22736A46C(v65, 0x707954746E657665, 0xE900000000000065, v33);
      v34 = v68;
      sub_226E93170(v57, v5, &qword_27D7B9158, &qword_2276730B8);
      v35 = v58;
      v36 = v59;
      if ((*(v58 + 48))(v5, 1, v59) == 1)
      {
        sub_226E97D1C(v5, &qword_27D7B9158, &qword_2276730B8);
      }

      else
      {
        v43 = v55;
        (*(v35 + 32))();
        v44 = sub_227663200();
        sub_2275A5364(v44);
        v46 = v45;

        if (v46)
        {
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *&v66 = v34;
          sub_2270318E8(v46, sub_227553D14, 0, v47, &v66);

          (*(v35 + 8))(v43, v36);
          v34 = v66;
        }

        else
        {
          (*(v35 + 8))(v43, v36);
        }
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v66 = v34;
      sub_2270318E8(v29, sub_227553D14, 0, v48, &v66);

      sub_2276637A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
      v49 = sub_22766BC20();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v54;
      sub_22766BC10();
      sub_226F4C828(v52);
      swift_setDeallocating();
      (*(v50 + 8))(v52 + v51, v49);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
      sub_22766BC00();
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2276728D0;
      sub_22766BBA0();
      sub_22766BBC0();
      sub_226F4CB48(v53);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22766B7C0();
      return (*(v61 + 8))(v64, v62);
    }
  }

  else
  {
    sub_22766A740();
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_226E8E000, v37, v38, "[JetMetricsRecorder] failed serializing subscription data - skipping background account event", v39, 2u);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v40 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D500B8], v40);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227025550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a3;
  v5 = a2;
  v55 = a4;
  v61 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v45 - v8;
  v9 = sub_227663260();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22766B910();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v56 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  if (v13)
  {
    v46 = v10;
    v47 = v9;
    *&v49 = v4;
    *&v58[0] = MEMORY[0x277D84F90];
    sub_226F1ED50(0, v13, 0);
    v14 = *&v58[0];
    v15 = objc_opt_self();
    v16 = (a1 + 40);
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      sub_226F5E0B4(v17, *v16);
      v19 = sub_227662560();
      v57 = 0;
      v20 = [v15 JSONObjectWithData:v19 options:0 error:&v57];

      v21 = v57;
      if (!v20)
      {
        break;
      }

      sub_22766CC20();
      sub_226EDC420(v17, v18);
      swift_unknownObjectRelease();
      *&v58[0] = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1ED50((v22 > 1), v23 + 1, 1);
        v14 = *&v58[0];
      }

      v16 += 2;
      *(v14 + 16) = v23 + 1;
      sub_226F04970(&v59, (v14 + 32 * v23 + 32));
      if (!--v13)
      {
        v9 = v47;
        v10 = v46;
        goto LABEL_9;
      }
    }

    v24 = v21;
    sub_2276622C0();

    swift_willThrow();
    sub_226EDC420(v17, v18);
  }

  else
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    v49 = xmmword_227670CD0;
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CC0, &unk_227675D40);
    *(inited + 48) = v14;
    v27 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    sub_22766B890();
    v28 = sub_227149264(MEMORY[0x277D84F90]);
    v29 = sub_22766B900();
    v60 = MEMORY[0x277D837D0];
    *&v59 = v29;
    *(&v59 + 1) = v30;
    sub_226F04970(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v28;
    sub_22736A46C(v58, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v32 = v57;
    v33 = v52;
    sub_226E93170(v51, v52, &qword_27D7B9158, &qword_2276730B8);
    if ((*(v10 + 48))(v33, 1, v9) == 1)
    {
      sub_226E97D1C(v33, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v34 = v48;
      (*(v10 + 32))(v48, v33, v9);
      v35 = sub_227663200();
      sub_2275A5364(v35);
      v37 = v36;

      if (v37)
      {
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = v32;
        sub_2270318E8(v37, sub_227553D14, 0, v38, &v59);

        (*(v10 + 8))(v34, v9);
        v32 = v59;
      }

      else
      {
        (*(v10 + 8))(v34, v9);
      }
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v59 = v32;
    sub_2270318E8(v27, sub_227553D14, 0, v39, &v59);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v40 = sub_22766BC20();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v49;
    sub_22766BC10();
    sub_226F4C828(v43);
    swift_setDeallocating();
    (*(v41 + 8))(v43 + v42, v40);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22766B7C0();
    return (*(v53 + 8))(v56, v54);
  }
}

uint64_t sub_227025D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v56 = a3;
  v63 = a2;
  v5 = a1;
  v62 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v58 = sub_227663260();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22766B910();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667120();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v5;
  v18 = sub_227663720();
  v19 = MEMORY[0x277D837D0];
  if (v18)
  {
    result = sub_227665DF0();
    v64 = v4;
    if (v4)
    {
      return result;
    }

    sub_2275A5364(result);
    v26 = v40;

    if (!v26)
    {
      sub_22766A740();
      v41 = sub_22766B380();
      v42 = sub_22766C890();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_226E8E000, v41, v42, "Unable to serialize purchase event", v43, 2u);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      (*(v54 + 8))(v13, v11);
      v44 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      v45 = swift_allocError();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D50040], v44);
      v64 = v45;
      return swift_willThrow();
    }
  }

  else
  {
    v64 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = sub_227664760();
    *(inited + 40) = v22;
    sub_227665E00();
    v23 = sub_227667110();
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    *(inited + 72) = v19;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    v26 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  }

  sub_2276647A0();
  sub_22766B8F0();
  v27 = sub_227149264(MEMORY[0x277D84F90]);
  v28 = sub_22766B900();
  v68 = v19;
  *&v67 = v28;
  *(&v67 + 1) = v29;
  sub_226F04970(&v67, v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v27;
  sub_22736A46C(v66, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v31 = v69;
  sub_226E93170(v56, v8, &qword_27D7B9158, &qword_2276730B8);
  v32 = v57;
  v33 = v58;
  if ((*(v57 + 48))(v8, 1, v58) == 1)
  {
    v34 = &unk_227670000;
    sub_226E97D1C(v8, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    v35 = v55;
    (*(v32 + 32))();
    v36 = sub_227663200();
    sub_2275A5364(v36);
    v38 = v37;

    v34 = &unk_227670000;
    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = v31;
      sub_2270318E8(v38, sub_227553D14, 0, v39, &v67);

      (*(v32 + 8))(v35, v33);
      v31 = v67;
    }

    else
    {
      (*(v32 + 8))(v35, v33);
    }
  }

  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v67 = v31;
  sub_2270318E8(v26, sub_227553D14, 0, v47, &v67);
  swift_bridgeObjectRelease_n();
  sub_2276637A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
  v48 = sub_22766BC20();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v34[205];
  sub_22766BC10();
  sub_226F4C828(v51);
  swift_setDeallocating();
  (*(v49 + 8))(v51 + v50, v48);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
  sub_22766BC00();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2276728D0;
  sub_22766BBA0();
  sub_22766BBC0();
  sub_226F4CB48(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22766B7C0();
  return (*(v60 + 8))(v65, v61);
}

uint64_t sub_227026668@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, uint64_t (*a3)(double)@<X4>, void (*a4)(uint64_t)@<X5>, const char *a5@<X6>, uint64_t a6@<X8>)
{
  v56 = a5;
  v57 = a2;
  v62 = a4;
  v64 = a3;
  v59 = a1;
  v61 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_227663260();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B910();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v63;
  result = v64(v17);
  if (!v20)
  {
    v53 = v16;
    v54 = v15;
    v22 = v62;
    v52 = v11;
    v63 = 0;
    v64 = v14;
    v55 = v12;
    sub_2275A5364(result);
    v24 = v23;

    if (v24)
    {
      v22(v25);
      v26 = sub_227149264(MEMORY[0x277D84F90]);
      v27 = sub_22766B900();
      v67 = MEMORY[0x277D837D0];
      *&v66 = v27;
      *(&v66 + 1) = v28;
      sub_226F04970(&v66, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v26;
      sub_22736A46C(v65, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      v30 = v68;
      v31 = v8;
      sub_226E93170(v57, v8, &qword_27D7B9158, &qword_2276730B8);
      v32 = v58;
      v33 = v8;
      v34 = v9;
      if ((*(v58 + 48))(v33, 1, v9) == 1)
      {
        sub_226E97D1C(v31, &qword_27D7B9158, &qword_2276730B8);
      }

      else
      {
        v40 = v52;
        (*(v32 + 32))(v52, v31, v9);
        v41 = sub_227663200();
        sub_2275A5364(v41);
        v43 = v42;

        if (v43)
        {
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *&v66 = v30;
          v45 = v63;
          sub_2270318E8(v43, sub_227553D14, 0, v44, &v66);
          v63 = v45;

          (*(v32 + 8))(v40, v34);
          v30 = v66;
        }

        else
        {
          (*(v32 + 8))(v40, v34);
        }
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v66 = v30;
      sub_2270318E8(v24, sub_227553D14, 0, v46, &v66);
      swift_bridgeObjectRelease_n();
      sub_2276637A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
      v47 = sub_22766BC20();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_227670CD0;
      sub_22766BC10();
      sub_226F4C828(v50);
      swift_setDeallocating();
      (*(v48 + 8))(v50 + v49, v47);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
      sub_22766BC00();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2276728D0;
      sub_22766BBA0();
      sub_22766BBC0();
      sub_226F4CB48(v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22766B7C0();
      return (*(v60 + 8))(v64, v55);
    }

    else
    {
      sub_22766A740();
      v35 = sub_22766B380();
      v36 = sub_22766C890();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_226E8E000, v35, v36, v56, v37, 2u);
        MEMORY[0x22AA9A450](v37, -1, -1);
      }

      (*(v53 + 8))(v19, v54);
      v38 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D50040], v38);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_227026DE8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder));
  v3 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline;
  v4 = sub_22766B880();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider));
  sub_227033DFC(v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore));
  v5 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
  v6 = sub_22766BCB0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore));

  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL, &unk_27D7BB570, &unk_227670FC0);

  return v0;
}

uint64_t sub_227026F68()
{
  sub_227026DE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetMetricsRecorder(uint64_t a1)
{
  result = qword_28139A900;
  if (!qword_28139A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227027014(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    sub_22766B880();
    if (v2 <= 0x3F)
    {
      sub_22766BCB0();
      if (v3 <= 0x3F)
      {
        sub_227027194(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_227027194(uint64_t a1)
{
  if (!qword_2813A5828)
  {
    sub_2276624A0();
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A5828);
    }
  }
}

uint64_t sub_2270271EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = sub_227667830();
  v94 = *(v90 - 8);
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v90);
  v77 = v3;
  v89 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227664D30();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v93 = *(v83 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v11);
  v84 = &v69 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v87 - 8);
  v85 = v95[8];
  MEMORY[0x28223BE20](v87);
  v86 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v69 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v69 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A650();
  sub_22766B370();
  (*(v19 + 8))(v21, v18);
  v80 = a1;
  sub_2276677F0();
  v70 = v10;
  sub_226F065C4(v6, v10);
  sub_2270312E0(v6, MEMORY[0x277D50F70]);
  v22 = v94;
  v23 = *(v94 + 16);
  v78 = v94 + 16;
  v79 = v23;
  v24 = v89;
  v25 = v90;
  v23(v89, a1, v90);
  v26 = *(v22 + 80);
  v27 = swift_allocObject();
  v28 = *(v22 + 32);
  v94 = v22 + 32;
  v76 = v28;
  v28(v27 + ((v26 + 16) & ~v26), v24, v25);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22703121C;
  *(v29 + 24) = v27;
  v30 = v93;
  v31 = *(v93 + 16);
  v74 = v93 + 16;
  v75 = v31;
  v33 = v82;
  v32 = v83;
  v31(v82, v10, v83);
  v34 = *(v30 + 80);
  v69 = v34;
  v35 = (v34 + 16) & ~v34;
  v73 = v35;
  v36 = (v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = v36;
  v37 = swift_allocObject();
  v72 = *(v30 + 32);
  v38 = v37 + v35;
  v39 = v32;
  v72(v38, v33, v32);
  v40 = (v37 + v36);
  *v40 = sub_22703125C;
  v40[1] = v29;
  type metadata accessor for MetricRecordingContext(0);
  v41 = v84;
  sub_227669270();
  v42 = *(v30 + 8);
  v93 = v30 + 8;
  v82 = v42;
  v43 = v70;
  v44 = v39;
  (v42)(v70, v39);
  v45 = v89;
  v46 = v90;
  v79(v89, v80, v90);
  v47 = swift_allocObject();
  *(v47 + 16) = v81;
  v76(v47 + ((v26 + 24) & ~v26), v45, v46);
  v75(v43, v41, v44);
  v48 = v71;
  v49 = swift_allocObject();
  v72(v49 + v73, v43, v44);
  v50 = (v49 + v48);
  *v50 = sub_22703128C;
  v50[1] = v47;

  v51 = v91;
  sub_227669270();
  (v82)(v41, v44);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_22701E45C;
  *(v52 + 24) = 0;
  v53 = v95;
  v94 = v95[2];
  v54 = v86;
  v55 = v87;
  (v94)(v86, v51, v87);
  v56 = v53;
  v57 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v93 = v57;
  v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v56[4];
  v60(v59 + v57, v54, v55);
  v61 = (v59 + v58);
  *v61 = sub_226F32FEC;
  v61[1] = v52;
  v62 = v92;
  sub_227669270();
  v63 = v95[1];
  ++v95;
  v64 = v91;
  v63(v91, v55);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_227029938;
  *(v65 + 24) = 0;
  (v94)(v64, v62, v55);
  v66 = swift_allocObject();
  v60(v66 + v93, v64, v55);
  v67 = (v66 + v58);
  *v67 = sub_226F5AAF8;
  v67[1] = v65;
  sub_227669270();
  return (v63)(v92, v55);
}

uint64_t sub_227027ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a2;
  v93 = a4;
  v6 = type metadata accessor for MetricRecordingContext(0);
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v90 = v7;
  v99 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227667830();
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v84 = v9;
  v98 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v74 - v11;
  v12 = sub_227664D30();
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = v15;
  v87 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v74 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22766BA80();
  v96 = *(v22 - 8);
  v97 = v22;
  MEMORY[0x28223BE20](v22);
  v95 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v74 - v25;
  v26 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v78 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8);
  v94 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  v85 = v8;
  v34 = a3;
  v80 = sub_227668DD0();
  v82 = v6;
  v83 = a1;
  sub_227031340(a1 + *(v6 + 28), v28, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v28, type metadata accessor for MetricServiceSubscriptionState);
    v35 = sub_227665AD0();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  }

  else
  {
    v36 = sub_227665AD0();
    v37 = *(v36 - 8);
    (*(v37 + 32))(v33, v28, v36);
    (*(v37 + 56))(v33, 0, 1, v36);
  }

  v38 = v33;
  v39 = sub_2276636C0();
  v75 = sub_22718C804(128, v39);

  sub_22766BA70();
  sub_22766A650();
  v40 = sub_22766B380();
  v41 = sub_22766C8B0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_226E8E000, v40, v41, "Making identifier", v42, 2u);
    MEMORY[0x22AA9A450](v42, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v43 = *(v102 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v44 = *(v102 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v102 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v43);
  v45 = v76;
  sub_2276677F0();
  v46 = *(v82 + 20);
  v47 = sub_227662750();
  v48 = v77;
  (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
  v49 = *(v44 + 48);
  v50 = v83;
  v74 = v33;
  v49(v45, v33, v83 + v46, 128, v48, v43, v44);
  sub_226E97D1C(v48, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v45, MEMORY[0x277D50F70]);
  v51 = v88;
  v52 = v34;
  v53 = v85;
  (*(v88 + 16))(v98, v52, v85);
  sub_226E93170(v38, v94, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v50, v99, type metadata accessor for MetricRecordingContext);
  v54 = v96;
  (*(v96 + 16))(v95, v101, v97);
  v55 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v56 = v55 + v84;
  v57 = (*(v78 + 80) + v55 + v84 + 1) & ~*(v78 + 80);
  v58 = (v79 + *(v89 + 80) + v57) & ~*(v89 + 80);
  v59 = (v90 + *(v54 + 80) + v58) & ~*(v54 + 80);
  v60 = v59 + v81;
  v61 = (v59 + v81) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = v102;
  (*(v51 + 32))(v62 + v55, v98, v53);
  *(v62 + v56) = 0x80;
  sub_226E95D18(v94, v62 + v57, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v99, v62 + v58);
  v63 = v96;
  v64 = v97;
  (*(v96 + 32))(v62 + v59, v95, v97);
  *(v62 + v60) = v75 & 1;
  *(v62 + v61 + 8) = v80;
  v65 = v91;
  v66 = v92;
  v67 = v87;
  v68 = v100;
  (*(v91 + 16))(v87, v100, v92);
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v86 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v65 + 32))(v71 + v69, v67, v66);
  v72 = (v71 + v70);
  *v72 = sub_22703140C;
  v72[1] = v62;

  sub_227669270();
  (*(v65 + 8))(v68, v66);
  (*(v63 + 8))(v101, v64);
  return sub_226E97D1C(v74, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_227028540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v74 = a8;
  v69 = a7;
  v66 = a5;
  v67 = a6;
  v82 = a4;
  v79 = a3;
  v85 = a2;
  v76 = a9;
  v75 = a10;
  v11 = sub_22766BA80();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v68 = v12;
  v83 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MetricRecordingContext(0);
  v64 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = v14;
  v81 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v60 = *(v15 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v55 - v16;
  v77 = sub_227667830();
  v17 = *(v77 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v77);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x28223BE20](v19);
  v63 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v55 - v22;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a1;
  sub_22766A650();
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226E8E000, v27, v28, "Got metric identifier fields for recording health activity stream", v29, 2u);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  (*(v24 + 8))(v26, v23);
  v55 = *(v17 + 16);
  v30 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v77;
  v55(v30, v79, v77);
  v32 = *(v17 + 80);
  v33 = (v32 + 24) & ~v32;
  v57 = v32 | 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v85;
  v58 = *(v17 + 32);
  v59 = v17 + 32;
  v56 = v30;
  v58(v34 + v33, v30, v31);
  v35 = v34 + ((v18 + 7 + v33) & 0xFFFFFFFFFFFFFFF8);
  *v35 = v84;
  *(v35 + 8) = v82;
  sub_22766B7F0();

  sub_227669280();
  v55(v30, v79, v31);
  sub_226E93170(v66, v80, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v67, v81, type metadata accessor for MetricRecordingContext);
  v37 = v72;
  v36 = v73;
  (*(v72 + 16))(v83, v69, v73);
  v38 = (v32 + 25) & ~v32;
  v39 = (v18 + 7 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + *(v60 + 80) + 8) & ~*(v60 + 80);
  v41 = (v61 + *(v64 + 80) + v40) & ~*(v64 + 80);
  v42 = (v65 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = v42 + v68;
  v44 = (v42 + v68) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v85;
  *(v45 + 24) = v82;
  v58(v45 + v38, v56, v77);
  *(v45 + v39) = v84;
  sub_226E95D18(v80, v45 + v40, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v81, v45 + v41);
  (*(v37 + 32))(v45 + v42, v83, v36);
  *(v45 + v43) = v74 & 1;
  *(v45 + v44 + 8) = v75;
  v47 = v70;
  v46 = v71;
  v48 = v63;
  v49 = v78;
  (*(v70 + 16))(v63, v78, v71);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v62 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v48, v46);
  v53 = (v52 + v51);
  *v53 = sub_2270316C4;
  v53[1] = v45;

  sub_227669270();
  return (*(v47 + 8))(v49, v46);
}

uint64_t sub_227028D0C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  LODWORD(v62) = a2;
  v64 = a3;
  v4 = sub_22766B910();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227664CE0();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667100();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276685D0();
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227331EA0(a1);

  sub_227667820();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v63 + 32))(v8, v15, v6);
    v16 = sub_227664CC0();
    sub_2275A5364(v16);
    v18 = v17;

    v60 = v6;
    *&v58 = v8;
    if (!v18)
    {
      v18 = sub_227149264(MEMORY[0x277D84F90]);
    }

    v19 = v61;
    sub_22766B8F0();
    v20 = sub_227149264(MEMORY[0x277D84F90]);
    v21 = sub_22766B900();
    v70 = MEMORY[0x277D837D0];
    *&v69 = v21;
    *(&v69 + 1) = v22;
    sub_226F04970(&v69, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v20;
    sub_22736A46C(v68, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v24 = v71;

    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v24;
    v26 = v67;
    sub_2270318E8(v18, sub_227553D14, 0, v25, &v69);
    v67 = v26;

    v62 = sub_2276637A0();
    v59 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v28 = sub_22766BC20();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    v57 = xmmword_227670CD0;
    *(v31 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v32 = sub_22766BC00();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v57;
    sub_22766BBA0();
    sub_226F4CB48(v35);
    swift_setDeallocating();
    (*(v33 + 8))(v35 + v34, v32);
    swift_deallocClassInstance();
    sub_22766B7C0();

    (*(v65 + 8))(v19, v66);
    return (*(v63 + 8))(v58, v60);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v37 = sub_227667020();
    sub_2275A5364(v37);
    v39 = v38;

    v59 = v9;
    *&v57 = v12;
    if (!v39)
    {
      v39 = sub_227149264(MEMORY[0x277D84F90]);
    }

    v40 = v61;
    sub_22766B8F0();
    v41 = sub_227149264(MEMORY[0x277D84F90]);
    v42 = sub_22766B900();
    v70 = MEMORY[0x277D837D0];
    *&v69 = v42;
    *(&v69 + 1) = v43;
    sub_226F04970(&v69, v68);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v41;
    sub_22736A46C(v68, 0x707954746E657665, 0xE900000000000065, v44);
    v45 = v71;

    v46 = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v45;
    v47 = v67;
    sub_2270318E8(v39, sub_227553D14, 0, v46, &v69);
    v67 = v47;

    v63 = v69;
    v62 = sub_2276637A0();
    v60 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v49 = sub_22766BC20();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v52 = swift_allocObject();
    v58 = xmmword_227670CD0;
    *(v52 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v52);
    swift_setDeallocating();
    (*(v50 + 8))(v52 + v51, v49);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v53 = sub_22766BC00();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v58;
    sub_22766BBA0();
    sub_226F4CB48(v56);
    swift_setDeallocating();
    (*(v54 + 8))(v56 + v55, v53);
    swift_deallocClassInstance();
    sub_22766B7C0();

    (*(v65 + 8))(v40, v66);
    return (*(v10 + 8))(v57, v59);
  }
}

uint64_t sub_2270295EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a7;
  v36 = a5;
  v37 = a3;
  v38 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v35 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v35 - v24;
  sub_227667800();
  sub_227331EA0(a4);
  v27 = v26;
  v28 = sub_227665970();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  v29 = sub_2276659A0();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  v31 = a6 + *(type metadata accessor for MetricRecordingContext(0) + 24);
  sub_227331EA0(a10);
  sub_22701E5B0(a1, v37, v25, v27, v22, v19, 1, v16, a8, v36, v31, v35, v34, v32);

  sub_226E97D1C(v16, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v19, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v22, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v25, &qword_27D7B9140, &unk_22767F4E0);
}

uint64_t sub_22702996C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v86 = sub_2276651A0();
  v89 = *(v86 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227664D30();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v90 = *(v80 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  MEMORY[0x28223BE20](v12);
  v81 = &v65 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v91 = *(v84 - 8);
  v82 = v91[8];
  MEMORY[0x28223BE20](v84);
  v83 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v65 - v16;
  MEMORY[0x28223BE20](v17);
  v88 = &v65 - v18;
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v20 + 8))(v22, v19);
  v77 = a1;
  sub_227665110();
  v65 = v11;
  sub_226F065C4(v7, v11);
  sub_2270312E0(v7, MEMORY[0x277D50F70]);
  v23 = v89;
  v24 = *(v89 + 16);
  v75 = v89 + 16;
  v76 = v24;
  v69 = v4;
  v25 = v86;
  v24(v4, a1, v86);
  v74 = *(v23 + 80);
  v71 = ((v74 + 16) & ~v74) + v3;
  v72 = (v74 + 16) & ~v74;
  v26 = v72;
  v27 = swift_allocObject();
  v28 = *(v23 + 32);
  v89 = v23 + 32;
  v73 = v28;
  v28(v27 + v26, v4, v25);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_227032F00;
  *(v29 + 24) = v27;
  v30 = v90;
  v70 = *(v90 + 16);
  v31 = v79;
  v32 = v80;
  v70(v79, v11, v80);
  v33 = *(v30 + 80);
  v68 = (v33 + 16) & ~v33;
  v34 = (v8 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v34;
  v35 = swift_allocObject();
  v67 = *(v30 + 32);
  v67(v35 + ((v33 + 16) & ~v33), v31, v32);
  v36 = (v35 + v34);
  *v36 = sub_227033E50;
  v36[1] = v29;
  type metadata accessor for MetricRecordingContext(0);
  v37 = v81;
  sub_227669270();
  v79 = *(v30 + 8);
  v90 = v30 + 8;
  v38 = v65;
  v39 = v32;
  (v79)(v65, v32);
  v40 = v69;
  v41 = v86;
  v76(v69, v77, v86);
  v42 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v73(v43 + v72, v40, v41);
  *(v43 + v42) = v78;
  v70(v38, v37, v39);
  v44 = v66;
  v45 = swift_allocObject();
  v67(v45 + v68, v38, v39);
  v46 = (v45 + v44);
  *v46 = sub_22703306C;
  v46[1] = v43;

  v47 = v87;
  sub_227669270();
  (v79)(v37, v39);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_22701E4A0;
  *(v48 + 24) = 0;
  v49 = v91;
  v90 = v91[2];
  v50 = v83;
  v51 = v84;
  (v90)(v83, v47, v84);
  v52 = v49;
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v89 = v53;
  v54 = (v82 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v52[4];
  v56(v55 + v53, v50, v51);
  v57 = (v55 + v54);
  *v57 = sub_226F32FEC;
  v57[1] = v48;
  v58 = v88;
  sub_227669270();
  v59 = v91[1];
  ++v91;
  v60 = v87;
  v59(v87, v51);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_22702BC34;
  *(v61 + 24) = 0;
  (v90)(v60, v58, v51);
  v62 = swift_allocObject();
  v56(v62 + v89, v60, v51);
  v63 = (v62 + v54);
  *v63 = sub_226F5B0C0;
  v63[1] = v61;
  sub_227669270();
  return (v59)(v88, v51);
}

uint64_t sub_22702A240@<X0>(uint64_t a1@<X0>, unsigned __int8 (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricRecordingContext(0);
  sub_227031340(a1 + *(v10 + 28), v9, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = sub_2270312E0(v9, type metadata accessor for MetricServiceSubscriptionState);
  if (EnumCaseMultiPayload == 1)
  {
    v13 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D500A0], v13);
    return swift_willThrow();
  }

  if (a2(v12) == 1)
  {
    result = sub_22709C32C();
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_22709C54C();
    if (v3)
    {
      return result;
    }
  }

  return sub_227031340(a1, a3, type metadata accessor for MetricRecordingContext);
}

uint64_t sub_22702A434@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v124 = a4;
  v6 = type metadata accessor for MetricRecordingContext(0);
  v118 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v119 = v7;
  v123 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2276651A0();
  v120 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v116 = v8;
  v130 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v9 - 8);
  v113 = &v97 - v10;
  v11 = sub_227664D30();
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x28223BE20](v13);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v14;
  MEMORY[0x28223BE20](v15);
  v131 = &v97 - v16;
  v110 = sub_22766B390();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA0, &qword_227675D18);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v19 - 8);
  v103 = &v97 - v20;
  v105 = sub_227663260();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v98 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v107 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v111 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v23;
  MEMORY[0x28223BE20](v24);
  v129 = &v97 - v25;
  v26 = sub_227662750();
  v126 = *(v26 - 8);
  v127 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_227665AD0();
  v29 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - v36;
  v128 = a2;
  sub_227665150();
  v114 = v6;
  v38 = *(v6 + 28);
  sub_227031340(a1 + v38, v37, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2270312E0(v37, type metadata accessor for MetricServiceSubscriptionState);
    }
  }

  else
  {
    v40 = *(v29 + 32);
    v134 = v38;
    v41 = v125;
    v40(v31, v37, v125);
    sub_227662740();
    sub_227665AA0();
    (*(v126 + 8))(v28, v127);
    v42 = v41;
    v38 = v134;
    (*(v29 + 8))(v31, v42);
  }

  v43 = v132;
  v44 = a1;
  v45 = sub_227667840();
  sub_227663760();
  LODWORD(v134) = v45;
  v46 = sub_2276637A0();
  v48 = v47;
  v49 = sub_2276637A0();
  v51 = v128;
  if (v46 == v49 && v48 == v50)
  {

LABEL_10:
    v53 = sub_227668DD0();
    goto LABEL_12;
  }

  v52 = sub_22766D190();

  if (v52)
  {
    goto LABEL_10;
  }

  v53 = sub_22714972C(MEMORY[0x277D84F90]);
LABEL_12:
  v102 = v53;
  v54 = v125;
  sub_227031340(v44 + v38, v34, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v34, type metadata accessor for MetricServiceSubscriptionState);
    v55 = 1;
    v56 = v129;
  }

  else
  {
    v56 = v129;
    (*(v29 + 32))(v129, v34, v54);
    v55 = 0;
  }

  v57 = v105;
  (*(v29 + 56))(v56, v55, 1, v54);
  v58 = sub_2276636C0();
  LODWORD(v105) = sub_22718C804(v134, v58);

  sub_22766BA80();
  v125 = swift_allocBox();
  sub_22766BA70();
  v59 = v103;
  sub_227665170();
  v60 = v104;
  if ((*(v104 + 48))(v59, 1, v57) == 1)
  {
    sub_226E97D1C(v59, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    v61 = v44;
    v62 = v43;
    v63 = v98;
    (*(v60 + 32))(v98, v59, v57);
    v135 = sub_227031CCC();
    v64 = v99;
    sub_22766BA50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
    sub_22766BA60();
    (*(v100 + 8))(v64, v101);

    v65 = v63;
    v43 = v62;
    v44 = v61;
    v51 = v128;
    (*(v60 + 8))(v65, v57);
  }

  v66 = v106;
  sub_22766A740();
  v67 = sub_22766B380();
  v68 = sub_22766C8B0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_226E8E000, v67, v68, "Making identifier", v69, 2u);
    MEMORY[0x22AA9A450](v69, -1, -1);
  }

  (*(v109 + 8))(v66, v110);
  v70 = *(v43 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v71 = *(v43 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v43 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v70);
  v72 = v112;
  sub_227665110();
  v73 = *(v114 + 20);
  v74 = v113;
  (*(v126 + 56))(v113, 1, 1, v127);
  (*(v71 + 48))(v72, v56, v44 + v73, v134, v74, v70, v71);
  sub_226E97D1C(v74, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v72, MEMORY[0x277D50F70]);
  v75 = v44;
  v76 = v120;
  (*(v120 + 16))(v130, v51, v133);
  v77 = v56;
  v78 = v111;
  sub_226E93170(v77, v111, &qword_27D7B8428, &qword_227675CB0);
  v79 = v75;
  v80 = v123;
  sub_227031340(v79, v123, type metadata accessor for MetricRecordingContext);
  v81 = (*(v76 + 80) + 24) & ~*(v76 + 80);
  v82 = (v116 + *(v107 + 80) + v81) & ~*(v107 + 80);
  v83 = v82 + v108;
  v84 = (*(v118 + 80) + v82 + v108 + 1) & ~*(v118 + 80);
  v128 = (v84 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + v119 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v43;
  (*(v76 + 32))(v86 + v81, v130, v133);
  sub_226E95D18(v78, v86 + v82, &qword_27D7B8428, &qword_227675CB0);
  *(v86 + v83) = v134;
  sub_2270313A8(v80, v86 + v84);
  v87 = v86 + v128;
  *v87 = v125;
  *(v87 + 8) = v105 & 1;
  *(v86 + v85) = v102;
  v89 = v121;
  v88 = v122;
  v90 = v117;
  v91 = v131;
  (*(v121 + 16))(v117, v131, v122);
  v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v93 = (v115 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  (*(v89 + 32))(v94 + v92, v90, v88);
  v95 = (v94 + v93);
  *v95 = sub_22703315C;
  v95[1] = v86;

  sub_227669270();
  (*(v89 + 8))(v91, v88);
  sub_226E97D1C(v129, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_22702B290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v71 = a8;
  v73 = a7;
  v74 = a9;
  v67 = a6;
  v64 = a4;
  v62 = a3;
  v77 = a2;
  v72 = a10;
  v12 = type metadata accessor for MetricRecordingContext(0);
  v65 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = v13;
  v68 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v57 = *(v14 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v53[-v15];
  v59 = sub_2276651A0();
  v56 = *(v59 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v76 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v53[-v20];
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v53[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *a1;
  sub_22766A740();
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226E8E000, v27, v28, "Got metric identifier fields for recording click stream", v29, 2u);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v55 = v26;
  sub_227331EA0(v26);
  v75 = v21;
  v30 = v62;
  v54 = a5;
  sub_2270208EC(v62, v31, a5, v21);

  v32 = v56;
  v33 = v59;
  (*(v56 + 16))(v76, v30, v59);
  v34 = v61;
  sub_226E93170(v64, v61, &qword_27D7B8428, &qword_227675CB0);
  v35 = v68;
  sub_227031340(v67, v68, type metadata accessor for MetricRecordingContext);
  v36 = (*(v32 + 80) + 25) & ~*(v32 + 80);
  v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v57 + 80) + v37 + 8) & ~*(v57 + 80);
  v39 = (v58 + *(v65 + 80) + v38) & ~*(v65 + 80);
  v67 = (v39 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v76;
  *(v41 + 16) = v77;
  *(v41 + 24) = v54;
  (*(v32 + 32))(v41 + v36, v42, v33);
  *(v41 + v37) = v55;
  sub_226E95D18(v34, v41 + v38, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v35, v41 + v39);
  v43 = v41 + v67;
  v44 = v72;
  *v43 = v73;
  *(v43 + 8) = v71 & 1;
  *(v41 + v40) = v44;
  v46 = v69;
  v45 = v70;
  v47 = v63;
  (*(v69 + 16))(v63, v75, v70);
  v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + v48, v47, v45);
  v51 = (v50 + v49);
  *v51 = sub_2270332F4;
  v51[1] = v41;

  sub_227669270();
  return (*(v46 + 8))(v75, v45);
}

uint64_t sub_22702B8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v37 = a1;
  v38 = a5;
  v39 = a3;
  v40 = a2;
  v36 = a8;
  v34 = a6;
  v35 = a10;
  v11 = sub_22766BA80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v34 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v34 - v25;
  v27 = swift_projectBox();
  sub_227665120();
  sub_227331EA0(a4);
  v29 = v28;
  sub_227665130();
  sub_227665140();
  sub_227665160();
  v30 = v34 + *(type metadata accessor for MetricRecordingContext(0) + 24);
  swift_beginAccess();
  (*(v12 + 16))(v14, v27, v11);
  sub_227331EA0(v35);
  sub_22701E5B0(v37, v39, v26, v29, v23, v20, 1, v17, v36, v38, v30, v14, v33, v31);

  (*(v12 + 8))(v14, v11);
  sub_226E97D1C(v17, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v20, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v23, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v26, &qword_27D7B9140, &unk_22767F4E0);
}

id sub_22702BC68(void *a1, void (*a2)(double), const char *a3, ...)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v8);
  v11 = a1;
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v24, v25);
    v19 = sub_226E97AE8(v17, v18, &v26);
    v22 = v6;
    v20 = v19;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v12, v13, v23, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v7 + 8))(v10, v22);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_22702BE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = a1;
  v73 = sub_227666C40();
  v71 = *(v73 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227664D30();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v77 = &v58 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v80 = *(v74 - 8);
  v69 = v80[8];
  MEMORY[0x28223BE20](v74);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v58 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = &v58 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v19 + 8))(v21, v18);
  sub_227666C00();
  sub_226F065C4(v5, v10);
  sub_2270312E0(v5, MEMORY[0x277D50F70]);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22702C68C;
  *(v22 + 24) = 0;
  v23 = *(v6 + 16);
  v62 = v6 + 16;
  v65 = v23;
  v24 = v67;
  v23(&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v67);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v61 = v25;
  v59 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v60 = *(v6 + 32);
  v60(v26 + v25, &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v27 = (v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_227033E50;
  v27[1] = v22;
  type metadata accessor for MetricRecordingContext(0);
  sub_227669270();
  v28 = *(v6 + 8);
  v63 = v6 + 8;
  v64 = v28;
  v29 = v24;
  v28(v10, v24);
  v30 = v71;
  v31 = v68;
  v32 = v73;
  (*(v71 + 16))(v68, v76, v73);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v66;
  (*(v30 + 32))(v34 + v33, v31, v32);
  v35 = v77;
  v36 = v29;
  v65(v10, v77, v29);
  v37 = v59;
  v38 = swift_allocObject();
  v60(v38 + v61, v10, v36);
  v39 = (v38 + v37);
  *v39 = sub_22703288C;
  v39[1] = v34;

  v40 = v78;
  sub_227669270();
  v64(v35, v36);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22701E4E4;
  *(v41 + 24) = 0;
  v42 = v80;
  v77 = v80[2];
  v43 = v70;
  v44 = v74;
  (v77)(v70, v40, v74);
  v45 = v42;
  v46 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v76 = v46;
  v47 = (v69 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v45[4];
  v49(v48 + v46, v43, v44);
  v50 = (v48 + v47);
  *v50 = sub_226F32FEC;
  v50[1] = v41;
  v51 = v79;
  sub_227669270();
  v52 = v80[1];
  ++v80;
  v53 = v78;
  v52(v78, v44);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_22702EA10;
  *(v54 + 24) = 0;
  (v77)(v53, v51, v44);
  v55 = swift_allocObject();
  v49(v55 + v76, v53, v44);
  v56 = (v55 + v47);
  *v56 = sub_226F5B0C0;
  v56[1] = v54;
  sub_227669270();
  return (v52)(v79, v44);
}

uint64_t sub_22702C68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricRecordingContext(0);
  sub_227031340(a1 + *(v8 + 28), v7, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2270312E0(v7, type metadata accessor for MetricServiceSubscriptionState);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D500A0], v10);
    return swift_willThrow();
  }

  else
  {
    result = sub_22709C54C();
    if (!v2)
    {
      return sub_227031340(a1, a2, type metadata accessor for MetricRecordingContext);
    }
  }

  return result;
}

uint64_t sub_22702C848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v97 = a2;
  v89 = a4;
  v5 = type metadata accessor for MetricRecordingContext(0);
  v84 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = v6;
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_227666C40();
  v83 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v80 = v7;
  v95 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v69 - v9;
  v10 = sub_227664D30();
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = v13;
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v69 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v73 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v91 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v94 = sub_22766BA80();
  v78 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v75 = sub_22714972C(MEMORY[0x277D84F90]);
  v92 = v31;
  sub_22766BA70();
  v32 = *(v5 + 28);
  v77 = a1;
  sub_227031340(a1 + v32, v22, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v22, type metadata accessor for MetricServiceSubscriptionState);
    v33 = sub_227665AD0();
    (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  }

  else
  {
    v34 = sub_227665AD0();
    v35 = *(v34 - 8);
    (*(v35 + 32))(v27, v22, v34);
    (*(v35 + 56))(v27, 0, 1, v34);
  }

  sub_22766A740();
  v36 = sub_22766B380();
  v37 = sub_22766C8B0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_226E8E000, v36, v37, "Recording performance stream event to Jet", v38, 2u);
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  v39 = *(v97 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v40 = *(v97 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v97 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v39);
  v41 = v72;
  v42 = v79;
  sub_227666C00();
  v43 = *(v5 + 20);
  v44 = sub_227662750();
  v45 = v76;
  (*(*(v44 - 8) + 56))(v76, 1, 1, v44);
  v46 = *(v40 + 48);
  v47 = v77;
  v70 = v27;
  v46(v41, v27, v77 + v43, 129, v45, v39, v40);
  sub_226E97D1C(v45, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v41, MEMORY[0x277D50F70]);
  v48 = v83;
  (*(v83 + 16))(v95, v42, v96);
  sub_226E93170(v27, v91, &qword_27D7B8428, &qword_227675CB0);
  v49 = v86;
  sub_227031340(v47, v86, type metadata accessor for MetricRecordingContext);
  v50 = v78;
  (*(v78 + 16))(v90, v92, v94);
  v51 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v52 = v51 + v80;
  v53 = (*(v73 + 80) + v51 + v80 + 1) & ~*(v73 + 80);
  v54 = (v74 + *(v84 + 80) + v53) & ~*(v84 + 80);
  v55 = (v85 + *(v50 + 80) + v54) & ~*(v50 + 80);
  v56 = (v71 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v96;
  *(v57 + 16) = v97;
  (*(v48 + 32))(v57 + v51, v95, v58);
  *(v57 + v52) = -127;
  sub_226E95D18(v91, v57 + v53, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v49, v57 + v54);
  v59 = v94;
  (*(v50 + 32))(v57 + v55, v90, v94);
  *(v57 + v56) = v75;
  v61 = v87;
  v60 = v88;
  v62 = v82;
  v63 = v93;
  (*(v87 + 16))(v82, v93, v88);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v81 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v60);
  v67 = (v66 + v65);
  *v67 = sub_227032954;
  v67[1] = v57;

  sub_227669270();
  (*(v61 + 8))(v63, v60);
  sub_226E97D1C(v70, &qword_27D7B8428, &qword_227675CB0);
  return (*(v50 + 8))(v92, v59);
}

uint64_t sub_22702D270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v76 = a8;
  v77 = a9;
  v70 = a7;
  v67 = a5;
  v68 = a6;
  v83 = a4;
  v80 = a3;
  v85 = a2;
  v10 = sub_22766BA80();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = v11;
  v73 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricRecordingContext(0);
  v65 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = v13;
  v82 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v61 = *(v14 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v55 - v15;
  v78 = sub_227666C40();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v78);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x28223BE20](v18);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v19;
  MEMORY[0x28223BE20](v20);
  v79 = &v55 - v21;
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a1;
  sub_22766A740();
  v26 = sub_22766B380();
  v27 = sub_22766C8B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_226E8E000, v26, v27, "Got metric identifier fields for recording performance stream", v28, 2u);
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v56 = *(v16 + 16);
  v29 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v78;
  v56(v29, v80, v78);
  v31 = *(v16 + 80);
  v32 = (v31 + 24) & ~v31;
  v58 = v17 + 7;
  v33 = swift_allocObject();
  *(v33 + 16) = v85;
  v34 = *(v16 + 32);
  v59 = v16 + 32;
  v60 = v34;
  v57 = v29;
  v34(v33 + v32, v29, v30);
  v35 = v33 + ((v17 + 7 + v32) & 0xFFFFFFFFFFFFFFF8);
  *v35 = v84;
  *(v35 + 8) = v83;
  sub_22766B7F0();

  sub_227669280();
  v56(v29, v80, v30);
  sub_226E93170(v67, v81, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v68, v82, type metadata accessor for MetricRecordingContext);
  v37 = v73;
  v36 = v74;
  v38 = v75;
  (*(v74 + 16))(v73, v70, v75);
  v39 = (v31 + 25) & ~v31;
  v40 = (v58 + v39) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + *(v61 + 80) + 8) & ~*(v61 + 80);
  v42 = (v62 + *(v65 + 80) + v41) & ~*(v65 + 80);
  v43 = (v66 + *(v36 + 80) + v42) & ~*(v36 + 80);
  v44 = (v69 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v85;
  *(v45 + 24) = v83;
  v60(v45 + v39, v57, v78);
  *(v45 + v40) = v84;
  sub_226E95D18(v81, v45 + v41, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v82, v45 + v42);
  (*(v36 + 32))(v45 + v43, v37, v38);
  *(v45 + v44) = v76;
  v47 = v71;
  v46 = v72;
  v48 = v64;
  v49 = v79;
  (*(v71 + 16))(v64, v79, v72);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v63 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v48, v46);
  v53 = (v52 + v51);
  *v53 = sub_227032CE8;
  v53[1] = v45;

  sub_227669270();
  return (*(v47 + 8))(v49, v46);
}

uint64_t sub_22702DA24@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v79 = a2;
  v82 = a3;
  v89 = sub_227666C40();
  *&v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v72 - v8;
  v78 = sub_227663260();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B910();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_227664D50();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227668810();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  sub_227666C20();
  sub_227666C30();
  if ((*(v17 + 88))(v20, v16) == *MEMORY[0x277D535E0])
  {
    (*(v17 + 96))(v20, v16);
    (*(v13 + 32))(v15, v20, v12);
    v26 = v84;
    v27 = sub_227664D40();
    if (v26)
    {
      (*(v13 + 8))(v15, v12);
      v28 = v25;
    }

    else
    {
      v90 = v12;
      v84 = v25;
      sub_2275A5364(v27);
      v44 = v43;

      if (v44)
      {
        sub_22766B8F0();
        v45 = sub_227149264(MEMORY[0x277D84F90]);
        v46 = sub_22766B900();
        v93 = MEMORY[0x277D837D0];
        *&v92 = v46;
        *(&v92 + 1) = v47;
        sub_226F04970(&v92, v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v45;
        sub_22736A46C(v91, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v49 = v94;
        v50 = v76;
        sub_226E93170(v84, v76, &qword_27D7B9158, &qword_2276730B8);
        v51 = v77;
        v52 = v78;
        v53 = (*(v77 + 48))(v50, 1, v78);
        v73 = v13;
        v72 = v15;
        if (v53 == 1)
        {
          sub_226E97D1C(v50, &qword_27D7B9158, &qword_2276730B8);
        }

        else
        {
          v60 = v74;
          (*(v51 + 32))(v74, v50, v52);
          v61 = sub_227031CCC();
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *&v92 = v49;
          sub_2270318E8(v61, sub_227553D14, 0, v62, &v92);

          (*(v51 + 8))(v60, v52);
          v49 = v92;
        }

        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v92 = v49;
        sub_2270318E8(v44, sub_227553D14, 0, v63, &v92);
        swift_bridgeObjectRelease_n();
        v89 = v92;
        sub_2276637A0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
        v64 = sub_22766BC20();
        v65 = *(v64 - 8);
        v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v67 = swift_allocObject();
        v88 = xmmword_227670CD0;
        *(v67 + 16) = xmmword_227670CD0;
        sub_22766BC10();
        sub_226F4C828(v67);
        swift_setDeallocating();
        (*(v65 + 8))(v67 + v66, v64);
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
        v68 = sub_22766BC00();
        v69 = *(v68 - 8);
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = v88;
        sub_22766BBA0();
        sub_226F4CB48(v71);
        swift_setDeallocating();
        (*(v69 + 8))(v71 + v70, v68);
        swift_deallocClassInstance();
        sub_22766B7C0();
        (*(v80 + 8))(v83, v81);
        (*(v73 + 8))(v72, v90);
      }

      else
      {
        v54 = v75;
        sub_22766A740();
        v55 = sub_22766B380();
        v56 = sub_22766C890();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_226E8E000, v55, v56, "Unable to serialize pageRender event", v57, 2u);
          MEMORY[0x22AA9A450](v57, -1, -1);
        }

        (*(v85 + 8))(v54, v86);
        v58 = sub_2276636A0();
        sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
        swift_allocError();
        (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D50040], v58);
        swift_willThrow();
        (*(v13 + 8))(v15, v90);
      }

      v28 = v84;
    }

    return sub_226E97D1C(v28, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    sub_22766A740();
    (*(v88 + 16))(v87, a1, v89);
    v29 = sub_22766B380();
    v30 = sub_22766C890();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v84 = v25;
      v32 = v31;
      v83 = swift_slowAlloc();
      *&v92 = v83;
      *v32 = 136446210;
      v33 = v87;
      sub_227666C30();
      v34 = sub_22766C060();
      v36 = v35;
      (*(v88 + 8))(v33, v89);
      v37 = sub_226E97AE8(v34, v36, &v92);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_226E8E000, v29, v30, "Received unsupported performance stream type: %{public}s", v32, 0xCu);
      v38 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x22AA9A450](v38, -1, -1);
      v39 = v32;
      v25 = v84;
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    else
    {

      (*(v88 + 8))(v87, v89);
    }

    (*(v85 + 8))(v90, v86);
    v40 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D500D0], v40);
    swift_willThrow();
    sub_226E97D1C(v25, &qword_27D7B9158, &qword_2276730B8);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_22702E6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v34 = a7;
  v35 = a5;
  v36 = a3;
  v37 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v34 - v23;
  sub_227666C10();
  sub_227331EA0(a4);
  v26 = v25;
  v27 = sub_227665970();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v28 = sub_2276659A0();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = a6 + *(type metadata accessor for MetricRecordingContext(0) + 24);
  sub_227331EA0(a9);
  sub_22701E5B0(a1, v36, v24, v26, v21, v18, 1, v15, a8, v35, v30, v34, v33, v31);

  sub_226E97D1C(v15, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v18, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v21, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v24, &qword_27D7B9140, &unk_22767F4E0);
}

uint64_t sub_22702EA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = sub_227664DB0();
  v88 = *(v85 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  v4 = sub_227664D30();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v89 = *(v79 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v79);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v11);
  v80 = &v64 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v90 = *(v83 - 8);
  v81 = v90[8];
  MEMORY[0x28223BE20](v83);
  v82 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v64 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v64 - v17;
  v77 = a1;
  sub_227664D60();
  v64 = v10;
  sub_226F065C4(v6, v10);
  sub_2270312E0(v6, MEMORY[0x277D50F70]);
  v18 = v88;
  v19 = *(v88 + 16);
  v71 = v88 + 16;
  v76 = v19;
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v85;
  v19(v69, a1, v85);
  v21 = v18;
  v75 = *(v18 + 80);
  v72 = ((v75 + 16) & ~v75) + v3;
  v73 = (v75 + 16) & ~v75;
  v22 = v73;
  v23 = swift_allocObject();
  v24 = *(v21 + 32);
  v88 = v21 + 32;
  v74 = v24;
  v24(v23 + v22, &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_227031C24;
  *(v25 + 24) = v23;
  v26 = v89;
  v70 = *(v89 + 16);
  v27 = v79;
  v70(&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v79);
  v28 = v26;
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v67 = v29;
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = v30;
  v31 = swift_allocObject();
  v66 = *(v28 + 32);
  v32 = v31 + v29;
  v33 = v27;
  v66(v32, &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v34 = (v31 + v30);
  *v34 = sub_227033E50;
  v34[1] = v25;
  type metadata accessor for MetricRecordingContext(0);
  v35 = v80;
  sub_227669270();
  v68 = *(v28 + 8);
  v89 = v28 + 8;
  v36 = v64;
  v37 = v33;
  v68(v64, v33);
  v38 = v69;
  v39 = v85;
  v76(v69, v77, v85);
  v40 = (v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v74(v41 + v73, v38, v39);
  *(v41 + v40) = v78;
  v70(v36, v35, v37);
  v42 = v65;
  v43 = swift_allocObject();
  v44 = v37;
  v66(v43 + v67, v36, v37);
  v45 = (v43 + v42);
  *v45 = sub_227031CA0;
  v45[1] = v41;

  v46 = v86;
  sub_227669270();
  v68(v35, v44);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22701E528;
  *(v47 + 24) = 0;
  v48 = v90;
  v89 = v90[2];
  v49 = v82;
  v50 = v83;
  (v89)(v82, v46, v83);
  v51 = v48;
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v88 = v52;
  v53 = (v81 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v51[4];
  v55(v54 + v52, v49, v50);
  v56 = (v54 + v53);
  *v56 = sub_226F32FEC;
  v56[1] = v47;
  v57 = v87;
  sub_227669270();
  v58 = v90[1];
  ++v90;
  v59 = v86;
  v58(v86, v50);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_227030A8C;
  *(v60 + 24) = 0;
  (v89)(v59, v57, v50);
  v61 = swift_allocObject();
  v55(v61 + v88, v59, v50);
  v62 = (v61 + v53);
  *v62 = sub_226F5B0C0;
  v62[1] = v60;
  sub_227669270();
  return (v58)(v87, v50);
}

uint64_t sub_22702F260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227664350();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricRecordingContext(0);
  sub_227031340(a1 + *(v12 + 28), v11, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return swift_willThrow();
    }

    sub_227664DA0();
    sub_227664330();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    if (!v15)
    {
      v17 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D500A8], v17);
      return swift_willThrow();
    }
  }

  else
  {
    sub_2270312E0(v11, type metadata accessor for MetricServiceSubscriptionState);
  }

  result = sub_22709C54C();
  if (!v2)
  {
    return sub_227031340(a1, a2, type metadata accessor for MetricRecordingContext);
  }

  return result;
}

uint64_t sub_22702F4F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a3;
  v125 = a4;
  v6 = type metadata accessor for MetricRecordingContext(0);
  v118 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v119 = v7;
  v134 = &v101[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_227664DB0();
  v121 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v116 = v9;
  v136 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v101[-v11];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = v12;
  MEMORY[0x28223BE20](v13);
  v137 = &v101[-v14];
  v109 = sub_22766B390();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22766BA80();
  v143 = *(v16 - 8);
  v144 = v16;
  MEMORY[0x28223BE20](v16);
  v133 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = v17;
  MEMORY[0x28223BE20](v18);
  v142 = &v101[-v19];
  v20 = sub_227664D30();
  MEMORY[0x28223BE20](v20 - 8);
  v140 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = sub_22766B7F0();
  v135 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v130 = &v101[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = v22;
  MEMORY[0x28223BE20](v23);
  v139 = &v101[-v24];
  v145 = sub_227664350();
  v129 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v128 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v104 = &v101[-v27];
  v111 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v101[-v30];
  v32 = type metadata accessor for MetricServiceSubscriptionState(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v101[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v108 = *(v35 - 8);
  MEMORY[0x28223BE20](v35 - 8);
  v127 = &v101[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v101[-v38];
  v115 = v6;
  v40 = *(v6 + 28);
  v117 = a1;
  sub_227031340(a1 + v40, v34, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v34, type metadata accessor for MetricServiceSubscriptionState);
    v41 = sub_227665AD0();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
  }

  else
  {
    v42 = sub_227665AD0();
    v43 = *(v42 - 8);
    (*(v43 + 32))(v39, v34, v42);
    (*(v43 + 56))(v39, 0, 1, v42);
  }

  v131 = v39;
  sub_227664DA0();
  v44 = sub_2276642F0() & 1 | 0x40;
  sub_227664310();
  v45 = sub_227667B80();
  v47 = v46;
  v48 = 1;
  if (v45 != sub_227667B80() || v47 != v49)
  {
    v48 = sub_22766D190();
  }

  sub_227663780();
  v50 = sub_2276637A0();
  v52 = v51;
  v53 = sub_2276637A0();
  v132 = v8;
  v105 = v48;
  if (v50 == v53 && v52 == v54)
  {

LABEL_11:
    v56 = sub_227668DD0();
    goto LABEL_13;
  }

  v55 = sub_22766D190();

  if (v55)
  {
    goto LABEL_11;
  }

  v56 = sub_22714972C(MEMORY[0x277D84F90]);
LABEL_13:
  v103 = v56;
  v126 = v31;
  sub_2270323C8();
  v57 = v44;
  sub_2276637A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
  v58 = sub_22766BC20();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_227670CD0;
  sub_22766BC10();
  sub_226F4C828(v61);
  swift_setDeallocating();
  (*(v59 + 8))(v61 + v60, v58);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
  sub_22766BC00();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2276728D0;
  sub_22766BBA0();
  sub_22766BBC0();
  sub_226F4CB48(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22766B7C0();
  sub_227664D60();
  sub_22766BA70();
  v63 = v106;
  sub_22766A740();
  v64 = sub_22766B380();
  v65 = sub_22766C8B0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_226E8E000, v64, v65, "Recording play stream event to Jet", v66, 2u);
    MEMORY[0x22AA9A450](v66, -1, -1);
  }

  v107[1](v63, v109);
  v67 = *(v138 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v68 = *(v138 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v138 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v67);
  v69 = v104;
  sub_227664DA0();
  sub_227664320();
  v71 = v70;
  v72 = *(v129 + 8);
  v109 = v129 + 8;
  v107 = v72;
  (v72)(v69, v145);
  v73 = v113;
  if (v71)
  {
    v74 = 1;
  }

  else
  {
    sub_2276625C0();
    v74 = 0;
  }

  v75 = sub_227662750();
  (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
  v76 = *(v68 + 48);
  v77 = v117;
  v78 = v117 + *(v115 + 20);
  v79 = v131;
  v102 = v57;
  v76(v140, v131, v78, v57, v73, v67, v68);
  sub_226E97D1C(v73, &qword_27D7B9690, qword_227670B50);
  v80 = v129;
  (*(v129 + 16))(v128, v126, v145);
  v81 = v121;
  (*(v121 + 16))(v136, a2, v132);
  v82 = v135;
  (*(v135 + 16))(v130, v139, v141);
  sub_226E93170(v79, v127, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v77, v134, type metadata accessor for MetricRecordingContext);
  v83 = v143;
  (*(v143 + 16))(v133, v142, v144);
  v84 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v85 = (v111 + *(v81 + 80) + v84) & ~*(v81 + 80);
  v86 = (v116 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (*(v82 + 80) + v86 + 8) & ~*(v82 + 80);
  v88 = v87 + v112;
  v117 = (*(v108 + 80) + v87 + v112 + 2) & ~*(v108 + 80);
  v118 = (v110 + *(v118 + 80) + v117) & ~*(v118 + 80);
  v119 = (v119 + *(v83 + 80) + v118) & ~*(v83 + 80);
  v89 = (v114 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  (*(v80 + 32))(v90 + v84, v128, v145);
  (*(v81 + 32))(v90 + v85, v136, v132);
  *(v90 + v86) = v138;
  (*(v82 + 32))(v90 + v87, v130, v141);
  v91 = (v90 + v88);
  *v91 = v102;
  v91[1] = v105 & 1;
  sub_226E95D18(v127, v90 + v117, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v134, v90 + v118);
  (*(v143 + 32))(v90 + v119, v133, v144);
  *(v90 + v89) = v103;
  v92 = v123;
  v93 = v122;
  v94 = v137;
  v95 = v124;
  (*(v123 + 16))(v122, v137, v124);
  v96 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v97 = (v120 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  (*(v92 + 32))(v98 + v96, v93, v95);
  v99 = (v98 + v97);
  *v99 = sub_227032500;
  v99[1] = v90;

  sub_227669270();
  (*(v92 + 8))(v94, v95);
  (*(v143 + 8))(v142, v144);
  sub_2270312E0(v140, MEMORY[0x277D50F70]);
  (*(v135 + 8))(v139, v141);
  (v107)(v126, v145);
  return sub_226E97D1C(v131, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_2270305CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a5;
  v54 = a8;
  v52 = a7;
  v55 = a6;
  v56 = a4;
  v48 = a2;
  v49 = a3;
  v51 = a9;
  v50 = a12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_22766B390();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  sub_22766A740();
  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "Got metric identifier fields for recording play stream", v31, 2u);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  v45 = a10;
  v46 = a11;

  (*(v26 + 8))(v28, v25);
  sub_227664310();
  v32 = sub_227667B80();
  v34 = v33;
  if (v32 == sub_227667B80() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_22766D190();

    if ((v36 & 1) == 0)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
      (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
      goto LABEL_9;
    }
  }

  sub_227664D90();
LABEL_9:
  sub_227664D70();
  sub_227331EA0(v47);
  v39 = v38;
  v40 = sub_227665970();
  (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
  sub_227664D80();
  v41 = v45 + *(type metadata accessor for MetricRecordingContext(0) + 24);
  sub_227331EA0(v50);
  sub_22701E5B0(v53, v55, v21, v39, v18, v15, v52 & 1, v24, v51, v54, v41, v46, v44, v42);

  sub_226E97D1C(v15, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v18, &qword_27D7B9150, &unk_227675CD0);
  sub_226E97D1C(v21, &qword_27D7B9140, &unk_22767F4E0);
  return sub_226E97D1C(v24, &qword_27D7B9138, &unk_227675CC0);
}

uint64_t sub_227030AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v8;
    v17 = v3;
    v18 = v2;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_226E8E000, v13, v14, "Flushing metric events", v15, 2u);
    v20 = v19;
    v2 = v18;
    v3 = v17;
    v8 = v16;
    v5 = v27;
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder), *(v2 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder + 24));
  sub_22766BA30();
  v30[3] = sub_22766B9C0();
  v30[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v30);
  sub_22766B9B0();
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v30);
  sub_227669270();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22701E56C;
  *(v21 + 24) = 0;
  v22 = v28;
  (*(v4 + 16))(v28, v8, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  (*(v4 + 32))(v24 + v23, v22, v3);
  v25 = (v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_226EBFB9C;
  v25[1] = v21;
  sub_227669270();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_227030E80(void (*a1)(double), const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, a2, v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_227031078(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_226EA1CF4();
  swift_retain_n();
  v7 = sub_22766C950();
  v9[3] = v6;
  v9[4] = MEMORY[0x277D225C0];
  v9[0] = v7;
  sub_22766BDD0();

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_22703117C()
{
  v1 = *(v0 + 16);
  v3 = 0;
  v4 = 0;
  return v1(&v3);
}

void sub_2270311B8(void *a1)
{
  v3 = *(v1 + 16);
  v5 = a1;
  v6 = 1;
  v4 = a1;
  v3(&v5);
}

uint64_t sub_2270312E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227031340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2270313A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricRecordingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22703140C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227667830() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_22766BA80() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_227028540(a1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v9, v2 + v12, v2 + v15, *(v2 + v15 + *(v14 + 64)), a2, *(v2 + ((v15 + *(v14 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_227031620@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227667830() - 8);
  v4 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_227028D0C(*v4, *(v4 + 8), a1);
}

uint64_t sub_2270316C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227667830() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_22766BA80() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v14 + *(v13 + 64);
  LOBYTE(v17) = *(v2 + v15);
  return sub_2270295EC(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, v2 + v14, a2, v17, *(v2 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_2270318E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_2274E844C(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_226F04970(v47, v45);
  v14 = *a5;
  result = sub_226E92000(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_226FE4910(v20, a4 & 1);
    result = sub_226E92000(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_226FF1414();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_226E97CC0(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_226F04970(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_226F04970(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_2274E844C(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_226F04970(v47, v45);
        v34 = *a5;
        result = sub_226E92000(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_226FE4910(v38, 1);
          result = sub_226E92000(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_226E97CC0(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          sub_226F04970(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_226F04970(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2274E844C(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_226EBB21C(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_227031CCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C88, &qword_227675D00);
  MEMORY[0x28223BE20](v0 - 8);
  v62 = &v57 - v1;
  v2 = sub_227667540();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C90, &qword_227675D08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_227666540();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C98, &qword_227675D10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_2276655C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227149264(MEMORY[0x277D84F90]);
  v17 = sub_227663230();
  v18 = MEMORY[0x277D837D0];
  v68 = MEMORY[0x277D837D0];
  *&v67 = v17;
  *(&v67 + 1) = v19;
  sub_226F04970(&v67, v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v16;
  sub_22736A46C(v66, 0x644965676170, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v65;
  sub_227663250();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v22 = v18;
    sub_226E97D1C(v11, &qword_27D7B9C98, &qword_227675D10);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = sub_2276655B0();
    v22 = v18;
    v68 = v18;
    *&v67 = v23;
    *(&v67 + 1) = v24;
    sub_226F04970(&v67, v66);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v21;
    sub_22736A46C(v66, 0x6570795465676170, 0xE800000000000000, v25);
    (*(v13 + 8))(v15, v12);
    v21 = v65;
  }

  v26 = sub_227663220();
  v28 = v64;
  v29 = v60;
  if (v27 != 12)
  {
    v30 = v26;
    v31 = v27;
    v32 = sub_227665200();
    v34 = v33;
    sub_227032EDC(v30, v31);
    v68 = v22;
    *&v67 = v32;
    *(&v67 + 1) = v34;
    sub_226F04970(&v67, v66);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v21;
    sub_22736A46C(v66, 0x746E6F4365676170, 0xEB00000000747865, v35);
    v21 = v65;
  }

  v37 = v61;
  v36 = v62;
  sub_227663210();
  if ((*(v29 + 48))(v6, 1, v37) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B9C90, &qword_227675D08);
    v38 = v22;
  }

  else
  {
    v39 = v58;
    (*(v29 + 32))(v58, v6, v37);
    v40 = sub_227666530();
    v38 = v22;
    v68 = v22;
    *&v67 = v40;
    *(&v67 + 1) = v41;
    sub_226F04970(&v67, v66);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v21;
    sub_22736A46C(v66, 0x54746E65746E6F63, 0xEB00000000657079, v42);
    (*(v29 + 8))(v39, v37);
    v21 = v65;
  }

  sub_227663240();
  v43 = v63;
  if ((*(v63 + 48))(v36, 1, v28) == 1)
  {
    sub_226E97D1C(v36, &qword_27D7B9C88, &qword_227675D00);
  }

  else
  {
    v44 = v59;
    (*(v43 + 32))(v59, v36, v28);
    v45 = sub_227667530();
    v68 = v38;
    *&v67 = v45;
    *(&v67 + 1) = v46;
    sub_226F04970(&v67, v66);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v21;
    sub_22736A46C(v66, 0x6D656C7469746E65, 0xEF72657355746E65, v47);
    v48 = v65;
    v49 = sub_227667530();
    v68 = v38;
    *&v67 = v49;
    *(&v67 + 1) = v50;
    sub_226F04970(&v67, v66);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v48;
    sub_22736A46C(v66, 0xD000000000000013, 0x80000002276972F0, v51);
    (*(v43 + 8))(v44, v28);
    v21 = v65;
  }

  v52 = sub_227663200();
  sub_2275A5364(v52);
  v54 = v53;

  if (v54)
  {
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v21;
    sub_226FDAC14(v54, sub_227553D14, 0, v55, &v67);

    return v67;
  }

  return v21;
}

unint64_t sub_2270323C8()
{
  v0 = sub_227149264(MEMORY[0x277D84F90]);
  v1 = sub_227664340();
  v2 = 0x6974634179616C70;
  if (!v1)
  {
    v2 = 0x697463416B656573;
  }

  v11 = MEMORY[0x277D837D0];
  *&v10 = v2;
  *(&v10 + 1) = 0xEC00000079746976;
  sub_226F04970(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22736A46C(v9, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v4 = sub_227664300();
  sub_2275A5364(v4);
  v6 = v5;

  if (v6)
  {
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *&v10 = v0;
    sub_226FDAC14(v6, sub_227553D14, 0, v7, &v10);

    return v10;
  }

  return v0;
}

uint64_t sub_227032500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_227664350() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_227664DB0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_22766B7F0() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v14 = (v12 + *(v13 + 80) + 2) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(sub_22766BA80() - 8);
  v20 = (v17 + v18 + *(v19 + 80)) & ~*(v19 + 80);
  return sub_2270305CC(a1, v2 + v5, v2 + v8, *(v2 + v9), v2 + v11, *(v2 + v12), *(v2 + v12 + 1), v2 + v14, a2, v2 + v17, v2 + v20, *(v2 + ((*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_32Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2270328B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_227032954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666C40() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_22766BA80() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(v2 + 16);
  v18 = *(v2 + v7);

  return sub_22702D270(a1, v17, v2 + v6, v18, v2 + v9, v2 + v12, v2 + v15, v16, a2);
}

uint64_t objectdestroy_58Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 9, v4 | 7);
}

uint64_t sub_227032C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227666C40() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  sub_2273323D8(*v5);
  sub_22702DA24(v1 + v4, v6, a1);
}

uint64_t sub_227032CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666C40() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_22766BA80() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_22702E6C4(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, v2 + v14, a2, *(v2 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227032EDC(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_227032EEC(a1, a2);
  }

  return a1;
}

uint64_t sub_227032EEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t objectdestroy_78Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_227033098(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_22703315C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276651A0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  return sub_22702B290(a1, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), v2 + v12, *(v2 + ((v12 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), a2, *(v2 + ((v12 + *(v11 + 64) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2270332F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276651A0() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  LOBYTE(v14) = *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  return sub_22702B8CC(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, a2, v14, *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2270334A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2270335C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665E10() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  return sub_227025D70(*(v1 + 16), v1 + v4, v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)), a1);
}

uint64_t sub_2270336B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227033718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227033864@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(double)@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1(0) - 8);
  v11 = (*(v10 + 64) + ((*(v10 + 80) + 16) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  return sub_227026668(*(v5 + v11 + 8), v5 + ((v11 + *(v12 + 80) + 9) & ~*(v12 + 80)), a2, a3, a4, a5);
}

uint64_t objectdestroy_207Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  v11 = sub_227663260();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v1 + v9, 1, v11))
  {
    (*(v12 + 8))(v1 + v9, v11);
  }

  return MEMORY[0x2821FE8E8](v1, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_227033B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227667DA0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  return sub_227024BD8(*(v1 + v4 + 8), v1 + ((v4 + *(v5 + 80) + 9) & ~*(v5 + 80)), a1);
}

uint64_t objectdestroy_23Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227033D54()
{
  result = qword_28139B658;
  if (!qword_28139B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B658);
  }

  return result;
}

unint64_t sub_227033DA8()
{
  result = qword_28139B650;
  if (!qword_28139B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B650);
  }

  return result;
}

uint64_t sub_227033E88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_22766D370();
      sub_226F491FC(v12, v13, v14);
      v15 = v12;
      v16 = v13;
      v32 = v14;
      sub_227668BD0();
      v17 = sub_22766D3F0();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      if (((*(v31 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = v2;
        v22 = *(v2 + 48) + 24 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        sub_226F491FC(*v22, v24, *(v22 + 16));
        v26 = MEMORY[0x22AA94EE0](v23, v24, v25, v15, v16, v32);
        sub_226F49200(v23, v24, v25);
        if (v26)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        v2 = v21;
        if (((*(v31 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_226F49200(v15, v16, v32);
      v7 = v28;
      result = v29;
      v2 = v21;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_226F49200(v15, v16, v32);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2270340D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 32 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = a2;
    sub_22766D370();

    sub_22766C100();
    sub_22739284C(v34, v14);
    v32 = v15;
    sub_227392BA8(v34, v15);
    v17 = sub_22766D3F0();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v33 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v20 = v16;
    v21 = ~v18;
    while (1)
    {
      v22 = v20;
      v23 = (*(v20 + 48) + 32 * v19);
      v24 = v23[2];
      v25 = v23[3];
      v26 = *v23 == v13 && v23[1] == v12;
      if (!v26 && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (sub_227034B5C(v24, v14))
      {
        break;
      }

LABEL_16:
      v19 = (v19 + 1) & v21;
      v20 = v22;
      if (((*(v33 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v27 = sub_227035EAC(v25, v32);

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }

    v3 = v29;
    result = v30;
    a2 = v22;
    v7 = v28;
    v6 = v31;
  }

  while (v31);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034388(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v53 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v46 = result;
    v13 = (*(result + 48) + 112 * (v9 | (v3 << 6)));
    v15 = v13[1];
    v14 = v13[2];
    v113[0] = *v13;
    v113[1] = v15;
    v114 = v14;
    v17 = v13[4];
    v16 = v13[5];
    v18 = *(v13 + 90);
    v115 = v13[3];
    *&v117[10] = v18;
    v116 = v17;
    *v117 = v16;
    sub_22766D370();
    sub_227036054(v113, v63);
    sub_226FAE2D0(&v68);
    v19 = sub_22766D3F0();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v53 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_41:
      sub_2270360B0(v113);
      return 0;
    }

    v43 = v10;
    v44 = v8;
    v45 = v3;
    v52 = ~v20;
    while (1)
    {
      v22 = (*(v2 + 48) + 112 * v21);
      v24 = v22[1];
      v23 = v22[2];
      v63[0] = *v22;
      v63[1] = v24;
      v64 = v23;
      v25 = *(v22 + 90);
      v27 = v22[4];
      v26 = v22[5];
      v65 = v22[3];
      v66 = v27;
      *v67 = v26;
      *&v67[10] = v25;
      v28 = v64;
      v55 = v27;
      v56 = *(&v65 + 1);
      v29 = *&v67[8];
      v30 = SHIBYTE(v25);
      v31 = v114;
      v57 = *(&v115 + 1);
      v54 = v116;
      v32 = *&v117[8];
      v33 = v117[25];
      if (SHIBYTE(v25) < 0)
      {
        break;
      }

      if ((v117[25] & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      if (v63[0] != v113[0])
      {
        v47 = v64;
        v34 = *&v117[8];
        v35 = sub_22766D190();
        v28 = v47;
        v2 = a2;
        v32 = v34;
        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v51 = v21;
      v48 = v32;
      sub_22766D400();

      sub_22766C100();
      MEMORY[0x22AA996B0](v28);
      sub_22766D3A0();
      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v31);
      sub_22766D3A0();
      v90 = v70;
      v91 = v71;
      v92 = v72;
      v88 = v68;
      v89 = v69;
      v36 = sub_22766D3E0();
      v85 = v60;
      v86 = v61;
      v87 = v62;
      v83 = v58;
      v84 = v59;
      if (v36 != sub_22766D3E0() || (v56 != v57 || v55 != v54) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v29);
      sub_22766D3A0();
      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v48);
      sub_22766D3A0();
      v80 = v70;
      v81 = v71;
      v82 = v72;
      v78 = v68;
      v79 = v69;
      v37 = sub_22766D3E0();
      v75 = v60;
      v76 = v61;
      v77 = v62;
      v73 = v58;
      v74 = v59;
      v38 = sub_22766D3E0();
      sub_2270360B0(v63);
      v39 = v37 == v38;
      v2 = a2;
      if (v39)
      {
        goto LABEL_38;
      }

LABEL_16:
      v21 = (v21 + 1) & v52;
      if (((*(v53 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if ((v117[25] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v49 = *&v117[8];
    if (v63[0] != v113[0])
    {
      v28 = v64;
      v2 = a2;
      if ((sub_22766D190() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v51 = v21;
    sub_22766D400();

    sub_22766C100();
    MEMORY[0x22AA996B0](v28);
    sub_22766D3A0();
    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v31);
    sub_22766D3A0();
    v110 = v70;
    v111 = v71;
    v112 = v72;
    v108 = v68;
    v109 = v69;
    v40 = sub_22766D3E0();
    v105 = v60;
    v106 = v61;
    v107 = v62;
    v103 = v58;
    v104 = v59;
    if (v40 != sub_22766D3E0() || (v56 != v57 || v55 != v54) && (sub_22766D190() & 1) == 0)
    {
LABEL_15:
      sub_2270360B0(v63);
      v2 = a2;
      v21 = v51;
      goto LABEL_16;
    }

    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v29);
    sub_22766D3A0();
    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v49);
    sub_22766D3A0();
    v100 = v70;
    v101 = v71;
    v102 = v72;
    v98 = v68;
    v99 = v69;
    v41 = sub_22766D3E0();
    v95 = v60;
    v96 = v61;
    v97 = v62;
    v93 = v58;
    v94 = v59;
    v42 = sub_22766D3E0();
    sub_2270360B0(v63);
    v39 = v41 == v42;
    v2 = a2;
    if (!v39 || ((v30 ^ v33) & 1) != 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    sub_2270360B0(v113);
    result = v46;
    v8 = v44;
    v3 = v45;
    v7 = v43;
  }

  while (v43);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034B5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v20 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v24 = a2 + 56;
  v21 = v7;
  v22 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v23 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(*(result + 48) + 40 * (v8 | (v3 << 6)) + 16);
      sub_22766D370();

      sub_22766C100();
      v12 = v11;
      MEMORY[0x22AA996B0](v11);
      sub_22766D3A0();
      v13 = sub_22766D3F0();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v24 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = *(*(a2 + 48) + 40 * v15 + 16);
        sub_22766D400();

        sub_22766C100();
        MEMORY[0x22AA996B0](v17);
        sub_22766D3A0();
        sub_22766D400();
        sub_22766C100();
        MEMORY[0x22AA996B0](v12);
        sub_22766D3A0();
        v18 = sub_22766D3E0();
        v19 = sub_22766D3E0();

        if (v18 == v19)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v24 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v7 = v21;
      result = v22;
      v6 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v20 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v23 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034E48(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(result + 56);
  v35 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v36 = v10;
  v37 = result;
  if ((v8 & v6) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v12 = __clz(__rbit64(v9));
    v13 = (v9 - 1) & v9;
LABEL_13:
    v16 = *(v4 + 48) + 24 * (v12 | (v5 << 6));
    v17 = *v16;
    v40 = *(v16 + 8);
    v18 = *(v16 + 16);
    sub_22766D370();
    v38 = v13;
    if (!v18)
    {
      MEMORY[0x22AA996B0](0);
      sub_227663FB0();
      goto LABEL_17;
    }

    if (v18 == 1)
    {
      MEMORY[0x22AA996B0](1);
      sub_227664C10();
LABEL_17:
      sub_22766C100();

      goto LABEL_19;
    }

    MEMORY[0x22AA996B0](2);

    sub_22766C100();
LABEL_19:
    v19 = sub_22766D3F0();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_47:
      a3(v17, v40, v18);
      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = *(a2 + 48) + 24 * v21;
      if (!*(v23 + 16))
      {
        if (v18)
        {
          goto LABEL_22;
        }

        v24 = sub_227663FB0();
        v26 = v30;
        v27 = sub_227663FB0();
        goto LABEL_35;
      }

      if (*(v23 + 16) == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_22;
        }

        v24 = sub_227664C10();
        v26 = v25;
        v27 = sub_227664C10();
LABEL_35:
        if (v24 == v27 && v26 == v28)
        {

          goto LABEL_44;
        }

        v32 = sub_22766D190();

        if (v32)
        {
          goto LABEL_44;
        }

        goto LABEL_22;
      }

      if (v18 != 2)
      {
        goto LABEL_22;
      }

      if (*v23 == v17 && *(v23 + 8) == v40)
      {
        break;
      }

      if (sub_22766D190())
      {
        v33 = v17;
        v34 = v40;
        goto LABEL_43;
      }

LABEL_22:
      v21 = (v21 + 1) & v22;
      if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v33 = v17;
    v34 = v40;
LABEL_43:
    result = a3(v33, v34, 2);
LABEL_44:
    v10 = v36;
    v4 = v37;
    v9 = v38;
  }

  while (v38);
LABEL_8:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return 1;
    }

    v15 = *(v35 + 8 * v5);
    ++v14;
    if (v15)
    {
      v12 = __clz(__rbit64(v15));
      v13 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_227035184(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276694E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_227036104(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
        v26 = sub_22766BF50();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_227036104(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
          v31 = sub_22766BFB0();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_227035534(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22766D370();

    sub_22766C100();
    v16 = sub_22766D3F0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2270356EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v20 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v21 = v7;
  v22 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v23 = (v6 - 1) & v6;
LABEL_13:
      v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_22766D370();
      sub_226EB396C(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v16 = sub_22766D3F0();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_226EB2DFC(v13, v14, v15);
      v7 = v21;
      result = v22;
      v6 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_226EB2DFC(v13, v14, v15);
    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v20 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v23 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_227035964(uint64_t a1, uint64_t a2)
{
  v4 = sub_227665F20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_227036104(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
        v26 = sub_22766BF50();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_227036104(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
          v31 = sub_22766BFB0();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_227035D14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273926B4(v4, v1);
  sub_2273923B0(v4, v2);
  return sub_22766D3F0();
}

void sub_227035D68(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2273926B4(a1, v3);

  sub_2273923B0(a1, v4);
}

uint64_t sub_227035DA8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22766D370();
  sub_2273926B4(v5, v2);
  sub_2273923B0(v5, v3);
  return sub_22766D3F0();
}

uint64_t sub_227035DF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2270340D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_227034388(v2, v3);
}

unint64_t sub_227035E58()
{
  result = qword_27D7B9CD0;
  if (!qword_27D7B9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9CD0);
  }

  return result;
}

uint64_t sub_227035EAC(uint64_t result, uint64_t a2)
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
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_226F39D9C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_22766D190();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
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
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227036104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227036158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2270361A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_2270361EC(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FE663C(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A55B0(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A55B0((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CD8, &qword_227679CF0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270364AC()
{
  v0 = sub_227664F20();
  v1 = sub_2270361EC(v0);
  v2 = sub_227664F20();
  v3 = sub_2270361EC(v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100[0] = v1;
  sub_227036CA8(v3, sub_226F524F8, 0, isUniquelyReferenced_nonNull_native, v100);

  v5 = v100[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A20, &qword_227674E48);
  v6 = sub_22766CFF0();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(*(v5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v7 + 48) + 8 * v17) = v18;
      *(*(v7 + 56) + 8 * v17) = v19;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v7 + 16) = v22;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_95;
      }

      if (v8 >= v12)
      {
        break;
      }

      v16 = *(v5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v7 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_22:
      v30 = *(*(v7 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v25)))));
      v31 = *(v30 + 16);
      v32 = *(v28 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_101;
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      if (!v34 || v33 > *(v28 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_2273A55B0(v34, v35, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v30 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v31)
        {
          goto LABEL_106;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v36 = *(v28 + 2);
          v21 = __OFADD__(v36, v31);
          v37 = v36 + v31;
          if (v21)
          {
            goto LABEL_108;
          }

          *(v28 + 2) = v37;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_102;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v38 = sub_227664F10();
        v39 = sub_2270361EC(v38);
        v40 = sub_227664F10();
        v41 = sub_2270361EC(v40);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v39;
        sub_227036CA8(v41, sub_226F524F8, 0, v42, v100);

        v43 = v100[0];
        v44 = sub_22766CFF0();
        v45 = v44;
        v46 = 0;
        v47 = 1 << *(v43 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = v48 & *(v43 + 64);
        v50 = (v47 + 63) >> 6;
        v51 = v44 + 64;
        if (!v49)
        {
LABEL_38:
          v53 = v46;
          while (1)
          {
            v46 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_96;
            }

            if (v46 >= v50)
            {

              v60 = 1 << *(v45 + 32);
              v61 = -1;
              if (v60 < 64)
              {
                v61 = ~(-1 << v60);
              }

              v62 = v61 & *(v45 + 64);
              v63 = (v60 + 63) >> 6;
              v99 = v45;

              v64 = 0;
              v65 = MEMORY[0x277D84F90];
              while (v62)
              {
LABEL_55:
                v67 = *(*(v99 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v62)))));
                v68 = *(v67 + 16);
                v69 = *(v65 + 2);
                v70 = v69 + v68;
                if (__OFADD__(v69, v68))
                {
                  goto LABEL_104;
                }

                v71 = swift_isUniquelyReferenced_nonNull_native();
                if (!v71 || v70 > *(v65 + 3) >> 1)
                {
                  if (v69 <= v70)
                  {
                    v72 = v69 + v68;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v65 = sub_2273A55B0(v71, v72, 1, v65);
                }

                v62 &= v62 - 1;
                if (*(v67 + 16))
                {
                  if ((*(v65 + 3) >> 1) - *(v65 + 2) < v68)
                  {
                    goto LABEL_107;
                  }

                  swift_arrayInitWithCopy();

                  if (v68)
                  {
                    v73 = *(v65 + 2);
                    v21 = __OFADD__(v73, v68);
                    v74 = v73 + v68;
                    if (v21)
                    {
                      goto LABEL_109;
                    }

                    *(v65 + 2) = v74;
                  }
                }

                else
                {

                  if (v68)
                  {
                    goto LABEL_105;
                  }
                }
              }

              while (1)
              {
                v66 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_97;
                }

                if (v66 >= v63)
                {

                  v75 = 0;
                  v76 = *(v65 + 2);
                  v77 = MEMORY[0x277D84F90];
LABEL_68:
                  v78 = 24 * v75;
                  while (v76 != v75)
                  {
                    if (v75 >= *(v65 + 2))
                    {
                      goto LABEL_98;
                    }

                    ++v75;
                    v79 = v78 + 24;
                    v80 = v65[v78 + 48];
                    v78 += 24;
                    if (v80 != 1)
                    {
                      if (v80)
                      {
                        v82 = *&v65[v79 + 8];
                        v81 = *&v65[v79 + 16];
                      }

                      else
                      {
                        v81 = 0;
                        v82 = v65[v79 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v77 = sub_2273A5594(0, *(v77 + 2) + 1, 1, v77);
                      }

                      v84 = *(v77 + 2);
                      v83 = *(v77 + 3);
                      if (v84 >= v83 >> 1)
                      {
                        v77 = sub_2273A5594((v83 > 1), v84 + 1, 1, v77);
                      }

                      *(v77 + 2) = v84 + 1;
                      v85 = &v77[24 * v84];
                      *(v85 + 4) = v82;
                      *(v85 + 5) = v81;
                      v85[48] = v80;
                      goto LABEL_68;
                    }
                  }

                  v86 = sub_226F43C10(v77);

                  v87 = 0;
                  v88 = *(v28 + 2);
                  v89 = MEMORY[0x277D84F90];
LABEL_81:
                  v90 = 24 * v87;
                  while (v88 != v87)
                  {
                    if (v87 >= *(v28 + 2))
                    {
                      goto LABEL_99;
                    }

                    ++v87;
                    v91 = v90 + 24;
                    v92 = v28[v90 + 48];
                    v90 += 24;
                    if (v92 != 1)
                    {
                      if (v92)
                      {
                        v94 = *&v28[v91 + 8];
                        v93 = *&v28[v91 + 16];
                      }

                      else
                      {
                        v93 = 0;
                        v94 = v28[v91 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v89 = sub_2273A5594(0, *(v89 + 2) + 1, 1, v89);
                      }

                      v96 = *(v89 + 2);
                      v95 = *(v89 + 3);
                      if (v96 >= v95 >> 1)
                      {
                        v89 = sub_2273A5594((v95 > 1), v96 + 1, 1, v89);
                      }

                      *(v89 + 2) = v96 + 1;
                      v97 = &v89[24 * v96];
                      *(v97 + 4) = v94;
                      *(v97 + 5) = v93;
                      v97[48] = v92;
                      goto LABEL_81;
                    }
                  }

                  sub_226F43C10(v89);

                  return v86;
                }

                v62 = *(v51 + 8 * v66);
                ++v64;
                if (v62)
                {
                  v64 = v66;
                  goto LABEL_55;
                }
              }
            }

            v54 = *(v43 + 64 + 8 * v46);
            ++v53;
            if (v54)
            {
              v52 = __clz(__rbit64(v54));
              v49 = (v54 - 1) & v54;
              goto LABEL_43;
            }
          }
        }

        while (1)
        {
          v52 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
LABEL_43:
          v55 = v52 | (v46 << 6);
          v56 = *(*(v43 + 48) + 8 * v55);
          v57 = *(*(v43 + 56) + 8 * v55);
          *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
          *(*(v45 + 48) + 8 * v55) = v56;
          *(*(v45 + 56) + 8 * v55) = v57;
          v58 = *(v45 + 16);
          v21 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v21)
          {
            goto LABEL_103;
          }

          *(v45 + 16) = v59;

          if (!v49)
          {
            goto LABEL_38;
          }
        }
      }

      v25 = *(v13 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_22;
      }
    }

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
  }

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

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227036CA8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 56) + v14);
    v36[0] = *(*(a1 + 48) + v14);
    v36[1] = v15;

    (a2)(v35, v36);

    v17 = v35[0];
    v16 = v35[1];
    v18 = *v37;
    v20 = sub_226F491D4(v35[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        sub_226FF21D8();
      }
    }

    else
    {
      sub_226FE663C(v23, v34 & 1);
      v25 = sub_226F491D4(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v37;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v16;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227036F00()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_227036F64()
{
  v1[2] = v0;
  v2 = sub_22766A8A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227037024, 0, 0);
}

uint64_t sub_227037024()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    v4 = 1;
LABEL_8:

    v12 = *(v0 + 8);

    return v12(v4);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = sub_2276693C0();
  (*(v6 + 104))(v5, *MEMORY[0x277D4F930], v7);
  v9 = sub_226EC9A38(v5, v8);

  (*(v6 + 8))(v5, v7);
  if (v9)
  {
    sub_2276696A0();
    v4 = *(v0 + 56);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_227037240;

  return sub_2272BED74();
}

uint64_t sub_227037240(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_227037380()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_22766BFD0();
  v4 = [v2 BOOLForKey_];

  if (v4 & 1) != 0 || (v5 = [v1 standardUserDefaults], v6 = sub_22766BFD0(), v7 = objc_msgSend(v5, sel_BOOLForKey_, v6), v6, v5, (v7))
  {
    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v0[3] = *__swift_project_boxed_opaque_existential_0((v0[2] + 24), *(v0[2] + 48));
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_227037534;

    return sub_2272BED74();
  }
}

uint64_t sub_227037534(char a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v5;
  v3[1] = sub_227037680;

  return sub_2272BE6E0();
}

uint64_t sub_227037680(int a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4((v3 | a1) & 1);
}

uint64_t sub_2270377A0()
{
  v1 = 0x707954616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x52746E65746E6F63;
  }
}

uint64_t sub_227037810@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227038350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227037838(uint64_t a1)
{
  v2 = sub_227038B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037874(uint64_t a1)
{
  v2 = sub_227038B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2270378BC(uint64_t a1)
{
  v2 = sub_227038CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2270378F8(uint64_t a1)
{
  v2 = sub_227038CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227037934(uint64_t a1)
{
  v2 = sub_227038BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037970(uint64_t a1)
{
  v2 = sub_227038BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2270379AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22766D190();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_227037A2C(uint64_t a1)
{
  v2 = sub_227038C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037A68(uint64_t a1)
{
  v2 = sub_227038C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227037AA4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a2;
  v27 = a4;
  v25 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D40, &qword_227675F80);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D48, &qword_227675F88);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D50, &qword_227675F90);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D58, &qword_227675F98);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227038B68();
  sub_22766D480();
  if (v27)
  {
    if (v27 == 1)
    {
      v32 = 1;
      sub_227038C10();
      sub_22766D0D0();
      v31 = v28;
      sub_227038D60();
      v16 = v22;
      sub_22766D120();
      (*(v21 + 8))(v8, v16);
    }

    else
    {
      v33 = 2;
      sub_227038BBC();
      v18 = v23;
      sub_22766D0D0();
      v19 = v26;
      sub_22766D0F0();
      (*(v24 + 8))(v18, v19);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v30 = 0;
    sub_227038CB8();
    sub_22766D0D0();
    v29 = v28;
    sub_227038DB4();
    sub_22766D120();
    (*(v20 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_227037ED0(uint64_t a1, uint64_t a2, char a3)
{
  sub_22766D370();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      return sub_22766D3F0();
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227037F94@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_227038480(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_227037FF0(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    MEMORY[0x22AA996B0](1);
    sub_227664C10();
LABEL_5:
    sub_22766C100();
  }

  MEMORY[0x22AA996B0](2);

  return sub_22766C100();
}

uint64_t sub_2270380C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22766D370();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      return sub_22766D3F0();
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_22703819C()
{
  result = qword_27D7B9CE0;
  if (!qword_27D7B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9CE0);
  }

  return result;
}

uint64_t sub_2270381F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227038224(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        v6 = sub_227664C10();
        v8 = v7;
        v9 = sub_227664C10();
        goto LABEL_7;
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_22766D190();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v6 = sub_227663FB0();
  v8 = v11;
  v9 = sub_227663FB0();
LABEL_7:
  if (v6 == v9 && v8 == v10)
  {

    return 1;
  }

  v13 = sub_22766D190();

  return v13 & 1;
}

uint64_t sub_227038350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
  if (v4 || (sub_22766D190() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_22766D190() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_22766D190();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_227038480(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CE8, &qword_227675F58);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CF0, &qword_227675F60);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CF8, &qword_227675F68);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D00, &qword_227675F70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v47 = a1;
  v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_227038B68();
  v16 = v46;
  sub_22766D460();
  if (!v16)
  {
    v37 = v7;
    v38 = 0;
    v18 = v44;
    v17 = v45;
    v39 = v11;
    v46 = v13;
    v19 = sub_22766D0C0();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
    {
      v23 = sub_22766CEB0();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D10, &qword_227675F78);
      *v25 = &type metadata for BookmarkCatalogFilterProperty;
      v15 = v46;
      sub_22766D060();
      sub_22766CEA0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v39 + 8))(v15, v10);
    }

    else if (*(v19 + 32))
    {
      v40 = v19;
      if (v21 == 1)
      {
        v51 = 1;
        sub_227038C10();
        v27 = v46;
        v15 = v46;
        v28 = v38;
        sub_22766D050();
        v29 = v39;
        if (v28)
        {
          (*(v39 + 8))(v27, v10);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_227038C64();
          v34 = v41;
          sub_22766D0B0();
          (*(v42 + 8))(v6, v34);
          (*(v29 + 8))(v27, v10);
          swift_unknownObjectRelease();
          v15 = v50;
        }

        goto LABEL_10;
      }

      v52 = 2;
      sub_227038BBC();
      v15 = v46;
      v32 = v38;
      sub_22766D050();
      v33 = v39;
      if (!v32)
      {
        v15 = sub_22766D080();
        (*(v43 + 8))(v18, v17);
        (*(v33 + 8))(v46, v10);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      (*(v39 + 8))(v15, v10);
    }

    else
    {
      v49 = 0;
      sub_227038CB8();
      v30 = v46;
      v15 = v46;
      v31 = v38;
      sub_22766D050();
      if (!v31)
      {
        sub_227038D0C();
        v35 = v37;
        sub_22766D0B0();
        (*(v40 + 8))(v9, v35);
        (*(v39 + 8))(v30, v10);
        swift_unknownObjectRelease();
        v15 = v48;
        goto LABEL_10;
      }

      (*(v39 + 8))(v30, v10);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v15;
}

unint64_t sub_227038B68()
{
  result = qword_27D7B9D08;
  if (!qword_27D7B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D08);
  }

  return result;
}

unint64_t sub_227038BBC()
{
  result = qword_27D7B9D18;
  if (!qword_27D7B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D18);
  }

  return result;
}

unint64_t sub_227038C10()
{
  result = qword_27D7B9D20;
  if (!qword_27D7B9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D20);
  }

  return result;
}

unint64_t sub_227038C64()
{
  result = qword_27D7B9D28;
  if (!qword_27D7B9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D28);
  }

  return result;
}

unint64_t sub_227038CB8()
{
  result = qword_27D7B9D30;
  if (!qword_27D7B9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D30);
  }

  return result;
}

unint64_t sub_227038D0C()
{
  result = qword_27D7B9D38;
  if (!qword_27D7B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D38);
  }

  return result;
}

unint64_t sub_227038D60()
{
  result = qword_27D7B9D60;
  if (!qword_27D7B9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D60);
  }

  return result;
}

unint64_t sub_227038DB4()
{
  result = qword_27D7B9D68;
  if (!qword_27D7B9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D68);
  }

  return result;
}

unint64_t sub_227038E70()
{
  result = qword_27D7B9D70;
  if (!qword_27D7B9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D70);
  }

  return result;
}

unint64_t sub_227038EC8()
{
  result = qword_27D7B9D78;
  if (!qword_27D7B9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D78);
  }

  return result;
}

unint64_t sub_227038F20()
{
  result = qword_27D7B9D80;
  if (!qword_27D7B9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D80);
  }

  return result;
}

unint64_t sub_227038F78()
{
  result = qword_27D7B9D88;
  if (!qword_27D7B9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D88);
  }

  return result;
}

unint64_t sub_227038FD0()
{
  result = qword_27D7B9D90;
  if (!qword_27D7B9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D90);
  }

  return result;
}

unint64_t sub_227039028()
{
  result = qword_27D7B9D98;
  if (!qword_27D7B9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D98);
  }

  return result;
}

unint64_t sub_227039080()
{
  result = qword_27D7B9DA0;
  if (!qword_27D7B9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DA0);
  }

  return result;
}

unint64_t sub_2270390D8()
{
  result = qword_27D7B9DA8;
  if (!qword_27D7B9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DA8);
  }

  return result;
}

unint64_t sub_227039130()
{
  result = qword_27D7B9DB0;
  if (!qword_27D7B9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DB0);
  }

  return result;
}

unint64_t sub_227039188()
{
  result = qword_27D7B9DB8;
  if (!qword_27D7B9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DB8);
  }

  return result;
}

unint64_t sub_2270391E0()
{
  result = qword_27D7B9DC0;
  if (!qword_27D7B9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DC0);
  }

  return result;
}

unint64_t sub_227039238()
{
  result = qword_27D7B9DC8;
  if (!qword_27D7B9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DC8);
  }

  return result;
}

uint64_t sub_2270392A8(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_227039368(uint64_t a1, uint64_t a2)
{
  sub_22766C100();
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();

  return sub_22766C100();
}

uint64_t sub_227039420(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_22766C100();
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncChangeTag(uint64_t a1)
{
  result = qword_28139AFB8;
  if (!qword_28139AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227039574(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = type metadata accessor for SyncChangeTag(0);
  sub_2276694E0();
  sub_2270396E8(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
  sub_22766C290();
  sub_22766C290();
  if (v16 != v14 || v17 != v15)
  {
    v6 = sub_22766D190();

    if (v6)
    {
      goto LABEL_10;
    }

LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

LABEL_10:
  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22766D190();
  }

  return v12 & 1;
}

uint64_t sub_2270396E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227039758(uint64_t a1)
{
  result = sub_2276694E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2270397D4(uint64_t a1)
{
  v34 = sub_227668240();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227668220();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_227039ADC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v48 = sub_227666B60();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v36 - v9;
  v10 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v42 = *(a1 + 16);
  if (v42)
  {
    v11 = 0;
    v41 = v6 + 16;
    v46 = (v6 + 32);
    v36 = xmmword_227670CD0;
    v39 = v6;
    v40 = a1;
    while (v11 < *(a1 + 16))
    {
      v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v14 = *(v6 + 72);
      v15 = v47;
      (*(v6 + 16))(v47, a1 + v13 + v14 * v11, v48);
      v44(&v49, v15);
      if (v4)
      {
        (*(v6 + 8))(v47, v48);

        goto LABEL_19;
      }

      v16 = v49;
      v18 = sub_226F491D4(v49);
      v19 = v10[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_21;
      }

      v22 = v17;
      if (v10[3] < v21)
      {
        sub_226FE8B4C(v21, 1);
        v10 = v50;
        v23 = sub_226F491D4(v16);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_23;
        }

        v18 = v23;
      }

      if (v22)
      {
        v38 = 0;
        v25 = v10[7];
        v26 = *v46;
        (*v46)(v43, v47, v48);
        v27 = *(v25 + 8 * v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v25 + 8 * v18) = v27;
        v37 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_2273A55CC(0, *(v27 + 2) + 1, 1, v27);
          *(v25 + 8 * v18) = v27;
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_2273A55CC((v29 > 1), v30 + 1, 1, v27);
          *(v25 + 8 * v18) = v27;
        }

        v12 = v37;
        v4 = v38;
        *(v27 + 2) = v30 + 1;
        v12(&v27[v13 + v30 * v14], v43, v48);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
        v31 = swift_allocObject();
        *(v31 + 16) = v36;
        (*v46)((v31 + v13), v47, v48);
        v10[(v18 >> 6) + 8] |= 1 << v18;
        *(v10[6] + 8 * v18) = v16;
        *(v10[7] + 8 * v18) = v31;
        v32 = v10[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_22;
        }

        v10[2] = v34;
      }

      ++v11;
      v6 = v39;
      a1 = v40;
      if (v42 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_22766D220();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v10;
  }

  return result;
}

void sub_227039E78(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v5 = a1 + 8;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & a1[8];
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  v31 = v9;

  if (v8)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v9)
    {
LABEL_28:

      return;
    }

    v8 = v5[v11];
    ++v10;
  }

  while (!v8);
  v32 = v4;
  v10 = v11;
  while (1)
  {
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = v3[6] + 24 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v38 = *(v3[7] + 8 * v12);
    sub_226EB396C(v14, v15, v16);

    sub_22703B4CC(&v38, &v33);
    if (v2)
    {

      sub_226EB2DFC(v14, v15, v16);
      goto LABEL_28;
    }

    v8 &= v8 - 1;

    if (v34)
    {
      sub_226EB2DFC(v14, v15, v16);
      v9 = v31;
      v4 = v32;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v17 = v32;
    v30 = v33;
    if (v32[3] <= v32[2])
    {
      sub_226FF6748();
      v17 = v39;
    }

    v35 = v14;
    v36 = v15;
    v37 = v16;
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v18 = sub_22766D3F0();
    v4 = v17;
    v19 = v17 + 8;
    v20 = -1 << *(v17 + 32);
    v21 = v18 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~v17[(v21 >> 6) + 8]) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~v17[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
    v3 = v29;
LABEL_26:
    *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = v4[6] + 24 * v23;
    *v28 = v14;
    *(v28 + 8) = v15;
    *(v28 + 16) = v16;
    *(v4[7] + 8 * v23) = v30;
    ++v4[2];
    v9 = v31;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    v32 = v4;
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  v3 = v29;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = v19[v22];
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_26;
    }
  }

LABEL_31:
  __break(1u);
}