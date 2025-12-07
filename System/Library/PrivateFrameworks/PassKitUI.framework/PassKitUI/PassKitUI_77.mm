uint64_t sub_1BD81CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a1;
  v7 = sub_1BE051F54();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v18 = v30;
  v17 = v31;
  v16[2] = v15;
  v16[3] = v18;
  v16[4] = a4;
  v16[5] = v13;
  v16[6] = v17;
  v16[7] = a2;
  aBlock[4] = sub_1BD82682C;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_188;
  v19 = _Block_copy(aBlock);
  v20 = v35;
  sub_1BE048C84();
  sub_1BE048964();
  v21 = v13;
  v20, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v19);
  _Block_release(v19);

  (*(v33 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v32);
}

void sub_1BD81CF08(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v82 = a3;
  v83 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v77 - v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v80 = a5;
    v14 = [objc_allocWithZone(MEMORY[0x1E6997E60]) init];
    v15 = [v14 biometricEnrollmentACLType];

    v16 = sub_1BD112BCC(&unk_1F3B8F6A8);
    v17 = sub_1BD6CF234();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (v17)
    {
      v25 = v15;
    }

    else
    {
      v25 = 0;
    }

    IsAvailable = PKPearlIsAvailable();
    v27 = swift_allocObject();
    v28 = sub_1BD828FD0(v25, IsAvailable);
    v27[2] = v28;
    v27[3] = v29;
    if (a4)
    {
      v30 = v28;
      v31 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v78 = v27;
      v79 = a4;
      v33 = v25;
      v34 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v35;
      v36 = IsAvailable;
      v37 = *MEMORY[0x1E69BA3F8];
      *(inited + 56) = *MEMORY[0x1E69BA3F8];
      *(inited + 64) = v30;
      *(inited + 72) = v31;
      v38 = v34;
      v25 = v33;
      v27 = v78;
      v39 = v37;
      IsAvailable = v36;
      sub_1BE048C84();
      v40 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      a4 = v79;
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v41 = sub_1BE052224();
      v40, v42, v43, v44, v45, v46, v47, v48;
      [a4 reportEvent_];
    }

    v49 = [objc_allocWithZone(sub_1BE0520F4()) init];
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    v53 = v82;
    v52 = v83;
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    v54 = v80;
    *(v51 + 32) = v53;
    *(v51 + 40) = v54;
    *(v51 + 48) = v81;
    *(v51 + 56) = IsAvailable;
    *(v51 + 64) = a4;
    *(v51 + 72) = v27;
    *(v51 + 80) = v25;
    sub_1BE048C84();
    v55 = a4;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE0520E4();

    v27, v56, v57, v58, v59, v60, v61, v62;
    v50, v63, v64, v65, v66, v67, v68, v69;
    v51, v70, v71, v72, v73, v74, v75, v76;
  }

  else
  {
    *v11 = [objc_opt_self() errorWithSeverity_];
    (*(v9 + 104))(v11, *MEMORY[0x1E69B8168], v8);
    v83(v11);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1BD81D348(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10)
{
  v68 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v65 - v18);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *v19 = [objc_opt_self() errorWithSeverity_];
    (*(v17 + 104))(v19, *MEMORY[0x1E69B8168], v16);
    a3(v19);
LABEL_7:
    (*(v17 + 8))(v19, v16);
    return;
  }

  v21 = Strong;
  v65 = v17;
  v66 = a3;
  v67 = a4;
  if (a1)
  {
    v22 = sub_1BD829158(a1, a5, a6, a7 & 1);
    v23 = v68;
    if (v68)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v25 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v26;
      v27 = *MEMORY[0x1E69BA3F8];
      *(inited + 56) = *MEMORY[0x1E69BA3F8];
      swift_beginAccess();
      v28 = *(a9 + 24);
      *(inited + 64) = *(a9 + 16);
      *(inited + 72) = v28;
      v29 = v25;
      v30 = v27;
      sub_1BE048C84();
      v31 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v32 = sub_1BE052224();
      v31, v33, v34, v35, v36, v37, v38, v39;
      [v23 reportEvent_];
    }

    *v19 = v22;
    v17 = v65;
    (*(v65 + 104))(v19, *MEMORY[0x1E69B8168], v16);
    v40 = v22;
    v66(v19);

    goto LABEL_7;
  }

  v41 = swift_allocObject();
  v41[2] = a10;
  v41[3] = a9;
  v43 = v67;
  v42 = v68;
  v44 = v66;
  v41[4] = v68;
  v41[5] = v44;
  v41[6] = v43;
  v45 = objc_allocWithZone(MEMORY[0x1E6997C18]);
  v46 = v42;
  sub_1BE048964();
  sub_1BE048964();
  v47 = [v45 init];
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1BD8290E0;
  *(v48 + 24) = v41;
  aBlock[4] = sub_1BD8290F8;
  v70 = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD715170;
  aBlock[3] = &block_descriptor_70_1;
  v49 = _Block_copy(aBlock);
  v50 = v70;
  sub_1BE048964();
  v50, v51, v52, v53, v54, v55, v56, v57;
  [v47 globalAuthACLWithCompletion_];
  _Block_release(v49);

  v41, v58, v59, v60, v61, v62, v63, v64;
}

uint64_t sub_1BD81D7EC(id *a1, id *a2, void *a3, void *a4, void (*a5)(void))
{
  v111 = a4;
  v9 = sub_1BE04C534();
  v114 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v110 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v105 - v11;
  v12 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != a1)
  {
    v107 = v14;
    v108 = v13;
    v116 = 0;
    v117 = 0xE000000000000000;
    sub_1BE053834();
    v117, v17, v18, v19, v20, v21, v22, v23;
    v116 = 0xD00000000000001FLL;
    v117 = 0x80000001BE13BE00;
    v115 = a2;
    v24 = sub_1BE053B24();
    v26 = v25;
    MEMORY[0x1BFB3F610](v24);
    v26, v27, v28, v29, v30, v31, v32, v33;
    MEMORY[0x1BFB3F610](0x6C6C6F726E65202CLL, 0xEC000000203A6465);
    v115 = a1;
    v34 = sub_1BE053B24();
    v36 = v35;
    MEMORY[0x1BFB3F610](v34);
    v36, v37, v38, v39, v40, v41, v42, v43;
    v44 = v116;
    v45 = v117;
    swift_beginAccess();
    v46 = a3[3];
    a3[2] = v44;
    a3[3] = v45;
    v46, v47, v48, v49, v50, v51, v52, v53;
    sub_1BE04D0D4();
    sub_1BE048964();
    v54 = sub_1BE04D204();
    v55 = sub_1BE052C34();
    a3, v56, v57, v58, v59, v60, v61, v62;
    if (os_log_type_enabled(v54, v55))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v115 = v64;
      *v63 = 136315138;
      swift_beginAccess();
      v106 = v9;
      v65 = a5;
      v66 = a3[2];
      v67 = a3[3];
      sub_1BE048C84();
      v68 = sub_1BD123690(v66, v67, &v115);
      v69 = v67;
      a5 = v65;
      v9 = v106;
      v69, v70, v71, v72, v73, v74, v75, v76;
      *(v63 + 4) = v68;
      _os_log_impl(&dword_1BD026000, v54, v55, "handleMissingBiometricBinding: detected %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64, v77, v78, v79, v80, v81, v82, v83);
      MEMORY[0x1BFB45F20](v64, -1, -1);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    (*(v107 + 8))(v16, v108);
  }

  v84 = v111;
  if (v111)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v86 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v87;
    v88 = *MEMORY[0x1E69BA3F8];
    *(inited + 56) = *MEMORY[0x1E69BA3F8];
    swift_beginAccess();
    v89 = a3[3];
    *(inited + 64) = a3[2];
    *(inited + 72) = v89;
    v90 = v86;
    v91 = v88;
    sub_1BE048C84();
    v92 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v93 = sub_1BE052224();
    v92, v94, v95, v96, v97, v98, v99, v100;
    [v84 reportEvent_];
  }

  v101 = v114;
  v102 = v112;
  (*(v114 + 104))(v112, *MEMORY[0x1E69B8308], v9);
  v103 = v109;
  sub_1BE04BF54();
  (*(v101 + 8))(v102, v9);
  a5(v103);
  return (*(v110 + 8))(v103, v113);
}

void sub_1BD81DDE4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v224 = a2;
  v225 = a3;
  v227 = a1;
  v228 = sub_1BE04C534();
  v226 = *(v228 - 1);
  MEMORY[0x1EEE9AC00](v228);
  v221 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v219 = *(v6 - 1);
  v220 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_1BE04BDB4();
  v218 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v230 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BDF4();
  v11 = *(v10 - 8);
  v232 = v10;
  v233 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v223 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v222 = (&v213 - v14);
  v216 = sub_1BE04B944();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v214 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100, &qword_1BE0F85D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v213 - v17;
  v19 = sub_1BE04BAC4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v3[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v23)
  {
    sub_1BE048964();
    v217 = sub_1BE04C0A4();
    v25 = v24;
    v23, v24, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v217 = 0;
    v25 = 0xE000000000000000;
  }

  v32 = v227;
  v33 = *(v227 + 16);
  if (v33)
  {
    v34 = sub_1BD68DC7C(v227);
    if (v35 == 2 || (v36 = v34, (v37 = swift_unknownObjectWeakLoadStrong()) == 0))
    {
      aBlock = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500, &unk_1BE0C62D0);
      sub_1BD0DE4F4(&qword_1EBD55110, &unk_1EBD3F500, &unk_1BE0C62D0, MEMORY[0x1E69E6328]);
      sub_1BE052674();
      v63 = (*(v233 + 48))(v18, 1, v232);
      sub_1BD0DE53C(v18, &unk_1EBD55100, &qword_1BE0F85D0);
      if (v63 != 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v72 = Strong, v73 = [Strong navigationController], v72, v73))
      {
        v74 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
        v75 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion];
        if (v75)
        {
          sub_1BE048964();
          sub_1BE04C244();
          v75, v76, v77, v78, v79, v80, v81, v82;
          v83 = *&v4[v74];
          *&v4[v74] = 0;
          v83, v84, v85, v86, v87, v88, v89, v90;
        }

        sub_1BE04C264();
        v91 = v214;
        sub_1BE04BB94();
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = swift_allocObject();
        v94 = v217;
        v93[2] = v92;
        v93[3] = v94;
        v93[4] = v25;
        v93[5] = v227;
        v93[6] = v4;
        v95 = v225;
        v93[7] = v224;
        v93[8] = v95;
        v93[9] = v73;
        sub_1BE048C84();
        v96 = v4;
        sub_1BE048964();
        sub_1BE048964();
        v97 = v73;
        MEMORY[0x1BFB392E0](v91, sub_1BD82B688, v93);

        v93, v98, v99, v100, v101, v102, v103, v104;
        (*(v215 + 8))(v91, v216);
        v92, v105, v106, v107, v108, v109, v110, v111;
      }

      else
      {
        v221 = v13;
        v25, v64, v65, v66, v67, v68, v69, v70;
        v220 = [objc_opt_self() errorWithCommonType:1 severity:5];
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD03B254(0, v33, 0, v140, v141, v142, v143, v144);
        v145 = aBlock;
        v146 = *(v233 + 16);
        v147 = v227 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
        v227 = *(v233 + 72);
        v228 = v146;
        v226 = v218 + 8;
        v233 += 16;
        v148 = (v233 - 8);
        do
        {
          v149 = v229;
          v150 = v232;
          v228(v229, v147, v232);
          v151 = v230;
          sub_1BE04BDE4();
          v152 = sub_1BE04BDA4();
          v154 = v153;
          (*v226)(v151, v231);
          (*v148)(v149, v150);
          aBlock = v145;
          v161 = v145[2];
          v160 = v145[3];
          if (v161 >= v160 >> 1)
          {
            sub_1BD03B254((v160 > 1), v161 + 1, 1, v155, v156, v157, v158, v159);
            v145 = aBlock;
          }

          v145[2] = v161 + 1;
          v162 = &v145[2 * v161];
          v162[4] = v152;
          v162[5] = v154;
          v147 += v227;
          --v33;
        }

        while (v33);
        aBlock = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
        sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
        v163 = sub_1BE0522E4();
        v165 = v164;
        v145, v164, v166, v167, v168, v169, v170, v171;
        aBlock = 0;
        v235 = 0xE000000000000000;
        sub_1BE053834();
        v235, v172, v173, v174, v175, v176, v177, v178;
        aBlock = 0xD000000000000016;
        v235 = 0x80000001BE123A30;
        MEMORY[0x1BFB3F610](v163, v165);
        v165, v179, v180, v181, v182, v183, v184, v185;
        v186 = v235;
        v187 = sub_1BE052404();
        v186, v188, v189, v190, v191, v192, v193, v194;
        v195 = v220;
        [v220 addInternalDebugDescription_];

        v197 = v222;
        v196 = v223;
        *v222 = v195;
        v198 = v221;
        (*(v196 + 104))(v197, *MEMORY[0x1E69B8168], v221);
        v199 = v195;
        v224(v197);

        (*(v196 + 8))(v197, v198);
      }
    }

    else
    {
      v45 = v37;
      v25, v38, v39, v40, v41, v42, v43, v44;
      sub_1BE04BC34();
      v46 = sub_1BE04B9A4();
      (*(v20 + 8))(v22, v19);
      v47 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:v36 context:v46];
      if (v47)
      {
        v48 = v47;
        v49 = swift_allocObject();
        v49[2] = v227;
        v49[3] = v4;
        v50 = v225;
        v49[4] = v224;
        v49[5] = v50;
        v238 = sub_1BD82B5F8;
        v239 = v49;
        aBlock = MEMORY[0x1E69E9820];
        v235 = 1107296256;
        v236 = sub_1BD68F010;
        v237 = &block_descriptor_210_0;
        v51 = _Block_copy(&aBlock);
        v52 = v239;
        v53 = v48;
        v54 = v45;
        sub_1BE048C84();
        v55 = v4;
        sub_1BE048964();
        v52, v56, v57, v58, v59, v60, v61, v62;
        [v53 presentSecurityRepairFlowWithPresentingViewController:v54 completion:v51];

        _Block_release(v51);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1BE04D0D4();
    sub_1BE048C84();
    v112 = sub_1BE04D204();
    v113 = sub_1BE052C54();
    v25, v114, v115, v116, v117, v118, v119, v120;
    if (os_log_type_enabled(v112, v113))
    {
      v121 = v13;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      aBlock = v123;
      *v122 = 136315138;
      v124 = sub_1BD123690(v217, v25, &aBlock);
      v25, v125, v126, v127, v128, v129, v130, v131;
      *(v122 + 4) = v124;
      _os_log_impl(&dword_1BD026000, v112, v113, "[%s] Successfully resolved all missing requirements", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123, v132, v133, v134, v135, v136, v137, v138);
      MEMORY[0x1BFB45F20](v123, -1, -1);
      v139 = v122;
      v13 = v121;
      MEMORY[0x1BFB45F20](v139, -1, -1);
    }

    else
    {

      v25, v200, v201, v202, v203, v204, v205, v206;
    }

    (*(v219 + 8))(v8, v220);
    v208 = v222;
    v207 = v223;
    v209 = v224;
    v210 = v228;
    v211 = v226;
    v212 = v221;
    (*(v226 + 104))(v221, *MEMORY[0x1E69B8308], v228);
    sub_1BE04BF54();
    (*(v211 + 8))(v212, v210);
    v209(v208);
    (*(v207 + 8))(v208, v13);
  }
}

void sub_1BD81EA24(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5)
{
  v36[1] = a3;
  v37 = a5;
  v36[0] = a4;
  v7 = sub_1BE04BDB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE04BDF4();
  MEMORY[0x1EEE9AC00](v49);
  v46 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v48 = v36 - v15;
  v45 = *(a2 + 16);
  if (v45)
  {
    v16 = 0;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v39 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v41 = a2 + v39;
    v42 = v18;
    v47 = *(v17 + 56);
    v40 = (v8 + 8);
    v38 = (v17 - 8);
    v44 = (v17 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    v43 = v17;
    v18(v48, a2 + v39, v49, v14);
    while (2)
    {
      ++v16;
      sub_1BE04BDE4();
      v23 = 0;
      v24 = *(a1 + 16);
      while (v24 != v23)
      {
        v25 = v23 + 1;
        sub_1BD82B4EC(&unk_1EBD55130, 255, MEMORY[0x1E69B8138], MEMORY[0x1E69B8140]);
        v26 = sub_1BE052334();
        v23 = v25;
        if (v26)
        {
          (*v40)(v10, v7);
          (*v38)(v48, v49);
          goto LABEL_6;
        }
      }

      (*v40)(v10, v7);
      v27 = *v44;
      (*v44)(v46, v48, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, v19[2] + 1, 1);
        v19 = v50;
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        sub_1BD531998((v20 > 1), v21 + 1, 1);
        v19 = v50;
      }

      v19[2] = v21 + 1;
      v27(v19 + v39 + v21 * v47, v46, v49);
LABEL_6:
      if (v16 != v45)
      {
        v42(v48, v41 + v47 * v16, v49, v22);
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD81DDE4(v19, v36[0], v37);
  v19, v29, v30, v31, v32, v33, v34, v35;
}

uint64_t sub_1BD81EDD8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v11 = sub_1BE051F54();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE051FA4();
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v32 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v31;
  v17[7] = a6;
  aBlock[4] = sub_1BD82B0D8;
  v36 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_182_1;
  v18 = _Block_copy(aBlock);
  v19 = v36;
  v20 = a2;
  sub_1BE048C84();
  v21 = a4;
  sub_1BE048964();
  v19, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v29 = v32;
  MEMORY[0x1BFB3FDF0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v34 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v33);
}

uint64_t sub_1BD81F108(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), void (*a5)(void *), uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v28 - v14);
  if (a1 | a2)
  {
    if (a1 == 3 || !a2)
    {
      sub_1BE04BF44();
      a5(v15);
    }

    else
    {
      v24 = a2;
      v25 = sub_1BE04A844();
      v26 = [objc_opt_self() errorWithUnderlyingError:v25 defaultSeverity:5];

      *v15 = v26;
      (*(v13 + 104))(v15, *MEMORY[0x1E69B8168], v12);
      v27 = v26;
      a5(v15);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908, &qword_1BE0DF6C8);
    v16 = sub_1BE04BDB4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BE0B98E0;
    v21 = v20 + v19;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x1E69B8120], v16);
    v22(v21 + v18, *MEMORY[0x1E69B8128], v16);
    v29 = a6;
    v22(v21 + 2 * v18, *MEMORY[0x1E69B8118], v16);
    v22(v21 + 3 * v18, *MEMORY[0x1E69B8130], v16);
    sub_1BD81EA24(v20, a3, a4, a5, v29);
    swift_setDeallocating();
    swift_arrayDestroy();

    return swift_deallocClassInstance();
  }
}

uint64_t sub_1BD81F45C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a4;
  v37 = a2;
  v40 = sub_1BE051F54();
  v44 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_1BE051FA4();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v42 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a1;
  LOBYTE(v18) = v37 & 1;
  *(v20 + 32) = v37 & 1;
  *(v20 + 40) = v38;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  *(v20 + 88) = a10;
  aBlock[4] = sub_1BD82B108;
  v46 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_189;
  v21 = _Block_copy(aBlock);
  v22 = v46;
  sub_1BD25D6F4(a1, v18);
  sub_1BE048C84();
  sub_1BE048C84();
  v23 = a7;
  sub_1BE048964();
  v24 = a10;
  v22, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v33 = v39;
  v32 = v40;
  sub_1BE053664();
  v34 = v42;
  MEMORY[0x1BFB3FDF0](0, v17, v33, v21);
  _Block_release(v21);

  (*(v44 + 8))(v33, v32);
  return (*(v41 + 8))(v17, v43);
}

void sub_1BD81F814(uint64_t a1, void *a2, char a3, void *a4, void *a5, uint64_t a6, id *a7, void (*a8)(void *), uint64_t a9, void *a10)
{
  v112 = a8;
  v108 = a7;
  v109 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v105 - v16);
  v18 = sub_1BE04D214();
  v110 = *(v18 - 8);
  v111 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v107 = a9;
    if (a3)
    {
      sub_1BE04D0D4();
      sub_1BD25D6F4(a2, 1);
      sub_1BE048C84();
      v26 = sub_1BE04D204();
      v27 = sub_1BE052C54();
      a5, v28, v29, v30, v31, v32, v33, v34;
      sub_1BD25D6D4(a2, 1, v35, v36, v37, v38, v39, v40);
      if (os_log_type_enabled(v26, v27))
      {
        v41 = swift_slowAlloc();
        v106 = v26;
        v42 = v41;
        v108 = swift_slowAlloc();
        v113 = v108;
        *v42 = 136315394;
        *(v42 + 4) = sub_1BD123690(v109, a5, &v113);
        *(v42 + 12) = 2080;
        v43 = [a2 description];
        v44 = sub_1BE052434();
        LODWORD(v109) = v27;
        v46 = v45;

        sub_1BD25D6D4(a2, 1, v47, v48, v49, v50, v51, v52);
        v53 = sub_1BD123690(v44, v46, &v113);
        v46, v54, v55, v56, v57, v58, v59, v60;
        *(v42 + 14) = v53;
        v61 = v106;
        _os_log_impl(&dword_1BD026000, v106, v109, "[%s] Failed to acquire strong passcode assertion with error: %s", v42, 0x16u);
        v62 = v108;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v62, -1, -1);
        MEMORY[0x1BFB45F20](v42, -1, -1);
      }

      else
      {
      }

      (*(v110 + 8))(v20, v111);
      *v17 = a2;
      (*(v15 + 104))(v17, *MEMORY[0x1E69B8168], v14);
      v93 = a2;
      v112(v17);

      (*(v15 + 8))(v17, v14);
    }

    else
    {
      v63 = *(Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion);
      *(Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion) = a2;
      sub_1BE048964();
      v63, v64, v65, v66, v67, v68, v69, v70;
      if (sub_1BE04C224())
      {
        sub_1BE04D0D4();
        sub_1BE048C84();
        v71 = sub_1BE04D204();
        v72 = sub_1BE052C54();
        a5, v73, v74, v75, v76, v77, v78, v79;
        if (os_log_type_enabled(v71, v72))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v113 = v81;
          *v80 = 136315138;
          *(v80 + 4) = sub_1BD123690(v109, a5, &v113);
          _os_log_impl(&dword_1BD026000, v71, v72, "[%s] Successfully enforced strong passcode policy", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81, v82, v83, v84, v85, v86, v87, v88);
          MEMORY[0x1BFB45F20](v81, -1, -1);
          MEMORY[0x1BFB45F20](v80, -1, -1);
        }

        (*(v110 + 8))(v23, v111);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908, &qword_1BE0DF6C8);
        v89 = sub_1BE04BDB4();
        v90 = *(v89 - 8);
        v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1BE0B69E0;
        (*(v90 + 104))(v92 + v91, *MEMORY[0x1E69B8110], v89);
        sub_1BD81EA24(v92, a6, v108, v112, v107);

        swift_setDeallocating();
        (*(v90 + 8))(v92 + v91, v89);
        swift_deallocClassInstance();
      }

      else
      {
        v94 = swift_allocObject();
        v95 = v108;
        v94[2] = v109;
        v94[3] = a5;
        v94[4] = a6;
        v94[5] = v95;
        v96 = v107;
        v94[6] = v112;
        v94[7] = v96;
        sub_1BE048C84();
        sub_1BE048C84();
        v97 = v95;
        sub_1BE048964();
        sub_1BD8201D8(a2, a10, sub_1BD82B19C, v94);
        v94, v98, v99, v100, v101, v102, v103, v104;
      }
    }
  }
}

uint64_t sub_1BD81FE44(char a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *), void (*a6)(void *), uint64_t a7)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v44 - v11);
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  sub_1BE048C84();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();
  a3, v19, v20, v21, v22, v23, v24, v25;
  if (os_log_type_enabled(v17, v18))
  {
    v26 = swift_slowAlloc();
    v45 = v9;
    v27 = v26;
    v28 = swift_slowAlloc();
    v44 = v10;
    v29 = v28;
    v51 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1BD123690(v46, a3, &v51);
    *(v27 + 12) = 1024;
    *(v27 + 14) = a1 & 1;
    _os_log_impl(&dword_1BD026000, v17, v18, "[%s] Passcode upgrade flow finished with success: %{BOOL}d", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29, v30, v31, v32, v33, v34, v35, v36);
    v37 = v29;
    v10 = v44;
    MEMORY[0x1BFB45F20](v37, -1, -1);
    v38 = v27;
    v9 = v45;
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908, &qword_1BE0DF6C8);
    v39 = sub_1BE04BDB4();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BE0B69E0;
    (*(v40 + 104))(v42 + v41, *MEMORY[0x1E69B8110], v39);
    sub_1BD81EA24(v42, v47, v48, v49, v50);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    return swift_deallocClassInstance();
  }

  else
  {
    sub_1BE04BF44();
    v49(v12);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1BD8201D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v109 = a1;
  v110 = a4;
  v107 = a2;
  v108 = a3;
  key[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v13 = v4;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v104 = v9;
    v105 = v6;
    *&v106 = v5;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    key[0] = v17;
    *v16 = 136315138;
    v103 = v13;
    v18 = *&v13[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v18)
    {
      sub_1BE048964();
      v19 = sub_1BE04C0A4();
      v21 = v20;
      v18, v20, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v28 = sub_1BD123690(v19, v21, key);
    v21, v29, v30, v31, v32, v33, v34, v35;
    *(v16 + 4) = v28;
    _os_log_impl(&dword_1BD026000, v14, v15, "[%s] Presenting passcode upgrade flow", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17, v36, v37, v38, v39, v40, v41, v42);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);

    (*(v10 + 8))(v12, v104);
    v6 = v105;
    v5 = v106;
    v13 = v103;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v43 = *&v13[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
  sub_1BE04BC34();
  v44 = sub_1BE04B9A4();
  (*(v6 + 8))(v8, v5);
  v45 = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!v45)
  {
    __break(1u);
  }

  v46 = v45;
  v47 = v107;
  [v45 setOverrideUserInterfaceStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9E8, &qword_1BE0BFC20);
  v48 = sub_1BE04BDF4();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  v106 = xmmword_1BE0B69E0;
  *(v51 + 16) = xmmword_1BE0B69E0;
  v52 = *MEMORY[0x1E69B8110];
  v53 = sub_1BE04BDB4();
  (*(*(v53 - 8) + 104))(v51 + v50, v52, v53);
  (*(v49 + 104))(v51 + v50, *MEMORY[0x1E69B8148], v48);
  v54 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeFlowSection());
  sub_1BE048964();
  v55 = v109;
  sub_1BE048964();
  v56 = sub_1BD25D5A8(v43, v51, v55);
  v43, v57, v58, v59, v60, v61, v62, v63;
  v55, v64, v65, v66, v67, v68, v69, v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v71 = swift_allocObject();
  *(v71 + 16) = v106;
  *(v71 + 32) = v56;
  *(v71 + 40) = &off_1F3B99F60;
  v72 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v73 = v56;
  v74 = sub_1BD3986F8(v71);
  *(*&v74[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v75 = type metadata accessor for UIFlowManagerRendererWrapper();
  v76 = objc_allocWithZone(v75);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v111.receiver = v76;
  v111.super_class = v75;
  v77 = v47;
  v78 = objc_msgSendSuper2(&v111, sel_init);
  LOBYTE(key[0]) = 0;
  objc_setAssociatedObject(v77, key, v78, 1);

  *&v74[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v79 + 24) = v46;
  v80 = &v74[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v81 = *&v74[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v82 = *&v74[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v80 = sub_1BD82B1AC;
  v80[1] = v79;
  v83 = v77;
  v84 = v46;
  sub_1BD0D4744(v81, v82, v85, v86, v87, v88, v89, v90);
  v91 = swift_allocObject();
  v91[2] = v84;
  v91[3] = v55;
  v92 = v110;
  v91[4] = v108;
  v91[5] = v92;
  v91[6] = v74;
  sub_1BE048964();
  v93 = v84;
  sub_1BE048964();
  v94 = v74;
  sub_1BD398318(sub_1BD82B1C4, v91);

  v91, v95, v96, v97, v98, v99, v100, v101;
}

uint64_t sub_1BD820868(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v4 = sub_1BE04C224();
  if ((v4 & 1) == 0)
  {
    sub_1BE04C244();
  }

  return a3(v4 & 1);
}

void sub_1BD8209B0(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v19 = a3;
  v7 = sub_1BE04C534();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v18 - v14);
  if (a2)
  {
    if (a2 == 1)
    {
      *v15 = a1;
      (*(v12 + 104))(v15, *MEMORY[0x1E69B8168], v11, v13);
      v16 = a1;
    }

    else
    {
      (*(v8 + 104))(v10, *MEMORY[0x1E69B8308], v7, v13);
      sub_1BE04BF54();
      (*(v8 + 8))(v10, v7);
    }

    v19(v15);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v17 = v19;

    sub_1BD81DDE4(a1, v17, a4);
  }
}

uint64_t sub_1BD820BF4(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v8 = sub_1BE04C534();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v21 - v15);
  if (a3)
  {
    if (a3 == 1)
    {
      *v16 = a1;
      (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12, v14);
      v17 = a1;
    }

    else
    {
      (*(v9 + 104))(v11, *MEMORY[0x1E69B8308], v8, v14);
      sub_1BE04BF54();
      (*(v9 + 8))(v11, v8);
    }

    v22(v16);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v19 = v21;
    v18 = v22;

    return sub_1BD81CBB8(a1, a2, v18, v19);
  }
}

void sub_1BD820E34(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (aBlock - v13);
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = [objc_opt_self() sharedInstance];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = a2;
      v17[4] = a3;
      aBlock[4] = sub_1BD82B4A8;
      v29 = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD03E30C;
      aBlock[3] = &block_descriptor_273;
      v18 = _Block_copy(aBlock);
      v19 = v29;
      sub_1BE048964();
      v19, v20, v21, v22, v23, v24, v25, v26;
      [v15 initiateLostModeExitAuthWithCompletion_];
      _Block_release(v18);

      return;
    }

    *v14 = a1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
    v27 = a1;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
  }

  a2(v14);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD821130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1BD82B4B4;
  v33 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_280;
  v17 = _Block_copy(aBlock);
  v18 = v33;
  v19 = a1;
  sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v31);
}

void *sub_1BD821488(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v53 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v48 - v8);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if (a2)
    {
      v52 = a3;
      sub_1BE04D0D4();
      v16 = v15;
      v17 = sub_1BE04D204();
      v18 = sub_1BE052C54();

      if (os_log_type_enabled(v17, v18))
      {
        v51 = v18;
        v19 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        v50 = v19;
        *v19 = 136315138;
        v20 = *&v16[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
        if (v20)
        {
          sub_1BE048964();
          v48 = sub_1BE04C0A4();
          v22 = v21;
          v20, v21, v23, v24, v25, v26, v27, v28;
          v29 = v48;
        }

        else
        {
          v29 = 0;
          v22 = 0xE000000000000000;
        }

        v31 = sub_1BD123690(v29, v22, &v54);
        v22, v32, v33, v34, v35, v36, v37, v38;
        v39 = v50;
        *(v50 + 1) = v31;
        _os_log_impl(&dword_1BD026000, v17, v51, "[%s] User failed to authenticate to exit lost mode", v39, 0xCu);
        v40 = v49;
        __swift_destroy_boxed_opaque_existential_0(v49, v41, v42, v43, v44, v45, v46, v47);
        MEMORY[0x1BFB45F20](v40, -1, -1);
        MEMORY[0x1BFB45F20](v39, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
      *v9 = 0;
      v30 = MEMORY[0x1E69B8168];
      a3 = v52;
    }

    else
    {
      v30 = MEMORY[0x1E69B8160];
    }

    (*(v7 + 104))(v9, *v30, v6);
    a3(v9);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_1BD8217A4(void *a1, unsigned __int8 a2, void (*a3)(char *), void *a4)
{
  v48 = a3;
  v49 = a4;
  v7 = sub_1BE04C534();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = sub_1BE04C384();
  v15 = *(v14 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      *v13 = a1;
      (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10, v17.n128_f64[0]);
      v31 = a1;
    }

    else
    {
      *v13 = [objc_opt_self() errorWithSeverity_];
      (*(v11 + 104))(v13, *MEMORY[0x1E69B8168], v10);
    }

LABEL_14:
    v48(v13);
    (*(v11 + 8))(v13, v10);
    return;
  }

  if (!a2)
  {
    v20 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v20)
    {
      *v19 = a1;
      v21 = v16;
      (*(v15 + 104))(v19, *MEMORY[0x1E69B82A8], v16, v17.n128_f64[0]);
      sub_1BE048964();
      v22 = a1;
      sub_1BE04C084();
      v20, v23, v24, v25, v26, v27, v28, v29;
      (*(v15 + 8))(v19, v21);
    }

    v30 = v47;
    (*(v47 + 104))(v9, *MEMORY[0x1E69B8308], v7, v17);
    sub_1BE04BF54();
    (*(v30 + 8))(v9, v7);
    goto LABEL_14;
  }

  v32 = [a1 secureElementPass];
  if (v32)
  {
    v33 = v32;
    sub_1BE04BD64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BE0B7020;
    *(v34 + 32) = v33;
    v35 = v33;
    sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
    v36 = sub_1BE04BC74();
    v37 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = v36;
  }

  v38 = v49;
  sub_1BE048964();
  sub_1BD826978(v4, v48, v38, &unk_1F3BBE9E0, sub_1BD82B5FC, &block_descriptor_266);

  v38, v39, v40, v41, v42, v43, v44, v45;
}

void sub_1BD821C18(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v21 = a3;
  v8 = sub_1BE04C534();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  if (a2)
  {
    if (a2 == 1)
    {
      *v16 = a1;
      (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12, v14);
      v17 = a1;
    }

    else
    {
      (*(v9 + 104))(v11, *MEMORY[0x1E69B8308], v8, v14);
      sub_1BE04BF54();
      (*(v9 + 8))(v11, v8);
    }

    v21(v16);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v18 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = a1;
    v19 = a1;

    sub_1BD826978(v4, v21, a4, &unk_1F3BBE990, sub_1BD82B5FC, &block_descriptor_258);
  }
}

void sub_1BD821E70(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v179 = a3;
  v180 = a2;
  v5 = sub_1BE04C384();
  v178 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v173 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160, &unk_1BE0FBCF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v173 - v13);
  v15 = sub_1BE04C014();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD82B3DC(a1, v17, MEMORY[0x1E69B8180]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v123 = *v17;
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45580, &unk_1BE0FBD00);
      sub_1BD226B4C(&v17[*(v124 + 48)], v10);
      v125 = PKPaymentCardIneligibleReasonForRequirementsStatus(v123);
      v126 = swift_allocObject();
      v126[2] = v180;
      v126[3] = v179;
      sub_1BE048964();
      sub_1BD81938C(v125, v10, sub_1BD82B44C, v126);
      v126, v127, v128, v129, v130, v131, v132, v133;
      sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
      return;
    }

    v34 = *v17;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
    v36 = *MEMORY[0x1E69B8308];
    v37 = sub_1BE04C534();
    (*(*(v37 - 8) + 104))(v14, v36, v37);
    *(v14 + v35) = v34;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v11);
    v38 = v34;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v26 = *(v17 + 1);

      sub_1BD0E5E8C(0, &qword_1EBD55168, 0x1E69B8DA0);
      sub_1BE04BF44();
      v180(v14);
      (*(v12 + 8))(v14, v11);
      sub_1BD81C3AC(v26);
      v26, v27, v28, v29, v30, v31, v32, v33;
      return;
    }

    v122 = *v17;
    *v14 = *v17;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B8168], v11);
    v38 = v122;
    goto LABEL_37;
  }

  v39 = *v17;
  v40 = *(v17 + 1);
  v41 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel);
  if (v41)
  {
    if (v40 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_10:
        v176 = v39;
        v177 = v41;
        v42 = [v177 visiblePaymentSetupFields];
        if (v42)
        {
          v43 = v42;
          sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
          v44 = sub_1BE052744();

          if (v44 >> 62)
          {
            v52 = sub_1BE053704();
          }

          else
          {
            v52 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v44, v45, v46, v47, v48, v49, v50, v51;
          if (!v52)
          {
            v134 = sub_1BD3F0574(v40, v53, v54, v55, v56, v57, v58, v59);
            v40, v135, v136, v137, v138, v139, v140, v141;
            v142 = sub_1BE052724();
            v134, v143, v144, v145, v146, v147, v148, v149;
            v150 = v177;
            [v177 updateWithPaymentSetupFields_];

            v151 = v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v152 = *(v151 + 8);
              ObjectType = swift_getObjectType();
              (*(v152 + 16))(ObjectType, v152);
              swift_unknownObjectRelease();
            }

            v154 = [v150 validValuesProvidedForVisibleFields];
            v155 = v176;
            if (v154 && ([v150 hasVisibleEditableFields] & 1) == 0)
            {
              v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
              v157 = MEMORY[0x1E69B8308];
            }

            else
            {
              v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
              v157 = MEMORY[0x1E69B8300];
            }

            v166 = *v157;
            v167 = sub_1BE04C534();
            (*(*(v167 - 8) + 104))(v14, v166, v167);
            *(v14 + v156) = v155;
            (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v11);
            v168 = v155;
            v180(v14);

            goto LABEL_38;
          }

          v60 = sub_1BE052724();
          v61 = v177;
          v62 = [v177 secondaryEntryFieldsModelWithPaymentSetupFields_];

          if (!v62)
          {
            v40, v63, v64, v65, v66, v67, v68, v69;

            return;
          }

          v70 = [v62 validValuesProvidedForVisibleFields];
          if (([v62 hasVisibleEditableFields] & 1) == 0)
          {
            if (v70)
            {
              goto LABEL_20;
            }

            goto LABEL_32;
          }

          v174 = v70;
          v78 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration);
          v175 = v3;
          v79 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex);
          sub_1BE048964();
          v80 = sub_1BE04C3A4();
          v78, v81, v82, v83, v84, v85, v86, v87;
          if ((v79 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v173 = v62;
            if (v79 < v80[2])
            {
              v88 = v178;
              (*(v178 + 16))(v7, v80 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v79, v5);
              v80, v89, v90, v91, v92, v93, v94, v95;
              v96 = sub_1BE04C324();
              (*(v88 + 8))(v7, v5);
              v3 = v175;
              v62 = v173;
              if (v174 && (v96 & 1) == 0)
              {
LABEL_20:
                v97 = sub_1BD3F0574(v40, v71, v72, v73, v74, v75, v76, v77);
                v40, v98, v99, v100, v101, v102, v103, v104;
                v105 = sub_1BE052724();
                v97, v106, v107, v108, v109, v110, v111, v112;
                v113 = v177;
                [v177 updateWithPaymentSetupFields_];

                v114 = v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v115 = *(v114 + 8);
                  v116 = swift_getObjectType();
                  (*(v115 + 16))(v116, v115);
                  swift_unknownObjectRelease();
                }

                v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
                v118 = *MEMORY[0x1E69B8308];
                v119 = sub_1BE04C534();
                (*(*(v119 - 8) + 104))(v14, v118, v119);
                v120 = v176;
                *(v14 + v117) = v176;
                (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v11);
                v121 = v120;
                v180(v14);

                goto LABEL_38;
              }

LABEL_32:
              v40, v71, v72, v73, v74, v75, v76, v77;
              v158 = swift_allocObject();
              v158[2] = v180;
              v158[3] = v179;
              sub_1BE048964();
              sub_1BD8182B4(v62, 0, 0, sub_1BD82B444, v158);
              v158, v159, v160, v161, v162, v163, v164, v165;

              return;
            }
          }

          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  v40, v19, v20, v21, v22, v23, v24, v25;
  v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45570, &unk_1BE0D4490) + 48);
  v170 = *MEMORY[0x1E69B8308];
  v171 = sub_1BE04C534();
  (*(*(v171 - 8) + 104))(v14, v170, v171);
  *(v14 + v169) = v39;
  (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v11);
  v38 = v39;
LABEL_37:
  v172 = v38;
  v180(v14);

LABEL_38:
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_1BD8228B4(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55160, &unk_1BE0FBCF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1BD0E5E8C(0, &qword_1EBD55168, 0x1E69B8DA0);
  sub_1BE04BF44();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

void sub_1BD8229B0(void *a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4)
{
  v319 = a4;
  v320 = a3;
  v7 = sub_1BE04BD74();
  v317 = *(v7 - 8);
  v318 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v314 = &v306 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v306 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v306 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v313 = &v306 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v312 = &v306 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v311 = &v306 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v306 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v306 - v25;
  v27 = sub_1BE04D214();
  v315 = *(v27 - 8);
  v316 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v306 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v306 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0, &qword_1BE0D4640);
  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v306 - v36);
  if (a2 <= 1u)
  {
    v312 = v35;
    v313 = v34;
    if (!a2)
    {
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A8, &qword_1BE0D4648) + 48);
      v39 = *MEMORY[0x1E69B8308];
      v40 = sub_1BE04C534();
      (*(*(v40 - 8) + 104))(v37, v39, v40);
      *(v37 + v38) = a1;
      v42 = v312;
      v41 = v313;
      (*(v312 + 13))(v37, *MEMORY[0x1E69B8170], v313);
LABEL_6:
      v43 = a1;
      v320(v37);
      (*(v42 + 1))(v37, v41);
      return;
    }

    v44 = &v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      v47 = *(v44 + 1);
      v48 = swift_unknownObjectWeakLoadStrong();
      if (v48)
      {
        v310 = v47;
        v308 = v48;
        sub_1BE04D0D4();
        v49 = v4;
        v50 = sub_1BE04D204();
        v51 = sub_1BE052C54();

        v52 = os_log_type_enabled(v50, v51);
        v311 = v46;
        v309 = v49;
        if (v52)
        {
          v53 = swift_slowAlloc();
          v307 = swift_slowAlloc();
          aBlock = v307;
          *v53 = 136315138;
          v54 = *&v49[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
          if (v54)
          {
            sub_1BE048964();
            v55 = sub_1BE04C0A4();
            v57 = v56;
            v54, v56, v58, v59, v60, v61, v62, v63;
          }

          else
          {
            v55 = 0;
            v57 = 0xE000000000000000;
          }

          v96 = sub_1BD123690(v55, v57, &aBlock);
          v57, v97, v98, v99, v100, v101, v102, v103;
          *(v53 + 4) = v96;
          _os_log_impl(&dword_1BD026000, v50, v51, "[%s] Prompting for timeout", v53, 0xCu);
          v104 = v307;
          __swift_destroy_boxed_opaque_existential_0(v307, v105, v106, v107, v108, v109, v110, v111);
          MEMORY[0x1BFB45F20](v104, -1, -1);
          MEMORY[0x1BFB45F20](v53, -1, -1);
        }

        (*(v315 + 8))(v29, v316);
        v112 = *MEMORY[0x1E69B80D8];
        v113 = v317;
        v114 = v318;
        v315 = v317[13];
        v316 = (v317 + 13);
        (v315)(v14, v112, v318);
        v115 = PKPassKitBundle();
        if (v115)
        {
          v116 = v115;
          sub_1BE04B6F4();
          v118 = v117;

          v119 = v113[1];
          (v119)(v14, v114);
          v120 = sub_1BE052404();
          v118, v121, v122, v123, v124, v125, v126, v127;
          v128 = [objc_opt_self() alertControllerWithTitle:v120 message:0 preferredStyle:1];

          (v315)(v11, v112, v114);
          v129 = PKPassKitBundle();
          if (v129)
          {
            v130 = v129;
            sub_1BE04B6F4();
            v132 = v131;

            v307 = v119;
            (v119)(v11, v114);
            v133 = swift_allocObject();
            v135 = v309;
            v134 = v310;
            v136 = v311;
            v133[2] = v309;
            v133[3] = v136;
            v133[4] = v134;
            v310 = v135;
            swift_unknownObjectRetain();
            v137 = sub_1BE052404();
            v132, v138, v139, v140, v141, v142, v143, v144;
            v325 = sub_1BD82B2BC;
            v326 = v133;
            aBlock = MEMORY[0x1E69E9820];
            v322 = 1107296256;
            v323 = sub_1BD198918;
            v324 = &block_descriptor_216;
            v145 = _Block_copy(&aBlock);
            v326, v146, v147, v148, v149, v150, v151, v152;
            v153 = objc_opt_self();
            v154 = [v153 actionWithTitle:v137 style:0 handler:v145];
            _Block_release(v145);

            v317 = v128;
            [v128 addAction_];
            v155 = v314;
            (v315)(v314, *MEMORY[0x1E69B8068], v114);
            v156 = PKPassKitBundle();
            if (v156)
            {
              v157 = v156;
              sub_1BE04B6F4();
              v159 = v158;

              (v307)(v155, v114);
              v160 = swift_allocObject();
              v161 = v310;
              v160[2] = v310;
              v162 = v161;
              v163 = sub_1BE052404();
              v159, v164, v165, v166, v167, v168, v169, v170;
              v325 = sub_1BD82B2C8;
              v326 = v160;
              aBlock = MEMORY[0x1E69E9820];
              v322 = 1107296256;
              v323 = sub_1BD198918;
              v324 = &block_descriptor_222;
              v171 = _Block_copy(&aBlock);
              v326, v172, v173, v174, v175, v176, v177, v178;
              v179 = [v153 actionWithTitle:v163 style:1 handler:v171];
              _Block_release(v171);

              v180 = v317;
              [v317 addAction_];
              v181 = v308;
              [v308 presentViewController:v180 animated:1 completion:0];
              sub_1BD0E5E8C(0, &unk_1EBD55150, 0x1E69B8E98);
              sub_1BE04BF44();
              v320(v37);
              swift_unknownObjectRelease();

              (*(v312 + 1))(v37, v313);
              return;
            }

            goto LABEL_40;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      swift_unknownObjectRelease();
    }

    v88 = [objc_opt_self() errorWithSeverity_];
    v89 = sub_1BE052404();
    [v88 addInternalDebugDescription_];

    *v37 = v88;
    v91 = v312;
    v90 = v313;
    (*(v312 + 13))(v37, *MEMORY[0x1E69B8168], v313);
    v92 = v88;
    v320(v37);

    (*(v91 + 1))(v37, v90);
    return;
  }

  if (a2 == 2)
  {
    *v37 = a1;
    v41 = v34;
    v42 = v35;
    (*(v35 + 13))(v37, *MEMORY[0x1E69B8168], v34);
    goto LABEL_6;
  }

  v64 = v35;
  v65 = v34;
  v66 = v320;
  if (a1)
  {
    sub_1BD0E5E8C(0, &unk_1EBD55150, 0x1E69B8E98);
    sub_1BE04BF44();
    v66(v37);
LABEL_23:
    (*(v64 + 1))(v37, v65);
    return;
  }

  v67 = &v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
  v68 = swift_unknownObjectWeakLoadStrong();
  if (!v68)
  {
LABEL_22:
    v93 = [objc_opt_self() errorWithSeverity_];
    v94 = sub_1BE052404();
    [v93 addInternalDebugDescription_];

    *v37 = v93;
    (*(v64 + 13))(v37, *MEMORY[0x1E69B8168], v65);
    v95 = v93;
    v320(v37);

    goto LABEL_23;
  }

  v69 = v68;
  v70 = *(v67 + 1);
  v71 = swift_unknownObjectWeakLoadStrong();
  if (!v71)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v310 = v70;
  v308 = v71;
  v314 = v69;
  sub_1BE04D0D4();
  v72 = v4;
  v73 = sub_1BE04D204();
  v74 = sub_1BE052C54();

  v75 = os_log_type_enabled(v73, v74);
  v309 = v72;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v76 = 136315138;
    v78 = *&v72[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v78)
    {
      sub_1BE048964();
      v79 = sub_1BE04C0A4();
      v81 = v80;
      v78, v80, v82, v83, v84, v85, v86, v87;
    }

    else
    {
      v79 = 0;
      v81 = 0xE000000000000000;
    }

    v182 = sub_1BD123690(v79, v81, &aBlock);
    v81, v183, v184, v185, v186, v187, v188, v189;
    *(v76 + 4) = v182;
    _os_log_impl(&dword_1BD026000, v73, v74, "[%s] Prompting for fall back", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77, v190, v191, v192, v193, v194, v195, v196);
    MEMORY[0x1BFB45F20](v77, -1, -1);
    MEMORY[0x1BFB45F20](v76, -1, -1);
  }

  (*(v315 + 8))(v32, v316);
  v197 = *MEMORY[0x1E69B80D8];
  v198 = v317;
  v199 = v318;
  v315 = v317[13];
  v316 = (v317 + 13);
  (v315)(v26, v197, v318);
  v200 = PKPassKitBundle();
  if (!v200)
  {
    goto LABEL_41;
  }

  v201 = v200;
  sub_1BE04B6F4();
  v203 = v202;

  v204 = v26;
  v205 = v198[1];
  v205(v204, v199);
  (v315)(v23, v197, v199);
  v206 = PKPassKitBundle();
  if (!v206)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v207 = v206;
  sub_1BE04B6F4();
  v209 = v208;

  v205(v23, v199);
  v210 = sub_1BE052404();
  v203, v211, v212, v213, v214, v215, v216, v217;
  v218 = sub_1BE052404();
  v209, v219, v220, v221, v222, v223, v224, v225;
  v317 = [objc_opt_self() alertControllerWithTitle:v210 message:v218 preferredStyle:1];

  v226 = v311;
  (v315)(v311, v197, v199);
  v227 = PKPassKitBundle();
  if (!v227)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v228 = v227;
  sub_1BE04B6F4();
  v230 = v229;

  v311 = v205;
  v205(v226, v199);
  v231 = swift_allocObject();
  v232 = v319;
  v231[2] = v320;
  v231[3] = v232;
  v233 = v309;
  v234 = v310;
  v235 = v314;
  v231[4] = v309;
  v231[5] = v235;
  v231[6] = v234;
  v236 = v233;
  sub_1BE048964();
  swift_unknownObjectRetain();
  v237 = sub_1BE052404();
  v230, v238, v239, v240, v241, v242, v243, v244;
  v325 = sub_1BD82B2EC;
  v326 = v231;
  aBlock = MEMORY[0x1E69E9820];
  v322 = 1107296256;
  v323 = sub_1BD198918;
  v324 = &block_descriptor_228_0;
  v245 = _Block_copy(&aBlock);
  v326, v246, v247, v248, v249, v250, v251, v252;
  v309 = objc_opt_self();
  v253 = [v309 actionWithTitle:v237 style:0 handler:v245];
  _Block_release(v245);

  [v317 addAction_];
  v254 = v312;
  (v315)(v312, v197, v199);
  v255 = PKPassKitBundle();
  if (!v255)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v256 = v255;
  sub_1BE04B6F4();
  v258 = v257;

  (v311)(v254, v199);
  v259 = swift_allocObject();
  v259[2] = v320;
  v259[3] = v232;
  v260 = v314;
  v259[4] = v236;
  v259[5] = v260;
  v259[6] = v310;
  v261 = v236;
  sub_1BE048964();
  swift_unknownObjectRetain();
  v262 = sub_1BE052404();
  v258, v263, v264, v265, v266, v267, v268, v269;
  v325 = sub_1BD82B350;
  v326 = v259;
  aBlock = MEMORY[0x1E69E9820];
  v322 = 1107296256;
  v323 = sub_1BD198918;
  v324 = &block_descriptor_234;
  v270 = _Block_copy(&aBlock);
  v326, v271, v272, v273, v274, v275, v276, v277;
  v278 = v309;
  v279 = [v309 actionWithTitle:v262 style:0 handler:v270];
  _Block_release(v270);

  [v317 addAction_];
  v280 = v313;
  (v315)(v313, *MEMORY[0x1E69B8068], v199);
  v281 = PKPassKitBundle();
  if (v281)
  {
    v282 = v281;
    sub_1BE04B6F4();
    v284 = v283;

    (v311)(v280, v199);
    v285 = swift_allocObject();
    v285[2] = v320;
    v285[3] = v232;
    v285[4] = v261;
    v286 = v261;
    sub_1BE048964();
    v287 = sub_1BE052404();
    v284, v288, v289, v290, v291, v292, v293, v294;
    v325 = sub_1BD82B39C;
    v326 = v285;
    aBlock = MEMORY[0x1E69E9820];
    v322 = 1107296256;
    v323 = sub_1BD198918;
    v324 = &block_descriptor_240;
    v295 = _Block_copy(&aBlock);
    v326, v296, v297, v298, v299, v300, v301, v302;
    v303 = [v278 actionWithTitle:v287 style:1 handler:v295];
    _Block_release(v295);

    v304 = v317;
    [v317 addAction_];
    v305 = v308;
    [v308 presentViewController:v304 animated:1 completion:0];

    swift_unknownObjectRelease();
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1BD823D10(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD456A0, &qword_1BE0D4640);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1BD0E5E8C(0, &unk_1EBD55150, 0x1E69B8E98);
  sub_1BE04BF44();
  a2(v13);
  (*(v11 + 8))(v13, v10);
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a5, a7, result, &off_1F3BB4FF0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD823E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a3, 0, result, &off_1F3BB4FF0);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD823ED8(char *a1, void (*a2)(char *), void *a3)
{
  v371 = a3;
  v372 = a1;
  v373 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v364 = v3;
  v365 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v363 = &v351 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v362 = &v351 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v351 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v351 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v351 - v15;
  v17 = sub_1BE04D214();
  v361 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v351 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04C384();
  v366 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v351 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v351 - v24;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v367 = *(v369 - 1);
  MEMORY[0x1EEE9AC00](v369);
  v368 = &v351 - v26;
  v27 = sub_1BE04BF64();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v351 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD82B3DC(v372, v29, MEMORY[0x1E69B8178]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v360 = v19;
    v358 = v17;
    v359 = v16;
    v356 = v13;
    v357 = v10;
    v372 = v25;
    if (!EnumCaseMultiPayload)
    {
      v95 = *v29;
      v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
      v97 = *MEMORY[0x1E69B8308];
      v98 = sub_1BE04C534();
      v99 = v368;
      (*(*(v98 - 8) + 104))(v368, v97, v98);
      *&v99[v96] = v95;
      v100 = v367;
      v101 = v369;
      (*(v367 + 104))(v99, *MEMORY[0x1E69B8170], v369);
      v102 = v95;
      v373(v99);

      (*(v100 + 8))(v99, v101);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v53 = *v29;
      v52 = v29[1];
      v22 = v370;
      v54 = *&v370[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      if (!v54)
      {
        goto LABEL_52;
      }

      if (!(v52 >> 62))
      {
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_10:
          v55 = v54;
          v63 = sub_1BD3F0574(v52, v56, v57, v58, v59, v60, v61, v62);
          v52, v64, v65, v66, v67, v68, v69, v70;
          v71 = sub_1BE052724();
          v63, v72, v73, v74, v75, v76, v77, v78;
          [v55 updateWithPaymentSetupFields_];

          v79 = &v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v80 = *(v79 + 1);
            ObjectType = swift_getObjectType();
            (*(v80 + 16))(ObjectType, v80);
            swift_unknownObjectRelease();
          }

          v82 = [v55 validValuesProvidedForVisibleFields];
          v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
          v84 = sub_1BE04C534();
          v85 = (v367 + 104);
          v86 = (v367 + 8);
          if (v82)
          {
            v87 = MEMORY[0x1E69B8308];
          }

          else
          {
            v87 = MEMORY[0x1E69B8300];
          }

          v205 = v368;
          (*(*(v84 - 8) + 104))(v368, *v87, v84);
          *&v205[v83] = v53;
          v206 = v369;
          (*v85)(v205, *MEMORY[0x1E69B8170], v369);
          v207 = v53;
          v373(v205);

          (*v86)(v205, v206);
          return;
        }

LABEL_52:
        v52, v31, v32, v33, v34, v35, v36, v37;
        v344 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550F0, &qword_1BE0D44B0) + 48);
        v345 = *MEMORY[0x1E69B8308];
        v346 = sub_1BE04C534();
        v347 = v368;
        (*(*(v346 - 8) + 104))(v368, v345, v346);
        *&v347[v344] = v53;
        v348 = v367;
        v349 = v369;
        (*(v367 + 104))(v347, *MEMORY[0x1E69B8170], v369);
        v350 = v53;
        v373(v347);

        (*(v348 + 8))(v347, v349);
        return;
      }

LABEL_51:
      if (sub_1BE053704())
      {
        goto LABEL_10;
      }

      goto LABEL_52;
    }

    v53 = *v29;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45590, &unk_1BE0FBCE0);
    sub_1BD226B4C(v29 + *(v103 + 48), v372);
    v104 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration;
    v105 = v370;
    v52 = *&v370[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
    v106 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
    v107 = *&v370[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
    sub_1BE048964();
    v54 = sub_1BE04C3A4();
    v52, v108, v109, v110, v111, v112, v113, v114;
    if ((v107 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v355 = v106;
      if (v107 < *(v54 + 16))
      {
        v115 = v20;
        v116 = v366;
        v353 = ((*(v116 + 80) + 32) & ~*(v116 + 80));
        v352 = *(v366 + 72);
        v117 = v22;
        v354 = *(v366 + 16);
        (v354)(v22, &v353[v54 + v352 * v107], v115);
        v54, v118, v119, v120, v121, v122, v123, v124;
        v125 = sub_1BE04C334();
        v126 = *(v116 + 8);
        v126(v22, v115);
        v127 = v53;
        if (v125)
        {
          v128 = PKProvisioningErrorForAppleBalanceEligibilityStatus();
          if (v128)
          {
            v129 = v128;
            v130 = sub_1BE04A844();

            v131 = [objc_opt_self() errorWithUnderlyingError:v130 defaultSeverity:5];
            v133 = v367;
            v132 = v368;
            *v368 = v131;
            v134 = v369;
            (*(v133 + 104))(v132, *MEMORY[0x1E69B8168], v369);
            v135 = v131;
            v373(v132);

            (*(v133 + 8))(v132, v134);
LABEL_22:
            sub_1BD0DE53C(v372, &unk_1EBD3CF70, &qword_1BE0BA000);
            return;
          }
        }

        if (v53 != 10)
        {
          goto LABEL_35;
        }

        v151 = v126;
        v152 = *&v105[v104];
        v153 = *&v105[v355];
        sub_1BE048964();
        v154 = sub_1BE04C3A4();
        v152, v155, v156, v157, v158, v159, v160, v161;
        if ((v153 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v153 < *(v154 + 16))
        {
          (v354)(v117, &v353[v154 + v153 * v352], v115);
          v154, v162, v163, v164, v165, v166, v167, v168;
          v169 = sub_1BE04C344();
          v151(v117, v115);
          if (v169)
          {
            v170 = &v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate];
            Strong = swift_unknownObjectWeakLoadStrong();
            v172 = v372;
            if (Strong)
            {
              v173 = Strong;
              v174 = *(v170 + 1);
              v175 = swift_unknownObjectWeakLoadStrong();
              if (v175)
              {
                v353 = v175;
                v366 = v173;
                v176 = v360;
                sub_1BE04D0D4();
                v177 = v105;
                v178 = sub_1BE04D204();
                v179 = sub_1BE052C54();

                v180 = os_log_type_enabled(v178, v179);
                v355 = v174;
                v354 = v177;
                if (v180)
                {
                  v181 = swift_slowAlloc();
                  v182 = swift_slowAlloc();
                  aBlock = v182;
                  *v181 = 136315138;
                  v183 = *&v177[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
                  v184 = v358;
                  if (v183)
                  {
                    sub_1BE048964();
                    v185 = sub_1BE04C0A4();
                    v187 = v186;
                    v183, v186, v188, v189, v190, v191, v192, v193;
                  }

                  else
                  {
                    v185 = 0;
                    v187 = 0xE000000000000000;
                  }

                  v214 = sub_1BD123690(v185, v187, &aBlock);
                  v187, v215, v216, v217, v218, v219, v220, v221;
                  *(v181 + 4) = v214;
                  _os_log_impl(&dword_1BD026000, v178, v179, "[%s] Prompting for fall back", v181, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v182, v222, v223, v224, v225, v226, v227, v228);
                  MEMORY[0x1BFB45F20](v182, -1, -1);
                  MEMORY[0x1BFB45F20](v181, -1, -1);

                  (v361)[1](v360, v184);
                }

                else
                {

                  (v361)[1](v176, v358);
                }

                v229 = v359;
                v230 = *MEMORY[0x1E69B80D8];
                v232 = v364;
                v231 = v365;
                v233 = v365 + 104;
                v370 = *(v365 + 104);
                (v370)(v359, v230, v364);
                v234 = PKPassKitBundle();
                if (v234)
                {
                  v235 = v234;
                  sub_1BE04B6F4();
                  v237 = v236;

                  v239 = *(v231 + 8);
                  v238 = v231 + 8;
                  v369 = v239;
                  (v239)(v229, v232);
                  v240 = v356;
                  (v370)(v356, v230, v232);
                  v241 = PKPassKitBundle();
                  if (v241)
                  {
                    v242 = v241;
                    sub_1BE04B6F4();
                    v244 = v243;

                    (v369)(v240, v232);
                    v245 = sub_1BE052404();
                    v237, v246, v247, v248, v249, v250, v251, v252;
                    v253 = sub_1BE052404();
                    v244, v254, v255, v256, v257, v258, v259, v260;
                    v368 = [objc_opt_self() alertControllerWithTitle:v245 message:v253 preferredStyle:1];

                    v261 = v357;
                    v367 = v233;
                    (v370)(v357, v230, v232);
                    v262 = PKPassKitBundle();
                    if (v262)
                    {
                      v263 = v262;
                      sub_1BE04B6F4();
                      v265 = v264;

                      (v369)(v261, v232);
                      v266 = swift_allocObject();
                      v365 = v238;
                      v267 = v266;
                      v268 = v232;
                      v269 = v371;
                      v266[2] = v373;
                      v266[3] = v269;
                      v270 = v354;
                      v271 = v366;
                      v266[4] = v354;
                      v266[5] = v271;
                      v272 = v355;
                      v266[6] = v355;
                      v273 = v270;
                      sub_1BE048964();
                      swift_unknownObjectRetain();
                      v274 = sub_1BE052404();
                      v265, v275, v276, v277, v278, v279, v280, v281;
                      v378 = sub_1BD82AF78;
                      v379 = v267;
                      aBlock = MEMORY[0x1E69E9820];
                      v375 = 1107296256;
                      v376 = sub_1BD198918;
                      v377 = &block_descriptor_119;
                      v282 = _Block_copy(&aBlock);
                      v379, v283, v284, v285, v286, v287, v288, v289;
                      v361 = objc_opt_self();
                      v290 = [v361 actionWithTitle:v274 style:0 handler:v282];
                      _Block_release(v282);

                      [v368 addAction_];
                      v291 = v362;
                      (v370)(v362, v230, v268);
                      v292 = PKPassKitBundle();
                      if (v292)
                      {
                        v293 = v292;
                        sub_1BE04B6F4();
                        v295 = v294;

                        v296 = v364;
                        (v369)(v291, v364);
                        v297 = swift_allocObject();
                        v297[2] = v373;
                        v297[3] = v269;
                        v298 = v366;
                        v297[4] = v273;
                        v297[5] = v298;
                        v297[6] = v272;
                        v299 = v273;
                        sub_1BE048964();
                        swift_unknownObjectRetain();
                        v300 = sub_1BE052404();
                        v295, v301, v302, v303, v304, v305, v306, v307;
                        v378 = sub_1BD82AF94;
                        v379 = v297;
                        aBlock = MEMORY[0x1E69E9820];
                        v375 = 1107296256;
                        v376 = sub_1BD198918;
                        v377 = &block_descriptor_125_1;
                        v308 = _Block_copy(&aBlock);
                        v379, v309, v310, v311, v312, v313, v314, v315;
                        v316 = v361;
                        v317 = [v361 actionWithTitle:v300 style:0 handler:v308];
                        _Block_release(v308);

                        [v368 addAction_];
                        v318 = v363;
                        (v370)(v363, *MEMORY[0x1E69B8068], v296);
                        v319 = PKPassKitBundle();
                        if (v319)
                        {
                          v320 = v319;
                          sub_1BE04B6F4();
                          v322 = v321;

                          (v369)(v318, v364);
                          v323 = swift_allocObject();
                          v323[2] = v373;
                          v323[3] = v269;
                          v323[4] = v299;
                          v324 = v299;
                          sub_1BE048964();
                          v325 = sub_1BE052404();
                          v322, v326, v327, v328, v329, v330, v331, v332;
                          v378 = sub_1BD82AFB0;
                          v379 = v323;
                          aBlock = MEMORY[0x1E69E9820];
                          v375 = 1107296256;
                          v376 = sub_1BD198918;
                          v377 = &block_descriptor_131_1;
                          v333 = _Block_copy(&aBlock);
                          v379, v334, v335, v336, v337, v338, v339, v340;
                          v341 = [v316 actionWithTitle:v325 style:1 handler:v333];
                          _Block_release(v333);

                          v342 = v368;
                          [v368 addAction_];
                          v343 = v353;
                          [v353 presentViewController:v342 animated:1 completion:0];
                          swift_unknownObjectRelease();

                          goto LABEL_22;
                        }

LABEL_59:
                        __break(1u);
                        return;
                      }

LABEL_58:
                      __break(1u);
                      goto LABEL_59;
                    }

LABEL_57:
                    __break(1u);
                    goto LABEL_58;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

              swift_unknownObjectRelease();
            }

            v208 = [objc_opt_self() errorWithSeverity_];
            v209 = sub_1BE052404();
            [v208 addInternalDebugDescription_];

            v211 = v367;
            v210 = v368;
            *v368 = v208;
            v212 = v369;
            (*(v211 + 104))(v210, *MEMORY[0x1E69B8168], v369);
            v213 = v208;
            v373(v210);

            (*(v211 + 8))(v210, v212);
            sub_1BD0DE53C(v172, &unk_1EBD3CF70, &qword_1BE0BA000);
            return;
          }

LABEL_35:
          v194 = PKPaymentCardIneligibleReasonForEligibilityStatus(v127);
          v195 = swift_allocObject();
          v195[2] = v373;
          v195[3] = v371;
          sub_1BE048964();
          v196 = v194;
          v197 = v372;
          sub_1BD81938C(v196, v372, sub_1BD82AF4C, v195);
          v195, v198, v199, v200, v201, v202, v203, v204;
          sub_1BD0DE53C(v197, &unk_1EBD3CF70, &qword_1BE0BA000);
          return;
        }

        __break(1u);
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v88 = v371;
    v89 = v373;
    if (EnumCaseMultiPayload == 5)
    {
      v90 = *v29;
      v92 = v367;
      v91 = v368;
      *v368 = v90;
      v93 = v369;
      (*(v92 + 104))(v91, *MEMORY[0x1E69B8168], v369);
      v94 = v90;
      v89(v91);

      (*(v92 + 8))(v91, v93);
      return;
    }

    v136 = *v29;
    sub_1BE048964();
    sub_1BD829BC0(v136, v370, v89, v88);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v38 = *v29;
      sub_1BE04BD64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BE0B7020;
      *(v39 + 32) = v38;
      v40 = v38;
      sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
      v41 = sub_1BE04BC74();
      v42 = v370;
      v43 = *&v370[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
      *&v370[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = v41;

      v44 = v371;
      sub_1BE048964();
      sub_1BD827494(v42, v373, v44);

      v44, v45, v46, v47, v48, v49, v50, v51;
      return;
    }

    v136 = *v29;
    v88 = v371;
    sub_1BE048964();
    sub_1BD827FAC(v136, v370, v373, v88);
  }

  v136, v137, v138, v139, v140, v141, v142, v143;
  v88, v144, v145, v146, v147, v148, v149, v150;
}

uint64_t sub_1BD825424(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1BD0E5E8C(0, &qword_1EBD45688, 0x1E69B8BF0);
  sub_1BE04BF44();
  a2(v13);
  (*(v11 + 8))(v13, v10);
  sub_1BD814F6C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD826868(a5, a7, result, &off_1F3BB4FF0);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD825574(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void *a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v15 - v13;
  sub_1BD0E5E8C(0, a7, a8);
  sub_1BE04BF44();
  a2(v14);
  (*(v12 + 8))(v14, v11);
  sub_1BD81521C();
}

uint64_t sub_1BD825680(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  *(&v11 - v8) = 0;
  (*(v6 + 104))(&v11 - v8, *MEMORY[0x1E69B8168], v5, v7);
  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD825780(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (a1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8160], v4, v6);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD45688, 0x1E69B8BF0);
    sub_1BE04BF44();
  }

  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD8258B0(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v19 - v11);
  (*(v9 + 16))(&v19 - v11, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E69B8170])
  {
    (*(v9 + 96))(v12, v8);
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8160], v4);
    a2(v7);
    (*(v5 + 8))(v7, v4);
    v14 = sub_1BE04C534();
    return (*(*(v14 - 8) + 8))(v12, v14);
  }

  else if (v13 == *MEMORY[0x1E69B8168])
  {
    v16 = v13;
    (*(v9 + 96))(v12, v8);
    v17 = *v12;
    *v7 = v17;
    (*(v5 + 104))(v7, v16, v4);
    v18 = v17;
    a2(v7);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    *v7 = 0;
    (*(v5 + 104))(v7);
    a2(v7);
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_1BD825BD4(void *a1, char a2, void (*a3)(void *, __n128), void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0, &qword_1BE0D44B8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v25 - v12);
  if (!a2)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0, &unk_1BE0D44C0) + 48);
    v22 = *MEMORY[0x1E69B8308];
    v23 = sub_1BE04C534();
    (*(*(v23 - 8) + 104))(v13, v22, v23);
    *(v13 + v21) = a1;
    (*(v10 + 104))(v13, *MEMORY[0x1E69B8170], v9);
    sub_1BE048C84();
LABEL_8:
    (a3)(v13);
    (*(v10 + 8))(v13, v9);
    return;
  }

  if (a2 != 1)
  {
    *v13 = a1;
    (*(v10 + 104))(v13, *MEMORY[0x1E69B8168], v9, v11);
    v24 = a1;
    goto LABEL_8;
  }

  sub_1BE048964();
  sub_1BD8287C0(a1, v4, a3, a4);

  a4, v14, v15, v16, v17, v18, v19, v20;
}

uint64_t sub_1BD825DE8(char a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0, &qword_1BE0D44B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (a1)
  {
    if (PKDynamicSEAllocationFakeFullSE())
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD550D0, &unk_1BE0D44C0) + 48);
      v12 = *MEMORY[0x1E69B8308];
      v13 = sub_1BE04C534();
      (*(*(v13 - 8) + 104))(v10, v12, v13);
      *&v10[v11] = MEMORY[0x1E69E7CC0];
      v14 = MEMORY[0x1E69B8170];
    }

    else
    {
      v14 = MEMORY[0x1E69B8160];
    }

    (*(v5 + 104))(v10, *v14, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680, &qword_1BE0D4628);
    sub_1BE04BF44();
    v10 = v7;
  }

  a2(v10);
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1BD825FC4(uint64_t a1, void (*a2)(char *), char **a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C534();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = sub_1BE04BD84();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD82B3DC(v20, v17, MEMORY[0x1E69B8108]);
  if ((*(v4 + 48))(v17, 1, v3) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8308], v7);
    sub_1BE04BF54();
    (*(v8 + 8))(v10, v7);
    v21(v14);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v4 + 32))(v6, v17, v3);
    sub_1BD819C44(v6, v21, v22);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BD8262CC(void *a1, char a2, void (*a3)(void *))
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0, &unk_1BE0CC140);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - v11);
  if (a2)
  {
    *v12 = a1;
    v13 = MEMORY[0x1E69B8168];
  }

  else
  {
    v14 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses);
    if (v14)
    {
      v15 = v14;
      sub_1BE04BC54();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses) = a1;
      v16 = a1;
    }

    [*(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel) unhideFieldsWithEnteredValues];
    v17 = v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(ObjectType, v18);
      swift_unknownObjectRelease();
    }

    v20 = sub_1BE04BC84();
    sub_1BD826510(v20);

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68, &qword_1BE0D44D0) + 48);
    v22 = *MEMORY[0x1E69B8308];
    v23 = sub_1BE04C534();
    (*(*(v23 - 8) + 104))(v12, v22, v23);
    *(v12 + v21) = a1;
    v13 = MEMORY[0x1E69B8170];
  }

  (*(v9 + 104))(v12, *v13, v8, v10);
  v24 = a1;
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BD826510(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v10 = sub_1BE04B8E4();
  (*(v7 + 8))(v9, v6);
  if ([a1 supportsDeviceAssessmentAccordingToService_] && (PKHasSeenDeviceAssessmentEducation() & 1) == 0)
  {
    sub_1BE04D0F4();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Pass supports device assessment, marking device assessment education acknowledgment.", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    PKSetHasSeenDeviceAssessmentEducation();
  }
}

void sub_1BD826868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  ObjectType = swift_getObjectType();
  v9 = *(a3 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
  objc_allocWithZone(ObjectType);
  v10 = sub_1BE048964();
  v21 = sub_1BD87305C(v10, 1, v6);
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = a3 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    v20 = swift_getObjectType();
    sub_1BD865948(a1, a4, v21, &off_1F3BC0A18, v20, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD826978(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v162 = a6;
  v161 = a5;
  v160 = a4;
  v177 = a3;
  v178 = a2;
  v7 = sub_1BE051F54();
  v169 = *(v7 - 8);
  v170 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v167 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1BE051FA4();
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v165 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1BE051FC4();
  v164 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v159 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v158 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v175 = *(v13 - 8);
  v176 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v158 - v14;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v158 - v20;
  sub_1BE04D0D4();
  v22 = a1;
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();

  v25 = os_log_type_enabled(v23, v24);
  v173 = v17;
  v174 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    v28 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v28)
    {
      sub_1BE048964();
      v29 = sub_1BE04C0A4();
      v31 = v30;
      v28, v30, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v39 = sub_1BD123690(v29, v31, aBlock);
    v31, v40, v41, v42, v43, v44, v45, v46;
    *(v26 + 4) = v39;
    _os_log_impl(&dword_1BD026000, v23, v24, "[%s] Coordinator did complete", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27, v47, v48, v49, v50, v51, v52, v53);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);

    v38 = *(v173 + 8);
    v38(v21, v174);
  }

  else
  {

    v38 = *(v17 + 8);
    v38(v21, v16);
  }

  v54 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  v55 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v55)
  {
    sub_1BE048964();
    v56 = sub_1BE04C0C4();
    v55, v57, v58, v59, v60, v61, v62, v63;
    v64 = (v56 >> 8) & 1;
  }

  else
  {
    v64 = 0;
  }

  sub_1BE04BF44();
  v178(v15);
  (*(v175 + 8))(v15, v176);
  sub_1BD81679C();
  v65 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v66 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  v67 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  sub_1BE048964();
  v68 = sub_1BE04C3A4();
  v67, v69, v70, v71, v72, v73, v74, v75;
  v76 = v68[2];
  v68, v77, v78, v79, v80, v81, v82, v83;
  if (v66 >= v76 - 1)
  {
    v102 = &v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v103 = *(v102 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 12;
      (*(*(v103 + 8) + 8))(aBlock, 0, ObjectType);
      swift_unknownObjectRelease();
    }

    v105 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    if (!v105)
    {
      v118 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v118)
      {
        [v118 reportProvisioningCompleteWithSuccess_];
      }

      v105 = [objc_opt_self() errorWithSeverity_];
      v119 = sub_1BE052404();
      [v105 addInternalDebugDescription_];

      v120 = &v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v110 = *(v120 + 1);
        v111 = swift_getObjectType();
        v112 = *(v110 + 8);
        v113 = v105;
        v114 = v22;
        v115 = v105;
        v116 = 1;
        goto LABEL_27;
      }

LABEL_28:

      return;
    }

    v106 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v106)
    {
      v107 = v105;
      v108 = sub_1BE04BC84();
      [v106 setProvisionedPass_];

      [v106 reportProvisioningCompleteWithSuccess_];
      if (v64)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v121 = v105;
      if (v64)
      {
LABEL_20:
        v109 = &v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v110 = *(v109 + 1);
          v111 = swift_getObjectType();
          v112 = *(v110 + 8);
          v113 = v105;
          v114 = v22;
          v115 = v105;
          v116 = 0;
LABEL_27:
          v112(v114, v115, v116, v111, v110);
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_28;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v177 = sub_1BE052D54();
    v122 = v159;
    sub_1BE051FB4();
    v123 = v163;
    sub_1BE051FF4();
    v178 = *(v164 + 8);
    (v178)(v122, v171);
    v124 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v125 = swift_allocObject();
    *(v125 + 16) = v124;
    *(v125 + 24) = v105;
    aBlock[4] = v161;
    v180 = v125;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v162;
    v126 = _Block_copy(aBlock);
    v127 = v180;
    v128 = v105;
    v127, v129, v130, v131, v132, v133, v134, v135;
    v136 = v165;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v137 = v167;
    v138 = v170;
    sub_1BE053664();
    v139 = v177;
    MEMORY[0x1BFB3FD90](v123, v136, v137, v126);
    _Block_release(v126);

    (*(v169 + 8))(v137, v138);
    (*(v166 + 8))(v136, v168);
    (v178)(v123, v171);
    return;
  }

  v84 = *&v22[v65];
  v85 = v84 + 1;
  if (__OFADD__(v84, 1))
  {
    __break(1u);
  }

  else
  {
    *&v22[v65] = v85;
    v86 = v172;
    sub_1BE04D0D4();
    v87 = v22;
    v88 = sub_1BE04D204();
    v89 = sub_1BE052C54();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock[0] = v91;
      *v90 = 136315394;
      v92 = *&v22[v54];
      if (v92)
      {
        sub_1BE048964();
        v93 = sub_1BE04C0A4();
        v95 = v94;
        v92, v94, v96, v97, v98, v99, v100, v101;
      }

      else
      {
        v93 = 0;
        v95 = 0xE000000000000000;
      }

      v140 = sub_1BD123690(v93, v95, aBlock);
      v95, v141, v142, v143, v144, v145, v146, v147;
      *(v90 + 4) = v140;
      *(v90 + 12) = 2048;
      *(v90 + 14) = v85;
      _os_log_impl(&dword_1BD026000, v88, v89, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v91, v148, v149, v150, v151, v152, v153, v154);
      MEMORY[0x1BFB45F20](v91, -1, -1);
      MEMORY[0x1BFB45F20](v90, -1, -1);

      v117 = v172;
    }

    else
    {

      v117 = v86;
    }

    v38(v117, v174);
    v155 = *&v87[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (v155)
    {
      v156 = *&v87[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    }

    else
    {
      v156 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
      v155 = 0;
    }

    v157 = v155;
    sub_1BD8145A8(v156);
  }
}

void sub_1BD827494(void *a1, void (*a2)(char *), uint64_t a3)
{
  v170 = a3;
  v171 = a2;
  v4 = sub_1BE051F54();
  v162 = *(v4 - 8);
  v163 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v160 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1BE051FA4();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v158 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1BE051FC4();
  v157 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v155 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v168 = *(v10 - 8);
  v169 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v155 - v11;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v155 - v17;
  sub_1BE04D0D4();
  v19 = a1;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();

  v22 = os_log_type_enabled(v20, v21);
  v166 = v14;
  v167 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    v25 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v25)
    {
      sub_1BE048964();
      v26 = sub_1BE04C0A4();
      v28 = v27;
      v25, v27, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v36 = sub_1BD123690(v26, v28, aBlock);
    v28, v37, v38, v39, v40, v41, v42, v43;
    *(v23 + 4) = v36;
    _os_log_impl(&dword_1BD026000, v20, v21, "[%s] Coordinator did complete", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24, v44, v45, v46, v47, v48, v49, v50);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);

    v35 = *(v166 + 8);
    v35(v18, v167);
  }

  else
  {

    v35 = *(v14 + 8);
    v35(v18, v13);
  }

  v51 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  v52 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v52)
  {
    sub_1BE048964();
    v53 = sub_1BE04C0C4();
    v52, v54, v55, v56, v57, v58, v59, v60;
    v61 = (v53 >> 8) & 1;
  }

  else
  {
    v61 = 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45688, 0x1E69B8BF0);
  sub_1BE04BF44();
  v171(v12);
  (*(v168 + 8))(v12, v169);
  sub_1BD81679C();
  v62 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v63 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  v64 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  sub_1BE048964();
  v65 = sub_1BE04C3A4();
  v64, v66, v67, v68, v69, v70, v71, v72;
  v73 = v65[2];
  v65, v74, v75, v76, v77, v78, v79, v80;
  if (v63 >= v73 - 1)
  {
    v99 = &v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v100 = *(v99 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 12;
      (*(*(v100 + 8) + 8))(aBlock, 0, ObjectType);
      swift_unknownObjectRelease();
    }

    v102 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
    if (!v102)
    {
      v115 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v115)
      {
        [v115 reportProvisioningCompleteWithSuccess_];
      }

      v102 = [objc_opt_self() errorWithSeverity_];
      v116 = sub_1BE052404();
      [v102 addInternalDebugDescription_];

      v117 = &v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v107 = *(v117 + 1);
        v108 = swift_getObjectType();
        v109 = *(v107 + 8);
        v110 = v102;
        v111 = v19;
        v112 = v102;
        v113 = 1;
        goto LABEL_27;
      }

LABEL_28:

      return;
    }

    v103 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v103)
    {
      v104 = v102;
      v105 = sub_1BE04BC84();
      [v103 setProvisionedPass_];

      [v103 reportProvisioningCompleteWithSuccess_];
      if (v61)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v118 = v102;
      if (v61)
      {
LABEL_20:
        v106 = &v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v107 = *(v106 + 1);
          v108 = swift_getObjectType();
          v109 = *(v107 + 8);
          v110 = v102;
          v111 = v19;
          v112 = v102;
          v113 = 0;
LABEL_27:
          v109(v111, v112, v113, v108, v107);
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_28;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v170 = sub_1BE052D54();
    v119 = v155;
    sub_1BE051FB4();
    v120 = v156;
    sub_1BE051FF4();
    v171 = *(v157 + 8);
    (v171)(v119, v164);
    v121 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = swift_allocObject();
    *(v122 + 16) = v121;
    *(v122 + 24) = v102;
    aBlock[4] = sub_1BD82B00C;
    v173 = v122;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_153_0;
    v123 = _Block_copy(aBlock);
    v124 = v173;
    v125 = v102;
    v124, v126, v127, v128, v129, v130, v131, v132;
    v133 = v158;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v134 = v160;
    v135 = v163;
    sub_1BE053664();
    v136 = v170;
    MEMORY[0x1BFB3FD90](v120, v133, v134, v123);
    _Block_release(v123);

    (*(v162 + 8))(v134, v135);
    (*(v159 + 8))(v133, v161);
    (v171)(v120, v164);
    return;
  }

  v81 = *&v19[v62];
  v82 = v81 + 1;
  if (__OFADD__(v81, 1))
  {
    __break(1u);
  }

  else
  {
    *&v19[v62] = v82;
    v83 = v165;
    sub_1BE04D0D4();
    v84 = v19;
    v85 = sub_1BE04D204();
    v86 = sub_1BE052C54();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v87 = 136315394;
      v89 = *&v19[v51];
      if (v89)
      {
        sub_1BE048964();
        v90 = sub_1BE04C0A4();
        v92 = v91;
        v89, v91, v93, v94, v95, v96, v97, v98;
      }

      else
      {
        v90 = 0;
        v92 = 0xE000000000000000;
      }

      v137 = sub_1BD123690(v90, v92, aBlock);
      v92, v138, v139, v140, v141, v142, v143, v144;
      *(v87 + 4) = v137;
      *(v87 + 12) = 2048;
      *(v87 + 14) = v82;
      _os_log_impl(&dword_1BD026000, v85, v86, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v87, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v88, v145, v146, v147, v148, v149, v150, v151);
      MEMORY[0x1BFB45F20](v88, -1, -1);
      MEMORY[0x1BFB45F20](v87, -1, -1);

      v114 = v165;
    }

    else
    {

      v114 = v83;
    }

    v35(v114, v167);
    v152 = *&v84[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (v152)
    {
      v153 = *&v84[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    }

    else
    {
      v153 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
      v152 = 0;
    }

    v154 = v152;
    sub_1BD8145A8(v153);
  }
}

void sub_1BD827FAC(void *a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v164 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45588, &unk_1BE0D44A0);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v152 - v11;
  v12 = sub_1BE04CFC4();
  v162 = *(v12 - 8);
  v163 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v152 - v15;
  v161 = sub_1BE04CFE4();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v170 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1BE04D214();
  v18 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v20 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v158 = a3;
  v21[2] = a3;
  v21[3] = a4;
  v168 = v16;
  v169 = v21;
  v22 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  sub_1BE048964();
  if (v22)
  {
    sub_1BE048964();
    v165 = sub_1BE04C0A4();
    v24 = v23;
    v22, v23, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v165 = 0;
    v24 = 0xE000000000000000;
  }

  v157 = a4;
  sub_1BE04D0D4();
  sub_1BE048C84();
  sub_1BE048C84();
  v31 = sub_1BE04D204();
  v32 = sub_1BE052C54();
  a1, v33, v34, v35, v36, v37, v38, v39;
  v24, v40, v41, v42, v43, v44, v45, v46;
  v47 = os_log_type_enabled(v31, v32);
  v153 = a1;
  v167 = v24;
  if (v47)
  {
    v48 = v24;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v152 = a2;
    v51 = v50;
    aBlock[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_1BD123690(v165, v48, aBlock);
    *(v49 + 12) = 2080;
    v52 = MEMORY[0x1BFB3F7F0](a1, MEMORY[0x1E69E6158]);
    v54 = v53;
    v55 = v9;
    v56 = v8;
    v57 = sub_1BD123690(v52, v53, aBlock);
    v54, v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 14) = v57;
    v8 = v56;
    v9 = v55;
    _os_log_impl(&dword_1BD026000, v31, v32, "[%s] Showing SE Full Clean Up UI For %s", v49, 0x16u);
    swift_arrayDestroy();
    v65 = v51;
    a2 = v152;
    MEMORY[0x1BFB45F20](v65, -1, -1);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  (*(v18 + 8))(v20, v166);
  v66 = v168;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v75 = Strong;
    v76 = a2;
    v77 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
    sub_1BE04B694();
    sub_1BE04CFB4();
    v78 = sub_1BE04CFD4();
    v79 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v78, v79, v81, "provisioning:getSecureElementSnapshot", "", v80, 2u);
      MEMORY[0x1BFB45F20](v80, -1, -1);
    }

    v83 = v162;
    v82 = v163;
    (*(v162 + 16))(v160, v66, v163);
    sub_1BE04D024();
    swift_allocObject();
    v84 = sub_1BE04D014();
    (*(v83 + 8))(v66, v82);
    (*(v159 + 8))(v170, v161);
    v85 = v164;
    sub_1BE04BB94();
    v86 = sub_1BE04B934();
    (*(v9 + 8))(v85, v8);
    if ([v86 respondsToSelector_])
    {
      v94 = swift_allocObject();
      v95 = v165;
      v94[2] = v84;
      v94[3] = v95;
      v96 = v153;
      v94[4] = v167;
      v94[5] = v96;
      v97 = v169;
      v94[6] = sub_1BD82B014;
      v94[7] = v97;
      v94[8] = v77;
      v94[9] = v75;
      v94[10] = v76;
      aBlock[4] = sub_1BD82B684;
      v172 = v94;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD715170;
      aBlock[3] = &block_descriptor_163_1;
      v98 = _Block_copy(aBlock);
      v99 = v172;
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v100 = v75;
      v101 = v76;
      sub_1BE048964();
      v99, v102, v103, v104, v105, v106, v107, v108;
      [v86 currentSecureElementSnapshot_];
      _Block_release(v98);
      v97, v109, v110, v111, v112, v113, v114, v115;
      v94, v116, v117, v118, v119, v120, v121, v122;
      swift_unknownObjectRelease();

      v84, v123, v124, v125, v126, v127, v128, v129;
    }

    else
    {
      v169, v87, v88, v89, v90, v91, v92, v93;
      v167, v138, v139, v140, v141, v142, v143, v144;

      v84, v145, v146, v147, v148, v149, v150, v151;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v167, v68, v69, v70, v71, v72, v73, v74;
    sub_1BD0E5E8C(0, &qword_1EBD45688, 0x1E69B8BF0);
    v130 = v154;
    sub_1BE04BF44();
    v158(v130);
    (*(v155 + 8))(v130, v156);
    v169, v131, v132, v133, v134, v135, v136, v137;
  }
}

void sub_1BD8287C0(void *a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v164 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD455A0, &qword_1BE0D44B8);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v152 - v11;
  v12 = sub_1BE04CFC4();
  v162 = *(v12 - 8);
  v163 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v152 - v15;
  v161 = sub_1BE04CFE4();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v170 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1BE04D214();
  v18 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v20 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v158 = a3;
  v21[2] = a3;
  v21[3] = a4;
  v168 = v16;
  v169 = v21;
  v22 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  sub_1BE048964();
  if (v22)
  {
    sub_1BE048964();
    v165 = sub_1BE04C0A4();
    v24 = v23;
    v22, v23, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v165 = 0;
    v24 = 0xE000000000000000;
  }

  v157 = a4;
  sub_1BE04D0D4();
  sub_1BE048C84();
  sub_1BE048C84();
  v31 = sub_1BE04D204();
  v32 = sub_1BE052C54();
  a1, v33, v34, v35, v36, v37, v38, v39;
  v24, v40, v41, v42, v43, v44, v45, v46;
  v47 = os_log_type_enabled(v31, v32);
  v153 = a1;
  v167 = v24;
  if (v47)
  {
    v48 = v24;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v152 = a2;
    v51 = v50;
    aBlock[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_1BD123690(v165, v48, aBlock);
    *(v49 + 12) = 2080;
    v52 = MEMORY[0x1BFB3F7F0](a1, MEMORY[0x1E69E6158]);
    v54 = v53;
    v55 = v9;
    v56 = v8;
    v57 = sub_1BD123690(v52, v53, aBlock);
    v54, v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 14) = v57;
    v8 = v56;
    v9 = v55;
    _os_log_impl(&dword_1BD026000, v31, v32, "[%s] Showing SE Full Clean Up UI For %s", v49, 0x16u);
    swift_arrayDestroy();
    v65 = v51;
    a2 = v152;
    MEMORY[0x1BFB45F20](v65, -1, -1);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  (*(v18 + 8))(v20, v166);
  v66 = v168;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v75 = Strong;
    v76 = a2;
    v77 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
    sub_1BE04B694();
    sub_1BE04CFB4();
    v78 = sub_1BE04CFD4();
    v79 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v78, v79, v81, "provisioning:getSecureElementSnapshot", "", v80, 2u);
      MEMORY[0x1BFB45F20](v80, -1, -1);
    }

    v83 = v162;
    v82 = v163;
    (*(v162 + 16))(v160, v66, v163);
    sub_1BE04D024();
    swift_allocObject();
    v84 = sub_1BE04D014();
    (*(v83 + 8))(v66, v82);
    (*(v159 + 8))(v170, v161);
    v85 = v164;
    sub_1BE04BB94();
    v86 = sub_1BE04B934();
    (*(v9 + 8))(v85, v8);
    if ([v86 respondsToSelector_])
    {
      v94 = swift_allocObject();
      v95 = v165;
      v94[2] = v84;
      v94[3] = v95;
      v96 = v153;
      v94[4] = v167;
      v94[5] = v96;
      v97 = v169;
      v94[6] = sub_1BD82AE74;
      v94[7] = v97;
      v94[8] = v77;
      v94[9] = v75;
      v94[10] = v76;
      aBlock[4] = sub_1BD82AE7C;
      v172 = v94;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD715170;
      aBlock[3] = &block_descriptor_90_1;
      v98 = _Block_copy(aBlock);
      v99 = v172;
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v100 = v75;
      v101 = v76;
      sub_1BE048964();
      v99, v102, v103, v104, v105, v106, v107, v108;
      [v86 currentSecureElementSnapshot_];
      _Block_release(v98);
      v97, v109, v110, v111, v112, v113, v114, v115;
      v94, v116, v117, v118, v119, v120, v121, v122;
      swift_unknownObjectRelease();

      v84, v123, v124, v125, v126, v127, v128, v129;
    }

    else
    {
      v169, v87, v88, v89, v90, v91, v92, v93;
      v167, v138, v139, v140, v141, v142, v143, v144;

      v84, v145, v146, v147, v148, v149, v150, v151;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v167, v68, v69, v70, v71, v72, v73, v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680, &qword_1BE0D4628);
    v130 = v154;
    sub_1BE04BF44();
    v158(v130);
    (*(v155 + 8))(v130, v156);
    v169, v131, v132, v133, v134, v135, v136, v137;
  }
}

uint64_t sub_1BD828FD0(uint64_t a1, char a2)
{
  if (a1 == 2 || a1 == 1)
  {
    return sub_1BE052434();
  }

  sub_1BE053834();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v9 = sub_1BE053B24();
  v11 = v10;
  MEMORY[0x1BFB3F610](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return 0xD00000000000002CLL;
}

uint64_t sub_1BD8290F8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    v5 = [a1 aclType];
    v6 = 2 * (v5 == 2);
    if (v5 == 1)
    {
      v6 = 1;
    }

    if (a2)
    {
      a1 = 0;
    }

    else
    {
      a1 = v6;
    }
  }

  return v3(a1, a2);
}

id sub_1BD829158(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v209 = a4;
  v207 = a3;
  v205 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v203 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v204 = &v193 - v8;
  v9 = sub_1BE04BD74();
  v210 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v193 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v193 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v206 = &v193 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v193 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v193 - v24;
  v26 = sub_1BE04A844();
  v208 = objc_opt_self();
  v211 = [v208 errorWithUnderlyingError:v26 defaultSeverity:5];

  v27 = sub_1BD112BE0(&unk_1F3B8F6D8);
  v213 = a1;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  type metadata accessor for CIDVUIBiometricBindingEnrollmentError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27, v29, v30, v31, v32, v33, v34, v35;
    return v211;
  }

  v202 = v9;
  v36 = v212;
  v213 = v212;
  sub_1BD82B4EC(&qword_1EBD38068, 255, type metadata accessor for CIDVUIBiometricBindingEnrollmentError, &unk_1BE0B6550);
  sub_1BE04A814();
  v37 = sub_1BD6CF234();
  v27, v38, v39, v40, v41, v42, v43, v44;
  if ((v37 & 1) == 0)
  {

    return v211;
  }

  v213 = v36;
  sub_1BE04A814();
  v201 = v36;
  if (v212 == -2)
  {
    v194 = v17;
    v45 = v209;
    v46 = -13;
    if ((v209 & 1) == 0)
    {
      v46 = -12;
    }

    v200 = v46;
    v47 = *MEMORY[0x1E69B80E8];
    v48 = *(v210 + 104);
    v49 = v202;
    v48(v25, v47, v202);
    result = PKPassKitBundle();
    if (result)
    {
      v51 = result;
      v52 = "PROVISIONING_ENROLLMENT_TOUCHID_TITLE";
      if (v45)
      {
        v52 = "PROVISIONING_ENROLLMENT_FACEID_TITLE";
      }

      v53 = v52 - 32;
      v196 = sub_1BE04B6F4();
      v197 = v54;
      (v53 | 0x8000000000000000), v54, v55, v56, v57, v58, v59, v60;

      v61 = *(v210 + 8);
      v210 += 8;
      v61(v25, v49);
      v198 = v47;
      v199 = v48;
      v48(v22, v47, v49);
      result = PKPassKitBundle();
      if (result)
      {
        v62 = result;
        v63 = v49;
        if (v45)
        {
          v64 = "=TOUCHID_PASSCODE";
        }

        else
        {
          v64 = "OLLMENT_BIOMETRICS_SETUP";
        }

        if (v45)
        {
          v65 = "TATIC_ID_CARD_MESSAGE";
        }

        else
        {
          v65 = "CEID_REQUIRED_DYNAMIC_MESSAGE";
        }

        v195 = sub_1BE04B6F4();
        v200 = v66;
        (v65 | 0x8000000000000000), v66, v67, v68, v69, v70, v71, v72;

        v61(v22, v49);
        v73 = v204;
        sub_1BE04AA54();
        (v64 | 0x8000000000000000), v74, v75, v76, v77, v78, v79, v80;
        v81 = v207;
        v82 = v61;
        if (v207)
        {
          if (v45)
          {
            v83 = "OLLMENT_FACEID_TITLE";
          }

          else
          {
            v83 = "OLLMENT_TOUCHID_TITLE";
          }

          v84 = v206;
          v85 = v63;
          v199(v206, v198, v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1BE0B69E0;
          *(v86 + 56) = MEMORY[0x1E69E6158];
          *(v86 + 64) = sub_1BD110550();
          *(v86 + 32) = v205;
          *(v86 + 40) = v81;
          sub_1BE048C84();
          v82 = v61;
          sub_1BE04B714();
          v88 = v87;
          (v83 | 0x8000000000000000), v87, v89, v90, v91, v92, v93, v94;
          v86, v95, v96, v97, v98, v99, v100, v101;
LABEL_40:
          v163 = v203;
          v82(v84, v85);
          sub_1BD38F438(v73, v163);
          v164 = v197;
          v165 = sub_1BE052404();
          v164, v166, v167, v168, v169, v170, v171, v172;
          v173 = sub_1BE052404();
          v88, v174, v175, v176, v177, v178, v179, v180;
          v181 = v200;
          v182 = sub_1BE052404();
          v181, v183, v184, v185, v186, v187, v188, v189;
          v190 = sub_1BE04AA64();
          v191 = *(v190 - 8);
          v192 = 0;
          if ((*(v191 + 48))(v163, 1, v190) != 1)
          {
            v192 = sub_1BE04A9C4();
            (*(v191 + 8))(v163, v190);
          }

          v153 = [v208 errorWithTitle:v165 message:v173 severity:5 recoveryTitle:v182 recoveryURL:v192];

          sub_1BD0DE53C(v73, &unk_1EBD3CF70, &qword_1BE0BA000);
          return v153;
        }

        v84 = v194;
        v199(v194, v198, v63);
        result = PKPassKitBundle();
        if (result)
        {
          v154 = result;
          if (v209)
          {
            v155 = "STATIC_ID_CARD_MESSAGE";
          }

          else
          {
            v155 = "OLLMENT_TOUCHID_SETUP";
          }

          sub_1BE04B6F4();
          v88 = v156;
          (v155 | 0x8000000000000000), v156, v157, v158, v159, v160, v161, v162;

          v85 = v202;
          goto LABEL_40;
        }

LABEL_49:
        __break(1u);
        return result;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v102 = *MEMORY[0x1E69B80E8];
  v103 = v210;
  v104 = *(v210 + 104);
  v105 = v202;
  v104(v14, v102, v202);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_46;
  }

  v106 = result;
  v203 = sub_1BE04B6F4();
  v204 = v107;

  v108 = *(v103 + 8);
  v210 = v103 + 8;
  v108(v14, v105);
  v109 = v207;
  if (v207)
  {
    if (v209)
    {
      v110 = "UCHID_REQUIRED_DYNAMIC_MESSAGE";
    }

    else
    {
      v110 = "ED_STATIC_MESSAGE";
    }

    v11 = v206;
    v104(v206, v102, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1BE0B69E0;
    *(v111 + 56) = MEMORY[0x1E69E6158];
    *(v111 + 64) = sub_1BD110550();
    *(v111 + 32) = v205;
    *(v111 + 40) = v109;
    sub_1BE048C84();
    sub_1BE04B714();
    v113 = v112;
    (v110 | 0x8000000000000000), v112, v114, v115, v116, v117, v118, v119;
    v111, v120, v121, v122, v123, v124, v125, v126;
  }

  else
  {
    v104(v11, v102, v105);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v127 = result;
    if (v209)
    {
      v128 = "RED_STATIC_MESSAGE";
    }

    else
    {
      v128 = "CANNOT_ADD_ID_TITLE";
    }

    sub_1BE04B6F4();
    v113 = v129;
    (v128 | 0x8000000000000000), v129, v130, v131, v132, v133, v134, v135;

    v105 = v202;
  }

  v108(v11, v105);
  v136 = v204;
  v137 = sub_1BE052404();
  v136, v138, v139, v140, v141, v142, v143, v144;
  v145 = sub_1BE052404();
  v113, v146, v147, v148, v149, v150, v151, v152;
  v153 = [v208 errorWithTitle:v137 message:v145 severity:5];

  return v153;
}

void sub_1BD829BC0(uint64_t a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  v253 = a1;
  v241 = sub_1BE04B944();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_1BE04BDB4();
  v245 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BDF4();
  v10 = *(v9 - 8);
  v258 = v9;
  v259 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v255 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100, &qword_1BE0F85D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v239 - v13;
  v243 = sub_1BE04BAC4();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v16 = &v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04C534();
  v247 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v249 = *(v20 - 8);
  v250 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v248 = (&v239 - v21);
  v246 = sub_1BE04D214();
  v22 = *(v246 - 1);
  MEMORY[0x1EEE9AC00](v246);
  v24 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v251 = v25;
  v252 = v17;
  v26 = a2;
  v27 = *&a2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  sub_1BE048964();
  if (v27)
  {
    sub_1BE048964();
    v244 = sub_1BE04C0A4();
    v254 = v28;
    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v244 = 0;
    v254 = 0xE000000000000000;
  }

  v35 = v253;
  v36 = *(v253 + 16);
  if (!v36)
  {
    sub_1BE04D0D4();
    v136 = v254;
    sub_1BE048C84();
    v137 = sub_1BE04D204();
    v138 = sub_1BE052C54();
    v136, v139, v140, v141, v142, v143, v144, v145;
    if (os_log_type_enabled(v137, v138))
    {
      v146 = swift_slowAlloc();
      v243 = a4;
      v147 = v146;
      v148 = a3;
      v149 = swift_slowAlloc();
      aBlock = v149;
      *v147 = 136315138;
      v150 = sub_1BD123690(v244, v136, &aBlock);
      v136, v151, v152, v153, v154, v155, v156, v157;
      *(v147 + 4) = v150;
      _os_log_impl(&dword_1BD026000, v137, v138, "[%s] Successfully resolved all missing requirements", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v149, v158, v159, v160, v161, v162, v163, v164);
      v165 = v149;
      a3 = v148;
      MEMORY[0x1BFB45F20](v165, -1, -1);
      MEMORY[0x1BFB45F20](v147, -1, -1);
    }

    else
    {

      v136, v226, v227, v228, v229, v230, v231, v232;
    }

    (*(v22 + 8))(v24, v246);
    v234 = v249;
    v233 = v250;
    v236 = v247;
    v235 = v248;
    v237 = v251;
    v238 = v252;
    (*(v247 + 13))(v19, *MEMORY[0x1E69B8308], v252);
    sub_1BE04BF54();
    (*(v236 + 1))(v19, v238);
    sub_1BD8258B0(v235, a3);
    (*(v234 + 8))(v235, v233);
    v135 = v237;
LABEL_25:
    v135, v128, v129, v130, v131, v132, v133, v134;
    return;
  }

  v37 = sub_1BD68DC7C(v253);
  if (v38 == 2 || (v39 = v37, (v40 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    aBlock = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500, &unk_1BE0C62D0);
    sub_1BD0DE4F4(&qword_1EBD55110, &unk_1EBD3F500, &unk_1BE0C62D0, MEMORY[0x1E69E6328]);
    sub_1BE052674();
    v79 = (*(v259 + 48))(v14, 1, v258);
    sub_1BD0DE53C(v14, &unk_1EBD55100, &qword_1BE0F85D0);
    if (v79 != 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v88 = Strong, v89 = [Strong navigationController], v88, v89))
    {
      v90 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
      v91 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion];
      v92 = v251;
      if (v91)
      {
        sub_1BE048964();
        sub_1BE04C244();
        v91, v93, v94, v95, v96, v97, v98, v99;
        v100 = *&v26[v90];
        *&v26[v90] = 0;
        v100, v101, v102, v103, v104, v105, v106, v107;
      }

      sub_1BE04C264();
      v108 = v239;
      sub_1BE04BB94();
      v109 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v110 = swift_allocObject();
      v111 = v244;
      v110[2] = v109;
      v110[3] = v111;
      v110[4] = v254;
      v110[5] = v253;
      v110[6] = v26;
      v110[7] = sub_1BD82B0C0;
      v110[8] = v92;
      v110[9] = v89;
      sub_1BE048C84();
      v112 = v26;
      sub_1BE048964();
      sub_1BE048964();
      v113 = v89;
      MEMORY[0x1BFB392E0](v108, sub_1BD82B0C8, v110);

      v110, v114, v115, v116, v117, v118, v119, v120;
      (*(v240 + 8))(v108, v241);
      v92, v121, v122, v123, v124, v125, v126, v127;
      v135 = v109;
    }

    else
    {
      v247 = a3;
      v243 = a4;
      v254, v80, v81, v82, v83, v84, v85, v86;
      v246 = [objc_opt_self() errorWithCommonType:1 severity:5];
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v36, 0, v166, v167, v168, v169, v170);
      v171 = aBlock;
      v172 = *(v259 + 16);
      v173 = v253 + ((*(v259 + 80) + 32) & ~*(v259 + 80));
      v253 = *(v259 + 72);
      v254 = v172;
      v252 = (v245 + 8);
      v259 += 16;
      v174 = (v259 - 8);
      do
      {
        v175 = v255;
        v176 = v258;
        (v254)(v255, v173, v258);
        v177 = v256;
        sub_1BE04BDE4();
        v178 = sub_1BE04BDA4();
        v180 = v179;
        (*v252)(v177, v257);
        (*v174)(v175, v176);
        aBlock = v171;
        v187 = v171[2];
        v186 = v171[3];
        if (v187 >= v186 >> 1)
        {
          sub_1BD03B254((v186 > 1), v187 + 1, 1, v181, v182, v183, v184, v185);
          v171 = aBlock;
        }

        v171[2] = v187 + 1;
        v188 = &v171[2 * v187];
        v188[4] = v178;
        v188[5] = v180;
        v173 += v253;
        --v36;
      }

      while (v36);
      aBlock = v171;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
      sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
      v189 = sub_1BE0522E4();
      v191 = v190;
      v171, v190, v192, v193, v194, v195, v196, v197;
      aBlock = 0;
      v261 = 0xE000000000000000;
      sub_1BE053834();
      v261, v198, v199, v200, v201, v202, v203, v204;
      aBlock = 0xD000000000000016;
      v261 = 0x80000001BE123A30;
      MEMORY[0x1BFB3F610](v189, v191);
      v191, v205, v206, v207, v208, v209, v210, v211;
      v212 = v261;
      v213 = sub_1BE052404();
      v212, v214, v215, v216, v217, v218, v219, v220;
      v221 = v246;
      [v246 addInternalDebugDescription_];

      v223 = v248;
      v222 = v249;
      *v248 = v221;
      v224 = v250;
      (*(v222 + 104))(v223, *MEMORY[0x1E69B8168], v250);
      v225 = v221;
      sub_1BD8258B0(v223, v247);

      (*(v222 + 8))(v223, v224);
      v135 = v251;
    }

    goto LABEL_25;
  }

  v48 = v40;
  v254, v41, v42, v43, v44, v45, v46, v47;
  sub_1BE04BC34();
  v49 = sub_1BE04B9A4();
  (*(v242 + 8))(v16, v243);
  v50 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:v39 context:v49];
  if (v50)
  {
    v58 = v50;
    v59 = swift_allocObject();
    v59[2] = v253;
    v59[3] = v26;
    v60 = v251;
    v59[4] = sub_1BD82B0C0;
    v59[5] = v60;
    v264 = sub_1BD82B0CC;
    v265 = v59;
    aBlock = MEMORY[0x1E69E9820];
    v261 = 1107296256;
    v262 = sub_1BD68F010;
    v263 = &block_descriptor_176_0;
    v61 = _Block_copy(&aBlock);
    v62 = v265;
    v63 = v58;
    v48 = v48;
    sub_1BE048C84();
    v64 = v26;
    sub_1BE048964();
    v62, v65, v66, v67, v68, v69, v70, v71;
    [v63 presentSecurityRepairFlowWithPresentingViewController:v48 completion:v61];

    _Block_release(v61);
    v60, v72, v73, v74, v75, v76, v77, v78;
  }

  else
  {
    v251, v51, v52, v53, v54, v55, v56, v57;
  }
}

uint64_t sub_1BD82A898(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v17 - v13);
  if (a2)
  {
    *v14 = a1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
    v15 = a1;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
  }

  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD82AA88(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45690, &qword_1BE0D4630);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - v9);
  if (a2)
  {
    if (a2 != 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140, &qword_1BE0D4638) + 48);
      v17 = *MEMORY[0x1E69B8308];
      v18 = sub_1BE04C534();
      (*(*(v18 - 8) + 104))(v10, v17, v18);
      *(v10 + v16) = 0;
      (*(v7 + 104))(v10, *MEMORY[0x1E69B8170], v6);
      goto LABEL_7;
    }

    *v10 = a1;
    v11 = MEMORY[0x1E69B8168];
  }

  else
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55140, &qword_1BE0D4638) + 48);
    v13 = *MEMORY[0x1E69B8308];
    v14 = sub_1BE04C534();
    (*(*(v14 - 8) + 104))(v10, v13, v14);
    *(v10 + v12) = a1;
    v11 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v10, *v11, v6, v8);
  v15 = a1;
LABEL_7:
  a3(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD82ACB4(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v24 - v16);
  if (a2)
  {
    *v17 = a1;
    v18 = MEMORY[0x1E69B8168];
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) + 48);
    v20 = *MEMORY[0x1E69B8308];
    v21 = sub_1BE04C534();
    (*(*(v21 - 8) + 104))(v17, v20, v21);
    *(v17 + v19) = a1;
    v18 = MEMORY[0x1E69B8170];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  v22 = a1;
  a3(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD82AEB8(uint64_t a1)
{
  v3 = *(v1 + 24);
  [*(v1 + 16) dismissViewControllerAnimated:1 completion:0];
  return v3(a1);
}

uint64_t objectdestroy_86Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[8], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

uint64_t objectdestroy_178Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  *(v1 + 32), v2, v3, v4, v5, v6, v7, v8;

  *(v1 + 56), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t objectdestroy_169Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t objectdestroy_142Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  *(v1 + 40), v2, v3, v4, v5, v6, v7, v8;

  return swift_deallocObject();
}

uint64_t objectdestroy_115Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD82B3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD82B4EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BD82B68C@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v119 = type metadata accessor for BankAccountSheet(0);
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountServiceSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v118 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v117 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v117 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v117 - v14;
  v117 = *(v1 + 8);
  sub_1BD834498(v1, &v117 - v14, type metadata accessor for AccountServiceSheet);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v120 = swift_allocObject();
  sub_1BD834430(v15, v120 + v16, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v1, v12, type metadata accessor for AccountServiceSheet);
  v17 = swift_allocObject();
  sub_1BD834430(v12, v17 + v16, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v1, v9, type metadata accessor for AccountServiceSheet);
  v18 = swift_allocObject();
  sub_1BD834430(v9, v18 + v16, type metadata accessor for AccountServiceSheet);
  v19 = v118;
  sub_1BD834498(v1, v118, type metadata accessor for AccountServiceSheet);
  v20 = v117;
  v21 = v119;
  v22 = swift_allocObject();
  sub_1BD834430(v19, v22 + v16, type metadata accessor for AccountServiceSheet);
  v23 = &v3[*(v21 + 48)];
  v125 = 0;
  sub_1BE051694();
  v24 = *(&v123[0] + 1);
  *v23 = v123[0];
  *(v23 + 1) = v24;
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_1BE04D8B4(v123);
  KeyPath, v27, v28, v29, v30, v31, v32, v33;
  v26, v34, v35, v36, v37, v38, v39, v40;
  if (*&v123[0] == 1)
  {
    v120, v41, v42, v43, v44, v45, v46, v47;
    v17, v48, v49, v50, v51, v52, v53, v54;
    v18, v55, v56, v57, v58, v59, v60, v61;
    v22, v62, v63, v64, v65, v66, v67, v68;
    v24, v69, v70, v71, v72, v73, v74, v75;
    v76 = 1;
    v77 = v122;
  }

  else
  {
    v78 = v123[1];
    v79 = v124;
    *(v3 + 5) = v123[0];
    *(v3 + 6) = v78;
    v3[112] = v79;
    v80 = *(v21 + 44);
    v81 = swift_getKeyPath();
    v82 = swift_getKeyPath();
    sub_1BE04D8B4(&v3[v80]);
    v81, v83, v84, v85, v86, v87, v88, v89;
    v82, v90, v91, v92, v93, v94, v95, v96;
    *v3 = v20;
    *(v3 + 1) = sub_1BD8338F0;
    *(v3 + 2) = v120;
    *(v3 + 3) = sub_1BD833908;
    *(v3 + 4) = v17;
    *(v3 + 5) = sub_1BD8345B4;
    *(v3 + 6) = v18;
    *(v3 + 7) = sub_1BD8345A8;
    *(v3 + 8) = v22;
    v97 = swift_getKeyPath();
    v98 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v123);
    v97, v99, v100, v101, v102, v103, v104, v105;
    v98, v106, v107, v108, v109, v110, v111, v112;
    *(v3 + 9) = *&v123[0];
    sub_1BD4EDC40();
    v113 = [swift_getObjCClassFromMetadata() appearance];
    v114 = [objc_opt_self() clearColor];
    [v113 setBackgroundColor_];

    v115 = v122;
    sub_1BD834430(v3, v122, type metadata accessor for BankAccountSheet);
    v76 = 0;
    v77 = v115;
  }

  return (*(v121 + 56))(v77, v76, 1, v21);
}

uint64_t sub_1BD82BBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v166 = a1;
  v3 = type metadata accessor for PeerPaymentModel(0);
  v159 = *(v3 - 8);
  v160 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v157 = (&v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v158 = (&v157 - v6);
  v162 = type metadata accessor for TransferOptionsSheet(0);
  v165 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountServiceSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v157 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v157 - v19;
  v161 = *(v2 + 8);
  sub_1BD834498(v2, &v157 - v19, type metadata accessor for AccountServiceSheet);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v164 = swift_allocObject();
  sub_1BD834430(v20, v164 + v21, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v17, type metadata accessor for AccountServiceSheet);
  v22 = swift_allocObject();
  sub_1BD834430(v17, v22 + v21, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v14, type metadata accessor for AccountServiceSheet);
  v23 = swift_allocObject();
  v24 = v14;
  v25 = v162;
  sub_1BD834430(v24, v23 + v21, type metadata accessor for AccountServiceSheet);
  sub_1BD834498(v2, v11, type metadata accessor for AccountServiceSheet);
  v26 = swift_allocObject();
  v27 = v26 + v21;
  v28 = v161;
  v29 = v163;
  sub_1BD834430(v11, v27, type metadata accessor for AccountServiceSheet);
  v30 = v29 + v25[12];
  v169 = 0;
  sub_1BE051694();
  v31 = *(&v167[0] + 1);
  *v30 = v167[0];
  *(v30 + 8) = v31;
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v167);
  KeyPath, v34, v35, v36, v37, v38, v39, v40;
  v33, v41, v42, v43, v44, v45, v46, v47;
  if (*&v167[0] == 1)
  {
    v164, v48, v49, v50, v51, v52, v53, v54;
    v22, v55, v56, v57, v58, v59, v60, v61;
    v23, v62, v63, v64, v65, v66, v67, v68;
    v26, v69, v70, v71, v72, v73, v74, v75;
    v31, v76, v77, v78, v79, v80, v81, v82;
    v83 = 1;
    v84 = v166;
  }

  else
  {
    v85 = v167[1];
    v86 = v168;
    *(v29 + 64) = v167[0];
    *(v29 + 80) = v85;
    *(v29 + 96) = v86;
    v87 = v25[10];
    v88 = swift_getKeyPath();
    v89 = swift_getKeyPath();
    sub_1BE04D8B4((v29 + v87));
    v88, v90, v91, v92, v93, v94, v95, v96;
    v89, v97, v98, v99, v100, v101, v102, v103;
    *v29 = v28;
    *(v29 + 8) = sub_1BD833908;
    *(v29 + 16) = v164;
    *(v29 + 24) = sub_1BD833AF4;
    *(v29 + 32) = v22;
    *(v29 + 40) = sub_1BD833B5C;
    *(v29 + 48) = v23;
    v104 = swift_getKeyPath();
    v105 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v167);
    v104, v106, v107, v108, v109, v110, v111, v112;
    v105, v113, v114, v115, v116, v117, v118, v119;
    *(v29 + 56) = *&v167[0];
    sub_1BD4EDC40();
    v120 = [swift_getObjCClassFromMetadata() appearance];
    v121 = [objc_opt_self() clearColor];
    [v120 setBackgroundColor_];

    v122 = [objc_allocWithZone(type metadata accessor for PeerPaymentAccountResolutionControllerModel(0)) init];
    v123 = swift_getKeyPath();
    v124 = swift_getKeyPath();
    v125 = v158;
    sub_1BE04D8B4(v158);
    v123, v126, v127, v128, v129, v130, v131, v132;
    v124, v133, v134, v135, v136, v137, v138, v139;
    if ((*(v159 + 48))(v125, 1, v160))
    {
      sub_1BD0DE53C(v125, &qword_1EBD45480, &unk_1BE0B8C30);
      v140 = 0;
    }

    else
    {
      v141 = v157;
      sub_1BD834498(v125, v157, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v125, &qword_1EBD45480, &unk_1BE0B8C30);
      v140 = *v141;
      sub_1BD834500(v141, type metadata accessor for PeerPaymentModel);
    }

    v142 = *&v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account];
    *&v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = v140;
    v143 = v140;

    sub_1BD4EBF78();
    v144 = &v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    v145 = *&v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    v146 = *&v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction + 8];
    *v144 = sub_1BD833BB4;
    v144[1] = v26;
    sub_1BD0D4744(v145, v146, v147, v148, v149, v150, v151, v152);
    v153 = &v122[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_verificationContext];
    *v153 = 2;
    v153[8] = 0;
    v154 = swift_allocObject();
    *(v154 + 16) = v122;
    v155 = v29 + v25[11];
    *v155 = sub_1BD833C58;
    *(v155 + 8) = v154;
    *(v155 + 16) = 0;
    v84 = v166;
    sub_1BD834430(v29, v166, type metadata accessor for TransferOptionsSheet);
    v83 = 0;
  }

  return (*(v165 + 56))(v84, v83, 1, v25);
}

uint64_t sub_1BD82C33C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0, &qword_1BE0C5FF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551A0, &qword_1BE0FBDF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551A8, &qword_1BE0FBDF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551B0, &qword_1BE0FBE00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1BD82C73C(&v28 - v22);
  sub_1BD82D600(v17);
  v30 = v11;
  sub_1BD82E414(v11);
  sub_1BD82F3CC(v5);
  v31 = v20;
  sub_1BD0DE19C(v23, v20, &qword_1EBD551B0, &qword_1BE0FBE00);
  v29 = v14;
  sub_1BD0DE19C(v17, v14, &qword_1EBD551A8, &qword_1BE0FBDF8);
  v28 = v8;
  sub_1BD0DE19C(v11, v8, &qword_1EBD551A0, &qword_1BE0FBDF0);
  v24 = v32;
  sub_1BD0DE19C(v5, v32, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
  v25 = v33;
  sub_1BD0DE19C(v20, v33, &qword_1EBD551B0, &qword_1BE0FBE00);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551B8, &qword_1BE0FBE08);
  sub_1BD0DE19C(v14, v25 + v26[12], &qword_1EBD551A8, &qword_1BE0FBDF8);
  sub_1BD0DE19C(v8, v25 + v26[16], &qword_1EBD551A0, &qword_1BE0FBDF0);
  sub_1BD0DE19C(v24, v25 + v26[20], &qword_1EBD3F3D0, &qword_1BE0C5FF8);
  sub_1BD0DE53C(v5, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
  sub_1BD0DE53C(v30, &qword_1EBD551A0, &qword_1BE0FBDF0);
  sub_1BD0DE53C(v17, &qword_1EBD551A8, &qword_1BE0FBDF8);
  sub_1BD0DE53C(v23, &qword_1EBD551B0, &qword_1BE0FBE00);
  sub_1BD0DE53C(v24, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
  sub_1BD0DE53C(v28, &qword_1EBD551A0, &qword_1BE0FBDF0);
  sub_1BD0DE53C(v29, &qword_1EBD551A8, &qword_1BE0FBDF8);
  return sub_1BD0DE53C(v31, &qword_1EBD551B0, &qword_1BE0FBE00);
}

uint64_t sub_1BD82C73C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55360, &qword_1BE0FBFC8);
  v199 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v198 = &v175 - v4;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55368, &qword_1BE0FBFD0);
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v183 = (&v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v175 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55370, &qword_1BE0FBFD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v197 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v195 = &v175 - v11;
  v12 = type metadata accessor for AccountServiceSheet(0);
  v184 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v185 = v13;
  v186 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v192 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v187 = &v175 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8, &qword_1BE0C5830);
  v193 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v189 = &v175 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v190 = (&v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v175 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v175 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v175 - v31);
  v33 = type metadata accessor for PeerPaymentModel(0);
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55378, &qword_1BE0FBFE0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v200 = &v175 - v41;
  v191 = v1;
  v42 = *(v1 + 8);
  if (*(v42 + qword_1EBDAB038) == 1)
  {
    v178 = v39;
    v179 = v3;
    v180 = a1;
    KeyPath = swift_getKeyPath();
    v44 = swift_getKeyPath();
    sub_1BE04D8B4(v32);
    KeyPath, v45, v46, v47, v48, v49, v50, v51;
    v44, v52, v53, v54, v55, v56, v57, v58;
    v59 = *(v34 + 48);
    v60 = v59(v32, 1, v33);
    v181 = v42;
    if (v60 == 1)
    {
      sub_1BD0DE53C(v32, &qword_1EBD45480, &unk_1BE0B8C30);
    }

    else
    {
      sub_1BD834430(v32, v36, type metadata accessor for PeerPaymentModel);
      if (v36[v33[13]] == 1)
      {
        if ((PKOslo2024UIUpdatesEnabled() & 1) != 0 || (v36[v33[11]] & 1) == 0)
        {
          v176 = 0;
          v177 = 0;
        }

        else
        {
          v63 = v186;
          sub_1BD834498(v191, v186, type metadata accessor for AccountServiceSheet);
          v64 = (*(v184 + 80) + 16) & ~*(v184 + 80);
          v177 = swift_allocObject();
          sub_1BD834430(v63, v177 + v64, type metadata accessor for AccountServiceSheet);
          v176 = sub_1BD8343C4;
        }

        v68 = v187;
        sub_1BD834498(&v36[v33[5]], v187, type metadata accessor for AvailablePass);
        sub_1BD834498(v68, v192, type metadata accessor for AvailablePass);
        (*(v34 + 56))(v29, 1, 1, v33);
        v175 = v18[16];
        v20[v175] = 0;
        v69 = v18[17];
        *&v20[v69] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
        swift_storeEnumTagMultiPayload();
        v70 = sub_1BE051C54();
        v71 = 40.0;
        if (v70)
        {
          v71 = 36.0;
        }

        *&v20[v18[18]] = v71;
        v72 = v18[19];
        v73 = sub_1BE051C54();
        sub_1BD834500(v68, type metadata accessor for AvailablePass);
        sub_1BD834500(v36, type metadata accessor for PeerPaymentModel);
        v20[v72] = (v73 & 1) == 0;
        sub_1BD834430(v192, v20, type metadata accessor for AvailablePass);
        *&v20[v18[9]] = 0;
        sub_1BD0DE19C(v29, &v20[v18[10]], &qword_1EBD45480, &unk_1BE0B8C30);
        v74 = &v20[v18[11]];
        *(v74 + 3) = 0u;
        *(v74 + 4) = 0u;
        *(v74 + 1) = 0u;
        *(v74 + 2) = 0u;
        *v74 = 0u;
        v20[v18[12]] = 1;
        v75 = &v20[v18[13]];
        *(v75 + 4) = 0;
        *v75 = 0u;
        *(v75 + 1) = 0u;
        v76 = &v20[v18[14]];
        v77 = v177;
        *v76 = v176;
        v76[1] = v77;
        v78 = &v20[v18[15]];
        *v78 = 0;
        *(v78 + 1) = 0;
        v79 = v29;
        v80 = v188;
        sub_1BD0DE204(v79, v188, &qword_1EBD45480, &unk_1BE0B8C30);
        if (v59(v80, 1, v33) == 1)
        {
          sub_1BD0DE53C(v80, &qword_1EBD45480, &unk_1BE0B8C30);
          v66 = v196;
          v67 = v195;
        }

        else
        {
          v81 = (v80 + v33[6]);
          v82 = v81[3];
          v204 = v81[2];
          v205 = v82;
          v83 = v81[5];
          v206 = v81[4];
          v207 = v83;
          v84 = v81[1];
          v202 = *v81;
          v203 = v84;
          sub_1BD0DE19C(&v202, v201, &unk_1EBD521D0, qword_1BE0BEDC0);
          sub_1BD834500(v80, type metadata accessor for PeerPaymentModel);
          v66 = v196;
          v67 = v195;
          if (v202 != 1)
          {
            v85 = *(&v203 + 1);
            v86 = v207;
            sub_1BD0DE53C(&v202, &unk_1EBD521D0, qword_1BE0BEDC0);
            if (v85 || (v86 & 1) != 0)
            {
              v20[v175] = 1;
            }
          }
        }

        v87 = v189;
        sub_1BD0DE204(v20, v189, &qword_1EBD3F1C8, &qword_1BE0C5830);
        sub_1BD0DE204(v87, v200, &qword_1EBD3F1C8, &qword_1BE0C5830);
        v65 = 0;
LABEL_23:
        v88 = 1;
        (*(v193 + 56))(v200, v65, 1, v18);
        v89 = swift_getKeyPath();
        v90 = swift_getKeyPath();
        sub_1BE04D8B4(&v202);
        v89, v91, v92, v93, v94, v95, v96, v97;
        v90, v98, v99, v100, v101, v102, v103, v104;
        v112 = v202;
        v113 = v203;
        if (v202)
        {
          if (v202 == 1)
          {
LABEL_31:
            (*(v194 + 56))(v67, v88, 1, v66);
            v169 = v200;
            v170 = v178;
            sub_1BD0DE19C(v200, v178, &qword_1EBD55378, &qword_1BE0FBFE0);
            v171 = v197;
            sub_1BD0DE19C(v67, v197, &qword_1EBD55370, &qword_1BE0FBFD8);
            v172 = v198;
            sub_1BD0DE19C(v170, v198, &qword_1EBD55378, &qword_1BE0FBFE0);
            v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55380, &qword_1BE0FBFE8);
            sub_1BD0DE19C(v171, v172 + *(v173 + 48), &qword_1EBD55370, &qword_1BE0FBFD8);
            sub_1BD0DE53C(v67, &qword_1EBD55370, &qword_1BE0FBFD8);
            sub_1BD0DE53C(v169, &qword_1EBD55378, &qword_1BE0FBFE0);
            sub_1BD0DE53C(v171, &qword_1EBD55370, &qword_1BE0FBFD8);
            sub_1BD0DE53C(v170, &qword_1EBD55378, &qword_1BE0FBFE0);
            v174 = v180;
            sub_1BD0DE204(v172, v180, &qword_1EBD55360, &qword_1BE0FBFC8);
            return (*(v199 + 56))(v174, 0, 1, v179);
          }

          v114 = *(&v202 + 1);
          if (v204)
          {
            v115 = swift_getKeyPath();
            v116 = swift_getKeyPath();
            v117 = v114;
            v118 = v112;
            sub_1BE04D8B4(v190);
            v115, v119, v120, v121, v122, v123, v124, v125;
            v116, v126, v127, v128, v129, v130, v131, v132;
            v133 = v186;
            sub_1BD834498(v191, v186, type metadata accessor for AccountServiceSheet);
            v134 = (*(v184 + 80) + 16) & ~*(v184 + 80);
            v135 = swift_allocObject();
            sub_1BD834430(v133, v135 + v134, type metadata accessor for AccountServiceSheet);
            v136 = sub_1BD8345B0;
            if (PKOslo2024UIUpdatesEnabled())
            {
              v135, v137, v138, v139, v140, v141, v142, v143;
              v136 = 0;
              v135 = 0;
            }

            v144 = v183;
            *v183 = v118;
            *(v144 + 8) = v114;
            v145 = v190;
            sub_1BD0DE19C(v190, v144 + v66[9], &qword_1EBD45480, &unk_1BE0B8C30);
            sub_1BD830220((v144 + v66[10]));
            sub_1BD17195C(v112, v114);
            v113, v146, v147, v148, v149, v150, v151, v152;
            *(&v113 + 1), v153, v154, v155, v156, v157, v158, v159;
            sub_1BD0DE53C(v145, &qword_1EBD45480, &unk_1BE0B8C30);
            *(v144 + v66[11]) = 0;
            v160 = (v144 + v66[12]);
            *v160 = v136;
            v160[1] = v135;
            v161 = v182;
            sub_1BD0DE204(v144, v182, &qword_1EBD55368, &qword_1BE0FBFD0);
            sub_1BD0DE204(v161, v67, &qword_1EBD55368, &qword_1BE0FBFD0);
            v88 = 0;
            goto LABEL_31;
          }

          sub_1BD17195C(v202, *(&v202 + 1));
        }

        v113, v105, v106, v107, v108, v109, v110, v111;
        *(&v113 + 1), v162, v163, v164, v165, v166, v167, v168;
        goto LABEL_31;
      }

      sub_1BD834500(v36, type metadata accessor for PeerPaymentModel);
    }

    v65 = 1;
    v66 = v196;
    v67 = v195;
    goto LABEL_23;
  }

  v61 = *(v199 + 56);

  return v61(a1, 1, 1, v3, v40);
}

uint64_t sub_1BD82D600@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55328, &qword_1BE0FBF70);
  MEMORY[0x1EEE9AC00](v3);
  v167 = (&v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v173 = (&v162 - v6);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55330, &qword_1BE0FBF78);
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v162 - v7;
  v8 = type metadata accessor for AccountServiceSheet(0);
  v168 = *(v8 - 8);
  v9 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v169 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v178 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55338, &qword_1BE0FBF80);
  MEMORY[0x1EEE9AC00](v175);
  v13 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v170 = (&v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v162 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v162 - v24);
  v26 = type metadata accessor for PeerPaymentModel(0);
  v27 = *(v26 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55340, &qword_1BE0FBF88);
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v177 = v1;
  if (*(*(v1 + 8) + qword_1EBDAB038) == 2)
  {
    v163 = &v162 - v32;
    v164 = v31;
    v165 = v30;
    v162 = v3;
    v166 = a1;
    KeyPath = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_1BE04D8B4(v25);
    KeyPath, v36, v37, v38, v39, v40, v41, v42;
    v35, v43, v44, v45, v46, v47, v48, v49;
    v50 = *(v27 + 48);
    if (v50(v25, 1, v26) == 1)
    {
      sub_1BD0DE53C(v25, &qword_1EBD45480, &unk_1BE0B8C30);
    }

    else
    {
      v53 = v25;
      v54 = v179;
      sub_1BD834430(v53, v179, type metadata accessor for PeerPaymentModel);
      if (v54[v26[13]] == 1)
      {
        sub_1BD834498(&v54[v26[5]], v178, type metadata accessor for AvailablePass);
        (*(v27 + 56))(v22, 1, 1, v26);
        if (PKOslo2024UIUpdatesEnabled())
        {
          v173 = 0;
          v55 = 0;
          v56 = v175;
        }

        else
        {
          v56 = v175;
          if (v54[v26[12]])
          {
            v132 = v169;
            sub_1BD834498(v177, v169, type metadata accessor for AccountServiceSheet);
            v133 = (*(v168 + 80) + 16) & ~*(v168 + 80);
            v55 = swift_allocObject();
            sub_1BD834430(v132, v55 + v133, type metadata accessor for AccountServiceSheet);
            v173 = sub_1BD8343BC;
          }

          else
          {
            v173 = 0;
            v55 = 0;
          }
        }

        v175 = v56[16];
        v13[v175] = 0;
        v142 = v56[17];
        *&v13[v142] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
        swift_storeEnumTagMultiPayload();
        v143 = sub_1BE051C54();
        v144 = 40.0;
        if (v143)
        {
          v144 = 36.0;
        }

        *&v13[v56[18]] = v144;
        v145 = v56[19];
        v13[v145] = (sub_1BE051C54() & 1) == 0;
        v146 = v178;
        sub_1BD834498(v178, v13, type metadata accessor for AvailablePass);
        *&v13[v56[9]] = 0;
        sub_1BD0DE19C(v22, &v13[v56[10]], &qword_1EBD45480, &unk_1BE0B8C30);
        v147 = &v13[v56[11]];
        *(v147 + 3) = 0u;
        *(v147 + 4) = 0u;
        *(v147 + 1) = 0u;
        *(v147 + 2) = 0u;
        *v147 = 0u;
        sub_1BD830838(v177, &v13[v56[12]]);
        sub_1BD834500(v146, type metadata accessor for AvailablePass);
        v148 = &v13[v56[13]];
        *(v148 + 4) = 0;
        *v148 = 0u;
        *(v148 + 1) = 0u;
        v149 = &v13[v56[14]];
        *v149 = v173;
        v149[1] = v55;
        v150 = &v13[v56[15]];
        *v150 = 0;
        *(v150 + 1) = 0;
        v151 = v171;
        sub_1BD0DE204(v22, v171, &qword_1EBD45480, &unk_1BE0B8C30);
        if (v50(v151, 1, v26) == 1)
        {
          sub_1BD0DE53C(v151, &qword_1EBD45480, &unk_1BE0B8C30);
          v152 = v179;
        }

        else
        {
          v153 = (v151 + v26[6]);
          v154 = v153[3];
          v183 = v153[2];
          v184 = v154;
          v155 = v153[5];
          v185 = v153[4];
          v186 = v155;
          v156 = v153[1];
          v181 = *v153;
          v182 = v156;
          sub_1BD0DE19C(&v181, v180, &unk_1EBD521D0, qword_1BE0BEDC0);
          sub_1BD834500(v151, type metadata accessor for PeerPaymentModel);
          v152 = v179;
          if (v181 != 1)
          {
            v157 = *(&v182 + 1);
            v158 = v186;
            sub_1BD0DE53C(&v181, &unk_1EBD521D0, qword_1BE0BEDC0);
            if (v157 || (v158 & 1) != 0)
            {
              v13[v175] = 1;
            }
          }
        }

        v159 = v172;
        sub_1BD0DE204(v13, v172, &qword_1EBD55338, &qword_1BE0FBF80);
        sub_1BD0DE19C(v159, v176, &qword_1EBD55338, &qword_1BE0FBF80);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD55350, &qword_1EBD55338, &qword_1BE0FBF80, &unk_1BE0B9C48);
        sub_1BD0DE4F4(&qword_1EBD55358, &qword_1EBD55328, &qword_1BE0FBF70, &unk_1BE0BDE40);
        v117 = v163;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v159, &qword_1EBD55338, &qword_1BE0FBF80);
        sub_1BD834500(v152, type metadata accessor for PeerPaymentModel);
        goto LABEL_32;
      }

      sub_1BD834500(v54, type metadata accessor for PeerPaymentModel);
    }

    v57 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    sub_1BE04D8B4(&v181);
    v57, v59, v60, v61, v62, v63, v64, v65;
    v58, v66, v67, v68, v69, v70, v71, v72;
    v80 = v181;
    v81 = v182;
    if (v181)
    {
      if (v181 == 1)
      {
LABEL_21:
        v141 = 1;
        v117 = v163;
LABEL_33:
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55348, &qword_1BE0FBF90);
        (*(*(v160 - 8) + 56))(v117, v141, 1, v160);
        v161 = v166;
        sub_1BD0DE204(v117, v166, &qword_1EBD55340, &qword_1BE0FBF88);
        return (*(v164 + 56))(v161, 0, 1, v165);
      }

      v82 = *(&v181 + 1);
      if (v183)
      {
        v83 = swift_getKeyPath();
        v84 = swift_getKeyPath();
        v179 = v82;
        v85 = v80;
        sub_1BE04D8B4(v170);
        v83, v86, v87, v88, v89, v90, v91, v92;
        v84, v93, v94, v95, v96, v97, v98, v99;
        v100 = v169;
        sub_1BD834498(v177, v169, type metadata accessor for AccountServiceSheet);
        v101 = (*(v168 + 80) + 16) & ~*(v168 + 80);
        v102 = swift_allocObject();
        sub_1BD834430(v100, v102 + v101, type metadata accessor for AccountServiceSheet);
        v103 = sub_1BD8345AC;
        if (PKOslo2024UIUpdatesEnabled())
        {
          v102, v104, v105, v106, v107, v108, v109, v110;
          v103 = 0;
          v102 = 0;
        }

        v111 = v162;
        v112 = v167;
        *v167 = v85;
        *(v112 + 8) = v82;
        sub_1BD0DE204(v170, v112 + v111[9], &qword_1EBD45480, &unk_1BE0B8C30);
        *(v112 + v111[10]) = 1;
        *(v112 + v111[11]) = 1;
        v113 = (v112 + v111[12]);
        *v113 = v103;
        v113[1] = v102;
        v114 = v173;
        sub_1BD0DE204(v112, v173, &qword_1EBD55328, &qword_1BE0FBF70);
        sub_1BD0DE19C(v114, v176, &qword_1EBD55328, &qword_1BE0FBF70);
        swift_storeEnumTagMultiPayload();
        v178 = sub_1BD0DE4F4(&qword_1EBD55350, &qword_1EBD55338, &qword_1BE0FBF80, &unk_1BE0B9C48);
        sub_1BD0DE4F4(&qword_1EBD55358, &qword_1EBD55328, &qword_1BE0FBF70, &unk_1BE0BDE40);
        v115 = v85;
        v116 = v179;
        v117 = v163;
        sub_1BE04F9A4();
        sub_1BD17195C(v80, v82);

        v81, v118, v119, v120, v121, v122, v123, v124;
        *(&v81 + 1), v125, v126, v127, v128, v129, v130, v131;
        sub_1BD0DE53C(v173, &qword_1EBD55328, &qword_1BE0FBF70);
LABEL_32:
        v141 = 0;
        goto LABEL_33;
      }

      sub_1BD17195C(v181, *(&v181 + 1));
    }

    v81, v73, v74, v75, v76, v77, v78, v79;
    *(&v81 + 1), v134, v135, v136, v137, v138, v139, v140;
    goto LABEL_21;
  }

  v51 = *(v31 + 56);

  return v51(a1, 1, 1, v33);
}

uint64_t sub_1BD82E414@<X0>(uint64_t a1@<X8>)
{
  v150 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551C0, &qword_1BE0FBE40);
  v148 = *(v2 - 8);
  v149 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v144 = &v111[-v3];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551C8, &qword_1BE0FBE48);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v111[-v4];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551D0, &qword_1BE0FBE50);
  v126 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v125 = &v111[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551D8, &qword_1BE0FBE58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v111[-v10];
  v132 = sub_1BE04C624();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v111[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551E0, &qword_1BE0FBE60);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v111[-v12];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551E8, &qword_1BE0FBE68);
  MEMORY[0x1EEE9AC00](v139);
  v153 = &v111[-v13];
  v14 = type metadata accessor for AccountServiceSheet(0);
  v129 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v130 = v15;
  v145 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BE04C894();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v111[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111[-v20];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551F0, &qword_1BE0FBE70);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v23 = &v111[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD551F8, &qword_1BE0FBE78);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v138 = &v111[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v151 = &v111[-v27];
  v133 = v1;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1BE04D8B4(v156);
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v45 = v156[0];
  if (!v156[0])
  {
    return (*(v148 + 56))(v150, 1, 1, v149);
  }

  v124 = v8;
  v114 = v111;
  v122 = v156[1];
  v121 = v156[2];
  v120 = v156[3];
  v119 = v156[4];
  v118 = v156[5];
  v117 = v156[6];
  MEMORY[0x1EEE9AC00](v44);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v48 = *MEMORY[0x1E69BC9E8];
  v146 = v17;
  v49 = *(v17 + 104);
  v113 = v21;
  v112 = v48;
  v147 = v16;
  v115 = v49;
  v49(v21, v47);
  v123 = v45;
  v116 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55200, &qword_1BE0FBEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B60, &qword_1BE0CE600);
  sub_1BD83428C(&qword_1EBD55208, &qword_1EBD55200, &qword_1BE0FBEC8, sub_1BD833CE8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B58, &qword_1BE0FE680);
  v51 = sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58, &qword_1BE0FE680, MEMORY[0x1E6981870]);
  v154 = v50;
  v155 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v113;
  sub_1BE04C6B4();
  sub_1BE052434();
  v54 = v53;
  sub_1BD0DE4F4(&qword_1EBD55220, &qword_1EBD551F0, &qword_1BE0FBE70, MEMORY[0x1E69BC928]);
  v55 = v128;
  sub_1BE050DE4();
  v54, v56, v57, v58, v59, v60, v61, v62;
  (*(v127 + 8))(v23, v55);
  v63 = v145;
  sub_1BD834498(v133, v145, type metadata accessor for AccountServiceSheet);
  v64 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v65 = swift_allocObject();
  sub_1BD834430(v63, v65 + v64, type metadata accessor for AccountServiceSheet);
  LODWORD(v129) = PKOslo2024UIUpdatesEnabled();
  if (v129)
  {
    v65, v66, v67, v68, v69, v70, v71, v72;
    v145 = 0;
    v130 = 0;
    v73 = v112;
  }

  else
  {
    v145 = v65;
    v73 = *MEMORY[0x1E69BCA00];
    v130 = sub_1BD8345AC;
  }

  v75 = v152;
  v76 = v147;
  v77 = v115(v152, v73, v147);
  MEMORY[0x1EEE9AC00](v77);
  v79 = MEMORY[0x1EEE9AC00](v78);
  (*(v146 + 16))(v52, v75, v76, v79);
  (*(v131 + 104))(v134, *MEMORY[0x1E69BC910], v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55228, &qword_1BE0FBED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55230, &qword_1BE0FBEE0);
  sub_1BD833D44();
  sub_1BD83428C(&qword_1EBD55240, &qword_1EBD55230, &qword_1BE0FBEE0, sub_1BD833E00);
  v80 = v135;
  sub_1BE04C6C4();
  sub_1BE052434();
  v82 = v81;
  sub_1BD0DE4F4(&qword_1EBD552A8, &qword_1EBD551E0, &qword_1BE0FBE60, MEMORY[0x1E69BC928]);
  v83 = v153;
  v84 = v137;
  sub_1BE050DE4();
  v82, v85, v86, v87, v88, v89, v90, v91;
  v92 = (*(v136 + 8))(v80, v84);
  if (v129)
  {
    sub_1BD0DE19C(v83, v141, &qword_1EBD551E8, &qword_1BE0FBE68);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD552B0, &qword_1EBD551D0, &qword_1BE0FBE50, MEMORY[0x1E697D680]);
    sub_1BD834114();
    v93 = v143;
    sub_1BE04F9A4();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v92);
    sub_1BD834114();
    v94 = v145;
    sub_1BE048964();
    v95 = v125;
    v145 = v94;
    sub_1BE051704();
    v96 = v126;
    v97 = v142;
    (*(v126 + 16))(v141, v95, v142);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD552B0, &qword_1EBD551D0, &qword_1BE0FBE50, MEMORY[0x1E697D680]);
    v93 = v143;
    sub_1BE04F9A4();
    (*(v96 + 8))(v95, v97);
  }

  v98 = v148;
  v99 = v151;
  v100 = v138;
  sub_1BD0DE19C(v151, v138, &qword_1EBD551F8, &qword_1BE0FBE78);
  v101 = v124;
  sub_1BD0DE19C(v93, v124, &qword_1EBD551D8, &qword_1BE0FBE58);
  v102 = v144;
  sub_1BD0DE19C(v100, v144, &qword_1EBD551F8, &qword_1BE0FBE78);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552C0, &qword_1BE0FBF18);
  sub_1BD0DE19C(v101, &v102[*(v103 + 48)], &qword_1EBD551D8, &qword_1BE0FBE58);

  sub_1BD8341FC(v123, v122, v121, v120, v119, v118, v117);
  sub_1BD0D4744(v130, v145, v104, v105, v106, v107, v108, v109);
  sub_1BD0DE53C(v93, &qword_1EBD551D8, &qword_1BE0FBE58);
  (*(v146 + 8))(v152, v147);
  sub_1BD0DE53C(v99, &qword_1EBD551F8, &qword_1BE0FBE78);
  sub_1BD0DE53C(v101, &qword_1EBD551D8, &qword_1BE0FBE58);
  sub_1BD0DE53C(v100, &qword_1EBD551F8, &qword_1BE0FBE78);
  v110 = v150;
  sub_1BD0DE204(v102, v150, &qword_1EBD551C0, &qword_1BE0FBE40);
  (*(v98 + 56))(v110, 0, 1, v149);
  return sub_1BD0DE53C(v153, &qword_1EBD551E8, &qword_1BE0FBE68);
}

uint64_t sub_1BD82F3CC@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v116 - v5;
  v133 = sub_1BE04FB64();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v116 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v116 - v12;
  v13 = type metadata accessor for Passes(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v116 - v17;
  v135 = type metadata accessor for SheetButton(0);
  MEMORY[0x1EEE9AC00](v135);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v116 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0, &qword_1BE0C5FF0);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v116 - v22;
  v23 = type metadata accessor for AccountServiceSheet(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v125 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v134 = &v116 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v116 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v116 - v39;
  v41 = *(v14 + 56);
  v127 = v13;
  v41(&v116 - v39, 1, 1, v13, v38);
  sub_1BE04C8E4();
  sub_1BD834498(v1, v26, type metadata accessor for AccountServiceSheet);
  v42 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v43 = swift_allocObject();
  sub_1BD834430(v26, v43 + v42, type metadata accessor for AccountServiceSheet);
  if (!PKOslo2024UIUpdatesEnabled())
  {
    v43, v44, v45, v46, v47, v48, v49, v50;
    v55 = 1;
    v56 = v136;
    goto LABEL_27;
  }

  v116 = v43;
  v117 = v40;
  sub_1BD0DE19C(v40, v36, &unk_1EBD43B40, &qword_1BE0D42C0);
  sub_1BD0DE19C(&v141, v140, &qword_1EBD51EC0, &qword_1BE0B7120);
  v51 = *(v135 + 40);
  *&v19[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  v52 = v19;
  swift_storeEnumTagMultiPayload();
  v123 = v36;
  sub_1BD0DE19C(v36, v33, &unk_1EBD43B40, &qword_1BE0D42C0);
  v53 = *(v14 + 48);
  v54 = v127;
  if (v53(v33, 1, v127) == 1)
  {
    sub_1BD0DE53C(v33, &unk_1EBD43B40, &qword_1BE0D42C0);
  }

  else
  {
    v57 = v33;
    v58 = v122;
    sub_1BD834430(v57, v122, type metadata accessor for Passes);
    if (*(v58 + *(v54 + 24)))
    {
      v59 = v121;
      sub_1BD0DE19C(v58, v121, &qword_1EBD520A0, &qword_1BE0B9840);
      v60 = type metadata accessor for AvailablePass(0);
      v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
      sub_1BD0DE53C(v59, &qword_1EBD520A0, &qword_1BE0B9840);
      if (v61 == 1 && !*(*(v58 + *(v54 + 28)) + 16))
      {
        v62 = v119;
        sub_1BD4941F8(v119);
        sub_1BD0DE53C(v62, &qword_1EBD3C3F8, &qword_1BE0DB080);
      }
    }

    sub_1BD834500(v58, type metadata accessor for Passes);
  }

  v63 = v52;
  sub_1BD0DE19C(v140, &v137, &qword_1EBD51EC0, &qword_1BE0B7120);
  v64 = v123;
  v65 = v134;
  if (v138)
  {
    sub_1BD0EF554(&v137, v139);
    __swift_project_boxed_opaque_existential_1(v139, v139[3]);
    v66 = sub_1BE04C704();
    __swift_destroy_boxed_opaque_existential_0(v139, v67, v68, v69, v70, v71, v72, v73);
    if (v66)
    {
      v74 = v54;
      v75 = 5;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1BD0DE53C(&v137, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v76 = v125;
  sub_1BD0DE19C(v64, v125, &unk_1EBD43B40, &qword_1BE0D42C0);
  if (v53(v76, 1, v54) == 1)
  {
    v74 = v54;
    sub_1BD0DE53C(v76, &unk_1EBD43B40, &qword_1BE0D42C0);
LABEL_20:
    v75 = 2;
    goto LABEL_21;
  }

  v77 = v76;
  v78 = v126;
  sub_1BD834430(v77, v126, type metadata accessor for Passes);
  if ((*(v78 + *(v54 + 24)) & 1) == 0 || (v79 = v120, sub_1BD0DE19C(v126, v120, &qword_1EBD520A0, &qword_1BE0B9840), v80 = type metadata accessor for AvailablePass(0), v81 = (*(*(v80 - 8) + 48))(v79, 1, v80), sub_1BD0DE53C(v79, &qword_1EBD520A0, &qword_1BE0B9840), v78 = v126, v81 != 1) || *(*(v126 + *(v54 + 28)) + 16))
  {
    v74 = v54;
    sub_1BD834500(v78, type metadata accessor for Passes);
    goto LABEL_20;
  }

  v74 = v54;
  v111 = v118;
  v112 = v126;
  sub_1BD4941F8(v118);
  v113 = type metadata accessor for UnavailablePass(0);
  v114 = (*(*(v113 - 8) + 48))(v111, 1, v113);
  v115 = v111;
  v65 = v134;
  sub_1BD0DE53C(v115, &qword_1EBD3C3F8, &qword_1BE0DB080);
  sub_1BD834500(v112, type metadata accessor for Passes);
  if (v114 == 1)
  {
    v75 = 2;
  }

  else
  {
    v75 = 4;
  }

LABEL_21:
  v40 = v117;
  *v63 = v75;
  sub_1BD0DE19C(v64, v65, &unk_1EBD43B40, &qword_1BE0D42C0);
  if (v53(v65, 1, v74) == 1)
  {
    sub_1BD0DE53C(v140, &qword_1EBD51EC0, &qword_1BE0B7120);
    sub_1BD0DE53C(v64, &unk_1EBD43B40, &qword_1BE0D42C0);
    sub_1BD0DE53C(v65, &unk_1EBD43B40, &qword_1BE0D42C0);
    v82 = 0;
    v83 = 0;
    v84 = v116;
  }

  else
  {
    v85 = v124;
    sub_1BD0DE19C(v65, v124, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD834500(v65, type metadata accessor for Passes);
    v86 = type metadata accessor for AvailablePass(0);
    v87 = (*(*(v86 - 8) + 48))(v85, 1, v86);
    v84 = v116;
    if (v87 == 1)
    {
      sub_1BD0DE53C(v140, &qword_1EBD51EC0, &qword_1BE0B7120);
      sub_1BD0DE53C(v123, &unk_1EBD43B40, &qword_1BE0D42C0);
      sub_1BD0DE53C(v85, &qword_1EBD520A0, &qword_1BE0B9840);
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v82 = sub_1BD49C81C();
      v83 = v88;
      sub_1BD0DE53C(v140, &qword_1EBD51EC0, &qword_1BE0B7120);
      sub_1BD0DE53C(v123, &unk_1EBD43B40, &qword_1BE0D42C0);
      sub_1BD834500(v85, type metadata accessor for AvailablePass);
    }
  }

  *(v63 + 32) = v82;
  *(v63 + 40) = v83;
  *(v63 + 24) = 0;
  *(v63 + 48) = 0;
  *(v63 + 8) = sub_1BD833C60;
  *(v63 + 16) = v84;
  *(v63 + 56) = 0;
  v89 = v128;
  sub_1BD834430(v63, v128, type metadata accessor for SheetButton);
  sub_1BE052434();
  v91 = v90;
  sub_1BD834560(&unk_1EBD52200, type metadata accessor for SheetButton, &unk_1BE0BE708);
  sub_1BE048964();
  v92 = v130;
  sub_1BE050DE4();
  v91, v93, v94, v95, v96, v97, v98, v99;
  sub_1BD834500(v89, type metadata accessor for SheetButton);
  v100 = v131;
  sub_1BE04FB54();
  sub_1BD25A9C8();
  sub_1BD834560(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v56 = v136;
  v101 = v133;
  sub_1BE050894();
  v84, v102, v103, v104, v105, v106, v107, v108;
  (*(v132 + 8))(v100, v101);
  sub_1BD0DE53C(v92, &unk_1EBD521E0, &qword_1BE0C5FF0);
  v55 = 0;
LABEL_27:
  sub_1BD0DE53C(&v141, &qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BD0DE53C(v40, &unk_1EBD43B40, &qword_1BE0D42C0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0, &qword_1BE0C6048);
  return (*(*(v109 - 8) + 56))(v56, v55, 1, v109);
}

uint64_t sub_1BD830220@<X0>(uint64_t *a2@<X8>)
{
  v31 = a2;
  v2 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD454A8, &qword_1BE0D41D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v30 - v10);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(v11);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  sub_1BD0DE19C(v11, v8, &qword_1EBD454A8, &qword_1BE0D41D8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    result = sub_1BD0DE53C(v11, &qword_1EBD454A8, &qword_1BE0D41D8);
    v29 = 0;
  }

  else
  {
    sub_1BD834430(v8, v5, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
    sub_1BD83046C(v5, &v32);
    sub_1BD834500(v5, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
    result = sub_1BD0DE53C(v11, &qword_1EBD454A8, &qword_1BE0D41D8);
    v29 = v32;
  }

  *v31 = v29;
  return result;
}

uint64_t sub_1BD83046C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = type metadata accessor for AppleCardBillPaymentDetailsView(0);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s15PaymentDateInfoVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B098, &qword_1BE0E27F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PeerPaymentModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD834498(v25, v18, type metadata accessor for AccountServiceAuthorizationModel.AccountServicePaymentDetails);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD834430(v18, v5, _s15PaymentDateInfoVMa);
    sub_1BD834498(v5, v23, _s15PaymentDateInfoVMa);
    sub_1BD834560(&qword_1EBD55388, type metadata accessor for AppleCardBillPaymentDetailsView, &unk_1BE0EC2B0);
    v19 = sub_1BE0518D4();
    v20 = _s15PaymentDateInfoVMa;
    v21 = v5;
  }

  else
  {
    sub_1BD834430(v18, v15, type metadata accessor for PeerPaymentModel);
    sub_1BD834498(v15, v8, type metadata accessor for PeerPaymentModel);
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_1BD6D4050(v8, v11);
    sub_1BD5785A8();
    v19 = sub_1BE0518D4();
    v20 = type metadata accessor for PeerPaymentModel;
    v21 = v15;
  }

  result = sub_1BD834500(v21, v20);
  *v26 = v19;
  return result;
}

void sub_1BD830838(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (*(*(a1 + 8) + qword_1EBDAB048))
  {
    goto LABEL_4;
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v5 + 8))(v8, v4);
    v68[2] = v15;
    v68[3] = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v14) = v21;
    v23 = v22;
    v24 = sub_1BE0502C4();
    v25 = sub_1BE0505F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v24, v26, v28, v30, v32, v33, v34, v35;
    sub_1BD0DDF10(v18, v20, (v14 & 1), v36, v37, v38, v39, v40);
    v23, v41, v42, v43, v44, v45, v46, v47;
    v48 = sub_1BE051234();
    v9 = sub_1BE050564();
    v10 = v49;
    LOBYTE(v20) = v50;
    v12 = v51;
    v48, v49, v50, v51, v52, v53, v54, v55;
    sub_1BD0DDF10(v25, v27, (v29 & 1), v56, v57, v58, v59, v60);
    v31, v61, v62, v63, v64, v65, v66, v67;
    v11 = v20 & 1;
LABEL_4:
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    return;
  }

  __break(1u);
}

id sub_1BD830A7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B440, &qword_1BE0BC570);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v39 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55218, &qword_1BE0FBED0);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && [a2 type] == 4)
  {
    v39 = a3;
    result = PKPassKitUIBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE052404();
      v20 = sub_1BE052404();
      v21 = [v18 URLForResource:v19 withExtension:v20];

      if (v21)
      {
        sub_1BE04A9F4();

        v22 = sub_1BE04A9C4();
        (*(v13 + 8))(v16, v12);
      }

      else
      {
        v22 = 0;
      }

      v24 = PKUIScreenScale();
      v25 = PKUIImageFromPDF(v22, 36.0, 36.0, v24);

      if (v25)
      {
        v26 = sub_1BE051544();
        v27 = v41;
        v28 = v8 + *(v41 + 36);
        v29 = *(sub_1BE04EDE4() + 20);
        v30 = *MEMORY[0x1E697F468];
        v31 = sub_1BE04F684();
        (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
        __asm { FMOV            V0.2D, #8.0 }

        *v28 = _Q0;
        *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
        *v8 = v26;
        sub_1BD0DE204(v8, v11, &qword_1EBD3B440, &qword_1BE0BC570);
        v37 = 0;
      }

      else
      {
        v37 = 1;
        v27 = v41;
      }

      (*(v40 + 56))(v11, v37, 1, v27);
      v38 = v39;
      sub_1BD0DE204(v11, v39, &qword_1EBD55218, &qword_1BE0FBED0);
      return (*(v42 + 56))(v38, 0, 1, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *(v42 + 56);

    return v23(a3, 1, 1, v9, v14);
  }

  return result;
}

uint64_t sub_1BD830EB8(uint64_t a1)
{
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58, &qword_1BE0FE680);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370, &qword_1BE0D4090);
  sub_1BD831078(a1, &v8[*(v9 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58, &qword_1BE0FE680, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  return sub_1BD0DE53C(v8, &qword_1EBD42B58, &qword_1BE0FE680);
}

id sub_1BD831078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v136 = a2;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v135 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v131 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v131 - v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80E0], v2, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v3 + 8))(v5, v2);
    v137 = v17;
    v138 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    LOBYTE(v16) = v23;
    v25 = v24;
    v26 = sub_1BE0502C4();
    v27 = sub_1BE0505F4();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v26, v28, v30, v32, v34, v35, v36, v37;
    sub_1BD0DDF10(v20, v22, (v16 & 1), v38, v39, v40, v41, v42);
    v25, v43, v44, v45, v46, v47, v48, v49;
    v50 = sub_1BE051234();
    v51 = sub_1BE050564();
    v53 = v52;
    LOBYTE(v22) = v54;
    v56 = v55;
    v50, v52, v54, v55, v57, v58, v59, v60;
    sub_1BD0DDF10(v27, v29, (v31 & 1), v61, v62, v63, v64, v65);
    v33, v66, v67, v68, v69, v70, v71, v72;
    v137 = v51;
    v138 = v53;
    v139 = v22 & 1;
    v140 = v56;
    sub_1BE052434();
    v74 = v73;
    v75 = v131;
    sub_1BE050DE4();
    v74, v76, v77, v78, v79, v80, v81, v82;
    sub_1BD0DDF10(v51, v53, (v22 & 1), v83, v84, v85, v86, v87);
    v56, v88, v89, v90, v91, v92, v93, v94;
    v95 = v75;
    if (*(v132 + 32))
    {
      v96 = *(v132 + 24);
      v97 = *(v132 + 32);
    }

    else
    {
      v96 = 0;
      v97 = 0xE000000000000000;
    }

    v137 = v96;
    v138 = v97;
    sub_1BE048C84();
    v98 = sub_1BE0506C4();
    v100 = v99;
    v102 = v101;
    v137 = v98;
    v138 = v99;
    v104 = (v103 & 1);
    v139 = v103 & 1;
    v140 = v101;
    sub_1BE052434();
    v106 = v105;
    v107 = v133;
    sub_1BE050DE4();
    v106, v108, v109, v110, v111, v112, v113, v114;
    sub_1BD0DDF10(v98, v100, v104, v115, v116, v117, v118, v119);
    v102, v120, v121, v122, v123, v124, v125, v126;
    v127 = v134;
    sub_1BD0DE19C(v95, v134, &qword_1EBD452C0, &qword_1BE0B7620);
    v128 = v135;
    sub_1BD0DE19C(v107, v135, &qword_1EBD452C0, &qword_1BE0B7620);
    v129 = v136;
    sub_1BD0DE19C(v127, v136, &qword_1EBD452C0, &qword_1BE0B7620);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380, &unk_1BE0D40A0);
    sub_1BD0DE19C(v128, v129 + *(v130 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v107, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v95, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v128, &qword_1EBD452C0, &qword_1BE0B7620);
    return sub_1BD0DE53C(v127, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD83152C(void *a2@<X8>)
{
  v41[1] = a2;
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55320, &qword_1BE0FBF68);
  MEMORY[0x1EEE9AC00](v41[0]);
  v3 = (v41 - v2);
  v4 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v41 - v8);
  v10 = type metadata accessor for PeerPaymentModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(v9);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    sub_1BD834430(v9, v13, type metadata accessor for PeerPaymentModel);
    if (v13[*(v10 + 52)])
    {
      sub_1BD834498(&v13[*(v10 + 20)], &v6[v4[6]], type metadata accessor for WrappedPass);
      PKPassFrontFaceContentSize();
      *(v6 + 3) = 0x4044000000000000;
      *(v6 + 4) = v31 / v30 * 40.0;
      *v6 = sub_1BD70C870;
      *(v6 + 1) = 0;
      v6[16] = 0;
      v6[v4[7]] = 1;
      *&v6[v4[8]] = 1911;
      sub_1BD834498(v6, v3, type metadata accessor for PassImage);
      swift_storeEnumTagMultiPayload();
      sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
      sub_1BE04F9A4();
      sub_1BD834500(v6, type metadata accessor for PassImage);
      sub_1BD834500(v13, type metadata accessor for PeerPaymentModel);
      return;
    }

    sub_1BD834500(v13, type metadata accessor for PeerPaymentModel);
  }

  v32 = PKPassKitUIBundle();
  v33 = sub_1BE0515F4();
  *v3 = v33;
  swift_storeEnumTagMultiPayload();
  sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
  sub_1BE048964();
  sub_1BE04F9A4();
  v33, v34, v35, v36, v37, v38, v39, v40;
}

uint64_t sub_1BD8319B0@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55298, &qword_1BE0FBF10);
  MEMORY[0x1EEE9AC00](v130);
  v128 = (&v124 - v1);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552C8, &qword_1BE0FBF20);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v124 - v2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55290, &qword_1BE0FBF08);
  MEMORY[0x1EEE9AC00](v139);
  v133 = &v124 - v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552D0, &qword_1BE0FBF28);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v124 - v4;
  v5 = sub_1BE04FF64();
  v134 = *(v5 - 8);
  v135 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55278, &qword_1BE0FBF00);
  MEMORY[0x1EEE9AC00](v124);
  v9 = &v124 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552D8, &qword_1BE0FBF30);
  v125 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127);
  v11 = &v124 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55270, &qword_1BE0FBEF8);
  MEMORY[0x1EEE9AC00](v136);
  v126 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v124 - v14);
  v16 = type metadata accessor for PeerPaymentModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55250, &qword_1BE0FBEE8);
  v141 = *(v20 - 8);
  v142 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v124 - v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(&v146);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  if (v146)
  {
    sub_1BD8341FC(v146, v147, v148, v149, v150, v151, v152);
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_1BE04D8B4(v15);
    v38, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD45480, &unk_1BE0B8C30);
    }

    else
    {
      sub_1BD834430(v15, v19, type metadata accessor for PeerPaymentModel);
      if (v19[*(v16 + 52)] == 1)
      {
        *v9 = sub_1BE04F7C4();
        *(v9 + 1) = 0;
        v9[16] = 1;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552E8, &qword_1BE0FBF40);
        sub_1BD832518(v19, &v9[*(v56 + 44)]);
        sub_1BE04FF44();
        v57 = sub_1BD0DE4F4(&qword_1EBD55280, &qword_1EBD55278, &qword_1BE0FBF00, MEMORY[0x1E6981870]);
        v58 = v124;
        sub_1BE050D14();
        (*(v134 + 8))(v7, v135);
        sub_1BD0DE53C(v9, &qword_1EBD55278, &qword_1BE0FBF00);
        sub_1BE052434();
        v60 = v59;
        v146 = v58;
        v147 = v57;
        swift_getOpaqueTypeConformance2();
        v61 = v126;
        v62 = v127;
        sub_1BE050DE4();
        v60, v63, v64, v65, v66, v67, v68, v69;
        (*(v125 + 8))(v11, v62);
        sub_1BD0DE19C(v61, v138, &qword_1EBD55270, &qword_1BE0FBEF8);
        swift_storeEnumTagMultiPayload();
        sub_1BD833EBC();
        sub_1BD833FE8();
        v70 = v140;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v61, &qword_1EBD55270, &qword_1BE0FBEF8);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260, &qword_1BE0FBEF0);
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        sub_1BD834500(v19, type metadata accessor for PeerPaymentModel);
LABEL_11:
        v55 = v143;
        sub_1BD0DE204(v70, v143, &qword_1EBD55250, &qword_1BE0FBEE8);
        v54 = 0;
        return (*(v141 + 56))(v55, v54, 1, v142);
      }

      sub_1BD834500(v19, type metadata accessor for PeerPaymentModel);
    }

    v70 = v140;
    v72 = swift_getKeyPath();
    v73 = swift_getKeyPath();
    sub_1BE04D8B4(&v146);
    v72, v74, v75, v76, v77, v78, v79, v80;
    v73, v81, v82, v83, v84, v85, v86, v87;
    v88 = v146;
    if (v146 == 1)
    {
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260, &qword_1BE0FBEF0);
      (*(*(v89 - 8) + 56))(v70, 1, 1, v89);
    }

    else
    {
      v90 = v147;
      v127 = v148;
      v140 = v149;
      LOBYTE(v150) = v150 & 1;
      v91 = sub_1BE04F7C4();
      v92 = v128;
      *v128 = v91;
      *(v92 + 8) = 0;
      *(v92 + 16) = 1;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552E0, &qword_1BE0FBF38);
      sub_1BD8330A8(&v146, (v92 + *(v93 + 44)));
      sub_1BE04FF44();
      v94 = sub_1BD0DE4F4(&qword_1EBD552A0, &qword_1EBD55298, &qword_1BE0FBF10, MEMORY[0x1E6981870]);
      v95 = v129;
      v96 = v130;
      sub_1BE050D14();
      (*(v134 + 8))(v7, v135);
      sub_1BD0DE53C(v92, &qword_1EBD55298, &qword_1BE0FBF10);
      sub_1BE052434();
      v98 = v97;
      v144 = v96;
      v145 = v94;
      swift_getOpaqueTypeConformance2();
      v99 = v132;
      v100 = v133;
      sub_1BE050DE4();
      v98, v101, v102, v103, v104, v105, v106, v107;
      (*(v131 + 8))(v95, v99);
      sub_1BD0DE19C(v100, v138, &qword_1EBD55290, &qword_1BE0FBF08);
      swift_storeEnumTagMultiPayload();
      sub_1BD833EBC();
      sub_1BD833FE8();
      sub_1BE04F9A4();
      sub_1BD17195C(v88, v90);
      v127, v108, v109, v110, v111, v112, v113, v114;
      v140, v115, v116, v117, v118, v119, v120, v121;
      sub_1BD0DE53C(v100, &qword_1EBD55290, &qword_1BE0FBF08);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55260, &qword_1BE0FBEF0);
      (*(*(v122 - 8) + 56))(v70, 0, 1, v122);
    }

    goto LABEL_11;
  }

  v54 = 1;
  v55 = v143;
  return (*(v141 + 56))(v55, v54, 1, v142);
}

id sub_1BD832518@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a1;
  v203 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v191 = &v190 - v3;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B8, &unk_1BE0F0340);
  MEMORY[0x1EEE9AC00](v198);
  v192 = &v190 - v4;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F0, &qword_1BE0FBF48);
  MEMORY[0x1EEE9AC00](v196);
  v197 = (&v190 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F8, &qword_1BE0FBF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v202 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v201 = &v190 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v200 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v199 = &v190 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v204 = &v190 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v190 - v22;
  (*(v11 + 104))(v13, *MEMORY[0x1E69B80E0], v10, v21);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v11 + 8))(v13, v10);
    *&v210 = v26;
    *(&v210 + 1) = v28;
    v193 = sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    LOBYTE(v26) = v32;
    v34 = v33;
    v35 = sub_1BE0502C4();
    v36 = sub_1BE0505F4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v35, v37, v39, v41, v43, v44, v45, v46;
    sub_1BD0DDF10(v29, v31, (v26 & 1), v47, v48, v49, v50, v51);
    v34, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_1BE051234();
    v60 = sub_1BE050564();
    v62 = v61;
    LOBYTE(v26) = v63;
    v65 = v64;
    v59, v61, v63, v64, v66, v67, v68, v69;
    sub_1BD0DDF10(v36, v38, (v40 & 1), v70, v71, v72, v73, v74);
    v42, v75, v76, v77, v78, v79, v80, v81;
    *&v210 = v60;
    *(&v210 + 1) = v62;
    LOBYTE(v211) = v26 & 1;
    *(&v211 + 1) = v65;
    sub_1BE052434();
    v83 = v82;
    v194 = v23;
    sub_1BE050DE4();
    v83, v84, v85, v86, v87, v88, v89, v90;
    sub_1BD0DDF10(v60, v62, (v26 & 1), v91, v92, v93, v94, v95);
    v65, v96, v97, v98, v99, v100, v101, v102;
    v103 = &v195[*(type metadata accessor for PeerPaymentModel(0) + 20)];
    *&v210 = sub_1BD4943B0();
    *(&v210 + 1) = v104;
    v105 = sub_1BE0506C4();
    v107 = v106;
    LOBYTE(v62) = v108;
    v110 = v109;
    v111 = sub_1BE051224();
    v112 = sub_1BE050564();
    v114 = v113;
    LOBYTE(v42) = v115;
    v117 = v116;
    v111, v113, v115, v116, v118, v119, v120, v121;
    sub_1BD0DDF10(v105, v107, (v62 & 1), v122, v123, v124, v125, v126);
    v110, v127, v128, v129, v130, v131, v132, v133;
    *&v210 = v112;
    *(&v210 + 1) = v114;
    v134 = (v42 & 1);
    LOBYTE(v211) = v134;
    *(&v211 + 1) = v117;
    sub_1BE052434();
    v136 = v135;
    sub_1BE050DE4();
    v136, v137, v138, v139, v140, v141, v142, v143;
    sub_1BD0DDF10(v112, v114, v134, v144, v145, v146, v147, v148);
    v117, v149, v150, v151, v152, v153, v154, v155;
    v156 = type metadata accessor for AvailablePass(0);
    v157 = *&v103[v156[9]];
    if (v157)
    {
      v158 = v157;
      v159 = [v158 formattedStringValue];
      v195 = v158;
      if (v159)
      {
        v160 = v159;
        v161 = sub_1BE052434();
        v163 = v162;

        v164 = 1;
      }

      else
      {

        v157 = 0;
        v164 = 0;
        v161 = 0;
        v163 = 0;
      }

      v193 = v161;
      v205 = v157;
      v206 = v164;
      v207 = v161;
      v208 = v163;
      v209 = 0;
      sub_1BD68CE48(v157, v164, v161, v163);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
      sub_1BD83428C(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
      sub_1BD83428C(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v174 = v212;
      v175 = v211;
      v176 = v197;
      *v197 = v210;
      v176[1] = v175;
      *(v176 + 32) = v174;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
      sub_1BD68C78C();
      sub_1BD834308();
      v177 = v201;
      sub_1BE04F9A4();

      sub_1BD68CE88(v157, v164, v193, v163);
    }

    else
    {
      v165 = &v103[v156[8]];
      v166 = *(v165 + 1);
      if (v166)
      {
        v167 = *v165;
        v195 = v166;
        v168 = [v195 formattedStringValue];
        if (v168)
        {
          v169 = v168;
          v170 = sub_1BE052434();
          v172 = v171;

          v173 = v167 & 1;
        }

        else
        {

          v173 = 0;
          v166 = 0;
          v170 = 0;
          v172 = 0;
        }

        v205 = v173;
        v206 = v166;
        v207 = v170;
        v208 = v172;
        v209 = 1;
        sub_1BD68CDC8(v173, v166, v170, v172);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
        sub_1BD83428C(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
        sub_1BD83428C(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v180 = v212;
        v181 = v211;
        v182 = v197;
        *v197 = v210;
        v182[1] = v181;
        *(v182 + 32) = v180;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
        sub_1BD68C78C();
        sub_1BD834308();
        v177 = v201;
        sub_1BE04F9A4();

        sub_1BD68CE08(v173, v166, v170, v172);
      }

      else
      {
        v178 = v191;
        sub_1BD0DE19C(&v103[v156[7]], v191, &qword_1EBD39FF0, &unk_1BE0B9CA0);
        v179 = v192;
        sub_1BD3AEF64(v178, v192);
        sub_1BD0DE19C(v179, v197, &qword_1EBD502B8, &unk_1BE0F0340);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
        sub_1BD68C78C();
        sub_1BD834308();
        v177 = v201;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v179, &qword_1EBD502B8, &unk_1BE0F0340);
      }
    }

    v183 = v194;
    v184 = v199;
    sub_1BD0DE19C(v194, v199, &qword_1EBD452C0, &qword_1BE0B7620);
    v185 = v204;
    v186 = v200;
    sub_1BD0DE19C(v204, v200, &qword_1EBD452C0, &qword_1BE0B7620);
    v187 = v202;
    sub_1BD0DE19C(v177, v202, &qword_1EBD552F8, &qword_1BE0FBF50);
    v188 = v203;
    sub_1BD0DE19C(v184, v203, &qword_1EBD452C0, &qword_1BE0B7620);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55310, &qword_1BE0FBF58);
    sub_1BD0DE19C(v186, v188 + *(v189 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE19C(v187, v188 + *(v189 + 64), &qword_1EBD552F8, &qword_1BE0FBF50);
    sub_1BD0DE53C(v177, &qword_1EBD552F8, &qword_1BE0FBF50);
    sub_1BD0DE53C(v185, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v183, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v187, &qword_1EBD552F8, &qword_1BE0FBF50);
    sub_1BD0DE53C(v186, &qword_1EBD452C0, &qword_1BE0B7620);
    return sub_1BD0DE53C(v184, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD8330A8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v233 = a1;
  v234 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v236 = &v228[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v235 = &v228[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v237 = &v228[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v238 = &v228[-v9];
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v228[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10, v12);
  v15 = PKPassKitBundle();
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v11 + 8))(v14, v10);
    v239 = v17;
    v240 = v19;
    v20 = sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v17) = v24;
    v26 = v25;
    v27 = sub_1BE0502C4();
    v28 = sub_1BE0505F4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v27, v29, v31, v33, v35, v36, v37, v38;
    sub_1BD0DDF10(v21, v23, (v17 & 1), v39, v40, v41, v42, v43);
    v26, v44, v45, v46, v47, v48, v49, v50;
    v51 = sub_1BE051234();
    v52 = sub_1BE050564();
    v230 = v53;
    v231 = v52;
    v229 = v54;
    v232 = v55;
    v51, v53, v54, v55, v56, v57, v58, v59;
    sub_1BD0DDF10(v28, v30, (v32 & 1), v60, v61, v62, v63, v64);
    v34, v65, v66, v67, v68, v69, v70, v71;
    v72 = *v233;
    if (*v233 && (v73 = [v72 bankName]) != 0)
    {
      v74 = v73;
      v75 = sub_1BE052434();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v239 = v75;
    v240 = v77;
    v233 = v20;
    v78 = sub_1BE0506C4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = sub_1BE051224();
    v86 = sub_1BE050564();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v85, v87, v89, v91, v93, v94, v95, v96;
    sub_1BD0DDF10(v78, v80, (v82 & 1), v97, v98, v99, v100, v101);
    v84, v102, v103, v104, v105, v106, v107, v108;
    v239 = v86;
    v240 = v88;
    v241 = v90 & 1;
    v242 = v92;
    sub_1BE052434();
    v110 = v109;
    sub_1BE050DE4();
    v110, v111, v112, v113, v114, v115, v116, v117;
    sub_1BD0DDF10(v86, v88, (v90 & 1), v118, v119, v120, v121, v122);
    v92, v123, v124, v125, v126, v127, v128, v129;
    if (v72)
    {
      v130 = sub_1BD41F634(v72);
    }

    else
    {
      v130 = 0;
      v131 = 0xE000000000000000;
    }

    v239 = v130;
    v240 = v131;
    v132 = sub_1BE0506C4();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v139 = sub_1BE0502C4();
    v140 = sub_1BE0505F4();
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v139, v141, v143, v145, v147, v148, v149, v150;
    sub_1BD0DDF10(v132, v134, (v136 & 1), v151, v152, v153, v154, v155);
    v138, v156, v157, v158, v159, v160, v161, v162;
    v163 = sub_1BE051234();
    v164 = sub_1BE050564();
    v166 = v165;
    LOBYTE(v134) = v167;
    v169 = v168;
    v163, v165, v167, v168, v170, v171, v172, v173;
    sub_1BD0DDF10(v140, v142, (v144 & 1), v174, v175, v176, v177, v178);
    v146, v179, v180, v181, v182, v183, v184, v185;
    v239 = v164;
    v240 = v166;
    v241 = v134 & 1;
    v242 = v169;
    sub_1BE052434();
    v187 = v186;
    v188 = v237;
    sub_1BE050DE4();
    v187, v189, v190, v191, v192, v193, v194, v195;
    sub_1BD0DDF10(v164, v166, (v134 & 1), v196, v197, v198, v199, v200);
    v169, v201, v202, v203, v204, v205, v206, v207;
    v208 = v235;
    sub_1BD0DE19C(v238, v235, &qword_1EBD452C0, &qword_1BE0B7620);
    v209 = v236;
    sub_1BD0DE19C(v188, v236, &qword_1EBD452C0, &qword_1BE0B7620);
    v210 = v234;
    v211 = v230;
    v212 = v231;
    *v234 = v231;
    v210[1] = v211;
    v213 = (v229 & 1);
    *(v210 + 16) = v229 & 1;
    v214 = v232;
    v210[3] = v232;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55318, &qword_1BE0FBF60);
    sub_1BD0DE19C(v208, v210 + *(v215 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE19C(v209, v210 + *(v215 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0D7F18(v212, v211, v213);
    sub_1BE048C84();
    sub_1BD0DE53C(v237, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v238, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v209, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v208, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DDF10(v212, v211, v213, v216, v217, v218, v219, v220);
    v214, v221, v222, v223, v224, v225, v226, v227;
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD8336F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BD394CCC(a1);
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516B4();
  return result;
}

void sub_1BD83376C(void *a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v59;
  if (v59 == 1 || (v22 = v60, v21 = v61, v23 = v62, sub_1BE048C84(), sub_1BD833A10(v20, v22, v21, v23), !v21) || (v21, v24, v25, v26, v27, v28, v29, v30, v31 = swift_getKeyPath(), v32 = swift_getKeyPath(), sub_1BE04D8B4(&v59), v31, v33, v34, v35, v36, v37, v38, v39, v32, v40, v41, v42, v43, v44, v45, v46, v47 = v59, v59 != 1) && (v49 = v60, v48 = v61, v50 = v62, sub_1BE048C84(), sub_1BD833A10(v47, v49, v48, v50), v48) && (v58 = v48[2], v48, v51, v52, v53, v54, v55, v56, v57, !v58))
  {
    sub_1BD391D44(0);
  }

  sub_1BD394CCC(a1);
  sub_1BD3EED58(a1);
}

double sub_1BD833920(uint64_t a1, uint64_t a2)
{
  sub_1BD391D44(a1);
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516B4();
  return result;
}

double sub_1BD83399C(uint64_t a1)
{
  sub_1BD6B2184(1, 2u, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38990, &qword_1BE0B7480);
  sub_1BE0516B4();
  return result;
}

void sub_1BD833A10(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 != 1)
  {
    sub_1BD17195C(a1, a2);
    a3, v7, v8, v9, v10, v11, v12, v13;

    a4, v14, v15, v16, v17, v18, v19, v20;
  }
}

uint64_t sub_1BD833A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

id sub_1BD833BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountServiceSheet(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8) + qword_1EBDAAD68;
  [*(v4 + 32) setPeerPaymentAccount_];
  v5 = *v4;

  return [v5 didChangePeerPaymentUsage_];
}

unint64_t sub_1BD833D44()
{
  result = qword_1EBD55238;
  if (!qword_1EBD55238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55228, &qword_1BE0FBED8);
    sub_1BD834560(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55238);
  }

  return result;
}

unint64_t sub_1BD833E30()
{
  result = qword_1EBD55258;
  if (!qword_1EBD55258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55260, &qword_1BE0FBEF0);
    sub_1BD833EBC();
    sub_1BD833FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55258);
  }

  return result;
}

unint64_t sub_1BD833EBC()
{
  result = qword_1EBD55268;
  if (!qword_1EBD55268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55270, &qword_1BE0FBEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55278, &qword_1BE0FBF00);
    sub_1BD0DE4F4(&qword_1EBD55280, &qword_1EBD55278, &qword_1BE0FBF00, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55268);
  }

  return result;
}

unint64_t sub_1BD833FE8()
{
  result = qword_1EBD55288;
  if (!qword_1EBD55288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55290, &qword_1BE0FBF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55298, &qword_1BE0FBF10);
    sub_1BD0DE4F4(&qword_1EBD552A0, &qword_1EBD55298, &qword_1BE0FBF10, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55288);
  }

  return result;
}

unint64_t sub_1BD834114()
{
  result = qword_1EBD552B8;
  if (!qword_1EBD552B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD551E8, &qword_1BE0FBE68);
    sub_1BD0DE4F4(&qword_1EBD552A8, &qword_1EBD551E0, &qword_1BE0FBE60, MEMORY[0x1E69BC928]);
    sub_1BD834560(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD552B8);
  }

  return result;
}

void sub_1BD8341FC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a1)
  {

    a3, v10, v11, v12, v13, v14, v15, v16;
    a5, v17, v18, v19, v20, v21, v22, v23;

    a7, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_1BD83428C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD834308()
{
  result = qword_1EBD55300;
  if (!qword_1EBD55300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD502B8, &unk_1BE0F0340);
    sub_1BD834560(&qword_1EBD55308, type metadata accessor for CashBalanceSubtextView, &unk_1BE0D1948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55300);
  }

  return result;
}

uint64_t sub_1BD834430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD834498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD834500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD834560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD834660@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a3;
  swift_beginAccess();
  return sub_1BD0DE19C(v10 + v19, a6, a4, a5);
}

uint64_t sub_1BD83476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BD0DE19C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

double sub_1BD834818@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD834944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55390, &qword_1BE0FC130);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38[-1] - v5;
  sub_1BD834C68(v1, (&v38[-1] - v5));
  v7 = *v1;
  v39 = *(v2 + 1);
  v8 = v39;
  v9 = swift_allocObject();
  v10 = v2[1];
  *(v9 + 16) = *v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v2 + 32);
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55398, &qword_1BE0FC148) + 36)];
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BD0DE19C(&v39, v38, &qword_1EBD553A0, &qword_1BE0FC150);
  sub_1BD389EB8();
  sub_1BE0528B4();
  *v11 = &unk_1BE0FC140;
  *(v11 + 1) = v9;
  v12 = sub_1BE051D74();
  v38[0] = v7;
  v38[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8, &qword_1BE0FC158);
  sub_1BE0516A4();
  v13 = v38[3];
  KeyPath = swift_getKeyPath();
  v38[0] = v13;
  sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  v23 = &v6[*(v4 + 44)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553B0, &unk_1BE0FC188);
  sub_1BD0DE19C(v13 + v22, v23 + *(v24 + 36), &qword_1EBD3F7D8, &qword_1BE0F4280);
  v13, v25, v26, v27, v28, v29, v30, v31;
  *v23 = v12;
  type metadata accessor for NavigationController();
  sub_1BD8381B4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v32 = sub_1BE04E3C4();
  v33 = sub_1BE04D804();
  v34 = v37;
  sub_1BD0DE19C(v6, v37, &qword_1EBD55390, &qword_1BE0FC130);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553B8, &unk_1BE0FC198) + 36));
  *v35 = v33;
  v35[1] = v32;
  return sub_1BD0DE53C(v6, &qword_1EBD55390, &qword_1BE0FC130);
}

void *sub_1BD834C68@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v341 = a2;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553C0, &qword_1BE0FC1A8);
  MEMORY[0x1EEE9AC00](v339);
  v340 = &v276 - v3;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553C8, &qword_1BE0FC1B0);
  MEMORY[0x1EEE9AC00](v297);
  v298 = (&v276 - v4);
  v5 = sub_1BE049B44();
  v286 = *(v5 - 8);
  v287 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v285 = &v276 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v284 = &v276 - v8;
  v9 = sub_1BE049104();
  v295 = *(v9 - 8);
  v296 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v294 = &v276 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v293 = &v276 - v12;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553D0, &qword_1BE0FC1B8);
  MEMORY[0x1EEE9AC00](v302);
  v310 = &v276 - v13;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553D8, &qword_1BE0FC1C0);
  MEMORY[0x1EEE9AC00](v300);
  v301 = (&v276 - v14);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553E0, &qword_1BE0FC1C8);
  MEMORY[0x1EEE9AC00](v307);
  v303 = &v276 - v15;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553E8, &qword_1BE0FC1D0);
  MEMORY[0x1EEE9AC00](v281);
  v282 = &v276 - v16;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553F0, &qword_1BE0FC1D8);
  MEMORY[0x1EEE9AC00](v292);
  v283 = &v276 - v17;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553F8, &qword_1BE0FC1E0);
  MEMORY[0x1EEE9AC00](v311);
  v313 = &v276 - v18;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55400, &qword_1BE0FC1E8);
  MEMORY[0x1EEE9AC00](v304);
  v306 = &v276 - v19;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55408, &qword_1BE0FC1F0);
  MEMORY[0x1EEE9AC00](v289);
  v290 = &v276 - v20;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55410, &qword_1BE0FC1F8);
  MEMORY[0x1EEE9AC00](v305);
  v291 = &v276 - v21;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55418, &qword_1BE0FC200);
  MEMORY[0x1EEE9AC00](v312);
  v308 = &v276 - v22;
  v288 = type metadata accessor for FinanceKitTransactionTypeView(0);
  MEMORY[0x1EEE9AC00](v288);
  v299 = &v276 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_1BE049834();
  v316 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v315 = &v276 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55420, &qword_1BE0FC208);
  MEMORY[0x1EEE9AC00](v325);
  v314 = &v276 - v25;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55428, &qword_1BE0FC210);
  MEMORY[0x1EEE9AC00](v321);
  v323 = &v276 - v26;
  v327 = type metadata accessor for FinanceKitTransactionDetailView(0);
  MEMORY[0x1EEE9AC00](v327);
  v318 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE049184();
  v328 = *(v28 - 8);
  v329 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v317 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55430, &qword_1BE0FC218);
  MEMORY[0x1EEE9AC00](v338);
  v324 = &v276 - v30;
  v319 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v319);
  v320 = &v276 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v322 = &v276 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v330 = &v276 - v35;
  v36 = sub_1BE048F54();
  v37 = *(v36 - 8);
  v333 = v36;
  v334 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v326 = &v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v331 = &v276 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v276 - v42;
  v44 = sub_1BE0495A4();
  v335 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v332 = &v276 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v276 - v47;
  v49 = sub_1BE049A94();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v276 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = *a1;
  v343 = *a1;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8, &qword_1BE0FC158);
  sub_1BE0516A4();
  v53 = v342[0];
  KeyPath = swift_getKeyPath();
  *&v343 = v53;
  v336 = sub_1BD8381B4(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v55, v56, v57, v58, v59, v60, v61;
  v62 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(&v53[v62], v48, &qword_1EBD3F7D8, &qword_1BE0F4280);
  v53, v63, v64, v65, v66, v67, v68, v69;
  if ((*(v50 + 48))(v48, 1, v49) != 1)
  {
    (*(v50 + 32))(v52, v48, v49);
    v343 = v350;
    sub_1BE0516A4();
    v73 = v342[0];
    v74 = swift_getKeyPath();
    *&v343 = v73;
    sub_1BE04B594();
    v74, v75, v76, v77, v78, v79, v80, v81;
    v82 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
    swift_beginAccess();
    sub_1BD0DE19C(&v73[v82], v43, &qword_1EBD498C8, &unk_1BE0DF580);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v90 = v335;
    if ((*(v335 + 48))(v43, 1, v44) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v70 = &qword_1EBD498C8;
      v71 = &unk_1BE0DF580;
      v72 = v43;
      goto LABEL_6;
    }

    v280 = v52;
    v100 = v332;
    (*(v90 + 32))(v332, v43, v44);
    v343 = v350;
    sub_1BE0516A4();
    v101 = v342[0];
    v102 = swift_getKeyPath();
    *&v343 = v101;
    sub_1BE04B594();
    v102, v103, v104, v105, v106, v107, v108, v109;
    v110 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
    swift_beginAccess();
    v48 = v330;
    sub_1BD0DE19C(&v101[v110], v330, &qword_1EBD3F788, &unk_1BE0E2970);
    v101, v111, v112, v113, v114, v115, v116, v117;
    v118 = v333;
    v119 = v334;
    if ((*(v334 + 48))(v48, 1, v333) == 1)
    {
      (*(v90 + 8))(v100, v44);
      (*(v50 + 8))(v280, v49);
      v70 = &qword_1EBD3F788;
      v71 = &unk_1BE0E2970;
      goto LABEL_3;
    }

    (*(v119 + 32))(v331, v48, v118);
    v278 = v50;
    v120 = *(v50 + 16);
    v121 = v49;
    v122 = v322;
    v279 = v121;
    v120(v322, v280);
    v123 = v319;
    v124 = *(v90 + 16);
    v125 = v122 + *(v319 + 20);
    v330 = v44;
    v124(v125, v100, v44);
    v343 = v350;
    sub_1BE0516A4();
    v126 = v342[0];
    v127 = v122 + v123[6];
    v277 = *(v328 + 16);
    v277(v127, v342[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v329);
    v126, v128, v129, v130, v131, v132, v133, v134;
    v343 = v350;
    sub_1BE0516A4();
    v135 = v342[0];
    v136 = swift_getKeyPath();
    *&v343 = v135;
    sub_1BE04B594();
    v136, v137, v138, v139, v140, v141, v142, v143;
    v144 = *&v135[OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights];
    sub_1BE048C84();
    v135, v145, v146, v147, v148, v149, v150, v151;
    sub_1BD735DE0(v144, v122 + v123[7]);
    v144, v152, v153, v154, v155, v156, v157, v158;
    v343 = v350;
    sub_1BE0516A4();
    v159 = v342[0];
    v160 = swift_getKeyPath();
    *&v343 = v159;
    v161 = v334;
    sub_1BE04B594();
    v160, v162, v163, v164, v165, v166, v167, v168;
    v169 = *&v159[OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights];
    sub_1BE048C84();
    v159, v170, v171, v172, v173, v174, v175, v176;
    v177 = v123[8];
    v178 = v333;
    sub_1BD735E14(v169, v122 + v177);
    v169, v179, v180, v181, v182, v183, v184, v185;
    v343 = v350;
    sub_1BE0516A4();
    v186 = *(v342[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style);
    v342[0], v187, v188, v189, v190, v191, v192, v193;
    v194 = v326;
    if (v186)
    {
      goto LABEL_15;
    }

    v343 = v350;
    sub_1BE0516A4();
    v195 = v342[0];
    v196 = v317;
    v197 = v329;
    v277(v317, v342[0] + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v329);
    v195, v198, v199, v200, v201, v202, v203, v204;
    if (sub_1BE049144() == 0xD000000000000021 && 0x80000001BE13C0F0 == v205)
    {
      v205, v205, v206, 0x80000001BE13C0F0, v207, v208, v209, v210;
      (*(v328 + 8))(v196, v197);
      v178 = v333;
      v161 = v334;
LABEL_15:
      v221 = v320;
      sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
      (*(v161 + 16))(v194, v331, v178);
      v222 = v318;
      sub_1BD80B518(v221, v194, v318);
      sub_1BD837DB0(v222, v323, type metadata accessor for FinanceKitTransactionDetailView);
      swift_storeEnumTagMultiPayload();
      sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
      sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &qword_1BE0FC208, sub_1BD83790C);
      v223 = v324;
      sub_1BE04F9A4();
      sub_1BD837E18(v222, type metadata accessor for FinanceKitTransactionDetailView);
LABEL_16:
      sub_1BD0DE19C(v223, v340, &qword_1EBD55430, &qword_1BE0FC218);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55438, &qword_1BE0FC220);
      sub_1BD837770();
      sub_1BD837C4C();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v223, &qword_1EBD55430, &qword_1BE0FC218);
      sub_1BD837E18(v122, type metadata accessor for TransactionContext);
      (*(v161 + 8))(v331, v178);
      (*(v335 + 8))(v332, v330);
      return (*(v278 + 8))(v280, v279);
    }

    v211 = v205;
    v212 = v197;
    v213 = sub_1BE053B84();
    v211, v214, v215, v216, v217, v218, v219, v220;
    (*(v328 + 8))(v196, v212);
    v178 = v333;
    v161 = v334;
    if (v213)
    {
      goto LABEL_15;
    }

    v224 = v315;
    sub_1BE049984();
    v225 = v309;
    v226 = (*(v316 + 88))(v224, v309);
    if (v226 == *MEMORY[0x1E69678B8])
    {
      v227 = v293;
      sub_1BE049564();
      v229 = v294;
      v228 = v295;
      v230 = v296;
      (*(v295 + 104))(v294, *MEMORY[0x1E6967698], v296);
      sub_1BD8381B4(&qword_1EBD554A8, MEMORY[0x1E69676A0], MEMORY[0x1E69676A8]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v231 = *(v228 + 8);
      v231(v229, v230);
      v231(v227, v230);
      v178 = v333;
      if (v343 == v342[0] && (v232 = v284, sub_1BE0499E4(), v234 = v285, v233 = v286, v235 = v287, (*(v286 + 104))(v285, *MEMORY[0x1E6967B10], v287), sub_1BD8381B4(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]), sub_1BE0526E4(), sub_1BE0526E4(), v236 = *(v233 + 8), v236(v234, v235), v236(v232, v235), v343 == LOWORD(v342[0])))
      {
        v237 = v320;
        sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
        v238 = v326;
        (*(v334 + 16))(v326, v331, v178);
        sub_1BD53E90C(v237, v238, &v343);
        v239 = v344;
        v240 = v298;
        *v298 = v343;
        v240[1] = v239;
        v241 = v346;
        v240[2] = v345;
        v240[3] = v241;
        swift_storeEnumTagMultiPayload();
        sub_1BD837BF8();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
        v242 = v310;
        sub_1BE04F9A4();
      }

      else
      {
        v251 = v320;
        sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
        v252 = v326;
        (*(v334 + 16))(v326, v331, v178);
        v253 = v318;
        sub_1BD80B518(v251, v252, v318);
        sub_1BD837DB0(v253, v298, type metadata accessor for FinanceKitTransactionDetailView);
        swift_storeEnumTagMultiPayload();
        sub_1BD837BF8();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
        v242 = v310;
        sub_1BE04F9A4();
        sub_1BD837E18(v253, type metadata accessor for FinanceKitTransactionDetailView);
      }

      v223 = v324;
      sub_1BD0DE19C(v242, v301, &qword_1EBD553D0, &qword_1BE0FC1B8);
      swift_storeEnumTagMultiPayload();
      sub_1BD837BF8();
      sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &qword_1BE0FC1B8, sub_1BD837BF8);
      v254 = v303;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v254, v306, &qword_1EBD553E0, &qword_1BE0FC1C8);
      swift_storeEnumTagMultiPayload();
      sub_1BD837998();
      sub_1BD837B40();
      v255 = v308;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v254, &qword_1EBD553E0, &qword_1BE0FC1C8);
      sub_1BD0DE19C(v255, v313, &qword_1EBD55418, &qword_1BE0FC200);
      swift_storeEnumTagMultiPayload();
      sub_1BD83790C();
      sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
      v250 = v314;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v255, &qword_1EBD55418, &qword_1BE0FC200);
      sub_1BD0DE53C(v310, &qword_1EBD553D0, &qword_1BE0FC1B8);
      goto LABEL_42;
    }

    v223 = v324;
    v178 = v333;
    v243 = v331;
    v244 = v320;
    if (v226 != *MEMORY[0x1E6967850] && v226 != *MEMORY[0x1E69678A0] && v226 != *MEMORY[0x1E69678B0] && v226 != *MEMORY[0x1E6967878] && v226 != *MEMORY[0x1E69678C0] && v226 != *MEMORY[0x1E6967890] && v226 != *MEMORY[0x1E69678C8])
    {
      if (v226 == *MEMORY[0x1E6967870])
      {
        goto LABEL_29;
      }

      if (v226 == *MEMORY[0x1E69678D0])
      {
        *(&v344 + 1) = &type metadata for BankConnectFeatureFlags;
        *&v345 = sub_1BD1671B0();
        LOBYTE(v343) = 2;
        v256 = sub_1BE04C584();
        __swift_destroy_boxed_opaque_existential_0(&v343, v257, v258, v259, v260, v261, v262, v263);
        sub_1BD837DB0(v122, v244, type metadata accessor for TransactionContext);
        (*(v334 + 16))(v194, v243, v178);
        if (v256)
        {
          v264 = v194;
          v265 = v299;
          sub_1BD590CB0(v244, v264, v299);
          sub_1BD837DB0(v265, v282, type metadata accessor for FinanceKitTransactionTypeView);
          swift_storeEnumTagMultiPayload();
          sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
          v266 = v283;
          sub_1BE04F9A4();
          v267 = type metadata accessor for FinanceKitTransactionTypeView;
          v268 = v265;
        }

        else
        {
          v273 = v318;
          sub_1BD80B518(v244, v194, v318);
          sub_1BD837DB0(v273, v282, type metadata accessor for FinanceKitTransactionDetailView);
          swift_storeEnumTagMultiPayload();
          sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
          v266 = v283;
          sub_1BE04F9A4();
          v267 = type metadata accessor for FinanceKitTransactionDetailView;
          v268 = v273;
        }

        sub_1BD837E18(v268, v267);
        sub_1BD0DE19C(v266, v290, &qword_1EBD553F0, &qword_1BE0FC1D8);
        swift_storeEnumTagMultiPayload();
        sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
        sub_1BD837A54();
        v274 = v291;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v274, v306, &qword_1EBD55410, &qword_1BE0FC1F8);
        swift_storeEnumTagMultiPayload();
        sub_1BD837998();
        sub_1BD837B40();
        v275 = v308;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v274, &qword_1EBD55410, &qword_1BE0FC1F8);
        sub_1BD0DE19C(v275, v313, &qword_1EBD55418, &qword_1BE0FC200);
        swift_storeEnumTagMultiPayload();
        sub_1BD83790C();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
        v250 = v314;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v275, &qword_1EBD55418, &qword_1BE0FC200);
        sub_1BD0DE53C(v283, &qword_1EBD553F0, &qword_1BE0FC1D8);
        goto LABEL_42;
      }

      if (v226 != *MEMORY[0x1E6967858] && v226 != *MEMORY[0x1E6967880] && v226 != *MEMORY[0x1E6967868] && v226 != *MEMORY[0x1E6967898])
      {
        if (v226 != *MEMORY[0x1E69678A8])
        {
          sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
          (*(v334 + 16))(v194, v243, v178);
          v269 = v318;
          sub_1BD80B518(v244, v194, v318);
          sub_1BD837DB0(v269, v313, type metadata accessor for FinanceKitTransactionDetailView);
          swift_storeEnumTagMultiPayload();
          sub_1BD83790C();
          sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
          v250 = v314;
          sub_1BE04F9A4();
          sub_1BD837E18(v269, type metadata accessor for FinanceKitTransactionDetailView);
          (*(v316 + 8))(v315, v225);
          goto LABEL_42;
        }

LABEL_29:
        sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
        (*(v334 + 16))(v194, v243, v178);
        sub_1BD53E90C(v244, v194, &v343);
        v245 = v344;
        v246 = v301;
        *v301 = v343;
        v246[1] = v245;
        v247 = v346;
        v246[2] = v345;
        v246[3] = v247;
        swift_storeEnumTagMultiPayload();
        sub_1BD53E1DC(&v343, v342);
        sub_1BD837BF8();
        sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &qword_1BE0FC1B8, sub_1BD837BF8);
        v248 = v303;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v248, v306, &qword_1EBD553E0, &qword_1BE0FC1C8);
        swift_storeEnumTagMultiPayload();
        sub_1BD837998();
        sub_1BD837B40();
        v249 = v308;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v248, &qword_1EBD553E0, &qword_1BE0FC1C8);
        sub_1BD0DE19C(v249, v313, &qword_1EBD55418, &qword_1BE0FC200);
        swift_storeEnumTagMultiPayload();
        sub_1BD83790C();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
        v250 = v314;
        sub_1BE04F9A4();
        sub_1BD837D5C(&v343);
        sub_1BD0DE53C(v249, &qword_1EBD55418, &qword_1BE0FC200);
LABEL_42:
        sub_1BD0DE19C(v250, v323, &qword_1EBD55420, &qword_1BE0FC208);
        swift_storeEnumTagMultiPayload();
        sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
        sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &qword_1BE0FC208, sub_1BD83790C);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v250, &qword_1EBD55420, &qword_1BE0FC208);
        v161 = v334;
        goto LABEL_16;
      }
    }

    sub_1BD837DB0(v122, v320, type metadata accessor for TransactionContext);
    (*(v334 + 16))(v194, v243, v178);
    v270 = v299;
    sub_1BD590CB0(v244, v194, v299);
    sub_1BD837DB0(v270, v290, type metadata accessor for FinanceKitTransactionTypeView);
    swift_storeEnumTagMultiPayload();
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
    sub_1BD837A54();
    v271 = v291;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v271, v306, &qword_1EBD55410, &qword_1BE0FC1F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD837998();
    sub_1BD837B40();
    v272 = v308;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v271, &qword_1EBD55410, &qword_1BE0FC1F8);
    sub_1BD0DE19C(v272, v313, &qword_1EBD55418, &qword_1BE0FC200);
    swift_storeEnumTagMultiPayload();
    sub_1BD83790C();
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
    v250 = v314;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v272, &qword_1EBD55418, &qword_1BE0FC200);
    sub_1BD837E18(v299, type metadata accessor for FinanceKitTransactionTypeView);
    goto LABEL_42;
  }

  v70 = &qword_1EBD3F7D8;
  v71 = &qword_1BE0F4280;
LABEL_3:
  v72 = v48;
LABEL_6:
  sub_1BD0DE53C(v72, v70, v71);
  v91 = [objc_opt_self() systemGroupedBackgroundColor];
  v92 = sub_1BE0511C4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v93 = sub_1BE04EC54();
  v94 = sub_1BE0501D4();
  v95 = v345;
  v96 = v340;
  *(v340 + 56) = v346;
  v97 = v348;
  *(v96 + 72) = v347;
  *(v96 + 88) = v97;
  *(v96 + 104) = v349;
  v98 = v344;
  *(v96 + 8) = v343;
  *(v96 + 24) = v98;
  *v96 = v92;
  *(v96 + 40) = v95;
  *(v96 + 120) = v93;
  *(v96 + 128) = v94;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55438, &qword_1BE0FC220);
  sub_1BD837770();
  sub_1BD837C4C();
  return sub_1BE04F9A4();
}

uint64_t sub_1BD837234(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1BE04D214();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD837328, v4, v3);
}

uint64_t sub_1BD837328()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD553A8, &qword_1BE0FC158);
  sub_1BE0516A4();
  *(v0 + 96) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BD8373E8;

  return sub_1BD737F84();
}

uint64_t sub_1BD8373E8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
    v12 = sub_1BD837504;
  }

  else
  {
    *(v2 + 96), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
    v12 = sub_1BD73F510;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD837504(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 96);
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE04D114();
  v18 = v9;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v8 + 112);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BD026000, v19, v20, "Failed to load transaction view with error: %@", v23, 0xCu);
    sub_1BD0DE53C(v24, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 56) + 8))(*(v8 + 64), *(v8 + 48));

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BD8376DC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD837234(v0 + 16);
}

unint64_t sub_1BD837770()
{
  result = qword_1EBD55440;
  if (!qword_1EBD55440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55430, &qword_1BE0FC218);
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
    sub_1BD837858(&qword_1EBD55450, &qword_1EBD55420, &qword_1BE0FC208, sub_1BD83790C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55440);
  }

  return result;
}

uint64_t sub_1BD837858(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD83790C()
{
  result = qword_1EBD55458;
  if (!qword_1EBD55458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55418, &qword_1BE0FC200);
    sub_1BD837998();
    sub_1BD837B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55458);
  }

  return result;
}

unint64_t sub_1BD837998()
{
  result = qword_1EBD55460;
  if (!qword_1EBD55460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55410, &qword_1BE0FC1F8);
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
    sub_1BD837A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55460);
  }

  return result;
}

unint64_t sub_1BD837A54()
{
  result = qword_1EBD55470;
  if (!qword_1EBD55470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553F0, &qword_1BE0FC1D8);
    sub_1BD8381B4(&qword_1EBD55468, type metadata accessor for FinanceKitTransactionTypeView, &unk_1BE0E3270);
    sub_1BD8381B4(&qword_1EBD55448, type metadata accessor for FinanceKitTransactionDetailView, &unk_1BE0FB7B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55470);
  }

  return result;
}

unint64_t sub_1BD837B40()
{
  result = qword_1EBD55478;
  if (!qword_1EBD55478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553E0, &qword_1BE0FC1C8);
    sub_1BD837BF8();
    sub_1BD837858(&qword_1EBD55488, &qword_1EBD553D0, &qword_1BE0FC1B8, sub_1BD837BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55478);
  }

  return result;
}

unint64_t sub_1BD837BF8()
{
  result = qword_1EBD55480;
  if (!qword_1EBD55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55480);
  }

  return result;
}

unint64_t sub_1BD837C4C()
{
  result = qword_1EBD55490;
  if (!qword_1EBD55490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55438, &qword_1BE0FC220);
    sub_1BD837CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55490);
  }

  return result;
}

unint64_t sub_1BD837CD8()
{
  result = qword_1EBD55498;
  if (!qword_1EBD55498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554A0, &qword_1BE0FC228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55498);
  }

  return result;
}

uint64_t sub_1BD837DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD837E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD837E78()
{
  result = qword_1EBD554B0;
  if (!qword_1EBD554B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD553B8, &unk_1BE0FC198);
    sub_1BD837F30();
    sub_1BD0DE4F4(&qword_1EBD554F0, &qword_1EBD554F8, &qword_1BE0FC2B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554B0);
  }

  return result;
}

unint64_t sub_1BD837F30()
{
  result = qword_1EBD554B8;
  if (!qword_1EBD554B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55390, &qword_1BE0FC130);
    sub_1BD837FE8();
    sub_1BD0DE4F4(&qword_1EBD554E8, &qword_1EBD553B0, &unk_1BE0FC188, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554B8);
  }

  return result;
}

unint64_t sub_1BD837FE8()
{
  result = qword_1EBD554C0;
  if (!qword_1EBD554C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55398, &qword_1BE0FC148);
    sub_1BD8380A4();
    sub_1BD8381B4(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554C0);
  }

  return result;
}

unint64_t sub_1BD8380A4()
{
  result = qword_1EBD554C8;
  if (!qword_1EBD554C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554D0, &qword_1BE0FC2A8);
    sub_1BD838128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554C8);
  }

  return result;
}

unint64_t sub_1BD838128()
{
  result = qword_1EBD554D8;
  if (!qword_1EBD554D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD554E0, &qword_1BE0FC2B0);
    sub_1BD837770();
    sub_1BD837C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD554D8);
  }

  return result;
}

uint64_t sub_1BD8381B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD838200()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD838274()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD8382E8()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD83835C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1[12];
  v122 = v4;
  v1[7] = v3;
  v13 = *(a1 + 8);
  v123 = *(a1 + 8);
  *(v1 + 4) = v13;
  v1[10] = v4;
  v1[11] = v5;
  v1[12] = v6;
  sub_1BD40FB5C(v7, v8, v9, v10, v11, v12);
  if (v1[3])
  {
    v14 = v3;
    sub_1BD0DE19C(&v123, &v120, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v122, &v120, &qword_1EBD40150, &qword_1BE0C12A0);
    v15 = v5;
    sub_1BE048964();
    sub_1BD78EE98(a1);
    if (!v1[4])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v118 = v3;
  sub_1BD0DE19C(&v123, &v120, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v122, &v120, &qword_1EBD40150, &qword_1BE0C12A0);
  v119 = v5;
  sub_1BE048964();
  if (v1[4])
  {
LABEL_3:
    sub_1BD917644(a1);
  }

LABEL_4:
  if (v1[5])
  {
    sub_1BD7806B8(a1);
  }

  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1BE04D8B4(&v120);
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v17) = v120;
  if (v17 != (sub_1BD83942C() & 1))
  {
    v32 = sub_1BD83942C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v120) = v32 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_1BE04D8B4(&v120);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  v50 = v120;
  v49 = v121;
  v52 = sub_1BD839658();
  v58 = v51;
  if (v50 == v52 && v49 == v51)
  {
    v49, v51, v52, v53, v54, v55, v56, v57;
    v58, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v66 = sub_1BE053B84();
    v49, v67, v68, v69, v70, v71, v72, v73;
    v58, v74, v75, v76, v77, v78, v79, v80;
    if ((v66 & 1) == 0)
    {
      v81 = sub_1BD839658();
      v83 = v82;
      swift_getKeyPath();
      swift_getKeyPath();
      v120 = v81;
      v121 = v83;
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  sub_1BE04D8B4(&v120);
  v84, v86, v87, v88, v89, v90, v91, v92;
  v85, v93, v94, v95, v96, v97, v98, v99;
  v100 = v120;
  v101 = sub_1BD839918();
  v102 = sub_1BD84252C(v100, v101);
  v100, v103, v104, v105, v106, v107, v108, v109;
  v101, v110, v111, v112, v113, v114, v115, v116;
  if ((v102 & 1) == 0)
  {
    v117 = sub_1BD839918();
    swift_getKeyPath();
    swift_getKeyPath();
    v120 = v117;
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

void sub_1BD838704(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD838784(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD8387F8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v20[1];
  *a2 = v20[0];
  a2[1] = v19;
}

uint64_t sub_1BD838878(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD8388FC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD83897C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void *sub_1BD8389F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(a1 + 8);
  v129 = *a1;
  v128 = v5;
  v6 = *(a1 + 24);
  v127 = *(a1 + 16);
  v126 = v6;
  v132 = *(a1 + 32);
  v125 = v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55540, &qword_1BE0FC378);
  v130 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v8 = &v118 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v118 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v118 - v15;
  *(v2 + 11) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 7) = 0u;
  v17 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid;
  LOBYTE(v133) = 0;
  sub_1BE04D874();
  v121 = v14;
  v18 = *(v14 + 32);
  v122 = v13;
  v18(v2 + v17, v16, v13);
  v19 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary;
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_1BE04D874();
  v123 = v10;
  v20 = *(v10 + 32);
  v124 = v9;
  v20(v2 + v19, v12, v9);
  v21 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields;
  v133 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55538, &qword_1BE0FC338);
  sub_1BE04D874();
  (v130[4])(v2 + v21, v8, v131);
  v22 = v132;
  v23 = sub_1BD83A1CC(v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v25 = *MEMORY[0x1E69BB7C0];
  *(inited + 32) = *MEMORY[0x1E69BB7C0];
  v26 = *MEMORY[0x1E69BB7D0];
  v27 = *MEMORY[0x1E69BB7C8];
  *(inited + 40) = *MEMORY[0x1E69BB7D0];
  *(inited + 48) = v27;
  v28 = *MEMORY[0x1E69BB7B8];
  *(inited + 56) = *MEMORY[0x1E69BB7B8];
  v29 = v25;
  v30 = v26;
  v120 = v27;
  v31 = v28;
  LOBYTE(v27) = sub_1BD83A018(inited, v23);
  swift_setDeallocating();
  type metadata accessor for PKContactField(0);
  swift_arrayDestroy();
  if (v27)
  {
    v23, v32, v33, v34, v35, v36, v37, v38;

    v133 = *(a1 + 8);
    sub_1BD0DE53C(&v133, &qword_1EBD3D490, &unk_1BE0D42B0);
    v142 = *(a1 + 24);
    sub_1BD0DE53C(&v142, &qword_1EBD40150, &qword_1BE0C12A0);

    *(a1 + 40), v39, v40, v41, v42, v43, v44, v45;
    sub_1BD40FB5C(v2[7], v2[8], v2[9], v2[10], v2[11], v2[12]);
    (*(v121 + 8))(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid, v122);
    (*(v123 + 8))(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary, v124);
    (v130[1])(v2 + OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields, v131);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v131 = v22;
    v2[2] = v23;
    sub_1BE048C84();
    v46 = sub_1BD6CC0DC(v29, v23);
    v47 = sub_1BD6CC0DC(v30, v23);
    v48 = v47;
    v119 = v31;
    if (v46 & 1) != 0 || (v47)
    {
      v50 = a1;
      v51 = *a1;
      v52 = *(v50 + 8);
      v141 = *(v50 + 24);
      v142 = v52;
      v53 = *(v50 + 40);
      type metadata accessor for PersonName(0);
      swift_allocObject();
      v54 = v51;
      sub_1BD0DE19C(&v142, &v133, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v141, &v133, &qword_1EBD40150, &qword_1BE0C12A0);
      v55 = v131;
      sub_1BE048964();
      v49 = sub_1BD790560(v50, v48 & 1);

      sub_1BD0DE53C(&v142, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(&v141, &qword_1EBD40150, &qword_1BE0C12A0);
      v53, v56, v57, v58, v59, v60, v61, v62;
    }

    else
    {
      v49 = 0;
      v50 = a1;
    }

    v2[3] = v49;
    if (sub_1BD6CC0DC(v120, v23))
    {
      v64 = *v50;
      v63 = *(v50 + 8);
      v139 = *(v50 + 24);
      v140 = v63;
      v65 = *(v50 + 40);
      type metadata accessor for PhoneNumbers(0);
      swift_allocObject();
      v130 = v131;
      v66 = v64;
      sub_1BD0DE19C(&v140, &v133, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v139, &v133, &qword_1EBD40150, &qword_1BE0C12A0);
      sub_1BE048964();
      v67 = sub_1BD9197C0(v50);

      sub_1BD0DE53C(&v140, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(&v139, &qword_1EBD40150, &qword_1BE0C12A0);
      v65, v68, v69, v70, v71, v72, v73, v74;
    }

    else
    {
      v67 = 0;
    }

    v75 = v119;
    v2[4] = v67;
    v76 = sub_1BD6CC0DC(v75, v23);
    v23, v77, v78, v79, v80, v81, v82, v83;
    if (v76)
    {
      v85 = *v50;
      v84 = *(v50 + 8);
      v137 = *(v50 + 24);
      v138 = v84;
      type metadata accessor for EmailAddresses(0);
      swift_allocObject();
      v86 = v131;
      v87 = v131;
      v88 = v85;
      sub_1BD0DE19C(&v138, &v133, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v137, &v133, &qword_1EBD40150, &qword_1BE0C12A0);
      sub_1BE048964();
      v90 = sub_1BD77DAC4(v50, v89);
    }

    else
    {
      v90 = 0;
      v86 = v131;
    }

    v2[5] = v90;
    v91 = [v86 contactFormatValidator];
    v93 = *v50;
    v92 = *(v50 + 8);
    v135 = *(v50 + 24);
    v136 = v92;
    v94 = *(v50 + 40);
    v95 = v2[7];
    v96 = v2[8];
    v97 = v86;
    v98 = v2[9];
    v99 = v2[10];
    v100 = v2[11];
    v101 = v2[12];
    v102 = v129;
    v2[6] = v91;
    v2[7] = v102;
    v103 = v127;
    v2[8] = v128;
    v2[9] = v103;
    v2[10] = v126;
    *(v2 + 11) = v132;
    v104 = v97;
    v105 = v93;
    sub_1BD0DE19C(&v136, &v133, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v135, &v133, &qword_1EBD40150, &qword_1BE0C12A0);
    sub_1BE048964();
    sub_1BD40FB5C(v95, v96, v98, v99, v100, v101);
    LOBYTE(v95) = sub_1BD83942C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v133) = v95 & 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    v106 = sub_1BD839658();
    v108 = v107;
    swift_getKeyPath();
    swift_getKeyPath();
    v133 = v106;
    v134 = v108;
    sub_1BE048964();
    sub_1BE04D8C4();
    v109 = sub_1BD839918();
    swift_getKeyPath();
    swift_getKeyPath();
    v133 = v109;
    sub_1BE048964();
    sub_1BE04D8C4();

    sub_1BD0DE53C(&v136, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v135, &qword_1EBD40150, &qword_1BE0C12A0);
    v94, v110, v111, v112, v113, v114, v115, v116;
  }

  return v2;
}

uint64_t sub_1BD83942C()
{
  v1 = v0[3];
  if (v1)
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v124);
    KeyPath, v4, v5, v6, v7, v8, v9, v10;
    v3, v11, v12, v13, v14, v15, v16, v17;
    if (v124 >> 62)
    {
      v33 = v124;
      v34 = sub_1BE053704();
      v33, v35, v36, v37, v38, v39, v40, v41;
      if (v34)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v25 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v124, v18, v19, v20, v21, v22, v23, v24;
      if (v25)
      {
LABEL_4:
        v1, v26, v27, v28, v29, v30, v31, v32;
        return 0;
      }
    }

    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    sub_1BE04D8B4(&v124);
    v42, v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
    v65 = v124;
    if (v124 >> 62)
    {
      v123 = v124;
      v66 = sub_1BE053704();
      v65 = v123;
    }

    else
    {
      v66 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65, v58, v59, v60, v61, v62, v63, v64;
    v1, v67, v68, v69, v70, v71, v72, v73;
    if (v66)
    {
      return 0;
    }
  }

  v74 = v0[5];
  if (!v74 || (v75 = swift_getKeyPath(), v76 = swift_getKeyPath(), sub_1BE048964(), sub_1BE04D8B4(&v124), v75, v77, v78, v79, v80, v81, v82, v83, v76, v84, v85, v86, v87, v88, v89, v90, v74, v91, v92, v93, v94, v95, v96, v97, v124 == 1))
  {
    v98 = v0[4];
    if (!v98)
    {
      return 1;
    }

    v99 = swift_getKeyPath();
    v100 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v124);
    v99, v101, v102, v103, v104, v105, v106, v107;
    v100, v108, v109, v110, v111, v112, v113, v114;
    v98, v115, v116, v117, v118, v119, v120, v121;
    if (v124 == 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD839658()
{
  v1 = v0;
  if (!*(v0 + 24))
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = sub_1BD78E86C();
  if (!v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v18 = sub_1BD78EB10();
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v8 = v2;
  v9 = v3;
  v14 = sub_1BD03B038(0, 1, 1, MEMORY[0x1E69E7CC0], v4, v5, v6, v7);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1BD03B038((v15 > 1), v16 + 1, 1, v14, v10, v11, v12, v13);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[16 * v16];
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
  v18 = sub_1BD78EB10();
  if (v19)
  {
LABEL_9:
    v20 = v18;
    v21 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1BD03B038(0, *(v14 + 2) + 1, 1, v14, v22, v23, v24, v25);
    }

    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
    if (v27 >= v26 >> 1)
    {
      v14 = sub_1BD03B038((v26 > 1), v27 + 1, 1, v14, v22, v23, v24, v25);
    }

    *(v14 + 2) = v27 + 1;
    v28 = &v14[16 * v27];
    *(v28 + 4) = v20;
    *(v28 + 5) = v21;
  }

LABEL_14:
  if (*(v1 + 40))
  {
    KeyPath = swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_1BE04D8B4(&v81);
    KeyPath, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;
    if (v81)
    {
    }
  }

  if (*(v1 + 32))
  {
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    sub_1BE04D8B4(&v81);
    v45, v47, v48, v49, v50, v51, v52, v53;
    v46, v54, v55, v56, v57, v58, v59, v60;
    v61 = v81;
    if (v81)
    {
      v62 = sub_1BD99F5F8(v81);
      v64 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD03B038(0, *(v14 + 2) + 1, 1, v14, v65, v66, v67, v68);
      }

      v70 = *(v14 + 2);
      v69 = *(v14 + 3);
      if (v70 >= v69 >> 1)
      {
        v14 = sub_1BD03B038((v69 > 1), v70 + 1, 1, v14, v65, v66, v67, v68);
      }

      *(v14 + 2) = v70 + 1;
      v71 = &v14[16 * v70];
      *(v71 + 4) = v62;
      *(v71 + 5) = v64;
    }
  }

  v81 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  sub_1BD03B274();
  v72 = sub_1BE0522E4();
  v14, v73, v74, v75, v76, v77, v78, v79;
  return v72;
}

id sub_1BD839918()
{
  v1 = v0;
  v130 = MEMORY[0x1E69E7CD0];
  v2 = v0[3];
  if (v2)
  {
    swift_retain_n();
    v3 = sub_1BD78E86C();
    if (!v4)
    {
      goto LABEL_7;
    }

    v11 = v3;
    v12 = v4;
    v4, v4, v5, v6, v7, v8, v9, v10;
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1BD2A5794(&v129, *MEMORY[0x1E69BB7C0]);
      v2, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
LABEL_7:
      v2, v4, v5, v6, v7, v8, v9, v10;
    }

    if (*(v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) != 1)
    {
      goto LABEL_14;
    }

    v28 = sub_1BD78EB10();
    if (!v21)
    {
      goto LABEL_14;
    }

    v29 = v28;
    v30 = v21;
    v21, v21, v22, v23, v24, v25, v26, v27;
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_1BD2A5794(&v129, *MEMORY[0x1E69BB7D0]);
      v2, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
LABEL_14:
      v2, v21, v22, v23, v24, v25, v26, v27;
    }
  }

  if (v1[5])
  {
    KeyPath = swift_getKeyPath();
    v40 = swift_getKeyPath();
    sub_1BE04D8B4(&v129);
    KeyPath, v41, v42, v43, v44, v45, v46, v47;
    v40, v48, v49, v50, v51, v52, v53, v54;
    v55 = MEMORY[0x1E69BB7B8];
    if (v129)
    {

      sub_1BD2A5794(&v129, *v55);
    }

    v56 = swift_getKeyPath();
    v57 = swift_getKeyPath();
    sub_1BE04D8B4(&v129);
    v56, v58, v59, v60, v61, v62, v63, v64;
    v57, v65, v66, v67, v68, v69, v70, v71;
    v72 = v129;
    v73 = swift_getKeyPath();
    v74 = swift_getKeyPath();
    sub_1BE04D8B4(&v129);
    v73, v75, v76, v77, v78, v79, v80, v81;
    v74, v82, v83, v84, v85, v86, v87, v88;
    if (v129 != 4 || v72)
    {
      sub_1BD2A5794(&v129, *v55);
    }
  }

  if (v1[4])
  {
    v89 = swift_getKeyPath();
    v90 = swift_getKeyPath();
    sub_1BE04D8B4(&v129);
    v89, v91, v92, v93, v94, v95, v96, v97;
    v90, v98, v99, v100, v101, v102, v103, v104;
    if (v129)
    {

      sub_1BD2A5794(&v129, *MEMORY[0x1E69BB7C8]);
    }
  }

  v105 = v1[2];
  v106 = v130;
  if (v130[2] <= v105[2] >> 3)
  {
    v129 = v105;
    sub_1BE048C84();
    sub_1BD5350D8(v106);
    v106, v122, v123, v124, v125, v126, v127, v128;
    return v129;
  }

  else
  {
    sub_1BE048C84();
    v113 = sub_1BD2ADFEC(v106, v105, v107, v108, v109, v110, v111, v112);
    v106, v114, v115, v116, v117, v118, v119, v120;
    return v113;
  }
}

uint64_t sub_1BD839C80(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 32), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 40), v23, v24, v25, v26, v27, v28, v29;

  sub_1BD40FB5C(*(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96));
  v30 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__isValid;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v31 - 8) + 8))(v8 + v30, v31);
  v32 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__formattedSummary;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  (*(*(v33 - 8) + 8))(v8 + v32, v33);
  v34 = OBJC_IVAR____TtC9PassKitUI15ShippingContact__missingFields;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55540, &qword_1BE0FC378);
  (*(*(v35 - 8) + 8))(v8 + v34, v35);
  return v8;
}

uint64_t sub_1BD839DBC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  sub_1BD839C80(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShippingContact(uint64_t a1)
{
  result = qword_1EBD55520;
  if (!qword_1EBD55520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD839E68(uint64_t a1)
{
  sub_1BD540F14(319, &qword_1EBD368F0, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1BD839FB4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD839FB4(uint64_t a1)
{
  if (!qword_1EBD55530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55538, &qword_1BE0FC338);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD55530);
    }
  }
}

uint64_t sub_1BD83A018(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v59 = *(a1 + 16);
  v60 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    v7 = *(v60 + 8 * v4);
    sub_1BE052434();
    v9 = v8;
    sub_1BE053D04();
    v10 = v7;
    sub_1BE052524();
    v11 = sub_1BE053D64();
    v9, v12, v13, v14, v15, v16, v17, v18;
    v19 = -1 << *(a2 + 32);
    v20 = v11 & ~v19;
    if ((*(v5 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      break;
    }

LABEL_5:

    v2 = v59;
LABEL_6:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v21 = ~v19;
  while (1)
  {
    v22 = sub_1BE052434();
    v24 = v23;
    v26 = sub_1BE052434();
    v27 = v22;
    v28 = v25;
    if (v27 == v26 && v24 == v25)
    {

      v24, v45, v46, v47, v48, v49, v50, v51;
      v28, v52, v53, v54, v55, v56, v57, v58;
      return 0;
    }

    v30 = sub_1BE053B84();
    v24, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    if (v30)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v5 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

id sub_1BD83A1CC(void *a1)
{
  result = [a1 paymentRequest];
  if (result)
  {
    v3 = result;
    v4 = [result requiredShippingContactFields];

    type metadata accessor for PKContactField(0);
    sub_1BD231AF0();
    v5 = sub_1BE052A34();

    v17 = v5;
    v6 = *MEMORY[0x1E69BB7D8];
    sub_1BE048C84();
    v7 = sub_1BD6CC0DC(v6, v5);
    v5, v8, v9, v10, v11, v12, v13, v14;
    if ((v7 & 1) == 0)
    {
      return v17;
    }

    result = [a1 paymentRequest];
    if (result)
    {
      v15 = result;
      v16 = [result shippingContactEditingMode];

      if (v16 == 1)
      {
      }

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI11BankAccountVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD83A334(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BD83A390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BD83A3F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD83A444(v5, v7) & 1;
}

uint64_t sub_1BD83A444(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = v7;
    v9 = v5;
    v10 = sub_1BD41F4F4(v4, v6, v9, v7);

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v5)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    sub_1BE048C84();
    sub_1BD3FFF58(v11, v12);
    v14 = v13;
    v12, v15, v16, v17, v18, v19, v20, v21;
    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v12)
  {
    goto LABEL_16;
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (v22)
  {
    if (v23)
    {
      sub_1BE048C84();
      sub_1BD3FFF58(v22, v23);
      v25 = v24;
      v23, v26, v27, v28, v29, v30, v31, v32;
      if (v25)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v33 = 0;
    return v33 & 1;
  }

  if (v23)
  {
    goto LABEL_16;
  }

LABEL_14:
  v33 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  return v33 & 1;
}

void sub_1BD83A564(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 paymentRequest];
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = v4;
  v6 = [v4 bankAccounts];

  if (!v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45530, 0x1E69B86A8);
  v7 = sub_1BE052744();

  if (v7 >> 62)
  {
    v15 = sub_1BE053704();
    v52 = a2;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = a2;
    if (v15)
    {
LABEL_5:
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        v18 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1BFB40900](v16, v7);
          }

          else
          {
            v21 = *(v7 + 8 * v16 + 32);
          }

          v22 = v21;
          if ([v21 status] == 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1BD1D7A7C(0, *(v17 + 2) + 1, 1, v17, v11, v12, v13, v14);
            }

            v24 = *(v17 + 2);
            v23 = *(v17 + 3);
            v25 = v24 + 1;
            if (v24 >= v23 >> 1)
            {
              v19 = sub_1BD1D7A7C((v23 > 1), v24 + 1, 1, v17, v11, v12, v13, v14);
              v17 = v19;
            }

            else
            {
              v19 = v17;
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_1BD1D7A7C(0, *(v18 + 2) + 1, 1, v18, v11, v12, v13, v14);
            }

            v24 = *(v18 + 2);
            v26 = *(v18 + 3);
            v25 = v24 + 1;
            if (v24 >= v26 >> 1)
            {
              v19 = sub_1BD1D7A7C((v26 > 1), v24 + 1, 1, v18, v11, v12, v13, v14);
              v18 = v19;
            }

            else
            {
              v19 = v18;
            }
          }

          ++v16;
          *(v19 + 2) = v25;
          v20 = &v19[16 * v24];
          *(v20 + 4) = v22;
          *(v20 + 5) = 0;
        }

        while (v15 != v16);
        goto LABEL_25;
      }

      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v7, v8, v9, v10, v11, v12, v13, v14;
  a2 = v52;
LABEL_26:
  v27 = [a1 paymentRequest];
  if (!v27)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = [v27 requestType];
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    *v54 = 0u;
    v55 = 0u;
  }

  v56[0] = *v54;
  v56[1] = v55;
  if (*(&v55 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AD98, 0x1E69B86A0);
    if (swift_dynamicCast())
    {
      v30 = v53;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(v56);
    v30 = 0;
  }

  v31 = [a1 paymentSummaryItems];
  if (!v31)
  {
    v40 = 0;
    if (v29 == 2)
    {
      goto LABEL_43;
    }

LABEL_42:
    v40, v32, v33, v34, v35, v36, v37, v38;
    goto LABEL_43;
  }

  v39 = v31;
  v40 = sub_1BE052744();

  if (v29 != 2)
  {
    goto LABEL_42;
  }

  if (v40)
  {
    if (v40[2] == 3)
    {
      sub_1BD038CD0((v40 + 8), v56);
      v40, v41, v42, v43, v44, v45, v46, v47;
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      if (swift_dynamicCast())
      {
        v48 = [v54[0] amount];
      }

      else
      {
        v48 = 0;
      }

      v51 = [a1 currencyCode];
      v49 = PKCurrencyAmountMake();

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_43:
  v49 = 0;
LABEL_44:
  v50 = [a1 bankAccount];

  if (!v50)
  {

    v49 = 0;
  }

  *a2 = v50;
  *(a2 + 8) = v49;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17;
  *(a2 + 32) = v30 != 0;
}