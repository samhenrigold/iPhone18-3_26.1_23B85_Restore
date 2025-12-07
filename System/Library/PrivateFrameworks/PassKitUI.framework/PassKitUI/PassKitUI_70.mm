uint64_t sub_1BD762320(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD7627AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_1BD762910(uint64_t (*a1)(unint64_t, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04C5A4();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v58 - v9;
  v10 = sub_1BE04C5E4();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C5B4();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD523E8, &unk_1BE0F5450);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = v58 - v19;
  v20 = sub_1BE04B944();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v24 = sub_1BE04B8E4();
  (*(v21 + 8))(v23, v20);
  v25 = [v24 paymentSetupSupportedInRegion];

  if (v25 == 2)
  {
    v26 = "consent required";
    v27 = 0xD000000000000017;
LABEL_11:
    v45 = v26 | 0x8000000000000000;
    v46 = 1;
    return a1(v27, v45, 0, v46);
  }

  if (*(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation) == 1)
  {
    v28 = *(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
    sub_1BE04E134();
    v28, v29, v30, v31, v32, v33, v34, v35;
    if (v68 == 2 || (v68 & 1) == 0)
    {
      v45 = 0x80000001BE138290;
      v27 = 0xD000000000000010;
LABEL_13:
      v46 = 0;
      return a1(v27, v45, 0, v46);
    }
  }

  v36 = *(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
  sub_1BE04E134();
  v36, v37, v38, v39, v40, v41, v42, v43;
  if (v69 != 2)
  {
    v26 = "ibility not determined";
    v27 = 0xD000000000000026;
    goto LABEL_11;
  }

  if (*(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource) != 2)
  {
    v27 = 0;
    v45 = 0;
    goto LABEL_13;
  }

  v58[1] = a2;
  sub_1BE04C554();
  v44 = v67;
  sub_1BE04C5D4();
  v48 = v65;
  (*(v64 + 8))(v14, v12);
  v49 = v66;
  (*(v48 + 56))(v44, 0, 1, v66);
  sub_1BD7634BC(v44, v17);
  v50 = (*(v48 + 48))(v17, 1, v49);
  if (v50 == 1)
  {
    sub_1BD0DE53C(v17, &qword_1EBD523E8, &unk_1BE0F5450);
    a1(0xD000000000000020, 0x80000001BE1381F0, 0, 1);
    return sub_1BD0DE53C(v44, &qword_1EBD523E8, &unk_1BE0F5450);
  }

  else
  {
    v51 = v59;
    (*(v48 + 32))(v59, v17, v49);
    v52 = v60;
    sub_1BE04C5C4();
    v54 = v61;
    v53 = v62;
    v55 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E69B7C90], v63);
    v56 = sub_1BE04C594();
    v57 = *(v53 + 8);
    v57(v54, v55);
    v57(v52, v55);
    a1(v56 & 1, 0xD000000000000036, 0x80000001BE138220, 2);
    (*(v48 + 8))(v51, v49);
    return sub_1BD0DE53C(v67, &qword_1EBD523E8, &unk_1BE0F5450);
  }
}

id sub_1BD762F88()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_1BD7634A8;
  v10[4] = v6;
  v11 = objc_allocWithZone(PKVirtualCardPrivacyExplanationViewController);
  aBlock[4] = sub_1BD7634B0;
  v40 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_172;
  v12 = _Block_copy(aBlock);
  v13 = v40;
  sub_1BE048964();
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = [v11 initWithContext:v7 referralSource:v8 resultCallback:v12];
  _Block_release(v12);
  v9, v22, v23, v24, v25, v26, v27, v28;
  v29 = v21;
  v30 = [v29 navigationItem];
  [v30 setLeftBarButtonItem_];

  v6, v31, v32, v33, v34, v35, v36, v37;
  return v29;
}

void sub_1BD763200(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented);
    LOBYTE(v21[0]) = a1 & 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
    sub_1BE04E144();
    v5, v6, v7, v8, v9, v10, v11, v12;
    if ((a1 & 1) != 0 || v4[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] != 1)
    {
      v17 = &v4[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v20 = v4;
        sub_1BD8659A4(v20, &off_1F3BBA078, ObjectType, v18);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v13 = &v4[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 1);
        v15 = swift_getObjectType();
        memset(v21, 0, sizeof(v21));
        v22 = 2;
        v16 = v4;
        sub_1BD865A00(v16, &off_1F3BBA078, v21, v15, v14);
        swift_unknownObjectRelease();

        sub_1BD0DE53C(v21, &unk_1EBD3F510, &unk_1BE0B9B30);
        return;
      }
    }
  }
}

void sub_1BD763398(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1 & 1);
  }
}

uint64_t sub_1BD763408()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD763444(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD7634BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD523E8, &unk_1BE0F5450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD76352C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD7635A0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD763678()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD7636F0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

char *sub_1BD763778()
{
  v1 = v0;
  v2 = type metadata accessor for AccountDebugCKReward(0);
  v284 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v293 = &v283 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountDebugCKTransaction(0);
  v286 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v295 = &v283 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for AccountDebugSavingsStatement(0);
  v290 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v291 = (&v283 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v285 = type metadata accessor for AccountDebugTransactionGroup(0);
  v7 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v9 = &v283 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  v294 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(&v300);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  v34 = v300;
  v35 = *(v300 + 16);
  v287 = v1;
  if (v35)
  {
    *&v300 = v10;
    sub_1BD531C34(0, v35, 0);
    v36 = v300;
    v37 = *(v7 + 80);
    *&v289 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v7 + 72);
    do
    {
      sub_1BD77BFE0(v38, v9, type metadata accessor for AccountDebugTransactionGroup);
      sub_1BD764578();
      v41 = v40;
      sub_1BD77C048(v9, type metadata accessor for AccountDebugTransactionGroup);
      *&v300 = v36;
      v50 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1BD531C34((v49 > 1), (v50 + 1), 1);
        v36 = v300;
      }

      *(v36 + 16) = v50 + 1;
      *(v36 + 8 * v50 + 32) = v41;
      v38 += v39;
      --v35;
    }

    while (v35);
    v289, v42, v43, v44, v45, v46, v47, v48;
    v1 = v287;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v300, v27, v28, v29, v30, v31, v32, v33;
    v36 = MEMORY[0x1E69E7CC0];
  }

  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A48, &unk_1BE0F5A60);
  v301 = v288;
  *&v300 = v36;
  sub_1BD1B6140(&v300, &v298);
  v51 = v294;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v297[0] = v51;
  sub_1BD1DAD20(&v298, 0xD000000000000013, 0x80000001BE138420, isUniquelyReferenced_nonNull_native);
  v53 = *&v297[0];
  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  sub_1BE04D8B4(&v298);
  v54, v56, v57, v58, v59, v60, v61, v62;
  v55, v63, v64, v65, v66, v67, v68, v69;
  v70 = sub_1BE053314();
  v299 = MEMORY[0x1E69E6158];
  *&v298 = v70;
  *(&v298 + 1) = v71;
  sub_1BD1B6140(&v298, v297);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v296 = v53;
  sub_1BD1DAD20(v297, 0xD000000000000017, 0x80000001BE138440, v72);
  v73 = v296;
  v302 = v296;
  result = [*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (result)
  {
    v75 = result;
    v76 = [result accountSummary];

    v77 = [v76 currentBalance];
    if (v77)
    {
      v299 = sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
      *&v298 = v77;
      sub_1BD1B6140(&v298, v297);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v296 = v73;
      sub_1BD1DAD20(v297, 0x65636E616C6162, 0xE700000000000000, v78);
      v302 = v296;
    }

    else
    {
      sub_1BD6B1E10(0x65636E616C6162, 0xE700000000000000, &v298);
      sub_1BD0DE53C(&v298, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    }

    v79 = swift_getKeyPath();
    v80 = swift_getKeyPath();
    sub_1BE04D8B4(&v298);
    v79, v81, v82, v83, v84, v85, v86, v87;
    v80, v88, v89, v90, v91, v92, v93, v94;
    v102 = v298;
    v103 = *(v298 + 16);
    if (v103)
    {
      *&v298 = v10;
      sub_1BD531C34(0, v103, 0);
      v104 = *(v290 + 80);
      v283 = v102;
      v105 = v102 + ((v104 + 32) & ~v104);
      v106 = v298;
      v290 = *(v290 + 72);
      v289 = xmmword_1BE0B98D0;
      do
      {
        v294 = type metadata accessor for AccountDebugSavingsStatement;
        v107 = v291;
        sub_1BD77BFE0(v105, v291, type metadata accessor for AccountDebugSavingsStatement);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
        inited = swift_initStackObject();
        *(inited + 16) = v289;
        *(inited + 32) = 0x6E656D6574617473;
        *(inited + 40) = 0xE900000000000074;
        v109 = [*v107 debugDescription];
        v110 = sub_1BE052434();
        v112 = v111;

        *(inited + 48) = v110;
        *(inited + 56) = v112;
        v113 = MEMORY[0x1E69E6158];
        *(inited + 72) = MEMORY[0x1E69E6158];
        strcpy((inited + 80), "transactions");
        *(inited + 93) = 0;
        *(inited + 94) = -5120;
        v114 = v292;
        sub_1BD764578();
        v116 = v115;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
        *(inited + 96) = v116;
        *(inited + 120) = v117;
        *(inited + 128) = 0x7365686374616DLL;
        *(inited + 136) = 0xE700000000000000;
        v118 = 28494;
        if (*(v107 + *(v114 + 24)))
        {
          v118 = 7562585;
        }

        v119 = 0xE200000000000000;
        if (*(v107 + *(v114 + 24)))
        {
          v119 = 0xE300000000000000;
        }

        *(inited + 168) = v113;
        *(inited + 144) = v118;
        *(inited + 152) = v119;
        v120 = sub_1BD1AACF8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
        swift_arrayDestroy();
        sub_1BD77C048(v107, v294);
        *&v298 = v106;
        v129 = *(v106 + 16);
        v128 = *(v106 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_1BD531C34((v128 > 1), (v129 + 1), 1);
          v106 = v298;
        }

        *(v106 + 16) = v129 + 1;
        *(v106 + 8 * v129 + 32) = v120;
        v105 += v290;
        --v103;
      }

      while (v103);
      v283, v121, v122, v123, v124, v125, v126, v127;
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v298, v95, v96, v97, v98, v99, v100, v101;
      v106 = MEMORY[0x1E69E7CC0];
    }

    v299 = v288;
    *&v298 = v106;
    sub_1BD1B6140(&v298, v297);
    v130 = v302;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v130;
    sub_1BD1DAD20(v297, 0x6E656D6574617473, 0xEA00000000007374, v131);
    v132 = v296;
    v133 = swift_getKeyPath();
    v134 = swift_getKeyPath();
    sub_1BE04D8B4(&v298);
    v133, v135, v136, v137, v138, v139, v140, v141;
    v134, v142, v143, v144, v145, v146, v147, v148;
    v156 = v298;
    v157 = *(v298 + 16);
    if (v157)
    {
      v294 = v132;
      *&v298 = v10;
      sub_1BD531C34(0, v157, 0);
      v158 = v298;
      v159 = v156 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
      v160 = *(v286 + 72);
      do
      {
        v161 = v295;
        sub_1BD77BFE0(v159, v295, type metadata accessor for AccountDebugCKTransaction);
        v162 = sub_1BD765368();
        sub_1BD77C048(v161, type metadata accessor for AccountDebugCKTransaction);
        *&v298 = v158;
        v171 = *(v158 + 16);
        v170 = *(v158 + 24);
        if (v171 >= v170 >> 1)
        {
          sub_1BD531C34((v170 > 1), (v171 + 1), 1);
          v158 = v298;
        }

        *(v158 + 16) = v171 + 1;
        *(v158 + 8 * v171 + 32) = v162;
        v159 += v160;
        --v157;
      }

      while (v157);
      v156, v163, v164, v165, v166, v167, v168, v169;
      v10 = MEMORY[0x1E69E7CC0];
      v132 = v294;
    }

    else
    {
      v298, v149, v150, v151, v152, v153, v154, v155;
      v158 = MEMORY[0x1E69E7CC0];
    }

    v299 = v288;
    *&v298 = v158;
    sub_1BD1B6140(&v298, v297);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v132;
    sub_1BD1DAD20(v297, 0x61736E6172546B63, 0xEE00736E6F697463, v172);
    v173 = v296;
    v302 = v296;
    v174 = swift_getKeyPath();
    v175 = swift_getKeyPath();
    sub_1BE04D8B4(&v298);
    v174, v176, v177, v178, v179, v180, v181, v182;
    v175, v183, v184, v185, v186, v187, v188, v189;
    v197 = v298;
    v198 = *(v298 + 16);
    if (v198)
    {
      v294 = v173;
      *&v298 = v10;
      sub_1BD531C34(0, v198, 0);
      v199 = v298;
      v200 = v197 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
      v201 = *(v286 + 72);
      do
      {
        v202 = v295;
        sub_1BD77BFE0(v200, v295, type metadata accessor for AccountDebugCKTransaction);
        v203 = sub_1BD765368();
        sub_1BD77C048(v202, type metadata accessor for AccountDebugCKTransaction);
        *&v298 = v199;
        v212 = *(v199 + 16);
        v211 = *(v199 + 24);
        if (v212 >= v211 >> 1)
        {
          sub_1BD531C34((v211 > 1), (v212 + 1), 1);
          v199 = v298;
        }

        *(v199 + 16) = v212 + 1;
        *(v199 + 8 * v212 + 32) = v203;
        v200 += v201;
        --v198;
      }

      while (v198);
      v197, v204, v205, v206, v207, v208, v209, v210;
      v10 = MEMORY[0x1E69E7CC0];
      v173 = v294;
    }

    else
    {
      v298, v190, v191, v192, v193, v194, v195, v196;
      v199 = MEMORY[0x1E69E7CC0];
    }

    v299 = v288;
    *&v298 = v199;
    sub_1BD1B6140(&v298, v297);
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v173;
    sub_1BD1DAD20(v297, 0xD000000000000012, 0x80000001BE138460, v213);
    v214 = v296;
    v215 = swift_getKeyPath();
    v216 = swift_getKeyPath();
    sub_1BE04D8B4(&v298);
    v215, v217, v218, v219, v220, v221, v222, v223;
    v216, v224, v225, v226, v227, v228, v229, v230;
    v238 = v298;
    v239 = *(v298 + 16);
    if (v239)
    {
      v295 = v214;
      *&v298 = v10;
      sub_1BD531C34(0, v239, 0);
      v240 = v298;
      v241 = v238 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v242 = *(v284 + 72);
      do
      {
        v243 = v293;
        sub_1BD77BFE0(v241, v293, type metadata accessor for AccountDebugCKReward);
        v244 = sub_1BD765898();
        sub_1BD77C048(v243, type metadata accessor for AccountDebugCKReward);
        *&v298 = v240;
        v253 = *(v240 + 16);
        v252 = *(v240 + 24);
        if (v253 >= v252 >> 1)
        {
          sub_1BD531C34((v252 > 1), (v253 + 1), 1);
          v240 = v298;
        }

        *(v240 + 16) = v253 + 1;
        *(v240 + 8 * v253 + 32) = v244;
        v241 += v242;
        --v239;
      }

      while (v239);
      v238, v245, v246, v247, v248, v249, v250, v251;
      v214 = v295;
    }

    else
    {
      v298, v231, v232, v233, v234, v235, v236, v237;
      v240 = MEMORY[0x1E69E7CC0];
    }

    v299 = v288;
    *&v298 = v240;
    sub_1BD1B6140(&v298, v297);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v214;
    sub_1BD1DAD20(v297, 0x6472617765526B63, 0xE900000000000073, v254);
    v302 = v296;
    v255 = swift_getKeyPath();
    v256 = swift_getKeyPath();
    sub_1BE04D8B4(&v298);
    v255, v257, v258, v259, v260, v261, v262, v263;
    v256, v264, v265, v266, v267, v268, v269, v270;
    v271 = v298;
    v272 = MEMORY[0x1BFB3F810](v298, v285);
    v274 = v273;
    v271, v273, v275, v276, v277, v278, v279, v280;
    v299 = MEMORY[0x1E69E6158];
    *&v298 = v272;
    *(&v298 + 1) = v274;
    sub_1BD1B6140(&v298, v297);
    v281 = v302;
    v282 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v281;
    sub_1BD1DAD20(v297, 0xD000000000000018, 0x80000001BE138480, v282);
    return v296;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD764578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0F5460;
  *(v2 + 32) = 1702125924;
  *(v2 + 40) = 0xE400000000000000;
  v3 = sub_1BE04AD94();
  v4 = MEMORY[0x1E69E6158];
  *(v2 + 48) = v3;
  *(v2 + 56) = v5;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0x746E756F63;
  *(v2 + 88) = 0xE500000000000000;
  v6 = type metadata accessor for AccountDebugTransactionGroup(0);
  v161 = *(v0 + *(v6 + 20));
  sub_1BD77C0A8();
  *(v2 + 96) = sub_1BE053614();
  *(v2 + 104) = v7;
  *(v2 + 120) = v4;
  *(v2 + 128) = 0x736143796C696164;
  *(v2 + 136) = 0xE900000000000068;
  *(v2 + 144) = sub_1BE053314();
  *(v2 + 152) = v8;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x7473657265746E69;
  *(v2 + 184) = 0xE800000000000000;
  *(v2 + 192) = sub_1BE053314();
  *(v2 + 200) = v9;
  *(v2 + 216) = v4;
  *(v2 + 224) = 0x6E4979656E6F6DLL;
  *(v2 + 232) = 0xE700000000000000;
  *(v2 + 240) = sub_1BE053314();
  *(v2 + 248) = v10;
  *(v2 + 264) = v4;
  *(v2 + 272) = 0x74754F79656E6F6DLL;
  *(v2 + 280) = 0xE800000000000000;
  *(v2 + 288) = sub_1BE053314();
  *(v2 + 296) = v11;
  *(v2 + 312) = v4;
  *(v2 + 320) = 0xD00000000000001ALL;
  v156 = v6;
  v157 = v2;
  *(v2 + 328) = 0x80000001BE138560;
  v17 = *(v0 + *(v6 + 40));
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v159[0] = MEMORY[0x1E69E7CC0];
    sub_1BD531B48(0, v18, 0, v12, v13, v14, v15, v16);
    v19 = v159[0];
    v20 = (v17 + 32);
    do
    {
      v21 = *v20;
      v22 = [v21 identifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1BE052434();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0;
      }

      v159[0] = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1BD531B48((v32 > 1), (v33 + 1), 1, v27, v28, v29, v30, v31);
        v19 = v159[0];
      }

      *(v19 + 16) = v33 + 1;
      v34 = v19 + 16 * v33;
      *(v34 + 32) = v24;
      *(v34 + 40) = v26;
      ++v20;
      --v18;
    }

    while (v18);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525A8, &qword_1BE0F5A70);
  *(v2 + 336) = v19;
  v154 = v35;
  *(v2 + 360) = v35;
  *(v2 + 368) = 0xD00000000000001BLL;
  *(v2 + 376) = 0x80000001BE138580;
  v41 = *(v1 + v156[11]);
  v42 = *(v41 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  v155 = v1;
  if (v42)
  {
    v159[0] = MEMORY[0x1E69E7CC0];
    sub_1BD531B48(0, v42, 0, v36, v37, v38, v39, v40);
    v43 = v159[0];
    v44 = (v41 + 32);
    do
    {
      v45 = *v44;
      v46 = [v45 identifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1BE052434();
        v50 = v49;
      }

      else
      {

        v48 = 0;
        v50 = 0;
      }

      v159[0] = v43;
      v57 = *(v43 + 16);
      v56 = *(v43 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1BD531B48((v56 > 1), (v57 + 1), 1, v51, v52, v53, v54, v55);
        v43 = v159[0];
      }

      *(v43 + 16) = v57 + 1;
      v58 = v43 + 16 * v57;
      *(v58 + 32) = v48;
      *(v58 + 40) = v50;
      ++v44;
      --v42;
    }

    while (v42);
    v1 = v155;
  }

  *(v2 + 384) = v43;
  *(v2 + 408) = v154;
  *(v2 + 416) = 0xD000000000000015;
  *(v2 + 424) = 0x80000001BE1385A0;
  *(v2 + 432) = sub_1BE053314();
  *(v2 + 440) = v59;
  v60 = MEMORY[0x1E69E6158];
  *(v2 + 456) = MEMORY[0x1E69E6158];
  *(v2 + 464) = 0xD00000000000001BLL;
  *(v2 + 472) = 0x80000001BE1385C0;
  *(v2 + 480) = sub_1BE053314();
  *(v2 + 488) = v61;
  *(v2 + 504) = v60;
  *(v2 + 512) = 0xD000000000000018;
  *(v2 + 520) = 0x80000001BE1385E0;
  v62 = sub_1BE053314();
  *(v2 + 552) = v60;
  *(v2 + 528) = v62;
  *(v2 + 536) = v63;
  *(v2 + 560) = 0xD000000000000011;
  *(v2 + 568) = 0x80000001BE138600;
  v64 = sub_1BE053314();
  *(v2 + 600) = v60;
  *(v2 + 576) = v64;
  *(v2 + 584) = v70;
  *(v2 + 608) = 0xD000000000000017;
  *(v2 + 616) = 0x80000001BE138620;
  v71 = *(v1 + v156[15]);
  v72 = *(v71 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  if (v72)
  {
    v159[0] = MEMORY[0x1E69E7CC0];
    sub_1BD532374(0, v72, 0, v65, v66, v67, v68, v69);
    v73 = v159[0];
    v74 = (v71 + 40);
    do
    {
      v75 = *v74;
      v76 = *(v74 - 1);
      v77 = v75;
      v78 = [v76 dictionaryRepresentation];
      if (v78)
      {
        v79 = v78;
        v80 = sub_1BE052244();
      }

      else
      {

        v80 = 0;
      }

      v159[0] = v73;
      v87 = *(v73 + 16);
      v86 = *(v73 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1BD532374((v86 > 1), (v87 + 1), 1, v81, v82, v83, v84, v85);
        v73 = v159[0];
      }

      *(v73 + 16) = v87 + 1;
      *(v73 + 8 * v87 + 32) = v80;
      v74 += 2;
      --v72;
    }

    while (v72);
    v1 = v155;
  }

  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD525B0, &qword_1BE0F5A78);
  *(v157 + 648) = v88;
  *(v157 + 624) = v73;
  *(v157 + 656) = 0xD00000000000001ELL;
  *(v157 + 664) = 0x80000001BE138640;
  v94 = *(v1 + v156[16]);
  v95 = *(v94 + 16);
  v96 = MEMORY[0x1E69E7CC0];
  if (v95)
  {
    v152 = v88;
    v159[0] = MEMORY[0x1E69E7CC0];
    sub_1BD532374(0, v95, 0, v89, v90, v91, v92, v93);
    v97 = v159[0];
    v98 = (v94 + 40);
    do
    {
      v99 = *v98;
      v100 = *(v98 - 1);
      v101 = v99;
      v102 = [v100 dictionaryRepresentation];
      if (v102)
      {
        v103 = v102;
        v104 = sub_1BE052244();
      }

      else
      {

        v104 = 0;
      }

      v159[0] = v97;
      v111 = *(v97 + 16);
      v110 = *(v97 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_1BD532374((v110 > 1), (v111 + 1), 1, v105, v106, v107, v108, v109);
        v97 = v159[0];
      }

      *(v97 + 16) = v111 + 1;
      *(v97 + 8 * v111 + 32) = v104;
      v98 += 2;
      --v95;
    }

    while (v95);
    v1 = v155;
    v96 = MEMORY[0x1E69E7CC0];
    v88 = v152;
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
  }

  *(v157 + 696) = v88;
  *(v157 + 672) = v97;
  *(v157 + 704) = 0xD000000000000017;
  *(v157 + 712) = 0x80000001BE138660;
  v112 = *(v1 + v156[17]);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  *(v157 + 744) = v153;
  *(v157 + 720) = v112;
  *(v157 + 752) = 0xD00000000000001ALL;
  *(v157 + 760) = 0x80000001BE138680;
  v113 = *(v1 + v156[18]);
  v114 = *(v113 + 16);
  if (v114)
  {
    v159[0] = v96;
    sub_1BE048C84();
    sub_1BD531B48(0, v114, 0, v115, v116, v117, v118, v119);
    v120 = v96;
    v121 = (v113 + 40);
    do
    {
      v122 = *v121;
      v123 = *(v121 - 1);
      v124 = v122;
      v125 = [v123 serviceIdentifier];
      if (v125)
      {
        v126 = v125;
        v127 = sub_1BE052434();
        v129 = v128;
      }

      else
      {

        v127 = 0;
        v129 = 0;
      }

      v159[0] = v120;
      v136 = *(v120 + 16);
      v135 = *(v120 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_1BD531B48((v135 > 1), (v136 + 1), 1, v130, v131, v132, v133, v134);
        v120 = v159[0];
      }

      *(v120 + 16) = v136 + 1;
      v137 = v120 + 16 * v136;
      *(v137 + 32) = v127;
      *(v137 + 40) = v129;
      v121 += 2;
      --v114;
    }

    while (v114);
    v1 = v155;
  }

  else
  {
    sub_1BE048C84();
    v120 = MEMORY[0x1E69E7CC0];
  }

  *(v157 + 792) = v154;
  *(v157 + 768) = v120;
  strcpy((v157 + 800), "transactions");
  *(v157 + 813) = 0;
  *(v157 + 814) = -5120;
  v138 = *(v1 + v156[19]);
  v139 = *(v138 + 16);
  v140 = MEMORY[0x1E69E7CC0];
  if (v139)
  {
    v160 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v139, 0, v130, v131, v132, v133, v134);
    v141 = 0;
    v140 = v160;
    while (v141 < *(v138 + 16))
    {
      v158 = *(v138 + 32 + 16 * v141);
      sub_1BD764F84(&v158, v159);
      v147 = v159[0];
      v148 = v159[1];
      v160 = v140;
      v150 = *(v140 + 16);
      v149 = *(v140 + 24);
      if (v150 >= v149 >> 1)
      {
        sub_1BD03B254((v149 > 1), v150 + 1, 1, v142, v143, v144, v145, v146);
        v140 = v160;
      }

      ++v141;
      *(v140 + 16) = v150 + 1;
      v151 = v140 + 16 * v150;
      *(v151 + 32) = v147;
      *(v151 + 40) = v148;
      if (v139 == v141)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_53:
    *(v157 + 840) = v153;
    *(v157 + 816) = v140;
    sub_1BD1AACF8(v157);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }
}

void sub_1BD764F84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  [*a1 transactionStatus];
  v10 = PKPaymentTransactionStatusToString();
  if (v10)
  {
    v11 = v10;
    v76 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v13 = 0xE900000000000073;
    v76 = 0x7574617473206F6ELL;
  }

  [v9 transactionType];
  v14 = PKPaymentTransactionTypeToString();
  if (v14)
  {
    v15 = v14;
    v73 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v17 = 0xE700000000000000;
    v73 = 0x65707974206F6ELL;
  }

  v18 = [v9 transactionDate];
  if (!v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v72 = a2;
  sub_1BE04AEE4();

  v20 = sub_1BE04AD94();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  v23 = [v9 amount];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 description];

  v26 = sub_1BE052434();
  v28 = v27;

  v29 = [v9 serviceIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BE052434();
    v33 = v32;
  }

  else
  {
    v33 = 0xE500000000000000;
    v31 = 0x4449206F6ELL;
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1BE053834();
  v75, v34, v35, v36, v37, v38, v39, v40;
  v74 = v20;
  v75 = v22;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v26, v28);
  v28, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v73, v17);
  v17, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v76, v13);
  v13, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v31, v33);
  v33, v62, v63, v64, v65, v66, v67, v68;
  v69 = v75;
  v70 = v72;
  *v72 = v74;
  v70[1] = v69;
}

uint64_t sub_1BD7652A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AF64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1BD765308()
{
  v1 = [*v0 openingDate];
  sub_1BE04AEE4();
}

id sub_1BD765368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1BE0F1DC0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001BE1384C0;
  v7 = v1[3];
  *(inited + 96) = v1[2];
  *(inited + 104) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 0x746E756F6D61;
  *(inited + 136) = 0xE600000000000000;
  v8 = v1[4];
  v9 = v1[5];
  if (!v9)
  {
    v8 = 0x6E756F6D61206F6ELL;
  }

  v10 = 0xE900000000000074;
  if (v9)
  {
    v10 = v1[5];
  }

  *(inited + 144) = v8;
  *(inited + 152) = v10;
  *(inited + 168) = v6;
  *(inited + 176) = 1701869940;
  *(inited + 184) = 0xE400000000000000;
  v11 = v1[6];
  v12 = v1[7];
  if (!v12)
  {
    v11 = 0x65707974206F6ELL;
  }

  v13 = 0xE700000000000000;
  if (v12)
  {
    v13 = v1[7];
  }

  *(inited + 192) = v11;
  *(inited + 200) = v13;
  *(inited + 216) = v6;
  *(inited + 224) = 1702125924;
  *(inited + 232) = 0xE400000000000000;
  v14 = type metadata accessor for AccountDebugCKTransaction(0);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  *(v3 + 240) = sub_1BE04AD94();
  *(v3 + 248) = v15;
  *(v3 + 264) = v6;
  *(v3 + 272) = 0xD000000000000013;
  *(v3 + 280) = 0x80000001BE1384E0;
  v16 = *(v1 + v14[9]);
  v17 = &unk_1BE0B6000;
  v18 = &selRef_currentPassbookState;
  if (v16)
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1BE0B69E0;
    *(v19 + 32) = 0x746361736E617274;
    *(v19 + 40) = 0xEB000000006E6F69;
    result = [v16 dictionaryRepresentation];
    if (!result)
    {
      __break(1u);
      goto LABEL_19;
    }

    v21 = result;
    v22 = sub_1BE052244();

    *(v19 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998, &qword_1BE0D4DB0);
    *(v19 + 48) = v22;
    v23 = sub_1BD1AACF8(v19);
    swift_setDeallocating();
    sub_1BD0DE53C(v19 + 32, &qword_1EBD52080, &qword_1BE0BDD40);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
    *&v35 = v23;
    sub_1BD1B6140(&v35, (v3 + 288));
    v18 = &selRef_currentPassbookState;
    v17 = &unk_1BE0B6000;
  }

  else
  {
    *(v3 + 312) = MEMORY[0x1E69E6158];
    strcpy((v3 + 288), "NOT ON DEVICE");
    *(v3 + 302) = -4864;
  }

  *(v3 + 320) = 0xD000000000000011;
  *(v3 + 328) = 0x80000001BE138500;
  v24 = *(v1 + v14[10]);
  if (!v24)
  {
    *(v3 + 360) = MEMORY[0x1E69E6158];
    *(v3 + 336) = 0xD000000000000011;
    *(v3 + 344) = 0x80000001BE138520;
    goto LABEL_17;
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = v17[158];
  *(v25 + 32) = 0x746361736E617274;
  *(v25 + 40) = 0xEB000000006E6F69;
  result = [v24 v18[338]];
  if (result)
  {
    v26 = result;
    v27 = sub_1BE052244();

    *(v25 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998, &qword_1BE0D4DB0);
    *(v25 + 48) = v27;
    v28 = sub_1BD1AACF8(v25);
    swift_setDeallocating();
    sub_1BD0DE53C(v25 + 32, &qword_1EBD52080, &qword_1BE0BDD40);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
    *&v35 = v28;
    sub_1BD1B6140(&v35, (v3 + 336));
LABEL_17:
    *(v3 + 368) = 0xD000000000000011;
    *(v3 + 376) = 0x80000001BE138540;
    v29 = MEMORY[0x1E69E6370];
    *(v3 + 384) = *(v1 + v14[11]);
    *(v3 + 408) = v29;
    *(v3 + 416) = 0x64726F636572;
    *(v3 + 424) = 0xE600000000000000;
    v30 = [*(v1 + v14[12]) description];
    v31 = sub_1BE052434();
    v33 = v32;

    *(v3 + 456) = MEMORY[0x1E69E6158];
    *(v3 + 432) = v31;
    *(v3 + 440) = v33;
    v34 = sub_1BD1AACF8(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
    swift_arrayDestroy();
    return v34;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1BD765898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1BE0B76F0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x746E756F6D61;
  *(inited + 88) = 0xE600000000000000;
  v7 = v1[2];
  v8 = v1[3];
  if (!v8)
  {
    v7 = 0x6E756F6D61206F6ELL;
  }

  v9 = 0xE900000000000074;
  if (v8)
  {
    v9 = v1[3];
  }

  *(inited + 96) = v7;
  *(inited + 104) = v9;
  *(inited + 120) = v6;
  *(inited + 128) = 1701869940;
  *(inited + 136) = 0xE400000000000000;
  v10 = type metadata accessor for AccountDebugCKReward(0);
  v11 = (v1 + v10[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = 0x65707974206F6ELL;
  if (v13)
  {
    v14 = v12;
  }

  v15 = 0xE700000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *(v3 + 144) = v14;
  *(v3 + 152) = v15;
  *(v3 + 168) = v6;
  *(v3 + 176) = 1702125924;
  *(v3 + 184) = 0xE400000000000000;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  *(v3 + 192) = sub_1BE04AD94();
  *(v3 + 200) = v16;
  *(v3 + 216) = v6;
  strcpy((v3 + 224), "transactionIDs");
  *(v3 + 239) = -18;
  v17 = (v1 + v10[8]);
  v19 = *v17;
  v18 = v17[1];
  v20 = 0x80000001BE1384A0;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v19 = 0xD000000000000011;
  }

  *(v3 + 240) = v19;
  *(v3 + 248) = v20;
  *(v3 + 264) = v6;
  *(v3 + 272) = 0x4973647261776572;
  *(v3 + 280) = 0xEA00000000007344;
  v21 = (v1 + v10[9]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(v3 + 288) = v23;
  *(v3 + 296) = v24;
  *(v3 + 312) = v6;
  strcpy((v3 + 320), "rewardsRecord");
  *(v3 + 334) = -4864;
  v25 = *(v1 + v10[11]);
  sub_1BE048C84();
  sub_1BE048C84();
  v26 = [v25 debugDescription];
  v27 = sub_1BE052434();
  v29 = v28;

  *(v3 + 336) = v27;
  *(v3 + 344) = v29;
  *(v3 + 360) = v6;
  *(v3 + 368) = 0x636552746E657665;
  *(v3 + 376) = 0xEB0000000064726FLL;
  v30 = *(v1 + v10[12]);
  if (!v30)
  {
    v35 = (v3 + 384);
    *(v3 + 408) = v6;
    goto LABEL_21;
  }

  v31 = [v30 debugDescription];
  v32 = sub_1BE052434();
  v34 = v33;

  v35 = (v3 + 384);
  *(v3 + 408) = v6;
  if (!v34)
  {
LABEL_21:
    *v35 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_22;
  }

  *v35 = v32;
LABEL_22:
  *(v3 + 392) = v34;
  v36 = sub_1BD1AACF8(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
  swift_arrayDestroy();
  return v36;
}

id sub_1BD765BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04B3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  result = [*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result productTimeZone];

  if (v16)
  {
    sub_1BE04B394();

    v17 = *(v4 + 32);
    v17(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    return (v17)(a1, v13, v3);
  }

  (*(v4 + 56))(v13, 1, 1, v3);
  sub_1BE04B354();
  v18 = *(v4 + 48);
  result = v18(v9, 1, v3);
  if (result == 1)
  {
    goto LABEL_9;
  }

  (*(v4 + 32))(a1, v9, v3);
  result = v18(v13, 1, v3);
  if (result != 1)
  {
    return sub_1BD0DE53C(v13, &unk_1EBD3D260, &unk_1BE0C0F20);
  }

  return result;
}

void sub_1BD765E64(void *a1)
{
  v86 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &ObjectType - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52580, &qword_1BE0F5A58);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v83 = &ObjectType - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52578, &qword_1BE0F5A50);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &ObjectType - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52570, &qword_1BE0F5A48);
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &ObjectType - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108, &qword_1BE0D3CC0);
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &ObjectType - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52560, &unk_1BE0F5A38);
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &ObjectType - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  v15 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &ObjectType - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &ObjectType - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52558, &qword_1BE0F5A30);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &ObjectType - v24;
  v26 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__cardAccount;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52488, &qword_1BE0F5488);
  sub_1BE04D874();
  (*(v23 + 32))(&v1[v26], v25, v22);
  v27 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__inProgress;
  LOBYTE(v90) = 1;
  sub_1BE04D874();
  (*(v19 + 32))(&v1[v27], v21, v18);
  v28 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__status;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1BE04D874();
  (*(v15 + 32))(&v1[v28], v17, v72);
  v29 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__transactionGroups;
  v30 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8, &unk_1BE0F5490);
  v31 = v73;
  sub_1BE04D874();
  v32 = *(v88 + 32);
  v88 += 32;
  v71 = v32;
  v32(&v1[v29], v31, v87);
  v33 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__runningBalance;
  v90 = MEMORY[0x1BFB403C0](0);
  v91 = v34;
  v92 = v35;
  type metadata accessor for Decimal(0);
  v36 = v74;
  sub_1BE04D874();
  (*(v75 + 32))(&v1[v33], v36, v76);
  v37 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__statements;
  v90 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524A0, &qword_1BE0BCC50);
  v38 = v77;
  sub_1BE04D874();
  (*(v78 + 32))(&v1[v37], v38, v79);
  v39 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__ckTransactions;
  v90 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524B0, &unk_1BE0F54A0);
  v40 = v80;
  sub_1BE04D874();
  v41 = v82;
  v42 = *(v81 + 32);
  v42(&v1[v39], v40, v82);
  v43 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__ckRewards;
  v90 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD524C0, &qword_1BE0BCDA0);
  v44 = v83;
  sub_1BE04D874();
  (*(v84 + 32))(&v1[v43], v44, v85);
  v45 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__cardTransactions;
  v90 = v30;
  sub_1BE04D874();
  v42(&v1[v45], v40, v41);
  v46 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__invalidBalanceIncrements;
  v90 = v30;
  sub_1BE04D874();
  v71(&v1[v46], v31, v87);
  v47 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService;
  *&v1[v47] = [objc_opt_self() sharedInstance];
  v48 = v86;
  *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account] = v86;
  v49 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v50 = v48;
  v51 = [v49 initWithAccount_];
  v52 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource] = v51;
  v53 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (v53)
  {
    v54 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
    *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider] = v53;
    v55 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
    v56 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v55 paymentDataProvider:*&v1[v54]];

    if (v56)
    {
      *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher] = v56;
      v89.receiver = v1;
      v89.super_class = ObjectType;
      v57 = objc_msgSendSuper2(&v89, sel_init);
      v58 = sub_1BE0528D4();
      v59 = v70;
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      v60 = swift_allocObject();
      v60[2] = 0;
      v60[3] = 0;
      v60[4] = v57;
      v57;
      v61 = sub_1BD122C00(0, 0, v59, &unk_1BE0F5A88, v60);
      v61, v62, v63, v64, v65, v66, v67, v68;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD7667D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v5 = sub_1BE051F54();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v6 = sub_1BE051FA4();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD7668F0, 0, 0);
}

uint64_t sub_1BD7668F0()
{
  v1 = [*(*(v0 + 296) + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) feature];
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v38 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  if (v1 == 5)
  {
    *(v0 + 352) = v8;
    v9 = sub_1BE052D54();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v0 + 144) = sub_1BD77C208;
    *(v0 + 152) = v10;
    *(v0 + 112) = MEMORY[0x1E69E9820];
    *(v0 + 120) = 1107296256;
    *(v0 + 128) = sub_1BD126964;
    *(v0 + 136) = &block_descriptor_110_1;
    v11 = _Block_copy((v0 + 112));
    v12 = v7;
    sub_1BE051F74();
    *(v0 + 272) = MEMORY[0x1E69E7CC0];
    *(v0 + 360) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    *(v0 + 376) = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v2, v4, v11);
    _Block_release(v11);

    v13 = *(v5 + 8);
    *(v0 + 384) = v13;
    *(v0 + 392) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v4, v6);
    v14 = *(v3 + 8);
    *(v0 + 400) = v14;
    *(v0 + 408) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v2, v38);
    *(v0 + 152), v15, v16, v17, v18, v19, v20, v21;
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1BD766D9C;

    return sub_1BD7679FC();
  }

  else
  {
    *(v0 + 440) = v8;
    v24 = sub_1BE052D54();
    v25 = swift_allocObject();
    *(v25 + 16) = v7;
    *(v0 + 48) = sub_1BD77C1B0;
    *(v0 + 56) = v25;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1BD126964;
    *(v0 + 40) = &block_descriptor_173;
    v26 = _Block_copy((v0 + 16));
    v27 = v7;
    sub_1BE051F74();
    *(v0 + 256) = MEMORY[0x1E69E7CC0];
    *(v0 + 448) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    *(v0 + 464) = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v2, v4, v26);
    _Block_release(v26);

    v28 = *(v5 + 8);
    *(v0 + 472) = v28;
    *(v0 + 480) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v4, v6);
    v29 = *(v3 + 8);
    *(v0 + 488) = v29;
    *(v0 + 496) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v2, v38);
    *(v0 + 56), v30, v31, v32, v33, v34, v35, v36;
    v37 = swift_task_alloc();
    *(v0 + 504) = v37;
    *v37 = v0;
    v37[1] = sub_1BD7676C4;

    return sub_1BD77066C();
  }
}

uint64_t sub_1BD766D9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD766E98, 0, 0);
}

uint64_t sub_1BD766E98(uint64_t a1)
{
  v21 = v1[50];
  v20 = v1[48];
  v2 = v1[43];
  v3 = v1[40];
  v19 = v1[41];
  v5 = v1[37];
  v4 = v1[38];
  v6 = sub_1BE052D54();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v1[24] = sub_1BD77C210;
  v1[25] = v7;
  v1[20] = MEMORY[0x1E69E9820];
  v1[21] = 1107296256;
  v1[22] = sub_1BD126964;
  v1[23] = &block_descriptor_117_1;
  v8 = _Block_copy(v1 + 20);
  v9 = v5;
  sub_1BE051F74();
  v1[35] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v2, v3, v8);
  _Block_release(v8);

  v20(v3, v4);
  v21(v2, v19);
  v1[25], v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_task_alloc();
  v1[53] = v17;
  *v17 = v1;
  v17[1] = sub_1BD767078;

  return sub_1BD76CC08();
}

uint64_t sub_1BD767078()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD767174, 0, 0);
}

uint64_t sub_1BD767174(uint64_t a1)
{
  v21 = v1[50];
  v20 = v1[48];
  v2 = v1[43];
  v3 = v1[40];
  v19 = v1[41];
  v5 = v1[37];
  v4 = v1[38];
  v6 = sub_1BE052D54();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v1[30] = sub_1BD77C218;
  v1[31] = v7;
  v1[26] = MEMORY[0x1E69E9820];
  v1[27] = 1107296256;
  v1[28] = sub_1BD126964;
  v1[29] = &block_descriptor_124_0;
  v8 = _Block_copy(v1 + 26);
  v9 = v5;
  sub_1BE051F74();
  v1[36] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v2, v3, v8);
  _Block_release(v8);

  v20(v3, v4);
  v21(v2, v19);
  v1[31], v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_task_alloc();
  v1[54] = v17;
  *v17 = v1;
  v17[1] = sub_1BD767354;

  return sub_1BD76E4F0();
}

uint64_t sub_1BD767354()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD767450, 0, 0);
}

uint64_t sub_1BD767450()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v22 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v0[55] = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v7 = sub_1BE052D54();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v0[6] = sub_1BD77C1B0;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_173;
  v9 = _Block_copy(v0 + 2);
  v10 = v6;
  sub_1BE051F74();
  v0[32] = MEMORY[0x1E69E7CC0];
  v0[56] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  v0[58] = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v3, v9);
  _Block_release(v9);

  v11 = *(v4 + 8);
  v0[59] = v11;
  v0[60] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  v12 = *(v2 + 8);
  v0[61] = v12;
  v0[62] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v22);
  v0[7], v13, v14, v15, v16, v17, v18, v19;
  v20 = swift_task_alloc();
  v0[63] = v20;
  *v20 = v0;
  v20[1] = sub_1BD7676C4;

  return sub_1BD77066C();
}

uint64_t sub_1BD7676C4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD7677C0, 0, 0);
}

uint64_t sub_1BD7677C0(uint64_t a1)
{
  v21 = v1[61];
  v20 = v1[59];
  v2 = v1[43];
  v3 = v1[40];
  v19 = v1[41];
  v5 = v1[37];
  v4 = v1[38];
  v6 = sub_1BE052D54();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v1[12] = sub_1BD77C200;
  v1[13] = v7;
  v1[8] = MEMORY[0x1E69E9820];
  v1[9] = 1107296256;
  v1[10] = sub_1BD126964;
  v1[11] = &block_descriptor_103_0;
  v8 = _Block_copy(v1 + 8);
  v9 = v5;
  sub_1BE051F74();
  v1[33] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v2, v3, v8);
  _Block_release(v8);

  v20(v3, v4);
  v21(v2, v19);
  v1[13], v10, v11, v12, v13, v14, v15, v16;

  v17 = v1[1];

  return v17();
}

uint64_t sub_1BD767978(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD7679FC()
{
  v1[74] = v0;
  v2 = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[75] = v2;
  v3 = *(v2 - 8);
  v1[76] = v3;
  v1[77] = *(v3 + 64);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v4 = sub_1BE051F54();
  v1[80] = v4;
  v1[81] = *(v4 - 8);
  v1[82] = swift_task_alloc();
  v5 = sub_1BE051FA4();
  v1[83] = v5;
  v1[84] = *(v5 - 8);
  v1[85] = swift_task_alloc();
  v6 = sub_1BE04B3B4();
  v1[86] = v6;
  v1[87] = *(v6 - 8);
  v1[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[89] = swift_task_alloc();
  v7 = sub_1BE04AF64();
  v1[90] = v7;
  v1[91] = *(v7 - 8);
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD767CC0, 0, 0);
}

void sub_1BD767CC0()
{
  v1 = [*(v0[74] + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (!v1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 createdDate];

  v4 = v0[98];
  if (v3)
  {
    v5 = v0[97];
    v6 = v0[91];
    v7 = v0[90];
    v8 = v0[89];
    sub_1BE04AEE4();

    v9 = *(v6 + 32);
    v9(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    v9(v4, v8, v7);
  }

  else
  {
    v10 = v0[91];
    v11 = v0[90];
    v12 = v0[89];
    (*(v10 + 56))(v12, 1, 1, v11);
    sub_1BE04AEF4();
    if ((*(v10 + 48))(v12, 1, v11) != 1)
    {
      sub_1BD0DE53C(v0[89], &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = sub_1BE04AE64();
  sub_1BD765BC8(v13);
  v17 = sub_1BE04B374();
  v18 = *(v14 + 8);
  v0[99] = v18;
  v0[100] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);
  v19 = PKEndOfMonthWithTimeZone();

  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1BE04AEE4();

  v20 = swift_task_alloc();
  v0[101] = v20;
  *v20 = v0;
  v20[1] = sub_1BD767F40;

  sub_1BD77769C();
}

uint64_t sub_1BD767F40(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 816) = a1;

  v3 = swift_task_alloc();
  *(v2 + 824) = v3;
  *v3 = v5;
  v3[1] = sub_1BD76808C;

  return sub_1BD776BE0();
}

uint64_t sub_1BD76808C(uint64_t a1)
{
  *(*v1 + 832) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD76818C, 0, 0);
}

uint64_t sub_1BD76818C(uint64_t a1)
{
  v2 = *(v1 + 832);
  if (v2)
  {
    v3 = [*(v1 + 832) accountIdentifier];

    if (v3)
    {
      v4 = sub_1BE052434();
      v2 = v5;
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *(v1 + 848) = v2;
  *(v1 + 840) = v4;
  v6 = *(v1 + 776);
  v7 = *(v1 + 728);
  v8 = *(v1 + 720);
  *(v1 + 856) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
  *(v1 + 864) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  *(v1 + 872) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService;
  *(v1 + 880) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
  sub_1BE04AEF4();
  v9 = sub_1BE04AE84();
  v12 = *(v7 + 8);
  v11 = v7 + 8;
  v10 = v12;
  v12(v6, v8);
  if (v9)
  {
    *(v1 + 896) = v10;
    *(v1 + 888) = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20 = *(v1 + 856);
    v21 = *(v1 + 592);
    v22 = *(v21 + v20);
    v23 = sub_1BE04AE64();
    v24 = sub_1BE04AE64();
    [v22 setLimit:0 startDate:v23 endDate:v24];

    v25 = *(v21 + v20);
    *(v1 + 904) = v25;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 584;
    *(v1 + 24) = sub_1BD76852C;
    v26 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v1 + 240) = v26;
    *(v1 + 208) = MEMORY[0x1E69E9820];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_1BD9C18BC;
    *(v1 + 232) = &block_descriptor_151_0;
    [v25 reloadTransactionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  else
  {
    v27 = *(v1 + 816);
    v28 = *(v1 + 784);
    v29 = *(v1 + 768);
    v30 = *(v1 + 720);
    v2, v13, v14, v15, v16, v17, v18, v19;

    v10(v29, v30);
    v10(v28, v30);

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_1BD76852C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76860C, 0, 0);
}

uint64_t sub_1BD76860C()
{
  v2 = *(v0 + 904);
  v3 = *(v0 + 584);
  *(v0 + 912) = v3;

  *(v0 + 1552) = MEMORY[0x1BFB403C0](0);
  *(v0 + 1560) = v4;
  *(v0 + 1568) = v5;
  v6 = MEMORY[0x1BFB403C0](0);
  v8 = v7;
  *(v0 + 1532) = v6;
  v9 = v0 + 1532;
  *(v0 + 1540) = v7;
  v419 = v10;
  *(v0 + 1548) = v10;
  v11 = MEMORY[0x1BFB403C0](0);
  *(v0 + 1492) = v11;
  v404 = v0 + 1492;
  v387 = v0 + 1292;
  *(v0 + 1500) = v12;
  v13 = v12;
  v15 = v14;
  *(v0 + 1508) = v14;
  *(v0 + 1472) = MEMORY[0x1BFB403C0](0);
  *(v0 + 1480) = v16;
  *(v0 + 1488) = v17;
  if (v3)
  {
    v18 = v3;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (v18 >> 62)
  {
    v19 = sub_1BE053704();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v389 = v0 + 1552;
  v391 = v0 + 1472;
  v423 = v0;
  v392 = v0 + 1532;
  if (!v19)
  {
    v407 = HIDWORD(v6);
    v398 = v8 >> 16;
    v402 = HIWORD(v6);
    v382 = HIWORD(v8);
    v384 = HIDWORD(v8);
    aBlock = HIWORD(v11);
    v381 = HIDWORD(v11);
    v377 = HIDWORD(v13);
    v378 = v13 >> 16;
    v375 = HIWORD(v13);
    v372 = HIWORD(v15);
    v374 = HIWORD(v419);
    v371 = v15;
    sub_1BE048C84();
    v18, v60, v61, v62, v63, v64, v65, v66;
    v59 = MEMORY[0x1E69E7CC0];
    v366 = v11;
    v367 = v8;
    v21 = MEMORY[0x1E69E7CC0];
    v369 = v6;
    v365 = v13;
LABEL_48:
    *(v0 + 928) = v21;
    *(v0 + 920) = v59;
    v67 = *(v0 + 680);
    v68 = *(v0 + 672);
    v411 = *(v0 + 664);
    v416 = *(v0 + 816);
    v69 = *(v0 + 656);
    v70 = *(v0 + 648);
    v71 = *(v423 + 640);
    v72 = *(v423 + 592);
    *(v423 + 936) = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v394 = sub_1BE052D54();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v369;
    *(v73 + 28) = v407;
    *(v73 + 30) = v402;
    *(v73 + 32) = v367;
    *(v73 + 34) = v398;
    *(v73 + 36) = v384;
    *(v73 + 38) = v382;
    *(v73 + 40) = v419;
    *(v73 + 42) = v374;
    *(v73 + 44) = v366;
    *(v73 + 48) = v381;
    *(v73 + 50) = aBlock;
    *(v73 + 52) = v365;
    *(v73 + 54) = v378;
    *(v73 + 56) = v377;
    *(v73 + 58) = v375;
    *(v73 + 60) = v371;
    *(v73 + 62) = v372;
    *(v423 + 480) = sub_1BD77C358;
    *(v423 + 488) = v73;
    *(v423 + 448) = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    *(v423 + 456) = 1107296256;
    *(v423 + 464) = sub_1BD126964;
    *(v423 + 472) = &block_descriptor_157_0;
    v74 = _Block_copy((v0 + 448));
    v75 = v72;
    sub_1BE051F74();
    v76 = MEMORY[0x1E69E7CC0];
    *(v423 + 552) = MEMORY[0x1E69E7CC0];
    *(v423 + 944) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    *(v423 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    *(v423 + 960) = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v67, v69, v74);
    _Block_release(v74);

    v77 = *(v70 + 8);
    *(v423 + 968) = v77;
    *(v423 + 976) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v71;
    v19 = v423;
    v77(v69, v78);
    v79 = *(v68 + 8);
    *(v423 + 984) = v79;
    *(v423 + 992) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79(v67, v411);
    *(v423 + 488), v80, v81, v82, v83, v84, v85, v86;
    *(v423 + 536) = v76;
    *(v423 + 544) = v76;
    *v387 = MEMORY[0x1BFB403C0](0);
    *(v387 + 8) = v87;
    *(v423 + 1308) = v88;
    *(v423 + 1312) = MEMORY[0x1BFB403C0](0);
    *(v423 + 1320) = v89;
    *(v423 + 1328) = v90;
    if (v416 && *(v423 + 848))
    {
      v91 = *(*(v423 + 592) + *(v423 + 872));
      *(v423 + 1000) = v91;
      if (v91)
      {
        v92 = (v423 + 144);
        v93 = *(v423 + 816);
        sub_1BE048C84();
        v94 = v91;
        v95 = sub_1BE052404();
        *(v423 + 1008) = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1BE0B7020;
        *(v96 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
        v97 = sub_1BE052724();
        *(v423 + 1016) = v97;
        v96, v98, v99, v100, v101, v102, v103, v104;
        v105 = sub_1BE04AE64();
        *(v423 + 1024) = v105;
        v106 = sub_1BE04AE64();
        *(v423 + 1032) = v106;
        *(v423 + 144) = v423;
        *(v423 + 184) = v423 + 568;
        *(v423 + 152) = sub_1BD76A274;
        v107 = swift_continuation_init();
        *(v423 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E0, &qword_1BE0F5AE8);
        *(v423 + 336) = MEMORY[0x1E69E9820];
        *(v423 + 344) = 1107296256;
        *(v423 + 352) = sub_1BD777AF8;
        *(v423 + 360) = &block_descriptor_166_1;
        *(v423 + 368) = v107;
        [v94 eventsForAccountIdentifier:v95 types:v97 startDate:v105 endDate:v106 orderedByDate:-1 limit:0 completion:v423 + 336];
        goto LABEL_59;
      }

      v210 = *(v423 + 816);
      *(v423 + 1056) = 0;
      v211 = MEMORY[0x1E69E7CC0];
      *(v423 + 1048) = MEMORY[0x1E69E7CC0];
      v212 = v210;
      sub_1BE048C84();
      v3 = (v211 & 0xFFFFFFFFFFFFFF8);
      if (v211 >> 62)
      {
        v220 = sub_1BE053704();
      }

      else
      {
        v220 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v423 + 1072) = v220;
      *(v423 + 1064) = v3;
      *(v423 + 1104) = v211;
      *(v423 + 1096) = v211;
      *(v423 + 1088) = v211;
      *(v423 + 1080) = v211;
      if (!v220)
      {
LABEL_119:
        v294 = *(v19 + 1048);
        v295 = *(v19 + 848);
        v296 = *(v19 + 816);
        *(v19 + 1056), v213, v214, v215, v216, v217, v218, v219;
        v294, v297, v298, v299, v300, v301, v302, v303;
        v295, v304, v305, v306, v307, v308, v309, v310;
        v311 = swift_task_alloc();
        *(v19 + 1256) = v311;
        *v311 = v19;
        v311[1] = sub_1BD76B7E0;
        v312 = *(v19 + 784);
        v313 = *(v19 + 768);

        return sub_1BD777B0C(v296, v312, v313);
      }

      v110 = 0;
      v403 = v423 + 536;
      v404 = v423 + 576;
      v112 = &selRef_issuerAdministrativeAreaCode;
      v108 = MEMORY[0x1E69E69C0];
      v109 = 1;
      v414 = v211;
      v418 = v211;
      v422 = v211;
      v0 = 40;
      while (1)
      {
        while (1)
        {
          v228 = *(v19 + 1048);
          if ((v228 & 0xC000000000000001) != 0)
          {
            v229 = MEMORY[0x1BFB40900](v110);
          }

          else
          {
            if (v110 >= *(*(v19 + 1064) + 16))
            {
              goto LABEL_125;
            }

            v229 = *(v228 + 8 * v110 + 32);
          }

          v111 = v229;
          *(v19 + 1112) = v229;
          v230 = __OFADD__(v110++, 1);
          *(v19 + 1120) = v110;
          if (v230)
          {
            goto LABEL_124;
          }

          v41 = [v229 items];
          if (!v41)
          {
            goto LABEL_151;
          }

          v231 = v41;
          v3 = sub_1BE052A34();

          v232 = 0;
          v233 = 0;
          v234 = 1 << *(v3 + 32);
          while (1)
          {
            v235 = v3[v233 + 7];
            if (v235)
            {
              break;
            }

            ++v233;
            v232 -= 64;
            if ((v234 + 63) >> 6 == v233)
            {
              goto LABEL_70;
            }
          }

          v236 = __clz(__rbit64(v235));
          if (v236 - v234 != v232)
          {
            break;
          }

LABEL_70:

          v3, v221, v222, v223, v224, v225, v226, v227;
LABEL_71:
          if (v110 == *(v19 + 1072))
          {
            goto LABEL_119;
          }
        }

        if (-v232 < 0 || (v237 = v236 - v232, v237 >= v234))
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (((v3[(v233 & 0x3FFFFFFFFFFFFFFLL) + 7] >> v236) & 1) == 0)
        {
          goto LABEL_145;
        }

        sub_1BD149C8C(&v3[6][40 * v237], v19 + 496);
        v3, v238, v239, v240, v241, v242, v243, v244;
        v3 = sub_1BE053794();
        *(v19 + 1128) = v3;
        sub_1BD149CE8(v19 + 496);
        objc_opt_self();
        v245 = swift_dynamicCastObjCClass();
        if (!v245)
        {

          goto LABEL_71;
        }

        v246 = v245;
        v41 = [v245 currencyAmount];
        if (!v41)
        {
          goto LABEL_156;
        }

        v247 = v41;
        v248 = [v41 amount];

        if (!v248)
        {
          goto LABEL_155;
        }

        [v248 decimalValue];
        v400 = *(v19 + 1512);
        *(v19 + 1572) = v400;
        v396 = *(v19 + 1516);
        *(v19 + 1580) = v396;
        v392 = *(v19 + 1518);
        *(v19 + 1582) = v392;
        v391 = *(v19 + 1520);
        *(v19 + 1576) = v391;
        v389 = *(v19 + 1524);
        *(v19 + 1584) = v389;
        v386 = *(v19 + 1526);
        *(v19 + 1586) = v386;
        v249 = *(v19 + 1528);
        *(v19 + 1588) = v249;
        v250 = *(v19 + 1530);
        *(v19 + 1590) = v250;

        MEMORY[0x1BFB40450](v387, v400 | (v396 << 32) | (v392 << 48), v391 | (v389 << 32) | (v386 << 48), v249 | (v250 << 16));
        v251 = [v246 type];
        v253 = (v423 + 544);
        v252 = v414;
        if (!v251)
        {
          v254 = v111;
          MEMORY[0x1BFB3F7A0]();
          if (*(*v403 + 16) >= *(*v403 + 24) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();
          v252 = *v403;
          v19 = v423;
        }

        *(v19 + 1136) = v252;
        v255 = [v246 transactionIdentifiers];
        if (v255)
        {
          v256 = v255;
          v257 = sub_1BE052A34();
        }

        else
        {
          v257 = 0;
        }

        *(v19 + 1144) = v257;
        v258 = [v246 rewardsAddedIdentifiers];
        if (v258)
        {
          v259 = v258;
          v260 = sub_1BE052A34();
        }

        else
        {
          v260 = 0;
        }

        v261 = v418;
        *(v19 + 1152) = v260;
        if (!v257)
        {
          v3 = MEMORY[0x1E69E7CD0];
          goto LABEL_108;
        }

        if (*(v257 + 16) || !v260)
        {
          goto LABEL_106;
        }

        v262 = *(v260 + 16);
        v3 = v257;
        if (!v262)
        {
          break;
        }

LABEL_108:
        *(v19 + 1168) = v261;
        *(v19 + 1160) = v3;
        v264 = *(v3 + 32);
        *(v19 + 1592) = v264;
        v265 = -1 << v264;
        if (-(-1 << v264) < 64)
        {
          v266 = ~(-1 << -(-1 << v264));
        }

        else
        {
          v266 = -1;
        }

        v0 = v266 & v3[7];
        *(v19 + 1176) = v422;
        *(v19 + 1184) = MEMORY[0x1E69E7CC0];
        sub_1BE048C84();
        if (v0)
        {
          goto LABEL_126;
        }

        v267 = 0;
        while (((63 - v265) >> 6) - 1 != v267)
        {
          v268 = v267 + 1;
          v0 = v3[v267++ + 8];
          if (v0)
          {
            goto LABEL_127;
          }
        }

        v269 = *(v19 + 1152);
        v270 = *(v19 + 1144);
        v271 = *(v19 + 1112);

        v3, v272, v273, v274, v275, v276, v277, v278;
        v270, v279, v280, v281, v282, v283, v284, v285;
        v269, v286, v287, v288, v289, v290, v291, v292;
        v293 = *(v19 + 1176);
        v110 = *(v19 + 1120);
        v414 = *(v19 + 1136);
        v418 = *(v19 + 1168);
        *(v19 + 1104) = v418;
        *(v19 + 1096) = v414;
        v422 = v293;
        *(v19 + 1088) = v293;
        *(v19 + 1080) = MEMORY[0x1E69E7CC0];
        v0 = 40;
        if (v110 == *(v19 + 1072))
        {
          goto LABEL_119;
        }
      }

      v263 = v111;
      MEMORY[0x1BFB3F7A0]();
      if (*(*(v423 + 544) + 16) >= *(*(v423 + 544) + 24) >> 1)
      {
        sub_1BE052774();
        v253 = (v423 + 544);
      }

      sub_1BE0527C4();
      v261 = *v253;
LABEL_106:
      v3 = v257;
      goto LABEL_108;
    }

    v108 = v423 + 1312;
    v109 = v423 + 1332;
    v110 = v423 + 1352;
    v111 = (v423 + 1372);
    v3 = (v423 + 1392);
    v19 = v423 + 1412;
    v112 = (v423 + 1432);
    v113 = *(v423 + 912);
    (*(*(v423 + 728) + 16))(*(v423 + 744), *(v423 + 784), *(v423 + 720));
    aBlock = (v423 + 400);
    if (v113)
    {
      v114 = *(v423 + 912);
      if (v114 >> 62)
      {
LABEL_146:
        v360 = sub_1BE053704();
      }

      else
      {
        v360 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v360 = 0;
    }

    v376 = *(v423 + 984);
    v370 = *(v423 + 968);
    v408 = *(v423 + 920);
    v412 = *(v423 + 928);
    v383 = *(v423 + 896);
    v399 = *(v423 + 792);
    v379 = *(v423 + 784);
    v373 = *(v423 + 776);
    v359 = *(v423 + 744);
    v417 = *(v423 + 720);
    v421 = *(v423 + 728);
    v385 = *(v423 + 704);
    v395 = *(v423 + 688);
    v368 = *(v423 + 664);
    v363 = *(v423 + 680);
    v364 = *(v423 + 656);
    v115 = *v389;
    *(v112 + 4) = *(v389 + 16);
    v390 = *(v423 + 640);
    *v112 = v115;
    v116 = *v391;
    *(v19 + 16) = *(v391 + 16);
    v117 = *(v423 + 632);
    *v19 = v116;
    v118 = *v392;
    *(v3 + 4) = *(v392 + 16);
    v111[4] = *(v404 + 16);
    v362 = *(v423 + 624);
    *v3 = v118;
    *v111 = *v404;
    v119 = *v387;
    *(v110 + 16) = *(v387 + 16);
    *(v109 + 16) = *(v108 + 16);
    v361 = *(v423 + 608);
    *v110 = v119;
    v120 = *v108;
    v121 = *(v423 + 600);
    *v109 = v120;
    v388 = *(v423 + 592);
    swift_bridgeObjectRetain_n();
    v122 = MEMORY[0x1BFB403C0](0);
    v357 = v123;
    v358 = v122;
    v356 = v124;
    swift_bridgeObjectRetain_n();
    sub_1BE048C84();
    sub_1BE048C84();
    v125 = MEMORY[0x1BFB403C0](0);
    v354 = v126;
    v355 = v125;
    v353 = v127;
    v405 = *(v421 + 32);
    v405(v117, v359, v417);
    *(v117 + v121[5]) = v360;
    v128 = v117 + v121[6];
    v129 = *v112;
    *(v128 + 16) = *(v112 + 4);
    *v128 = v129;
    v130 = v117 + v121[7];
    v131 = *v19;
    *(v130 + 16) = *(v19 + 16);
    *v130 = v131;
    v132 = v117 + v121[8];
    v133 = *(v3 + 4);
    *v132 = *v3;
    *(v132 + 16) = v133;
    v134 = v117 + v121[9];
    v135 = v111[4];
    *v134 = *v111;
    *(v134 + 16) = v135;
    v136 = MEMORY[0x1E69E7CC0];
    *(v117 + v121[10]) = MEMORY[0x1E69E7CC0];
    *(v117 + v121[11]) = v136;
    v137 = v117 + v121[12];
    v138 = *(v110 + 16);
    *v137 = *v110;
    *(v137 + 16) = v138;
    v139 = v117 + v121[13];
    v140 = *(v109 + 16);
    *v139 = *v109;
    *(v139 + 16) = v140;
    v141 = v117 + v121[14];
    *v141 = v358;
    *(v141 + 8) = v357;
    *(v141 + 16) = v356;
    *(v117 + v121[15]) = v136;
    *(v117 + v121[16]) = v136;
    *(v117 + v121[17]) = v136;
    *(v117 + v121[18]) = v408;
    *(v117 + v121[19]) = v412;
    v142 = v117 + v121[20];
    *v142 = v355;
    *(v142 + 8) = v354;
    *(v142 + 16) = v353;
    v143 = sub_1BE052D54();
    sub_1BD77BFE0(v117, v362, type metadata accessor for AccountDebugTransactionGroup);
    v144 = (*(v361 + 80) + 24) & ~*(v361 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = v388;
    sub_1BD77C264(v362, v145 + v144, type metadata accessor for AccountDebugTransactionGroup);
    *(v423 + 432) = sub_1BD77C4AC;
    *(v423 + 440) = v145;
    *(v423 + 400) = MEMORY[0x1E69E9820];
    *(v423 + 408) = 1107296256;
    *(v423 + 416) = sub_1BD126964;
    *(v423 + 424) = &block_descriptor_163_0;
    v146 = _Block_copy(aBlock);
    v147 = v388;
    sub_1BE051F74();
    *(v423 + 560) = v136;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v363, v364, v146);
    _Block_release(v146);

    v370(v364, v390);
    v376(v363, v368);
    *(v423 + 440), v148, v149, v150, v151, v152, v153, v154;
    sub_1BE04ADD4();
    v383(v379, v417);
    v405(v379, v373, v417);
    v155 = sub_1BE04AE64();
    sub_1BD765BC8(v385);
    v156 = sub_1BE04B374();
    v399(v385, v395);
    v157 = PKEndOfMonthWithTimeZone();

    if (v157)
    {
      v409 = *(v423 + 920);
      v413 = *(v423 + 928);
      v165 = *(v423 + 896);
      v166 = *(v423 + 776);
      v167 = *(v423 + 768);
      v168 = *(v423 + 736);
      v169 = *(v423 + 728);
      v170 = *(v423 + 720);
      v171 = *(v423 + 632);
      *(v423 + 912), v158, v159, v160, v161, v162, v163, v164;
      sub_1BE04AEE4();

      sub_1BD77C048(v171, type metadata accessor for AccountDebugTransactionGroup);
      v165(v167, v170);
      swift_bridgeObjectRelease_n();
      v409, v172, v173, v174, v175, v176, v177, v178;
      v413, v179, v180, v181, v182, v183, v184, v185;
      v405(v167, v168, v170);
      sub_1BE04AEF4();
      v186 = sub_1BE04AE84();
      v189 = *(v169 + 8);
      v187 = v169 + 8;
      v188 = v189;
      v189(v166, v170);
      if ((v186 & 1) == 0)
      {
        v204 = *(v423 + 816);
        v205 = *(v423 + 784);
        v206 = *(v423 + 768);
        v207 = *(v423 + 720);
        *(v423 + 848), v190, v191, v192, v193, v194, v195, v196;

        v188(v206, v207);
        v188(v205, v207);

        v208 = *(v423 + 8);

        return v208();
      }

      v92 = (v423 + 16);
      *(v423 + 896) = v188;
      *(v423 + 888) = v187 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v197 = *(v423 + 856);
      v198 = *(v423 + 592);
      v199 = *(v198 + v197);
      v200 = sub_1BE04AE64();
      v201 = sub_1BE04AE64();
      [v199 setLimit:0 startDate:v200 endDate:v201];

      v202 = *(v198 + v197);
      *(v423 + 904) = v202;
      *(v423 + 16) = v423;
      *(v423 + 56) = v423 + 584;
      *(v423 + 24) = sub_1BD76852C;
      v203 = swift_continuation_init();
      *(v423 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      *(v423 + 208) = MEMORY[0x1E69E9820];
      *(v423 + 216) = 1107296256;
      *(v423 + 224) = sub_1BD9C18BC;
      *(v423 + 232) = &block_descriptor_151_0;
      *(v423 + 240) = v203;
      [v202 reloadTransactionsWithCompletion_];
LABEL_59:
      v41 = v92;
      goto LABEL_60;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v41);
  }

  v415 = v18 & 0xC000000000000001;
  v401 = v18 & 0xFFFFFFFFFFFFFF8;
  sub_1BE048C84();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v393 = MEMORY[0x1E69E7CC0];
  v406 = v19;
  v410 = v18;
  while (1)
  {
    if (v415)
    {
      v29 = MEMORY[0x1BFB40900](v20, v18);
      v30 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      goto LABEL_16;
    }

    if (v20 >= *(v401 + 16))
    {
      goto LABEL_123;
    }

    v29 = v18[v20 + 4];
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

LABEL_16:
    v31 = *(*(v0 + 592) + *(v0 + 864));
    v32 = v29;
    v33 = v31;
    v420 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1BD1D96EC(0, *(v21 + 2) + 1, 1, v21, v34, v35, v36, v37);
    }

    v39 = *(v21 + 2);
    v38 = *(v21 + 3);
    if (v39 >= v38 >> 1)
    {
      v21 = sub_1BD1D96EC((v38 > 1), v39 + 1, 1, v21, v34, v35, v36, v37);
    }

    *(v21 + 2) = v39 + 1;
    v40 = &v21[16 * v39];
    *(v40 + 4) = v32;
    *(v40 + 5) = v33;
    v3 = &selRef_thumbnailWidth;
    if ([v32 transactionStatus] == 2)
    {
    }

    else
    {
      if ([v32 transactionStatus])
      {
        goto LABEL_24;
      }

      sub_1BE04AEF4();
      v41 = [v32 transactionDate];
      if (!v41)
      {
        goto LABEL_150;
      }

      v42 = v41;
      v43 = *(v0 + 896);
      v44 = *(v0 + 776);
      v397 = *(v0 + 760);
      v45 = *(v0 + 752);
      v46 = *(v423 + 720);
      sub_1BE04AEE4();

      sub_1BE04ADD4();
      sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LOBYTE(v42) = sub_1BE0522F4();
      v43(v44, v46);
      v43(v45, v46);
      v0 = v423;
      v43(v397, v46);
      v9 = v392;
      if (v42)
      {
LABEL_24:
        v47 = [v32 transactionType];
        v48 = 0;
        if ((v47 - 4) >= 2 && v47)
        {
          if (v47 == 7)
          {
            v49 = [v32 adjustmentType];
            if (v49 >= 0x12)
            {
              v48 = 0;
            }

            else
            {
              v48 = 0x2A60Au >> v49;
            }
          }

          else
          {
            v48 = 1;
          }
        }

        v41 = [v32 amount];
        if (v41)
        {
          v53 = v41;
          v54 = [v41 pk_absoluteValue];

          if (!v54)
          {
            goto LABEL_149;
          }

          [v54 decimalValue];
          v3 = *(v423 + 1452);
          v55 = *(v423 + 1460);
          v56 = *(v423 + 1468);

          if (v48)
          {
            v57 = v9;
          }

          else
          {
            v57 = v404;
          }

          MEMORY[0x1BFB40450](v57, v3, v55, v56);
          v58 = [v32 transactionType];
          if (v58 == 11)
          {
            v0 = v423;
            MEMORY[0x1BFB40450](v391, *(v423 + 1472), *(v423 + 1480), *(v423 + 1488));

            v19 = v406;
            v18 = v410;
          }

          else
          {
            v19 = v406;
            v18 = v410;
            if (v58 == 9)
            {
              MEMORY[0x1BFB40450](v389, v3, v55, v56);
            }

            v0 = v423;
          }

          goto LABEL_9;
        }

        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v3 = *(*(v423 + 592) + *(v423 + 864));
      v19 = v406;
      v18 = v410;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v393 = sub_1BD1D96EC(0, *(v393 + 2) + 1, 1, v393, v25, v26, v27, v28);
      }

      v51 = *(v393 + 2);
      v50 = *(v393 + 3);
      if (v51 >= v50 >> 1)
      {
        v393 = sub_1BD1D96EC((v50 > 1), v51 + 1, 1, v393, v25, v26, v27, v28);
      }

      *(v393 + 2) = v51 + 1;
      v52 = &v393[16 * v51];
      *(v52 + 4) = v32;
      *(v52 + 5) = v3;
    }

LABEL_9:
    ++v20;
    if (v420 == v19)
    {
      v18, v22, v23, v24, v25, v26, v27, v28;
      v369 = *(v0 + 1532);
      LOWORD(v407) = *(v0 + 1536);
      LOWORD(v402) = *(v0 + 1538);
      v367 = *(v0 + 1540);
      LOWORD(v398) = *(v0 + 1542);
      LOWORD(v384) = *(v0 + 1544);
      LOWORD(v382) = *(v0 + 1546);
      LOWORD(v419) = *(v0 + 1548);
      LOWORD(v374) = *(v0 + 1550);
      v366 = *(v0 + 1492);
      LOWORD(v381) = *(v0 + 1496);
      aBlock = *(v0 + 1498);
      v365 = *(v0 + 1500);
      LOWORD(v378) = *(v0 + 1502);
      LOWORD(v377) = *(v0 + 1504);
      LOWORD(v375) = *(v0 + 1506);
      v371 = *(v0 + 1508);
      LOWORD(v372) = *(v0 + 1510);
      v59 = v393;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  v268 = 0;
LABEL_127:
  *(v19 + 1200) = v268;
  *(v19 + 1192) = v0;
  v314 = *(v19 + 816);
  v315 = &v3[6][(v268 << 10) | (16 * __clz(__rbit64(v0)))];
  *(v19 + 1208) = *v315;
  *(v19 + 1216) = *(v315 + 1);
  sub_1BE048C84();
  v316 = [v314 transactionSourceIdentifiers];
  if (!v316)
  {
LABEL_134:
    v331 = 0;
    goto LABEL_135;
  }

  v317 = v316;
  v318 = sub_1BE052A34();

  v41 = v318;
  v326 = 0;
  v327 = 0;
  v328 = 1 << *(v318 + 32);
  while (1)
  {
    v329 = *(v318 + 8 * v327 + 56);
    if (v329)
    {
      break;
    }

    ++v327;
    v326 -= 64;
    if ((v328 + 63) >> 6 == v327)
    {
      goto LABEL_133;
    }
  }

  v330 = __clz(__rbit64(v329));
  if (v330 - v328 == v326)
  {
LABEL_133:
    v318, v319, v320, v321, v322, v323, v324, v325;
    goto LABEL_134;
  }

  if (-v326 < 0)
  {
    goto LABEL_152;
  }

  v344 = v330 - v326;
  if (v344 >= v328)
  {
    goto LABEL_152;
  }

  if (((*(v318 + 56 + 8 * (v327 & 0x3FFFFFFFFFFFFFFLL)) >> v330) & 1) == 0)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v331 = *(*(v318 + 48) + 16 * v344 + 8);
  v345 = v41;
  sub_1BE048C84();
  v345, v346, v347, v348, v349, v350, v351, v352;
LABEL_135:
  *(v19 + 1224) = v331;
  v332 = *(*(v19 + 592) + *(v19 + 880));
  *(v19 + 1232) = v332;
  v333 = v332;
  v334 = sub_1BE052404();
  *(v19 + 1240) = v334;
  if (v331)
  {
    sub_1BE048C84();
    v335 = sub_1BE052404();
    v331, v336, v337, v338, v339, v340, v341, v342;
  }

  else
  {
    v335 = 0;
  }

  *(v19 + 1248) = v335;
  *(v19 + 80) = v19;
  *(v19 + 120) = v404;
  *(v19 + 88) = sub_1BD76AC9C;
  v343 = swift_continuation_init();
  *(v19 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
  *(v19 + 272) = MEMORY[0x1E69E9820];
  *(v19 + 280) = v1;
  *(v19 + 288) = sub_1BD1F07A8;
  *(v19 + 296) = &block_descriptor_169_0;
  *(v19 + 304) = v343;
  [v333 transactionWithServiceIdentifier:v334 transactionSourceIdentifier:v335 completion:v19 + 272];
  v41 = (v19 + 80);
LABEL_60:

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1BD76A274()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1040) = v1;
  if (v1)
  {
    v2 = sub_1BD76C27C;
  }

  else
  {
    v2 = sub_1BD76A384;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD76A384()
{
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 568);

  v14 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1BE048C84();
    v15 = v6;
  }

  else
  {
    v15 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1056) = v15;
  *(v0 + 1048) = v6;
  if (v6 >> 62)
  {
LABEL_83:
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_1BE053704();
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1072) = v17;
  *(v0 + 1064) = v16;
  *(v0 + 1104) = v14;
  *(v0 + 1096) = v14;
  *(v0 + 1088) = v14;
  *(v0 + 1080) = v14;
  if (!v17)
  {
LABEL_57:
    v92 = *(v0 + 1048);
    v93 = *(v0 + 848);
    v94 = *(v0 + 816);
    *(v0 + 1056), v7, v8, v9, v10, v11, v12, v13;
    v92, v95, v96, v97, v98, v99, v100, v101;
    v93, v102, v103, v104, v105, v106, v107, v108;
    v109 = swift_task_alloc();
    *(v0 + 1256) = v109;
    *v109 = v0;
    v109[1] = sub_1BD76B7E0;
    v110 = *(v0 + 784);
    v111 = *(v0 + 768);

    return sub_1BD777B0C(v94, v110, v111);
  }

  v18 = 0;
  v19 = v0 + 576;
  v159 = (v0 + 536);
  v14 = 1;
  v160 = MEMORY[0x1E69E7CC0];
  v161 = MEMORY[0x1E69E7CC0];
  v162 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v27 = *(v0 + 1048);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1BFB40900](v18);
    }

    else
    {
      if (v18 >= *(*(v0 + 1064) + 16))
      {
        goto LABEL_61;
      }

      v28 = *(v27 + 8 * v18 + 32);
    }

    v29 = v28;
    *(v0 + 1112) = v28;
    v30 = __OFADD__(v18++, 1);
    *(v0 + 1120) = v18;
    if (v30)
    {
      break;
    }

    v31 = [v28 items];
    if (!v31)
    {
      __break(1u);
      goto LABEL_85;
    }

    v1 = v31;
    v6 = sub_1BE052A34();

    v32 = 0;
    v33 = 0;
    v34 = 1 << *(v6 + 32);
    while (1)
    {
      v35 = *(v6 + 8 * v33 + 56);
      if (v35)
      {
        break;
      }

      ++v33;
      v32 -= 64;
      if ((v34 + 63) >> 6 == v33)
      {
        goto LABEL_8;
      }
    }

    v36 = __clz(__rbit64(v35));
    if (v36 - v34 == v32)
    {
LABEL_8:

      v6, v20, v21, v22, v23, v24, v25, v26;
LABEL_9:
      if (v18 == *(v0 + 1072))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (-v32 < 0 || (v37 = v36 - v32, v37 >= v34))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (((*(v6 + 56 + 8 * (v33 & 0x3FFFFFFFFFFFFFFLL)) >> v36) & 1) == 0)
      {
        goto LABEL_82;
      }

      sub_1BD149C8C(*(v6 + 48) + 40 * v37, v0 + 496);
      v6, v38, v39, v40, v41, v42, v43, v44;
      v45 = sub_1BE053794();
      *(v0 + 1128) = v45;
      sub_1BD149CE8(v0 + 496);
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (!v46)
      {

        goto LABEL_9;
      }

      v47 = v46;
      v152 = v19;
      v31 = [v46 currencyAmount];
      if (!v31)
      {
        goto LABEL_88;
      }

      v48 = v31;
      v49 = [v31 amount];

      if (!v49)
      {
        goto LABEL_87;
      }

      [v49 decimalValue];
      v158 = *(v0 + 1512);
      *(v0 + 1572) = v158;
      v157 = *(v0 + 1516);
      *(v0 + 1580) = v157;
      v156 = *(v0 + 1518);
      *(v0 + 1582) = v156;
      v155 = *(v0 + 1520);
      *(v0 + 1576) = v155;
      v154 = *(v0 + 1524);
      *(v0 + 1584) = v154;
      v153 = *(v0 + 1526);
      *(v0 + 1586) = v153;
      v50 = *(v0 + 1528);
      *(v0 + 1588) = v50;
      v51 = *(v0 + 1530);
      *(v0 + 1590) = v51;

      MEMORY[0x1BFB40450](v0 + 1292, v158 | (v157 << 32) | (v156 << 48), v155 | (v154 << 32) | (v153 << 48), v50 | (v51 << 16));
      v52 = [v47 type];
      v53 = v160;
      if (!v52)
      {
        v54 = v29;
        MEMORY[0x1BFB3F7A0]();
        if (*(*v159 + 16) >= *(*v159 + 24) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v53 = *v159;
      }

      *(v0 + 1136) = v53;
      v55 = [v47 transactionIdentifiers];
      if (v55)
      {
        v56 = v55;
        v18 = sub_1BE052A34();
      }

      else
      {
        v18 = 0;
      }

      v57 = (v0 + 544);
      *(v0 + 1144) = v18;
      v58 = [v47 rewardsAddedIdentifiers];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1BE052A34();
      }

      else
      {
        v60 = 0;
      }

      v61 = v161;
      *(v0 + 1152) = v60;
      if (v18)
      {
        if (!*(v18 + 16) && v60 && !*(v60 + 16))
        {
          v62 = v29;
          MEMORY[0x1BFB3F7A0]();
          if (*(*(v0 + 544) + 16) >= *(*(v0 + 544) + 24) >> 1)
          {
            sub_1BE052774();
            v57 = (v0 + 544);
          }

          sub_1BE0527C4();
          v61 = *v57;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 1168) = v61;
      *(v0 + 1160) = v18;
      v63 = *(v18 + 32);
      *(v0 + 1592) = v63;
      v64 = -1 << v63;
      if (-(-1 << v63) < 64)
      {
        v65 = ~(-1 << -(-1 << v63));
      }

      else
      {
        v65 = -1;
      }

      v1 = (v65 & *(v18 + 56));
      *(v0 + 1176) = v162;
      *(v0 + 1184) = MEMORY[0x1E69E7CC0];
      sub_1BE048C84();
      if (v1)
      {
        goto LABEL_62;
      }

      v66 = 0;
      while (((63 - v64) >> 6) - 1 != v66)
      {
        v67 = v66 + 1;
        v1 = *(v18 + 8 * v66++ + 64);
        if (v1)
        {
          goto LABEL_63;
        }
      }

      v1 = *(v0 + 1152);
      v68 = *(v0 + 1144);
      v69 = *(v0 + 1112);

      v18, v70, v71, v72, v73, v74, v75, v76;
      v68, v77, v78, v79, v80, v81, v82, v83;
      v1, v84, v85, v86, v87, v88, v89, v90;
      v91 = *(v0 + 1176);
      v18 = *(v0 + 1120);
      v160 = *(v0 + 1136);
      v161 = *(v0 + 1168);
      *(v0 + 1104) = v161;
      *(v0 + 1096) = v160;
      v162 = v91;
      *(v0 + 1088) = v91;
      *(v0 + 1080) = MEMORY[0x1E69E7CC0];
      v19 = v152;
      if (v18 == *(v0 + 1072))
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v67 = 0;
LABEL_63:
  *(v0 + 1200) = v67;
  *(v0 + 1192) = v1;
  v113 = *(v0 + 816);
  v114 = (*(v18 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v1)))));
  *(v0 + 1208) = *v114;
  *(v0 + 1216) = v114[1];
  sub_1BE048C84();
  v115 = [v113 transactionSourceIdentifiers];
  if (!v115)
  {
LABEL_70:
    v130 = 0;
    goto LABEL_71;
  }

  v116 = v115;
  v117 = sub_1BE052A34();

  v31 = v117;
  v125 = 0;
  v126 = 0;
  v127 = 1 << *(v117 + 32);
  while (1)
  {
    v128 = *(v117 + 8 * v126 + 56);
    if (v128)
    {
      break;
    }

    ++v126;
    v125 -= 64;
    if ((v127 + 63) >> 6 == v126)
    {
      goto LABEL_69;
    }
  }

  v129 = __clz(__rbit64(v128));
  if (v129 - v127 == v125)
  {
LABEL_69:
    v117, v118, v119, v120, v121, v122, v123, v124;
    goto LABEL_70;
  }

  if (-v125 < 0 || (v143 = v129 - v125, v143 >= v127))
  {
LABEL_85:
    __break(1u);
  }

  else if ((*(v117 + 56 + 8 * (v126 & 0x3FFFFFFFFFFFFFFLL)) >> v129))
  {
    v130 = *(*(v117 + 48) + 16 * v143 + 8);
    v144 = v31;
    sub_1BE048C84();
    v144, v145, v146, v147, v148, v149, v150, v151;
LABEL_71:
    *(v0 + 1224) = v130;
    v131 = *(*(v0 + 592) + *(v0 + 880));
    *(v0 + 1232) = v131;
    v132 = v131;
    v133 = sub_1BE052404();
    *(v0 + 1240) = v133;
    if (v130)
    {
      sub_1BE048C84();
      v134 = sub_1BE052404();
      v130, v135, v136, v137, v138, v139, v140, v141;
    }

    else
    {
      v134 = 0;
    }

    *(v0 + 1248) = v134;
    *(v0 + 80) = v0;
    *(v0 + 120) = v152;
    *(v0 + 88) = sub_1BD76AC9C;
    v142 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD1F07A8;
    *(v0 + 296) = &block_descriptor_169_0;
    *(v0 + 304) = v142;
    [v132 transactionWithServiceIdentifier:v133 transactionSourceIdentifier:v134 completion:v0 + 272];
    v31 = (v0 + 80);

    return MEMORY[0x1EEE6DEC8](v31);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_1BD76AC9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76AD7C, 0, 0);
}

uint64_t sub_1BD76AD7C()
{
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = *(v0 + 576);

  if (!v5)
  {
    *(v0 + 1224), v6, v7, v8, v9, v10, v11, v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v0 + 1184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_12;
  }

  v13 = [v5 rewardsTotalAmount];
  if (!v13)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v13);
  }

  v21 = v13;
  v22 = *(v0 + 1224);
  v215 = *(v0 + 1588);
  v23 = *(v0 + 1584);
  v24 = *(v0 + 1576);
  v25 = *(v0 + 1580);
  v26 = *(v0 + 1572);
  v27 = *(v0 + 1582);
  v28 = *(v0 + 1586);
  *(v0 + 1216), v14, v15, v16, v17, v18, v19, v20;
  v29 = v26 | (v27 << 48) | (v25 << 32);
  v30 = v24 | (v28 << 48) | (v23 << 32);
  v22, v31, v32, v33, v34, v35, v36, v37;
  [v21 decimalValue];
  v38 = *(v0 + 1272);
  v39 = *(v0 + 1280);
  v2 = *(v0 + 1288);

  v40 = MEMORY[0x1BFB40440](v38, v39, v2, v29, v30, v215);
  v1 = *(v0 + 1176);
  if ((v40 & 1) == 0)
  {
    v41 = *(v0 + 816);
    v42 = v5;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 1176);
    if ((v43 & 1) == 0)
    {
      v1 = sub_1BD1D96EC(0, *(v1 + 16) + 1, 1, *(v0 + 1176), v44, v45, v46, v47);
    }

    v49 = *(v1 + 16);
    v48 = *(v1 + 24);
    if (v49 >= v48 >> 1)
    {
      v1 = sub_1BD1D96EC((v48 > 1), v49 + 1, 1, v1, v44, v45, v46, v47);
    }

    v50 = *(v0 + 816);
    *(v1 + 16) = v49 + 1;
    v51 = v1 + 16 * v49;
    *(v51 + 32) = v42;
    *(v51 + 40) = v50;
  }

  MEMORY[0x1BFB40450](v0 + 1312, v38, v39, v2);

  v56 = *(v0 + 1200);
  v57 = *(v0 + 1184);
  v58 = (*(v0 + 1192) - 1) & *(v0 + 1192);
LABEL_10:
  *(v0 + 1176) = v1;
  while (1)
  {
    *(v0 + 1184) = v57;
    if (v58)
    {
      v66 = *(v0 + 1160);
LABEL_20:
      *(v0 + 1200) = v56;
      *(v0 + 1192) = v58;
      v67 = *(v0 + 816);
      v68 = (v66[6] + ((v56 << 10) | (16 * __clz(__rbit64(v58)))));
      *(v0 + 1208) = *v68;
      *(v0 + 1216) = v68[1];
      sub_1BE048C84();
      v69 = [v67 transactionSourceIdentifiers];
      if (v69)
      {
        v70 = v69;
        v57 = sub_1BE052A34();

        v78 = v57;
        v79 = 0;
        v80 = 0;
        v81 = 1 << *(v57 + 32);
        while (1)
        {
          v82 = *(v57 + 8 * v80 + 56);
          if (v82)
          {
            break;
          }

          ++v80;
          v79 -= 64;
          if ((v81 + 63) >> 6 == v80)
          {
            goto LABEL_49;
          }
        }

        v161 = __clz(__rbit64(v82));
        if (v161 - v81 == v79)
        {
LABEL_49:
          v57, v71, v72, v73, v74, v75, v76, v77;
          goto LABEL_50;
        }

        if (-v79 < 0 || (v198 = v161 - v79, v198 >= v81))
        {
          __break(1u);
        }

        else if ((*(v57 + 56 + 8 * (v80 & 0x3FFFFFFFFFFFFFFLL)) >> v161))
        {
          v162 = *(*(v57 + 48) + 16 * v198 + 8);
          v199 = v78;
          sub_1BE048C84();
          v199, v200, v201, v202, v203, v204, v205, v206;
          goto LABEL_51;
        }

        __break(1u);
LABEL_91:
        sub_1BE052774();
        v188 = (v0 + 536);
        goto LABEL_61;
      }

LABEL_50:
      v162 = 0;
LABEL_51:
      *(v0 + 1224) = v162;
      v163 = *(*(v0 + 592) + *(v0 + 880));
      *(v0 + 1232) = v163;
      v164 = v163;
      v165 = sub_1BE052404();
      *(v0 + 1240) = v165;
      if (v162)
      {
        sub_1BE048C84();
        v166 = sub_1BE052404();
        v162, v167, v168, v169, v170, v171, v172, v173;
      }

      else
      {
        v166 = 0;
      }

      *(v0 + 1248) = v166;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 576;
      *(v0 + 88) = sub_1BD76AC9C;
      v174 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1BD1F07A8;
      *(v0 + 296) = &block_descriptor_169_0;
      *(v0 + 304) = v174;
      [v164 transactionWithServiceIdentifier:v165 transactionSourceIdentifier:v166 completion:v0 + 272];
      v13 = (v0 + 80);

      return MEMORY[0x1EEE6DEC8](v13);
    }

    while (1)
    {
      v65 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v66 = *(v0 + 1160);
      if (v65 >= (((1 << *(v0 + 1592)) + 63) >> 6))
      {
        break;
      }

      v58 = v66[v65 + 7];
      ++v56;
      if (v58)
      {
        v56 = v65;
        goto LABEL_20;
      }
    }

    v83 = *(v0 + 1152);
    v84 = *(v0 + 1144);
    v85 = *(v0 + 1112);

    v66, v86, v87, v88, v89, v90, v91, v92;
    v84, v93, v94, v95, v96, v97, v98, v99;
    v83, v100, v101, v102, v103, v104, v105, v106;
    v110 = *(v0 + 1176);
    v111 = *(v0 + 1120);
    v212 = *(v0 + 1136);
    v213 = *(v0 + 1168);
    *(v0 + 1104) = v213;
    *(v0 + 1096) = v212;
    v214 = v110;
    *(v0 + 1088) = v110;
    v216 = v57;
    *(v0 + 1080) = v57;
    if (v111 == *(v0 + 1072))
    {
      break;
    }

    v1 = 1;
    v57 = 0x1E69B8000uLL;
LABEL_29:
    v119 = *(v0 + 1048);
    if ((v119 & 0xC000000000000001) != 0)
    {
      v120 = MEMORY[0x1BFB40900](v111);
LABEL_32:
      v2 = v120;
      *(v0 + 1112) = v120;
      v121 = __OFADD__(v111++, 1);
      *(v0 + 1120) = v111;
      if (v121)
      {
        goto LABEL_84;
      }

      v122 = [v120 items];
      if (!v122)
      {
        __break(1u);
LABEL_93:
        sub_1BE052774();
        v197 = (v0 + 544);
LABEL_71:
        sub_1BE0527C4();
        v195 = *v197;
LABEL_72:
        v194 = v111;
        goto LABEL_78;
      }

      v123 = v122;
      v124 = sub_1BE052A34();

      v125 = 0;
      v126 = 0;
      v127 = 1 << *(v124 + 32);
      while (1)
      {
        v128 = *(v124 + 8 * v126 + 56);
        if (v128)
        {
          break;
        }

        ++v126;
        v125 -= 64;
        if ((v127 + 63) >> 6 == v126)
        {
          goto LABEL_27;
        }
      }

      v129 = __clz(__rbit64(v128));
      if (v129 - v127 == v125)
      {
LABEL_27:

        v124, v112, v113, v114, v115, v116, v117, v118;
        goto LABEL_28;
      }

      if (-v125 < 0)
      {
        goto LABEL_86;
      }

      v130 = v129 - v125;
      if (v130 >= v127)
      {
        goto LABEL_86;
      }

      if (((*(v124 + 56 + 8 * (v126 & 0x3FFFFFFFFFFFFFFLL)) >> v129) & 1) == 0)
      {
        goto LABEL_87;
      }

      sub_1BD149C8C(*(v124 + 48) + 40 * v130, v0 + 496);
      v124, v131, v132, v133, v134, v135, v136, v137;
      v138 = sub_1BE053794();
      *(v0 + 1128) = v138;
      sub_1BD149CE8(v0 + 496);
      objc_opt_self();
      v139 = swift_dynamicCastObjCClass();
      if (!v139)
      {

LABEL_28:
        if (v111 == *(v0 + 1072))
        {
          break;
        }

        goto LABEL_29;
      }

      v70 = v139;
      v13 = [v139 currencyAmount];
      if (!v13)
      {
        goto LABEL_96;
      }

      v175 = v13;
      v176 = [v13 amount];

      if (!v176)
      {
        goto LABEL_95;
      }

      [v176 decimalValue];
      v211 = *(v0 + 1512);
      *(v0 + 1572) = v211;
      v177 = *(v0 + 1516);
      *(v0 + 1580) = v177;
      v178 = *(v0 + 1518);
      *(v0 + 1582) = v178;
      v179 = *(v0 + 1520);
      *(v0 + 1576) = v179;
      v180 = *(v0 + 1524);
      *(v0 + 1584) = v180;
      v181 = *(v0 + 1526);
      *(v0 + 1586) = v181;
      v182 = *(v0 + 1528);
      *(v0 + 1588) = v182;
      v183 = v176;
      v184 = *(v0 + 1530);
      *(v0 + 1590) = v184;

      MEMORY[0x1BFB40450](v0 + 1292, v211 | (v177 << 32) | (v178 << 48), v179 | (v180 << 32) | (v181 << 48), v182 | (v184 << 16));
      v185 = [v70 type];
      v57 = v216;
      v1 = v214;
      v186 = v212;
      if (v185)
      {
        goto LABEL_62;
      }

      v187 = v2;
      v188 = (v0 + 536);
      MEMORY[0x1BFB3F7A0]();
      if (*(*(v0 + 536) + 16) >= *(*(v0 + 536) + 24) >> 1)
      {
        goto LABEL_91;
      }

LABEL_61:
      sub_1BE0527C4();
      v186 = *v188;
LABEL_62:
      *(v0 + 1136) = v186;
      v189 = [v70 transactionIdentifiers];
      v111 = 0;
      if (v189)
      {
        v190 = v189;
        v111 = sub_1BE052A34();
      }

      *(v0 + 1144) = v111;
      v191 = [v70 rewardsAddedIdentifiers];
      v192 = 0;
      if (v191)
      {
        v193 = v191;
        v192 = sub_1BE052A34();
      }

      *(v0 + 1152) = v192;
      v194 = MEMORY[0x1E69E7CD0];
      if (!v111)
      {
        v195 = v213;
        goto LABEL_78;
      }

      v195 = v213;
      if (*(v111 + 16) || !v192)
      {
        goto LABEL_72;
      }

      v194 = v111;
      if (!*(v192 + 16))
      {
        v196 = v2;
        v197 = (v0 + 544);
        MEMORY[0x1BFB3F7A0]();
        if (*(*(v0 + 544) + 16) < *(*(v0 + 544) + 24) >> 1)
        {
          goto LABEL_71;
        }

        goto LABEL_93;
      }

LABEL_78:
      *(v0 + 1168) = v195;
      *(v0 + 1160) = v194;
      v207 = *(v194 + 32);
      *(v0 + 1592) = v207;
      v208 = 1 << v207;
      v209 = *(v194 + 56);
      if (v208 < 64)
      {
        v210 = ~(-1 << v208);
      }

      else
      {
        v210 = -1;
      }

      v58 = v210 & v209;
      sub_1BE048C84();
      v56 = 0;
      goto LABEL_10;
    }

    if (v111 < *(*(v0 + 1064) + 16))
    {
      v120 = *(v119 + 8 * v111 + 32);
      goto LABEL_32;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v57 = sub_1BD03B038(0, *(v57 + 16) + 1, 1, v57, v52, v53, v54, v55);
LABEL_12:
    v61 = *(v57 + 16);
    v60 = *(v57 + 24);
    if (v61 >= v60 >> 1)
    {
      v57 = sub_1BD03B038((v60 > 1), v61 + 1, 1, v57, v52, v53, v54, v55);
    }

    v62 = *(v0 + 1216);
    v63 = *(v0 + 1208);
    *(v57 + 16) = v61 + 1;
    v64 = v57 + 16 * v61;
    *(v64 + 32) = v63;
    *(v64 + 40) = v62;
    v56 = *(v0 + 1200);
    v58 = (*(v0 + 1192) - 1) & *(v0 + 1192);
  }

  v140 = *(v0 + 1048);
  v141 = *(v0 + 848);
  v142 = *(v0 + 816);
  *(v0 + 1056), v107, v108, v109, v52, v53, v54, v55;
  v140, v143, v144, v145, v146, v147, v148, v149;
  v141, v150, v151, v152, v153, v154, v155, v156;
  v157 = swift_task_alloc();
  *(v0 + 1256) = v157;
  *v157 = v0;
  v157[1] = sub_1BD76B7E0;
  v158 = *(v0 + 784);
  v159 = *(v0 + 768);

  return sub_1BD777B0C(v142, v158, v159);
}

uint64_t sub_1BD76B7E0(uint64_t a1)
{
  *(*v1 + 1264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD76B8E0, 0, 0);
}

uint64_t sub_1BD76B8E0()
{
  v140 = (v0 + 1352);
  v1 = (v0 + 1372);
  v142 = (v0 + 1332);
  v143 = (v0 + 1392);
  v141 = (v0 + 1432);

  v144 = *(v0 + 1264);
  v2 = *(v0 + 1096);
  v164 = *(v0 + 1088);
  v165 = *(v0 + 1104);
  v163 = *(v0 + 1080);
  v3 = *(v0 + 912);
  (*(*(v0 + 728) + 16))(*(v0 + 744), *(v0 + 784), *(v0 + 720));
  v159 = v2;
  if (v3)
  {
    v4 = *(v0 + 912);
    if (v4 >> 62)
    {
      v136 = sub_1BE053704();
    }

    else
    {
      v136 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v136 = 0;
  }

  v151 = *(v0 + 984);
  v149 = *(v0 + 968);
  v160 = *(v0 + 928);
  v131 = *(v0 + 920);
  v153 = *(v0 + 896);
  v156 = *(v0 + 792);
  v152 = *(v0 + 784);
  v150 = *(v0 + 776);
  v135 = *(v0 + 744);
  v166 = *(v0 + 728);
  v161 = *(v0 + 720);
  v154 = *(v0 + 704);
  v155 = *(v0 + 688);
  v148 = *(v0 + 664);
  v146 = *(v0 + 680);
  v147 = *(v0 + 656);
  v5 = *(v0 + 1552);
  *(v0 + 1448) = *(v0 + 1568);
  v145 = *(v0 + 640);
  *v141 = v5;
  v6 = *(v0 + 1472);
  *(v0 + 1428) = *(v0 + 1488);
  v7 = *(v0 + 632);
  *(v0 + 1412) = v6;
  v8 = *(v0 + 1532);
  *(v0 + 1408) = *(v0 + 1548);
  *(v0 + 1388) = *(v0 + 1508);
  v9 = *(v0 + 624);
  *v143 = v8;
  *v1 = *(v0 + 1492);
  v10 = *(v0 + 1292);
  *(v0 + 1368) = *(v0 + 1308);
  *(v0 + 1348) = *(v0 + 1328);
  v137 = *(v0 + 608);
  v138 = v9;
  *v140 = v10;
  v11 = *(v0 + 600);
  *v142 = *(v0 + 1312);
  v139 = *(v0 + 592);
  sub_1BE048C84();
  sub_1BE048C84();
  v12 = MEMORY[0x1BFB403C0](0);
  v133 = v13;
  v134 = v12;
  v132 = v14;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v15 = MEMORY[0x1BFB403C0](0);
  v129 = v16;
  v130 = v15;
  v128 = v17;
  v18 = *(v166 + 32);
  v18(v7, v135, v161);
  *(v7 + v11[5]) = v136;
  v19 = v7 + v11[6];
  v20 = *v141;
  *(v19 + 16) = *(v0 + 1448);
  *v19 = v20;
  v21 = v7 + v11[7];
  v22 = *(v0 + 1412);
  *(v21 + 16) = *(v0 + 1428);
  *v21 = v22;
  v23 = v7 + v11[8];
  v24 = *(v0 + 1408);
  *v23 = *v143;
  *(v23 + 16) = v24;
  v25 = v7 + v11[9];
  v26 = *(v0 + 1388);
  *v25 = *v1;
  *(v25 + 16) = v26;
  *(v7 + v11[10]) = v165;
  *(v7 + v11[11]) = v2;
  v27 = v7 + v11[12];
  v28 = *(v0 + 1368);
  *v27 = *v140;
  *(v27 + 16) = v28;
  v29 = v7 + v11[13];
  v30 = *(v0 + 1348);
  *v29 = *v142;
  *(v29 + 16) = v30;
  v31 = v7 + v11[14];
  *v31 = v134;
  *(v31 + 8) = v133;
  *(v31 + 16) = v132;
  *(v7 + v11[15]) = v144;
  *(v7 + v11[16]) = v164;
  *(v7 + v11[17]) = v163;
  *(v7 + v11[18]) = v131;
  *(v7 + v11[19]) = v160;
  v32 = v7 + v11[20];
  *v32 = v130;
  *(v32 + 8) = v129;
  *(v32 + 16) = v128;
  v33 = sub_1BE052D54();
  sub_1BD77BFE0(v7, v138, type metadata accessor for AccountDebugTransactionGroup);
  v34 = (*(v137 + 80) + 24) & ~*(v137 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v139;
  sub_1BD77C264(v138, v35 + v34, type metadata accessor for AccountDebugTransactionGroup);
  *(v0 + 432) = sub_1BD77C4AC;
  *(v0 + 440) = v35;
  *(v0 + 400) = MEMORY[0x1E69E9820];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_1BD126964;
  *(v0 + 424) = &block_descriptor_163_0;
  v36 = _Block_copy((v0 + 400));
  v139;
  sub_1BE051F74();
  *(v0 + 560) = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v146, v147, v36);
  _Block_release(v36);

  v149(v147, v145);
  v151(v146, v148);
  *(v0 + 440), v37, v38, v39, v40, v41, v42, v43;
  sub_1BE04ADD4();
  v44 = v161;
  v153(v152, v161);
  v162 = v18;
  v18(v152, v150, v44);
  v45 = sub_1BE04AE64();
  sub_1BD765BC8(v154);
  v46 = sub_1BE04B374();
  v156(v154, v155);
  v47 = PKEndOfMonthWithTimeZone();

  if (!v47)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v48);
  }

  v157 = *(v0 + 920);
  v158 = *(v0 + 928);
  v56 = *(v0 + 896);
  v57 = *(v0 + 776);
  v58 = *(v0 + 768);
  v59 = *(v0 + 736);
  v60 = *(v0 + 728);
  v61 = *(v0 + 720);
  v62 = *(v0 + 632);
  *(v0 + 912), v49, v50, v51, v52, v53, v54, v55;
  sub_1BE04AEE4();

  sub_1BD77C048(v62, type metadata accessor for AccountDebugTransactionGroup);
  v56(v58, v61);
  v163, v63, v64, v65, v66, v67, v68, v69;
  v164, v70, v71, v72, v73, v74, v75, v76;
  v165, v77, v78, v79, v80, v81, v82, v83;
  v159, v84, v85, v86, v87, v88, v89, v90;
  v157, v91, v92, v93, v94, v95, v96, v97;
  v158, v98, v99, v100, v101, v102, v103, v104;
  v162(v58, v59, v61);
  sub_1BE04AEF4();
  LOBYTE(v56) = sub_1BE04AE84();
  v107 = *(v60 + 8);
  v105 = v60 + 8;
  v106 = v107;
  v107(v57, v61);
  if (v56)
  {
    *(v0 + 896) = v106;
    *(v0 + 888) = v105 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v115 = *(v0 + 856);
    v116 = *(v0 + 592);
    v117 = *(v116 + v115);
    v118 = sub_1BE04AE64();
    v119 = sub_1BE04AE64();
    [v117 setLimit:0 startDate:v118 endDate:v119];

    v120 = *(v116 + v115);
    *(v0 + 904) = v120;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 584;
    *(v0 + 24) = sub_1BD76852C;
    v121 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BD9C18BC;
    *(v0 + 232) = &block_descriptor_151_0;
    *(v0 + 240) = v121;
    [v120 reloadTransactionsWithCompletion_];
    v48 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v48);
  }

  v122 = *(v0 + 816);
  v123 = *(v0 + 784);
  v124 = *(v0 + 768);
  v125 = *(v0 + 720);
  *(v0 + 848), v108, v109, v110, v111, v112, v113, v114;

  v106(v124, v125);
  v106(v123, v125);

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_1BD76C27C(uint64_t a1)
{
  v2 = *(v1 + 1040);
  v3 = *(v1 + 1032);
  v4 = *(v1 + 1024);
  v5 = *(v1 + 1016);
  v6 = *(v1 + 1008);
  v7 = *(v1 + 1000);
  swift_willThrow();

  *(v1 + 1056) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + 1048) = MEMORY[0x1E69E7CC0];
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
LABEL_80:
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 1072) = v17;
  *(v1 + 1064) = v16;
  *(v1 + 1104) = v15;
  *(v1 + 1096) = v15;
  *(v1 + 1088) = v15;
  *(v1 + 1080) = v15;
  if (!v17)
  {
LABEL_54:
    v92 = *(v1 + 1048);
    v93 = *(v1 + 848);
    v94 = *(v1 + 816);
    *(v1 + 1056), v8, v9, v10, v11, v12, v13, v14;
    v92, v95, v96, v97, v98, v99, v100, v101;
    v93, v102, v103, v104, v105, v106, v107, v108;
    v109 = swift_task_alloc();
    *(v1 + 1256) = v109;
    *v109 = v1;
    v109[1] = sub_1BD76B7E0;
    v110 = *(v1 + 784);
    v111 = *(v1 + 768);

    return sub_1BD777B0C(v94, v110, v111);
  }

  v18 = 0;
  v19 = v1 + 576;
  v159 = (v1 + 536);
  v15 = &selRef_issuerAdministrativeAreaCode;
  v160 = MEMORY[0x1E69E7CC0];
  v161 = MEMORY[0x1E69E7CC0];
  v162 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v27 = *(v1 + 1048);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1BFB40900](v18);
    }

    else
    {
      if (v18 >= *(*(v1 + 1064) + 16))
      {
        goto LABEL_58;
      }

      v28 = *(v27 + 8 * v18 + 32);
    }

    v29 = v28;
    *(v1 + 1112) = v28;
    v30 = __OFADD__(v18++, 1);
    *(v1 + 1120) = v18;
    if (v30)
    {
      break;
    }

    v31 = [v28 items];
    if (!v31)
    {
      __break(1u);
      goto LABEL_82;
    }

    v6 = v31;
    v16 = sub_1BE052A34();

    v32 = 0;
    v33 = 0;
    v34 = 1 << *(v16 + 32);
    while (1)
    {
      v35 = *(v16 + 8 * v33 + 56);
      if (v35)
      {
        break;
      }

      ++v33;
      v32 -= 64;
      if ((v34 + 63) >> 6 == v33)
      {
        goto LABEL_5;
      }
    }

    v36 = __clz(__rbit64(v35));
    if (v36 - v34 == v32)
    {
LABEL_5:

      v16, v20, v21, v22, v23, v24, v25, v26;
LABEL_6:
      if (v18 == *(v1 + 1072))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (-v32 < 0 || (v37 = v36 - v32, v37 >= v34))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (((*(v16 + 56 + 8 * (v33 & 0x3FFFFFFFFFFFFFFLL)) >> v36) & 1) == 0)
      {
        goto LABEL_79;
      }

      sub_1BD149C8C(*(v16 + 48) + 40 * v37, v1 + 496);
      v16, v38, v39, v40, v41, v42, v43, v44;
      v45 = sub_1BE053794();
      *(v1 + 1128) = v45;
      sub_1BD149CE8(v1 + 496);
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (!v46)
      {

        goto LABEL_6;
      }

      v47 = v46;
      v152 = v19;
      v31 = [v46 currencyAmount];
      if (!v31)
      {
        goto LABEL_85;
      }

      v48 = v31;
      v49 = [v31 amount];

      if (!v49)
      {
        goto LABEL_84;
      }

      [v49 decimalValue];
      v158 = *(v1 + 1512);
      *(v1 + 1572) = v158;
      v157 = *(v1 + 1516);
      *(v1 + 1580) = v157;
      v156 = *(v1 + 1518);
      *(v1 + 1582) = v156;
      v155 = *(v1 + 1520);
      *(v1 + 1576) = v155;
      v154 = *(v1 + 1524);
      *(v1 + 1584) = v154;
      v153 = *(v1 + 1526);
      *(v1 + 1586) = v153;
      v50 = *(v1 + 1528);
      *(v1 + 1588) = v50;
      v51 = *(v1 + 1530);
      *(v1 + 1590) = v51;

      MEMORY[0x1BFB40450](v1 + 1292, v158 | (v157 << 32) | (v156 << 48), v155 | (v154 << 32) | (v153 << 48), v50 | (v51 << 16));
      v52 = [v47 type];
      v53 = v160;
      if (!v52)
      {
        v54 = v29;
        MEMORY[0x1BFB3F7A0]();
        if (*(*v159 + 16) >= *(*v159 + 24) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v53 = *v159;
      }

      *(v1 + 1136) = v53;
      v55 = [v47 transactionIdentifiers];
      if (v55)
      {
        v56 = v55;
        v18 = sub_1BE052A34();
      }

      else
      {
        v18 = 0;
      }

      v57 = (v1 + 544);
      *(v1 + 1144) = v18;
      v58 = [v47 rewardsAddedIdentifiers];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1BE052A34();
      }

      else
      {
        v60 = 0;
      }

      v61 = v161;
      *(v1 + 1152) = v60;
      if (v18)
      {
        if (!*(v18 + 16) && v60 && !*(v60 + 16))
        {
          v62 = v29;
          MEMORY[0x1BFB3F7A0]();
          if (*(*(v1 + 544) + 16) >= *(*(v1 + 544) + 24) >> 1)
          {
            sub_1BE052774();
            v57 = (v1 + 544);
          }

          sub_1BE0527C4();
          v61 = *v57;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E7CD0];
      }

      *(v1 + 1168) = v61;
      *(v1 + 1160) = v18;
      v63 = *(v18 + 32);
      *(v1 + 1592) = v63;
      v64 = -1 << v63;
      if (-(-1 << v63) < 64)
      {
        v65 = ~(-1 << -(-1 << v63));
      }

      else
      {
        v65 = -1;
      }

      v6 = (v65 & *(v18 + 56));
      *(v1 + 1176) = v162;
      *(v1 + 1184) = MEMORY[0x1E69E7CC0];
      sub_1BE048C84();
      if (v6)
      {
        goto LABEL_59;
      }

      v66 = 0;
      while (((63 - v64) >> 6) - 1 != v66)
      {
        v67 = v66 + 1;
        v6 = *(v18 + 8 * v66++ + 64);
        if (v6)
        {
          goto LABEL_60;
        }
      }

      v6 = *(v1 + 1152);
      v68 = *(v1 + 1144);
      v69 = *(v1 + 1112);

      v18, v70, v71, v72, v73, v74, v75, v76;
      v68, v77, v78, v79, v80, v81, v82, v83;
      v6, v84, v85, v86, v87, v88, v89, v90;
      v91 = *(v1 + 1176);
      v18 = *(v1 + 1120);
      v160 = *(v1 + 1136);
      v161 = *(v1 + 1168);
      *(v1 + 1104) = v161;
      *(v1 + 1096) = v160;
      v162 = v91;
      *(v1 + 1088) = v91;
      *(v1 + 1080) = MEMORY[0x1E69E7CC0];
      v19 = v152;
      if (v18 == *(v1 + 1072))
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v67 = 0;
LABEL_60:
  *(v1 + 1200) = v67;
  *(v1 + 1192) = v6;
  v113 = *(v1 + 816);
  v114 = (*(v18 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v6)))));
  *(v1 + 1208) = *v114;
  *(v1 + 1216) = v114[1];
  sub_1BE048C84();
  v115 = [v113 transactionSourceIdentifiers];
  if (!v115)
  {
LABEL_67:
    v130 = 0;
    goto LABEL_68;
  }

  v116 = v115;
  v117 = sub_1BE052A34();

  v31 = v117;
  v125 = 0;
  v126 = 0;
  v127 = 1 << *(v117 + 32);
  while (1)
  {
    v128 = *(v117 + 8 * v126 + 56);
    if (v128)
    {
      break;
    }

    ++v126;
    v125 -= 64;
    if ((v127 + 63) >> 6 == v126)
    {
      goto LABEL_66;
    }
  }

  v129 = __clz(__rbit64(v128));
  if (v129 - v127 == v125)
  {
LABEL_66:
    v117, v118, v119, v120, v121, v122, v123, v124;
    goto LABEL_67;
  }

  if (-v125 < 0 || (v143 = v129 - v125, v143 >= v127))
  {
LABEL_82:
    __break(1u);
  }

  else if ((*(v117 + 56 + 8 * (v126 & 0x3FFFFFFFFFFFFFFLL)) >> v129))
  {
    v130 = *(*(v117 + 48) + 16 * v143 + 8);
    v144 = v31;
    sub_1BE048C84();
    v144, v145, v146, v147, v148, v149, v150, v151;
LABEL_68:
    *(v1 + 1224) = v130;
    v131 = *(*(v1 + 592) + *(v1 + 880));
    *(v1 + 1232) = v131;
    v132 = v131;
    v133 = sub_1BE052404();
    *(v1 + 1240) = v133;
    if (v130)
    {
      sub_1BE048C84();
      v134 = sub_1BE052404();
      v130, v135, v136, v137, v138, v139, v140, v141;
    }

    else
    {
      v134 = 0;
    }

    *(v1 + 1248) = v134;
    *(v1 + 80) = v1;
    *(v1 + 120) = v152;
    *(v1 + 88) = sub_1BD76AC9C;
    v142 = swift_continuation_init();
    *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
    *(v1 + 272) = MEMORY[0x1E69E9820];
    *(v1 + 280) = 1107296256;
    *(v1 + 288) = sub_1BD1F07A8;
    *(v1 + 296) = &block_descriptor_169_0;
    *(v1 + 304) = v142;
    [v132 transactionWithServiceIdentifier:v133 transactionSourceIdentifier:v134 completion:v1 + 272];
    v31 = (v1 + 80);

    return MEMORY[0x1EEE6DEC8](v31);
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_1BD76CB84(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD76CC08()
{
  v1[52] = v0;
  v2 = sub_1BE051F54();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[56] = v3;
  v1[57] = *(v3 - 8);
  v1[58] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[59] = v4;
  v5 = *(v4 - 8);
  v1[60] = v5;
  v1[61] = *(v5 + 64);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[64] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v1[65] = v6;
  v1[66] = *(v6 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD76CE64, 0, 0);
}

uint64_t sub_1BD76CE64()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account);
  v5 = v2;
  v6 = [v4 accountIdentifier];
  v7 = [*(v1 + v3) savingsDetails];
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [v7 createdDate];

  v10 = *(v0 + 576);
  if (v9)
  {
    v11 = *(v0 + 568);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    sub_1BE04AEE4();

    v15 = *(v12 + 32);
    v15(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    v15(v10, v14, v13);
  }

  else
  {
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    (*(v16 + 56))(v18, 1, 1, v17);
    sub_1BE04AEF4();
    if ((*(v16 + 48))(v18, 1, v17) != 1)
    {
      sub_1BD0DE53C(*(v0 + 512), &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 528);
  v22 = *(v0 + 520);
  v23 = sub_1BE04AE64();
  v24 = *(v21 + 8);
  *(v0 + 584) = v24;
  *(v0 + 592) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v19, v22);
  sub_1BE04AEF4();
  v25 = sub_1BE04AE64();
  v24(v20, v22);
  v26 = [v5 accountBalancesForAccountIdentifier:v6 startDate:v23 endDate:v25 type:1];

  if (!v26)
  {
    goto LABEL_23;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4DFC0, 0x1E69B8380);
  v27 = sub_1BE052744();
  *(v0 + 600) = v27;

  sub_1BE048C84();
  v28 = sub_1BD644898(1, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v27, v29, v31, v33, v35, v36, v37, v38;
  v39 = v27 >> 62;
  if (!(v27 >> 62))
  {
    v40 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v40 != 0;
    if (v40 >= v41)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v7 = sub_1BE053704();
  if (v7 < 0)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v7);
  }

  v40 = v7;
  v41 = v7 != 0;
  v7 = sub_1BE053704();
  if (v7 < v41)
  {
    goto LABEL_30;
  }

  v7 = sub_1BE053704();
  if (v7 < v40)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_10:
  v86 = v34;
  v42 = v30;
  v43 = v28;
  if ((v27 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    if (v40 >= 2)
    {
      v51 = v41;
      do
      {
        v52 = v51 + 1;
        sub_1BE053864();
        v51 = v52;
      }

      while (v40 != v52);
    }

    if (!v39)
    {
      goto LABEL_15;
    }

LABEL_17:
    v27, v44, v45, v46, v47, v48, v49, v50;
    v53 = sub_1BE0539D4();
    v41 = v56;
    goto LABEL_18;
  }

  sub_1BE048C84();
  if (v39)
  {
    goto LABEL_17;
  }

LABEL_15:
  v53 = v27 & 0xFFFFFFFFFFFFFF8;
  v54 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
  v55 = (2 * v40) | 1;
LABEL_18:
  *(v0 + 80) = v43;
  *(v0 + 88) = v42;
  *(v0 + 96) = v32;
  *(v0 + 104) = v86;
  *(v0 + 112) = v32;
  *(v0 + 120) = v53;
  *(v0 + 128) = v54;
  *(v0 + 136) = v41;
  *(v0 + 144) = v55;
  *(v0 + 152) = v41;
  *(v0 + 160) = 0;
  *(v0 + 608) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
  *(v0 + 616) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  v57 = sub_1BD778178();
  if (v57)
  {
    *(v0 + 624) = v57;
    v85 = *(v0 + 608);
    v59 = *(v0 + 584);
    v60 = *(v0 + 568);
    v61 = *(v0 + 560);
    v62 = *(v0 + 520);
    v63 = *(v0 + 416);
    *(v0 + 632) = v58;
    v64 = v58;
    v65 = v57;
    v66 = *(v63 + v85);
    v67 = [v65 date];
    sub_1BE04AEE4();

    sub_1BE04ADD4();
    v59(v61, v62);
    v68 = sub_1BE04AE64();
    v59(v60, v62);
    v69 = [v64 date];
    sub_1BE04AEE4();

    v70 = sub_1BE04AE64();
    v59(v60, v62);
    [v66 setLimit:0 startDate:v68 endDate:v70];

    v71 = *(v63 + v85);
    *(v0 + 640) = v71;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_1BD76D578;
    v72 = swift_continuation_init();
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 320) = v72;
    *(v0 + 288) = MEMORY[0x1E69E9820];
    *(v0 + 296) = 1107296256;
    *(v0 + 304) = sub_1BD9C18BC;
    *(v0 + 312) = &block_descriptor_140_0;
    [v71 reloadTransactionsWithCompletion_];
    v7 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v7);
  }

  v73 = *(v0 + 600);
  v74 = *(v0 + 128);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 232) = v74;
  *(v0 + 248) = *(v0 + 144);
  *(v0 + 264) = *(v0 + 160);
  v75 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v75;
  sub_1BD0DE53C(v0 + 184, &qword_1EBD525D8, &qword_1BE0F5AC8);
  v73, v76, v77, v78, v79, v80, v81, v82;
LABEL_23:

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_1BD76D578()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76D658, 0, 0);
}

uint64_t sub_1BD76D658()
{
  v1 = *(v0 + 400);

  *(v0 + 164) = MEMORY[0x1BFB403C0](0);
  v2 = (v0 + 164);
  *(v0 + 172) = v3;
  *(v0 + 180) = v4;
  *(v0 + 268) = MEMORY[0x1BFB403C0](0);
  *(v0 + 276) = v5;
  *(v0 + 284) = v6;
  *(v0 + 648) = MEMORY[0x1BFB403C0](0);
  *(v0 + 656) = v7;
  *(v0 + 664) = v8;
  *(v0 + 668) = MEMORY[0x1BFB403C0](0);
  *(v0 + 676) = v9;
  *(v0 + 684) = v10;
  if (v1)
  {
    v11 = v1;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11 >> 62)
  {
LABEL_59:
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = v1;
  v173 = (v2 + 504);
  v183 = v2;
  v176 = (v2 + 104);
  if (v12)
  {
    v188 = v11 & 0xC000000000000001;
    v180 = v11 & 0xFFFFFFFFFFFFFF8;
    sub_1BE048C84();
    v13 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v184 = v11;
    v186 = v12;
    while (1)
    {
      if (v188)
      {
        v25 = MEMORY[0x1BFB40900](v13, v11);
        v26 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 >= *(v180 + 16))
        {
          goto LABEL_58;
        }

        v25 = *&v11[8 * v13 + 32];
        v26 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v27 = *(*(v0 + 416) + *(v0 + 616));
      v28 = v25;
      v29 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1BD1D96EC(0, *(v1 + 2) + 1, 1, v1, v30, v31, v32, v33);
      }

      v35 = *(v1 + 2);
      v34 = *(v1 + 3);
      if (v35 >= v34 >> 1)
      {
        v1 = sub_1BD1D96EC((v34 > 1), v35 + 1, 1, v1, v30, v31, v32, v33);
      }

      *(v1 + 2) = v35 + 1;
      v36 = &v1[16 * v35];
      *(v36 + 4) = v28;
      *(v36 + 5) = v29;
      if ([v28 transactionStatus] != 2)
      {
        v190 = v1;
        if ([v28 transactionStatus])
        {
          goto LABEL_25;
        }

        sub_1BE04AEF4();
        v37 = [v28 transactionDate];
        if (!v37)
        {
          goto LABEL_63;
        }

        v38 = v37;
        v39 = *(v0 + 584);
        v40 = *(v0 + 568);
        v41 = *(v0 + 552);
        v2 = *(v0 + 544);
        v42 = *(v0 + 520);
        sub_1BE04AEE4();

        sub_1BE04ADD4();
        sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v38) = sub_1BE0522F4();
        v39(v40, v42);
        v39(v41, v42);
        v39(v2, v42);
        v1 = v190;
        v11 = v184;
        if (v38)
        {
LABEL_25:
          v43 = [v28 transactionType];
          v44 = 0;
          if ((v43 - 4) >= 2 && v43)
          {
            if (v43 == 7)
            {
              v45 = [v28 adjustmentType];
              if (v45 >= 0x12)
              {
                v44 = 0;
              }

              else
              {
                v44 = 0x2A60Au >> v45;
              }
            }

            else
            {
              v44 = 1;
            }
          }

          v37 = [v28 amount];
          if (!v37)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v37);
          }

          v46 = v37;
          v47 = [v37 pk_absoluteValue];

          if (!v47)
          {
            goto LABEL_62;
          }

          [v47 decimalValue];
          v48 = *(v0 + 688);
          v49 = *(v0 + 696);
          v2 = *(v0 + 704);

          if (v44)
          {
            MEMORY[0x1BFB40450](v183, v48, v49, v2);
          }

          else
          {
            MEMORY[0x1BFB40460](v176, v48, v49, v2);
          }

          v50 = [v28 transactionType];
          v1 = v190;
          v11 = v184;
          if (v50 == 11)
          {
            v14 = *(v0 + 684);
            v15 = *(v0 + 668);
            v16 = *(v0 + 676);
            v17 = v173;
          }

          else
          {
            if (v50 != 9)
            {
              goto LABEL_10;
            }

            v17 = (v0 + 648);
            v15 = v48;
            v16 = v49;
            v14 = v2;
          }

          MEMORY[0x1BFB40450](v17, v15, v16, v14);
        }
      }

LABEL_10:

      ++v13;
      if (v26 == v186)
      {
        v191 = v1;
        v11, v18, v19, v20, v21, v22, v23, v24;
        v2 = v183;
        goto LABEL_42;
      }
    }
  }

  sub_1BE048C84();
  v11, v51, v52, v53, v54, v55, v56, v57;
  v191 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v187 = v2 - 84;
  v58 = *(v0 + 632);
  v59 = [*(v0 + 624) balance];
  [v59 decimalValue];

  v60 = [v58 balance];
  [v60 decimalValue];

  v61 = sub_1BE053394();
  v63 = v62;
  v65 = v64;
  v66 = sub_1BE053394();
  v67 = MEMORY[0x1BFB40440](v66);
  v75 = *(v0 + 632);
  if (v67)
  {
    v76 = *(v0 + 624);
    v191, v68, v69, v70, v71, v72, v73, v74;
    v171, v77, v78, v79, v80, v81, v82, v83;
  }

  else
  {
    v170 = v61;
    v84 = [v75 date];
    sub_1BE04AEE4();

    v92 = v171;
    v166 = v63;
    v165 = v65;
    if (v171)
    {
      if (v171 >> 62)
      {
        v93 = sub_1BE053704();
        v92 = v171;
      }

      else
      {
        v93 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = v176;
      v92, v85, v86, v87, v88, v89, v90, v91;
    }

    else
    {
      v93 = 0;
      v94 = v176;
    }

    v185 = *(v0 + 624);
    v95 = *(v0 + 528);
    v160 = *(v0 + 520);
    v161 = *(v0 + 536);
    v96 = *(v0 + 504);
    v162 = *(v0 + 496);
    v163 = *(v0 + 480);
    v97 = *(v0 + 472);
    v178 = *(v0 + 632);
    v181 = *(v0 + 456);
    v189 = *(v0 + 448);
    v167 = *(v0 + 464);
    v168 = *(v0 + 440);
    v172 = *(v0 + 432);
    v169 = *(v0 + 424);
    v164 = *(v0 + 416);
    v198 = *(v0 + 648);
    v199 = *(v0 + 664);
    v196 = *v173;
    v197 = *(v173 + 4);
    v194 = *v183;
    v195 = *(v183 + 4);
    v193 = *(v94 + 4);
    v192 = *v94;
    v98 = MEMORY[0x1BFB403C0](0);
    v175 = v99;
    v177 = v98;
    v174 = v100;
    v159 = MEMORY[0x1BFB403C0](0);
    v102 = v101;
    v158 = v103;
    v104 = MEMORY[0x1BFB403C0](0);
    v106 = v105;
    v108 = v107;
    (*(v95 + 32))(v96, v161, v160);
    *(v96 + v97[5]) = v93;
    v109 = v96 + v97[6];
    *v109 = v198;
    *(v109 + 16) = v199;
    v110 = v96 + v97[7];
    *v110 = v196;
    *(v110 + 16) = v197;
    v111 = v96 + v97[8];
    *(v111 + 16) = v195;
    *v111 = v194;
    v112 = v96 + v97[9];
    *(v112 + 16) = v193;
    *v112 = v192;
    v113 = MEMORY[0x1E69E7CC0];
    *(v96 + v97[10]) = MEMORY[0x1E69E7CC0];
    *(v96 + v97[11]) = v113;
    v114 = v96 + v97[12];
    *v114 = v177;
    *(v114 + 8) = v175;
    *(v114 + 16) = v174;
    v115 = v96 + v97[13];
    *v115 = v159;
    *(v115 + 8) = v102;
    *(v115 + 16) = v158;
    v116 = v96 + v97[14];
    *v116 = v104;
    *(v116 + 8) = v106;
    *(v116 + 16) = v108;
    *(v96 + v97[15]) = v113;
    *(v96 + v97[16]) = v113;
    *(v96 + v97[17]) = v113;
    *(v96 + v97[18]) = v113;
    *(v96 + v97[19]) = v191;
    v117 = v96 + v97[20];
    *v117 = v170;
    *(v117 + 8) = v166;
    *(v117 + 16) = v165;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v118 = sub_1BE052D54();
    v119 = v0;
    sub_1BD77BFE0(v96, v162, type metadata accessor for AccountDebugTransactionGroup);
    v120 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v164;
    sub_1BD77C264(v162, v121 + v120, type metadata accessor for AccountDebugTransactionGroup);
    *(v119 + 384) = sub_1BD77C2CC;
    *(v119 + 392) = v121;
    *(v119 + 352) = MEMORY[0x1E69E9820];
    *(v119 + 360) = 1107296256;
    *(v119 + 368) = sub_1BD126964;
    *(v119 + 376) = &block_descriptor_146_1;
    v122 = _Block_copy(v183 + 188);
    v123 = v164;
    sub_1BE051F74();
    *(v119 + 408) = v113;
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v167, v168, v122);
    _Block_release(v122);

    (*(v172 + 8))(v168, v169);
    (*(v181 + 8))(v167, v189);
    v0 = v119;
    sub_1BD77C048(v96, type metadata accessor for AccountDebugTransactionGroup);
    *(v119 + 392), v124, v125, v126, v127, v128, v129, v130;
  }

  v131 = sub_1BD778178();
  if (v131)
  {
    *(v0 + 624) = v131;
    v133 = *(v0 + 584);
    v134 = *(v0 + 568);
    v135 = *(v0 + 560);
    v136 = *(v0 + 520);
    v179 = *(v0 + 608);
    v182 = *(v0 + 416);
    *(v0 + 632) = v132;
    v137 = v132;
    v138 = v131;
    v139 = *(v182 + v179);
    v140 = [v138 date];
    sub_1BE04AEE4();

    sub_1BE04ADD4();
    v133(v135, v136);
    v141 = sub_1BE04AE64();
    v133(v134, v136);
    v142 = [v137 date];
    sub_1BE04AEE4();

    v143 = sub_1BE04AE64();
    v133(v134, v136);
    [v139 setLimit:0 startDate:v141 endDate:v143];

    v144 = *(v182 + v179);
    *(v0 + 640) = v144;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_1BD76D578;
    v145 = swift_continuation_init();
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 320) = v145;
    *(v0 + 288) = MEMORY[0x1E69E9820];
    *(v0 + 296) = 1107296256;
    *(v0 + 304) = sub_1BD9C18BC;
    *(v0 + 312) = &block_descriptor_140_0;
    [v144 reloadTransactionsWithCompletion_];
    v37 = (v0 + 16);

    return MEMORY[0x1EEE6DEC8](v37);
  }

  v146 = *(v0 + 600);
  v147 = *(v187 + 48);
  *(v0 + 216) = *(v187 + 32);
  *(v0 + 232) = v147;
  *(v0 + 248) = *(v187 + 64);
  *(v0 + 264) = *(v187 + 80);
  v148 = *(v187 + 16);
  *(v0 + 184) = *v187;
  *(v0 + 200) = v148;
  sub_1BD0DE53C(v0 + 184, &qword_1EBD525D8, &qword_1BE0F5AC8);
  v146, v149, v150, v151, v152, v153, v154, v155;

  v156 = *(v0 + 8);

  return v156();
}

uint64_t sub_1BD76E46C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD76E4F0()
{
  v1[43] = v0;
  v2 = sub_1BE051F54();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[47] = v3;
  v1[48] = *(v3 - 8);
  v1[49] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugSavingsStatement(0);
  v1[50] = v4;
  v5 = *(v4 - 8);
  v1[51] = v5;
  v1[52] = *(v5 + 64);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[57] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v1[58] = v6;
  v1[59] = *(v6 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD76E770, 0, 0);
}

uint64_t sub_1BD76E770(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8[43];
  v10 = *(v9 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService);
  v8[65] = v10;
  if (v10)
  {
    v11 = *(v9 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account);
    v12 = v10;
    v13 = [v11 accountIdentifier];
    v8[66] = v13;
    v8[2] = v8;
    v8[7] = v8 + 40;
    v8[3] = sub_1BD76EC24;
    v14 = swift_continuation_init();
    v8[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD525C0, &qword_1BE0F5AC0);
    v8[18] = MEMORY[0x1E69E9820];
    v8[19] = 1107296256;
    v8[20] = sub_1BD77841C;
    v8[21] = &block_descriptor_128_1;
    v8[22] = v14;
    [v12 updateSavingsStatementsForAccountIdentifier:v13 completion:v8 + 18];
    v15 = (v8 + 2);
    goto LABEL_10;
  }

  0, a2, a3, a4, a5, a6, a7, a8;
  v8[69] = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v8[68] = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    v15 = sub_1BE053704();
    v8[70] = v15;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8[70] = v15;
    if (v15)
    {
LABEL_5:
      v24 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v8[71] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v8[72] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v25 = v8[68];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB40900](0);
        v24 = v8[71];
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v15);
        }

        v26 = *(v25 + 32);
      }

      v8[73] = v26;
      v8[74] = 1;
      v27 = v8[64];
      v29 = v8[58];
      v28 = v8[59];
      v30 = v8[43];
      v31 = *(v30 + v24);
      v32 = [v26 openingDate];
      sub_1BE04AEE4();

      v33 = sub_1BE04AE64();
      v34 = *(v28 + 8);
      v8[75] = v34;
      v8[76] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34(v27, v29);
      v35 = [v26 closingDate];
      sub_1BE04AEE4();

      v36 = sub_1BE04AE64();
      v34(v27, v29);
      [v31 setLimit:0 startDate:v33 endDate:v36];

      v37 = *(v30 + v24);
      v8[77] = v37;
      v8[10] = v8;
      v8[15] = v8 + 41;
      v8[11] = sub_1BD76F0F8;
      v38 = swift_continuation_init();
      v8[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      v8[30] = v38;
      v8[26] = MEMORY[0x1E69E9820];
      v8[27] = 1107296256;
      v8[28] = sub_1BD9C18BC;
      v8[29] = &block_descriptor_131_0;
      [v37 reloadTransactionsWithCompletion_];
      v15 = (v8 + 10);
LABEL_10:

      return MEMORY[0x1EEE6DEC8](v15);
    }
  }

  MEMORY[0x1E69E7CC0], v16, v17, v18, v19, v20, v21, v22;
  0, v39, v40, v41, v42, v43, v44, v45;

  v46 = v8[1];

  return v46();
}

uint64_t sub_1BD76EC24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_1BD770228;
  }

  else
  {
    v2 = sub_1BD76ED34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD76ED34()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 320);

  if (v2)
  {
    sub_1BE048C84();
    v17 = v2;
  }

  else
  {
    0, v3, v4, v5, v6, v7, v8, v9;
    v17 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 552) = v17;
  *(v0 + 544) = v2;
  if (v2 >> 62)
  {
    v18 = sub_1BE053704();
    *(v0 + 560) = v18;
    if (v18)
    {
LABEL_6:
      v19 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      *(v0 + 568) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      *(v0 + 576) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v20 = *(v0 + 544);
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB40900](0);
        v19 = *(v0 + 568);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v18);
        }

        v21 = *(v20 + 32);
      }

      *(v0 + 584) = v21;
      *(v0 + 592) = 1;
      v22 = *(v0 + 512);
      v24 = *(v0 + 464);
      v23 = *(v0 + 472);
      v25 = *(v0 + 344);
      v26 = *(v25 + v19);
      v27 = [v21 openingDate];
      sub_1BE04AEE4();

      v28 = sub_1BE04AE64();
      v29 = *(v23 + 8);
      *(v0 + 600) = v29;
      *(v0 + 608) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29(v22, v24);
      v30 = [v21 closingDate];
      sub_1BE04AEE4();

      v31 = sub_1BE04AE64();
      v29(v22, v24);
      [v26 setLimit:0 startDate:v28 endDate:v31];

      v32 = *(v25 + v19);
      *(v0 + 616) = v32;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 328;
      *(v0 + 88) = sub_1BD76F0F8;
      v33 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      *(v0 + 240) = v33;
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1BD9C18BC;
      *(v0 + 232) = &block_descriptor_131_0;
      [v32 reloadTransactionsWithCompletion_];
      v18 = v0 + 80;

      return MEMORY[0x1EEE6DEC8](v18);
    }
  }

  else
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v18;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v2, v10, v11, v12, v13, v14, v15, v16;
  v17, v34, v35, v36, v37, v38, v39, v40;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1BD76F0F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76F1D8, 0, 0);
}

uint64_t sub_1BD76F1D8()
{
  v1 = v0 + 644;
  v2 = *(v0 + 328);

  *(v0 + 624) = MEMORY[0x1BFB403C0](0);
  *(v0 + 632) = v3;
  *(v0 + 640) = v4;
  *(v0 + 644) = MEMORY[0x1BFB403C0](0);
  *(v0 + 652) = v5;
  *(v0 + 660) = v6;
  *(v0 + 664) = MEMORY[0x1BFB403C0](0);
  *(v0 + 672) = v7;
  *(v0 + 680) = v8;
  *(v0 + 684) = MEMORY[0x1BFB403C0](0);
  v203 = (v0 + 684);
  *(v0 + 692) = v9;
  *(v0 + 700) = v10;
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11 >> 62)
  {
    goto LABEL_64;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v209 = (v0 + 624);
  v211 = v1;
  v199 = v2;
  v201 = (v0 + 664);
  v218 = v0;
  if (v12)
  {
    v216 = v11 & 0xC000000000000001;
    v205 = v11 & 0xFFFFFFFFFFFFFF8;
    sub_1BE048C84();
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v212 = v11;
    v214 = v12;
    while (1)
    {
      if (v216)
      {
        v22 = MEMORY[0x1BFB40900](v13, v11);
        v23 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v13 >= *(v205 + 16))
        {
          goto LABEL_63;
        }

        v22 = *(v11 + 8 * v13 + 32);
        v23 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v12 = sub_1BE053704();
          goto LABEL_6;
        }
      }

      v24 = *(*(v0 + 344) + *(v0 + 576));
      v25 = v22;
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D96EC(0, *(v14 + 2) + 1, 1, v14, v27, v28, v29, v30);
      }

      v32 = *(v14 + 2);
      v31 = *(v14 + 3);
      v1 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v14 = sub_1BD1D96EC((v31 > 1), v32 + 1, 1, v14, v27, v28, v29, v30);
      }

      *(v14 + 2) = v1;
      v33 = &v14[16 * v32];
      *(v33 + 4) = v25;
      *(v33 + 5) = v26;
      if ([v25 transactionStatus] != 2)
      {
        if ([v25 transactionStatus])
        {
          goto LABEL_24;
        }

        v207 = v14;
        sub_1BE04AEF4();
        v34 = [v25 transactionDate];
        if (!v34)
        {
          goto LABEL_70;
        }

        v35 = v34;
        v2 = *(v218 + 600);
        v1 = *(v218 + 512);
        v36 = *(v218 + 504);
        v37 = *(v218 + 496);
        v38 = *(v218 + 464);
        sub_1BE04AEE4();

        sub_1BE04ADD4();
        sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v35) = sub_1BE0522F4();
        (v2)(v1, v38);
        (v2)(v36, v38);
        (v2)(v37, v38);
        v0 = v218;
        v14 = v207;
        v11 = v212;
        if (v35)
        {
LABEL_24:
          v39 = [v25 transactionType];
          v40 = 0;
          if ((v39 - 4) >= 2 && v39)
          {
            if (v39 == 7)
            {
              v41 = [v25 adjustmentType];
              if (v41 >= 0x12)
              {
                v40 = 0;
              }

              else
              {
                v40 = 0x2A60Au >> v41;
              }
            }

            else
            {
              v40 = 1;
            }
          }

          v42 = v14;
          v34 = [v25 amount];
          if (!v34)
          {
            goto LABEL_68;
          }

          v43 = v34;
          v44 = [v34 pk_absoluteValue];

          if (!v44)
          {
            goto LABEL_69;
          }

          [v44 decimalValue];
          v45 = *(v0 + 704);
          v1 = *(v0 + 712);
          v2 = *(v0 + 720);

          if (v40)
          {
            v46 = v209;
          }

          else
          {
            v46 = v211;
          }

          MEMORY[0x1BFB40450](v46, v45, v1, v2);
          v47 = [v25 transactionType];
          if (v47 == 11)
          {
            MEMORY[0x1BFB40450](v203, *(v0 + 684), *(v0 + 692), *(v0 + 700));
            v14 = v42;
            v11 = v212;
          }

          else
          {
            v14 = v42;
            v11 = v212;
            if (v47 == 9)
            {
              MEMORY[0x1BFB40450](v201, v45, v1, v2);
            }
          }
        }
      }

      ++v13;
      if (v23 == v214)
      {
        v208 = v14;
        v11, v15, v16, v17, v18, v19, v20, v21;
        goto LABEL_41;
      }
    }
  }

  sub_1BE048C84();
  v11, v48, v49, v50, v51, v52, v53, v54;
  v208 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v215 = (v0 + 272);
  v192 = *(v0 + 600);
  v55 = *(v0 + 584);
  v56 = *(v0 + 512);
  v189 = *(v0 + 464);
  v57 = [v55 closingBalance];
  [v57 decimalValue];

  v58 = [v55 openingBalance];
  [v58 decimalValue];

  v213 = sub_1BE053394();
  v206 = v59;
  v198 = v60;
  v61 = sub_1BE053394();
  v196 = v62;
  v197 = v61;
  v195 = v63;
  v64 = [v55 openingDate];
  sub_1BE04AEE4();

  v65 = sub_1BE04AE64();
  v192(v56, v189);
  v66 = [v55 closingDate];
  sub_1BE04AEE4();

  v67 = sub_1BE04AE64();
  v192(v56, v189);
  v68 = PKDatesMidpoint();

  if (v68)
  {
    v69 = *(v0 + 512);
    v70 = *(v0 + 488);
    v71 = *(v0 + 464);
    v72 = *(v0 + 472);
    v73 = *(v0 + 456);
    sub_1BE04AEE4();

    v74 = *(v72 + 32);
    v74(v73, v69, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    v74(v70, v73, v71);
    v0 = v218;
    v75 = v199;
  }

  else
  {
    v77 = *(v0 + 464);
    v76 = *(v0 + 472);
    v78 = *(v0 + 456);
    (*(v76 + 56))(v78, 1, 1, v77);
    sub_1BE04AEF4();
    v75 = v199;
    if ((*(v76 + 48))(v78, 1, v77) != 1)
    {
      sub_1BD0DE53C(*(v0 + 456), &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v79 = v0 + 764;
  v80 = v0 + 784;
  v81 = (v0 + 804);
  v82 = (v0 + 824);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 488), *(v0 + 464));
  if (v75)
  {
    if (v75 >> 62)
    {
      v90 = sub_1BE053704();
    }

    else
    {
      v90 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v217 = v90;
    v75, v83, v84, v85, v86, v87, v88, v89;
  }

  else
  {
    v217 = 0;
  }

  v193 = *(v0 + 600);
  v200 = *(v0 + 592);
  v194 = *(v0 + 560);
  v191 = *(v0 + 488);
  v91 = *(v0 + 464);
  v92 = *(v0 + 472);
  v93 = *(v0 + 440);
  v94 = *(v0 + 448);
  v182 = *(v0 + 432);
  v183 = *(v0 + 584);
  v184 = *(v0 + 424);
  v185 = *(v0 + 408);
  v180 = *(v0 + 480);
  v181 = *(v0 + 400);
  v186 = *(v0 + 392);
  v188 = *(v0 + 384);
  v190 = *(v0 + 376);
  v95 = *v201;
  *(v0 + 840) = *(v201 + 4);
  v96 = *(v0 + 360);
  v187 = *(v0 + 368);
  *v82 = v95;
  *v81 = *v203;
  *(v0 + 820) = *(v203 + 4);
  v97 = *v209;
  *(v0 + 800) = *(v209 + 4);
  *(v0 + 780) = *(v211 + 16);
  v98 = *(v0 + 352);
  v202 = v96;
  v204 = *(v0 + 344);
  *v80 = v97;
  v210 = v98;
  *v79 = *v211;
  v99 = MEMORY[0x1BFB403C0](0);
  v176 = v100;
  v177 = v99;
  v175 = v101;
  v102 = MEMORY[0x1BFB403C0](0);
  v173 = v103;
  v174 = v102;
  v172 = v104;
  v105 = MEMORY[0x1BFB403C0](0);
  v171 = v106;
  v170 = v107;
  v108 = MEMORY[0x1BFB403C0](0);
  v179 = v109;
  v178 = v110;
  (*(v92 + 32))(v94, v180, v91);
  *(v94 + v93[5]) = v217;
  v111 = v94 + v93[6];
  v112 = *v82;
  *(v111 + 16) = *(v82 + 4);
  *v111 = v112;
  v113 = v94 + v93[7];
  v114 = *v81;
  *(v113 + 16) = *(v81 + 4);
  *v113 = v114;
  v115 = v94 + v93[8];
  v116 = *(v80 + 16);
  *v115 = *v80;
  *(v115 + 16) = v116;
  v117 = v94 + v93[9];
  v118 = *(v79 + 16);
  *v117 = *v79;
  *(v117 + 16) = v118;
  v119 = MEMORY[0x1E69E7CC0];
  *(v94 + v93[10]) = MEMORY[0x1E69E7CC0];
  *(v94 + v93[11]) = v119;
  v120 = v94 + v93[12];
  *v120 = v177;
  *(v120 + 8) = v176;
  *(v120 + 16) = v175;
  v121 = v94 + v93[13];
  *v121 = v174;
  *(v121 + 8) = v173;
  *(v121 + 16) = v172;
  v122 = v94 + v93[14];
  *v122 = v105;
  *(v122 + 8) = v171;
  *(v122 + 16) = v170;
  *(v94 + v93[15]) = v119;
  *(v94 + v93[16]) = v119;
  *(v94 + v93[17]) = v119;
  *(v94 + v93[18]) = v119;
  *(v94 + v93[19]) = v208;
  v123 = v94 + v93[20];
  *v123 = v108;
  *(v123 + 8) = v179;
  *(v123 + 16) = v178;
  sub_1BD77BFE0(v94, v182 + *(v181 + 20), type metadata accessor for AccountDebugTransactionGroup);
  v124 = MEMORY[0x1BFB40440](v197, v196, v195, v213, v206, v198);
  *v182 = v183;
  *(v182 + *(v181 + 24)) = v124 & 1;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v125 = sub_1BE052D54();
  sub_1BD77BFE0(v182, v184, type metadata accessor for AccountDebugSavingsStatement);
  v126 = (*(v185 + 80) + 24) & ~*(v185 + 80);
  v127 = swift_allocObject();
  *(v127 + 16) = v204;
  sub_1BD77C264(v184, v127 + v126, type metadata accessor for AccountDebugSavingsStatement);
  *(v218 + 304) = sub_1BD77C238;
  *(v218 + 312) = v127;
  *(v218 + 272) = MEMORY[0x1E69E9820];
  *(v218 + 280) = 1107296256;
  *(v218 + 288) = sub_1BD126964;
  *(v218 + 296) = &block_descriptor_137_0;
  v128 = _Block_copy(v215);
  v129 = v204;
  sub_1BE051F74();
  *(v218 + 336) = v119;
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v186, v187, v128);
  _Block_release(v128);

  (*(v202 + 8))(v187, v210);
  (*(v188 + 8))(v186, v190);
  sub_1BD77C048(v182, type metadata accessor for AccountDebugSavingsStatement);
  sub_1BD77C048(v94, type metadata accessor for AccountDebugTransactionGroup);
  v193(v191, v91);
  *(v218 + 312), v130, v131, v132, v133, v134, v135, v136;
  if (v200 != v194)
  {
    v154 = *(v218 + 592);
    v155 = *(v218 + 544);
    if ((v155 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1BFB40900](*(v218 + 592));
    }

    else
    {
      if (v154 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v34 = *(v155 + 8 * v154 + 32);
    }

    v156 = v34;
    *(v218 + 584) = v34;
    *(v218 + 592) = v154 + 1;
    if (!__OFADD__(v154, 1))
    {
      v157 = *(v218 + 568);
      v158 = *(v218 + 512);
      v160 = *(v218 + 464);
      v159 = *(v218 + 472);
      v161 = *(v218 + 344);
      v162 = *(v161 + v157);
      v163 = [v156 openingDate];
      sub_1BE04AEE4();

      v164 = sub_1BE04AE64();
      v165 = *(v159 + 8);
      *(v218 + 600) = v165;
      *(v218 + 608) = (v159 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v165(v158, v160);
      v166 = [v156 closingDate];
      sub_1BE04AEE4();

      v167 = sub_1BE04AE64();
      v165(v158, v160);
      [v162 setLimit:0 startDate:v164 endDate:v167];

      v168 = *(v161 + v157);
      *(v218 + 616) = v168;
      *(v218 + 80) = v218;
      *(v218 + 120) = v218 + 328;
      *(v218 + 88) = sub_1BD76F0F8;
      v169 = swift_continuation_init();
      *(v218 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      *(v218 + 240) = v169;
      *(v218 + 208) = MEMORY[0x1E69E9820];
      *(v218 + 216) = 1107296256;
      *(v218 + 224) = sub_1BD9C18BC;
      *(v218 + 232) = &block_descriptor_131_0;
      [v168 reloadTransactionsWithCompletion_];
      v34 = (v218 + 80);

      return MEMORY[0x1EEE6DEC8](v34);
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v34);
  }

  v144 = *(v218 + 552);
  *(v218 + 544), v137, v138, v139, v140, v141, v142, v143;
  v144, v145, v146, v147, v148, v149, v150, v151;

  v152 = *(v218 + 8);

  return v152();
}

uint64_t sub_1BD770228(uint64_t a1)
{
  v2 = v1[67];
  v3 = v1[66];
  v4 = v1[65];
  swift_willThrow();

  0, v5, v6, v7, v8, v9, v10, v11;
  v1[69] = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v1[68] = MEMORY[0x1E69E7CC0];
  if (v19 >> 62)
  {
    v20 = sub_1BE053704();
    v1[70] = v20;
    if (v20)
    {
LABEL_3:
      v21 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v1[71] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v1[72] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v22 = v1[68];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1BFB40900](0);
        v21 = v1[71];
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v20);
        }

        v23 = *(v22 + 32);
      }

      v1[73] = v23;
      v1[74] = 1;
      v24 = v1[64];
      v26 = v1[58];
      v25 = v1[59];
      v27 = v1[43];
      v28 = *(v27 + v21);
      v29 = [v23 openingDate];
      sub_1BE04AEE4();

      v30 = sub_1BE04AE64();
      v31 = *(v25 + 8);
      v1[75] = v31;
      v1[76] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31(v24, v26);
      v32 = [v23 closingDate];
      sub_1BE04AEE4();

      v33 = sub_1BE04AE64();
      v31(v24, v26);
      [v28 setLimit:0 startDate:v30 endDate:v33];

      v34 = *(v27 + v21);
      v1[77] = v34;
      v1[10] = v1;
      v1[15] = v1 + 41;
      v1[11] = sub_1BD76F0F8;
      v35 = swift_continuation_init();
      v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
      v1[30] = v35;
      v1[26] = MEMORY[0x1E69E9820];
      v1[27] = 1107296256;
      v1[28] = sub_1BD9C18BC;
      v1[29] = &block_descriptor_131_0;
      [v34 reloadTransactionsWithCompletion_];
      v20 = (v1 + 10);

      return MEMORY[0x1EEE6DEC8](v20);
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[70] = v20;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x1E69E7CC0], v12, v13, v14, v15, v16, v17, v18;
  0, v36, v37, v38, v39, v40, v41, v42;

  v43 = v1[1];

  return v43();
}

uint64_t sub_1BD7705E8(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD77066C()
{
  v1[122] = v0;
  v2 = type metadata accessor for AccountDebugCKReward(0);
  v1[123] = v2;
  v3 = *(v2 - 8);
  v1[124] = v3;
  v1[125] = *(v3 + 64);
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugCKTransaction(0);
  v1[128] = v4;
  v5 = *(v4 - 8);
  v1[129] = v5;
  v1[130] = *(v5 + 64);
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v6 = sub_1BE051F54();
  v1[133] = v6;
  v1[134] = *(v6 - 8);
  v1[135] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v1[136] = v7;
  v1[137] = *(v7 - 8);
  v1[138] = swift_task_alloc();
  v8 = sub_1BE04AC64();
  v1[139] = v8;
  v1[140] = *(v8 - 8);
  v1[141] = swift_task_alloc();
  v9 = sub_1BE04ACA4();
  v1[142] = v9;
  v1[143] = *(v9 - 8);
  v1[144] = swift_task_alloc();
  v10 = sub_1BE04AD84();
  v1[145] = v10;
  v1[146] = *(v10 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v11 = sub_1BE04B3B4();
  v1[150] = v11;
  v1[151] = *(v11 - 8);
  v1[152] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v12 = sub_1BE04AF64();
  v1[159] = v12;
  v1[160] = *(v12 - 8);
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD770B14, 0, 0);
}

void sub_1BD770B14()
{
  v1 = v0[122];
  v2 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v0[169] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v3 = [*(v1 + v2) savingsDetails];
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 createdDate];

  v6 = v0[168];
  if (v5)
  {
    v7 = v0[167];
    v8 = v0[160];
    v9 = v0[159];
    v10 = v0[158];
    sub_1BE04AEE4();

    v11 = *(v8 + 32);
    v11(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);
    v11(v6, v10, v9);
  }

  else
  {
    v12 = v0[160];
    v13 = v0[159];
    v14 = v0[158];
    (*(v12 + 56))(v14, 1, 1, v13);
    sub_1BE04AEF4();
    if ((*(v12 + 48))(v14, 1, v13) != 1)
    {
      sub_1BD0DE53C(v0[158], &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v15 = v0[152];
  v16 = v0[151];
  v17 = v0[150];
  (*(v0[160] + 16))(v0[166], v0[168], v0[159]);
  v18 = sub_1BE04AE64();
  sub_1BD765BC8(v15);
  v19 = sub_1BE04B374();
  v20 = *(v16 + 8);
  v0[170] = v20;
  v0[171] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  v21 = PKEndOfMonthWithTimeZone();

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v0[165];
  v23 = v0[164];
  v24 = v0[160];
  v25 = v0[159];
  sub_1BE04AEE4();

  v26 = *(v24 + 32);
  v0[172] = v26;
  v0[173] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v22, v23, v25);
  v27 = swift_task_alloc();
  v0[174] = v27;
  *v27 = v0;
  v27[1] = sub_1BD770DF4;

  sub_1BD776BE0();
}

uint64_t sub_1BD770DF4(uint64_t a1)
{
  *(*v1 + 1400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD770EF4, 0, 0);
}

uint64_t sub_1BD770EF4()
{
  v1 = *(v0 + 1400);
  if (v1)
  {
    v2 = [*(v0 + 1400) accountIdentifier];

    if (v2)
    {
      v1 = sub_1BE052434();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:
  *(v0 + 1416) = v4;
  *(v0 + 1408) = v1;
  v5 = swift_task_alloc();
  *(v0 + 1424) = v5;
  *v5 = v0;
  v5[1] = sub_1BD770FE0;

  return sub_1BD77769C();
}

uint64_t sub_1BD770FE0(uint64_t a1)
{
  *(*v1 + 1432) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD7710E0, 0, 0);
}

uint64_t sub_1BD7710E0(uint64_t a1)
{
  v2 = v1[167];
  v3 = v1[160];
  v4 = v1[159];
  v1[180] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  v1[181] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
  sub_1BE04AEF4();
  v5 = sub_1BE04AE84();
  v8 = *(v3 + 8);
  v6 = v3 + 8;
  v7 = v8;
  v9 = (v8)(v2, v4);
  if (v5)
  {
    v17 = v1[146];
    v18 = v1[143];
    v19 = v1[140];
    v79 = v1[134];
    v80 = v1[137];
    v1[182] = *MEMORY[0x1E69BB7A8];
    v1[183] = *MEMORY[0x1E69BB7A0];
    v1[184] = *MEMORY[0x1E69BB798];
    v1[186] = v7;
    v1[185] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v1[149];
    v20 = v1[148];
    v21 = v1[147];
    v22 = v1[145];
    v23 = v1[144];
    v24 = v1[142];
    v25 = v1[141];
    v73 = v1[139];
    v75 = v1[138];
    v76 = v1[135];
    v77 = v1[133];
    v78 = v1[136];
    v74 = v1[122];
    MEMORY[0x1BFB371E0](v9);
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v18 + 8))(v23, v24);
    v26 = *(v17 + 8);
    v26(v21, v22);
    sub_1BE04AC44();
    sub_1BE04ABA4();
    (*(v19 + 8))(v25, v73);
    v26(v20, v22);
    sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1BE04AF44();
    v26(v72, v22);
    v27 = v1[87];
    v28 = v1[88];
    v1[187] = v28;
    v1[188] = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v29 = sub_1BE052D54();
    v30 = swift_allocObject();
    v30[2] = v74;
    v30[3] = v27;
    v30[4] = v28;
    v1[56] = sub_1BD77C4D0;
    v1[57] = v30;
    v1[52] = MEMORY[0x1E69E9820];
    v1[53] = 1107296256;
    v1[54] = sub_1BD126964;
    v1[55] = &block_descriptor_197;
    v31 = _Block_copy(v1 + 52);
    v32 = v74;
    sub_1BE048C84();
    sub_1BE051F74();
    v1[111] = MEMORY[0x1E69E7CC0];
    v1[189] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v1[190] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    v1[191] = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v75, v76, v31);
    _Block_release(v31);

    v33 = *(v79 + 8);
    v1[192] = v33;
    v1[193] = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v76, v77);
    v34 = *(v80 + 8);
    v1[194] = v34;
    v1[195] = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v75, v78);
    v1[57], v35, v36, v37, v38, v39, v40, v41;
    v42 = [objc_opt_self() sharedInstance];
    v1[196] = v42;
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BE04AE64();
      v1[197] = v44;
      v45 = sub_1BE04AE64();
      v1[198] = v45;
      v1[10] = v1;
      v1[15] = v1 + 121;
      v1[11] = sub_1BD771A04;
      v46 = swift_continuation_init();
      v1[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600, &unk_1BE0F5B10);
      v1[26] = MEMORY[0x1E69E9820];
      v1[27] = 1107296256;
      v1[28] = sub_1BD16E918;
      v1[29] = &block_descriptor_200_0;
      v1[30] = v46;
      [v43 applePayContainerItemsFromDate:v44 toDate:v45 completion:v1 + 26];
      v42 = v1 + 10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v42);
  }

  else
  {
    v71 = v1[168];
    v69 = v1[165];
    v70 = v1[166];
    v67 = v1[179];
    v68 = v1[159];
    v47 = v1[138];
    v65 = v1[137];
    v66 = v1[136];
    v64 = v1[135];
    v48 = v1[134];
    v49 = v1[133];
    v50 = v1[122];
    v1[177], v10, v11, v12, v13, v14, v15, v16;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v63 = sub_1BE052D54();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    v1[44] = sub_1BD77C4C8;
    v1[45] = v51;
    v1[40] = MEMORY[0x1E69E9820];
    v1[41] = 1107296256;
    v1[42] = sub_1BD126964;
    v1[43] = &block_descriptor_190_1;
    v52 = _Block_copy(v1 + 40);
    v53 = v50;
    sub_1BE051F74();
    v1[113] = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v47, v64, v52);
    _Block_release(v52);

    (*(v48 + 8))(v64, v49);
    (*(v65 + 8))(v47, v66);
    v7(v69, v68);
    v7(v70, v68);
    v7(v71, v68);
    v1[45], v54, v55, v56, v57, v58, v59, v60;

    v61 = v1[1];

    return v61();
  }
}

uint64_t sub_1BD771A04()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1592) = v1;
  if (v1)
  {
    v2 = sub_1BD776144;
  }

  else
  {
    v2 = sub_1BD771B14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD771B14()
{
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 968);
  *(v0 + 1600) = v4;

  if (!v4)
  {
    v421 = 0;
    goto LABEL_137;
  }

  v5 = [v4 allRecordsWithRecordType_];
  if (!v5)
  {
    goto LABEL_182;
  }

  v6 = v5;
  *(v0 + 1608) = sub_1BD0E5E8C(0, &qword_1EBD524E8, 0x1E695BA60);
  *(v0 + 1616) = sub_1BD77C4DC();
  v7 = sub_1BE052A34();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v5 = sub_1BE052A74();
    v7 = *(v0 + 504);
    v11 = *(v0 + 512);
    v12 = *(v0 + 520);
    v13 = *(v0 + 528);
    v14 = *(v0 + 536);
  }

  else
  {
    v13 = 0;
    v15 = -1;
    v16 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v15 = ~(-1 << v17);
    }

    v14 = (v15 & *(v7 + 56));
  }

  *(v0 + 1640) = v12;
  *(v0 + 1632) = v11;
  *(v0 + 1624) = v7;
  v18 = &selRef_metricsForTextStyle_;
  while (v7 < 0)
  {
    v25 = sub_1BE053744();
    if (!v25)
    {
      goto LABEL_51;
    }

    *(v0 + 784) = v25;
    swift_dynamicCast();
    v24 = *(v0 + 960);
    v21 = v13;
    v23 = v14;
LABEL_19:
    *(v0 + 1664) = v23;
    *(v0 + 1656) = v21;
    *(v0 + 1648) = v24;
    if (!v24)
    {
LABEL_51:
      v22 = *(v0 + 1640);
      v7 = *(v0 + 1624);
      goto LABEL_52;
    }

    v26 = sub_1BE053004();
    v28 = v27;
    v29 = sub_1BE052434();
    v37 = v30;
    if (v26 == v29 && v28 == v30)
    {
      v30, v30, v31, v32, v33, v34, v35, v36;
      v28, v54, v55, v56, v57, v58, v59, v60;
    }

    else
    {
      v39 = sub_1BE053B84();
      v37, v40, v41, v42, v43, v44, v45, v46;
      v28, v47, v48, v49, v50, v51, v52, v53;
      if ((v39 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1BE0B7020;
    *(v61 + 32) = v24;
    v62 = objc_allocWithZone(MEMORY[0x1E69B86F0]);
    v63 = v24;
    v64 = sub_1BE052724();
    v61, v65, v66, v67, v68, v69, v70, v71;
    v72 = [v62 initWithRecords_];
    *(v0 + 1672) = v72;

    v73 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) initWithCloudStoreCoder_];
    *(v0 + 1680) = v73;
    if (v73)
    {
      v74 = *(*(v0 + 976) + *(v0 + 1440));
      v75 = v74;
      v76 = v73;
    }

    else
    {
      v76 = 0;
      v74 = 0;
    }

    v434 = v74;
    *(v0 + 1696) = v74;
    v425 = v76;
    *(v0 + 1688) = v76;
    v422 = v73;
    v77 = [v63 encryptedValues];
    *(v0 + 1704) = v77;
    v78 = sub_1BE052404();
    v438 = v77;
    v79 = [v77 v18[221]];

    v429 = v72;
    if (v79)
    {
      v80 = *(v0 + 1416);
      *(v0 + 832) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v81 = *(v0 + 616);
      v82 = *(v0 + 624);
      if (v80)
      {
        if (v81 == *(v0 + 1408) && *(v0 + 1416) == v82)
        {
          LODWORD(v80) = 1;
        }

        else
        {
          LODWORD(v80) = sub_1BE053B84();
        }
      }
    }

    else
    {
      v81 = 0;
      v82 = 0;
      LODWORD(v80) = *(v0 + 1416) == 0;
    }

    v83 = v23;
    *(v0 + 1800) = v80 & 1;
    v84 = [*(*(v0 + 976) + *(v0 + 1352)) accountIdentifier];
    if (v84)
    {
      v92 = v84;
      v93 = sub_1BE052434();
      v95 = v94;

      if (!v82)
      {
        v104 = v434;
        if (!v95)
        {
          goto LABEL_145;
        }

        v96 = 0;
        v18 = &selRef_metricsForTextStyle_;
        goto LABEL_48;
      }

      if (v95)
      {
        if (v81 == v93 && v82 == v95)
        {
          v95, v85, v86, v87, v88, v89, v90, v91;
          v82, v324, v325, v326, v327, v328, v329, v330;
LABEL_145:
          LOBYTE(v96) = 1;
          v18 = &selRef_metricsForTextStyle_;
LABEL_146:
          *(v0 + 1801) = v96 & 1;
          v331 = sub_1BE052404();
          v332 = v438;
          v333 = [v438 v18[221]];

          if (v333)
          {
            *(v0 + 840) = v333;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v334 = *(v0 + 632);
            v333 = *(v0 + 640);
          }

          else
          {
            v334 = 0;
          }

          *(v0 + 1720) = v333;
          *(v0 + 1712) = v334;
          v335 = sub_1BE052404();
          v336 = [v438 v18[221]];

          if (v336)
          {
            *(v0 + 848) = v336;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v337 = *(v0 + 648);
            v338 = *(v0 + 656);
          }

          else
          {
            v337 = 0;
            v338 = 0;
          }

          *(v0 + 1736) = v338;
          *(v0 + 1728) = v337;
          v339 = sub_1BE052404();
          v340 = [v438 v18[221]];

          v341 = *(v0 + 1272);
          v342 = *(v0 + 1256);
          v343 = (*(v0 + 1280) + 56);
          if (v340)
          {
            *(v0 + 856) = v340;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            v332 = v438;
            swift_dynamicCast();
            (*v343)(v342, 0, 1, v341);
          }

          else
          {
            (*v343)(*(v0 + 1256), 1, 1, v341);
          }

          v344 = sub_1BE052404();
          v345 = [v332 objectForKey_];

          if (v345)
          {
            *(v0 + 864) = v345;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v346 = *(v0 + 664);
            v347 = *(v0 + 672);
          }

          else
          {
            v346 = 0;
            v347 = 0;
          }

          *(v0 + 1752) = v347;
          *(v0 + 1744) = v346;
          v348 = sub_1BE052404();
          v349 = [v332 objectForKey_];

          if (v349)
          {
            *(v0 + 872) = v349;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v350 = *(v0 + 680);
            v351 = *(v0 + 688);
          }

          else
          {
            v350 = 0;
            v351 = 0;
          }

          *(v0 + 1768) = v351;
          *(v0 + 1760) = v350;
          if (v96)
          {
            v352 = [*(*(v0 + 976) + *(v0 + 1440)) transactionSourceIdentifiers];
            if (!v352)
            {
              goto LABEL_167;
            }

LABEL_166:
            v354 = v352;
            v355 = sub_1BE052A34();

            sub_1BD960F28(v355);
            v357 = v356;
            v355, v356, v358, v359, v360, v361, v362, v363;
          }

          else
          {
            v353 = *(v0 + 1432);
            if (v353)
            {
              v352 = [v353 transactionSourceIdentifiers];
              if (v352)
              {
                goto LABEL_166;
              }
            }

LABEL_167:
            v357 = 0;
          }

          v364 = *(*(v0 + 976) + *(v0 + 1448));
          *(v0 + 1776) = v364;
          if (v333)
          {
            v365 = v364;
            sub_1BE048C84();
            v366 = sub_1BE052404();
            v333, v367, v368, v369, v370, v371, v372, v373;
            *(v0 + 1784) = v366;
            if (v357)
            {
              goto LABEL_170;
            }

LABEL_172:
            v374 = 0;
          }

          else
          {
            v382 = v364;
            v366 = 0;
            *(v0 + 1784) = 0;
            if (!v357)
            {
              goto LABEL_172;
            }

LABEL_170:
            v374 = sub_1BE052404();
            v357, v375, v376, v377, v378, v379, v380, v381;
          }

          *(v0 + 1792) = v374;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 880;
          *(v0 + 24) = sub_1BD773C40;
          v383 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1BD1F07A8;
          *(v0 + 168) = &block_descriptor_209_1;
          *(v0 + 176) = v383;
          [v364 transactionWithServiceIdentifier:v366 transactionSourceIdentifier:v374 completion:v0 + 144];
          v5 = (v0 + 16);
          goto LABEL_174;
        }

        v96 = sub_1BE053B84();
        v82, v97, v98, v99, v100, v101, v102, v103;
        goto LABEL_45;
      }
    }

    else if (!v82)
    {
      goto LABEL_145;
    }

    v96 = 0;
    v95 = v82;
LABEL_45:
    v18 = &selRef_metricsForTextStyle_;
    v104 = v434;
LABEL_48:
    v95, v85, v86, v87, v88, v89, v90, v91;
    if ((v96 | v80))
    {
      goto LABEL_146;
    }

    sub_1BD17195C(v425, v104);

    swift_unknownObjectRelease();
    v23 = v83;
LABEL_10:

    v7 = *(v0 + 1624);
    v13 = v21;
    v14 = v23;
  }

  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_16:
    v23 = (v20 - 1) & v20;
    v24 = *(*(v7 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    goto LABEL_19;
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_178;
    }

    v22 = *(v0 + 1640);
    if (v21 >= ((v22 + 64) >> 6))
    {
      break;
    }

    v20 = *(*(v0 + 1632) + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_16;
    }
  }

  v14 = 0;
LABEL_52:
  v105 = *(v0 + 1600);
  v106 = *(v0 + 1464);
  sub_1BD0D45FC(v7, *(v0 + 1632), v22, v13, v14, v8, v9, v10);
  v5 = [v105 allRecordsWithRecordType_];
  if (!v5)
  {
    goto LABEL_183;
  }

  v107 = v5;
  v108 = sub_1BE052A34();

  if ((v108 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v5 = sub_1BE052A74();
    v108 = *(v0 + 464);
    v112 = *(v0 + 472);
    v113 = *(v0 + 480);
    v114 = *(v0 + 488);
    v115 = *(v0 + 496);
  }

  else
  {
    v114 = 0;
    v116 = -1 << *(v108 + 32);
    v112 = (v108 + 56);
    v113 = ~v116;
    v117 = -v116;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    else
    {
      v118 = -1;
    }

    v115 = (v118 & *(v108 + 56));
  }

  v119 = (v113 + 64) >> 6;
  v384 = v113;
  v385 = v112;
  v386 = v108;
  v388 = v119;
  if (v108 < 0)
  {
    goto LABEL_60;
  }

  while (2)
  {
    while (2)
    {
      v124 = v114;
      v125 = v115;
      v122 = v114;
      if (!v115)
      {
        do
        {
          v122 = (v124 + 1);
          if (__OFADD__(v124, 1))
          {
            goto LABEL_179;
          }

          if (v122 >= v119)
          {
            v115 = 0;
            goto LABEL_136;
          }

          v125 = *&v112[8 * v122];
          ++v124;
        }

        while (!v125);
      }

      v123 = (v125 - 1) & v125;
      v121 = *(*(v108 + 48) + ((v122 << 9) | (8 * __clz(__rbit64(v125)))));
      if (!v121)
      {
        goto LABEL_136;
      }

LABEL_68:
      v423 = v123;
      v435 = v121;
      v126 = sub_1BE053004();
      v128 = v127;
      v129 = sub_1BE052434();
      v137 = v130;
      if (v126 == v129 && v128 == v130)
      {
        v130, v130, v131, v132, v133, v134, v135, v136;
        v128, v154, v155, v156, v157, v158, v159, v160;
      }

      else
      {
        v139 = sub_1BE053B84();
        v137, v140, v141, v142, v143, v144, v145, v146;
        v128, v147, v148, v149, v150, v151, v152, v153;
        if ((v139 & 1) == 0)
        {

          v114 = v122;
          v115 = v423;
          v119 = v388;
          if (v108 < 0)
          {
            goto LABEL_60;
          }

          continue;
        }
      }

      break;
    }

    v161 = *(v0 + 1280);
    v162 = *(v0 + 1272);
    v163 = *(v0 + 1240);
    v439 = [v435 encryptedValues];
    v164 = sub_1BE052404();
    v165 = [v435 pk:v164 referenceForKey:?];

    v166 = *(v161 + 56);
    v166(v163, 1, 1, v162);
    v418 = v165;
    if (!v165)
    {
      v419 = 0;
      goto LABEL_106;
    }

    v430 = [v165 recordID];
    if (!v430)
    {
      v419 = 0;
      goto LABEL_106;
    }

    v5 = [*(v0 + 1600) allRecordsWithRecordType_];
    if (!v5)
    {
      goto LABEL_181;
    }

    v167 = v5;
    v412 = v166;
    v168 = sub_1BE052A34();

    v172 = v168;
    if ((v168 & 0xC000000000000001) != 0)
    {
      sub_1BE0536B4();
      v5 = sub_1BE052A74();
      v172 = *(v0 + 544);
      v173 = *(v0 + 552);
      v174 = *(v0 + 560);
      v175 = *(v0 + 568);
      v176 = *(v0 + 576);
    }

    else
    {
      v175 = 0;
      v177 = -1 << *(v168 + 32);
      v173 = (v168 + 56);
      v174 = ~v177;
      v178 = -v177;
      if (v178 < 64)
      {
        v179 = ~(-1 << v178);
      }

      else
      {
        v179 = -1;
      }

      v176 = v179 & *(v168 + 56);
    }

    v419 = 0;
    v416 = v174;
    v180 = (v174 + 64) >> 6;
    v426 = v172;
LABEL_88:
    v181 = v175;
    v182 = v176;
    if ((v172 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v185 = v181;
        v186 = v182;
        v175 = v181;
        if (!v182)
        {
          break;
        }

LABEL_96:
        v176 = (v186 - 1) & v186;
        v184 = *(*(v172 + 48) + ((v175 << 9) | (8 * __clz(__rbit64(v186)))));
        if (!v184)
        {
          goto LABEL_105;
        }

LABEL_97:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        v187 = [v184 recordID];
        v188 = sub_1BE053074();

        if (v188)
        {
          v409 = *(v0 + 1240);

          v189 = [v184 encryptedValues];
          v190 = sub_1BE052404();
          v191 = [v189 objectForKey_];

          swift_unknownObjectRelease();
          sub_1BD0DE53C(v409, &unk_1EBD39970, &unk_1BE0B9F80);
          v192 = *(v0 + 1272);
          v193 = *(v0 + 1232);
          if (v191)
          {
            *(v0 + 792) = v191;
            v194 = v192;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v195 = v193;
            v196 = 0;
            v192 = v194;
          }

          else
          {
            v195 = *(v0 + 1232);
            v196 = 1;
          }

          v412(v195, v196, 1, v192);
          v5 = sub_1BD1CBBEC(*(v0 + 1232), *(v0 + 1240));
          v419 = v184;
          v172 = v426;
          goto LABEL_88;
        }

        v181 = v175;
        v182 = v176;
        v172 = v426;
        if (v426 < 0)
        {
          goto LABEL_89;
        }
      }

      while (1)
      {
        v175 = (v185 + 1);
        if (__OFADD__(v185, 1))
        {
          break;
        }

        if (v175 >= v180)
        {
          v182 = 0;
          goto LABEL_105;
        }

        v186 = *&v173[8 * v175];
        ++v185;
        if (v186)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

LABEL_89:
    v183 = sub_1BE053744();
    if (v183)
    {
      *(v0 + 808) = v183;
      swift_dynamicCast();
      v184 = *(v0 + 800);
      v175 = v181;
      v176 = v182;
      if (v184)
      {
        goto LABEL_97;
      }
    }

LABEL_105:
    sub_1BD0D45FC(v426, v173, v416, v181, v182, v169, v170, v171);

    v18 = &selRef_metricsForTextStyle_;
LABEL_106:
    v197 = sub_1BE052404();
    v198 = [v439 v18[221]];

    if (v198)
    {
      *(v0 + 920) = v198;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v199 = *(v0 + 584);
      v200 = *(v0 + 592);
    }

    else
    {
      v199 = 0;
      v200 = 0;
    }

    v201 = sub_1BE052404();
    v202 = [v439 v18[221]];

    if (v202)
    {
      *(v0 + 776) = v202;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v427 = *(v0 + 608);
      v431 = *(v0 + 600);
    }

    else
    {
      v427 = 0;
      v431 = 0;
    }

    v203 = sub_1BE052404();
    v204 = [v439 v18[221]];

    if (v204)
    {
      *(v0 + 952) = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v414 = *(v0 + 768);
      v417 = *(v0 + 760);
    }

    else
    {
      v414 = 0;
      v417 = 0;
    }

    v205 = sub_1BE052404();
    v206 = [v439 v18[221]];

    if (v206)
    {
      *(v0 + 944) = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v410 = *(v0 + 752);
      v413 = *(v0 + 744);
    }

    else
    {
      v410 = 0;
      v413 = 0;
    }

    v207 = sub_1BE052404();
    v208 = [v439 v18[221]];

    if (v208)
    {
      *(v0 + 936) = v208;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v407 = *(v0 + 728);
      v406 = *(v0 + 736);
    }

    else
    {
      v407 = 0;
      v406 = 0;
    }

    v209 = sub_1BE052404();
    v210 = [v439 v18[221]];

    if (v210)
    {
      *(v0 + 928) = v210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v398 = *(v0 + 720);
      v400 = *(v0 + 712);
    }

    else
    {
      v398 = 0;
      v400 = 0;
    }

    v211 = *(v0 + 1280);
    v212 = *(v0 + 1272);
    v213 = *(v0 + 1224);
    sub_1BD15D62C(*(v0 + 1240), v213);
    v214 = *(v211 + 48);
    if (v200)
    {
      v215 = v199;
    }

    else
    {
      v215 = 0;
    }

    v216 = 0xE000000000000000;
    if (v200)
    {
      v216 = v200;
    }

    v390 = v216;
    v392 = v215;
    if (v214(v213, 1, v212) == 1)
    {
      v217 = *(v0 + 1272);
      v218 = *(v0 + 1224);
      sub_1BE04AEF4();
      if (v214(v218, 1, v217) != 1)
      {
        sub_1BD0DE53C(*(v0 + 1224), &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }

    else
    {
      (*(v0 + 1376))(*(v0 + 1296), *(v0 + 1224), *(v0 + 1272));
    }

    v405 = *(v0 + 1552);
    v403 = *(v0 + 1536);
    v219 = *(v0 + 1376);
    v220 = *(v0 + 1296);
    v221 = *(v0 + 1272);
    v404 = *(v0 + 1240);
    v394 = *(v0 + 1104);
    v402 = *(v0 + 1088);
    v222 = *(v0 + 1080);
    v396 = *(v0 + 1064);
    v223 = *(v0 + 1016);
    v224 = *(v0 + 1008);
    v225 = *(v0 + 992);
    v226 = *(v0 + 984);
    v227 = *(v0 + 976);
    *v223 = v392;
    *(v223 + 1) = v390;
    *(v223 + 2) = v431;
    *(v223 + 3) = v427;
    v219(&v223[v226[6]], v220, v221);
    v228 = &v223[v226[7]];
    *v228 = v400;
    *(v228 + 1) = v398;
    v229 = &v223[v226[8]];
    *v229 = v417;
    *(v229 + 1) = v414;
    v230 = &v223[v226[9]];
    *v230 = v407;
    *(v230 + 1) = v406;
    v231 = &v223[v226[10]];
    *v231 = v413;
    *(v231 + 1) = v410;
    *&v223[v226[11]] = v435;
    *&v223[v226[12]] = v419;
    v232 = sub_1BE052D54();
    sub_1BD77BFE0(v223, v224, type metadata accessor for AccountDebugCKReward);
    v233 = (*(v225 + 80) + 24) & ~*(v225 + 80);
    v234 = swift_allocObject();
    *(v234 + 16) = v227;
    sub_1BD77C264(v224, v234 + v233, type metadata accessor for AccountDebugCKReward);
    *(v0 + 304) = sub_1BD77C544;
    *(v0 + 312) = v234;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD126964;
    *(v0 + 296) = &block_descriptor_206;
    v235 = _Block_copy((v0 + 272));
    v236 = v227;
    sub_1BE051F74();
    *(v0 + 896) = MEMORY[0x1E69E7CC0];
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v394, v222, v235);
    _Block_release(v235);

    swift_unknownObjectRelease();
    v403(v222, v396);
    v405(v394, v402);
    sub_1BD77C048(v223, type metadata accessor for AccountDebugCKReward);
    sub_1BD0DE53C(v404, &unk_1EBD39970, &unk_1BE0B9F80);
    *(v0 + 312), v237, v238, v239, v240, v241, v242, v243;
    v114 = v122;
    v115 = v423;
    v18 = &selRef_metricsForTextStyle_;
    v112 = v385;
    v108 = v386;
    v119 = v388;
    if ((v386 & 0x8000000000000000) == 0)
    {
      continue;
    }

    break;
  }

LABEL_60:
  v120 = sub_1BE053744();
  if (v120)
  {
    *(v0 + 824) = v120;
    swift_dynamicCast();
    v121 = *(v0 + 816);
    v122 = v114;
    v123 = v115;
    if (v121)
    {
      goto LABEL_68;
    }
  }

LABEL_136:
  v244 = *(v0 + 1600);
  sub_1BD0D45FC(v108, v112, v384, v114, v115, v109, v110, v111);

  v421 = *(v0 + 1600);
LABEL_137:
  v245 = *(v0 + 1488);
  v246 = *(v0 + 1376);
  v436 = *(v0 + 1360);
  v247 = *(v0 + 1336);
  v248 = *(v0 + 1328);
  v249 = *(v0 + 1272);
  v250 = *(v0 + 1216);
  v432 = *(v0 + 1200);
  sub_1BE04ADD4();
  v245(v248, v249);
  v246(v248, v247, v249);
  v251 = sub_1BE04AE64();
  sub_1BD765BC8(v250);
  v252 = sub_1BE04B374();
  v436(v250, v432);
  v253 = PKEndOfMonthWithTimeZone();

  if (!v253)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v261 = *(v0 + 1488);
  v262 = *(v0 + 1376);
  v263 = *(v0 + 1336);
  v264 = *(v0 + 1320);
  v265 = *(v0 + 1288);
  v266 = *(v0 + 1280);
  v267 = *(v0 + 1272);
  *(v0 + 1496), v254, v255, v256, v257, v258, v259, v260;
  sub_1BE04AEE4();

  v261(v264, v267);
  v262(v264, v265, v267);
  sub_1BE04AEF4();
  v268 = sub_1BE04AE84();
  v269 = *(v266 + 8);
  v270 = v269(v263, v267);
  if ((v268 & 1) == 0)
  {
    v401 = *(v0 + 1344);
    v397 = *(v0 + 1320);
    v399 = *(v0 + 1328);
    v393 = *(v0 + 1432);
    v395 = *(v0 + 1272);
    v307 = *(v0 + 1104);
    v389 = *(v0 + 1096);
    v391 = *(v0 + 1088);
    aBlock = *(v0 + 1080);
    v308 = *(v0 + 1072);
    v309 = *(v0 + 1064);
    v310 = *(v0 + 976);
    *(v0 + 1416), v271, v272, v273, v274, v275, v276, v277;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v311 = sub_1BE052D54();
    v312 = swift_allocObject();
    *(v312 + 16) = v310;
    *(v0 + 352) = sub_1BD77C4C8;
    *(v0 + 360) = v312;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1BD126964;
    *(v0 + 344) = &block_descriptor_190_1;
    v313 = _Block_copy((v0 + 320));
    v314 = v310;
    sub_1BE051F74();
    *(v0 + 904) = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v307, aBlock, v313);
    _Block_release(v313);

    (*(v308 + 8))(aBlock, v309);
    (*(v389 + 8))(v307, v391);
    v269(v397, v395);
    v269(v399, v395);
    v269(v401, v395);
    *(v0 + 360), v315, v316, v317, v318, v319, v320, v321;

    v322 = *(v0 + 8);

    return v322();
  }

  *(v0 + 1488) = v269;
  *(v0 + 1480) = (v266 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v411 = *(v0 + 1192);
  v278 = *(v0 + 1184);
  v279 = *(v0 + 1176);
  v280 = *(v0 + 1168);
  v281 = *(v0 + 1160);
  v282 = *(v0 + 1152);
  v283 = *(v0 + 1144);
  v284 = *(v0 + 1136);
  v285 = *(v0 + 1128);
  v286 = *(v0 + 1120);
  v408 = *(v0 + 1112);
  v437 = *(v0 + 1096);
  v440 = *(v0 + 1088);
  v420 = *(v0 + 1104);
  v424 = *(v0 + 1080);
  v428 = *(v0 + 1064);
  v433 = *(v0 + 1072);
  v415 = *(v0 + 976);
  MEMORY[0x1BFB371E0](v270);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v283 + 8))(v282, v284);
  v287 = *(v280 + 8);
  v287(v279, v281);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v286 + 8))(v285, v408);
  v287(v278, v281);
  sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1BE04AF44();
  v287(v411, v281);
  v288 = *(v0 + 696);
  v289 = *(v0 + 704);
  *(v0 + 1496) = v289;
  *(v0 + 1504) = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v290 = sub_1BE052D54();
  v291 = swift_allocObject();
  v291[2] = v415;
  v291[3] = v288;
  v291[4] = v289;
  *(v0 + 448) = sub_1BD77C4D0;
  *(v0 + 456) = v291;
  *(v0 + 416) = MEMORY[0x1E69E9820];
  *(v0 + 424) = 1107296256;
  *(v0 + 432) = sub_1BD126964;
  *(v0 + 440) = &block_descriptor_197;
  v292 = _Block_copy((v0 + 416));
  v293 = v415;
  sub_1BE048C84();
  sub_1BE051F74();
  *(v0 + 888) = MEMORY[0x1E69E7CC0];
  *(v0 + 1512) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  *(v0 + 1520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  *(v0 + 1528) = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v420, v424, v292);
  _Block_release(v292);

  v294 = *(v433 + 8);
  *(v0 + 1536) = v294;
  *(v0 + 1544) = (v433 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v294(v424, v428);
  v295 = *(v437 + 8);
  *(v0 + 1552) = v295;
  *(v0 + 1560) = (v437 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v295(v420, v440);
  *(v0 + 456), v296, v297, v298, v299, v300, v301, v302;
  v5 = [objc_opt_self() sharedInstance];
  *(v0 + 1568) = v5;
  if (!v5)
  {
LABEL_184:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v5);
  }

  v303 = v5;
  v304 = sub_1BE04AE64();
  *(v0 + 1576) = v304;
  v305 = sub_1BE04AE64();
  *(v0 + 1584) = v305;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 968;
  *(v0 + 88) = sub_1BD771A04;
  v306 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600, &unk_1BE0F5B10);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1BD16E918;
  *(v0 + 232) = &block_descriptor_200_0;
  *(v0 + 240) = v306;
  [v303 applePayContainerItemsFromDate:v304 toDate:v305 completion:v0 + 208];
  v5 = (v0 + 80);
LABEL_174:

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1BD773C40()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD773D20, 0, 0);
}

uint64_t sub_1BD773D20()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 880);

  v490 = v3;
  if (v3)
  {
    v4 = *(v0 + 1800);
    v5 = *(v0 + 1432);
    v480 = [v3 suppressBehavior] == 1;
    if (v4 == 1 && v5)
    {
      v6 = *(v0 + 1432);
      v7 = v3;
      v460 = v6;
    }

    else
    {
      if (*(v0 + 1801) != 1)
      {
        v449 = 0;
        v460 = 0;
        goto LABEL_10;
      }

      v7 = *(*(v0 + 976) + *(v0 + 1440));
      v6 = v3;
      v460 = v7;
    }

    v8 = v6;
    v9 = v7;
    v449 = v3;
  }

  else
  {
    v449 = 0;
    v460 = 0;
    v480 = 0;
  }

LABEL_10:
  v10 = *(v0 + 1736);
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1720);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1248);
  sub_1BD15D62C(*(v0 + 1256), v16);
  v17 = *(v14 + 48);
  if (v12)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v440 = v20;
  v441 = v18;
  if (v10)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  if (v10)
  {
    v19 = v10;
  }

  v434 = v19;
  v437 = v21;
  if (v17(v16, 1, v15) == 1)
  {
    v22 = *(v0 + 1272);
    v23 = *(v0 + 1248);
    sub_1BE04AEF4();
    if (v17(v23, 1, v22) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1248), &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    (*(v0 + 1376))(*(v0 + 1304), *(v0 + 1248), *(v0 + 1272));
  }

  v431 = *(v0 + 1801);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v453 = *(v0 + 1680);
  v457 = *(v0 + 1672);
  v26 = *(v0 + 1648);
  v468 = *(v0 + 1552);
  v463 = *(v0 + 1536);
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1304);
  v29 = *(v0 + 1272);
  v475 = *(v0 + 1256);
  v442 = *(v0 + 1104);
  v451 = *(v0 + 1088);
  v443 = *(v0 + 1080);
  v445 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1744);
  v33 = *(v0 + 1760);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 1024);
  v36 = *(v0 + 976);
  *v30 = v441;
  *(v30 + 8) = v440;
  *(v30 + 16) = v437;
  *(v30 + 24) = v434;
  *(v30 + 32) = v32;
  *(v30 + 48) = v33;
  v27(v30 + v35[8], v28, v29);
  v37 = (v30 + v35[9]);
  *v37 = v449;
  v37[1] = v460;
  v38 = (v30 + v35[10]);
  *v38 = v25;
  v38[1] = v24;
  *(v30 + v35[11]) = v480;
  *(v30 + v35[12]) = v26;
  v39 = sub_1BE052D54();
  sub_1BD77BFE0(v30, v31, type metadata accessor for AccountDebugCKTransaction);
  v40 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v431;
  *(v41 + 24) = v36;
  sub_1BD77C264(v31, v41 + v40, type metadata accessor for AccountDebugCKTransaction);
  *(v0 + 400) = sub_1BD77C5F0;
  *(v0 + 408) = v41;
  *(v0 + 368) = MEMORY[0x1E69E9820];
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_1BD126964;
  *(v0 + 392) = &block_descriptor_215_0;
  v42 = _Block_copy((v0 + 368));
  v43 = v36;
  sub_1BE051F74();
  *(v0 + 912) = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v442, v443, v42);
  _Block_release(v42);

  swift_unknownObjectRelease();
  v463(v443, v445);
  v468(v442, v451);
  sub_1BD77C048(v30, type metadata accessor for AccountDebugCKTransaction);
  *(v0 + 408), v44, v45, v46, v47, v48, v49, v50;
  sub_1BD0DE53C(v475, &unk_1EBD39970, &unk_1BE0B9F80);
  v54 = *(v0 + 1664);
  v55 = *(v0 + 1656);
  v56 = &selRef_metricsForTextStyle_;
  while (1)
  {
    v57 = *(v0 + 1624);
    if ((v57 & 0x8000000000000000) == 0)
    {
      break;
    }

    v64 = sub_1BE053744();
    if (!v64)
    {
      goto LABEL_66;
    }

    *(v0 + 784) = v64;
    swift_dynamicCast();
    v63 = *(v0 + 960);
    v60 = v55;
    v62 = v54;
LABEL_35:
    *(v0 + 1664) = v62;
    *(v0 + 1656) = v60;
    *(v0 + 1648) = v63;
    if (!v63)
    {
LABEL_66:
      v61 = *(v0 + 1640);
      v57 = *(v0 + 1624);
      goto LABEL_67;
    }

    v65 = sub_1BE053004();
    v67 = v66;
    v68 = sub_1BE052434();
    v76 = v69;
    if (v65 == v68 && v67 == v69)
    {
      v69, v69, v70, v71, v72, v73, v74, v75;
      v67, v93, v94, v95, v96, v97, v98, v99;
    }

    else
    {
      v78 = sub_1BE053B84();
      v76, v79, v80, v81, v82, v83, v84, v85;
      v67, v86, v87, v88, v89, v90, v91, v92;
      if ((v78 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1BE0B7020;
    *(v100 + 32) = v63;
    v101 = objc_allocWithZone(MEMORY[0x1E69B86F0]);
    v102 = v63;
    v103 = sub_1BE052724();
    v100, v104, v105, v106, v107, v108, v109, v110;
    v111 = [v101 initWithRecords_];
    *(v0 + 1672) = v111;

    v481 = v111;
    v112 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) initWithCloudStoreCoder_];
    *(v0 + 1680) = v112;
    if (v112)
    {
      v113 = *(*(v0 + 976) + *(v0 + 1440));
      v114 = v113;
      v115 = v112;
    }

    else
    {
      v115 = 0;
      v113 = 0;
    }

    v486 = v62;
    *(v0 + 1696) = v113;
    v476 = v115;
    *(v0 + 1688) = v115;
    v471 = v112;
    v116 = [v102 encryptedValues];
    *(v0 + 1704) = v116;
    v117 = sub_1BE052404();
    v491 = v116;
    v118 = [v116 v56[221]];

    if (v118)
    {
      v119 = *(v0 + 1416);
      *(v0 + 832) = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v120 = *(v0 + 616);
      v121 = *(v0 + 624);
      if (v119)
      {
        if (v120 == *(v0 + 1408) && *(v0 + 1416) == v121)
        {
          LODWORD(v119) = 1;
        }

        else
        {
          LODWORD(v119) = sub_1BE053B84();
        }
      }
    }

    else
    {
      v120 = 0;
      v121 = 0;
      LODWORD(v119) = *(v0 + 1416) == 0;
    }

    *(v0 + 1800) = v119 & 1;
    v122 = [*(*(v0 + 976) + *(v0 + 1352)) accountIdentifier];
    if (v122)
    {
      v130 = v122;
      v131 = sub_1BE052434();
      v133 = v132;

      if (!v121)
      {
        if (!v133)
        {
          goto LABEL_159;
        }

        v134 = 0;
        goto LABEL_63;
      }

      if (v133)
      {
        if (v120 == v131 && v121 == v133)
        {
          v133, v123, v124, v125, v126, v127, v128, v129;
          v121, v359, v360, v361, v362, v363, v364, v365;
LABEL_159:
          LOBYTE(v134) = 1;
LABEL_160:
          *(v0 + 1801) = v134 & 1;
          v366 = sub_1BE052404();
          v367 = v491;
          v368 = [v491 objectForKey_];

          if (v368)
          {
            *(v0 + 840) = v368;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v369 = *(v0 + 632);
            v368 = *(v0 + 640);
          }

          else
          {
            v369 = 0;
          }

          *(v0 + 1720) = v368;
          *(v0 + 1712) = v369;
          v370 = sub_1BE052404();
          v371 = [v491 objectForKey_];

          if (v371)
          {
            *(v0 + 848) = v371;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v372 = *(v0 + 648);
            v373 = *(v0 + 656);
          }

          else
          {
            v372 = 0;
            v373 = 0;
          }

          *(v0 + 1736) = v373;
          *(v0 + 1728) = v372;
          v374 = sub_1BE052404();
          v375 = [v491 objectForKey_];

          v376 = *(v0 + 1272);
          v377 = *(v0 + 1256);
          v378 = (*(v0 + 1280) + 56);
          if (v375)
          {
            *(v0 + 856) = v375;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            v367 = v491;
            swift_dynamicCast();
            (*v378)(v377, 0, 1, v376);
          }

          else
          {
            (*v378)(*(v0 + 1256), 1, 1, v376);
          }

          v379 = sub_1BE052404();
          v380 = [v367 objectForKey_];

          if (v380)
          {
            *(v0 + 864) = v380;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v381 = *(v0 + 664);
            v382 = *(v0 + 672);
          }

          else
          {
            v381 = 0;
            v382 = 0;
          }

          *(v0 + 1752) = v382;
          *(v0 + 1744) = v381;
          v383 = sub_1BE052404();
          v384 = [v367 objectForKey_];

          if (v384)
          {
            *(v0 + 872) = v384;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
            swift_dynamicCast();
            v385 = *(v0 + 680);
            v386 = *(v0 + 688);
          }

          else
          {
            v385 = 0;
            v386 = 0;
          }

          *(v0 + 1768) = v386;
          *(v0 + 1760) = v385;
          if (v134)
          {
            v387 = [*(*(v0 + 976) + *(v0 + 1440)) transactionSourceIdentifiers];
            if (!v387)
            {
              goto LABEL_181;
            }

LABEL_180:
            v389 = v387;
            v390 = sub_1BE052A34();

            sub_1BD960F28(v390);
            v392 = v391;
            v390, v391, v393, v394, v395, v396, v397, v398;
          }

          else
          {
            v388 = *(v0 + 1432);
            if (v388)
            {
              v387 = [v388 transactionSourceIdentifiers];
              if (v387)
              {
                goto LABEL_180;
              }
            }

LABEL_181:
            v392 = 0;
          }

          v399 = *(*(v0 + 976) + *(v0 + 1448));
          *(v0 + 1776) = v399;
          if (v368)
          {
            v400 = v399;
            sub_1BE048C84();
            v401 = sub_1BE052404();
            v368, v402, v403, v404, v405, v406, v407, v408;
            *(v0 + 1784) = v401;
            if (v392)
            {
              goto LABEL_184;
            }

LABEL_186:
            v409 = 0;
          }

          else
          {
            v417 = v399;
            v401 = 0;
            *(v0 + 1784) = 0;
            if (!v392)
            {
              goto LABEL_186;
            }

LABEL_184:
            v409 = sub_1BE052404();
            v392, v410, v411, v412, v413, v414, v415, v416;
          }

          *(v0 + 1792) = v409;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 880;
          *(v0 + 24) = sub_1BD773C40;
          v418 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8, &qword_1BE0F5AF0);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1BD1F07A8;
          *(v0 + 168) = &block_descriptor_209_1;
          *(v0 + 176) = v418;
          [v399 transactionWithServiceIdentifier:v401 transactionSourceIdentifier:v409 completion:v0 + 144];
          v57 = v0 + 16;
          goto LABEL_188;
        }

        v134 = sub_1BE053B84();
        v121, v135, v136, v137, v138, v139, v140, v141;
        goto LABEL_63;
      }
    }

    else if (!v121)
    {
      goto LABEL_159;
    }

    v134 = 0;
    v133 = v121;
LABEL_63:
    v133, v123, v124, v125, v126, v127, v128, v129;
    v62 = v486;
    if ((v134 | v119))
    {
      goto LABEL_160;
    }

    sub_1BD17195C(v476, v113);

    swift_unknownObjectRelease();
    v56 = &selRef_metricsForTextStyle_;
LABEL_26:

    v55 = v60;
    v54 = v62;
  }

  v58 = v55;
  v59 = v54;
  v60 = v55;
  if (v54)
  {
LABEL_32:
    v62 = (v59 - 1) & v59;
    v63 = *(*(v57 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));
    goto LABEL_35;
  }

  while (1)
  {
    v60 = (v58 + 1);
    if (__OFADD__(v58, 1))
    {
      goto LABEL_192;
    }

    v61 = *(v0 + 1640);
    if (v60 >= ((v61 + 64) >> 6))
    {
      break;
    }

    v59 = *(*(v0 + 1632) + 8 * v60);
    ++v58;
    if (v59)
    {
      goto LABEL_32;
    }
  }

  v54 = 0;
LABEL_67:
  v142 = *(v0 + 1600);
  v143 = *(v0 + 1464);
  sub_1BD0D45FC(v57, *(v0 + 1632), v61, v55, v54, v51, v52, v53);
  v57 = [v142 allRecordsWithRecordType_];
  if (!v57)
  {
    goto LABEL_195;
  }

  v144 = v57;
  v145 = sub_1BE052A34();

  if ((v145 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v57 = sub_1BE052A74();
    v145 = *(v0 + 464);
    v149 = *(v0 + 472);
    v150 = *(v0 + 480);
    v151 = *(v0 + 488);
    v152 = *(v0 + 496);
  }

  else
  {
    v151 = 0;
    v153 = -1 << *(v145 + 32);
    v149 = (v145 + 56);
    v150 = ~v153;
    v154 = -v153;
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    else
    {
      v155 = -1;
    }

    v152 = (v155 & *(v145 + 56));
  }

  v156 = (v150 + 64) >> 6;
  v421 = v145;
  v419 = v150;
  v420 = v149;
  v423 = v156;
  if (v145 < 0)
  {
    goto LABEL_75;
  }

  while (2)
  {
    while (2)
    {
      v161 = v151;
      v162 = v152;
      v159 = v151;
      if (!v152)
      {
        while (1)
        {
          v159 = (v161 + 1);
          if (__OFADD__(v161, 1))
          {
            break;
          }

          if (v159 >= v156)
          {
            v152 = 0;
            goto LABEL_151;
          }

          v162 = *&v149[8 * v159];
          ++v161;
          if (v162)
          {
            goto LABEL_82;
          }
        }

LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

LABEL_82:
      v160 = (v162 - 1) & v162;
      v158 = *(*(v145 + 48) + ((v159 << 9) | (8 * __clz(__rbit64(v162)))));
      if (!v158)
      {
        goto LABEL_151;
      }

LABEL_83:
      v472 = v160;
      v487 = v158;
      v163 = sub_1BE053004();
      v165 = v164;
      v166 = sub_1BE052434();
      v174 = v167;
      if (v163 == v166 && v165 == v167)
      {
        v167, v167, v168, v169, v170, v171, v172, v173;
        v165, v191, v192, v193, v194, v195, v196, v197;
      }

      else
      {
        v176 = sub_1BE053B84();
        v174, v177, v178, v179, v180, v181, v182, v183;
        v165, v184, v185, v186, v187, v188, v189, v190;
        if ((v176 & 1) == 0)
        {

          v151 = v159;
          v152 = v472;
          v156 = v423;
          if (v145 < 0)
          {
            goto LABEL_75;
          }

          continue;
        }
      }

      break;
    }

    v198 = *(v0 + 1280);
    v199 = *(v0 + 1272);
    v200 = *(v0 + 1240);
    v492 = [v487 encryptedValues];
    v201 = sub_1BE052404();
    v202 = [v487 pk:v201 referenceForKey:?];

    v464 = *(v198 + 56);
    v464(v200, 1, 1, v199);
    v467 = v202;
    if (!v202)
    {
      v469 = 0;
      goto LABEL_121;
    }

    v482 = [v202 recordID];
    if (!v482)
    {
      v469 = 0;
      goto LABEL_121;
    }

    v57 = [*(v0 + 1600) allRecordsWithRecordType_];
    if (!v57)
    {
      goto LABEL_194;
    }

    v203 = v57;
    v204 = sub_1BE052A34();

    if ((v204 & 0xC000000000000001) != 0)
    {
      sub_1BE0536B4();
      v57 = sub_1BE052A74();
      v204 = *(v0 + 544);
      v208 = *(v0 + 552);
      v209 = *(v0 + 560);
      v210 = *(v0 + 568);
      v211 = *(v0 + 576);
    }

    else
    {
      v210 = 0;
      v212 = -1 << *(v204 + 32);
      v208 = (v204 + 56);
      v209 = ~v212;
      v213 = -v212;
      if (v213 < 64)
      {
        v214 = ~(-1 << v213);
      }

      else
      {
        v214 = -1;
      }

      v211 = v214 & *(v204 + 56);
    }

    v469 = 0;
    v461 = v209;
    v215 = (v209 + 64) >> 6;
    for (i = v204; ; v204 = i)
    {
      v216 = v210;
      v217 = v211;
      if (v204 < 0)
      {
        break;
      }

      while (1)
      {
        v220 = v216;
        v221 = v217;
        v210 = v216;
        if (!v217)
        {
          while (1)
          {
            v210 = (v220 + 1);
            if (__OFADD__(v220, 1))
            {
              break;
            }

            if (v210 >= v215)
            {
              v217 = 0;
              goto LABEL_120;
            }

            v221 = *&v208[8 * v210];
            ++v220;
            if (v221)
            {
              goto LABEL_111;
            }
          }

          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

LABEL_111:
        v211 = (v221 - 1) & v221;
        v219 = *(*(v204 + 48) + ((v210 << 9) | (8 * __clz(__rbit64(v221)))));
        if (!v219)
        {
          goto LABEL_120;
        }

LABEL_112:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        v222 = [v219 recordID];
        v223 = sub_1BE053074();

        if (v223)
        {
          break;
        }

        v216 = v210;
        v217 = v211;
        v204 = i;
        if (i < 0)
        {
          goto LABEL_104;
        }
      }

      v454 = *(v0 + 1240);

      v224 = [v219 encryptedValues];
      v225 = sub_1BE052404();
      v226 = [v224 objectForKey_];

      swift_unknownObjectRelease();
      sub_1BD0DE53C(v454, &unk_1EBD39970, &unk_1BE0B9F80);
      v227 = *(v0 + 1272);
      v228 = *(v0 + 1232);
      if (v226)
      {
        *(v0 + 792) = v226;
        v229 = v227;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
        swift_dynamicCast();
        v230 = v228;
        v231 = 0;
        v227 = v229;
      }

      else
      {
        v230 = *(v0 + 1232);
        v231 = 1;
      }

      v464(v230, v231, 1, v227);
      v57 = sub_1BD1CBBEC(*(v0 + 1232), *(v0 + 1240));
      v469 = v219;
    }

LABEL_104:
    v218 = sub_1BE053744();
    if (v218)
    {
      *(v0 + 808) = v218;
      swift_dynamicCast();
      v219 = *(v0 + 800);
      v210 = v216;
      v211 = v217;
      if (v219)
      {
        goto LABEL_112;
      }
    }

LABEL_120:
    sub_1BD0D45FC(i, v208, v461, v216, v217, v205, v206, v207);

    v56 = &selRef_metricsForTextStyle_;
LABEL_121:
    v232 = sub_1BE052404();
    v233 = [v492 v56[221]];

    if (v233)
    {
      *(v0 + 920) = v233;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v234 = *(v0 + 584);
      v235 = *(v0 + 592);
    }

    else
    {
      v234 = 0;
      v235 = 0;
    }

    v236 = sub_1BE052404();
    v237 = [v492 v56[221]];

    if (v237)
    {
      *(v0 + 776) = v237;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v478 = *(v0 + 608);
      v483 = *(v0 + 600);
    }

    else
    {
      v478 = 0;
      v483 = 0;
    }

    v238 = sub_1BE052404();
    v239 = [v492 v56[221]];

    if (v239)
    {
      *(v0 + 952) = v239;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v462 = *(v0 + 768);
      v465 = *(v0 + 760);
    }

    else
    {
      v462 = 0;
      v465 = 0;
    }

    v240 = sub_1BE052404();
    v241 = [v492 v56[221]];

    if (v241)
    {
      *(v0 + 944) = v241;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v455 = *(v0 + 752);
      v458 = *(v0 + 744);
    }

    else
    {
      v455 = 0;
      v458 = 0;
    }

    v242 = sub_1BE052404();
    v243 = [v492 v56[221]];

    if (v243)
    {
      *(v0 + 936) = v243;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v450 = *(v0 + 736);
      v452 = *(v0 + 728);
    }

    else
    {
      v450 = 0;
      v452 = 0;
    }

    v244 = sub_1BE052404();
    v245 = [v492 v56[221]];

    if (v245)
    {
      *(v0 + 928) = v245;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670, &qword_1BE0F5B20);
      swift_dynamicCast();
      v435 = *(v0 + 720);
      v438 = *(v0 + 712);
    }

    else
    {
      v435 = 0;
      v438 = 0;
    }

    v246 = *(v0 + 1280);
    v247 = *(v0 + 1272);
    v248 = *(v0 + 1224);
    sub_1BD15D62C(*(v0 + 1240), v248);
    v249 = *(v246 + 48);
    if (v235)
    {
      v250 = v234;
    }

    else
    {
      v250 = 0;
    }

    v251 = 0xE000000000000000;
    if (v235)
    {
      v251 = v235;
    }

    v425 = v251;
    v427 = v250;
    if (v249(v248, 1, v247) == 1)
    {
      v252 = *(v0 + 1272);
      v253 = *(v0 + 1224);
      sub_1BE04AEF4();
      if (v249(v253, 1, v252) != 1)
      {
        sub_1BD0DE53C(*(v0 + 1224), &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }

    else
    {
      (*(v0 + 1376))(*(v0 + 1296), *(v0 + 1224), *(v0 + 1272));
    }

    v448 = *(v0 + 1552);
    v446 = *(v0 + 1536);
    v254 = *(v0 + 1376);
    v255 = *(v0 + 1296);
    v256 = *(v0 + 1272);
    v447 = *(v0 + 1240);
    v429 = *(v0 + 1104);
    v444 = *(v0 + 1088);
    v257 = *(v0 + 1080);
    v432 = *(v0 + 1064);
    v258 = *(v0 + 1016);
    v259 = *(v0 + 1008);
    v260 = *(v0 + 992);
    v261 = *(v0 + 984);
    v262 = *(v0 + 976);
    *v258 = v427;
    *(v258 + 1) = v425;
    *(v258 + 2) = v483;
    *(v258 + 3) = v478;
    v254(&v258[v261[6]], v255, v256);
    v263 = &v258[v261[7]];
    *v263 = v438;
    *(v263 + 1) = v435;
    v264 = &v258[v261[8]];
    *v264 = v465;
    *(v264 + 1) = v462;
    v265 = &v258[v261[9]];
    *v265 = v452;
    *(v265 + 1) = v450;
    v266 = &v258[v261[10]];
    *v266 = v458;
    *(v266 + 1) = v455;
    *&v258[v261[11]] = v487;
    *&v258[v261[12]] = v469;
    v267 = sub_1BE052D54();
    sub_1BD77BFE0(v258, v259, type metadata accessor for AccountDebugCKReward);
    v268 = (*(v260 + 80) + 24) & ~*(v260 + 80);
    v269 = swift_allocObject();
    *(v269 + 16) = v262;
    sub_1BD77C264(v259, v269 + v268, type metadata accessor for AccountDebugCKReward);
    *(v0 + 304) = sub_1BD77C544;
    *(v0 + 312) = v269;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD126964;
    *(v0 + 296) = &block_descriptor_206;
    v270 = _Block_copy((v0 + 272));
    v271 = v262;
    sub_1BE051F74();
    *(v0 + 896) = MEMORY[0x1E69E7CC0];
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v429, v257, v270);
    _Block_release(v270);

    swift_unknownObjectRelease();
    v446(v257, v432);
    v448(v429, v444);
    sub_1BD77C048(v258, type metadata accessor for AccountDebugCKReward);
    sub_1BD0DE53C(v447, &unk_1EBD39970, &unk_1BE0B9F80);
    *(v0 + 312), v272, v273, v274, v275, v276, v277, v278;
    v151 = v159;
    v152 = v472;
    v56 = &selRef_metricsForTextStyle_;
    v149 = v420;
    v145 = v421;
    v156 = v423;
    if ((v421 & 0x8000000000000000) == 0)
    {
      continue;
    }

    break;
  }

LABEL_75:
  v157 = sub_1BE053744();
  if (v157)
  {
    *(v0 + 824) = v157;
    swift_dynamicCast();
    v158 = *(v0 + 816);
    v159 = v151;
    v160 = v152;
    if (v158)
    {
      goto LABEL_83;
    }
  }

LABEL_151:
  v279 = *(v0 + 1600);
  sub_1BD0D45FC(v145, v149, v419, v151, v152, v146, v147, v148);

  v280 = *(v0 + 1488);
  v473 = *(v0 + 1600);
  v281 = *(v0 + 1376);
  v488 = *(v0 + 1360);
  v282 = *(v0 + 1336);
  v283 = *(v0 + 1328);
  v284 = *(v0 + 1272);
  v285 = *(v0 + 1216);
  v484 = *(v0 + 1200);
  sub_1BE04ADD4();
  v280(v283, v284);
  v281(v283, v282, v284);
  v286 = sub_1BE04AE64();
  sub_1BD765BC8(v285);
  v287 = sub_1BE04B374();
  v488(v285, v484);
  v288 = PKEndOfMonthWithTimeZone();

  if (!v288)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v296 = *(v0 + 1488);
  v297 = *(v0 + 1376);
  v298 = *(v0 + 1336);
  v299 = *(v0 + 1320);
  v300 = *(v0 + 1288);
  v301 = *(v0 + 1280);
  v302 = *(v0 + 1272);
  *(v0 + 1496), v289, v290, v291, v292, v293, v294, v295;
  sub_1BE04AEE4();

  v296(v299, v302);
  v297(v299, v300, v302);
  sub_1BE04AEF4();
  v303 = sub_1BE04AE84();
  v304 = *(v301 + 8);
  v305 = v304(v298, v302);
  if ((v303 & 1) == 0)
  {
    v439 = *(v0 + 1344);
    v433 = *(v0 + 1320);
    v436 = *(v0 + 1328);
    v428 = *(v0 + 1432);
    v430 = *(v0 + 1272);
    v342 = *(v0 + 1104);
    v424 = *(v0 + 1096);
    v426 = *(v0 + 1088);
    aBlock = *(v0 + 1080);
    v343 = *(v0 + 1072);
    v344 = *(v0 + 1064);
    v345 = *(v0 + 976);
    *(v0 + 1416), v306, v307, v308, v309, v310, v311, v312;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v346 = sub_1BE052D54();
    v347 = swift_allocObject();
    *(v347 + 16) = v345;
    *(v0 + 352) = sub_1BD77C4C8;
    *(v0 + 360) = v347;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1BD126964;
    *(v0 + 344) = &block_descriptor_190_1;
    v348 = _Block_copy((v0 + 320));
    v349 = v345;
    sub_1BE051F74();
    *(v0 + 904) = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v342, aBlock, v348);
    _Block_release(v348);

    (*(v343 + 8))(aBlock, v344);
    (*(v424 + 8))(v342, v426);
    v304(v433, v430);
    v304(v436, v430);
    v304(v439, v430);
    *(v0 + 360), v350, v351, v352, v353, v354, v355, v356;

    v357 = *(v0 + 8);

    return v357();
  }

  *(v0 + 1488) = v304;
  *(v0 + 1480) = (v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v459 = *(v0 + 1192);
  v313 = *(v0 + 1184);
  v314 = *(v0 + 1176);
  v315 = *(v0 + 1168);
  v316 = *(v0 + 1160);
  v317 = *(v0 + 1152);
  v318 = *(v0 + 1144);
  v319 = *(v0 + 1136);
  v320 = *(v0 + 1128);
  v321 = *(v0 + 1120);
  v456 = *(v0 + 1112);
  v489 = *(v0 + 1096);
  v493 = *(v0 + 1088);
  v470 = *(v0 + 1104);
  v474 = *(v0 + 1080);
  v479 = *(v0 + 1064);
  v485 = *(v0 + 1072);
  v466 = *(v0 + 976);
  MEMORY[0x1BFB371E0](v305);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v318 + 8))(v317, v319);
  v322 = *(v315 + 8);
  v322(v314, v316);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v321 + 8))(v320, v456);
  v322(v313, v316);
  sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1BE04AF44();
  v322(v459, v316);
  v323 = *(v0 + 696);
  v324 = *(v0 + 704);
  *(v0 + 1496) = v324;
  *(v0 + 1504) = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v325 = sub_1BE052D54();
  v326 = swift_allocObject();
  v326[2] = v466;
  v326[3] = v323;
  v326[4] = v324;
  *(v0 + 448) = sub_1BD77C4D0;
  *(v0 + 456) = v326;
  *(v0 + 416) = MEMORY[0x1E69E9820];
  *(v0 + 424) = 1107296256;
  *(v0 + 432) = sub_1BD126964;
  *(v0 + 440) = &block_descriptor_197;
  v327 = _Block_copy((v0 + 416));
  v328 = v466;
  sub_1BE048C84();
  sub_1BE051F74();
  *(v0 + 888) = MEMORY[0x1E69E7CC0];
  *(v0 + 1512) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  *(v0 + 1520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  *(v0 + 1528) = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v470, v474, v327);
  _Block_release(v327);

  v329 = v485[1];
  *(v0 + 1536) = v329;
  *(v0 + 1544) = (v485 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v329(v474, v479);
  v330 = *(v489 + 8);
  *(v0 + 1552) = v330;
  *(v0 + 1560) = (v489 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v330(v470, v493);
  *(v0 + 456), v331, v332, v333, v334, v335, v336, v337;
  v57 = [objc_opt_self() sharedInstance];
  *(v0 + 1568) = v57;
  if (!v57)
  {
LABEL_197:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v57);
  }

  v338 = v57;
  v339 = sub_1BE04AE64();
  *(v0 + 1576) = v339;
  v340 = sub_1BE04AE64();
  *(v0 + 1584) = v340;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 968;
  *(v0 + 88) = sub_1BD771A04;
  v341 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600, &unk_1BE0F5B10);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1BD16E918;
  *(v0 + 232) = &block_descriptor_200_0;
  *(v0 + 240) = v341;
  [v338 applePayContainerItemsFromDate:v339 toDate:v340 completion:v0 + 208];
  v57 = v0 + 80;
LABEL_188:

  return MEMORY[0x1EEE6DEC8](v57);
}

uint64_t sub_1BD776144(uint64_t a1)
{
  v2 = *(v1 + 1592);
  v3 = *(v1 + 1584);
  v4 = *(v1 + 1576);
  v5 = *(v1 + 1568);
  swift_willThrow();

  v6 = *(v1 + 1488);
  v7 = *(v1 + 1376);
  v102 = *(v1 + 1360);
  v8 = *(v1 + 1336);
  v9 = *(v1 + 1328);
  v10 = *(v1 + 1272);
  v11 = *(v1 + 1216);
  v100 = *(v1 + 1200);
  sub_1BE04ADD4();
  v6(v9, v10);
  v7(v9, v8, v10);
  v12 = sub_1BE04AE64();
  sub_1BD765BC8(v11);
  v13 = sub_1BE04B374();
  v102(v11, v100);
  v14 = PKEndOfMonthWithTimeZone();

  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = *(v1 + 1488);
  v24 = *(v1 + 1376);
  v25 = *(v1 + 1336);
  v26 = *(v1 + 1320);
  v27 = *(v1 + 1288);
  v28 = *(v1 + 1280);
  v29 = *(v1 + 1272);
  *(v1 + 1496), v16, v17, v18, v19, v20, v21, v22;
  sub_1BE04AEE4();

  v23(v26, v29);
  v24(v26, v27, v29);
  sub_1BE04AEF4();
  v30 = sub_1BE04AE84();
  v31 = *(v28 + 8);
  v32 = v31(v25, v29);
  if (v30)
  {
    *(v1 + 1488) = v31;
    *(v1 + 1480) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v95 = *(v1 + 1192);
    v40 = *(v1 + 1184);
    v41 = *(v1 + 1176);
    v42 = *(v1 + 1168);
    v43 = *(v1 + 1160);
    v44 = *(v1 + 1152);
    v45 = *(v1 + 1144);
    v46 = *(v1 + 1136);
    v47 = *(v1 + 1128);
    v48 = *(v1 + 1120);
    v94 = *(v1 + 1112);
    v103 = *(v1 + 1096);
    v104 = *(v1 + 1088);
    v97 = *(v1 + 1104);
    v98 = *(v1 + 1080);
    v99 = *(v1 + 1064);
    v101 = *(v1 + 1072);
    v96 = *(v1 + 976);
    MEMORY[0x1BFB371E0](v32);
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v45 + 8))(v44, v46);
    v49 = *(v42 + 8);
    v49(v41, v43);
    sub_1BE04AC44();
    sub_1BE04ABA4();
    (*(v48 + 8))(v47, v94);
    v49(v40, v43);
    sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1BE04AF44();
    v49(v95, v43);
    v50 = *(v1 + 696);
    v51 = *(v1 + 704);
    *(v1 + 1496) = v51;
    *(v1 + 1504) = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v52 = sub_1BE052D54();
    v53 = swift_allocObject();
    v53[2] = v96;
    v53[3] = v50;
    v53[4] = v51;
    *(v1 + 448) = sub_1BD77C4D0;
    *(v1 + 456) = v53;
    *(v1 + 416) = MEMORY[0x1E69E9820];
    *(v1 + 424) = 1107296256;
    *(v1 + 432) = sub_1BD126964;
    *(v1 + 440) = &block_descriptor_197;
    v54 = _Block_copy((v1 + 416));
    v55 = v96;
    sub_1BE048C84();
    sub_1BE051F74();
    *(v1 + 888) = MEMORY[0x1E69E7CC0];
    *(v1 + 1512) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    *(v1 + 1520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    *(v1 + 1528) = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v97, v98, v54);
    _Block_release(v54);

    v56 = *(v101 + 8);
    *(v1 + 1536) = v56;
    *(v1 + 1544) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v98, v99);
    v57 = *(v103 + 8);
    *(v1 + 1552) = v57;
    *(v1 + 1560) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v97, v104);
    *(v1 + 456), v58, v59, v60, v61, v62, v63, v64;
    v15 = [objc_opt_self() sharedInstance];
    *(v1 + 1568) = v15;
    if (v15)
    {
      v65 = v15;
      v66 = sub_1BE04AE64();
      *(v1 + 1576) = v66;
      v67 = sub_1BE04AE64();
      *(v1 + 1584) = v67;
      *(v1 + 80) = v1;
      *(v1 + 120) = v1 + 968;
      *(v1 + 88) = sub_1BD771A04;
      v68 = swift_continuation_init();
      *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600, &unk_1BE0F5B10);
      *(v1 + 208) = MEMORY[0x1E69E9820];
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_1BD16E918;
      *(v1 + 232) = &block_descriptor_200_0;
      *(v1 + 240) = v68;
      [v65 applePayContainerItemsFromDate:v66 toDate:v67 completion:v1 + 208];
      v15 = (v1 + 80);

      return MEMORY[0x1EEE6DEC8](v15);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v15);
  }

  v93 = *(v1 + 1344);
  v91 = *(v1 + 1320);
  v92 = *(v1 + 1328);
  v89 = *(v1 + 1432);
  v90 = *(v1 + 1272);
  v69 = *(v1 + 1104);
  v87 = *(v1 + 1096);
  v88 = *(v1 + 1088);
  v86 = *(v1 + 1080);
  v70 = *(v1 + 1072);
  v71 = *(v1 + 1064);
  v72 = *(v1 + 976);
  *(v1 + 1416), v33, v34, v35, v36, v37, v38, v39;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v73 = sub_1BE052D54();
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v1 + 352) = sub_1BD77C4C8;
  *(v1 + 360) = v74;
  *(v1 + 320) = MEMORY[0x1E69E9820];
  *(v1 + 328) = 1107296256;
  *(v1 + 336) = sub_1BD126964;
  *(v1 + 344) = &block_descriptor_190_1;
  v75 = _Block_copy((v1 + 320));
  v76 = v72;
  sub_1BE051F74();
  *(v1 + 904) = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v69, v86, v75);
  _Block_release(v75);

  (*(v70 + 8))(v86, v71);
  (*(v87 + 8))(v69, v88);
  v31(v91, v90);
  v31(v92, v90);
  v31(v93, v90);
  *(v1 + 360), v77, v78, v79, v80, v81, v82, v83;

  v84 = *(v1 + 8);

  return v84();
}

uint64_t sub_1BD776B74(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD776BE0()
{
  v1[27] = v0;
  v2 = sub_1BE051F54();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD776CFC, 0, 0);
}

uint64_t sub_1BD776CFC()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4((v0 + 192));
  v2, v3, v4, v5, v6, v7, v8, v9;
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v0 + 192);
  if (v17)
  {
LABEL_2:

    v18 = *(v0 + 8);

    return v18(v17);
  }

  v20 = *(v0 + 216);
  v21 = *&v20[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService];
  *(v0 + 272) = v21;
  if (!v21)
  {
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 240);
    v39 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v38 = sub_1BE052D54();
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    *(v28 + 24) = 0;
    *(v0 + 176) = sub_1BD77C4C0;
    *(v0 + 184) = v28;
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1BD126964;
    *(v0 + 168) = &block_descriptor_182_0;
    v29 = _Block_copy((v0 + 144));
    v30 = v20;
    sub_1BE051F74();
    *(v0 + 208) = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v23, v25, v29);
    _Block_release(v29);

    (*(v27 + 8))(v25, v26);
    (*(v24 + 8))(v23, v39);
    *(v0 + 184), v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_2;
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_1BD777088;
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308, &unk_1BE0F5B00);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD16E918;
  *(v0 + 104) = &block_descriptor_176;
  *(v0 + 112) = v22;
  [v21 defaultAccountForFeature:2 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD777088()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1BD7773DC;
  }

  else
  {
    v2 = sub_1BD777198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD777198()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v22 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v21 = sub_1BE052D54();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v0 + 176) = sub_1BD77C4C0;
  *(v0 + 184) = v8;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1BD126964;
  *(v0 + 168) = &block_descriptor_182_0;
  v9 = _Block_copy((v0 + 144));
  v10 = v1;
  v11 = v7;
  sub_1BE051F74();
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v3, v4, v9);
  _Block_release(v9);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v3, v22);
  *(v0 + 184), v12, v13, v14, v15, v16, v17, v18;

  v19 = *(v0 + 8);

  return v19(v1);
}