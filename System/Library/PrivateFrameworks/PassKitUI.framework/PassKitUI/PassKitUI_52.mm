void sub_1BD586620(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BE117CD0;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BD586664@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (!*result)
  {
    goto LABEL_36;
  }

  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = *(result + 24);
  v11 = *(result + 32);
  v12 = *(result + 40);
  v170[0] = v11;
  v13 = sub_1BD59B49C(v11);
  v14 = v13[2];
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (!v14)
  {

    v157[0] = v9;
    sub_1BD0DE53C(v157, &qword_1EBD4C870, &unk_1BE0E2B40);

    result = sub_1BD0DE53C(v170, &qword_1EBD39330, &qword_1BE0B8568);
    v5 = 0;
    v50 = 0;
    v9 = 0;
    v51 = 0;
    v11 = 0;
    v52 = 0;
    v24 = 0;
    goto LABEL_64;
  }

  v149 = a2;
  v150 = a3;
  v153 = v12;
  v156 = v8;
  v169 = v9;
  v14 = v5;
  sub_1BD0DE19C(&v169, v157, &qword_1EBD4C870, &unk_1BE0E2B40);
  v155 = v10;
  sub_1BD0DE19C(v170, v157, &qword_1EBD39330, &qword_1BE0B8568);
  v22 = sub_1BD59B49C(v11);
  v23 = sub_1BD6CF234();
  v24 = MEMORY[0x1E69E7CD0];
  v154 = v14;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v25 = sub_1BE053D64();
  v32 = -1 << *(v24 + 32);
  v33 = v25 & ~v32;
  if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157[0] = v24;
    sub_1BD2AA8D8(2, v33, isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49);
    v24 = v157[0];
    goto LABEL_15;
  }

  v34 = ~v32;
  while (1)
  {
    if (*(*(v24 + 48) + v33) <= 1u)
    {
      if (*(*(v24 + 48) + v33))
      {
        v35 = 0xE90000000000006CLL;
      }

      else
      {
        v35 = 0xE700000000000000;
      }

      goto LABEL_12;
    }

    if (*(*(v24 + 48) + v33) != 3)
    {
      break;
    }

    v35 = 0xE700000000000000;
LABEL_12:
    v36 = sub_1BE053B84();
    v35, v37, v38, v39, v40, v41, v42, v43;
    if (v36)
    {
      goto LABEL_15;
    }

    v33 = (v33 + 1) & v34;
    if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  0xEC00000073746E65, v26, 0x6D6C6C6174736E69, v27, v28, v29, v30, v31;
  v24 = MEMORY[0x1E69E7CD0];
LABEL_15:
  v14 = v154;
LABEL_17:
  v53 = sub_1BD6CF234();
  v22, v54, v55, v56, v57, v58, v59, v60;
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v68 = sub_1BE053D64();
  v69 = -1 << *(v24 + 32);
  v70 = v68 & ~v69;
  if (((*(v24 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
  {
LABEL_28:
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v157[0] = v24;
    sub_1BD2AA8D8(3, v70, v81, v82, v83, v84, v85, v86);
    v24 = v157[0];
    goto LABEL_29;
  }

  v71 = ~v69;
  while (2)
  {
    if (*(*(v24 + 48) + v70) <= 1u)
    {
      if (*(*(v24 + 48) + v70))
      {
        v72 = 0xE90000000000006CLL;
      }

      else
      {
        v72 = 0xE700000000000000;
      }

LABEL_26:
      v73 = sub_1BE053B84();
      v72, v74, v75, v76, v77, v78, v79, v80;
      if (v73)
      {
        goto LABEL_29;
      }

      v70 = (v70 + 1) & v71;
      if (((*(v24 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  if (*(*(v24 + 48) + v70) == 2)
  {
    v72 = 0xEC00000073746E65;
    goto LABEL_26;
  }

  0xE700000000000000, v61, v62, v63, v64, v65, v66, v67;
LABEL_29:
  v14 = v154;
LABEL_30:
  v51 = v155;
  v50 = v156;
  if (!*(v24 + 16))
  {

    sub_1BD0DE53C(&v169, &qword_1EBD4C870, &unk_1BE0E2B40);
    sub_1BD0DE53C(v170, &qword_1EBD39330, &qword_1BE0B8568);

    v24, v89, v90, v91, v92, v93, v94, v95;
    sub_1BD0DE53C(&v169, &qword_1EBD4C870, &unk_1BE0E2B40);

    result = sub_1BD0DE53C(v170, &qword_1EBD39330, &qword_1BE0B8568);
    v5 = 0;
LABEL_36:
    v50 = 0;
    v9 = 0;
    v51 = 0;
    v11 = 0;
    v52 = 0;
    v24 = 0;
    LOWORD(v14) = 0;
    goto LABEL_64;
  }

  if (!v169)
  {
    goto LABEL_37;
  }

  v87 = [v169 type];
  if (v87 == 1)
  {
    v151 = 2;
    v88 = 0xEC00000073746E65;
LABEL_39:
    v97 = sub_1BE053B84();
    v88, v98, v99, v100, v101, v102, v103, v104;
    v96 = v151;
    if (v97)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v87 == 2)
    {
      v151 = 3;
      v88 = 0xE700000000000000;
      goto LABEL_39;
    }

LABEL_37:
    0xE90000000000006CLL, v61, v62, v63, v64, v65, v66, v67;
    v96 = 1;
LABEL_40:
    if (v153)
    {
      v96 = 2;
    }
  }

  v152 = v96;
  if ((v149 & 1) == 0)
  {

    sub_1BD0DE53C(&v169, &qword_1EBD4C870, &unk_1BE0E2B40);
    sub_1BD0DE53C(v170, &qword_1EBD39330, &qword_1BE0B8568);
    goto LABEL_63;
  }

  v105 = sub_1BD59B5AC(v11);

  sub_1BD0DE53C(&v169, &qword_1EBD4C870, &unk_1BE0E2B40);
  sub_1BD0DE53C(v170, &qword_1EBD39330, &qword_1BE0B8568);
  if (v105)
  {
    v113 = 0xEC00000073746E65;
    if (v152 == 1)
    {
      0xE90000000000006CLL, v106, v107, v108, v109, v110, v111, v112;
    }

    else
    {
      if (v152 != 2)
      {
        v113 = 0xE700000000000000;
      }

      v114 = sub_1BE053B84();
      v113, v115, v116, v117, v118, v119, v120, v121;
      if ((v114 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  sub_1BE053D04();
  sub_1BE052524();
  v122 = sub_1BE053D64();
  v130 = -1 << *(v24 + 32);
  v131 = v122 & ~v130;
  if (((*(v24 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
  {
LABEL_61:
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v157[0] = v24;
    sub_1BD2AA8D8(1, v131, v142, v143, v144, v145, v146, v147);
    v24 = v157[0];
    goto LABEL_62;
  }

  v132 = ~v130;
  while (2)
  {
    if (*(*(v24 + 48) + v131) > 1u)
    {
      if (*(*(v24 + 48) + v131) == 2)
      {
        v133 = 0xEC00000073746E65;
      }

      else
      {
        v133 = 0xE700000000000000;
      }

LABEL_59:
      v134 = sub_1BE053B84();
      v133, v135, v136, v137, v138, v139, v140, v141;
      if (v134)
      {
        goto LABEL_62;
      }

      v131 = (v131 + 1) & v132;
      if (((*(v24 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  if (!*(*(v24 + 48) + v131))
  {
    v133 = 0xE700000000000000;
    goto LABEL_59;
  }

  0xE90000000000006CLL, v123, v124, v125, v126, v127, v128, v129;
LABEL_62:
  v51 = v155;
  v50 = v156;
  v14 = v154;
LABEL_63:
  v164[0] = v14;
  v164[1] = v50;
  v164[2] = v9;
  v164[3] = v51;
  v164[4] = v11;
  LOBYTE(v165) = v153;
  *(&v165 + 1) = *v168;
  HIDWORD(v165) = *&v168[3];
  v166 = v24;
  LOBYTE(v167) = v152;
  HIBYTE(v167) = v150 & 1;
  v52 = v165;
  v148 = v14;
  LOWORD(v14) = v167;
  v157[0] = v148;
  v157[1] = v50;
  v157[2] = v9;
  v157[3] = v51;
  v157[4] = v11;
  v158 = v153;
  *&v159[3] = *&v168[3];
  *v159 = *v168;
  v160 = v24;
  v161 = v152;
  v162 = v150 & 1;
  sub_1BD586F14(v164, v163);
  result = sub_1BD586F4C(v157);
LABEL_64:
  *a4 = v5;
  *(a4 + 8) = v50;
  *(a4 + 16) = v9;
  *(a4 + 24) = v51;
  *(a4 + 32) = v11;
  *(a4 + 40) = v52;
  *(a4 + 48) = v24;
  *(a4 + 56) = v14;
  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD586FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1BD586FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD587070()
{
  result = qword_1EBD4B1F8;
  if (!qword_1EBD4B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B1F8);
  }

  return result;
}

unint64_t sub_1BD5870C4(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1BD587110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 != 1)
  {
    v7 = a6;
    sub_1BE048C84();

    sub_1BE048C84();
  }
}

void sub_1BD587160(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v10, v11, v12, v13, v14, v15, v16;
  }
}

unint64_t sub_1BD5871CC()
{
  result = qword_1EBD4B208;
  if (!qword_1EBD4B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B210, qword_1BE0E2CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B208);
  }

  return result;
}

unint64_t sub_1BD587234()
{
  result = qword_1EBD4B218;
  if (!qword_1EBD4B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B218);
  }

  return result;
}

void sub_1BD58737C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BBD4();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v4;
  v17[4] = sub_1BD587C00;
  v18 = v6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BD3CC8C0;
  v17[3] = &block_descriptor_128;
  v7 = _Block_copy(v17);
  v8 = v18;
  sub_1BE048964();
  v9 = v4;
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v9 preflightWithRequirements:13 completionRequirements:13 completion:v7];
  _Block_release(v7);
}

void sub_1BD5874B8(char a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ((a1 & 1) == 0 || a2)
    {
      sub_1BD58786C(a2, a4, a5);
      goto LABEL_13;
    }

    v45 = a5;
    v46 = sub_1BE04BC84();
    v17 = [a6 paymentSetupProductModel];
    v18 = v17;
    if (v17)
    {
      v19 = *&v16[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action];
      v20 = v17;
      v21 = [v19 productIdentifier];
      v22 = [v20 productForProductIdentifier_];

      v23 = v22;
      if (v22)
      {
LABEL_8:
        v30 = *&v16[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product];
        *&v16[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product] = v23;
        v31 = v22;
        v32 = v23;

        a4(1);
        v16 = v32;
LABEL_13:

        return;
      }

      v24 = v20;
      v43 = v24;
      v25 = v46;
      v26 = [v46 issuerAdministrativeAreaCode];
      v44 = v18;
      v27 = v26;
      v28 = [v25 issuerCountryCode];
      v29 = [v24 identityProductForState:v27 country:v28];

      v18 = v44;
      if (v29)
      {
        v23 = v29;
        goto LABEL_8;
      }
    }

    sub_1BE04D104();
    v33 = v16;
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v18;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = *&v33[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action];
      *(v37 + 4) = v39;
      *v38 = v39;
      v40 = v39;
      _os_log_impl(&dword_1BD026000, v34, v35, "Failed to find identity product for action %@", v37, 0xCu);
      sub_1BD1E236C(v38);
      MEMORY[0x1BFB45F20](v38, -1, -1);
      v41 = v37;
      v18 = v36;
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v16 = PKDisplayableErrorForCommonType();
    sub_1BD58786C(v16, a4, v45);

    goto LABEL_13;
  }
}

void sub_1BD58786C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  v6 = PKDisplayableErrorForCommonType();
  if (v6)
  {
    a1 = 0;
LABEL_4:
    v7 = a1;
    v8 = v6;
    v9 = sub_1BE04A844();

    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v24[4] = sub_1BD1B5F6C;
  v25 = v10;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BD126964;
  v24[3] = &block_descriptor_12_3;
  v11 = _Block_copy(v24);
  v12 = v25;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = PKAlertForDisplayableErrorWithCancelHandler(v9, 0, v11);
  _Block_release(v11);

  if (v20)
  {
    v21 = v3 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 24))(v20, ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1BD587A44(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_context);
  v5 = v3;
  sub_1BE048964();
  v6 = sub_1BE04BC84();
  type metadata accessor for PaymentSetupIdentityFlowSection();
  swift_allocObject();
  v7 = sub_1BD4B7FFC(v4, v3, v6, 0, 0, 0);
  v4, v8, v9, v10, v11, v12, v13, v14;

  type metadata accessor for UIFlowModifier();
  v15 = swift_allocObject();
  v16 = byte_1EBDAB281;
  *(v15 + 32) = byte_1EBDAB280;
  *(v15 + 33) = v16;
  *(v15 + 48) = 0;
  swift_unknownObjectWeakInit();

  result = v15;
  *(v15 + 16) = v7;
  *(v15 + 24) = &off_1F3B98C00;
  *(v15 + 33) = 1;
  return result;
}

uint64_t sub_1BD587B74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD587BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD587C5C(uint64_t a1)
{
  sub_1BD0F5C4C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD587D84(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1BD587D84(319, &qword_1EBD4B278, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD587D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD587E04@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  sub_1BD0DE19C(v1 + *(v10 + 44), v9, &qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04EB44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1BD58800C(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18, &qword_1BE0BD090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = v72 - v3;
  v4 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B280, &qword_1BE0E2E40);
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v8 = v72 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B288, &qword_1BE0E2E48);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v10 = v72 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B290, &qword_1BE0E2E50);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v83 = v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B298, &qword_1BE0E2E58);
  v13 = *(v12 - 8);
  v93 = v12;
  v94 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v86 = v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2A0, &qword_1BE0E2E60);
  v16 = *(v15 - 8);
  v95 = v15;
  v96 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v88 = v72 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2A8, &qword_1BE0E2E68);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v84 = v72 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2B0, &qword_1BE0E2E70);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = v72 - v19;
  v99 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2B8, &qword_1BE0E2E78);
  sub_1BD58D0C0();
  sub_1BE04D694();
  sub_1BD58D7F8(v1, v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v20 = *(v5 + 80);
  v21 = (v20 + 16) & ~v20;
  v80 = v6;
  v72[1] = v20;
  v22 = swift_allocObject();
  v73 = v21;
  v81 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD58EF0C(v81, v22 + v21, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE051CD4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2C8, &qword_1BE0E2E88);
  v24 = sub_1BD0DE4F4(&qword_1EBD4B2D0, &qword_1EBD4B280, &qword_1BE0E2E40, MEMORY[0x1E695B218]);
  v25 = sub_1BD58D1F4();
  v26 = v1;
  v27 = v85;
  sub_1BE0507C4();
  v22, v28, v29, v30, v31, v32, v33, v34;
  (*(v87 + 8))(v8, v27);
  v102 = v27;
  v103 = v23;
  v104 = v24;
  v105 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v83;
  v37 = v89;
  sub_1BE050744();
  (*(v90 + 8))(v10, v37);
  v98 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2F0, &qword_1BE0E2E98);
  v102 = v37;
  v103 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = MEMORY[0x1E695B2D0];
  v41 = sub_1BD0DE4F4(&qword_1EBD4B2F8, &qword_1EBD4B2F0, &qword_1BE0E2E98, MEMORY[0x1E695B2D0]);
  v42 = v86;
  v43 = v91;
  sub_1BE050734();
  (*(v92 + 8))(v36, v43);
  v102 = v43;
  v103 = v38;
  v104 = v39;
  v105 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v88;
  v46 = v84;
  v47 = v93;
  sub_1BE050764();
  v48 = v47;
  (*(v94 + 8))(v42, v47);
  v97 = v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B300, &unk_1BE0E2EA0);
  v102 = v48;
  v103 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v40;
  v52 = v95;
  v53 = sub_1BD0DE4F4(&qword_1EBD4B308, &qword_1EBD4B300, &unk_1BE0E2EA0, v51);
  sub_1BE050754();
  (*(v96 + 8))(v45, v52);
  sub_1BD58C008();
  if (v54 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v100 = 0;
    v101 = v54;
    v55 = sub_1BE04D794();
    v56 = v79;
    (*(*(v55 - 8) + 56))(v79, 1, 1, v55);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80, &qword_1BE0BD160);
    v102 = v52;
    v103 = v49;
    v104 = v50;
    v105 = v53;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_1BD19CE20();
    v59 = v76;
    v60 = v75;
    sub_1BE050794();
    sub_1BD0DE53C(v56, &qword_1EBD3BB18, &qword_1BE0BD090);
    (*(v74 + 8))(v46, v60);
    v61 = v81;
    sub_1BD58D7F8(v26, v81, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v62 = v73;
    v63 = swift_allocObject();
    sub_1BD58EF0C(v61, v63 + v62, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    sub_1BE051CD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B310, &qword_1BE0E2EB0);
    v102 = v60;
    v103 = v96;
    v104 = v57;
    v105 = v58;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4B318, &qword_1EBD4B310, &qword_1BE0E2EB0, MEMORY[0x1E697E378]);
    v64 = v78;
    sub_1BE0507A4();
    v63, v65, v66, v67, v68, v69, v70, v71;
    (*(v77 + 8))(v59, v64);
  }
}

uint64_t sub_1BD588BA4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v9[3] = *(a1 + *(v5 + 36));
  sub_1BD58D7F8(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD58EF0C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B348, &qword_1BE0E2EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B480, &qword_1BE0E2FF0);
  sub_1BD0DE4F4(&qword_1EBD4B340, &qword_1EBD4B348, &qword_1BE0E2EF0, MEMORY[0x1E69E6338]);
  v9[1] = sub_1BE04D6C4();
  v9[2] = MEMORY[0x1E695B228];
  swift_getOpaqueTypeConformance2();
  sub_1BD58F45C(&qword_1EBD4B488, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, &unk_1BE0BD398);
  return sub_1BE0519A4();
}

void sub_1BD588DDC(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B490, &qword_1BE0E2FF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v57 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v64);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B498, &qword_1BE113B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = v57 - v17;
  v18 = sub_1BE04D6C4();
  v62 = *(v18 - 8);
  v63 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE052404();
  v21 = PKLocalizedBankConnectString(v20);

  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = sub_1BE052434();
  v24 = v23;

  v67 = v22;
  v68 = v24;
  v60 = v24;
  v25 = *(v13 + 36);
  v26 = sub_1BE04AF64();
  v59 = sub_1BD58F45C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v57[1] = a2;
  v57[2] = v7;
  v57[3] = a3;
  v27 = *(v26 - 8);
  v28 = v27[2];
  v29 = v66;
  v28(v12, v66, v26);
  v58 = v13;
  v30 = v64;
  v28(&v12[*(v64 + 48)], v29 + v25, v26);
  sub_1BD0DE19C(v12, v9, &unk_1EBD38810, &unk_1BE0B6F60);
  v31 = *(v30 + 48);
  v32 = v27[4];
  v32(v15, v9, v26);
  v33 = v27[1];
  v33(&v9[v31], v26);
  sub_1BD0DE204(v12, v9, &unk_1EBD38810, &unk_1BE0B6F60);
  v32(&v15[*(v58 + 36)], &v9[*(v30 + 48)], v26);
  v33(v9, v26);
  sub_1BD0DDEBC();
  sub_1BE04D5D4();
  sub_1BD0DE53C(v15, &qword_1EBD38DB8, &unk_1BE0BD340);
  v60, v34, v35, v36, v37, v38, v39, v40;
  v41 = sub_1BE052404();
  v42 = PKLocalizedBankConnectString(v41);

  if (v42)
  {
    v43 = sub_1BE052434();
    v45 = v44;

    v70 = v43;
    v71 = v45;
    type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
    v67 = sub_1BE0493C4();
    v68 = v46;
    v69 = v47;
    type metadata accessor for Decimal(0);
    sub_1BE04D5E4();
    v45, v48, v49, v50, v51, v52, v53, v54;
    type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    sub_1BE04E334();
    v55 = v61;
    sub_1BE04D6A4();
    v56 = v63;
    sub_1BE04D4E4();
    (*(v62 + 8))(v55, v56);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BD5893DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v16 = a1;
  v5 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v6 = v5 - 8;
  v17 = *(v5 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1BE04D474();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = 0;
  v13 = 0;
  if (*(a2 + *(v6 + 44)) == 1)
  {
    (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8, v11);
    sub_1BD58D7F8(a2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = (v10 + *(v17 + 80) + v14) & ~*(v17 + 80);
    v13 = swift_allocObject();
    (*(v9 + 32))(v13 + v14, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_1BD58EF0C(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v15, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v12 = sub_1BD58F6E0;
  }

  *a3 = v12;
  a3[1] = v13;
}

uint64_t sub_1BD5895FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a1;
  v40 = a3;
  v43 = a4;
  v5 = sub_1BE04D474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B438, &qword_1BE0E2F90);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - v11;
  v12 = sub_1BE04D464();
  if (v12)
  {
    v13 = v12;
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    v36 = v46;
    v37 = v45;
    v14 = *(v8 + 28);
    v15 = v40;
    *&v45 = *(v40 + v14);
    KeyPath = swift_getKeyPath();
    sub_1BD58D7F8(v15, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    (*(v6 + 16))(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
    v16 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v17 = (v9 + *(v6 + 80) + v16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    sub_1BD58EF0C(v10, v18 + v16, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    (*(v6 + 32))(v18 + v17, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v19 = (v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    v20 = v36;
    *v19 = v37;
    v19[1] = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1BD58F7F0;
    *(v21 + 24) = v18;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B328, &qword_1BE0E2EE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B440, &qword_1BE0E2F98);
    sub_1BD58D604();
    sub_1BD58F978(&qword_1EBD4B448, &qword_1EBD4B440, &qword_1BE0E2F98, sub_1BD58F9F4);
    v22 = v41;
    sub_1BE0519C4();
    v13, v23, v24, v25, v26, v27, v28, v29;
    v30 = v43;
    v31 = v42;
    (*(v44 + 32))(v43, v22, v42);
    return (*(v44 + 56))(v30, 0, 1, v31);
  }

  else
  {
    v33 = v43;
    v34 = *(v44 + 56);
    v35 = v42;

    return v34(v33, 1, 1, v35);
  }
}

uint64_t sub_1BD589A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>, CGFloat a8@<D2>, CGFloat a9@<D3>)
{
  v73 = a1;
  v16 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B478, &unk_1BE0E2FB0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B468, &qword_1BE0E2FA8);
  MEMORY[0x1EEE9AC00](v74);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B458, &qword_1BE0E2FA0);
  v77 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v71 - v27;
  *&v28 = COERCE_DOUBLE(sub_1BD58A038(a2));
  if (v30)
  {
    v31 = *(v77 + 56);

    return v31(a5, 1, 1, v24);
  }

  else
  {
    v71 = v29;
    v72 = *&v28;
    v33 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    if (a3[v33[9]])
    {
      v34 = 2.0;
    }

    else
    {
      v34 = 4.0;
    }

    v35 = *(v16 + 20);
    v36 = *MEMORY[0x1E697F468];
    v37 = sub_1BE04F684();
    (*(*(v37 - 8) + 104))(v18 + v35, v36, v37);
    *v18 = v34;
    v18[1] = v34;
    v38 = [objc_opt_self() quaternarySystemFillColor];
    v39 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    sub_1BD58EF0C(v18, v21, MEMORY[0x1E697EAF0]);
    v41 = &v21[*(v19 + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = *a3;
    sub_1BE04E334();
    v82.origin.x = a6;
    v82.origin.y = a7;
    v82.size.width = a8;
    v82.size.height = a9;
    CGRectGetHeight(v82);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    sub_1BD0DE204(v21, v23, &qword_1EBD4B478, &unk_1BE0E2FB0);
    v43 = &v23[*(v74 + 36)];
    v44 = v80;
    v45 = v78;
    *(v43 + 1) = v79;
    *(v43 + 2) = v44;
    *v43 = v45;
    if (a3[v33[10]])
    {
      v46 = a6;
      v47 = a9;
      v48 = *(*&a3[v33[7]] + 16);
      v49 = sub_1BE04E334();
      if (v49)
      {
        v50 = 12.0;
      }

      else
      {
        v50 = 6.0;
      }

      v51 = a8;
      if (v49)
      {
        v52 = 20.0;
      }

      else
      {
        v52 = 10.0;
      }

      v53 = sub_1BE04E334();
      v54 = sub_1BE04E334();
      v55 = 3.0;
      if (v53)
      {
        v55 = 6.0;
      }

      v56 = 5.0;
      if (v53)
      {
        v56 = 10.0;
      }

      v57 = 12.0;
      if ((v54 & 1) == 0)
      {
        v57 = 6.0;
      }

      v58 = 20.0;
      if ((v54 & 1) == 0)
      {
        v58 = 10.0;
      }

      if (v42 >= 2)
      {
        v59 = v50;
      }

      else
      {
        v59 = v52;
      }

      a8 = v51;
      v60 = v48;
      a9 = v47;
      a6 = v46;
      v61 = (v51 - v59 * v60) / (v60 + v60 + -2.0);
      v62 = v73;
      v63 = v61 * v62 + v61 * v62;
      if (v42 < 2)
      {
        v57 = v58;
        v55 = v56;
      }

      v64 = v57 * v62 + v63 + v55 + v46;
    }

    else
    {
      v64 = (v71 - v72) * 0.5 + v72;
    }

    v65 = v24;
    v83.origin.x = a6;
    v83.origin.y = a7;
    v83.size.width = a8;
    v83.size.height = a9;
    MidY = CGRectGetMidY(v83);
    v67 = v76;
    sub_1BD0DE204(v23, v76, &qword_1EBD4B468, &qword_1BE0E2FA8);
    v68 = (v67 + *(v65 + 36));
    *v68 = v64;
    v68[1] = MidY;
    v69 = v67;
    v70 = v75;
    sub_1BD0DE204(v69, v75, &qword_1EBD4B458, &qword_1BE0E2FA0);
    sub_1BD0DE204(v70, a5, &qword_1EBD4B458, &qword_1BE0E2FA0);
    return (*(v77 + 56))(a5, 0, 1, v65);
  }
}

uint64_t sub_1BD58A038(uint64_t a1)
{
  v1 = sub_1BE04EB44();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04ADD4();
  v12 = sub_1BE04D444();
  if (v13 & 1) != 0 || (v14 = *&v12, v15 = sub_1BE04D444(), (v16))
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  v21 = v15;
  v18 = *&v15;
  sub_1BD587E04(v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E697E7D8], v1);
  v19 = sub_1BE04EB34();
  v20 = *(v2 + 8);
  v20(v4, v1);
  v20(v7, v1);
  result = (*(v9 + 8))(v11, v8);
  if (v19)
  {
    if (v18 <= v14)
    {
      return v21;
    }

    __break(1u);
  }

  else if (v14 <= v18)
  {
    return *&v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD58A2F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v25[3] = a2;
  v3 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25[2] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25[1] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v25[0] = *(v7 - 8);
  v8 = *(v25[0] + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  v12 = sub_1BE04B2D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  v19 = sub_1BE04D594();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  (*(v13 + 104))(v15, **(&unk_1E80100E0 + *a1), v12, v20);
  (*(v13 + 32))(v18, v15, v12);
  v21 = sub_1BE04B2F4();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_1BE04D584();
  sub_1BD0DE53C(v11, &unk_1EBD4E840, &unk_1BE0C73F0);
  (*(v13 + 8))(v18, v12);
  sub_1BD58D7F8(a1, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v22 = (*(v25[0] + 80) + 16) & ~*(v25[0] + 80);
  v23 = swift_allocObject();
  sub_1BD58EF0C(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE04D564();
  sub_1BE04D5F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3E8, &qword_1BE0E2F60);
  sub_1BD58F244();
  return sub_1BE04D764();
}

id sub_1BD58A724@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v86 = a2;
  v78 = sub_1BE04ACA4();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for WeekdayRange(0);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B400, &qword_1BE0E2F68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v71 - v6;
  v7 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AD04();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BE04AD84();
  v14 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B408, &qword_1BE0E2F70);
  v84 = *(v19 - 8);
  v85 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B418, &qword_1BE0E2F78);
  v82 = *(v28 - 8);
  v83 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v71 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v71 - v36;
  if (!*a1)
  {
    MEMORY[0x1BFB371E0](v35);
    sub_1BE04ACB4();
    sub_1BE04AD64();
    (*(v72 + 8))(v13, v73);
    (*(v14 + 8))(v16, v81);
    sub_1BE04D664();
    sub_1BE04D644();
    sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1BE04D5A4();
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      v51 = sub_1BE050484();
      sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408, &qword_1BE0E2F70, MEMORY[0x1E695B160]);
      v52 = v85;
      sub_1BE04D704();
      v51, v53, v54, v55, v56, v57, v58, v59;
      (*(v84 + 8))(v27, v52);
      v60 = v79;
      (*(v82 + 32))(v79, v37, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B430, &qword_1BE0E2F88);
      swift_storeEnumTagMultiPayload();
      v50 = v60;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (*a1 == 1)
  {
    v38 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    sub_1BD0DE19C(&a1[*(v38 + 20)], v76, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BE04D664();
    sub_1BE04D644();
    sub_1BD58F45C(&qword_1EBD4B428, type metadata accessor for WeekdayRange, &unk_1BE0E30C8);
    sub_1BE04D5A4();
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      v40 = sub_1BE050484();
      sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408, &qword_1BE0E2F70, MEMORY[0x1E695B160]);
      v41 = v85;
      sub_1BE04D704();
      v40, v42, v43, v44, v45, v46, v47, v48;
      (*(v84 + 8))(v24, v41);
      v49 = v79;
      (*(v82 + 32))(v79, v33, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B430, &qword_1BE0E2F88);
      swift_storeEnumTagMultiPayload();
      v50 = v49;
LABEL_7:
      sub_1BD0DE204(v50, v86, &qword_1EBD4B400, &qword_1BE0E2F68);
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B420, &qword_1BE0E2F80);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  MEMORY[0x1BFB371E0](v35);
  v61 = v74;
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v75 + 8))(v61, v78);
  (*(v14 + 8))(v16, v81);
  sub_1BE04D664();
  sub_1BE04D644();
  sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1BE04D5A4();
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
  if (result)
  {
    v62 = sub_1BE050484();
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408, &qword_1BE0E2F70, MEMORY[0x1E695B160]);
    v63 = v85;
    sub_1BE04D704();
    v62, v64, v65, v66, v67, v68, v69, v70;
    (*(v84 + 8))(v21, v63);
    (*(v82 + 32))(v86, v30, v83);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1BD58B1C0(_BYTE *a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BD58C008();
  v8 = v7;
  v9 = 4.0;
  if (v8 > 50.0)
  {
    v9 = 6.0;
    if (!*a1)
    {
      v9 = 4.0;
    }
  }

  if (v8 / v9 == 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_1BD6CA2E0(0.0, v8, v8 / v9);
    v11 = v10;
    sub_1BD58D7F8(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    sub_1BD58EF0C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    sub_1BE048964();
    sub_1BE04D564();
    sub_1BE04D5F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B390, &qword_1BE0E2F18);
    sub_1BD58EFF8();
    sub_1BE04D774();
  }
}

uint64_t sub_1BD58B42C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C0, &unk_1BE0E2F30);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3A8, &unk_1BE0E2F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v64 - v6;
  v8 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3B8, &qword_1BE113AA0);
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v64 - v15;
  v16 = sub_1BE04D494();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C8, &qword_1BE113AB0);
  v20 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  if (sub_1BE04D784())
  {
    sub_1BE04E3F4();
    v83 = v80;
    v84 = v81;
    v85 = v82;
    sub_1BE04D484();
    v53 = [objc_opt_self() systemGray5Color];
    v54 = sub_1BE0511C4();
    v79 = v54;
    sub_1BE04D6F4();
    v54, v55, v56, v57, v58, v59, v60, v61;
    (*(v17 + 8))(v19, v16);
    (*(v20 + 32))(a3, v25, v76);
  }

  else
  {
    sub_1BE04E3F4();
    v83 = v80;
    v84 = v81;
    v85 = v82;
    sub_1BE04D484();
    v26 = [objc_opt_self() systemGray3Color];
    v27 = sub_1BE0511C4();
    v66 = v7;
    v67 = a3;
    v28 = v27;
    v79 = v27;
    v65 = v25;
    sub_1BE04D6F4();
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = (*(v17 + 8))(v19, v16);
    MEMORY[0x1EEE9AC00](v36);
    v37 = v68;
    sub_1BE04D664();
    v38 = v69;
    sub_1BE04D644();
    v63[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    v63[5] = sub_1BD2A275C();
    v63[3] = v63;
    v39 = v77;
    sub_1BE04D5B4(2, 0, 0, 1, 0, 0, 1, v37, 2, v38, 0, 1, 0, 1, sub_1BD58F1CC);
    v40 = *(v20 + 16);
    v41 = v22;
    v64 = v22;
    v42 = v20;
    v43 = v76;
    v40(v22, v25, v76);
    v44 = v72;
    v45 = v73;
    v46 = *(v72 + 16);
    v46(v78, v39, v73);
    v47 = v74;
    v40(v74, v41, v43);
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8, &qword_1BE113AA0, MEMORY[0x1E695B160]);
    v48 = v75;
    v49 = *(v75 + 48);
    v46(&v47[v49], v78, v45);
    v50 = v66;
    (*(v42 + 32))(v66, v47, v43);
    (*(v44 + 32))(v50 + *(v48 + 48), &v47[v49], v45);
    v51 = *(v44 + 8);
    v51(v77, v45);
    v52 = *(v42 + 8);
    v52(v65, v43);
    v51(v78, v45);
    v52(v64, v43);
    sub_1BD0DE204(v50, v67, &qword_1EBD4B3A8, &unk_1BE0E2F20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3D0, &unk_1BE0E2F40);
  return swift_storeEnumTagMultiPayload();
}

void sub_1BD58BBC4(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1BE04A934();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3D8, &unk_1BE0E2F50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  v16 = sub_1BE04D784();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 >= *(a1 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v81 = *(a1 + 8 * v16 + 32);
  type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  sub_1BE048C84();
  sub_1BE04B054();
  sub_1BD58F1D8();
  sub_1BE04A8B4();
  sub_1BE04A924();
  sub_1BE04A8C4();
  (*(v79 + 8))(v7, v80);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_1BD0DE4F4(&qword_1EBD4B3E0, &qword_1EBD4B3D8, &unk_1BE0E2F50, MEMORY[0x1E6968E68]);
  sub_1BE052214();
  v17(v15, v9);
  v81 = v83;
  v82 = v84;
  sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BE051494();
  v26 = sub_1BE050564();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v25, v27, v29, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v37, v38, v39, v40, v41);
  v24, v42, v43, v44, v45, v46, v47, v48;
  if (!PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v49 = sub_1BE050484();
  v50 = sub_1BE0505F4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v49, v51, v53, v55, v57, v58, v59, v60;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v61, v62, v63, v64, v65);
  v32, v66, v67, v68, v69, v70, v71, v72;
  v73 = sub_1BE050204();
  v74 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v73)
  {
    v74 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  LOBYTE(v83) = v54 & 1;
  LOBYTE(v81) = 0;
  *a3 = v50;
  *(a3 + 8) = v52;
  *(a3 + 16) = v54 & 1;
  *(a3 + 24) = v56;
  *(a3 + 32) = v74;
  *(a3 + 40) = v75;
  *(a3 + 48) = v76;
  *(a3 + 56) = v77;
  *(a3 + 64) = v78;
  *(a3 + 72) = 0;
}

void sub_1BD58C008()
{
  v36 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v1 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) + 28));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BD5321EC(0, v10, 0, v4, v5, v6, v7, v8);
    v11 = v37;
    v12 = v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v35 = *(v1 + 72);
    do
    {
      sub_1BD58D7F8(v12, v3, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      v13 = sub_1BE0493C4();
      v15 = v14;
      v17 = v16;
      sub_1BD58EEB0(v3);
      v37 = v11;
      v24 = v11[2];
      v23 = v11[3];
      if (v24 >= v23 >> 1)
      {
        sub_1BD5321EC((v23 > 1), v24 + 1, 1, v18, v19, v20, v21, v22);
        v11 = v37;
      }

      v11[2] = v24 + 1;
      v25 = v11 + 20 * v24;
      *(v25 + 4) = v13;
      *(v25 + 5) = v15;
      *(v25 + 12) = v17;
      v12 += v35;
      --v10;
    }

    while (v10);
  }

  sub_1BD5DD098(v11, &v38);
  v11, v26, v27, v28, v29, v30, v31, v32;
  if ((v39 & 1) == 0)
  {
    v33 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB403F0](v33))
    {
      v34 = sub_1BE053344();
      sub_1BE0529E4();
    }
  }
}

uint64_t sub_1BD58C238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  sub_1BD58D7F8(a2, v9, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  result = sub_1BD58EF0C(v9, v16 + v15, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  *a3 = sub_1BD58D4E4;
  a3[1] = v16;
  return result;
}

uint64_t sub_1BD58C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a1;
  v44 = a4;
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BE04D474();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B320, &qword_1BE0E2EB8);
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v38 - v14;
  v15 = sub_1BE04D464();
  if (v15)
  {
    v16 = v15;
    type metadata accessor for CGRect(0);
    v40 = v16;
    sub_1BE04E6B4();
    v38 = v48;
    v39 = v47;
    *&v47 = *(a3 + *(v6 + 28));
    KeyPath = swift_getKeyPath();
    (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    sub_1BD58D7F8(a3, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v42 + 80) + v18 + 32) & ~*(v42 + 80);
    v20 = swift_allocObject();
    (*(v9 + 32))(v20 + v17, v11, v8);
    v21 = (v20 + v18);
    v22 = v38;
    *v21 = v39;
    v21[1] = v22;
    sub_1BD58EF0C(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1BD58D4FC;
    *(v23 + 24) = v20;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B328, &qword_1BE0E2EE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B330, &qword_1BE0E2EE8);
    sub_1BD58D604();
    sub_1BD58F978(&qword_1EBD4B350, &qword_1EBD4B330, &qword_1BE0E2EE8, sub_1BD58D6B4);
    v24 = v43;
    sub_1BE0519C4();
    v40, v25, v26, v27, v28, v29, v30, v31;
    v32 = v45;
    v33 = v44;
    (*(v46 + 32))(v44, v24, v45);
    return (*(v46 + 56))(v33, 0, 1, v32);
  }

  else
  {
    v35 = v45;
    v36 = *(v46 + 56);
    v37 = v44;

    return v36(v37, 1, 1, v35);
  }
}

uint64_t sub_1BD58C89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v112 = a1;
  v119 = a4;
  v113 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v113);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B380, &qword_1BE0E2F08);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  v114 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B370, &qword_1BE0E2F00));
  MEMORY[0x1EEE9AC00](*&v114);
  v117 = &v109 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B360, &qword_1BE0E2EF8);
  v20 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v109 - v23;
  v24 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = 0;
  *&v27 = COERCE_DOUBLE(sub_1BE04D454());
  if (v28)
  {
    v127.origin.x = a5;
    v127.origin.y = a6;
    v127.size.width = a7;
    v127.size.height = a8;
    MinY = CGRectGetMinY(v127);
  }

  else
  {
    MinY = *&v27;
  }

  *&v124 = sub_1BE0493C4();
  *(&v124 + 1) = v30;
  LODWORD(v125) = v31;
  type metadata accessor for Decimal(0);
  *&v32 = COERCE_DOUBLE(sub_1BE04D454());
  if (v33)
  {
    v128.origin.x = a5;
    v128.origin.y = a6;
    v128.size.width = a7;
    v128.size.height = a8;
    MaxY = CGRectGetMaxY(v128);
  }

  else
  {
    MaxY = *&v32;
  }

  *&v35 = COERCE_DOUBLE(sub_1BD58A038(a2));
  if (v37)
  {
    v38 = 1;
    v39 = v119;
    v40 = v118;
  }

  else
  {
    v110 = v36;
    v111 = *&v35;
    v41 = MinY - MaxY;
    v129.origin.x = a5;
    v129.origin.y = a6;
    v129.size.width = a7;
    v129.size.height = a8;
    Height = CGRectGetHeight(v129);
    sub_1BD58D7F8(a2, v26, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    v43 = type metadata accessor for FinanceKitSegmentedBarConfiguration();
    v44 = objc_allocWithZone(v43);
    sub_1BE0493C4();
    v45 = sub_1BE053344();
    [v45 doubleValue];
    v47 = v46;

    *&v44[OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_totalAmount] = v47;
    sub_1BD5A2E3C(v26);
    *&v44[OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending] = v48;
    v120.receiver = v44;
    v120.super_class = v43;
    v49 = objc_msgSendSuper2(&v120, sel_init);
    sub_1BD58EEB0(v26);
    v50 = objc_allocWithZone(MEMORY[0x1E69DD1B8]);
    v51 = v49;
    v52 = [v50 init];
    v53 = PKBroadwayDisableDynamicCardBlur();
    PKSegmentedBarCreateBarImage(v51, v52, 1, v53 ^ 1, MinY - MaxY, Height);

    v54 = sub_1BE051544();
    v55 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    v56 = *(v113 + 20);
    v57 = *MEMORY[0x1E697F468];
    v58 = sub_1BE04F684();
    (*(*(v58 - 8) + 104))(&v15[v56], v57, v58);
    sub_1BE04FA24();
    *v15 = v59;
    *(v15 + 1) = v60;
    *(v15 + 2) = v61;
    *(v15 + 3) = v62;
    sub_1BE048964();
    sub_1BE04E2A4();
    sub_1BD58EF0C(v15, v18, MEMORY[0x1E697FF20]);
    v63 = &v18[*(v16 + 52)];
    v64 = v122;
    *v63 = v121;
    *(v63 + 1) = v64;
    *(v63 + 2) = v123;
    *&v18[*(v16 + 56)] = 256;
    v65 = *a3;
    sub_1BE04E334();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v66 = v117;
    sub_1BD0DE204(v18, v117, &qword_1EBD4B380, &qword_1BE0E2F08);
    v74 = (v66 + *(*&v114 + 36));
    v75 = v126;
    v76 = v124;
    v74[1] = v125;
    v74[2] = v75;
    *v74 = v76;
    if (a3[*(v55 + 40)] == 1)
    {
      v77 = *&a3[*(v55 + 28)];
      v114 = a5;
      v78 = *(v77 + 16);
      v79 = sub_1BE04E334();
      v80 = a7;
      if (v79)
      {
        v81 = 12.0;
      }

      else
      {
        v81 = 6.0;
      }

      v82 = MaxY;
      if (v79)
      {
        v83 = 20.0;
      }

      else
      {
        v83 = 10.0;
      }

      v84 = sub_1BE04E334();
      v85 = sub_1BE04E334();
      v54, v86, v87, v88, v89, v90, v91, v92;
      v93 = 3.0;
      if (v84)
      {
        v93 = 6.0;
      }

      v94 = 5.0;
      if (v84)
      {
        v94 = 10.0;
      }

      v95 = 12.0;
      if ((v85 & 1) == 0)
      {
        v95 = 6.0;
      }

      v96 = 20.0;
      if ((v85 & 1) == 0)
      {
        v96 = 10.0;
      }

      if (v65 >= 2)
      {
        v97 = v81;
      }

      else
      {
        v97 = v83;
      }

      MaxY = v82;
      v98 = (v80 - v97 * v78) / (v78 + v78 + -2.0) * v112;
      v99 = v98 + v98;
      if (v65 < 2)
      {
        v95 = v96;
        v93 = v94;
      }

      v100 = v95 * v112 + v99 + v93 + v114;
    }

    else
    {
      v101 = v110;
      v102 = v111;
      v54, v67, v68, v69, v70, v71, v72, v73;
      v100 = (v101 - v102) * 0.5 + v102;
    }

    v40 = v118;
    v103 = v116;
    sub_1BD0DE204(v66, v116, &qword_1EBD4B370, &qword_1BE0E2F00);
    v104 = (v103 + *(v40 + 36));
    *v104 = v100;
    v104[1] = MaxY + v41 * 0.5;
    v105 = v103;
    v106 = v115;
    sub_1BD0DE204(v105, v115, &qword_1EBD4B360, &qword_1BE0E2EF8);
    v107 = v106;
    v39 = v119;
    sub_1BD0DE204(v107, v119, &qword_1EBD4B360, &qword_1BE0E2EF8);
    v38 = 0;
  }

  return (*(v20 + 56))(v39, v38, 1, v40);
}

unint64_t sub_1BD58D0C0()
{
  result = qword_1EBD4B2C0;
  if (!qword_1EBD4B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2B8, &qword_1BE0E2E78);
    sub_1BE04D6C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B2C0);
  }

  return result;
}

void sub_1BD58D174(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD5893DC(a1, v6, a2);
}

unint64_t sub_1BD58D1F4()
{
  result = qword_1EBD4B2D8;
  if (!qword_1EBD4B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2C8, &qword_1BE0E2E88);
    sub_1BD0DE4F4(&qword_1EBD4B2E0, &qword_1EBD4B2E8, &qword_1BE0E2E90, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B2D8);
  }

  return result;
}

uint64_t objectdestroyTm_60()
{
  v1 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v2 = (v1 - 8);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = v3 + *(v1 + 20);
  v5 = sub_1BE04AF64();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v6(v4 + *(v7 + 36), v5);
  *(v3 + v2[8] + 8), v8, v9, v10, v11, v12, v13, v14;
  *(v3 + v2[9]), v15, v16, v17, v18, v19, v20, v21;
  v22 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_1BE04EB44();
    (*(*(v30 - 8) + 8))(v3 + v22, v30);
  }

  else
  {
    *(v3 + v22), v23, v24, v25, v26, v27, v28, v29;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD58D464@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD58C238(a1, v6, a2);
}

uint64_t sub_1BD58D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1BE04D474() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v10 = *(v3 + v8);
  v11 = *(v3 + v8 + 8);
  v12 = *(v3 + v8 + 16);
  v13 = *(v3 + v8 + 24);
  v14 = (v3 + ((v8 + *(v9 + 80) + 32) & ~*(v9 + 80)));

  return sub_1BD58C89C(a1, a2, v14, a3, v10, v11, v12, v13);
}

unint64_t sub_1BD58D604()
{
  result = qword_1EBD4B338;
  if (!qword_1EBD4B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B328, &qword_1BE0E2EE0);
    sub_1BD0DE4F4(&qword_1EBD4B340, &qword_1EBD4B348, &qword_1BE0E2EF0, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B338);
  }

  return result;
}

unint64_t sub_1BD58D6B4()
{
  result = qword_1EBD4B358;
  if (!qword_1EBD4B358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B360, &qword_1BE0E2EF8);
    sub_1BD58D740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B358);
  }

  return result;
}

unint64_t sub_1BD58D740()
{
  result = qword_1EBD4B368;
  if (!qword_1EBD4B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B370, &qword_1BE0E2F00);
    sub_1BD0DE4F4(&qword_1EBD4B378, &qword_1EBD4B380, &qword_1BE0E2F08, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B368);
  }

  return result;
}

uint64_t sub_1BD58D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58D860(char *a1)
{
  v3 = sub_1BE04AC34();
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04AD84();
  v110 = *(v5 - 8);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v89 - v8;
  v9 = sub_1BE04B3B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E930, &qword_1BE0E3120);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4D0, &qword_1BE0EC1C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v89 - v16;
  v100 = sub_1BE04AE04();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v89 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v89 - v24;
  v120 = sub_1BE04B2D4();
  v25 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE04B2F4();
  v118 = *(v28 - 8);
  v119 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v121 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D8, &qword_1BE0C7D60);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v89 - v31;
  v33 = sub_1BE04A2B4();
  v122 = *(v33 - 8);
  v123 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v117 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE04AF64();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v104 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v116 = &v89 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v103 = &v89 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v115 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v89 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v89 - v48;
  v90 = v23;
  v112 = v1;
  sub_1BE04ADD4();
  v125 = sub_1BD58F45C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v50 = sub_1BE0522F4();
  v51 = v36;
  v52 = *(v36 + 16);
  v113 = a1;
  v114 = v52;
  v124 = v49;
  if (v50)
  {
    v53 = v46;
    v54 = v49;
  }

  else
  {
    v53 = v46;
    v54 = a1;
  }

  v52(v53, v54, v35);
  v55 = v46;
  v56 = v121;
  sub_1BE04B2A4();
  v57 = v120;
  (*(v25 + 104))(v27, *MEMORY[0x1E6969A20], v120);
  sub_1BE04B124();
  (*(v25 + 8))(v27, v57);
  (*(v118 + 8))(v56, v119);
  v59 = v122;
  v58 = v123;
  if ((*(v122 + 48))(v32, 1, v123) == 1)
  {
    v60 = sub_1BD0DE53C(v32, &qword_1EBD402D8, &qword_1BE0C7D60);
    v61 = v105;
    MEMORY[0x1BFB371E0](v60);
    v62 = v106;
    sub_1BE04AC24();
    v63 = v107;
    sub_1BE04AB94();
    (*(v108 + 8))(v62, v109);
    v64 = v111;
    v65 = *(v110 + 8);
    v65(v61, v111);
    sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1BE04AF44();
    v65(v63, v64);
    v66 = *(v51 + 8);
    v66(v55, v35);
    v66(v124, v35);
    return v126;
  }

  v120 = v46;
  (*(v59 + 32))(v117, v32, v58);
  v67 = v103;
  sub_1BE04A294();
  v68 = v112;
  if (sub_1BE052304())
  {
    (*(v36 + 8))(v67, v35);
    v69 = v115;
    v114(v115, v68, v35);
  }

  else
  {
    v69 = v115;
    (*(v36 + 32))(v115, v67, v35);
  }

  v70 = v104;
  sub_1BE04A284();
  v71 = v124;
  v72 = sub_1BE0522F4();
  v73 = v116;
  if (v72)
  {
    (*(v36 + 8))(v70, v35);
    v114(v73, v71, v35);
  }

  else
  {
    (*(v36 + 32))(v116, v70, v35);
  }

  result = sub_1BE052314();
  if (result)
  {
    v75 = v91;
    v76 = v114;
    v114(v91, v69, v35);
    v77 = v93;
    v76(v75 + *(v93 + 48), v73, v35);
    v78 = v92;
    sub_1BD0DE19C(v75, v92, &unk_1EBD38810, &unk_1BE0B6F60);
    v79 = *(v77 + 48);
    v80 = *(v36 + 32);
    v81 = v94;
    v80(v94, v78, v35);
    v82 = *(v36 + 8);
    v82(v78 + v79, v35);
    sub_1BD0DE204(v75, v78, &unk_1EBD38810, &unk_1BE0B6F60);
    v80((v81 + *(v90 + 36)), v78 + *(v77 + 48), v35);
    v82(v78, v35);
    v83 = sub_1BE04AB54();
    (*(*(v83 - 8) + 56))(v96, 1, 1, v83);
    v84 = sub_1BE04AB24();
    (*(*(v84 - 8) + 56))(v98, 1, 1, v84);
    sub_1BE04B054();
    sub_1BE04B1E4();
    sub_1BE04B384();
    v85 = v95;
    sub_1BE04ADF4();
    v86 = v97;
    sub_1BE04ADE4();
    v87 = *(v99 + 8);
    v88 = v100;
    v87(v85, v100);
    sub_1BD58F45C(&qword_1EBD4B4D8, MEMORY[0x1E69693B8], MEMORY[0x1E69693B0]);
    sub_1BE052B54();
    v87(v86, v88);
    sub_1BD0DE53C(v81, &qword_1EBD38DB8, &unk_1BE0BD340);
    v82(v116, v35);
    v82(v115, v35);
    (*(v122 + 8))(v117, v123);
    v82(v120, v35);
    v82(v124, v35);
    return v126;
  }

  __break(1u);
  return result;
}

void sub_1BD58E64C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4E0, &qword_1BE0E3128);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for WeekdayRange(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD58FE54();
  sub_1BE053D94();
  if (!v2)
  {
    v19 = v21;
    sub_1BD58FEA8(&qword_1EBD4B4F0, &qword_1EBD49AA0, MEMORY[0x1E6969558], MEMORY[0x1E69E66E0]);
    v20 = v23;
    sub_1BE053AA4();
    (*(v22 + 8))(v8, v6);
    sub_1BD0DE204(v20, v11, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD58EF0C(v11, v19, type metadata accessor for WeekdayRange);
  }

  __swift_destroy_boxed_opaque_existential_0(a1, v12, v13, v14, v15, v16, v17, v18);
}

void sub_1BD58E8F0(void *a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x576465706D616C63 && a2 == 0xED00006E69687469)
  {
    a2, 0xED00006E69687469, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1BE053B84();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1BD58E980(uint64_t a1)
{
  v2 = sub_1BD58FE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD58E9BC(uint64_t a1)
{
  v2 = sub_1BD58FE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD58E9F8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD58D860(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD58EA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4F8, &qword_1BE0E3130);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD58FE54();
  sub_1BE053DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BD58FEA8(&qword_1EBD4B500, &qword_1EBD49AA8, MEMORY[0x1E6969538], MEMORY[0x1E69E66B0]);
  sub_1BE053AF4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD58EBC8()
{
  sub_1BE053D04();
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD58EC88(uint64_t a1)
{
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  return sub_1BE052294();
}

uint64_t sub_1BD58ED30(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE052294();
  return sub_1BE053D64();
}

BOOL sub_1BD58EDEC(uint64_t a1, uint64_t a2)
{
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  result = 0;
  if (sub_1BE052334())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    if (sub_1BE052334())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1BD58EEB0(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD58EF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58EF74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD58B42C(v4, v5, a1);
}

unint64_t sub_1BD58EFF8()
{
  result = qword_1EBD4B398;
  if (!qword_1EBD4B398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B390, &qword_1BE0E2F18);
    sub_1BD58F0C8();
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B398);
  }

  return result;
}

unint64_t sub_1BD58F0C8()
{
  result = qword_1EBD4B3A0;
  if (!qword_1EBD4B3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B3A8, &unk_1BE0E2F20);
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8, &qword_1BE113AA0, MEMORY[0x1E695B160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3A0);
  }

  return result;
}

unint64_t sub_1BD58F1D8()
{
  result = qword_1EBD35F28;
  if (!qword_1EBD35F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F28);
  }

  return result;
}

unint64_t sub_1BD58F244()
{
  result = qword_1EBD4B3F0;
  if (!qword_1EBD4B3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B3E8, &qword_1BE0E2F60);
    sub_1BD58F348();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B408, &qword_1BE0E2F70);
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408, &qword_1BE0E2F70, MEMORY[0x1E695B160]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3F0);
  }

  return result;
}

unint64_t sub_1BD58F348()
{
  result = qword_1EBD4B3F8;
  if (!qword_1EBD4B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B400, &qword_1BE0E2F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B408, &qword_1BE0E2F70);
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408, &qword_1BE0E2F70, MEMORY[0x1E695B160]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3F8);
  }

  return result;
}

uint64_t sub_1BD58F45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_13Tm()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = v0 + v6 + v5[7];
  v9 = sub_1BE04AF64();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v10(v8 + *(v11 + 36), v9);
  *(v0 + v6 + v5[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v6 + v5[9]), v19, v20, v21, v22, v23, v24, v25;
  v26 = v5[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1BE04EB44();
    (*(*(v34 - 8) + 8))(v7 + v26, v34);
  }

  else
  {
    *(v7 + v26), v27, v28, v29, v30, v31, v32, v33;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD58F6F8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1BE04D474() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_1BD58F7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1BE04D474() - 8);
  v11 = (v3 + ((*(v10 + 64) + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];

  return sub_1BD589A64(a1, a2, (v3 + v8), a3, v12, v13, v14, v15);
}

uint64_t sub_1BD58F910(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B388, &qword_1BE0E2F10);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1BD58F978(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD58F9F4()
{
  result = qword_1EBD4B450;
  if (!qword_1EBD4B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B458, &qword_1BE0E2FA0);
    sub_1BD58FA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B450);
  }

  return result;
}

unint64_t sub_1BD58FA80()
{
  result = qword_1EBD4B460;
  if (!qword_1EBD4B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B468, &qword_1BE0E2FA8);
    sub_1BD58FB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B460);
  }

  return result;
}

unint64_t sub_1BD58FB0C()
{
  result = qword_1EBD4B470;
  if (!qword_1EBD4B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B478, &unk_1BE0E2FB0);
    sub_1BD58F45C(&qword_1EBD3D088, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B470);
  }

  return result;
}

uint64_t sub_1BD58FC0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1BD58FCC8(uint64_t a1)
{
  sub_1BD0F5C4C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD58FE54()
{
  result = qword_1EBD4B4E8;
  if (!qword_1EBD4B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B4E8);
  }

  return result;
}

uint64_t sub_1BD58FEA8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD58F45C(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD58FF58()
{
  result = qword_1EBD4B508;
  if (!qword_1EBD4B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B508);
  }

  return result;
}

unint64_t sub_1BD58FFB0()
{
  result = qword_1EBD4B510;
  if (!qword_1EBD4B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B510);
  }

  return result;
}

unint64_t sub_1BD590008()
{
  result = qword_1EBD4B518;
  if (!qword_1EBD4B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B518);
  }

  return result;
}

uint64_t type metadata accessor for FinanceKitTransactionTypeView(uint64_t a1)
{
  result = qword_1EBD4B520;
  if (!qword_1EBD4B520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5900D4(uint64_t a1)
{
  sub_1BD590208(319, &qword_1EBD4B530, _s9ViewModelCMa, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD327BD8(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0]);
    if (v2 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1BD590208(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD590208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD5902D8(uint64_t a1, uint64_t *a2)
{
  v4 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD59579C(a1, v6, _s12DetailsModelVMa);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD595804(v6, _s12DetailsModelVMa);
}

uint64_t sub_1BD590450@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a3;
  swift_beginAccess();
  return sub_1BD59579C(v8 + v17, a5, a4);
}

uint64_t sub_1BD590524(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD59579C(a1, v6, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD595804(v6, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
}

uint64_t sub_1BD590674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD3F780, &unk_1BE0DFFD0);
}

uint64_t sub_1BD59074C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD3F780, &unk_1BE0DFFD0);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD3F780, &unk_1BE0DFFD0);
}

void sub_1BD59089C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8);
  v14 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16);
  v15 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  sub_1BD2726F8(v12, v13, v14, v15);
}

void sub_1BD59095C(__int128 *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD590A34@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = sub_1BD214190;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  return sub_1BD0D44B8(v12, v13);
}

void sub_1BD590B2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    v4[2] = v2;
    v4[3] = v3;
    v5 = sub_1BD59528C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1BD0D44B8(v2, v3);
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  sub_1BD0D4744(v5, v4, v7, v8, v9, v10, v11, v12);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_1BD590CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  sub_1BE051694();
  v13 = v21;
  *(a3 + 16) = v20;
  *(a3 + 24) = v13;
  LOBYTE(v19) = 0;
  sub_1BE051694();
  v14 = v21;
  *(a3 + 32) = v20;
  *(a3 + 40) = v14;
  v15 = *(type metadata accessor for FinanceKitTransactionTypeView(0) + 28);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  sub_1BD59579C(a1, v12, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v9, a2, v6);
  _s9ViewModelCMa(0);
  swift_allocObject();
  v19 = sub_1BD268208(v12, v9);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD595804(a1, type metadata accessor for TransactionContext);
  v17 = v21;
  *a3 = v20;
  *(a3 + 8) = v17;
  return result;
}

uint64_t sub_1BD590F00@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v113 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E0, &qword_1BE0B1200) - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v96 - v2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B538, &qword_1BE0E32C8);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v96 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B540, &qword_1BE0E32D0);
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v102 = &v96 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B548, &qword_1BE0E32D8);
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v96 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B550, &qword_1BE0E32E0);
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v7 = &v96 - v6;
  v118 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B558, &unk_1BE0E32E8);
  sub_1BD0DE4F4(&qword_1EBD4B560, &qword_1EBD4B558, &unk_1BE0E32E8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v8 = type metadata accessor for FinanceKitTransactionTypeView(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v10;
  v12 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v13;
  v97 = v1;
  v105 = type metadata accessor for FinanceKitTransactionTypeView;
  sub_1BD59579C(v1, v12, type metadata accessor for FinanceKitTransactionTypeView);
  v14 = *(v9 + 80);
  v15 = (v14 + 16) & ~v14;
  v104 = v11;
  v16 = swift_allocObject();
  v107 = type metadata accessor for FinanceKitTransactionTypeView;
  v17 = sub_1BD595508(v12, v16 + v15, type metadata accessor for FinanceKitTransactionTypeView);
  MEMORY[0x1EEE9AC00](v17);
  sub_1BD59579C(v1, &v96 - v13, type metadata accessor for FinanceKitTransactionTypeView);
  v18 = swift_allocObject();
  sub_1BD595508(&v96 - v13, v18 + v15, type metadata accessor for FinanceKitTransactionTypeView);
  v19 = sub_1BD0DE4F4(&qword_1EBD4B568, &qword_1EBD4B550, &qword_1BE0E32E0, MEMORY[0x1E697CD20]);
  v20 = sub_1BD0F9764();
  v21 = MEMORY[0x1E69E7DE0];
  v22 = v99;
  v23 = v98;
  sub_1BE050DC4();
  v16, v24, v25, v26, v27, v28, v29, v30;
  v18, v31, v32, v33, v34, v35, v36, v37;
  (*(v100 + 8))(v7, v23);
  v38 = sub_1BE04F434();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 104))(v42, *MEMORY[0x1E697C438], v38, v40);
  v120 = v23;
  v121 = v21;
  v122 = v19;
  v123 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v102;
  v45 = v101;
  sub_1BE050E84();
  (*(v39 + 8))(v42, v38);
  (*(v103 + 8))(v22, v45);
  v46 = v97;
  v117 = v97;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B570, &qword_1BE0E32F8);
  v120 = v45;
  v121 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578, &qword_1BE0E3300);
  v50 = sub_1BD595034();
  v120 = v49;
  v121 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v110;
  v53 = v108;
  sub_1BE051024();
  (*(v109 + 8))(v44, v53);
  v116 = v46;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  v120 = v53;
  v121 = v47;
  v122 = v48;
  v123 = v51;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v54 = v115;
  v55 = v111;
  sub_1BE050954();
  (*(v112 + 8))(v52, v55);
  v56 = sub_1BE04EC54();
  v57 = sub_1BE0501F4();
  v58 = v54 + *(v113 + 11);
  *v58 = v56;
  *(v58 + 8) = v57;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v96 - v106;
  sub_1BD59579C(v46, &v96 - v106, v105);
  sub_1BE0528A4();
  v60 = sub_1BE052894();
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E85E0];
  *(v61 + 16) = v60;
  *(v61 + 24) = v62;
  sub_1BD595508(v59, v61 + ((v14 + 32) & ~v14), v107);
  v63 = sub_1BE0528D4();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = &v96 - v66;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v112 = sub_1BE04EAA4();
    v113 = &v96;
    v111 = *(v112 - 8);
    MEMORY[0x1EEE9AC00](v112);
    v69 = &v96 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_1BE053834();
    v121, v70, v71, v72, v73, v74, v75, v76;
    v120 = 0xD00000000000003ALL;
    v121 = 0x80000001BE12F370;
    v119 = 113;
    v77 = sub_1BE053B24();
    v79 = v78;
    MEMORY[0x1BFB3F610](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v88 = MEMORY[0x1EEE9AC00](v87);
    (*(v64 + 16))(&v96 - v66, &v96 - v66, v63, v88);
    sub_1BE04EA94();
    (*(v64 + 8))(&v96 - v66, v63);
    v89 = v114;
    sub_1BD0881D4(v115, v114);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E8, &qword_1BE0B1208);
    return (*(v111 + 32))(v89 + *(v90 + 36), v69, v112);
  }

  else
  {
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371F0, &qword_1BE0B1210);
    v93 = v114;
    v94 = (v114 + *(v92 + 36));
    v95 = sub_1BE04E7B4();
    (*(v64 + 32))(&v94[*(v95 + 20)], v67, v63);
    *v94 = &unk_1BE0E3320;
    *(v94 + 1) = v61;
    return sub_1BD0881D4(v115, v93);
  }
}

uint64_t sub_1BD591AF8@<X0>(char **a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50, &unk_1BE0E33D0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58, &qword_1BE0E33E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C0, &qword_1BE0E33E8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C8, &qword_1BE0E33F0);
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v72 = a1;
  sub_1BD5924CC(a1, v18);
  type metadata accessor for FinanceKitSelectedTransactionView(0);
  sub_1BD5953CC(&qword_1EBD4B5D0, &qword_1EBD4B5C0, &qword_1BE0E33E8, sub_1BD5952E8);
  sub_1BD595578(&qword_1EBD49DA0, type metadata accessor for FinanceKitSelectedTransactionView, &unk_1BE0E7E04);
  v65 = v23;
  sub_1BE051A24();
  v24 = a1[1];
  v73 = *a1;
  v74 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v25 = v75;
  KeyPath = swift_getKeyPath();
  v73 = v25;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v27, v28, v29, v30, v31, v32, v33;
  v34 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  swift_beginAccess();
  sub_1BD0DE19C(&v25[v34], v8, &qword_1EBD3F780, &unk_1BE0DFFD0);
  v25, v35, v36, v37, v38, v39, v40, v41;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD3F780, &unk_1BE0DFFD0);
LABEL_6:
    v47 = v67;
    (*(v69 + 56))(v67, 1, 1, v70);
    goto LABEL_7;
  }

  v42 = v62;
  v43 = sub_1BD595508(v8, v62, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  if (!*(*v42 + 16))
  {
    sub_1BD595804(v42, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v43);
  *(&v58 - 2) = v42;
  sub_1BD5935C8(v60);
  type metadata accessor for FinanceKitTransactionHistoryView(0);
  sub_1BD53E7A4();
  sub_1BD595578(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView, &unk_1BE0F2EE4);
  v44 = v59;
  sub_1BE051A24();
  v46 = v69;
  v45 = v70;
  v47 = v67;
  (*(v69 + 32))(v67, v44, v70);
  (*(v46 + 56))(v47, 0, 1, v45);
  sub_1BD595804(v42, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
LABEL_7:
  v48 = v63;
  v49 = v64;
  v50 = *(v63 + 16);
  v51 = v65;
  v52 = v66;
  v50(v66, v65, v64);
  v53 = v68;
  sub_1BD0DE19C(v47, v68, &qword_1EBD49D58, &qword_1BE0E33E0);
  v54 = v71;
  v50(v71, v52, v49);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B628, &unk_1BE0E3448);
  sub_1BD0DE19C(v53, &v54[*(v55 + 48)], &qword_1EBD49D58, &qword_1BE0E33E0);
  sub_1BD0DE53C(v47, &qword_1EBD49D58, &qword_1BE0E33E0);
  v56 = *(v48 + 8);
  v56(v51, v49);
  sub_1BD0DE53C(v53, &qword_1EBD49D58, &qword_1BE0E33E0);
  return (v56)(v52, v49);
}

uint64_t sub_1BD5922A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = a1[1];
  v31[0] = *a1;
  v31[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v11 = v31[3];
  KeyPath = swift_getKeyPath();
  v31[0] = v11;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel;
  swift_beginAccess();
  sub_1BD59579C(v11 + v20, v9, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v11, v21, v22, v23, v24, v25, v26, v27;
  v28 = (a2 + *(type metadata accessor for FinanceKitSelectedTransactionView(0) + 20));
  type metadata accessor for NavigationController();
  sub_1BD595578(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  *v28 = sub_1BE04EEC4();
  v28[1] = v29;
  sub_1BD59579C(v9, v6, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BE051694();
  return sub_1BD595804(v9, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
}

uint64_t sub_1BD5924CC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v54 = a2;
  v2 = type metadata accessor for FinanceKitTransactionTypeView(0);
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B610, &qword_1BE0E3410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B600, &qword_1BE0E3408);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5F0, &qword_1BE0E3400);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5E0, &qword_1BE0E33F8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B630, &qword_1BE0E3488) + 44)];
  *v19 = sub_1BE04F7B4();
  *(v19 + 1) = 0x4032000000000000;
  v19[16] = 0;
  v20 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B638, &qword_1BE0E3490) + 44)];
  v21 = v51;
  sub_1BD592954(v51, v20);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v6, v10, &qword_1EBD4B610, &qword_1BE0E3410);
  v22 = &v10[*(v8 + 44)];
  v23 = v60;
  *(v22 + 4) = v59;
  *(v22 + 5) = v23;
  *(v22 + 6) = v61;
  v24 = v56;
  *v22 = v55;
  *(v22 + 1) = v24;
  v25 = v58;
  *(v22 + 2) = v57;
  *(v22 + 3) = v25;
  LOBYTE(v8) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BD0DE204(v10, v14, &qword_1EBD4B600, &qword_1BE0E3408);
  v34 = &v14[*(v12 + 44)];
  *v34 = v8;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v52;
  sub_1BD59579C(v21, v52, type metadata accessor for FinanceKitTransactionTypeView);
  v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v37 = swift_allocObject();
  sub_1BD595508(v35, v37 + v36, type metadata accessor for FinanceKitTransactionTypeView);
  sub_1BD0DE204(v14, v18, &qword_1EBD4B5F0, &qword_1BE0E3400);
  v38 = &v18[*(v16 + 44)];
  *v38 = sub_1BD0D4658;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_1BD595710;
  *(v38 + 3) = v37;
  LOBYTE(v37) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v54;
  sub_1BD0DE204(v18, v54, &qword_1EBD4B5E0, &qword_1BE0E33F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C0, &qword_1BE0E33E8);
  v49 = v47 + *(result + 36);
  *v49 = v37;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_1BD592954@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B640, &qword_1BE0E3498);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - v5;
  v7 = sub_1BE051584();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v77 = a1;
  *&v107[0] = v14;
  *(&v107[0] + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v16 = v99;
  KeyPath = swift_getKeyPath();
  *&v107[0] = v16;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  sub_1BD59579C(v16 + v25, v13, _s12DetailsModelVMa);
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_1BD267354();
  sub_1BD595804(v13, _s12DetailsModelVMa);
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE051544();
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v78 = sub_1BE0515E4();
    v35, v36, v37, v38, v39, v40, v41, v42;
    (*(v8 + 8))(v10, v7);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v82 = v108;
    v43 = v109;
    LOBYTE(v35) = v111;
    v75 = v112;
    v76 = v110;
    v74 = v113;
    v44 = [objc_opt_self() systemGrayColor];
    v72 = sub_1BE0511C4();
    v45 = PKUIPixelLength();

    LOBYTE(v107[0]) = v43;
    LOBYTE(v99) = v35;
    v46 = v43;
    v47 = v35;
    v71 = 0x4020000000000000;
    v81 = 1;
  }

  else
  {
    v78 = 0;
    v81 = 0;
    v82 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0.0;
  }

  v69 = v47;
  v70 = v46;
  v48 = sub_1BE04F7B4();
  v98 = 0;
  sub_1BD592FBC(v77, &v89);
  v103 = v93;
  v104 = v94;
  v105 = v95;
  v106 = v96;
  v99 = v89;
  v100 = v90;
  v101 = v91;
  v102 = v92;
  v107[0] = v89;
  v107[1] = v90;
  v107[2] = v91;
  v107[3] = v92;
  v107[4] = v93;
  v107[5] = v94;
  v107[6] = v95;
  v107[7] = v96;
  sub_1BD0DE19C(&v99, &v83, &qword_1EBD4B648, &qword_1BE0E34A0);
  sub_1BD0DE53C(v107, &qword_1EBD4B648, &qword_1BE0E34A0);
  *&v97[71] = v103;
  *&v97[87] = v104;
  *&v97[103] = v105;
  *&v97[119] = v106;
  *&v97[7] = v99;
  *&v97[23] = v100;
  *&v97[39] = v101;
  *&v97[55] = v102;
  v49 = &v6[*(v79 + 9)];
  v50 = v98;
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v52 = sub_1BE0505C4();
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  *v49 = swift_getKeyPath();
  v53 = *&v97[64];
  *(v6 + 97) = *&v97[80];
  v54 = *&v97[112];
  *(v6 + 113) = *&v97[96];
  *(v6 + 129) = v54;
  v55 = *v97;
  *(v6 + 33) = *&v97[16];
  v56 = *&v97[48];
  *(v6 + 49) = *&v97[32];
  *(v6 + 65) = v56;
  *(v6 + 81) = v53;
  *v6 = v48;
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = v50;
  *(v6 + 18) = *&v97[127];
  *(v6 + 17) = v55;
  v57 = v80;
  sub_1BD0DE19C(v6, v80, &qword_1EBD4B640, &qword_1BE0E3498);
  v58 = v78;
  *&v83 = v78;
  *(&v83 + 1) = v82;
  *&v84 = v46;
  v59 = v75;
  v60 = v76;
  *(&v84 + 1) = v76;
  *&v85 = v47;
  v79 = v6;
  v62 = v73;
  v61 = v74;
  *(&v85 + 1) = v75;
  *&v86 = v74;
  v63 = v71;
  v64 = v72;
  *(&v86 + 1) = v81;
  *&v87 = v72;
  *(&v87 + 1) = v45;
  v88 = v71;
  *(v73 + 80) = v71;
  v65 = v86;
  v62[2] = v85;
  v62[3] = v65;
  v62[4] = v87;
  v66 = v84;
  *v62 = v83;
  v62[1] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B650, &qword_1BE0E34A8);
  sub_1BD0DE19C(v57, v62 + *(v67 + 48), &qword_1EBD4B640, &qword_1BE0E3498);
  sub_1BD0DE19C(&v83, &v89, &qword_1EBD4B658, &qword_1BE0E34B0);
  sub_1BD0DE53C(v79, &qword_1EBD4B640, &qword_1BE0E3498);
  sub_1BD0DE53C(v57, &qword_1EBD4B640, &qword_1BE0E3498);
  *&v89 = v58;
  *(&v89 + 1) = v82;
  *&v90 = v70;
  *(&v90 + 1) = v60;
  *&v91 = v69;
  *(&v91 + 1) = v59;
  *&v92 = v61;
  *(&v92 + 1) = v81;
  *&v93 = v64;
  *(&v93 + 1) = v45;
  *&v94 = v63;
  return sub_1BD0DE53C(&v89, &qword_1EBD4B658, &qword_1BE0E34B0);
}

void sub_1BD592FBC(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12DetailsModelVMa(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v198 = a1[1];
  v199 = v8;
  v206 = v8;
  v207 = v198;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v9 = v204;
  KeyPath = swift_getKeyPath();
  v206 = v9;
  v196 = sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  v195 = _s12DetailsModelVMa;
  sub_1BD59579C(v9 + v18, v7, _s12DetailsModelVMa);
  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = v7 + *(v5 + 36);
  v27 = v7;
  v189 = v7;
  v29 = *v26;
  v28 = *(v26 + 1);
  sub_1BE048C84();
  v192 = _s12DetailsModelVMa;
  sub_1BD595804(v27, _s12DetailsModelVMa);
  v204 = v29;
  v205 = v28;
  v191 = sub_1BD0DDEBC();
  v30 = sub_1BE0506C4();
  v32 = v31;
  LOBYTE(KeyPath) = v33;
  v35 = v34;
  v36 = sub_1BE050344();
  v37 = sub_1BE0505F4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v36, v38, v40, v42, v44, v45, v46, v47;
  sub_1BD0DDF10(v30, v32, (KeyPath & 1), v48, v49, v50, v51, v52);
  v35, v53, v54, v55, v56, v57, v58, v59;
  v193 = sub_1BE0505D4();
  v200 = v60;
  LOBYTE(v30) = v61;
  v194 = v62;
  sub_1BD0DDF10(v37, v39, (v41 & 1), v62, v63, v64, v65, v66);
  v43, v67, v68, v69, v70, v71, v72, v73;
  v188 = swift_getKeyPath();
  v190 = sub_1BE051464();
  v209 = v30 & 1;
  v208 = 0;
  v204 = v199;
  v205 = v198;
  sub_1BE0516A4();
  v74 = v202;
  v75 = swift_getKeyPath();
  v204 = v74;
  sub_1BE04B594();
  v75, v76, v77, v78, v79, v80, v81, v82;
  v83 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  v84 = v189;
  sub_1BD59579C(v74 + v83, v189, v195);
  v74, v85, v86, v87, v88, v89, v90, v91;
  v93 = *v84;
  v92 = v84[1];
  sub_1BE048C84();
  sub_1BD595804(v84, v192);
  v202 = v93;
  v203 = v92;
  v94 = sub_1BE0506C4();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = sub_1BE0502A4();
  v102 = sub_1BE0505F4();
  v104 = v103;
  LOBYTE(v36) = v105;
  v107 = v106;
  v101, v103, v105, v106, v108, v109, v110, v111;
  sub_1BD0DDF10(v94, v96, (v98 & 1), v112, v113, v114, v115, v116);
  v100, v117, v118, v119, v120, v121, v122, v123;
  v124 = swift_getKeyPath();
  v125 = sub_1BE051494();
  v126 = (v36 & 1);
  LOBYTE(v202) = v36 & 1;
  v210 = 0;
  v127 = v209;
  v201 = v209;
  v128 = v208;
  v129 = v193;
  v130 = v200;
  *a2 = v193;
  *(a2 + 8) = v130;
  *(a2 + 16) = v127;
  v131 = v194;
  v132 = v188;
  *(a2 + 24) = v194;
  *(a2 + 32) = v132;
  *(a2 + 40) = 2;
  *(a2 + 48) = v128;
  v133 = v190;
  *(a2 + 56) = v190;
  *(a2 + 64) = v102;
  *(a2 + 72) = v104;
  *(a2 + 80) = v126;
  *(a2 + 88) = v107;
  *(a2 + 96) = v124;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = v125;
  v134 = v129;
  sub_1BD0D7F18(v129, v130, v127 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v102, v104, v126);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DDF10(v102, v104, v126, v135, v136, v137, v138, v139);
  v125, v140, v141, v142, v143, v144, v145, v146;
  v124, v147, v148, v149, v150, v151, v152, v153;
  v107, v154, v155, v156, v157, v158, v159, v160;
  sub_1BD0DDF10(v134, v200, v201, v161, v162, v163, v164, v165);
  v133, v166, v167, v168, v169, v170, v171, v172;
  v132, v173, v174, v175, v176, v177, v178, v179;
  v131, v180, v181, v182, v183, v184, v185, v186;
}

double sub_1BD5934C0(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD59351C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD59579C(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD595578(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v4 = sub_1BE04EEC4();
  v6 = v5;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v8 = (a2 + *(result + 20));
  *v8 = v4;
  v8[1] = v6;
  return result;
}

int *sub_1BD5935C8@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v7 = &v66 - v6;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v4, v1);
    v68 = v10;
    v69 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;
    v19 = sub_1BE0503D4();
    v20 = sub_1BE0505F4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v19, v21, v23, v25, v27, v28, v29, v30;
    sub_1BD0DDF10(v13, v15, (v9 & 1), v31, v32, v33, v34, v35);
    v18, v36, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BE0505D4();
    v45 = v44;
    LOBYTE(v9) = v46;
    v48 = v47;
    sub_1BD0DDF10(v20, v22, (v24 & 1), v47, v49, v50, v51, v52);
    v26, v53, v54, v55, v56, v57, v58, v59;
    v60 = &v7[*(v66 + 36)];
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v62 = sub_1BE0505C4();
    (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
    *v60 = swift_getKeyPath();
    *v7 = v43;
    *(v7 + 1) = v45;
    v7[16] = v9 & 1;
    *(v7 + 3) = v48;
    v63 = sub_1BE051464();
    v64 = v7;
    v65 = v67;
    sub_1BD0DE204(v64, v67, &qword_1EBD386A0, &qword_1BE0B6C30);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
    *(v65 + result[9]) = v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD5938E0@<X0>(double *a2@<X8>)
{
  sub_1BE04E9E4();
  v4 = v3;
  sub_1BE04E9D4();
  v6 = v4 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  result = sub_1BE0516A4();
  v8 = v6 / v9;
  if (v6 / v9 <= 0.0)
  {
    v8 = 0.0;
  }

  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  *a2 = v8;
  return result;
}

double sub_1BD593984(uint64_t a1, double *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD5939F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B578, &qword_1BE0E3300);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-v3];
  v12 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5A0, &qword_1BE0E3380);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B588, &unk_1BE0E3308);
  v7 = sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588, &unk_1BE0E3308, MEMORY[0x1E697BEF0]);
  v13 = v6;
  v14 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3E5A0](sub_1BD5952B4, v11, v5, OpaqueTypeConformance2);
  v9 = sub_1BD595034();
  MEMORY[0x1BFB3CC50](v4, v2, v9);
  return sub_1BD08828C(v4);
}

void sub_1BD593B58(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = *&v25[OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel];
  v12 = *&v25[OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8];
  v13 = *&v25[OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16];
  v14 = *&v25[OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24];
  sub_1BD2726F8(v11, v12, v13, v14);
  v25, v15, v16, v17, v18, v19, v20, v21;
  if (v12)
  {
    v22 = v11;
  }

  else
  {
    v22 = 0;
  }

  if (v12)
  {
    v23 = v13;
  }

  else
  {
    v23 = 0;
  }

  *a2 = v22;
  a2[1] = v12;
  if (v12)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  a2[2] = v23;
  a2[3] = v24;
}

uint64_t sub_1BD593C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v4 = *(type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  sub_1BE0528A4();
  v3[16] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[17] = v6;
  v3[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD593D68, v6, v5);
}

uint64_t sub_1BD593D68()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *v2;
  v0[19] = *v2;
  v5 = v2[1];
  v0[20] = v5;
  v0[2] = v4;
  v0[3] = v5;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v6 = v0[8];
  sub_1BD59579C(v2, v1, type metadata accessor for FinanceKitTransactionTypeView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD595508(v1, v8 + v7, type metadata accessor for FinanceKitTransactionTypeView);
  KeyPath = swift_getKeyPath();
  v10 = swift_task_alloc();
  v10[2] = v6;
  v10[3] = sub_1BD59520C;
  v10[4] = v8;
  v0[9] = v6;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B584();
  v8, v11, v12, v13, v14, v15, v16, v17;
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v6, v25, v26, v27, v28, v29, v30, v31;

  v0[4] = v4;
  v0[5] = v5;
  sub_1BE0516A4();
  v0[22] = v0[10];
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_1BD593FB8;

  return sub_1BD2688EC();
}

uint64_t sub_1BD593FB8()
{
  v3 = *v1;
  v2 = *v1;

  v11 = *(v2 + 176);
  if (v0)
  {

    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v21 = sub_1BD595AC8;
  }

  else
  {
    v11, v4, v5, v6, v7, v8, v9, v10;
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v21 = sub_1BD5940FC;
  }

  return MEMORY[0x1EEE6DFA0](v21, v19, v20);
}

uint64_t sub_1BD5940FC()
{
  v1 = v0[20];
  v0[6] = v0[19];
  v0[7] = v1;
  sub_1BE0516A4();
  v0[24] = v0[11];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5941AC;

  return sub_1BD26C238();
}

uint64_t sub_1BD5941AC()
{
  v3 = *v1;
  v2 = *v1;

  v11 = *(v2 + 192);
  if (v0)
  {

    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v21 = sub_1BD595AC4;
  }

  else
  {
    v11, v4, v5, v6, v7, v8, v9, v10;
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v21 = sub_1BD5942F0;
  }

  return MEMORY[0x1EEE6DFA0](v21, v19, v20);
}

uint64_t sub_1BD5942F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD594358(uint64_t a1)
{
  v24 = sub_1BE04F3D4();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FinanceKitTransactionTypeView(0);
  sub_1BD0DE19C(a1 + *(v12 + 28), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = *v7;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    (*(v2 + 8))(v4, v24);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD5945E0(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B588, &unk_1BE0E3308);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB34();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5A8, &qword_1BE0E3388);
  sub_1BD0DE4F4(&qword_1EBD4B5B0, &qword_1EBD4B5A8, &qword_1BE0E3388, MEMORY[0x1E69817F8]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588, &unk_1BE0E3308, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD5947CC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5B8, &unk_1BE0E3390);
  return sub_1BD594824(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD594824@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30, &qword_1BE0B7D08);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v81 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38, &qword_1BE0B7D10);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v81 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40, &qword_1BE0B7D18);
  MEMORY[0x1EEE9AC00](v87);
  v92 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48, &qword_1BE0E33A0);
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v81 - v15;
  v16 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  v91 = a1;
  v98 = v19;
  v99 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598, &qword_1BE0E3328);
  sub_1BE0516A4();
  v21 = v97;
  KeyPath = swift_getKeyPath();
  v98 = v21;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa, &unk_1BE0C65E0);
  sub_1BE04B594();
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v30 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  sub_1BD59579C(&v21[v30], v18, _s12DetailsModelVMa);
  v21, v31, v32, v33, v34, v35, v36, v37;
  v38 = sub_1BD267354();
  sub_1BD595804(v18, _s12DetailsModelVMa);
  if (v38)
  {
    v83 = v38;
    v39 = sub_1BE051544();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v40 = 0.0;
    v82 = sub_1BE0515E4();
    v39, v41, v42, v43, v44, v45, v46, v47;
    (*(v5 + 8))(v7, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v48 = v98;
    v49 = v99;
    v50 = v100;
    v51 = v101;
    v84 = v12;
    v52 = v102;
    v53 = v103;
    v54 = *(v85 + 36);
    v85 = a2;
    v55 = &v9[v54];
    v56 = *(sub_1BE04EDE4() + 20);
    v57 = *MEMORY[0x1E697F468];
    v58 = sub_1BE04F684();
    (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
    __asm { FMOV            V0.2D, #5.0 }

    *v55 = _Q0;
    *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    *v9 = v82;
    *(v9 + 1) = v48;
    v9[16] = v49;
    *(v9 + 3) = v50;
    v9[32] = v51;
    *(v9 + 5) = v52;
    *(v9 + 6) = v53;
    v12 = v84;
    v64 = *(v91 + 32);
    v65 = v91[5];
    v95 = v64;
    v96 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v94)
    {
      v66 = 1.0;
    }

    else
    {
      v66 = 0.0;
    }

    v67 = v90;
    sub_1BD0DE204(v9, v90, &unk_1EBD3FC30, &qword_1BE0B7D08);
    *(v67 + *(v86 + 36)) = v66;
    v95 = v64;
    v96 = v65;
    sub_1BE0516A4();
    if (!v94)
    {
      v40 = 40.0;
    }

    v68 = v67;
    v69 = v92;
    v70 = sub_1BD0DE204(v68, v92, &qword_1EBD38D38, &qword_1BE0B7D10);
    v71 = v69 + *(v87 + 36);
    *v71 = 0;
    *(v71 + 8) = v40;
    v72 = MEMORY[0x1BFB3EDF0](v70, 0.5, 1.0, 0.0);
    v95 = v64;
    v96 = v65;
    a2 = v85;
    sub_1BE0516A4();

    v73 = v94;
    v74 = v69;
    v75 = v89;
    sub_1BD0DE204(v74, v89, &qword_1EBD38D40, &qword_1BE0B7D18);
    v76 = v75 + *(v12 + 36);
    *v76 = v72;
    *(v76 + 8) = v73;
    v77 = v75;
    v78 = v88;
    sub_1BD0DE204(v77, v88, &qword_1EBD38D48, &qword_1BE0E33A0);
    sub_1BD0DE204(v78, a2, &qword_1EBD38D48, &qword_1BE0E33A0);
    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  return (*(v93 + 56))(a2, v79, 1, v12);
}

void *sub_1BD594F2C@<X0>(double *a1@<X8>)
{
  type metadata accessor for FinanceKitTransactionTypeView(0);

  return sub_1BD5938E0(a1);
}

double sub_1BD594FAC(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD593984(a1, a2, v6);
}

unint64_t sub_1BD595034()
{
  result = qword_1EBD4B580;
  if (!qword_1EBD4B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578, &qword_1BE0E3300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B588, &unk_1BE0E3308);
    sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588, &unk_1BE0E3308, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B580);
  }

  return result;
}

uint64_t sub_1BD595130()
{
  v2 = *(type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD593C70(v4, v5, v0 + v3);
}

uint64_t sub_1BD59520C()
{
  v1 = *(type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD594358(v2);
}

unint64_t sub_1BD5952E8()
{
  result = qword_1EBD4B5D8;
  if (!qword_1EBD4B5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B5E0, &qword_1BE0E33F8);
    sub_1BD5953CC(&qword_1EBD4B5E8, &qword_1EBD4B5F0, &qword_1BE0E3400, sub_1BD595450);
    sub_1BD0DE4F4(&qword_1EBD4B618, &qword_1EBD4B620, &qword_1BE0E3418, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B5D8);
  }

  return result;
}

uint64_t sub_1BD5953CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD595450()
{
  result = qword_1EBD4B5F8;
  if (!qword_1EBD4B5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B600, &qword_1BE0E3408);
    sub_1BD0DE4F4(&qword_1EBD4B608, &qword_1EBD4B610, &qword_1BE0E3410, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B5F8);
  }

  return result;
}

uint64_t sub_1BD595508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD595578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_61()
{
  v1 = (type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v2[3], v17, v18, v19, v20, v21, v22, v23;
  v2[5], v24, v25, v26, v27, v28, v29, v30;
  v31 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_1BE04E664();
    (*(*(v39 - 8) + 8))(v2 + v31, v39);
  }

  else
  {
    *(v2 + v31), v32, v33, v34, v35, v36, v37, v38;
  }

  return swift_deallocObject();
}

double sub_1BD595710(void *a1)
{
  v3 = *(type metadata accessor for FinanceKitTransactionTypeView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD5934C0(a1, v4);
}

uint64_t sub_1BD59579C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD595804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD595864()
{
  result = qword_1EBD4B660;
  if (!qword_1EBD4B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371E0, &qword_1BE0B1200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B538, &qword_1BE0E32C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B540, &qword_1BE0E32D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B570, &qword_1BE0E32F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B548, &qword_1BE0E32D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B550, &qword_1BE0E32E0);
    sub_1BD0DE4F4(&qword_1EBD4B568, &qword_1EBD4B550, &qword_1BE0E32E0, MEMORY[0x1E697CD20]);
    sub_1BD0F9764();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578, &qword_1BE0E3300);
    sub_1BD595034();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD279F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B660);
  }

  return result;
}

void sub_1BD595B4C(char a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  objc_msgSendSuper2(&v30, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItem];

  if (v4)
  {
    goto LABEL_2;
  }

  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 viewControllers];

    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v18 = sub_1BE052744();

    v26 = v18;
    if (v18 >> 62)
    {
      v29 = v18;
      v27 = sub_1BE053704();
      v26 = v29;
    }

    else
    {
      v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26, v19, v20, v21, v22, v23, v24, v25;
    if (v27 == 1)
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v1 action:sel_cancel];
      if (v28)
      {
        v4 = v28;
LABEL_2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1BE0B7020;
        *(v5 + 32) = v4;
        sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
        v6 = v4;
        v7 = sub_1BE052724();
        v5, v8, v9, v10, v11, v12, v13, v14;
        [v1 _setLeftBarButtonItems_animated_];
      }
    }
  }
}

id sub_1BD595EB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD59603C()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter];
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1BD596158()
{
  v1 = sub_1BE04BD74();
  v179 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v172 = &v170 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v171 = &v170 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v170 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v170 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v170 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v170 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v170 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v170 - v18;
  v20 = sub_1BE04B944();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration);
  v26 = [v25 localizedDescription];
  if (v26)
  {
    v27 = v26;
    v175 = sub_1BE052434();
    v178 = v28;
  }

  else
  {
    v175 = 0;
    v178 = 0;
  }

  v29 = [v25 isPaymentAccount];
  v37 = v29;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_hasMultipleDestinationDevices) == 1)
  {
    sub_1BE04BB94();
    v38 = sub_1BE04B934();
    (*(v21 + 8))(v24, v20);
    v39 = [v38 deviceName];
    swift_unknownObjectRelease();
    if (v39)
    {
      v47 = sub_1BE052434();
      v49 = v48;

      v50 = v179;
      if (v37)
      {
LABEL_7:
        v179 = v49;
        v178, v40, v41, v42, v43, v44, v45, v46;
        v51 = *MEMORY[0x1E69B80C8];
        v52 = *(v50 + 13);
        v52(v19, v51, v1);
        result = PKPassKitBundle();
        if (result)
        {
          v54 = result;
          v55 = sub_1BE04B6F4();
          v177 = v56;

          v57 = *(v50 + 1);
          v57(v19, v1);
          v58 = v176;
          v52(v176, v51, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1BE0B69E0;
          *(v59 + 56) = MEMORY[0x1E69E6158];
          *(v59 + 64) = sub_1BD110550();
          v60 = v179;
          *(v59 + 32) = v47;
          *(v59 + 40) = v60;
          sub_1BE04B714();
          v59, v61, v62, v63, v64, v65, v66, v67;
          v57(v58, v1);
          return v55;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
      v50 = v179;
      if (v37)
      {
        goto LABEL_7;
      }
    }

    v100 = *MEMORY[0x1E69B80D8];
    v101 = *(v50 + 13);
    v102 = v174;
    v101(v174, v100, v1);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v103 = result;
    v173 = sub_1BE04B6F4();
    v177 = v104;

    v105 = v102;
    v106 = *(v50 + 1);
    v179 = v50 + 8;
    v106(v105, v1);
    v114 = v178;
    if (v178)
    {
      v115 = HIBYTE(v178) & 0xF;
      if ((v178 & 0x2000000000000000) == 0)
      {
        v115 = v175 & 0xFFFFFFFFFFFFLL;
      }

      if (v115)
      {
        v174 = "LAR_DESCRIPTION_GENERIC";
        v116 = v176;
        v117 = v49;
        v118 = v175;
        v101(v176, v100, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1BE0B6CA0;
        v120 = MEMORY[0x1E69E6158];
        *(v119 + 56) = MEMORY[0x1E69E6158];
        v121 = sub_1BD110550();
        *(v119 + 32) = v118;
        *(v119 + 40) = v114;
        *(v119 + 96) = v120;
        *(v119 + 104) = v121;
        *(v119 + 64) = v121;
        *(v119 + 72) = v47;
        *(v119 + 80) = v117;
LABEL_27:
        sub_1BE04B714();
        v119, v122, v123, v124, v125, v126, v127, v128;
        v106(v116, v1);
        return v173;
      }

      v178, v107, v108, v109, v110, v111, v112, v113;
    }

    v116 = v176;
    v101(v176, v100, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1BE0B69E0;
    *(v119 + 56) = MEMORY[0x1E69E6158];
    *(v119 + 64) = sub_1BD110550();
    *(v119 + 32) = v47;
    *(v119 + 40) = v49;
    goto LABEL_27;
  }

  if (v29)
  {
    v178, v30, v31, v32, v33, v34, v35, v36;
    v68 = *MEMORY[0x1E69B80C8];
    v69 = v179;
    v70 = *(v179 + 13);
    v70(v12, v68, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v71 = result;
      v55 = sub_1BE04B6F4();
      v177 = v72;

      v73 = *(v69 + 1);
      v73(v12, v1);
      v70(v9, v68, v1);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        sub_1BE04B6F4();

        v73(v9, v1);
        return v55;
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v75 = [v25 style];
  v76 = v1;
  v77 = v178;
  if (v75 == 1)
  {
    goto LABEL_29;
  }

  v78 = [v25 paymentNetwork];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1BE052434();
    v82 = v81;
    v83 = sub_1BE052434();
    v85 = v84;
    if (v80 == v83 && v82 == v84)
    {

      v82, v86, v87, v88, v89, v90, v91, v92;
      v85, v93, v94, v95, v96, v97, v98, v99;
LABEL_29:
      v144 = *MEMORY[0x1E69B80D8];
      v145 = v179;
      v146 = *(v179 + 13);
      v147 = v173;
      v146(v173, v144, v76);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v148 = result;
LABEL_33:
      v55 = sub_1BE04B6F4();
      v177 = v149;

      v150 = *(v145 + 1);
      v150(v147, v76);
      if (v77)
      {
        v158 = HIBYTE(v77) & 0xF;
        v159 = v175;
        if ((v77 & 0x2000000000000000) == 0)
        {
          v158 = v175 & 0xFFFFFFFFFFFFLL;
        }

        if (v158)
        {
          v179 = "ISSUER_ADD_DESCRIPTION_GENERIC";
          v160 = v176;
          v146(v176, v144, v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v161 = swift_allocObject();
          *(v161 + 16) = xmmword_1BE0B69E0;
          *(v161 + 56) = MEMORY[0x1E69E6158];
          *(v161 + 64) = sub_1BD110550();
          *(v161 + 32) = v159;
          *(v161 + 40) = v77;
          sub_1BE04B714();
          v161, v162, v163, v164, v165, v166, v167, v168;
          goto LABEL_41;
        }

        v77, v151, v152, v153, v154, v155, v156, v157;
      }

      v160 = v172;
      v146(v172, v144, v76);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v169 = result;
      sub_1BE04B6F4();

LABEL_41:
      v150(v160, v76);
      return v55;
    }

    v129 = sub_1BE053B84();

    v82, v130, v131, v132, v133, v134, v135, v136;
    v85, v137, v138, v139, v140, v141, v142, v143;
    if (v129)
    {
      goto LABEL_29;
    }
  }

  v144 = *MEMORY[0x1E69B80D8];
  v145 = v179;
  v146 = *(v179 + 13);
  v147 = v171;
  v146(v171, v144, v76);
  result = PKPassKitBundle();
  if (result)
  {
    v148 = result;
    goto LABEL_33;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_1BD596D54(unsigned __int8 *a1, int a2)
{
  v5 = sub_1BE04BAC4();
  v152 = *(v5 - 8);
  v153 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v141[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = sub_1BE04BD74();
  v7 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v9 = &v141[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v141[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v141[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v141[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v141[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v148 = &v141[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v141[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141[-v24];
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v141[-v28];
  v30 = *a1;
  v31 = [*&v2[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration] isPaymentAccount];
  v157 = v2;
  sub_1BD596158();
  v156 = v33;
  v34 = v32;
  v155 = a2;
  if ((a2 & 1) == 0)
  {
    if (v30 == 12)
    {
      v41 = *(v7 + 104);
      v42 = v157;
      v43 = v32;
      if (v31)
      {
        v41(v12, *MEMORY[0x1E69B80C8], v158);
        v44 = PKPassKitBundle();
        if (!v44)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v45 = v44;
        sub_1BE04B6F4();
        v47 = v46;
      }

      else
      {
        v41(v9, *MEMORY[0x1E69B80D8], v158);
        v82 = PKPassKitBundle();
        if (!v82)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v45 = v82;
        sub_1BE04B6F4();
        v47 = v83;
        v12 = v9;
      }

      (*(v7 + 8))(v12, v158);
      [v42 showCheckmarkAnimated_];
      v84 = sub_1BE052404();
      v47, v85, v86, v87, v88, v89, v90, v91;
      v92 = sub_1BE052404();
      [v42 hideActivitySpinnerWithTitle:v84 subtitle:v92 animated:0];

      [v42 endUserInteraction];
      v64 = v156;
      goto LABEL_46;
    }

    v43 = v32;
    sub_1BE048C84();
    v64 = v156;
    sub_1BE048C84();
    v65 = sub_1BE052404();
    v64, v66, v67, v68, v69, v70, v71, v72;
    v42 = v157;
    if (v34)
    {
      v73 = sub_1BE052404();
      v34, v74, v75, v76, v77, v78, v79, v80;
    }

    else
    {
      v73 = 0;
    }

    [v42 hideActivitySpinnerWithTitle:v65 subtitle:v73 animated:1];
LABEL_45:

LABEL_46:
    v125 = [v42 view];
    if (v125)
    {
      v133 = v125;
      v64, v126, v127, v128, v129, v130, v131, v132;
      v43, v134, v135, v136, v137, v138, v139, v140;
      [v133 setUserInteractionEnabled_];

      return;
    }

    __break(1u);
    goto LABEL_49;
  }

  v35 = *(v7 + 104);
  v142 = v31;
  v144 = v35;
  if (v31)
  {
    v36 = v158;
    v35(v29, *MEMORY[0x1E69B80C8], v158);
    sub_1BE048C84();
    v37 = PKPassKitBundle();
    if (!v37)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v38 = v37;
    v39 = sub_1BE04B6F4();
    v145 = v40;
    v146 = v39;
  }

  else
  {
    v36 = v158;
    v35(v25, *MEMORY[0x1E69B80D8], v158);
    sub_1BE048C84();
    v48 = PKPassKitBundle();
    if (!v48)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v38 = v48;
    v49 = sub_1BE04B6F4();
    v145 = v50;
    v146 = v49;
    v29 = v25;
  }

  v51 = *(v7 + 8);
  v51(v29, v36);
  v143 = v7 + 8;
  if (v30 > 10)
  {
    v42 = v157;
    v43 = v34;
    if (v30 == 11)
    {
      v60 = v51;
      v43, v52, v53, v54, v55, v56, v57, v58;
      v93 = sub_1BE052404();
      v94 = v151;
      sub_1BE04BC34();
      v95 = sub_1BE04BAB4();
      (*(v152 + 8))(v94, v153);
      v96 = PKDeviceSpecificLocalizedStringKeyForKey(v93, v95 & 1);

      if (v96)
      {
        sub_1BE052434();
        v98 = v97;
      }

      else
      {
        v98 = 0x80000001BE12F470;
      }

      v61 = v154;
      v144(v154, *MEMORY[0x1E69B80D0], v158);
      v102 = PKPassKitCoreBundle();
      if (!v102)
      {
        goto LABEL_53;
      }

      v63 = v102;
      sub_1BE04B6F4();
      v59 = v103;
      v98, v103, v104, v105, v106, v107, v108, v109;
      v36 = v158;
      goto LABEL_40;
    }

    v59 = v34;
    if (v30 != 12)
    {
      goto LABEL_21;
    }

LABEL_41:
    v110 = v145;
    v65 = sub_1BE052404();
    v110, v111, v112, v113, v114, v115, v116, v117;
    if (v59)
    {
      v73 = sub_1BE052404();
      v59, v118, v119, v120, v121, v122, v123, v124;
    }

    else
    {
      v73 = 0;
    }

    v64 = v156;
    [v42 showActivitySpinnerWithTitle:v65 subtitle:v73];
    goto LABEL_45;
  }

  v43 = v34;
  v59 = v34;
  v42 = v157;
  if (v30 == 4)
  {
    goto LABEL_41;
  }

  if (v30 != 10)
  {
LABEL_21:
    v60 = v51;
    v43, v52, v53, v54, v55, v56, v57, v58;
    if (v142)
    {
      v61 = v150;
      v144(v150, *MEMORY[0x1E69B80C8], v36);
      v81 = PKPassKitBundle();
      if (!v81)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v63 = v81;
    }

    else
    {
      v61 = v148;
      v144(v148, *MEMORY[0x1E69B80D0], v36);
      v99 = PKPassKitCoreBundle();
      if (!v99)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v63 = v99;
    }

    goto LABEL_36;
  }

  v60 = v51;
  v43, v52, v53, v54, v55, v56, v57, v58;
  if (v142)
  {
    v61 = v147;
    v144(v147, *MEMORY[0x1E69B80C8], v36);
    v62 = PKPassKitBundle();
    if (!v62)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v63 = v62;
    goto LABEL_36;
  }

  v61 = v149;
  v144(v149, *MEMORY[0x1E69B80D0], v36);
  v100 = PKPassKitCoreBundle();
  if (v100)
  {
    v63 = v100;
LABEL_36:
    sub_1BE04B6F4();
    v59 = v101;
LABEL_40:

    v60(v61, v36);
    goto LABEL_41;
  }

LABEL_57:
  __break(1u);
}

void sub_1BD5976F0(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - v9;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v57 = a1;
  v11 = *MEMORY[0x1E69B80D8];
  v56 = *(v4 + 104);
  v56(v10, v11, v3);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    sub_1BE04B6F4();
    v15 = v14;

    v55 = *(v4 + 8);
    v55(v10, v3);
    v16 = sub_1BE052404();
    v15, v17, v18, v19, v20, v21, v22, v23;
    a1 = v57;
    [v57 setLocalizedTitle_];

    v56(v6, v11, v3);
    v24 = PKPassKitBundle();
    if (v24)
    {
      v25 = v24;
      sub_1BE04B6F4();
      v27 = v26;

      v55(v6, v3);
      v28 = sub_1BE052404();
      v27, v29, v30, v31, v32, v33, v34, v35;
      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v36 = swift_allocObject();
      v36[2] = v1;
      v37 = swift_allocObject();
      v37[2] = v1;
      v38 = v1;
      v39 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD597BA4, v36, sub_1BD597BAC, v37);
      v36, v40, v41, v42, v43, v44, v45, v46;
      v37, v47, v48, v49, v50, v51, v52, v53;
      [v38 presentViewController:v39 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD597A5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BD597AB8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD597B48()
{
  [v0 _setPrimaryButtonEnabled_];

  return [v0 noteFieldIdentifiersChanged];
}

uint64_t type metadata accessor for FavoritesView(uint64_t a1)
{
  result = qword_1EBD4B690;
  if (!qword_1EBD4B690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD597C28(uint64_t a1)
{
  sub_1BD597D24(319, &qword_1EBD4B6A0, sub_1BD0E8CBC, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BD597D24(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD597D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD597DA4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for FavoritesView(0);
  sub_1BD0DE19C(v1 + *(v10 + 20), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1BD597FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FavoritesView(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8068], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v17 = v28;
    sub_1BD598AE0(v28, v6);
    v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v19 = swift_allocObject();
    sub_1BD598B44(v6, v19 + v18);
    v20 = v27;
    sub_1BD598AE0(v17, v27);
    v21 = swift_allocObject();
    sub_1BD598B44(v20, v21 + v18);
    *&v30 = sub_1BD598C08;
    *(&v30 + 1) = v21;
    *&v31 = v14;
    *(&v31 + 1) = v16;
    *&v32 = sub_1BD598BA8;
    *(&v32 + 1) = v19;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v36[0] = sub_1BD598C08;
    v36[1] = v21;
    v36[2] = v14;
    v36[3] = v16;
    v36[4] = sub_1BD598BA8;
    v36[5] = v19;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    sub_1BD0DE19C(&v30, &v29, &qword_1EBD4B6A8, &qword_1BE0E3600);
    result = sub_1BD598C88(v36);
    v22 = v33;
    v23 = v34;
    *(a1 + 32) = v32;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 80) = v35;
    v24 = v31;
    *a1 = v30;
    *(a1 + 16) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5982A8(uint64_t a1)
{
  v24 = sub_1BE04F3D4();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FavoritesView(0);
  sub_1BD0DE19C(a1 + *(v12 + 20), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = *v7;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    (*(v2 + 8))(v4, v24);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD598530(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6B0, qword_1BE0E3608);
  sub_1BD598CF8();
  return sub_1BE0504E4();
}

uint64_t sub_1BD5985A0(uint64_t *a1)
{
  v2 = type metadata accessor for FavoritesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_1BD598AE0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD598B44(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868, &qword_1BE0E4CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8, &qword_1BE108180);
  sub_1BD0DE4F4(&qword_1EBD4B6E0, &qword_1EBD38868, &qword_1BE0E4CA0, MEMORY[0x1E69E6338]);
  sub_1BD598D7C();
  return sub_1BE0519C4();
}

uint64_t sub_1BD59875C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FavoritesView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1BD598AE0(a2, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1BD598B44(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v16 = v9;
  type metadata accessor for AddressSearchingResults.ResultRow(0);
  sub_1BD5990AC();
  v12 = v9;
  sub_1BE051704();
  v17 = sub_1BE051274();
  v13 = sub_1BE0518D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8, &qword_1BE108180);
  *(a3 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1BD598900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD597DA4(v7);
  sub_1BE04E654();
  (*(v5 + 8))(v7, v4);
  v8 = type metadata accessor for FavoritesView(0);
  return (*(a1 + *(v8 + 24)))(a2);
}

id sub_1BD5989FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for AddressSearchingResults.ResultRow(0);
  v4 = *(v3 + 20);
  v5 = *MEMORY[0x1E6980FA8];
  v6 = sub_1BE050554();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;

  return a1;
}

uint64_t sub_1BD598AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD598B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD598BA8()
{
  v1 = *(type metadata accessor for FavoritesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD5982A8(v2);
}

uint64_t sub_1BD598C08(uint64_t a1)
{
  v3 = *(type metadata accessor for FavoritesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD598530(a1, v4);
}

uint64_t sub_1BD598C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6A8, &qword_1BE0E3600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD598CF8()
{
  result = qword_1EBD4B6B8;
  if (!qword_1EBD4B6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B6B0, qword_1BE0E3608);
    sub_1BD598D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6B8);
  }

  return result;
}

unint64_t sub_1BD598D7C()
{
  result = qword_1EBD4B6C0;
  if (!qword_1EBD4B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B6C8, &qword_1BE108180);
    sub_1BD0DE4F4(&qword_1EBD4B6D0, &qword_1EBD4B6D8, &qword_1BE0E4E60, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6C0);
  }

  return result;
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for FavoritesView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E664();
    (*(*(v18 - 8) + 8))(v2 + v10, v18);
  }

  else
  {
    *(v2 + v10), v11, v12, v13, v14, v15, v16, v17;
  }

  *(v2 + *(v1 + 24) + 8), v19, v20, v21, v22, v23, v24, v25;

  return swift_deallocObject();
}

uint64_t sub_1BD598F98@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD59875C(a1, v6, a2);
}

uint64_t sub_1BD599018()
{
  v1 = *(type metadata accessor for FavoritesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD598900(v0 + v2, v3);
}

unint64_t sub_1BD5990AC()
{
  result = qword_1EBD4B6E8;
  if (!qword_1EBD4B6E8)
  {
    type metadata accessor for AddressSearchingResults.ResultRow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6E8);
  }

  return result;
}

uint64_t sub_1BD599104()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD599178()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v53 = *(v2 - 1);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD15D62C(v1 + v21, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD15D69C(v10);
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v22 = sub_1BE052D54();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = sub_1BD59A448;
    v60 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = sub_1BD126964;
    v58 = &block_descriptor_129;
    v24 = _Block_copy(&aBlock);
    v60, v25, v26, v27, v28, v29, v30, v31;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v32 = v54;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v7, v4, v24);
    _Block_release(v24);

    (*(v53 + 8))(v4, v32);
    (*(v51 + 8))(v7, v52);
    return;
  }

  (*(v12 + 32))(v20, v10, v11);
  v54 = *(v1 + OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher);
  v33 = sub_1BE04AE64();
  v34 = PKStartOfDay();

  if (!v34)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1BE04AEE4();

  v35 = sub_1BE04AE64();
  v36 = *(v12 + 8);
  v36(v17, v11);
  v37 = sub_1BE04AE64();
  v38 = PKEndOfDay();

  if (!v38)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1BE04AEE4();

  v39 = sub_1BE04AE64();
  v36(v14, v11);
  v40 = v54;
  [v54 setLimit:0 startDate:v35 endDate:v39];

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = sub_1BD59A450;
  v60 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1BD56AD40;
  v58 = &block_descriptor_19_3;
  v42 = _Block_copy(&aBlock);
  v60, v43, v44, v45, v46, v47, v48, v49;
  [v40 reloadTransactionsWithCompletion_];
  _Block_release(v42);
  v36(v20, v11);
}

uint64_t sub_1BD59973C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD5997BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B730, &unk_1BE0E3720);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash__amount;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F60, &unk_1BE0D3920);
  sub_1BE04D874();
  (*(v4 + 32))(&v1[v7], v6, v3);
  v8 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  v9 = sub_1BE04AF64();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_account] = a1;
  v10 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v11 = a1;
  v12 = [v10 initWithAccount_];
  *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_source] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v15 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v13 paymentDataProvider:v14];

  if (v15)
  {
    *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher] = v15;
    v16 = type metadata accessor for AccountDailyCash(0);
    v21.receiver = v1;
    v21.super_class = v16;
    v17 = objc_msgSendSuper2(&v21, sel_init);
    v18 = *&v17[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher];
    v19 = v17;
    [v18 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD599A14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD599F00();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }
}

id sub_1BD599B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDailyCash(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountDailyCash(uint64_t a1)
{
  result = qword_1EBD4B710;
  if (!qword_1EBD4B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD599C8C(uint64_t a1)
{
  sub_1BD599D68(319);
  if (v1 <= 0x3F)
  {
    sub_1BD578C14(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD599D68(uint64_t a1)
{
  if (!qword_1EBD4B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F60, &unk_1BE0D3920);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4B720);
    }
  }
}

uint64_t sub_1BD599DCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountDailyCash(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD599E0C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD599E8C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD599F00()
{
  v1 = sub_1BE04B2F4();
  v50 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04A474();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD15D62C(&v0[v14], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD15D69C(v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = 0;
    v15 = v0;
    return sub_1BE04D8C4();
  }

  else
  {
    v17 = *(v11 + 32);
    v48 = v10;
    v17(v13, v9, v10);
    sub_1BE04B1E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
    v46 = v1;
    v18 = sub_1BE04B2D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = *(v19 + 80);
    v45 = v13;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BE0B98E0;
    v24 = v23 + v22;
    v25 = *MEMORY[0x1E6969A50];
    v44 = v0;
    v47 = v4;
    v26 = *(v19 + 104);
    v26(v24, v25, v18);
    v26(v24 + v20, *MEMORY[0x1E6969A68], v18);
    v26(v24 + 2 * v20, *MEMORY[0x1E6969A78], v18);
    v26(v24 + 3 * v20, *MEMORY[0x1E6969A48], v18);
    v27 = sub_1BD111674(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = v6;
    v29 = v45;
    sub_1BE04B194();
    v27, v30, v31, v32, v33, v34, v35, v36;
    (*(v50 + 8))(v3, v46);
    v37 = v44;
    v38 = *&v44[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher];
    v39 = sub_1BE04A404();
    v40 = [v38 cashbackGroupForDateComponents:v39 cashbackTransactionSourceCollection:0];

    v41 = [v40 totalAmount];
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v41;
    v42 = v37;
    sub_1BE04D8C4();

    (*(v49 + 8))(v28, v47);
    return (*(v11 + 8))(v29, v48);
  }
}

id sub_1BD59A460(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_identifier];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x80000001BE12F780;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1BD59A608()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_context);
  v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_credential);
  v4 = objc_allocWithZone(type metadata accessor for ProvisioningCarPerformPairingViewController());
  v5 = v3;
  v6 = sub_1BE048964();
  v7 = sub_1BD7E301C(v6, v5);
  v2, v8, v9, v10, v11, v12, v13, v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v15 = sub_1BE04C384();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + v17) = v5;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69B82A8], v15);
  sub_1BE04C3D4();
  swift_allocObject();
  v19 = sub_1BE04C394();
  v20 = type metadata accessor for CarKeyProvisioningUICoordinator();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v22 = &v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v2;
  *&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v19;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v22 + 1) = &off_1F3BBD0D0;
  swift_unknownObjectWeakAssign();
  v30.receiver = v21;
  v30.super_class = v20;
  sub_1BE048964();
  v23 = v7;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  v25 = &v24[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  *(v25 + 1) = &off_1F3BAEF08;
  swift_unknownObjectWeakAssign();
  v26 = *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator);
  *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator) = v24;
  v27 = v24;

  v28 = *&v23[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator];
  *&v23[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator] = v24;

  return v7;
}

uint64_t sub_1BD59A948()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD59A984(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD59A9E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v13[0] = a1;
    v14 = 1;
    v8 = a1;
    v9 = v2;
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses) = a1;
    a1;

    v11 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v12 = sub_1BE04BD44();
    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    v13[0] = v12;
    v14 = 0;
    v9 = v2;
  }

  sub_1BD865A00(v9, &off_1F3BAEF18, v13, ObjectType, v6);
  swift_unknownObjectRelease();
  return sub_1BD12FF7C(v13);
}

_OWORD *sub_1BD59AB30(void *a1, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_31;
  }

  v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v13 != 1)
  {
    if (v13)
    {
      v60 = a1;
      v61 = v10;
      v59 = a4;
      if (v12)
      {
        v29 = sub_1BE053704();
      }

      else
      {
        v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v12 = a3 & 0xC000000000000001;
      while (v29 != v10)
      {
        if (v12)
        {
          v30 = MEMORY[0x1BFB40900](v10, a3);
        }

        else
        {
          if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v30 = *(a3 + 8 * v10 + 32);
        }

        a1 = v30;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v57 = a4;
          v13 = sub_1BE053704();
          a4 = v57;
          goto LABEL_3;
        }

        result = [v30 items];
        if (!result)
        {
          goto LABEL_34;
        }

        v31 = result;
        sub_1BD59AFB4();
        v32 = sub_1BE052744();

        if (v32 >> 62)
        {
          v40 = sub_1BE053704();
        }

        else
        {
          v40 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32, v33, v34, v35, v36, v37, v38, v39;

        ++v10;
        if (v40 > 1)
        {
          a3, v41, v42, a4, v43, v44, v45, v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
          v14 = swift_allocObject();
          v14[1] = xmmword_1BE0B69E0;
          v51 = type metadata accessor for PaymentSetupServiceProviderProductsFlowItem();
          v52 = objc_allocWithZone(v51);
          *&v52[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController] = 0;
          *&v52[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v53 = &v52[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_identifier];
          *v53 = 0xD00000000000001FLL;
          *(v53 + 1) = 0x80000001BE12F810;
          *&v52[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_context] = v60;
          *&v52[OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product] = v61;
          v63.receiver = v52;
          v63.super_class = v51;
          sub_1BE048964();
          v54 = v61;
          v55 = objc_msgSendSuper2(&v63, sel_init);
          v56 = &off_1F3BAA578;
LABEL_27:
          *(v14 + 4) = v55;
          *(v14 + 5) = v56;
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
      v14 = swift_allocObject();
      v14[1] = xmmword_1BE0B69E0;
      v47 = type metadata accessor for PaymentSetupUpLeveledPurchaseServiceProductFlowItem();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController] = 0;
      *&v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v49 = &v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_identifier];
      *v49 = 0xD00000000000002BLL;
      v49[1] = 0x80000001BE12F860;
      *&v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context] = v60;
      *&v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product] = v61;
      *&v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_serviceProviderProducts] = a3;
      v48[OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_showOtherProviders] = v59 & 1;
      v62.receiver = v48;
      v62.super_class = v47;
      sub_1BE048964();
      v50 = v61;
      v55 = objc_msgSendSuper2(&v62, sel_init);
      v56 = &off_1F3B92D58;
      goto LABEL_27;
    }

    a3, a2, a3, a4, a5, a6, a7, a8;
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  result = swift_allocObject();
  v14 = result;
  result[1] = xmmword_1BE0B69E0;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v16 = v8;
    sub_1BE048964();
    v58 = v10;
    v19 = MEMORY[0x1BFB40900](0, a3);
    goto LABEL_9;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = v8;
    v17 = *(a3 + 32);
    sub_1BE048964();
    v18 = v10;
    v19 = v17;
LABEL_9:
    v27 = v19;
    a3, v20, v21, v22, v23, v24, v25, v26;
    v28 = objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseServiceProductFlowItem());
    *(v14 + 4) = sub_1BD4FC05C(a1, v10, v27);
    *(v14 + 5) = &off_1F3BAB238;
    v8 = v16;
LABEL_28:
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v8 + 40) = 0xD000000000000022;
    *(v8 + 48) = 0x80000001BE12F830;
    *(v8 + 56) = v14;
    *(v8 + 32) = 514;
    return v8;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1BD59AFB4()
{
  result = qword_1EBD39B80;
  if (!qword_1EBD39B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39B80);
  }

  return result;
}

uint64_t sub_1BD59B000(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BD59B048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD59B0F0(uint64_t a1, void *a2, id a3, unint64_t a4, int a5, uint64_t a6, void *a7, void *a8, unint64_t a9, char a10)
{
  v16 = [a3 uniqueID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a8 uniqueID];
  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v29 = v21;
  v30 = sub_1BE052434();
  v32 = v31;

  if (!v20)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    v49 = v32;
LABEL_17:
    v49, v22, v23, v24, v25, v26, v27, v28;
    return 0;
  }

  if (!v32)
  {
LABEL_14:
    v49 = v20;
    goto LABEL_17;
  }

  if (v18 == v30 && v20 == v32)
  {
    v20, v22, v23, v24, v25, v26, v27, v28;
    v32, v50, v51, v52, v53, v54, v55, v56;
  }

  else
  {
    v34 = sub_1BE053B84();
    v20, v35, v36, v37, v38, v39, v40, v41;
    v32, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  if (sub_1BD400190(a4, a9))
  {
    if (a2)
    {
      if (a7)
      {
        sub_1BD0E5E8C(0, &unk_1EBD3E560, 0x1E69B91F8);
        v57 = a7;
        v58 = a2;
        v59 = sub_1BE053074();

        if (v59)
        {
          return (a1 == a6) & (a5 ^ a10 ^ 1u);
        }
      }
    }

    else if (!a7)
    {
      return (a1 == a6) & (a5 ^ a10 ^ 1u);
    }
  }

  return 0;
}

void sub_1BD59B2B4(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  v6 = [a2 paymentOffersController];
  if (!v6)
  {
    sub_1BD0E8E44(a3);

    v17 = 0;
    v12 = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = WrappedPass.secureElementPass.getter();
  v8 = v7;
  if (!v7)
  {
    sub_1BD0E8E44(a3);

    v6 = 0;
    v17 = 0;
    v12 = 0;
LABEL_10:
    v13 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v9 = v7;
  v10 = [v9 uniqueID];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 eligiblePaymentOfferCriteriaForPassUniqueID_];

    if (v12)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
      v13 = sub_1BE052744();

      v14 = [v9 uniqueID];
      v15 = [v6 preconfiguredInstallmentOfferStateForPassUniqueID_];

      v16 = (v15 - 3) < 2;
      v17 = [a2 fundingMode];
      v12 = [a2 selectedPaymentOffer];

      sub_1BD0E8E44(a3);
LABEL_11:
      *a1 = v6;
      a1[1] = v17;
      a1[2] = v12;
      a1[3] = v8;
      a1[4] = v13;
      *(a1 + 40) = v16;
      return;
    }

    sub_1BD0E8E44(a3);
    v6 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1BD59B49C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BD2A598C(&v8, [v4 type]);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1BD59B5AC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_18:
  v2 = sub_1BE053704();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 suppressPayInFull];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1BD59B6E4(unint64_t a1, SEL *a2)
{
  if (a1 >> 62)
  {
LABEL_19:
    v4 = sub_1BE053704();
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v6 type] == 1)
    {
      break;
    }

    if (v8 == v4)
    {
      return 0;
    }
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 *a2];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BE052434();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_1BD59B85C@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v143 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v144 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v141 - v10;
  if (a1)
  {
    sub_1BE048C84();
    v11 = sub_1BE0502A4();
    sub_1BE050394();
    v12 = sub_1BE0503F4();
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_1BE051234();
    LOBYTE(v151[0]) = 1;
    v21 = MEMORY[0x1E6981568];
    v22 = MEMORY[0x1E69815C0];
    v23 = a2;
    v24 = a3;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v12 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v151[5] = 0;
    v151[6] = 0;
    v151[0] = 0;
  }

  v151[1] = v23;
  v151[2] = v24;
  v151[3] = v12;
  v151[4] = v20;
  v151[7] = v22;
  v151[8] = v21;
  v145 = sub_1BD59BCE8(a1 & 1, a2, a3);
  v146 = v25;
  sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_1BE0502A4();
  sub_1BE050394();
  v34 = sub_1BE0503F4();
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE0505F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v34, v43, v45, v47, v49, v50, v51, v52;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v53, v54, v55, v56, v57);
  v32, v58, v59, v60, v61, v62, v63, v64;
  sub_1BE050394();
  v65 = sub_1BE050544();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1BD0DDF10(v42, v44, (v46 & 1), v70, v72, v73, v74, v75);
  v48, v76, v77, v78, v79, v80, v81, v82;
  v83 = sub_1BE0513B4();
  v84 = sub_1BE050564();
  v86 = v85;
  LOBYTE(v42) = v87;
  v89 = v88;
  v83, v85, v87, v88, v90, v91, v92, v93;
  sub_1BD0DDF10(v65, v67, (v69 & 1), v94, v95, v96, v97, v98);
  v71, v99, v100, v101, v102, v103, v104, v105;
  KeyPath = swift_getKeyPath();
  v145 = v84;
  v146 = v86;
  v107 = (v42 & 1);
  v147 = v42 & 1;
  v148 = v89;
  v149 = KeyPath;
  v150 = 1;
  sub_1BE052434();
  v109 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
  sub_1BD0EF0FC();
  v110 = v142;
  sub_1BE050DE4();
  v109, v111, v112, v113, v114, v115, v116, v117;
  sub_1BD0DDF10(v84, v86, v107, v118, v119, v120, v121, v122);
  KeyPath, v123, v124, v125, v126, v127, v128, v129;
  v89, v130, v131, v132, v133, v134, v135, v136;
  sub_1BD0DE19C(v151, &v145, &qword_1EBD4B770, &qword_1BE0E3908);
  v137 = v144;
  sub_1BD0DE19C(v110, v144, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v138 = v143;
  sub_1BD0DE19C(&v145, v143, &qword_1EBD4B770, &qword_1BE0E3908);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B778, &unk_1BE0E3910);
  sub_1BD0DE19C(v137, v138 + *(v139 + 48), &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v110, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v151, &qword_1EBD4B770, &qword_1BE0E3908);
  sub_1BD0DE53C(v137, &qword_1EBD38A98, &unk_1BE0C3CC0);
  return sub_1BD0DE53C(&v145, &qword_1EBD4B770, &qword_1BE0E3908);
}

uint64_t sub_1BD59BC6C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B768, &unk_1BE0E38C8);
  return sub_1BD59B85C(v4, v6, v5, a2 + *(v7 + 44));
}

id sub_1BD59BCE8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v11;
  v14 = *MEMORY[0x1E69B8050];
  v15 = *(v7 + 104);
  if (a1)
  {
    v15(v9, v14, v6, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();

      (*(v7 + 8))(v9, v6);
      return v18;
    }

    __break(1u);
  }

  else
  {
    v15(&v30 - v11, v14, v6, v12);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      sub_1BE04B6F4();
      v21 = v20;

      (*(v7 + 8))(v13, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = a2;
      *(v22 + 40) = a3;
      sub_1BE048C84();
      v18 = sub_1BE052454();
      v21, v23, v24, v25, v26, v27, v28, v29;
      return v18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD59BF58()
{
  result = qword_1EBD4B790;
  if (!qword_1EBD4B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B790);
  }

  return result;
}

id sub_1BD59BFAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 thresholdAmount];
  v10 = sub_1BE052404();
  v11 = PKFormattedCurrencyStringFromNumber();

  if (v11)
  {
    v12 = sub_1BE052434();
    v14 = v13;

    (*(v5 + 104))(v8, *MEMORY[0x1E69B8080], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B69E0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1BD110550();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v11 = sub_1BE04B714();
    v15, v16, v17, v18, v19, v20, v21, v22;
    (*(v5 + 8))(v8, v4);
  }

  return v11;
}

id ProvisioningExternalDeviceFlowItem.__allocating_init(context:pass:externalOptions:cardIdentifier:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = objc_allocWithZone(v6);
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B7020;
  *(v10 + 32) = a2;
  v11 = a2;
  v12 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v13 = sub_1BE04BC74();
  sub_1BE04BCC4();
  sub_1BE04BC44();
  v14 = a1;
  v15 = MEMORY[0x1BFB389E0]();
  v16 = objc_allocWithZone(v6);
  v17 = sub_1BD59FB2C(v15, v13);

  v15, v18, v19, v20, v21, v22, v23, v24;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

id ProvisioningExternalDeviceFlowItem.init(context:pass:externalOptions:cardIdentifier:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  *(v8 + 32) = a2;
  v9 = a2;
  v10 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v11 = sub_1BE04BC74();
  sub_1BE04BCC4();
  sub_1BE04BC44();
  v12 = a1;
  v13 = MEMORY[0x1BFB389E0]();
  v14 = objc_allocWithZone(ObjectType);
  v15 = sub_1BD59FB2C(v13, v11);

  v13, v16, v17, v18, v19, v20, v21, v22;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

char *ProvisioningExternalDeviceFlowItem.extract()()
{
  v1 = v0;

  return sub_1BD59FA24(v1);
}

id ProvisioningExternalDeviceFlowItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningExternalDeviceFlowItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD59C6A0(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v51 = a2;
  v52 = a1;
  v3 = sub_1BE04BAC4();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v50 = v2;
  v7 = sub_1BD1881A0(v2, KeyPath);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v22 = v7[2];
  v23 = v7 + 4;
  v57 = 0x80000001BE1182F0;
  v58 = 0x80000001BE118310;
  v55 = 0x80000001BE118280;
  v56 = 0x80000001BE1182A0;
  v53 = 0x80000001BE118230;
  v54 = 0x80000001BE118260;
  while (2)
  {
    if (v22)
    {
      v24 = 0xE90000000000006FLL;
      switch(*v23)
      {
        case 1:
          v24 = v53;
          goto LABEL_3;
        case 2:
          goto LABEL_3;
        case 3:
          v24 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v24 = v54;
          goto LABEL_3;
        case 5:
          v24 = v55;
          goto LABEL_3;
        case 6:
          v24 = v56;
          goto LABEL_3;
        case 7:
          v24 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v24 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v24 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v24 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v24 = v57;
          goto LABEL_3;
        case 0xC:
          v24 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v24 = v58;
LABEL_3:
          v25 = sub_1BE053B84();
          v24, v26, v27, v28, v29, v30, v31, v32;
          ++v23;
          --v22;
          if ((v25 & 1) == 0)
          {
            continue;
          }

          goto LABEL_34;
        default:
          v7, v15, v16, v17, v18, v19, v20, v21;
          v7 = 0xEF65636976654420;
LABEL_34:
          v7, v15, v16, v17, v18, v19, v20, v21;
          v37 = 0x6F63206775626564;
          v38 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_35;
    }

    break;
  }

  v7, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE04BC34();
  v33 = sub_1BE04B964();
  (*(v48 + 8))(v5, v49);
  if (v33)
  {
    v34 = PKShowFakeExternalDevicePicker();
    v35 = sub_1BE04BD24();
    if (v35)
    {
    }

    else if ((v34 & 1) == 0)
    {
      v36 = "not full wallet flow";
      v37 = 0xD000000000000020;
      goto LABEL_22;
    }

    v40 = sub_1BE04BD24();
    if (v40)
    {
      v41 = v40;
      v42 = [v40 authorizationType];

      if (v42 == 2)
      {
        v43 = sub_1BE04BC84();
        v44 = [v43 devicePrimaryPaymentApplication];

        if (v44)
        {
          v45 = [v44 dpanIdentifier];
          if (v45)
          {

            goto LABEL_32;
          }
        }

        v36 = "isioning options";
        v37 = 0xD000000000000030;
        goto LABEL_22;
      }

      if (!v42)
      {
        v36 = "or authorization";
        v37 = 0xD00000000000001ALL;
        goto LABEL_22;
      }
    }

LABEL_32:
    v37 = 0;
    v38 = 0;
LABEL_35:
    v39 = 0;
    return v52(v37, v38, 0, v39);
  }

  v36 = " authorization request";
  v37 = 0xD000000000000014;
LABEL_22:
  v38 = v36 | 0x8000000000000000;
  v39 = 1;
  return v52(v37, v38, 0, v39);
}

uint64_t sub_1BD59CB78()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v174 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = *(v0 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_provisionedPasses);
  v12 = sub_1BE04BD24();
  if (!v12)
  {
    return 2;
  }

  v13 = v12;
  v169 = v6;
  v171 = v3;
  v172 = v2;
  sub_1BE04BB94();
  v14 = sub_1BE04B934();
  (*(v9 + 8))(v11, v8);
  v15 = [v14 deviceSerialNumber];
  swift_unknownObjectRelease();
  if (v15)
  {
    v177 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v177 = 0;
    v17 = 0;
  }

  v18 = [v13 devices];
  sub_1BD0E5E8C(0, &qword_1EBD41B08, 0x1E69B8870);
  v19 = sub_1BE052744();

  v179[0] = MEMORY[0x1E69E7CC0];
  if (v19 >> 62)
  {
    goto LABEL_38;
  }

  v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v170 = v5;
  v175 = v13;
  if (v27)
  {
    v168 = v1;
    v13 = 0;
    v178 = v19 & 0xC000000000000001;
    v1 = v19 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v178)
      {
        v35 = MEMORY[0x1BFB40900](v13, v19);
      }

      else
      {
        if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v35 = *(v19 + 8 * v13 + 32);
      }

      v36 = v35;
      v37 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v27 = sub_1BE053704();
        goto LABEL_7;
      }

      v5 = v27;
      v38 = [v35 serialNumber];
      v39 = sub_1BE052434();
      v41 = v40;

      if (!v17)
      {
        break;
      }

      if (v39 == v177 && v17 == v41)
      {

        v41, v28, v29, v30, v31, v32, v33, v34;
      }

      else
      {
        v50 = sub_1BE053B84();
        v41, v51, v52, v53, v54, v55, v56, v57;
        if ((v50 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_10:
      ++v13;
      v27 = v5;
      if (v37 == v5)
      {
        v58 = v179[0];
        v13 = v175;
        v1 = v168;
        goto LABEL_27;
      }
    }

    v41, v42, v43, v44, v45, v46, v47, v48;
LABEL_23:
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    goto LABEL_10;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v19, v20, v21, v22, v23, v24, v25, v26;
  v17, v59, v60, v61, v62, v63, v64, v65;
  v66 = [v13 policy];
  v67 = sub_1BE04BC84();
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DevicePickerController(0);
  swift_allocObject();
  v69 = sub_1BD59EB00(v58, v66, v67, sub_1BD59FC90, v68);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = (v69 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  v72 = *(v69 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  v73 = *(v69 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion + 8);
  *v71 = sub_1BD59FC98;
  v71[1] = v70;
  sub_1BE048964();
  sub_1BD0D4744(v72, v73, v74, v75, v76, v77, v78, v79);
  v70, v80, v81, v82, v83, v84, v85, v86;
  KeyPath = swift_getKeyPath();
  v88 = swift_getKeyPath();
  sub_1BE04D8B4(v179);
  KeyPath, v89, v90, v91, v92, v93, v94, v95;
  v88, v96, v97, v98, v99, v100, v101, v102;
  v103 = *(v179[0] + 2);
  v179[0], v104, v105, v106, v107, v108, v109, v110;
  if (!v103)
  {
    v150 = v173;
    sub_1BE04D0F4();
    v151 = sub_1BE04D204();
    v152 = sub_1BE052C54();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_1BD026000, v151, v152, "No available devices for external provisioning", v153, 2u);
      MEMORY[0x1BFB45F20](v153, -1, -1);
      v69, v154, v155, v156, v157, v158, v159, v160;
    }

    else
    {

      v69, v161, v162, v163, v164, v165, v166, v167;
    }

    (*(v169 + 8))(v150, v170);
    return 2;
  }

  sub_1BD59FE48(&qword_1EBD4B7D0, type metadata accessor for DevicePickerController, &unk_1BE0EAD30);
  sub_1BE048964();
  v111 = sub_1BE04E954();
  v113 = v112;
  v115 = v171;
  v114 = v172;
  v116 = v174;
  (*(v171 + 104))(v174, *MEMORY[0x1E69B80D8], v172);
  v117 = v113;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v119 = result;
    v120 = sub_1BE04B6F4();
    v122 = v121;

    (*(v115 + 8))(v116, v114);
    v123 = *(v1 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter);
    v179[0] = v111;
    v179[1] = v117;
    v179[2] = v120;
    v179[3] = v122;
    v179[4] = v123;
    v124 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7D8, &unk_1BE0E3A30));
    v125 = v123;
    sub_1BE048C84();
    v126 = sub_1BE04F894();
    v127 = [v126 navigationItem];
    [v127 setHidesBackButton_];

    v128 = [v126 navigationItem];
    [v128 pkui:0.0 enableManualScrollEdgeAppearanceWithInitialProgress:?];

    v69, v129, v130, v131, v132, v133, v134, v135;
    v122, v136, v137, v138, v139, v140, v141, v142;
    v117, v143, v144, v145, v146, v147, v148, v149;
    return v126;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD59D378(unint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BD59D3F0(a1, a2, a3);
  }
}

void sub_1BD59D3F0(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04B944();
  v178 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v179 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v173 - v18;
  if (a1 >> 62)
  {
    v20 = sub_1BE053704();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  v180 = a2;
  v181 = a3;
  v182 = v4;
  if (v20)
  {
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v20 & ~(v20 >> 63), 0, v13, v14, v15, v16, v17);
    if (v20 < 0)
    {
      __break(1u);
      return;
    }

    v174 = v19;
    v175 = v10;
    v176 = v8;
    v21 = aBlock;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = 0;
      do
      {
        MEMORY[0x1BFB40900](v22, a1);
        v23 = [swift_unknownObjectRetain() serialNumber];
        v24 = sub_1BE052434();
        v26 = v25;
        swift_unknownObjectRelease_n();

        aBlock = v21;
        v33 = v21[2];
        v32 = v21[3];
        if (v33 >= v32 >> 1)
        {
          sub_1BD03B254((v32 > 1), v33 + 1, 1, v27, v28, v29, v30, v31);
          v21 = aBlock;
        }

        ++v22;
        v21[2] = (v33 + 1);
        v34 = &v21[2 * v33];
        v34[4] = v24;
        v34[5] = v26;
      }

      while (v20 != v22);
    }

    else
    {
      v35 = (a1 + 32);
      do
      {
        v36 = *v35;
        v37 = [v36 serialNumber];
        v38 = sub_1BE052434();
        v40 = v39;

        aBlock = v21;
        v47 = v21[2];
        v46 = v21[3];
        if (v47 >= v46 >> 1)
        {
          sub_1BD03B254((v46 > 1), v47 + 1, 1, v41, v42, v43, v44, v45);
          v21 = aBlock;
        }

        v21[2] = (v47 + 1);
        v48 = &v21[2 * v47];
        v48[4] = v38;
        v48[5] = v40;
        ++v35;
        --v20;
      }

      while (v20);
    }

    v10 = v175;
    v8 = v176;
    v19 = v174;
  }

  sub_1BE04D0F4();
  sub_1BE048C84();
  v49 = sub_1BE04D204();
  v50 = sub_1BE052C54();
  v21, v51, v52, v53, v54, v55, v56, v57;
  if (os_log_type_enabled(v49, v50))
  {
    v58 = swift_slowAlloc();
    v59 = v8;
    v60 = v19;
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v58 = 136315138;
    v62 = MEMORY[0x1BFB3F7F0](v21, MEMORY[0x1E69E6158]);
    v64 = v63;
    v65 = sub_1BD123690(v62, v63, &aBlock);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v58 + 4) = v65;
    _os_log_impl(&dword_1BD026000, v49, v50, "Initiating external provisioning for devices: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61, v73, v74, v75, v76, v77, v78, v79);
    MEMORY[0x1BFB45F20](v61, -1, -1);
    MEMORY[0x1BFB45F20](v58, -1, -1);

    v80 = v179[1];
    v81 = v60;
    v8 = v59;
    v80(v81, v10);
  }

  else
  {

    v80 = v179[1];
    v80(v19, v10);
  }

  if (!v21[2])
  {
    v21, v82, v83, v84, v85, v86, v87, v88;
    v180(0);
    return;
  }

  v89 = v10;
  v90 = [objc_allocWithZone(MEMORY[0x1E69B8C28]) init];
  v91 = sub_1BE052724();
  v21, v92, v93, v94, v95, v96, v97, v98;
  [v90 setExternalDestinationDevices_];

  v99 = sub_1BE04BC84();
  v100 = [v99 passTypeIdentifier];

  if (!v100)
  {
    sub_1BE052434();
    v102 = v101;
    v100 = sub_1BE052404();
    v102, v103, v104, v105, v106, v107, v108, v109;
  }

  [v90 setRegion_];

  sub_1BE04BCB4();
  if (v110)
  {
    v111 = v110;
    v112 = sub_1BE052404();
    v111, v113, v114, v115, v116, v117, v118, v119;
LABEL_27:
    [v90 setCardIdentifier_];

    v120 = [objc_allocWithZone(MEMORY[0x1E69B8658]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    v121 = v177;
    sub_1BE04BB94();
    v122 = sub_1BE04B8E4();
    (*(v178 + 8))(v121, v8);
    v123 = swift_allocObject();
    v123[2] = 0;
    v124 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v125 = swift_allocObject();
    v125[2] = v124;
    v125[3] = v90;
    v125[4] = v123;
    v187 = sub_1BD59FDD0;
    v188 = v125;
    aBlock = MEMORY[0x1E69E9820];
    v184 = 1107296256;
    v185 = sub_1BD3B2110;
    v186 = &block_descriptor_130;
    v126 = _Block_copy(&aBlock);
    v127 = v188;
    v128 = v90;
    sub_1BE048964();
    v127, v129, v130, v131, v132, v133, v134, v135;
    v136 = v120;
    [v120 addOperation_];
    _Block_release(v126);
    v137 = swift_allocObject();
    v137[2] = v122;
    v137[3] = v128;
    v137[4] = v123;
    v187 = sub_1BD59FDDC;
    v188 = v137;
    aBlock = MEMORY[0x1E69E9820];
    v184 = 1107296256;
    v185 = sub_1BD3B2110;
    v186 = &block_descriptor_29_4;
    v138 = _Block_copy(&aBlock);
    v139 = v188;
    v179 = v128;
    sub_1BE048964();
    v140 = v122;
    v139, v141, v142, v143, v144, v145, v146, v147;
    [v136 addOperation_];
    _Block_release(v138);
    v148 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v149 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v150 = swift_allocObject();
    v150[2] = v149;
    v150[3] = v123;
    v151 = v181;
    v150[4] = v180;
    v150[5] = v151;
    v187 = sub_1BD59FDE8;
    v188 = v150;
    aBlock = MEMORY[0x1E69E9820];
    v184 = 1107296256;
    v185 = sub_1BD3B21E4;
    v186 = &block_descriptor_36_2;
    v152 = _Block_copy(&aBlock);
    v153 = v188;
    sub_1BE048964();
    sub_1BE048964();
    v153, v154, v155, v156, v157, v158, v159, v160;
    v161 = [v136 evaluateWithInput:v148 completion:v152];
    _Block_release(v152);

    v123, v162, v163, v164, v165, v166, v167, v168;
    swift_unknownObjectRelease();

    return;
  }

  if (PKShowFakeExternalDevicePicker())
  {
    v112 = sub_1BE052404();
    goto LABEL_27;
  }

  v169 = v173;
  sub_1BE04D0F4();
  v170 = sub_1BE04D204();
  v171 = sub_1BE052C54();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_1BD026000, v170, v171, "External provisioning attempted, but missing cardIdentifier", v172, 2u);
    MEMORY[0x1BFB45F20](v172, -1, -1);
  }

  v80(v169, v89);
  v180(0);
}

void sub_1BD59DD60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = v2;
      sub_1BD8659A4(v6, &off_1F3BAF118, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD59DE10(uint64_t a1, void *a2, void (*a3)(id, BOOL, __n128), void *a4, uint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = a6;
    sub_1BE048964();
    sub_1BE048964();
    v15 = a2;
    sub_1BD59FE9C(v16, v13, v14, a7, a3, a4, v15);

    a7, v17, v18, v19, v20, v21, v22, v23;
    a4, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_1BD59DED8(void *a1, char a2, id a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    *(a4 + 16) = a1;
    v12 = a1;
  }

  else
  {
    [a3 setAuthorization_];
  }

  swift_beginAccess();
  return a5(a7, *(a4 + 16) != 0);
}

void sub_1BD59DF8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a2;
  v24[4] = sub_1BD59FE90;
  v25 = v13;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BD28F728;
  v24[3] = &block_descriptor_49_2;
  v14 = _Block_copy(v24);
  v15 = v25;
  sub_1BE048964();
  sub_1BE048964();
  v16 = a2;
  v15, v17, v18, v19, v20, v21, v22, v23;
  [a5 initiateExternalProvisioningForRequest:a6 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD59E0A0(int a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
    if ((PKShowFakeExternalDevicePicker() & 1) != 0 || (v11 = [objc_opt_self() errorWithCommonType:2 severity:4], swift_beginAccess(), v12 = *(a3 + 16), *(a3 + 16) = v11, v12, swift_beginAccess(), (v13 = *(a3 + 16)) == 0))
    {
    }

    else
    {
      v14 = v13;
      v15 = sub_1BE04A844();
      [v14 setUnderlyingError_];
    }
  }

  return (a4)(a6, 0, a3, a4, a5);
}

uint64_t sub_1BD59E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1BE051F54();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = v17;
  v19[4] = a6;
  v19[5] = a7;
  aBlock[4] = sub_1BD59FE3C;
  v34 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_43_2;
  v20 = _Block_copy(aBlock);
  v21 = v34;
  sub_1BE048964();
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD59FE48(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v12, v20);
  _Block_release(v20);

  (*(v32 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v31);
}

void sub_1BD59E4E4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 16);
  if (v11)
  {
    v29 = a4;
    v30 = a3;
    v12 = v11;
    sub_1BE04D0F4();
    v13 = v12;
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = v7;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v13;
      *v18 = v11;
      v19 = v13;
      _os_log_impl(&dword_1BD026000, v14, v15, "Unable to initiate external provisioning with error: %@", v17, 0xCu);
      sub_1BD1E236C(v18);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      v20 = v17;
      v7 = v28;
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    else
    {
      v19 = v14;
      v14 = v13;
    }

    (*(v8 + 8))(v10, v7);
    a3 = v30;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter);
    v23 = Strong;
    v24 = v22;

    if (v22)
    {
      swift_beginAccess();
      [v24 reportPageCompleted:*(a1 + 16) == 0 context:0];
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 16);
  v26 = v25;
  a3(v25);
}

void sub_1BD59E778(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  if (a2 >> 60 == 15 || a3 == 0)
  {
    if (a4)
    {
      v9 = sub_1BE04A844();
    }

    else
    {
      v9 = 0;
    }

    v20 = [objc_opt_self() errorWithUnderlyingError:v9 defaultSeverity:5];

    v21 = sub_1BE052404();
    [v20 addInternalDebugDescription_];

    v17 = v20;
    a7(v20, 1);
    v30 = v17;
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69B8C30]);
    v30 = a3;
    sub_1BD030394(a1, a2);
    v14 = sub_1BE052404();
    v15 = sub_1BE04AAB4();
    v16 = [v13 initWithDPANID:v14 signatureData:v15 signatureInfo:v30];

    if (v16)
    {
      v17 = v16;
      v18 = v16;
      v19 = 0;
    }

    else
    {
      v22 = [objc_opt_self() errorWithSeverity_];
      v23 = sub_1BE052404();
      [v22 addInternalDebugDescription_];

      v17 = v22;
      v18 = v22;
      v19 = 1;
    }

    a7(v18, v19);
    sub_1BD030220(a1, a2, v24, v25, v26, v27, v28, v29);
  }
}

void sub_1BD59E9A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1BE048964();
    v9 = v6;
    v6 = sub_1BE04AAC4();
    v11 = v10;
  }

  else
  {
    sub_1BE048964();
    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1BD030220(v6, v11, v14, v15, v16, v17, v18, v19);

  v7, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1BD59EA70()
{
  v1 = *(v0 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD59EAAC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD59EB00(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v195 = a5;
  v192 = a4;
  v194 = a3;
  v193 = a2;
  v204 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v203 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v191 - v10;
  v11 = type metadata accessor for DeviceViewModel(0);
  v210 = *(v11 - 8);
  v211 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v197 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v191 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v200 = &v191 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v198 = &v191 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v191 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E0, &unk_1BE0E3A40);
  v208 = *(v22 - 8);
  v209 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v191 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v191 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7E8, &unk_1BE0E3A50);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v191 - v31;
  v33 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__selectionCount;
  v213[0] = 0;
  sub_1BE04D874();
  (*(v30 + 32))(v6 + v33, v32, v29);
  v34 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__loading;
  LOBYTE(v213[0]) = 0;
  sub_1BE04D874();
  (*(v26 + 32))(v6 + v34, v28, v25);
  v35 = OBJC_IVAR____TtC9PassKitUI22DevicePickerController__error;
  v213[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F0, &qword_1BE0EACA0);
  sub_1BE04D874();
  (*(v208 + 32))(v6 + v35, v24, v209);
  v36 = v204;
  *(v6 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) = 1;
  v196 = v6;
  v37 = (v6 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  *v37 = 0;
  v37[1] = 0;
  if (v36 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v190)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v203;
    if (i)
    {
      v41 = v36;
      v213[0] = MEMORY[0x1E69E7CC0];
      result = sub_1BD531FB0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v43 = 0;
      v39 = v213[0];
      v44 = v41;
      v201 = v41 & 0xC000000000000001;
      v202 = i;
      v45 = &selRef_metricsForTextStyle_;
      do
      {
        if (v201)
        {
          v46 = MEMORY[0x1BFB40900](v43, v44);
        }

        else
        {
          v46 = *(v44 + 8 * v43 + 32);
        }

        v47 = v46;
        v48 = [v46 identifier];
        v49 = sub_1BE052434();
        v208 = v50;
        v209 = v49;

        v51 = [v47 v45[77]];
        if (v51 || (v51 = [v47 model]) != 0)
        {
          v52 = v51;
          v53 = sub_1BE052434();
          v206 = v54;
          v207 = v53;
        }

        else
        {
          v206 = 0xE000000000000000;
          v207 = 0;
        }

        v55 = v211[6];
        PKScreenScale();
        if (v56 == 2.0)
        {
          v57 = [v47 imageURL2x];
          if (!v57)
          {
            v59 = 1;
            v40 = v199;
            goto LABEL_20;
          }

          v40 = v199;
        }

        else
        {
          v57 = [v47 imageURL3x];
          if (!v57)
          {
            v59 = 1;
            goto LABEL_20;
          }
        }

        v58 = v57;
        sub_1BE04A9F4();

        v59 = 0;
LABEL_20:
        v60 = sub_1BE04AA64();
        (*(*(v60 - 8) + 56))(v40, v59, 1, v60);
        sub_1BD226B4C(v40, v21 + v55);
        v61 = [v47 osType];
        if (v61)
        {
          v62 = v61;
          v63 = sub_1BE052434();
          v65 = v64;
        }

        else
        {
          v63 = 0;
          v65 = 0xE000000000000000;
        }

        v66 = [v47 v45[77]];
        if (v66 && (v66, (v67 = [v47 model]) != 0))
        {
          v68 = v67;
          v69 = sub_1BE052434();
          v71 = v70;
        }

        else
        {
          v69 = 0;
          v71 = 0xE000000000000000;
        }

        v72 = sub_1BD41EED8();
        v74 = v73;

        v75 = v208;
        *v21 = v209;
        v21[1] = v75;
        v76 = v206;
        v21[2] = v207;
        v21[3] = v76;
        v77 = v211;
        v78 = (v21 + v211[7]);
        *v78 = v63;
        v78[1] = v65;
        v79 = (v21 + v77[8]);
        *v79 = v69;
        v79[1] = v71;
        v80 = (v21 + v77[9]);
        *v80 = v72;
        v80[1] = v74;
        *(v21 + v77[10]) = 0;
        v213[0] = v39;
        v82 = v39[2];
        v81 = v39[3];
        if (v82 >= v81 >> 1)
        {
          sub_1BD531FB0((v81 > 1), v82 + 1, 1);
          v39 = v213[0];
        }

        ++v43;
        v39[2] = v82 + 1;
        sub_1BD59FCA0(v21, v39 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v82);
        v40 = v203;
        v44 = v204;
        v45 = &selRef_metricsForTextStyle_;
      }

      while (v202 != v43);
    }

    v83 = v197;
    v84 = v198;
    v85 = v39[2];
    if (v85)
    {
      v86 = 0;
      v21 = (v198 + 8);
      v87 = MEMORY[0x1E69E7CC0];
      while (v86 < v39[2])
      {
        v88 = (*(v210 + 80) + 32) & ~*(v210 + 80);
        v89 = *(v210 + 72);
        sub_1BD59FD04(v39 + v88 + v89 * v86, v84);
        if (*(v21 + v211[9]))
        {
          sub_1BD59FD68(v84);
        }

        else
        {
          sub_1BD59FCA0(v84, v83);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v213[0] = v87;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BD531FB0(0, v87[2] + 1, 1);
            v83 = v197;
            v87 = v213[0];
          }

          v92 = v87[2];
          v91 = v87[3];
          if (v92 >= v91 >> 1)
          {
            sub_1BD531FB0((v91 > 1), v92 + 1, 1);
            v83 = v197;
            v87 = v213[0];
          }

          v87[2] = v92 + 1;
          sub_1BD59FCA0(v83, v87 + v88 + v92 * v89);
          v84 = v198;
        }

        if (v85 == ++v86)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_59;
    }

    v87 = MEMORY[0x1E69E7CC0];
LABEL_42:
    swift_beginAccess();
    v212 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8, &qword_1BE0E3A60);
    sub_1BE04D874();
    swift_endAccess();
    if (!v85)
    {
      break;
    }

    v100 = 0;
    v101 = v200;
    v21 = (v200 + 8);
    v102 = MEMORY[0x1E69E7CC0];
    while (v100 < v39[2])
    {
      v103 = (*(v210 + 80) + 32) & ~*(v210 + 80);
      v104 = *(v210 + 72);
      sub_1BD59FD04(v39 + v103 + v104 * v100, v101);
      if (*(v21 + v211[9]))
      {
        sub_1BD59FCA0(v101, v205);
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v213[0] = v102;
        if ((v105 & 1) == 0)
        {
          sub_1BD531FB0(0, v102[2] + 1, 1);
          v102 = v213[0];
        }

        v107 = v102[2];
        v106 = v102[3];
        if (v107 >= v106 >> 1)
        {
          sub_1BD531FB0((v106 > 1), v107 + 1, 1);
          v102 = v213[0];
        }

        v102[2] = v107 + 1;
        sub_1BD59FCA0(v205, v102 + v103 + v107 * v104);
        v101 = v200;
      }

      else
      {
        sub_1BD59FD68(v101);
      }

      if (v85 == ++v100)
      {
        goto LABEL_54;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v189 = v36;
    v190 = sub_1BE053704();
    v36 = v189;
  }

  v102 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v39, v93, v94, v95, v96, v97, v98, v99;
  v108 = v196;
  swift_beginAccess();
  v212 = v102;
  sub_1BE04D874();
  swift_endAccess();
  v109 = v193;
  *(v108 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_policy) = v193;
  v110 = v194;
  *(v108 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_pass) = v194;
  v111 = swift_allocObject();
  v112 = v192;
  *(v111 + 2) = v204;
  *(v111 + 3) = v112;
  v113 = v195;
  *(v111 + 4) = v195;
  v114 = (v108 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onSelection);
  *v114 = sub_1BD59FDC4;
  v114[1] = v111;
  v115 = v109;
  v116 = v110;
  sub_1BE048964();
  sub_1BD64A1CC();
  KeyPath = swift_getKeyPath();
  v118 = swift_getKeyPath();
  sub_1BE04D8B4(v213);
  KeyPath, v119, v120, v121, v122, v123, v124, v125;
  v118, v126, v127, v128, v129, v130, v131, v132;
  v133 = v213[0];
  v134 = swift_getKeyPath();
  v135 = swift_getKeyPath();
  sub_1BE04D8B4(v213);
  v134, v136, v137, v138, v139, v140, v141, v142;
  v135, v143, v144, v145, v146, v147, v148, v149;
  v150 = *(v213[0] + 2);
  v213[0], v151, v152, v153, v154, v155, v156, v157;
  if (v133 == v150)
  {
    v158 = swift_getKeyPath();
    v159 = swift_getKeyPath();
    sub_1BE04D8B4(v213);
    v158, v160, v161, v162, v163, v164, v165, v166;
    v159, v167, v168, v169, v170, v171, v172, v173;

    v113, v174, v175, v176, v177, v178, v179, v180;
    v181 = v213[0] > 2;
  }

  else
  {

    v113, v182, v183, v184, v185, v186, v187, v188;
    v181 = 0;
  }

  *(v108 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) = v181;
  return v108;
}

void sub_1BD59F714(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t, uint64_t), uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v8 = type metadata accessor for DeviceViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v61 = a4;
  if (v19)
  {
    v62[0] = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v19, 0, v12, v13, v14, v15, v16);
    v21 = v62[0];
    v22 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v9 + 72);
    do
    {
      sub_1BD59FD04(v22, v18);
      v24 = *v18;
      v25 = v18[1];
      sub_1BE048C84();
      sub_1BD59FD68(v18);
      v62[0] = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_1BD03B254((v26 > 1), v27 + 1, 1, v12, v13, v14, v15, v16);
        v21 = v62[0];
      }

      v21[2] = v27 + 1;
      v28 = &v21[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v22 += v23;
      --v19;
    }

    while (v19);
    a4 = v61;
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v63 = v20;
  if (a4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v30 = 0;
    v59 = a4 & 0xFFFFFFFFFFFFFF8;
    v60 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v31 = MEMORY[0x1BFB40900](v30, a4);
      }

      else
      {
        if (v30 >= *(v59 + 16))
        {
          goto LABEL_21;
        }

        v31 = *(a4 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v34 = [v31 identifier];
      v35 = sub_1BE052434();
      v37 = v36;

      v62[0] = v35;
      v62[1] = v37;
      MEMORY[0x1EEE9AC00](v38);
      *(&v54 - 2) = v62;
      LOBYTE(v34) = sub_1BD2FF084(sub_1BD20DFC4, (&v54 - 4), v21);
      v37, v39, v40, v41, v42, v43, v44, v45;
      if (v34)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      a4 = v61;
      ++v30;
      if (v33 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  v21, v10, v11, v12, v13, v14, v15, v16;
  v46 = v63;
  v58(v63, v55, v56);
  v46, v47, v48, v49, v50, v51, v52, v53;
}

char *sub_1BD59FA24(void *a1)
{
  v2 = type metadata accessor for ExtractedUIFlowItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___PKExtractedUIFlowItem_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR___PKExtractedUIFlowItem_flowItem];
  *v5 = a1;
  *(v5 + 1) = &off_1F3BAF118;
  v12.receiver = v3;
  v12.super_class = v2;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = *&v6[OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 24);
  v10 = v6;
  swift_unknownObjectRetain();
  v9(v6, &off_1F3B9BB10, ObjectType, v7);

  swift_unknownObjectRelease();
  return v10;
}

id sub_1BD59FB2C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_identifier];
  *v7 = 0xD000000000000019;
  *(v7 + 1) = 0x80000001BE12FB30;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_context] = a1;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_provisionedPasses] = a2;
  sub_1BE052434();
  v9 = v8;
  sub_1BE048964();
  v10 = a2;
  v11 = sub_1BE04BB74();
  v9, v12, v13, v14, v15, v16, v17, v18;
  *&v3[OBJC_IVAR___PKProvisioningExternalDeviceFlowItem_reporter] = v11;
  v20.receiver = v3;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1BD59FCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD59FD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD59FD68(uint64_t a1)
{
  v2 = type metadata accessor for DeviceViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_32Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD59FE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD59FE9C(double a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, BOOL, __n128), uint64_t a6, void *a7)
{
  v12 = sub_1BE052484();
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B944();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v18 = a3;
  sub_1BE048964();
  sub_1BE048964();
  v86 = a7;
  v19 = sub_1BE04BD24();
  if (v19)
  {
    v85 = a5;
    v20 = v19;
    v21 = [v19 authorizationType];

    if (v21 == 2)
    {
      v41 = sub_1BE04BC84();
      v42 = [v41 devicePrimaryPaymentApplication];

      if (v42)
      {
        v43 = [v42 dpanIdentifier];
        if (v43)
        {
          v86 = v42;
          v44 = v43;
          v45 = sub_1BE052434();
          v47 = v46;

          sub_1BE04BB94();
          v48 = sub_1BE04B934();
          v49 = sub_1BE04B8E4();
          sub_1BE052464();
          v50 = sub_1BE052444();
          v52 = v51;
          (*(v81 + 8))(v14, v12);
          if (v52 >> 60 == 15)
          {
            v53 = 0;
          }

          else
          {
            v53 = sub_1BE04AAB4();
            sub_1BD030220(v50, v52, v64, v65, v66, v67, v68, v69);
          }

          v70 = swift_allocObject();
          v70[2] = v45;
          v70[3] = v47;
          v70[4] = sub_1BD5A0420;
          v70[5] = v17;
          aBlock[4] = sub_1BD5A0434;
          v88 = v70;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD59E9A8;
          aBlock[3] = &block_descriptor_58;
          v71 = _Block_copy(aBlock);
          v72 = v88;
          sub_1BE048964();
          v72, v73, v74, v75, v76, v77, v78, v79;
          [v48 paymentWebService:v49 signData:v53 signatureEntanglementMode:0 withCompletionHandler:v71];

          _Block_release(v71);
          swift_unknownObjectRelease();

          (*(v82 + 8))(v84, v83);
          goto LABEL_6;
        }
      }

      v54 = [objc_opt_self() errorWithSeverity_];
      swift_beginAccess();
      v55 = *(a4 + 16);
      *(a4 + 16) = v54;
      v56 = v54;

      swift_beginAccess();
      (v85)(v86, *(a4 + 16) != 0);
      v17, v57, v58, v59, v60, v61, v62, v63;

      return;
    }

    a5 = v85;
    if (!v21)
    {
      v22 = [objc_opt_self() errorWithSeverity_];
      v23 = a5;
      v24 = sub_1BE052404();
      [v22 addInternalDebugDescription_];

      swift_beginAccess();
      v25 = *(a4 + 16);
      *(a4 + 16) = v22;
      v26 = v22;

      swift_beginAccess();
      (v23)(v86, *(a4 + 16) != 0);
      v17, v27, v28, v29, v30, v31, v32, v33;

      return;
    }
  }

  [v18 setAuthorization_];
  swift_beginAccess();
  (a5)(v86, *(a4 + 16) != 0);
LABEL_6:
  v17, v34, v35, v36, v37, v38, v39, v40;
}

uint64_t sub_1BD5A0764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD5A07D4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED790(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD5A0888(v5);
  *a1 = v3;
}

void sub_1BD5A0888(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
        v6 = sub_1BE0527B4();
        v6[2] = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1BD5A0F30(v15, v16, a1, v4);
      v6[2] = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
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
    sub_1BD5A09CC(0, v2, 1, a1);
  }
}

void sub_1BD5A09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v36[-v12];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v36[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v36[-v18];
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v58 = (v9 + 16);
    v21 = (v9 + 88);
    v57 = *MEMORY[0x1E6967AA0];
    v54 = *MEMORY[0x1E6967A68];
    v49 = *MEMORY[0x1E6967AB8];
    v48 = *MEMORY[0x1E6967A98];
    v47 = *MEMORY[0x1E6967AB0];
    v37 = (v9 + 8);
    v22 = v19 + v20 * (a3 - 1);
    v50 = -v20;
    v41 = *MEMORY[0x1E6967A78];
    v23 = a1 - a3;
    v51 = v19;
    v40 = v20;
    v24 = v19 + v20 * a3;
    LODWORD(v19) = *MEMORY[0x1E6967A88];
    v38 = *MEMORY[0x1E6967AC8];
    v39 = v19;
LABEL_5:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    while (1)
    {
      v25 = v59;
      sub_1BD5A0764(v24, v59);
      sub_1BD5A0764(v22, v60);
      v26 = *v58;
      v27 = v55;
      (*v58)(v55, v25, v8);
      v28 = *v21;
      v29 = (*v21)(v27, v8);
      if (v29 == v57)
      {
        v30 = 7;
      }

      else if (v29 == v54)
      {
        v30 = 5;
      }

      else if (v29 == v49)
      {
        v30 = 4;
      }

      else if (v29 == v48)
      {
        v30 = 3;
      }

      else if (v29 == v47)
      {
        v30 = 1;
      }

      else if (v29 == v41)
      {
        v30 = 0;
      }

      else if (v29 == v39)
      {
        v30 = 6;
      }

      else if (v29 == v38)
      {
        v30 = 2;
      }

      else
      {
        (*v37)(v55, v8);
        v30 = 8;
      }

      v31 = v56;
      v26(v56, v60, v8);
      v32 = v28(v31, v8);
      if (v32 == v57)
      {
        v33 = 7;
      }

      else if (v32 == v54)
      {
        v33 = 5;
      }

      else if (v32 == v49)
      {
        v33 = 4;
      }

      else if (v32 == v48)
      {
        v33 = 3;
      }

      else if (v32 == v47)
      {
        v33 = 1;
      }

      else if (v32 == v41)
      {
        v33 = 0;
      }

      else if (v32 == v39)
      {
        v33 = 6;
      }

      else if (v32 == v38)
      {
        v33 = 2;
      }

      else
      {
        (*v37)(v56, v8);
        v33 = 8;
      }

      sub_1BD0DE53C(v60, &qword_1EBD49BE0, &qword_1BE0DFB00);
      sub_1BD0DE53C(v59, &qword_1EBD49BE0, &qword_1BE0DFB00);
      if (v30 >= v33)
      {
LABEL_4:
        a3 = v46 + 1;
        v22 = v45 + v40;
        v23 = v44 - 1;
        v24 = v43 + v40;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v34 = v52;
      sub_1BD5A3384(v24, v52);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD5A3384(v34, v22);
      v22 += v50;
      v24 += v50;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD5A0F30(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v152 = a1;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v144 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v162 = &v144 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v144 - v14;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  v15 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v156 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v173 = &v144 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v182 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v144 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v144 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v144 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v144 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v38 = *(a3 + 8);
  if (v38 < 1)
  {
    v40 = MEMORY[0x1E69E7CC0];
LABEL_164:
    v7 = *v152;
    if (!*v152)
    {
      goto LABEL_204;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v168;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_166;
  }

  v146 = &v144 - v37;
  v39 = 0;
  v181 = (v7 + 16);
  v180 = (v7 + 88);
  v179 = *MEMORY[0x1E6967AA0];
  v177 = *MEMORY[0x1E6967A68];
  v171 = *MEMORY[0x1E6967AB8];
  v169 = *MEMORY[0x1E6967A98];
  v164 = *MEMORY[0x1E6967AB0];
  v157 = *MEMORY[0x1E6967A78];
  v153 = *MEMORY[0x1E6967A88];
  v147 = (v7 + 8);
  v150 = *MEMORY[0x1E6967AC8];
  v40 = MEMORY[0x1E69E7CC0];
  v165 = v15;
  v151 = a4;
  v154 = a3;
  while (1)
  {
    v41 = v39;
    if (v39 + 1 >= v38)
    {
      v52 = v39 + 1;
    }

    else
    {
      v167 = v38;
      v42 = *a3;
      v43 = *(v15 + 72);
      v7 = v42 + v43 * (v39 + 1);
      v44 = v146;
      sub_1BD5A0764(v7, v146);
      v172 = v42;
      v45 = v42 + v43 * v39;
      v46 = v148;
      sub_1BD5A0764(v45, v148);
      v47 = v168;
      LODWORD(v163) = sub_1BD5A2AF0(v44, v46);
      v168 = v47;
      if (v47)
      {
        sub_1BD0DE53C(v46, &qword_1EBD49BE0, &qword_1BE0DFB00);
        sub_1BD0DE53C(v44, &qword_1EBD49BE0, &qword_1BE0DFB00);
        goto LABEL_176;
      }

      sub_1BD0DE53C(v46, &qword_1EBD49BE0, &qword_1BE0DFB00);
      sub_1BD0DE53C(v44, &qword_1EBD49BE0, &qword_1BE0DFB00);
      v149 = v39;
      v48 = v39 + 2;
      v49 = v172 + v43 * (v39 + 2);
      v50 = v43;
      v172 = v43;
      while (1)
      {
        v52 = v167;
        if (v167 == v48)
        {
          break;
        }

        v53 = v40;
        v54 = v166;
        sub_1BD5A0764(v49, v166);
        sub_1BD5A0764(v7, v170);
        v55 = *v181;
        v56 = v161;
        (*v181)(v161, v54, v6);
        v57 = *v180;
        v58 = (*v180)(v56, v6);
        if (v58 == v179)
        {
          v59 = 7;
        }

        else if (v58 == v177)
        {
          v59 = 5;
        }

        else if (v58 == v171)
        {
          v59 = 4;
        }

        else if (v58 == v169)
        {
          v59 = 3;
        }

        else if (v58 == v164)
        {
          v59 = 1;
        }

        else if (v58 == v157)
        {
          v59 = 0;
        }

        else if (v58 == v153)
        {
          v59 = 6;
        }

        else if (v58 == v150)
        {
          v59 = 2;
        }

        else
        {
          (*v147)(v161, v6);
          v59 = 8;
        }

        v60 = v162;
        v55(v162, v170, v6);
        v61 = v57(v60, v6);
        if (v61 == v179)
        {
          v51 = 7;
          v40 = v53;
        }

        else
        {
          v40 = v53;
          if (v61 == v177)
          {
            v51 = 5;
          }

          else if (v61 == v171)
          {
            v51 = 4;
          }

          else if (v61 == v169)
          {
            v51 = 3;
          }

          else if (v61 == v164)
          {
            v51 = 1;
          }

          else if (v61 == v157)
          {
            v51 = 0;
          }

          else if (v61 == v153)
          {
            v51 = 6;
          }

          else if (v61 == v150)
          {
            v51 = 2;
          }

          else
          {
            (*v147)(v162, v6);
            v51 = 8;
          }
        }

        sub_1BD0DE53C(v170, &qword_1EBD49BE0, &qword_1BE0DFB00);
        sub_1BD0DE53C(v166, &qword_1EBD49BE0, &qword_1BE0DFB00);
        ++v48;
        v50 = v172;
        v49 += v172;
        v7 += v172;
        v15 = v165;
        if (((v163 ^ (v59 >= v51)) & 1) == 0)
        {
          v52 = v48 - 1;
          break;
        }
      }

      a4 = v151;
      a3 = v154;
      v41 = v149;
      if (v163)
      {
        if (v52 < v149)
        {
          goto LABEL_197;
        }

        if (v149 < v52)
        {
          v145 = v40;
          v62 = v50 * (v52 - 1);
          v63 = v52;
          v64 = v52 * v50;
          v167 = v52;
          v65 = v149;
          v66 = v149 * v50;
          do
          {
            if (v65 != --v63)
            {
              v67 = *v154;
              if (!*v154)
              {
                goto LABEL_201;
              }

              v7 = v67 + v66;
              sub_1BD5A3384(v67 + v66, v156);
              if (v66 < v62 || v7 >= v67 + v64)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v66 != v62)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BD5A3384(v156, v67 + v62);
              v15 = v165;
              v50 = v172;
            }

            ++v65;
            v62 -= v50;
            v64 -= v50;
            v66 += v50;
          }

          while (v65 < v63);
          a4 = v151;
          v40 = v145;
          a3 = v154;
          v52 = v167;
          v41 = v149;
        }
      }
    }

    v68 = *(a3 + 8);
    if (v52 < v68)
    {
      if (__OFSUB__(v52, v41))
      {
        goto LABEL_194;
      }

      if (v52 - v41 < a4)
      {
        if (__OFADD__(v41, a4))
        {
          goto LABEL_195;
        }

        if (v41 + a4 >= v68)
        {
          v69 = *(a3 + 8);
        }

        else
        {
          v69 = v41 + a4;
        }

        if (v69 < v41)
        {
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          v40 = sub_1BD5ED6C8(v40, v30, v31, v32, v33, v34, v35, v36);
LABEL_166:
          v183 = v40;
          v138 = *(v40 + 2);
          if (v138 >= 2)
          {
            do
            {
              v139 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v140 = a3;
              a3 = v138 - 1;
              v141 = *&v40[16 * v138];
              v142 = *&v40[16 * v138 + 24];
              sub_1BD5A1F44(v139 + *(v15 + 72) * v141, v139 + *(v15 + 72) * *&v40[16 * v138 + 16], v139 + *(v15 + 72) * v142, v7);
              if (v6)
              {
                break;
              }

              if (v142 < v141)
              {
                goto LABEL_191;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_1BD5ED6C8(v40, v30, v31, v32, v33, v34, v35, v36);
              }

              if (v138 - 2 >= *(v40 + 2))
              {
                goto LABEL_192;
              }

              v143 = &v40[16 * v138];
              *v143 = v141;
              *(v143 + 1) = v142;
              v183 = v40;
              sub_1BD5ED63C(a3);
              v40 = v183;
              v138 = *(v183 + 2);
              a3 = v140;
            }

            while (v138 > 1);
          }

LABEL_176:
          v40, v30, v31, v32, v33, v34, v35, v36;
          return;
        }

        if (v52 != v69)
        {
          break;
        }
      }
    }

    v70 = v52;
    if (v52 < v41)
    {
      goto LABEL_193;
    }

LABEL_69:
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v70;
    if ((v71 & 1) == 0)
    {
      v40 = sub_1BD1D7844(0, *(v40 + 2) + 1, 1, v40, v33, v34, v35, v36);
    }

    v73 = *(v40 + 2);
    v72 = *(v40 + 3);
    v7 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v40 = sub_1BD1D7844((v72 > 1), v73 + 1, 1, v40, v33, v34, v35, v36);
    }

    *(v40 + 2) = v7;
    v74 = &v40[16 * v73];
    v75 = v158;
    *(v74 + 4) = v41;
    *(v74 + 5) = v75;
    if (!*v152)
    {
      goto LABEL_203;
    }

    if (v73)
    {
      v76 = *v152;
      while (1)
      {
        v77 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v78 = *(v40 + 4);
          v79 = *(v40 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_89:
          if (v81)
          {
            goto LABEL_182;
          }

          v94 = &v40[16 * v7];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_185;
          }

          v100 = &v40[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_188;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_189;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v7 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v104 = &v40[16 * v7];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_103:
        if (v99)
        {
          goto LABEL_184;
        }

        v107 = &v40[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_187;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_110:
        v115 = v77 - 1;
        if (v77 - 1 >= v7)
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v116 = *a3;
        if (!*a3)
        {
          goto LABEL_200;
        }

        v117 = a3;
        v7 = *&v40[16 * v115 + 32];
        a3 = *&v40[16 * v77 + 40];
        v118 = v168;
        sub_1BD5A1F44(v116 + *(v15 + 72) * v7, v116 + *(v15 + 72) * *&v40[16 * v77 + 32], v116 + *(v15 + 72) * a3, v76);
        v168 = v118;
        if (v118)
        {
          goto LABEL_176;
        }

        if (a3 < v7)
        {
          goto LABEL_178;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1BD5ED6C8(v40, v30, v31, v32, v33, v34, v35, v36);
        }

        if (v115 >= *(v40 + 2))
        {
          goto LABEL_179;
        }

        v119 = &v40[16 * v115];
        *(v119 + 4) = v7;
        *(v119 + 5) = a3;
        v183 = v40;
        sub_1BD5ED63C(v77);
        v40 = v183;
        v7 = *(v183 + 2);
        a3 = v117;
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v40[16 * v7 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_180;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_181;
      }

      v89 = &v40[16 * v7];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_183;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_186;
      }

      if (v93 >= v85)
      {
        v111 = &v40[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_190;
        }

        if (v80 < v114)
        {
          v77 = v7 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v38 = *(a3 + 8);
    v39 = v158;
    a4 = v151;
    if (v158 >= v38)
    {
      goto LABEL_164;
    }
  }

  v145 = v40;
  v120 = *a3;
  v121 = *(v15 + 72);
  v122 = *a3 + v121 * (v52 - 1);
  v123 = -v121;
  v149 = v41;
  v124 = v41 - v52;
  v167 = v52;
  v172 = v120;
  v155 = v121;
  v7 = v120 + v52 * v121;
  v158 = v69;
LABEL_121:
  v159 = v7;
  v160 = v124;
  v163 = v122;
  v125 = v122;
  while (1)
  {
    v126 = v178;
    sub_1BD5A0764(v7, v178);
    sub_1BD5A0764(v125, v182);
    v127 = *v181;
    v128 = v175;
    (*v181)(v175, v126, v6);
    v129 = *v180;
    v130 = (*v180)(v128, v6);
    if (v130 == v179)
    {
      v131 = 7;
    }

    else if (v130 == v177)
    {
      v131 = 5;
    }

    else if (v130 == v171)
    {
      v131 = 4;
    }

    else if (v130 == v169)
    {
      v131 = 3;
    }

    else if (v130 == v164)
    {
      v131 = 1;
    }

    else if (v130 == v157)
    {
      v131 = 0;
    }

    else if (v130 == v153)
    {
      v131 = 6;
    }

    else if (v130 == v150)
    {
      v131 = 2;
    }

    else
    {
      (*v147)(v175, v6);
      v131 = 8;
    }

    v132 = v176;
    v127(v176, v182, v6);
    v133 = v129(v132, v6);
    if (v133 == v179)
    {
      v134 = 7;
    }

    else if (v133 == v177)
    {
      v134 = 5;
    }

    else if (v133 == v171)
    {
      v134 = 4;
    }

    else if (v133 == v169)
    {
      v134 = 3;
    }

    else if (v133 == v164)
    {
      v134 = 1;
    }

    else if (v133 == v157)
    {
      v134 = 0;
    }

    else if (v133 == v153)
    {
      v134 = 6;
    }

    else if (v133 == v150)
    {
      v134 = 2;
    }

    else
    {
      (*v147)(v176, v6);
      v134 = 8;
    }

    sub_1BD0DE53C(v182, &qword_1EBD49BE0, &qword_1BE0DFB00);
    sub_1BD0DE53C(v178, &qword_1EBD49BE0, &qword_1BE0DFB00);
    if (v131 >= v134)
    {
LABEL_120:
      v122 = v163 + v155;
      v124 = v160 - 1;
      v7 = v159 + v155;
      ++v167;
      v70 = v158;
      if (v167 != v158)
      {
        goto LABEL_121;
      }

      a3 = v154;
      v15 = v165;
      v40 = v145;
      v41 = v149;
      if (v158 < v149)
      {
        goto LABEL_193;
      }

      goto LABEL_69;
    }

    if (!v172)
    {
      break;
    }

    v135 = v173;
    sub_1BD5A3384(v7, v173);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD5A3384(v135, v125);
    v125 += v123;
    v7 += v123;
    if (__CFADD__(v124++, 1))
    {
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}