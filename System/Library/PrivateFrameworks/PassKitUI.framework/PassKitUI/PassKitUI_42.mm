id PKPaymentOfferConfirmationRecordDetailCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v15;
}

id PKPaymentOfferConfirmationRecordDetailCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentOfferConfirmationRecordDetailCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentOfferConfirmationRecordDetailCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(void *a1, id a2, void *a3)
{
  if ([a2 transactionStatus] == 2)
  {
    return 0;
  }

  if ([a2 isIssuerInstallmentTransaction])
  {
    result = 3;
  }

  else
  {
    result = 0;
  }

  if (a1)
  {
    v7 = a1;
    v8 = [v7 type];
    if (v8 > 1)
    {
      if (v8 == 3 && a3)
      {
        v19 = objc_allocWithZone(MEMORY[0x1E69B8C98]);
        v20 = a3;
        v21 = [v19 initWithTransaction_];
        LODWORD(v19) = [v20 eligibleWithConfiguration_];

        return v19;
      }
    }

    else if (v8 == 1)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = objc_allocWithZone(MEMORY[0x1E69B8C98]);
        v12 = v7;
        v13 = [v11 initWithTransaction_];
        if (!a3 || ([a3 eligibleWithConfiguration_] & 1) != 0)
        {
          v14 = [v10 selectedOffer];
          v15 = [v14 installmentSelectedPaymentOffer];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
            v18 = [v17 requiresUserAction];

            if (v18)
            {

              return 1;
            }

            if ([v10 processedEvents])
            {
              v22 = [v17 installmentAssessment];
              if (v22)
              {
                v23 = v22;
                v24 = [v22 isEligible];

                if (v24)
                {
                  return 3;
                }

                else
                {
                  return 2;
                }
              }

              goto LABEL_30;
            }
          }

          else
          {

            if ([v10 processedEvents])
            {
LABEL_30:

              return 0;
            }
          }

          return 1;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD487FF0(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 3 || a1 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
      return a1;
    }

    if (a1 == 1)
    {
LABEL_9:
      (*(v3 + 104))(v6, *MEMORY[0x1E69B8078], v2, v4);
      a1 = sub_1BE04B714();
      (*(v3 + 8))(v6, v2);
      return a1;
    }
  }

  v8[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

unint64_t sub_1BD488194(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BD4881B0()
{
  result = qword_1EBD47200;
  if (!qword_1EBD47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47200);
  }

  return result;
}

unint64_t sub_1BD488208()
{
  result = qword_1EBD47210;
  if (!qword_1EBD47210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47210);
  }

  return result;
}

unint64_t sub_1BD4882BC()
{
  result = qword_1EBD47230;
  if (!qword_1EBD47230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47220, &qword_1BE0D9268);
    sub_1BD0DE4F4(&qword_1EBD47238, &qword_1EBD47240, &qword_1BE0D9278, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47230);
  }

  return result;
}

void sub_1BD4883A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_1BD4883EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BE053274();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories] = &unk_1F3B8E1B0;
  *&v3[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton] = 0;
  v13 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  if (a3)
  {
    v14 = sub_1BE052404();
    a3, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  v22 = type metadata accessor for PKChangeTransactionCategoryCell();
  v36.receiver = v3;
  v36.super_class = v22;
  v23 = objc_msgSendSuper2(&v36, sel_initWithStyle_reuseIdentifier_, a1, v14);

  v24 = v23;
  sub_1BE053224();
  v25 = [objc_opt_self() labelColor];
  sub_1BE0531E4();
  v26 = [v24 traitCollection];

  v27 = [v26 preferredContentSizeCategory];
  sub_1BD489F18(v27);

  _UISolariumFeatureFlagEnabled();
  sub_1BE053144();
  sub_1BD0E5E8C(0, &qword_1EBD4A9F0, 0x1E69DC738);
  (*(v7 + 16))(v9, v12, v6);
  v28 = sub_1BE053284();
  [v28 setShowsMenuAsPrimaryAction_];
  v29 = v24;
  v30 = [v29 contentView];
  v31 = v28;
  [v30 addSubview_];

  v32 = *&v29[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  *&v29[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton] = v31;
  v33 = v31;

  v34 = [v29 textLabel];
  PKAccessibilityIDSet(v34, *MEMORY[0x1E69B9D20]);

  PKAccessibilityIDSet(v33, *MEMORY[0x1E69B9DC0]);
  [v29 setSelectionStyle_];

  (*(v7 + 8))(v12, v6);
  return v29;
}

void sub_1BD4888D8(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1BE04D324();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v117 - v18;
  [v5 pkui_effectiveLayoutMargins];
  v21 = PKEdgeInsetsInsetRectTm(a2, a3, a4, a5, 4.0, v20);
  v23 = v22;
  v126 = v24;
  v127 = v25;
  v26 = [v5 _shouldReverseLayoutDirection];
  v27 = v26;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = 2;
  }

  v118 = v28;
  if (v26)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  v121 = v29;
  v30 = [v5 textLabel];
  if (!v30)
  {
    __break(1u);
    goto LABEL_38;
  }

  v31 = v30;
  v124 = a2;
  [v30 sizeThatFits_];
  v33 = v32;
  v35 = v34;

  v36 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v37 = *&v6[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v37 sizeThatFits_];
  v125 = v39;
  v40 = *&v6[v36];
  if (!v40)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v41 = v38;
  v122 = a3;
  v123 = a4;
  v42 = v40;
  sub_1BE053294();

  v43 = sub_1BE053274();
  v44 = a5;
  if ((*(*(v43 - 8) + 48))(v19, 1, v43))
  {
    v45 = *(MEMORY[0x1E69DC5C0] + 24);
    v119 = *(MEMORY[0x1E69DC5C0] + 8);
    v120 = v45;
  }

  else
  {
    sub_1BE053154();
    v119 = v46;
    v120 = v47;
  }

  v49 = *&v126;
  v48 = *&v127;
  sub_1BD4895D8(v19);
  v128.origin.x = v21;
  *&v128.origin.y = v23;
  v128.size.width = v49;
  v128.size.height = v48;
  v50 = CGRectGetWidth(v128) + -8.0;
  sub_1BE04D2F4();
  v51 = [v6 traitCollection];
  sub_1BE04D2C4();
  v53 = v52;

  (*(v13 + 8))(v15, v12);
  if (*&v33 + *&v125 > v50)
  {
    if (*&v35 + *&v41 + 4.0 > v53)
    {
      v54 = *&v35 + *&v41 + 4.0;
    }

    else
    {
      v54 = v53;
    }

    if ((a1 & 1) == 0)
    {
      v117 = v54;
      v55 = [v6 textLabel];
      if (v55)
      {
        v56 = v55;
        v57 = v44;
        v58 = PKContentAlignmentMake();
        v59.n128_u64[0] = v33;
        v60.n128_u64[0] = v35;
        v61 = *&v21;
        v62.n128_f64[0] = v21;
        v63 = v23;
        v64.n128_u64[0] = v23;
        v65 = v126;
        v66 = v127;
        v67.n128_u64[0] = v126;
        v68.n128_u64[0] = v127;
        PKSizeAlignedInRect(v58, v59, v60, v62, v64, v67, v68, v69);
        [v56 setFrame_];

        v70 = *&v6[v36];
        v72 = v122;
        v71 = v123;
        if (v70)
        {
          v73 = v70;
          v74 = PKContentAlignmentMake();
          v75.n128_u64[0] = v125;
          v76.n128_u64[0] = v41;
          v77.n128_u64[0] = v61;
          v78.n128_u64[0] = v63;
          v79.n128_u64[0] = v65;
          v80.n128_u64[0] = v66;
          PKSizeAlignedInRect(v74, v75, v76, v77, v78, v79, v80, v81);
          v86 = -v119;
          if (v27)
          {
            v86 = v120;
          }

LABEL_35:
          v129 = CGRectOffset(*&v82, v86, 0.0);
          [v73 setFrame_];

          v90 = v124;
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_30:
    v57 = v44;
    v72 = v122;
    v71 = v123;
    v90 = v124;
LABEL_36:
    v114 = v72;
    v115 = v71;
    v116 = v57;
    CGRectGetWidth(*&v90);
    return;
  }

  if (*&v35 > *&v41)
  {
    v87 = *&v35;
  }

  else
  {
    v87 = *&v41;
  }

  v88 = v87 + 8.0;
  if (v88 > v53)
  {
    v89 = v88;
  }

  else
  {
    v89 = v53;
  }

  if (a1)
  {
    goto LABEL_30;
  }

  v117 = v89;
  v91 = [v6 textLabel];
  if (!v91)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v92 = v91;
  v57 = v44;
  v93 = PKContentAlignmentMake();
  v94.n128_u64[0] = v33;
  v95.n128_u64[0] = v35;
  v96 = *&v21;
  v97.n128_f64[0] = v21;
  v98 = v23;
  v99.n128_u64[0] = v23;
  v100 = v126;
  v101 = v127;
  v102.n128_u64[0] = v126;
  v103.n128_u64[0] = v127;
  PKSizeAlignedInRect(v93, v94, v95, v97, v99, v102, v103, v104);
  [v92 setFrame_];

  v105 = *&v6[v36];
  v72 = v122;
  v71 = v123;
  if (v105)
  {
    v73 = v105;
    v106 = PKContentAlignmentMake();
    v107.n128_u64[0] = v125;
    v108.n128_u64[0] = v41;
    v109.n128_u64[0] = v96;
    v110.n128_u64[0] = v98;
    v111.n128_u64[0] = v100;
    v112.n128_u64[0] = v101;
    PKSizeAlignedInRect(v106, v107, v108, v109, v110, v111, v112, v113);
    v86 = -v119;
    if (!v27)
    {
      v86 = v120;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
}

void sub_1BD488E1C(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v87 = sub_1BE04D214();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = v77 - v10;
  v86 = sub_1BE053254();
  v11 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v77 - v19;
  v88 = v4;
  v21 = [v4 textLabel];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052404();
    v24 = PKLocalizedPaymentString(v23);

    [v22 setText_];
  }

  v25 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v26 = *&v88[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (!v26)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = v26;
  sub_1BE053294();
  v28 = sub_1BE053274();
  if ((*(*(v28 - 8) + 48))(v20, 1, v28))
  {
    sub_1BD3BE7F8(v20, v16);
    sub_1BE0532A4();

    sub_1BD4895D8(v20);
  }

  else
  {
    v29 = MEMORY[0x1E69DC588];
    if ((a2 & 1) == 0)
    {
      v29 = MEMORY[0x1E69DC580];
    }

    (*(v11 + 104))(v13, *v29, v86);
    sub_1BE053264();
    sub_1BE0532A4();
  }

  v30 = *&v88[v25];
  if (!v30)
  {
    goto LABEL_41;
  }

  [v30 setUserInteractionEnabled_];
  if ((a2 & 1) == 0)
  {
    v58 = *&v88[v25];
    if (v58)
    {
      [v58 setMenu_];
LABEL_37:
      v68 = v88;
      sub_1BD48978C(a1);
      [v68 setNeedsLayout];
      return;
    }

    goto LABEL_42;
  }

  v79 = v25;
  v32 = *&v88[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories];
  v33 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = (v85 + 8);
    v85 = *(v32 + 16);
    v86 = v32 + 32;
    v78 = v34 - 1;
    *&v31 = 134217984;
    v84 = v31;
    v80 = a1;
    do
    {
      a1 = v35;
      v37 = v85;
      while (1)
      {
        if (a1 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v38 = *(v86 + 8 * a1);
        v39 = PKLocalizedStringFromMerchantCategory();
        if (!v39)
        {
          v20 = v83;
          sub_1BE04D1E4();
          v51 = sub_1BE04D204();
          v54 = sub_1BE052C34();
          if (!os_log_type_enabled(v51, v54))
          {
            goto LABEL_16;
          }

          v53 = swift_slowAlloc();
          *v53 = v84;
          *(v53 + 4) = v38;
          _os_log_impl(&dword_1BD026000, v51, v54, "Failed to localize transaction category %ld.", v53, 0xCu);
          goto LABEL_24;
        }

        v40 = v39;
        sub_1BE052434();
        v42 = v41;

        sub_1BD4899FC(v38);
        if (v50)
        {
          break;
        }

        v42, v43, v44, v45, v46, v47, v48, v49;
        sub_1BE04D1E4();
        v51 = sub_1BE04D204();
        v52 = sub_1BE052C34();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = v84;
          *(v53 + 4) = v38;
          _os_log_impl(&dword_1BD026000, v51, v52, "Failed to create an icon for transaction category %ld.", v53, 0xCu);
          v20 = v8;
LABEL_24:
          MEMORY[0x1BFB45F20](v53, -1, -1);
          goto LABEL_15;
        }

        v20 = v8;
LABEL_15:
        v37 = v85;
LABEL_16:
        ++a1;

        (*v36)(v20, v87);
        if (v37 == a1)
        {
          a1 = v80;
          goto LABEL_33;
        }
      }

      v77[1] = v38 == v80;
      v77[0] = sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v38;
      v56[4] = v81;
      v56[5] = v82;
      sub_1BE048964();
      v20 = sub_1BE0530B4();
      MEMORY[0x1BFB3F7A0]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      v35 = a1 + 1;
      sub_1BE0527C4();
      v33 = v89;
      v57 = v78 == a1;
      a1 = v80;
    }

    while (!v57);
  }

LABEL_33:
  v20 = *&v88[v79];
  if (v20)
  {
    if (v33 >> 62)
    {
LABEL_39:
      sub_1BD0E5E8C(0, &unk_1EBD53960, 0x1E69DCC78);
      v69 = v20;
      sub_1BE048C84();
      sub_1BE0539A4();
      v33, v70, v71, v72, v73, v74, v75, v76;
    }

    else
    {
      v59 = v20;
      sub_1BE048C84();
      sub_1BE053BA4();
      sub_1BD0E5E8C(0, &unk_1EBD53960, 0x1E69DCC78);
    }

    v33, v60, v61, v62, v63, v64, v65, v66;
    sub_1BD0E5E8C(0, &qword_1EBD47258, 0x1E69DCC60);
    v67 = sub_1BE052F64();
    [v20 setMenu_];

    goto LABEL_37;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1BD4895D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD489640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1BD48978C(a3);
  }

  return a4(a3);
}

void sub_1BD48978C(uint64_t a1)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton;
  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton];
  if (v12)
  {
    v13 = v12;
    sub_1BE053294();
    v14 = sub_1BE053274();
    v15 = *(*(v14 - 8) + 48);
    if (v15(v10, 1, v14))
    {
      sub_1BD3BE7F8(v10, v4);
      sub_1BE0532A4();

      sub_1BD4895D8(v10);
      v16 = *&v1[v11];
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1BD4899FC(v20);
      sub_1BE053214();
      sub_1BE0532A4();

      v16 = *&v1[v11];
      if (v16)
      {
LABEL_4:
        v10 = v16;
        sub_1BE053294();
        if (v15(v7, 1, v14))
        {
          sub_1BD3BE7F8(v7, v4);
          sub_1BE0532A4();

          sub_1BD4895D8(v7);
LABEL_11:
          [v1 setNeedsLayout];
          [v1 layoutIfNeeded];
          return;
        }

LABEL_8:
        v17 = PKLocalizedStringFromMerchantCategory();
        if (v17)
        {
          v18 = v17;
          sub_1BE052434();
        }

        sub_1BE053234();
        sub_1BE0532A4();

        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1BD4899FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache];
  if ([v3 objectForKey_] || (v12 = objc_msgSend(v1, sel_traitCollection), v13 = objc_msgSend(v12, sel_preferredContentSizeCategory), sub_1BD489F18(v13), v13, v12, PKUIScreenScale(), (v14 = PKMapsIconForMerchantCategory()) == 0))
  {

    v10 = 0;
    v11 = 0;
LABEL_6:
    sub_1BD0D4744(v10, v11, v4, v5, v6, v7, v8, v9);
    return;
  }

  v15 = v14;
  [v14 size];
  v17 = v16;
  v19 = v18;
  [v15 size];
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v17;
  v23[5] = v19;
  v23[6] = v1;
  v23[7] = v15;
  v24 = swift_allocObject();
  v24[2] = sub_1BD48A5EC;
  v24[3] = v23;
  v25 = v23;
  v45[4] = sub_1BD1B6CB0;
  v46 = v24;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = sub_1BD4883A0;
  v45[3] = &block_descriptor_102;
  v26 = _Block_copy(v45);
  v27 = v46;
  v28 = v1;
  v29 = v15;
  sub_1BE048964();
  v27, v30, v31, v32, v33, v34, v35, v36;
  v37 = [v22 imageWithActions_];

  _Block_release(v26);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();
  v24, v38, v39, v40, v41, v42, v43, v44;
  if ((v15 & 1) == 0)
  {
    [v3 setObject:v37 forKey:v2];

    v10 = sub_1BD48A5EC;
    v11 = v25;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BD489D00(int a1, id a2, double a3, double a4, double a5, double a6, void *a7)
{
  v12 = [a2 traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  sub_1BD489F18(v13);
  v15 = v14;

  LODWORD(v13) = _UISolariumFeatureFlagEnabled();
  v16 = 4.0;
  if (v13)
  {
    v16 = 6.0;
  }

  v17 = [objc_opt_self() bezierPathWithRoundedRect:a3 cornerRadius:{a4, a5, a6, v15 * v16}];
  [v17 addClip];
  [a7 drawInRect_];
}

id PKChangeTransactionCategoryCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKChangeTransactionCategoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD489F18(uint64_t a1)
{
  v1 = sub_1BE052434();
  v3 = v2;
  v5 = sub_1BE052434();
  v11 = v1;
  v12 = v4;
  if (v11 == v5 && v3 == v4)
  {
    goto LABEL_45;
  }

  v14 = sub_1BE053B84();
  v3, v15, v16, v17, v18, v19, v20, v21;
  v12, v22, v23, v24, v25, v26, v27, v28;
  if (v14)
  {
    return;
  }

  v29 = sub_1BE052434();
  v31 = v30;
  v33 = sub_1BE052434();
  v39 = v29;
  v40 = v32;
  if (v39 == v33 && v31 == v32)
  {
    goto LABEL_21;
  }

  v42 = sub_1BE053B84();
  v31, v43, v44, v45, v46, v47, v48, v49;
  v40, v50, v51, v52, v53, v54, v55, v56;
  if ((v42 & 1) == 0)
  {
    v57 = sub_1BE052434();
    v3 = v58;
    v5 = sub_1BE052434();
    v59 = v57;
    v12 = v4;
    if (v59 == v5 && v3 == v4)
    {
      goto LABEL_45;
    }

    v60 = sub_1BE053B84();
    v3, v61, v62, v63, v64, v65, v66, v67;
    v12, v68, v69, v70, v71, v72, v73, v74;
    if ((v60 & 1) == 0)
    {
      v75 = sub_1BE052434();
      v3 = v76;
      v5 = sub_1BE052434();
      v77 = v75;
      v12 = v4;
      if (v77 == v5 && v3 == v4)
      {
        goto LABEL_45;
      }

      v78 = sub_1BE053B84();
      v3, v79, v80, v81, v82, v83, v84, v85;
      v12, v86, v87, v88, v89, v90, v91, v92;
      if (v78)
      {
        return;
      }

      v93 = sub_1BE052434();
      v31 = v94;
      v33 = sub_1BE052434();
      v95 = v93;
      v40 = v32;
      if (v95 == v33 && v31 == v32)
      {
        goto LABEL_21;
      }

      v103 = sub_1BE053B84();
      v31, v104, v105, v106, v107, v108, v109, v110;
      v40, v111, v112, v113, v114, v115, v116, v117;
      if ((v103 & 1) == 0)
      {
        v118 = sub_1BE052434();
        v3 = v119;
        v5 = sub_1BE052434();
        v120 = v118;
        v12 = v4;
        if (v120 == v5 && v3 == v4)
        {
          goto LABEL_45;
        }

        v121 = sub_1BE053B84();
        v3, v122, v123, v124, v125, v126, v127, v128;
        v12, v129, v130, v131, v132, v133, v134, v135;
        if ((v121 & 1) == 0)
        {
          v136 = sub_1BE052434();
          v3 = v137;
          v5 = sub_1BE052434();
          v138 = v136;
          v12 = v4;
          if (v138 == v5 && v3 == v4)
          {
            goto LABEL_45;
          }

          v139 = sub_1BE053B84();
          v3, v140, v141, v142, v143, v144, v145, v146;
          v12, v147, v148, v149, v150, v151, v152, v153;
          if (v139)
          {
            return;
          }

          v154 = sub_1BE052434();
          v3 = v155;
          v5 = sub_1BE052434();
          v12 = v4;
          if (v154 == v5 && v3 == v4)
          {
            goto LABEL_45;
          }

          v156 = sub_1BE053B84();
          v3, v157, v158, v159, v160, v161, v162, v163;
          v12, v164, v165, v166, v167, v168, v169, v170;
          if (v156)
          {
            return;
          }

          v171 = sub_1BE052434();
          v3 = v172;
          v5 = sub_1BE052434();
          v12 = v4;
          if (v171 == v5 && v3 == v4)
          {
            goto LABEL_45;
          }

          v173 = sub_1BE053B84();
          v3, v174, v175, v176, v177, v178, v179, v180;
          v12, v181, v182, v183, v184, v185, v186, v187;
          if (v173)
          {
            return;
          }

          v188 = sub_1BE052434();
          v31 = v189;
          v33 = sub_1BE052434();
          v40 = v32;
          if (v188 != v33 || v31 != v32)
          {
            v190 = sub_1BE053B84();
            v31, v191, v192, v193, v194, v195, v196, v197;
            v40, v198, v199, v200, v201, v202, v203, v204;
            if (v190)
            {
              return;
            }

            v205 = sub_1BE052434();
            v3 = v206;
            v5 = sub_1BE052434();
            v12 = v4;
            if (v205 != v5 || v3 != v4)
            {
              v214 = sub_1BE053B84();
              v3, v215, v216, v217, v218, v219, v220, v221;
              v12, v222, v223, v224, v225, v226, v227, v228;
              if ((v214 & 1) == 0)
              {
                v229 = sub_1BE052434();
                v231 = v230;
                v233 = sub_1BE052434();
                v239 = v232;
                if (v229 == v233 && v231 == v232)
                {
                  v231, v232, v233, v234, v235, v236, v237, v238;
                  v239, v240, v241, v242, v243, v244, v245, v246;
                }

                else
                {
                  sub_1BE053B84();
                  v231, v247, v248, v249, v250, v251, v252, v253;
                  v239, v254, v255, v256, v257, v258, v259, v260;
                }
              }

              return;
            }

LABEL_45:
            v3, v4, v5, v6, v7, v8, v9, v10;
            v12, v207, v208, v209, v210, v211, v212, v213;
            return;
          }

LABEL_21:
          v31, v32, v33, v34, v35, v36, v37, v38;
          v40, v96, v97, v98, v99, v100, v101, v102;
        }
      }
    }
  }
}

void sub_1BD48A548()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_categories) = &unk_1F3B8E208;
  *(v0 + OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_changeCategoryButton) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI31PKChangeTransactionCategoryCell_transactionCategoryIconsCache;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD48A5FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 4));
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocClassInstance();
}

id sub_1BD48A678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    ObjectType = swift_getObjectType();
    if ((*(a2 + 8))(ObjectType, a2) == 0xD000000000000015 && 0x80000001BE12B2D0 == v6)
    {
      v6, v6, v7, 0x80000001BE12B2D0, v8, v9, v10, v11;
      v22 = v2[8];
      if (v22)
      {
LABEL_8:
        v23 = v3[2];
        v24 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
        v25 = v22;
        v26 = sub_1BE048964();
        v27 = sub_1BD989980(v26, v25);
        v23, v28, v29, v30, v31, v32, v33, v34;

        return v27;
      }
    }

    else
    {
      v13 = v6;
      v14 = sub_1BE053B84();
      v13, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        v22 = v3[8];
        if (v22)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BE0B6CA0;
    v38 = v2[2];
    v37 = v2[3];
    v39 = type metadata accessor for ProvisioningDeviceFullFlowItem();
    v40 = objc_allocWithZone(v39);
    v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete] = 0;
    *&v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v41 = &v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier];
    *v41 = 0xD000000000000012;
    v41[1] = 0x80000001BE12B2F0;
    v42 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration;
    v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_dismissalConfiguration] = 2;
    *&v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context] = v38;
    *&v40[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_configuration] = v37;
    v40[v42] = 1;
    v67.receiver = v40;
    v67.super_class = v39;
    sub_1BE048964();
    sub_1BE048964();
    *(v36 + 32) = objc_msgSendSuper2(&v67, sel_init);
    *(v36 + 40) = &off_1F3BC2038;
    v43 = objc_allocWithZone(type metadata accessor for ProvisioningPushProvAddPassFlowItem());
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v44 = sub_1BD89A220(v38, v37, v3);
    v38, v45, v46, v47, v48, v49, v50, v51;
    v37, v52, v53, v54, v55, v56, v57, v58;
    v3, v59, v60, v61, v62, v63, v64, v65;
    *(v36 + 48) = v44;
    *(v36 + 56) = &off_1F3BC2378;
    type metadata accessor for UIStaticFlowSection();
    v66 = swift_allocObject();
    *(v66 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = v66;
    *(v66 + 40) = 0xD000000000000015;
    *(v66 + 48) = 0x80000001BE12B2D0;
    *(v66 + 56) = v36;
    *(v66 + 32) = 514;
  }

  return result;
}

uint64_t sub_1BD48A950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB0B8);
  __swift_project_value_buffer(v10, qword_1EBDAB0B8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

uint64_t sub_1BD48AC60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v57 = &v36 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v36 - v3;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = sub_1BE04A884();
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47368, &qword_1BE0D97C8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF18, &unk_1BE0D97D0);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v49 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B6CA0;
  v50 = v15;
  v55 = v15 + v14;
  v56 = v13;
  v48 = *(v13 + 48);
  *(v15 + v14) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  v39 = *(v6 + 16);
  v39(v8, v52, v5);
  sub_1BE04B0A4();
  v53 = v12;
  sub_1BE04A894();
  v17 = *(v10 + 56);
  v16 = v10 + 56;
  v47 = v17;
  v18 = v51;
  v17(v51, 1, 1, v54);
  v45 = sub_1BE048BB4();
  v19 = *(v45 - 8);
  v44 = *(v19 + 56);
  v46 = v19 + 56;
  v44(v57, 1, 1, v45);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0, &qword_1BE0EEDF0);
  v21 = *(v16 + 16);
  v42 = v20;
  v43 = v21;
  v41 = *(v16 + 24);
  v22 = v5;
  v37 = v5;
  v23 = v18;
  v38 = (v41 + 32) & ~v41;
  v24 = swift_allocObject();
  v36 = v6 + 16;
  v40 = xmmword_1BE0B69E0;
  *(v24 + 16) = xmmword_1BE0B69E0;
  sub_1BE052354();
  v25 = v8;
  v26 = v8;
  v27 = v52;
  v28 = v22;
  v29 = v39;
  v39(v25, v52, v28);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v30 = v55;
  sub_1BE048BD4();
  v31 = *(v56 + 48);
  v48 = (v30 + v49);
  v49 = v31;
  *v48 = 1;
  sub_1BE052354();
  v32 = v27;
  v33 = v37;
  v29(v26, v32, v37);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v47(v23, 1, 1, v54);
  v44(v57, 1, 1, v45);
  *(swift_allocObject() + 16) = v40;
  sub_1BE052354();
  v29(v26, v52, v33);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048BD4();
  v34 = sub_1BD1ACF7C(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAB0D0 = v34;
  return result;
}

uint64_t sub_1BD48B398(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x7761726468746977;
  }

  else
  {
    v9 = 0x79656E6F4D646461;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xED000079656E6F4DLL;
  }

  if (*a2)
  {
    v11 = 0x7761726468746977;
  }

  else
  {
    v11 = 0x79656E6F4D646461;
  }

  if (*a2)
  {
    v12 = 0xED000079656E6F4DLL;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1BE053B84();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

unint64_t sub_1BD48B450()
{
  result = qword_1EBD47268;
  if (!qword_1EBD47268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47268);
  }

  return result;
}

uint64_t sub_1BD48B4A4()
{
  v1 = *v0;
  sub_1BE053D04();
  if (v1)
  {
    v2 = 0xED000079656E6F4DLL;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD48B534(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xED000079656E6F4DLL;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD48B5B0(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  if (v2)
  {
    v3 = 0xED000079656E6F4DLL;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD48B63C(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1BD48B69C(uint64_t *a1@<X8>)
{
  v2 = 0x79656E6F4D646461;
  if (*v1)
  {
    v2 = 0x7761726468746977;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xED000079656E6F4DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BD48B6EC()
{
  result = qword_1EBD47270;
  if (!qword_1EBD47270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47270);
  }

  return result;
}

unint64_t sub_1BD48B744()
{
  result = qword_1EBD47278;
  if (!qword_1EBD47278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47278);
  }

  return result;
}

unint64_t sub_1BD48B79C()
{
  result = qword_1EBD47280;
  if (!qword_1EBD47280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47280);
  }

  return result;
}

unint64_t sub_1BD48B7F4()
{
  result = qword_1EBD47288;
  if (!qword_1EBD47288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47288);
  }

  return result;
}

unint64_t sub_1BD48B848()
{
  result = qword_1EBD47290;
  if (!qword_1EBD47290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47290);
  }

  return result;
}

unint64_t sub_1BD48B89C()
{
  result = qword_1EBD47298;
  if (!qword_1EBD47298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47298);
  }

  return result;
}

unint64_t sub_1BD48B8F4()
{
  result = qword_1EBD472A0;
  if (!qword_1EBD472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472A0);
  }

  return result;
}

unint64_t sub_1BD48B9D0()
{
  result = qword_1EBD472A8;
  if (!qword_1EBD472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472A8);
  }

  return result;
}

uint64_t sub_1BD48BA24(uint64_t a1)
{
  v2 = sub_1BD48B9D0();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD48BA74()
{
  result = qword_1EBD472B0;
  if (!qword_1EBD472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472B0);
  }

  return result;
}

unint64_t sub_1BD48BACC()
{
  result = qword_1EBD472B8;
  if (!qword_1EBD472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472B8);
  }

  return result;
}

unint64_t sub_1BD48BB24()
{
  result = qword_1EBD472C0;
  if (!qword_1EBD472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472C0);
  }

  return result;
}

uint64_t sub_1BD48BB78()
{
  if (qword_1EBD36C10 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD48BBD4(uint64_t a1)
{
  sub_1BD48B8F4();

  return sub_1BE048E14();
}

unint64_t sub_1BD48BC78()
{
  result = qword_1EBD472D8;
  if (!qword_1EBD472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472D8);
  }

  return result;
}

unint64_t sub_1BD48BCD0()
{
  result = qword_1EBD472E0;
  if (!qword_1EBD472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472E0);
  }

  return result;
}

uint64_t sub_1BD48BD5C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB0D8);
  __swift_project_value_buffer(v6, qword_1EBDAB0D8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD48BF70@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47320, &qword_1BE0D9790);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47328, &qword_1BE0D9798);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v29 = v25 - v13;
  v38 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330, &qword_1BE0D97A0);
  v25[3] = sub_1BD48E044();
  v14 = sub_1BD48B89C();
  v25[2] = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330, &qword_1BE0D97A0, MEMORY[0x1E695A498]);
  sub_1BE048F04();
  v25[1] = sub_1BD0DE4F4(&qword_1EBD47340, &qword_1EBD47328, &qword_1BE0D9798, MEMORY[0x1E695A670]);
  sub_1BE048ED4();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_1BE048F04();
  sub_1BE048ED4();
  v36(v15, v6);
  v16 = v30;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD47348, &qword_1EBD47320, &qword_1BE0D9790, MEMORY[0x1E695A710]);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_1BE048ED4();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_1BE048EC4();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_1BD48C488@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47350, &qword_1BE0D97A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47358, &qword_1BE0D97B0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330, &qword_1BE0D97A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1BD48E044();
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47360, &unk_1BE0D97B8);
  sub_1BE048CC4();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v21 = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330, &qword_1BE0D97A0, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v9, &type metadata for TransferSavingsIntent, v6, v21);
  v22 = *(v7 + 8);
  v22(v9, v6);
  MEMORY[0x1BFB35E50](v12, &type metadata for TransferSavingsIntent, v6, v21);
  return (v22)(v12, v6);
}

uint64_t sub_1BD48C75C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47350, &qword_1BE0D97A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47330, &qword_1BE0D97A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_1BD48E044();
  sub_1BE048CF4();
  sub_1BE048CA4();
  v9 = sub_1BD0DE4F4(&qword_1EBD47338, &qword_1EBD47330, &qword_1BE0D97A0, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v5, &type metadata for TransferSavingsIntent, v2, v9);
  v10 = *(v3 + 8);
  v10(v5, v2);
  MEMORY[0x1BFB35E50](v8, &type metadata for TransferSavingsIntent, v2, v9);
  return (v10)(v8, v2);
}

uint64_t sub_1BD48C978(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1BE04D214();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v2[25] = swift_task_alloc();
  v4 = sub_1BE04AA64();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1BE04A3B4();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1BE04CFC4();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v7 = sub_1BE04CFE4();
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD48CBF8, 0, 0);
}

uint64_t sub_1BD48CBF8(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:TransferSavingsIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[37];
  v6 = v1[38];
  v9 = v1[35];
  v8 = v1[36];
  v11 = v1[33];
  v10 = v1[34];
  v12 = v1[32];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  v1[39] = v13;
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v14 = [objc_opt_self() sharedInstance];
  v1[40] = v14;
  if (v14)
  {
    v15 = v14;
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_1BD48CFEC;
    v16 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308, &unk_1BE0F5B00);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BD16E918;
    v1[13] = &block_descriptor_103;
    v1[14] = v16;
    [v15 defaultAccountForFeature:5 completion:v1 + 10];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }

  else
  {
    sub_1BE04D074();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "SavingsTransferIntent: Failed to get PKAccountService", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v21 = v1[22];
    v20 = v1[23];
    v22 = v1[21];

    (*(v21 + 8))(v20, v22);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD48DA08(v13);
    v13, v23, v24, v25, v26, v27, v28, v29;

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_1BD48CFEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1BD48D918;
  }

  else
  {
    v2 = sub_1BD48D0FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1BD48D0FC(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 336) = v2;
  if (!v2)
  {
    sub_1BE04D074();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "SavingsTransferIntent: Savings account not found", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    v8 = *(v1 + 312);
    v9 = *(v1 + 320);
    v15 = *(v1 + 192);
    v16 = *(v1 + 168);
    v17 = *(v1 + 176);

    (*(v17 + 8))(v15, v16);
    sub_1BD135218();
    swift_allocError();
    *v18 = 5;
    swift_willThrow();
    goto LABEL_15;
  }

  if ([v2 state] - 1 >= 3)
  {
    v8 = *(v1 + 312);
    v9 = *(v1 + 320);
    sub_1BD135218();
    swift_allocError();
    v11 = 5;
    goto LABEL_14;
  }

  sub_1BE048874();
  if (*(v1 + 352))
  {
    if (([v2 supportsOneTimeWithdrawal] & 1) == 0 && !objc_msgSend(v2, sel_supportsOneTimeWithdrawalWithAppleCash))
    {
      goto LABEL_9;
    }

    result = [v2 savingsDetails];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result accountSummary];

    v6 = [v5 currentBalance];
    if (!v6 || (v7 = [v6 pk_isPositiveNumber], v6, (v7 & 1) == 0))
    {
LABEL_9:
      v8 = *(v1 + 312);
      v9 = *(v1 + 320);
      sub_1BD135218();
      swift_allocError();
      v11 = 8;
LABEL_14:
      *v10 = v11;
      swift_willThrow();

LABEL_15:
LABEL_16:
      sub_1BD48DA08(v8);
      v8, v19, v20, v21, v22, v23, v24, v25;

      v26 = *(v1 + 8);

      return v26();
    }
  }

  else if (([v2 supportsOneTimeDeposit] & 1) == 0 && (objc_msgSend(v2, sel_supportsOneTimeDepositWithAppleCash) & 1) == 0)
  {
    v8 = *(v1 + 312);
    v9 = *(v1 + 320);
    sub_1BD135218();
    swift_allocError();
    v11 = 3;
    goto LABEL_14;
  }

  v27 = *(v1 + 208);
  v28 = *(v1 + 216);
  v29 = *(v1 + 200);
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v30 = sub_1BE052434();
  MEMORY[0x1BFB37400](v30);
  v31 = sub_1BD48DCF4();
  MEMORY[0x1BFB37410](v31);
  sub_1BE04A364();
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v8 = *(v1 + 312);
    v32 = *(v1 + 320);
    v34 = *(v1 + 240);
    v33 = *(v1 + 248);
    v35 = *(v1 + 232);
    sub_1BD226BBC(*(v1 + 200));
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
    goto LABEL_16;
  }

  (*(*(v1 + 216) + 32))(*(v1 + 224), *(v1 + 200), *(v1 + 208));
  v36 = swift_task_alloc();
  *(v1 + 344) = v36;
  *v36 = v1;
  v36[1] = sub_1BD48D5E0;
  v37 = *(v1 + 224);

  return sub_1BD0D7A54(v37);
}

uint64_t sub_1BD48D5E0(char a1)
{
  *(*v1 + 353) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD48D6E0, 0, 0);
}

uint64_t sub_1BD48D6E0(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 312);
  v4 = *(v1 + 320);
  if (*(v1 + 353) == 1)
  {
    v5 = *(v1 + 240);
    v6 = *(v1 + 248);
    v7 = *(v1 + 224);
    v8 = *(v1 + 232);
    v9 = *(v1 + 208);
    v10 = *(v1 + 216);
    sub_1BE048774();

    (*(v10 + 8))(v7, v9);
    (*(v5 + 8))(v6, v8);
  }

  else
  {
    v19 = *(v1 + 240);
    v20 = *(v1 + 224);
    v24 = *(v1 + 232);
    v25 = *(v1 + 248);
    v21 = *(v1 + 208);
    v22 = *(v1 + 216);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v25, v24);
  }

  sub_1BD48DA08(v3);
  v3, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1BD48D918(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[39];
  swift_willThrow();

  sub_1BD48DA08(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  v11 = v1[1];

  return v11();
}

uint64_t sub_1BD48DA08(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:TransferSavingsIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD48DCF4()
{
  sub_1BE048874();
  v0 = sub_1BE052434();
  v2 = v1;
  MEMORY[0x1BFB3F610](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 47;
}

uint64_t sub_1BD48DDB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1BD48DE58(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47310, &qword_1BE0D9788);
  v5 = sub_1BD0DE4F4(&qword_1EBD47318, &qword_1EBD47310, &qword_1BE0D9788, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD48BF70, 0, v4, a2, v5);
}

uint64_t sub_1BD48DF20(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD48C978(a1, v4);
}

uint64_t sub_1BD48DFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD48E098();
  *a1 = result;
  return result;
}

uint64_t sub_1BD48DFE8(uint64_t a1, double a2)
{
  v3 = sub_1BD48E044();

  return MEMORY[0x1EEDB2D90](a1, v3);
}

unint64_t sub_1BD48E044()
{
  result = qword_1EBD472F8;
  if (!qword_1EBD472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD472F8);
  }

  return result;
}

uint64_t sub_1BD48E098()
{
  v27 = sub_1BE048D74();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v24 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = &v21 - v6;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A874();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1BE04A884();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47300, &qword_1BE0D9750);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1EBDAB400);
  v16 = *(v9 + 16);
  v16(v11, v15, v8);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v16(v11, v15, v8);
  sub_1BE04B0A4();
  v17 = v22;
  sub_1BE04A894();
  (*(v14 + 56))(v17, 0, 1, v13);
  v28[0] = 0;
  v18 = sub_1BE048654();
  v19 = *(*(v18 - 8) + 56);
  v19(v23, 1, 1, v18);
  v19(v24, 1, 1, v18);
  (*(v25 + 104))(v26, *MEMORY[0x1E695A500], v27);
  sub_1BD48B9D0();
  return sub_1BE0488A4();
}

uint64_t type metadata accessor for SavingsSummaryView(uint64_t a1)
{
  result = qword_1EBD47378;
  if (!qword_1EBD47378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD48E624(uint64_t a1)
{
  type metadata accessor for AccountModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD48E6D8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccountDailyCash(319);
      if (v3 <= 0x3F)
      {
        sub_1BD48E76C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD48E6D8(uint64_t a1)
{
  if (!qword_1EBD47388)
  {
    type metadata accessor for AccountBalanceHistory(255);
    sub_1BD490A30(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory, &unk_1BE0B6F10);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD47388);
    }
  }
}

void sub_1BD48E76C(uint64_t a1)
{
  if (!qword_1EBD47390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD47390);
    }
  }
}

void sub_1BD48E7EC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v161 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B0, &qword_1BE0D9878);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v141 = (&v138 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B8, &qword_1BE0D9880);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v140 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = (&v138 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473C0, &qword_1BE0D9888);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v172 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v171 = &v138 - v11;
  v156 = sub_1BE04FAB4();
  v151 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v150 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473C8, &qword_1BE0D9890);
  v149 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v148 = &v138 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473D0, &qword_1BE0D9898);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v138 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473D8, &qword_1BE0D98A0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v170 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v138 - v17;
  v18 = type metadata accessor for SavingsBalanceHistoryView(0);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v138 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v138 - v24;
  v25 = type metadata accessor for SavingsSummaryView(0);
  v26 = v25 - 8;
  v164 = *(v25 - 8);
  v173 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v174 = (&v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v138 - v28;
  v29 = type metadata accessor for AccountBalanceInterestView(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473E0, &qword_1BE0D98A8);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v138 - v34;
  v35 = *(a1 + 24);
  v36 = *(v26 + 36);
  v163 = *a1;
  v37 = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370, &unk_1BE0D97E0);
  sub_1BE0516A4();
  type metadata accessor for AccountModel(0);
  sub_1BD490A30(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  *v31 = sub_1BE04E954();
  v31[1] = v39;
  type metadata accessor for AccountDailyCash(0);
  sub_1BD490A30(&qword_1EBD40EF0, type metadata accessor for AccountDailyCash, &unk_1BE0E36A0);
  v31[2] = sub_1BE04E954();
  v31[3] = v40;
  v41 = *(v29 + 28);
  *(v31 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v146 = v36;
  v42 = v162;
  v145 = v38;
  sub_1BE0516A4();
  v43 = v174;
  sub_1BD490CAC(a1, v174, type metadata accessor for SavingsSummaryView);
  v44 = (*(v164 + 80) + 16) & ~*(v164 + 80);
  v147 = *(v164 + 80);
  v45 = swift_allocObject();
  v164 = v44;
  sub_1BD4907F4(v43, v45 + v44, type metadata accessor for SavingsSummaryView);
  sub_1BD490A30(&qword_1EBD473E8, type metadata accessor for AccountBalanceInterestView, &unk_1BE0C9A8C);
  sub_1BD490740();
  sub_1BE051064();
  v45, v46, v47, v48, v49, v50, v51, v52;
  sub_1BD0DE53C(v42, &qword_1EBD40EC8, &unk_1BE0C9A60);
  sub_1BD490DD8(v31, type metadata accessor for AccountBalanceInterestView);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v53 = v186;
  v54 = v188;
  v55 = v190;
  v165 = v191;
  v206 = 1;
  v205 = v187;
  v204 = v189;
  v56 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v59 = v56;
  sub_1BE04D8B4(&v198);
  KeyPath, v60, v61, v62, v63, v64, v65, v66;
  v58, v67, v68, v69, v70, v71, v72, v73;
  v74 = v198;
  v75 = [v198 savingsDetails];

  if (v75)
  {
    v162 = v54;
    v163 = v53;
    v76 = [v75 currencyCode];

    v144 = v55;
    if (v76)
    {
      v77 = sub_1BE052434();
      v79 = v78;
    }

    else
    {
      v79 = 0xE300000000000000;
      v77 = 4477781;
    }

    sub_1BE0516C4();
    type metadata accessor for AccountBalanceHistory(0);
    sub_1BD490A30(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory, &unk_1BE0B6F10);
    *v22 = sub_1BE04E954();
    v22[1] = v80;
    v22[2] = v77;
    v22[3] = v79;
    v81 = v18[7];
    *(v22 + v81) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    *(v22 + v18[8]) = 0x4062C00000000000;
    *(v22 + v18[9]) = 0x4000000000000000;
    *(v22 + v18[10]) = 0x4049000000000000;
    *(v22 + v18[11]) = 0x4010000000000000;
    *(v22 + v18[12]) = 0x4010000000000000;
    *(v22 + v18[13]) = 0x4010000000000000;
    *(v22 + v18[14]) = 0x4000000000000000;
    *(v22 + v18[15]) = 0x3FE0000000000000;
    *(v22 + v18[16]) = 4;
    v82 = v18[17];
    *(v22 + v82) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
    swift_storeEnumTagMultiPayload();
    sub_1BD4907F4(v22, v175, type metadata accessor for SavingsBalanceHistoryView);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v146 = v192;
    v145 = v194;
    v143 = v196;
    v142 = v197;
    v185 = 1;
    v184 = v193;
    v183 = v195;
    v83 = sub_1BE04E964();
    v84 = swift_getKeyPath();
    sub_1BE04E974();
    v84, v85, v86, v87, v88, v89, v90, v91;

    v180 = v198;
    v181 = v199;
    v182 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47400, &qword_1BE0D99C8);
    sub_1BD49085C();
    sub_1BD4908B0();
    v92 = v148;
    sub_1BE0517D4();
    v93 = v150;
    sub_1BE04FAA4();
    v94 = sub_1BD0DE4F4(&qword_1EBD47428, &qword_1EBD473C8, &qword_1BE0D9890, MEMORY[0x1E697D690]);
    v95 = MEMORY[0x1E697C6A0];
    v96 = v153;
    v97 = v152;
    v98 = v156;
    sub_1BE050924();
    (*(v151 + 8))(v93, v98);
    (*(v149 + 8))(v92, v97);
    LOBYTE(v180) = v59[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range];
    v99 = v174;
    sub_1BD490CAC(a1, v174, type metadata accessor for SavingsSummaryView);
    v100 = v164;
    v101 = swift_allocObject();
    sub_1BD4907F4(v99, v101 + v100, type metadata accessor for SavingsSummaryView);
    v198 = v97;
    v199 = v98;
    v200 = v94;
    v201 = v95;
    swift_getOpaqueTypeConformance2();
    sub_1BD0E4948();
    v102 = v155;
    sub_1BE051074();
    v101, v103, v104, v105, v106, v107, v108, v109;
    (*(v154 + 8))(v96, v102);
    if (PKSavingsFDICSignageEnabled())
    {
      v110 = v171;
      (*(v159 + 56))(v171, 1, 1, v160);
    }

    else
    {
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v174 = v198;
      v173 = v200;
      v111 = v202;
      v112 = v203;
      LOBYTE(v180) = 1;
      v179 = v199;
      v178 = v201;
      v113 = sub_1BE04F504();
      v114 = v139;
      *v139 = v113;
      *(v114 + 8) = 0;
      *(v114 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47430, &qword_1BE0D99D8);
      sub_1BD490334();
      v115 = v180;
      v116 = v179;
      v117 = v178;
      v118 = v140;
      sub_1BD0DE19C(v114, v140, &qword_1EBD473B8, &qword_1BE0D9880);
      v119 = v141;
      *v141 = 0;
      *(v119 + 8) = v115;
      *(v119 + 16) = v174;
      *(v119 + 24) = v116;
      *(v119 + 32) = v173;
      *(v119 + 40) = v117;
      *(v119 + 48) = v111;
      *(v119 + 56) = v112;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47438, &qword_1BE0D99E0);
      sub_1BD0DE19C(v118, v119 + *(v120 + 48), &qword_1EBD473B8, &qword_1BE0D9880);
      sub_1BD0DE53C(v114, &qword_1EBD473B8, &qword_1BE0D9880);
      sub_1BD0DE53C(v118, &qword_1EBD473B8, &qword_1BE0D9880);
      v110 = v171;
      sub_1BD490C3C(v119, v171);
      (*(v159 + 56))(v110, 0, 1, v160);
    }

    v121 = *(v167 + 16);
    v122 = v166;
    v123 = v168;
    v121(v166, v177, v168);
    LODWORD(v155) = v206;
    LODWORD(v156) = v205;
    LODWORD(v159) = v204;
    sub_1BD490CAC(v175, v169, type metadata accessor for SavingsBalanceHistoryView);
    LODWORD(v160) = v185;
    LODWORD(v164) = v184;
    LODWORD(v173) = v183;
    v124 = v157;
    v174 = *(v157 + 16);
    v125 = v158;
    v174(v170, v176, v158);
    sub_1BD0DE19C(v110, v172, &qword_1EBD473C0, &qword_1BE0D9888);
    v126 = v161;
    v121(v161, v122, v123);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47440, &unk_1BE0D99E8);
    v128 = &v126[v127[12]];
    *v128 = 0;
    v128[8] = v155;
    *(v128 + 2) = v163;
    v128[24] = v156;
    *(v128 + 4) = v162;
    v128[40] = v159;
    v129 = v165;
    *(v128 + 6) = v144;
    *(v128 + 7) = v129;
    v130 = v169;
    sub_1BD490CAC(v169, &v126[v127[16]], type metadata accessor for SavingsBalanceHistoryView);
    v131 = &v126[v127[20]];
    *v131 = 0;
    v131[8] = v160;
    *(v131 + 2) = v146;
    v131[24] = v164;
    *(v131 + 4) = v145;
    v131[40] = v173;
    v132 = v142;
    *(v131 + 6) = v143;
    *(v131 + 7) = v132;
    v133 = v170;
    v174(&v126[v127[24]], v170, v125);
    v134 = v172;
    sub_1BD0DE19C(v172, &v126[v127[28]], &qword_1EBD473C0, &qword_1BE0D9888);
    sub_1BD0DE53C(v171, &qword_1EBD473C0, &qword_1BE0D9888);
    v135 = *(v124 + 8);
    v135(v176, v125);
    sub_1BD490DD8(v175, type metadata accessor for SavingsBalanceHistoryView);
    v136 = *(v167 + 8);
    v137 = v168;
    v136(v177, v168);
    sub_1BD0DE53C(v134, &qword_1EBD473C0, &qword_1BE0D9888);
    v135(v133, v125);
    sub_1BD490DD8(v130, type metadata accessor for SavingsBalanceHistoryView);
    v136(v166, v137);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD48FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(a3 + 24);
  sub_1BD0DE19C(a2, v7, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v12 = type metadata accessor for AccountBalance(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD40EC8, &unk_1BE0C9A60);
    v13 = sub_1BE04AF64();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  else
  {
    v14 = *(v12 + 20);
    v15 = sub_1BE04AF64();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v10, &v7[v14], v15);
    sub_1BD490DD8(v7, type metadata accessor for AccountBalance);
    (*(v16 + 56))(v10, 0, 1, v15);
  }

  v17 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD490D68(v10, v11 + v17);
  swift_endAccess();
  sub_1BD599178();
  return sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
}

uint64_t sub_1BD48FECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387E0, qword_1BE0B6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47420, &qword_1BE0D99D0);
  sub_1BD0DE4F4(&qword_1EBD47448, &qword_1EBD387E0, qword_1BE0B6E30, MEMORY[0x1E69E6338]);
  sub_1BD490934();
  sub_1BD490D14();
  return sub_1BE0519D4();
}

uint64_t sub_1BD48FFC0(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47458, &qword_1BE0D99F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47420, &qword_1BE0D99D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  LOBYTE(a1) = *a1;
  v34 = sub_1BD0DE59C(a1);
  v35 = v9;
  sub_1BD0DDEBC();
  *v5 = sub_1BE0506C4();
  *(v5 + 1) = v10;
  v5[16] = v11 & 1;
  *(v5 + 3) = v12;
  v5[32] = a1;
  v5[33] = 1;
  v13 = sub_1BD0DE914(a1);
  v15 = v14;
  v38 = v13;
  v39 = v14;
  v16 = sub_1BD49085C();
  v34 = MEMORY[0x1E6981148];
  v35 = &type metadata for AccountBalanceHistoryRange;
  v36 = MEMORY[0x1E6981138];
  v37 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050C34();
  v15, v17, v18, v19, v20, v21, v22, v23;
  (*(v3 + 8))(v5, v2);
  sub_1BE052434();
  v25 = v24;
  sub_1BE04EBB4();
  v25, v26, v27, v28, v29, v30, v31, v32;
  return sub_1BD06EE6C(v8);
}

uint64_t sub_1BD4901F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for AccountBalance(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for SavingsSummaryView(0);
  sub_1BD0DE19C(v5, v2, &qword_1EBD40EC8, &unk_1BE0C9A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370, &unk_1BE0D97E0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v5, &qword_1EBD40EC8, &unk_1BE0C9A60);
}

void sub_1BD490334()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v85 = v7;
    v86 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE050424();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE051494();
    v41 = sub_1BE050564();
    v43 = v42;
    LOBYTE(v15) = v44;
    v46 = v45;
    v40, v42, v44, v45, v47, v48, v49, v50;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v51, v52, v53, v54, v55);
    v23, v56, v57, v58, v59, v60, v61, v62;
    v85 = v41;
    v86 = v43;
    v63 = (v15 & 1);
    v87 = v63;
    v88 = v46;
    sub_1BE052434();
    v65 = v64;
    sub_1BE050DE4();
    v65, v66, v67, v68, v69, v70, v71, v72;
    sub_1BD0DDF10(v41, v43, v63, v73, v74, v75, v76, v77);
    v46, v78, v79, v80, v81, v82, v83, v84;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD4905A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47398, &qword_1BE0D9860);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473A0, &qword_1BE0D9868);
  sub_1BD48E7EC(v1, &v5[*(v6 + 44)]);
  v7 = sub_1BE0501F4();
  PKSavingsFDICSignageEnabled();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1BD06ED94(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473A8, &qword_1BE0D9870);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_1BD4906C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SavingsSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD48FC38(a1, a2, v6);
}

unint64_t sub_1BD490740()
{
  result = qword_1EBD473F0;
  if (!qword_1EBD473F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
    sub_1BD490A30(&qword_1EBD387D0, type metadata accessor for AccountBalance, &unk_1BE0B6D84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD473F0);
  }

  return result;
}

uint64_t sub_1BD4907F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD49085C()
{
  result = qword_1EBD47408;
  if (!qword_1EBD47408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47408);
  }

  return result;
}

unint64_t sub_1BD4908B0()
{
  result = qword_1EBD47410;
  if (!qword_1EBD47410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47400, &qword_1BE0D99C8);
    sub_1BD490934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47410);
  }

  return result;
}

unint64_t sub_1BD490934()
{
  result = qword_1EBD47418;
  if (!qword_1EBD47418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47420, &qword_1BE0D99D0);
    sub_1BD49085C();
    swift_getOpaqueTypeConformance2();
    sub_1BD490A30(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47418);
  }

  return result;
}

uint64_t sub_1BD490A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_47()
{
  v1 = (type metadata accessor for SavingsSummaryView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v4 + 20);
    v6 = sub_1BE04AF64();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370, &unk_1BE0D97E0);
  *&v3[*(v7 + 28)], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD490BDC()
{
  type metadata accessor for SavingsSummaryView(0);

  return sub_1BD4901F4();
}

uint64_t sub_1BD490C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B0, &qword_1BE0D9878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD490CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD490D14()
{
  result = qword_1EBD47450;
  if (!qword_1EBD47450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47450);
  }

  return result;
}

uint64_t sub_1BD490D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD490DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD490E38()
{
  result = qword_1EBD47460;
  if (!qword_1EBD47460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD473A8, &qword_1BE0D9870);
    sub_1BD0DE4F4(&qword_1EBD47468, &qword_1EBD47398, &qword_1BE0D9860, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47460);
  }

  return result;
}

uint64_t sub_1BD490F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47488, &unk_1BE0D9AC0);
  v3 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v5 = (&v106 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490, &qword_1BE0EFBC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v106 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47498, &qword_1BE0D9AD0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474A0, &qword_1BE0D9AD8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v125 = &v106 - v21;
  v151[0] = *a1;
  v22 = v151[0];
  if (v151[0])
  {
    v108 = *(a1 + 32);
    v119 = *(a1 + 16);
    v120 = v3;
    v118 = *(a1 + 24);
    v107 = v6;
    v111 = v9;
    sub_1BD0DE19C(v151, &v133, &qword_1EBD474B8, &unk_1BE0D9AF0);
    sub_1BD0DE19C(v151, &v133, &qword_1EBD474B8, &unk_1BE0D9AF0);
    sub_1BE048C84();
    v117 = sub_1BE050224();
    sub_1BE04E1F4();
    v115 = v24;
    v116 = v23;
    v113 = v26;
    v114 = v25;
    v149 = 0;
    v112 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v28 = v27;
    v30 = v29;
    v109 = v32;
    v110 = v31;
    v150 = 0;
    sub_1BE051984();
    v33 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v44 = &v8[*(v107 + 9)];
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v49 = sub_1BE050224();
    if (v108)
    {
      v50 = 2;
    }

    else
    {
      v50 = 1;
    }

    v108 = v50;
    sub_1BE04E1F4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_1BD0DE204(v8, v13, &qword_1EBD47490, &qword_1BE0EFBC0);
    v59 = &v13[*(v111 + 36)];
    *v59 = v49;
    *(v59 + 1) = v52;
    *(v59 + 2) = v54;
    *(v59 + 3) = v56;
    *(v59 + 4) = v58;
    v59[40] = 0;
    sub_1BD0DE204(v13, v16, &qword_1EBD47498, &qword_1BE0D9AD0);
    v60 = v121;
    sub_1BD0DE19C(v16, v121, &qword_1EBD47498, &qword_1BE0D9AD0);
    v107 = v16;
    v62 = v118;
    v61 = v119;
    *&v126 = v22;
    *(&v126 + 1) = v119;
    *&v127 = v118;
    BYTE8(v127) = v50;
    v63 = v117;
    LOBYTE(v128) = v117;
    v65 = v115;
    v64 = v116;
    *(&v128 + 1) = v116;
    *&v129 = v115;
    v67 = v113;
    v66 = v114;
    *(&v129 + 1) = v114;
    *&v130 = v113;
    BYTE8(v130) = 0;
    v111 = v22;
    v68 = v112;
    LOBYTE(v131) = v112;
    *(&v131 + 1) = v28;
    *&v132[0] = v30;
    v70 = v109;
    v69 = v110;
    *(&v132[0] + 1) = v110;
    *&v132[1] = v109;
    BYTE8(v132[1]) = 0;
    v71 = v129;
    v5[2] = v128;
    v5[3] = v71;
    *(v5 + 105) = *(v132 + 9);
    v72 = v132[0];
    v5[5] = v131;
    v5[6] = v72;
    v5[4] = v130;
    v73 = v127;
    *v5 = v126;
    v5[1] = v73;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474C0, &qword_1BE0D9B00);
    sub_1BD0DE19C(v60, v5 + *(v74 + 48), &qword_1EBD47498, &qword_1BE0D9AD0);
    sub_1BD0DE19C(&v126, &v133, &qword_1EBD474B0, &qword_1BE0D9AE8);
    sub_1BD0DE53C(v151, &qword_1EBD474B8, &unk_1BE0D9AF0);
    sub_1BD0DE53C(v107, &qword_1EBD47498, &qword_1BE0D9AD0);
    sub_1BD0DE53C(v60, &qword_1EBD47498, &qword_1BE0D9AD0);
    v133 = v111;
    v134 = v61;
    v135 = v62;
    v136 = v108;
    v137 = v63;
    v138 = v64;
    v139 = v65;
    v140 = v66;
    v141 = v67;
    v142 = 0;
    v143 = v68;
    v144 = v28;
    v145 = v30;
    v146 = v69;
    v147 = v70;
    v148 = 0;
    sub_1BD0DE53C(&v133, &qword_1EBD474B0, &qword_1BE0D9AE8);
    v75 = v125;
    sub_1BD0DE204(v5, v125, &qword_1EBD47488, &unk_1BE0D9AC0);
    (*(v120 + 56))(v75, 0, 1, v122);
  }

  else
  {
    (*(v3 + 56))(v125, 1, 1, v122, v20);
  }

  if (*(a1 + 32))
  {
    v76 = 2;
  }

  else
  {
    v76 = 1;
  }

  v77 = *(a1 + 8);
  v78 = *(a1 + 16);
  v122 = *(a1 + 24);
  v79 = v77;
  sub_1BE048C84();
  v80 = sub_1BE050224();
  sub_1BE04E1F4();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v149 = 0;
  v89 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v150 = 0;
  v98 = v123;
  sub_1BD0DE19C(v125, v123, &qword_1EBD474A0, &qword_1BE0D9AD8);
  v99 = v124;
  sub_1BD0DE19C(v98, v124, &qword_1EBD474A0, &qword_1BE0D9AD8);
  v100 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474A8, &qword_1BE0D9AE0) + 48));
  *&v126 = v79;
  *(&v126 + 1) = v78;
  v101 = v122;
  *&v127 = v122;
  BYTE8(v127) = v76;
  LOBYTE(v128) = v80;
  *(&v128 + 1) = v82;
  *&v129 = v84;
  *(&v129 + 1) = v86;
  *&v130 = v88;
  BYTE8(v130) = 0;
  LOBYTE(v131) = v89;
  *(&v131 + 1) = v91;
  *&v132[0] = v93;
  *(&v132[0] + 1) = v95;
  *&v132[1] = v97;
  BYTE8(v132[1]) = 0;
  v102 = v127;
  *v100 = v126;
  v100[1] = v102;
  v103 = v131;
  v100[4] = v130;
  v100[5] = v103;
  v100[6] = v132[0];
  *(v100 + 105) = *(v132 + 9);
  v104 = v129;
  v100[2] = v128;
  v100[3] = v104;
  sub_1BD0DE19C(&v126, &v133, &qword_1EBD474B0, &qword_1BE0D9AE8);
  sub_1BD0DE53C(v125, &qword_1EBD474A0, &qword_1BE0D9AD8);
  v133 = v79;
  v134 = v78;
  v135 = v101;
  v136 = v76;
  v137 = v80;
  v138 = v82;
  v139 = v84;
  v140 = v86;
  v141 = v88;
  v142 = 0;
  v143 = v89;
  v144 = v91;
  v145 = v93;
  v146 = v95;
  v147 = v97;
  v148 = 0;
  sub_1BD0DE53C(&v133, &qword_1EBD474B0, &qword_1BE0D9AE8);
  return sub_1BD0DE53C(v98, &qword_1EBD474A0, &qword_1BE0D9AD8);
}

uint64_t sub_1BD4916C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47470, &qword_1BE0D9AA8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v6;
  v19[2] = *(v1 + 32);
  v20 = *(v1 + 48);
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47478, &qword_1BE0D9AB0);
  sub_1BD490F1C(v19, &v5[*(v7 + 44)]);
  v8 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD0DE204(v5, a1, &qword_1EBD47470, &qword_1BE0D9AA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47480, &qword_1BE0D9AB8);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

unint64_t sub_1BD491828()
{
  result = qword_1EBD474C8;
  if (!qword_1EBD474C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47480, &qword_1BE0D9AB8);
    sub_1BD4918B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474C8);
  }

  return result;
}

unint64_t sub_1BD4918B4()
{
  result = qword_1EBD474D0;
  if (!qword_1EBD474D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47470, &qword_1BE0D9AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474D0);
  }

  return result;
}

unint64_t sub_1BD49191C()
{
  result = qword_1EBD474D8;
  if (!qword_1EBD474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474D8);
  }

  return result;
}

void sub_1BD491970()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "startAuthenticatorEvaluation", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_1BD4218D0();
  v10 = sub_1BE04CA64();
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
    v18 = sub_1BD4218D0();
    v19 = sub_1BE04CB34();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if (v19)
    {
      sub_1BD429354();
      return;
    }
  }

  v27 = sub_1BD4218D0();
  v28 = sub_1BE04CA44();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36 = sub_1BD4218D0();
  v37 = sub_1BE04C984();
  v36, v38, v39, v40, v41, v42, v43, v44;
  if (v28)
  {
    if ((v37 & 1) == 0)
    {
      [*(*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) fallbackToSystemPasscodeUI];
      return;
    }

    goto LABEL_10;
  }

  if (v37)
  {
LABEL_10:
    sub_1BD7F2C38();
    sub_1BD42989C();
    return;
  }

  sub_1BD42B138();
}

void sub_1BD491BC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52060, &unk_1BE0D9B88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28, &qword_1BE0BDB10);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0BA770;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = *MEMORY[0x1E69BCA88];
  v8 = sub_1BE04C974();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, *MEMORY[0x1E69BCA40], v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, *MEMORY[0x1E69BCA48], v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, *MEMORY[0x1E69BCA80], v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, *MEMORY[0x1E69BCA78], v8);
  *(v5 + 4 * v2 + v13) = 4;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, *MEMORY[0x1E69BCA38], v8);
  *(v5 + 5 * v2 + v14) = 5;
  v15 = *(v1 + 48);
  v9(v5 + 6 * v2, *MEMORY[0x1E69BCA50], v8);
  *(v5 + 6 * v2 + v15) = 6;
  v16 = *(v1 + 48);
  v9(v5 + 7 * v2, *MEMORY[0x1E69BCA60], v8);
  *(v5 + 7 * v2 + v16) = 7;
  v17 = *(v1 + 48);
  v9(v5 + 8 * v2, *MEMORY[0x1E69BCA70], v8);
  *(v5 + 8 * v2 + v17) = 8;
  v18 = *(v1 + 48);
  v9(v5 + 9 * v2, *MEMORY[0x1E69BCA58], v8);
  *(v5 + 9 * v2 + v18) = 9;
  v19 = *(v1 + 48);
  v9(v5 + 10 * v2, *MEMORY[0x1E69BCA30], v8);
  *(v5 + 10 * v2 + v19) = 10;
  v20 = *(v1 + 48);
  v9(v5 + 11 * v2, *MEMORY[0x1E69BCA68], v8);
  *(v5 + 11 * v2 + v20) = 11;
  v21 = sub_1BD1AB490(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_1BD421A40();
  if (v22)
  {
    v30 = v22;
    if ([v22 respondsToSelector_])
    {
      if (v21[2] && (v38 = sub_1BD1490C0(a1), (v31 & 1) != 0))
      {
        v39 = *(v21[7] + 8 * v38);
      }

      else
      {
        v39 = 0;
      }

      v21, v31, v32, v33, v34, v35, v36, v37;
      [v30 didEncounterAuthorizationEvent_];
    }

    else
    {
      v21, v31, v32, v33, v34, v35, v36, v37;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v21, v23, v24, v25, v26, v27, v28, v29;
  }
}

void sub_1BD492024()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "suspendAuthenticatorEvaluation", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_1BD4241C0(1);
}

void sub_1BD492170()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "resumeAuthenticatorEvaluation", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_1BD429900();
}

void sub_1BD4922B8(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v78 - v8);
  v10 = sub_1BE04C7B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 kind];
  if (v15 <= 4)
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (v15 == 3)
        {
          v34 = [a1 paymentMethod];
          sub_1BD492A14(v34);
        }

        else
        {
          sub_1BD492BDC();
        }

        goto LABEL_43;
      }

      v37 = [a1 shippingMethod];
      if (!v37)
      {
        goto LABEL_49;
      }

      v32 = v37;
      v33 = &selRef_authorizationDidSelectShippingMethod_;
      goto LABEL_28;
    }

    if (!v15)
    {
      sub_1BD4929C0();
      goto LABEL_43;
    }

    if (v15 == 1)
    {
      v31 = [a1 shippingContact];
      if (v31)
      {
        v32 = v31;
        v33 = &selRef_authorizationDidSelectShippingAddress_;
LABEL_28:
        sub_1BD492AF4(v32, v33);

        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_35:
    sub_1BE04D084();
    v50 = a1;
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C34();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      *v53 = 136315138;
      v54 = [v50 kind];
      if (v54 > 0xA)
      {
        v55 = @"unknown";
        v56 = @"unknown";
      }

      else
      {
        v55 = off_1E800FEA8[v54];
        v56 = off_1E800FF00[v54];
      }

      v57 = v55;
      v58 = v56;

      if (!v58)
      {
        goto LABEL_52;
      }

      v59 = sub_1BE052434();
      v61 = v60;

      v62 = sub_1BD123690(v59, v61, &v79);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v53 + 4) = v62;
      _os_log_impl(&dword_1BD026000, v51, v52, "Unhandled client callback for %s", v53, 0xCu);
      v70 = v78;
      __swift_destroy_boxed_opaque_existential_0(v78, v71, v72, v73, v74, v75, v76, v77);
      MEMORY[0x1BFB45F20](v70, -1, -1);
      MEMORY[0x1BFB45F20](v53, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
    goto LABEL_43;
  }

  if (v15 <= 7)
  {
    if (v15 == 5)
    {
      v38 = [a1 payment];
      if (v38)
      {
        v39 = v38;
        sub_1BD492AF4(v38, &selRef_authorizationDidAuthorizePayment_);

        if ([*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) mode] == 2)
        {
          v40 = sub_1BD4218D0();
          (*(v11 + 104))(v14, *MEMORY[0x1E69BC988], v10);
          v41 = sub_1BE051F44();
          (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
          sub_1BD83C0A8(v14, 0, 0, v9);
          v40, v42, v43, v44, v45, v46, v47, v48;
          sub_1BD492C4C(v9);
          (*(v11 + 8))(v14, v10);
        }

        goto LABEL_43;
      }

      goto LABEL_50;
    }

    if (v15 != 6)
    {
      v16 = [a1 authorizedPeerPaymentQuote];
      if (v16)
      {
        v17 = v16;
        v18 = &selRef_authorizationDidAuthorizePeerPaymentQuote_;
LABEL_34:
        sub_1BD492B5C(v17, v18);

        goto LABEL_43;
      }

      goto LABEL_47;
    }

    v35 = [a1 purchase];
    if (v35)
    {
      v32 = v35;
      v33 = &selRef_authorizationDidAuthorizePurchase_;
      goto LABEL_28;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 == 8)
  {
    v49 = [a1 applePayTrustSignature];
    if (v49)
    {
      v17 = v49;
      v18 = &selRef_authorizationDidAuthorizeApplePayTrustSignature_;
      goto LABEL_34;
    }

    goto LABEL_51;
  }

  if (v15 == 9)
  {
    v36 = [a1 accountServicePaymentMethod];
    if (v36)
    {
      v17 = v36;
      v18 = &selRef_authorizationDidUpdateAccountServicePaymentMethod_;
      goto LABEL_34;
    }

    goto LABEL_46;
  }

  if (v15 != 10)
  {
    goto LABEL_35;
  }

  v19 = [a1 couponCode];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;

    sub_1BD492A70(v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
LABEL_43:
    [a1 kind];
    return;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void *sub_1BD492914(uint64_t a1)
{
  result = sub_1BD421C94(0);
  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90));
  if (*(v4 + 32) == 1)
  {
    result = sub_1BD421A40();
    if (result)
    {
      v5 = result;
      if (a1)
      {
        v6 = sub_1BE04A844();
      }

      else
      {
        v6 = 0;
      }

      [v5 authorizationDidFinishWithError_];

      result = swift_unknownObjectRelease();
    }

    *(v4 + 32) = 0;
  }

  return result;
}

void *sub_1BD4929C0()
{
  result = sub_1BD421A40();
  if (result)
  {
    [result authorizationDidRequestMerchantSession];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492A14(uint64_t a1)
{
  result = sub_1BD421A40();
  if (result)
  {
    [result authorizationDidSelectPaymentMethod_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492A70(uint64_t a1, uint64_t a2)
{
  result = sub_1BD421A40();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052404();
    [v3 authorizationDidChangeCouponCode_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492AF4(uint64_t a1, SEL *a2)
{
  result = sub_1BD421A40();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492B5C(uint64_t a1, SEL *a2)
{
  result = sub_1BD421A40();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492BDC()
{
  result = sub_1BD421A40();
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      [v1 authorizationDidAuthorizeContext];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD492C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedPass.secureElementPass.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD492EA0(v7, type metadata accessor for WrappedPass);
      return 0;
    }

    else
    {
      sub_1BD49C53C(v7, v4, type metadata accessor for PlaceholderPass);
      v9 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
      [v9 setCardType_];
      sub_1BD492EA0(v4, type metadata accessor for PlaceholderPass);
    }
  }

  else
  {
    v10 = *v7;
    v9 = [*v7 secureElementPass];
  }

  return v9;
}

uint64_t sub_1BD492EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BD492F00()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD49C53C(v7, v4, type metadata accessor for PlaceholderPass);
      v12 = *(v4 + 2);
      sub_1BE048C84();
      sub_1BD492EA0(v4, type metadata accessor for PlaceholderPass);
      return v12;
    }

    v9 = *v7;
    result = [*v7 passIdentifier];
    if (result)
    {
LABEL_6:
      v11 = result;
      v12 = sub_1BE052434();

      return v12;
    }

    __break(1u);
  }

  v9 = *v7;
  result = [*v7 uniqueID];
  if (result)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1BD4930AC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a2;
  v211 = type metadata accessor for UnavailablePass(0);
  v209 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v4 = &v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for AvailablePass(0);
  v5 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v203 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v202 - v8;
  v212 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v212);
  v210 = (&v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v202 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v202 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v202 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v205 = &v202 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v202 - v26;
  v213 = a1;
  v28 = [a1 paymentRequest];
  if (!v28)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v29 = v28;
  v30 = [v28 originatingURL];

  v204 = v19;
  if (v30)
  {
    sub_1BE04A9F4();

    v31 = sub_1BE04AA64();
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
  }

  else
  {
    v32 = sub_1BE04AA64();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  v33 = v208;
  sub_1BD0DE53C(v27, &unk_1EBD3CF70, &qword_1BE0BA000);
  v34 = type metadata accessor for Passes(0);
  *(v33 + *(v34 + 40)) = v30 != 0;
  v35 = v213;
  v36 = [v213 paymentRequest];
  if (!v36)
  {
    goto LABEL_65;
  }

  v37 = v36;
  v38 = [v36 supportedNetworks];

  type metadata accessor for PKPaymentNetwork(0);
  v39 = sub_1BE052744();

  *(v33 + *(v34 + 44)) = v39;
  v40 = v34;
  if ([v35 mode] == 1)
  {
    v41 = [v35 pass];
    v27 = v35;
    if (v41)
    {
      *v16 = v41;
      swift_storeEnumTagMultiPayload();
      v42 = v35;
      v43 = v205;
      sub_1BD4954F8(v16, v42, v205);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v43 = v205;
    }

    (*(v5 + 56))(v43, v44, 1, v207);
    sub_1BD49C65C(v43, v33);
    v54 = [v35 paymentApplication];
    v207 = v40;
    *(v33 + v40[5]) = v54;
    v55 = [v35 acceptedPasses];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1BE052744();

      v65 = v57;
      v66 = *(v57 + 16);
      v67 = MEMORY[0x1E69E7CC0];
      if (v66)
      {
        v215 = MEMORY[0x1E69E7CC0];
        v68 = v65;
        sub_1BD531A40(0, v66, 0);
        v69 = v215;
        v206 = v68;
        v70 = (v68 + 32);
        do
        {
          sub_1BD038CD0(v70, &v218);
          sub_1BD038CD0(&v218, &v216);
          sub_1BD0E5E8C(0, &unk_1EBD40340, 0x1E69B8D08);
          swift_dynamicCast();
          *v16 = v214;
          swift_storeEnumTagMultiPayload();
          sub_1BD4954F8(v16, v213, v9);
          __swift_destroy_boxed_opaque_existential_0(&v218, v71, v72, v73, v74, v75, v76, v77);
          v215 = v69;
          v79 = v69[2];
          v78 = v69[3];
          if (v79 >= v78 >> 1)
          {
            sub_1BD531A40((v78 > 1), v79 + 1, 1);
            v69 = v215;
          }

          v69[2] = v79 + 1;
          sub_1BD49C53C(v9, v69 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v79, type metadata accessor for AvailablePass);
          v70 += 32;
          --v66;
        }

        while (v66);
        v206, v80, v81, v82, v83, v84, v85, v86;
        v33 = v208;
        v27 = v213;
        v67 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v65, v58, v59, v60, v61, v62, v63, v64;
        v69 = MEMORY[0x1E69E7CC0];
      }

      v87 = v207;
      *(v33 + *(v207 + 28)) = v69;
      v88 = [v27 unavailablePasses];
      if (v88)
      {
        v89 = v88;
        v90 = sub_1BE052744();

        v98 = *(v90 + 2);
        if (v98)
        {
          v215 = v67;
          v99 = v90;
          sub_1BD5319FC(0, v98, 0);
          v100 = v215;
          v206 = v99;
          v101 = (v99 + 32);
          while (1)
          {
            sub_1BD038CD0(v101, &v218);
            sub_1BD038CD0(&v218, &v216);
            sub_1BD0E5E8C(0, &unk_1EBD40340, 0x1E69B8D08);
            swift_dynamicCast();
            v102 = v214;
            *v13 = v214;
            swift_storeEnumTagMultiPayload();
            sub_1BD49C4D4(v13, v4, type metadata accessor for WrappedPass);
            v103 = v4;
            v104 = v211;
            v105 = &v103[*(v211 + 20)];
            *v105 = 0;
            *(v105 + 1) = 0;
            v106 = v27;
            v107 = v102;
            v108 = sub_1BD49ABC8(v13, v106);
            v109 = *(v104 + 28);
            v4 = v103;
            v110 = &v103[v109];
            *v110 = v108;
            *(v110 + 1) = v111;
            v110[16] = v112;
            sub_1BD49C4D4(v13, v210, type metadata accessor for WrappedPass);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload != 1)
              {

                sub_1BD492EA0(v13, type metadata accessor for WrappedPass);
                __swift_destroy_boxed_opaque_existential_0(&v218, v124, v125, v126, v127, v128, v129, v130);
                sub_1BD492EA0(v210, type metadata accessor for WrappedPass);
                v115 = 0;
                goto LABEL_33;
              }

              v114 = *v210;
              v115 = [*v210 hasAssociatedPeerPaymentAccount];
            }

            else
            {
              v116 = *v210;
              v115 = [*v210 hasAssociatedPeerPaymentAccount];
            }

            sub_1BD492EA0(v13, type metadata accessor for WrappedPass);
            __swift_destroy_boxed_opaque_existential_0(&v218, v117, v118, v119, v120, v121, v122, v123);
LABEL_33:
            v4[*(v211 + 24)] = v115;
            v215 = v100;
            v132 = v100[2];
            v131 = v100[3];
            if (v132 >= v131 >> 1)
            {
              sub_1BD5319FC((v131 > 1), v132 + 1, 1);
              v100 = v215;
            }

            v100[2] = v132 + 1;
            sub_1BD49C53C(v4, v100 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v132, type metadata accessor for UnavailablePass);
            v101 += 32;
            --v98;
            v27 = v213;
            if (!v98)
            {
              v140 = v213;
              v206, v133, v134, v135, v136, v137, v138, v139;
              v87 = v207;
              v33 = v208;
              goto LABEL_38;
            }
          }
        }

        v140 = v27;
        v90, v91, v92, v93, v94, v95, v96, v97;
        v100 = MEMORY[0x1E69E7CC0];
LABEL_38:
        *&v218 = v100;
        sub_1BE048C84();
        sub_1BD495FE4(&v218);
        v100, v141, v142, v143, v144, v145, v146, v147;
        *(v33 + v87[9]) = v218;
        v148 = v140;
        if ([v140 itemForType_])
        {
          sub_1BE053624();
          swift_unknownObjectRelease();
        }

        else
        {
          v216 = 0u;
          v217 = 0u;
        }

        v218 = v216;
        v219 = v217;
        if (*(&v217 + 1))
        {
          sub_1BD0E5E8C(0, &qword_1EBD3E6D0, 0x1E69B8BA0);
          if (swift_dynamicCast())
          {
            v149 = v215;
LABEL_46:
            v150 = v149 != 0;

            *(v33 + v87[6]) = v150;
            v151 = [v148 canAddPasses];

            *(v33 + v87[8]) = v151;
            return;
          }
        }

        else
        {
          sub_1BD0DE53C(&v218, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        }

        v149 = 0;
        goto LABEL_46;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if ([v35 mode] == 2)
  {
    v45 = [v35 remotePaymentInstrument];
    v46 = v207;
    if (v45 || (v45 = [v35 initialRemotePaymentInstrument]) != 0)
    {
      *v16 = v45;
      v47 = v45;
      swift_storeEnumTagMultiPayload();
      v48 = v35;
      v49 = v47;
      v50 = v206;
      sub_1BD4954F8(v16, v48, v206);
      (*(v5 + 56))(v50, 0, 1, v46);
      sub_1BD49C65C(v50, v33);
      v51 = [v49 primaryPaymentApplication];
      if (v51)
      {
        v52 = v51;
        v53 = v204;
        sub_1BD0DE19C(v33, v204, &qword_1EBD520A0, &qword_1BE0B9840);
        if ((*(v5 + 48))(v53, 1, v46) == 1)
        {

          sub_1BD0DE53C(v53, &qword_1EBD520A0, &qword_1BE0B9840);
          v27 = 0;
        }

        else
        {
          v152 = v203;
          v153 = sub_1BD49C53C(v53, v203, type metadata accessor for AvailablePass);
          *&v218 = v52;
          MEMORY[0x1EEE9AC00](v153);
          v200 = &v218;
          v27 = 0;
          v155 = sub_1BD30114C(sub_1BD49C6CC, (&v202 - 4), v154);
          sub_1BD492EA0(v152, type metadata accessor for AvailablePass);
          if (v155)
          {
LABEL_53:
            *(v33 + v40[5]) = v52;
            v157 = [v35 allAcceptedRemotePaymentInstruments];
            if (!v157)
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            v158 = v40;
            v159 = v157;
            v160 = v33;
            sub_1BD0E5E8C(0, &qword_1EBD47510, 0x1E69B9130);
            sub_1BD214890(&qword_1EBD475C8, &qword_1EBD47510, 0x1E69B9130);
            v161 = sub_1BE052A34();

            v162 = v35;
            sub_1BD49A760(v161, v162);
            v164 = v163;
            v161, v165, v166, v167, v168, v169, v170, v171;

            *(v160 + v158[7]) = v164;
            v172 = [v162 allUnavailableRemotePaymentInstruments];
            if (!v172)
            {
LABEL_69:
              __break(1u);

              v218, v193, v194, v195, v196, v197, v198, v199;
              __break(1u);
              goto LABEL_70;
            }

            v173 = v172;
            v174 = sub_1BE052A34();

            v175 = v162;
            sub_1BD49B404(v174, v175);
            v177 = v176;
            v174, v178, v179, v180, v181, v182, v183, v184;

            *&v218 = v177;
            sub_1BE048C84();
            sub_1BD495FE4(&v218);
            v177, v185, v186, v187, v188, v189, v190, v191;
            v192 = v208;
            *(v208 + v158[9]) = v218;
            if ([v175 itemForType_])
            {
              sub_1BE053624();

              swift_unknownObjectRelease();
            }

            else
            {

              v216 = 0u;
              v217 = 0u;
            }

            v218 = v216;
            v219 = v217;
            if (*(&v217 + 1))
            {
              sub_1BD0E5E8C(0, &qword_1EBD3E6D8, 0x1E69B8D68);
              if (swift_dynamicCast())
              {

                *(v192 + v158[6]) = 1;
LABEL_63:
                *(v192 + v158[8]) = 0;
                return;
              }
            }

            else
            {
              sub_1BD0DE53C(&v218, &qword_1EBD3EC90, &unk_1BE0BC6B0);
            }

            *(v192 + v158[6]) = 0;
            goto LABEL_63;
          }
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v156 = v206;
      (*(v5 + 56))(v206, 1, 1, v46);
      sub_1BD49C65C(v156, v33);
      v49 = 0;
      v27 = 0;
    }

    v52 = [v35 paymentApplication];
    goto LABEL_53;
  }

LABEL_70:
  v201 = 0;
  v200 = 584;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD49404C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnavailablePass(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Passes(0);
  v8 = *(v1 + *(result + 36));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v10 < *(v8 + 16))
    {
      sub_1BD49C4D4(v11 + *(v4 + 72) * v10, v6, type metadata accessor for UnavailablePass);
      v12 = &v6[*(v3 + 28)];
      if (v12[16] >= 3u && *v12 >= 5uLL)
      {
        sub_1BD49C53C(v6, a1, type metadata accessor for UnavailablePass);
        v13 = 0;
        return (*(v4 + 56))(a1, v13, 1, v3);
      }

      ++v10;
      result = sub_1BD492EA0(v6, type metadata accessor for UnavailablePass);
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  return result;
}

uint64_t sub_1BD4941F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnavailablePass(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Passes(0);
  v8 = *(v1 + *(result + 36));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v10 < *(v8 + 16))
    {
      sub_1BD49C4D4(v11 + *(v4 + 72) * v10, v6, type metadata accessor for UnavailablePass);
      if ((v6[*(v3 + 24)] & 1) == 0)
      {
        v12 = &v6[*(v3 + 28)];
        if (v12[16] < 3u || *v12 ^ 3 | *(v12 + 1))
        {
          sub_1BD49C53C(v6, a1, type metadata accessor for UnavailablePass);
          v13 = 0;
          return (*(v4 + 56))(a1, v13, 1, v3);
        }
      }

      ++v10;
      result = sub_1BD492EA0(v6, type metadata accessor for UnavailablePass);
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  return result;
}

uint64_t sub_1BD4943B0()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD49C53C(v7, v4, type metadata accessor for PlaceholderPass);
    v12 = *v4;
    sub_1BE048C84();
    sub_1BD492EA0(v4, type metadata accessor for PlaceholderPass);
    return v12;
  }

  v9 = *v7;
  v10 = [*v7 displayName];
  if (!v10)
  {
    __break(1u);
LABEL_5:
    v9 = *v7;
    v10 = [*v7 localizedDescription];
  }

  v11 = v10;
  v12 = sub_1BE052434();

  return v12;
}

uint64_t sub_1BD494550()
{
  v1 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v0, v3, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v3;
      v6 = [v5 primaryAccountNumberSuffix];
      v7 = PKMaskedPaymentPAN();

      if (v7)
      {
        v8 = sub_1BE052434();

        return v8;
      }

      goto LABEL_11;
    }

    sub_1BD492EA0(v3, type metadata accessor for WrappedPass);
  }

  else
  {
    v5 = *v3;
    v10 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (!v10)
    {
LABEL_11:

      return 0;
    }

    v11 = v10;
    v12 = sub_1BE052434();
    v14 = v13;

    v21 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v21 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      return v12;
    }

    v14, v14, v15, v16, v17, v18, v19, v20;
  }

  return 0;
}

void WrappedPass.devicePrimaryPaymentApplication.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v7;
    v10 = [*v7 devicePrimaryPaymentApplication];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    v10 = [*v7 primaryPaymentApplication];
LABEL_5:
    v10;

    return;
  }

  sub_1BD49C53C(v7, v4, type metadata accessor for PlaceholderPass);
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8B40]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B7020;
  v13 = objc_allocWithZone(MEMORY[0x1E69B85A0]);
  v14 = sub_1BE052404();
  v15 = [v13 initWithIdentifier_];

  if (v15)
  {
    *(inited + 32) = v15;
    sub_1BD111DE4(inited);
    v17 = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
    sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8, 0x1E69B85A0);
    v18 = sub_1BE052A24();
    v17, v19, v20, v21, v22, v23, v24, v25;
    [v11 setSubcredentials_];

    sub_1BD492EA0(v4, type metadata accessor for PlaceholderPass);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static WrappedPass.== infix(_:_:)()
{
  v0 = sub_1BD492F00();
  v2 = v1;
  v4 = sub_1BD492F00();
  v10 = v3;
  if (v0 == v4 && v2 == v3)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10, v12, v13, v14, v15, v16, v17, v18;
  return v11 & 1;
}

void WrappedPass.hash(into:)(uint64_t a1)
{
  sub_1BD492F00();
  v2 = v1;
  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t WrappedPass.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BD492F00();
  v1 = v0;
  sub_1BE052524();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1BE053D64();
}

uint64_t sub_1BD494ACC()
{
  sub_1BE053D04();
  sub_1BD492F00();
  v1 = v0;
  sub_1BE052524();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1BE053D64();
}

void sub_1BD494B28(uint64_t a1)
{
  sub_1BD492F00();
  v2 = v1;
  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD494B78(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BD492F00();
  v2 = v1;
  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

uint64_t sub_1BD494BD0()
{
  v0 = sub_1BD492F00();
  v2 = v1;
  v4 = sub_1BD492F00();
  v10 = v3;
  if (v0 == v4 && v2 == v3)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10, v12, v13, v14, v15, v16, v17, v18;
  return v11 & 1;
}

uint64_t PlaceholderPass.hash(into:)(uint64_t a1)
{
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v1 + 32));
  type metadata accessor for PlaceholderPass(0);
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770], MEMORY[0x1E6966778]);
  return sub_1BE052294();
}

uint64_t PlaceholderPass.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  type metadata accessor for PlaceholderPass(0);
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770], MEMORY[0x1E6966778]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD494DD4()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770], MEMORY[0x1E6966778]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD494E98(uint64_t a1)
{
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v1 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770], MEMORY[0x1E6966778]);
  return sub_1BE052294();
}

uint64_t sub_1BD494F40(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v1 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770], MEMORY[0x1E6966778]);
  sub_1BE052294();
  return sub_1BE053D64();
}

id sub_1BD495024(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v3, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD492EA0(v9, type metadata accessor for WrappedPass);
      return 0;
    }

    sub_1BD49C53C(v9, v6, type metadata accessor for PlaceholderPass);
    v13 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v13 setCardType_];
    sub_1BD492EA0(v6, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v12 = *v9;
    v13 = [*v9 secureElementPass];

    if (!v13)
    {
      return 0;
    }
  }

  v14 = [v13 *a1];

  return v14;
}

uint64_t sub_1BD495204(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1BE053B84()) && (v2 == v7 && v4 == v8 || (sub_1BE053B84()) && (v3 == v9 && v5 == v10 || (sub_1BE053B84()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1BE053B84() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD49532C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD49540C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD492F00();
  v8 = v7;
  v10 = sub_1BD492F00();
  v16 = v9;
  if (v6 == v10 && v8 == v9)
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v24 = sub_1BE053B84();
    v8, v25, v26, v27, v28, v29, v30, v31;
    v16, v32, v33, v34, v35, v36, v37, v38;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = *(a3 + 28);
  v40 = a1 + v39;
  v41 = *(a1 + v39);
  v42 = *(a1 + v39 + 8);
  v43 = a2 + v39;
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v40 + 16);

  return sub_1BD498408(v41, v42, v47, v44, v45, v46);
}

uint64_t sub_1BD4954F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v43 - v10);
  sub_1BD49C4D4(a1, a3, type metadata accessor for WrappedPass);
  v12 = type metadata accessor for AvailablePass(0);
  v13 = v12[6];
  v14 = type metadata accessor for IdentityCredential(0);
  (*(*(v14 - 8) + 56))(a3 + v13, 1, 1, v14);
  sub_1BD49C4D4(a1, v11, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v11;
      v17 = [*v11 hasAssociatedPeerPaymentAccount];

      *(a3 + v12[5]) = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
      v20 = v12[7];
      v21 = a2;
      sub_1BD4958E0(v8, v21, a3 + v20);
      v22 = v21;
      sub_1BD499F70(v22);
      v23 = (a3 + v12[8]);
      *v23 = v24;
      v23[1] = v25;
      v26 = sub_1BD49A330(v22);
      goto LABEL_9;
    }

    sub_1BD492EA0(v11, type metadata accessor for WrappedPass);
    *(a3 + v12[5]) = 0;
  }

  else
  {
    v18 = *v11;
    v19 = [*v11 hasAssociatedPeerPaymentAccount];

    *(a3 + v12[5]) = v19;
    if (v19)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  sub_1BD495BD8(v8, a2, a3 + v12[7]);
  v26 = 0;
  v27 = (a3 + v12[8]);
  *v27 = 0;
  v27[1] = 0;
LABEL_9:
  *(a3 + v12[9]) = v26;
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  v28 = v12[10];
  v29 = a2;
  sub_1BD578D58(v8, v29, a3 + v28);
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  v30 = v29;
  sub_1BD42E9E4(v30, v8, v44);
  v31 = a3 + v12[13];
  v32 = v44[1];
  *v31 = v44[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v45;
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  v33 = v30;
  sub_1BD59B2B4(&v46, v33, v8);
  v34 = (a3 + v12[12]);
  v35 = v47[0];
  *v34 = v46;
  v34[1] = v35;
  *(v34 + 25) = *(v47 + 9);
  v36 = sub_1BD49A5B4(a1, v33, &selRef_acceptedPaymentApplicationsForPass_, &selRef_acceptedPaymentApplicationsForRemoteInstrument_);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + v12[14]) = v38;
  v39 = sub_1BD49A5B4(a1, v33, &selRef_unavailablePaymentApplicationsForPass_, &selRef_unavailablePaymentApplicationsForRemoteInstrument_);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v37;
  }

  *(a3 + v12[15]) = v40;
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  v41 = sub_1BD2EE5AC(v8);

  result = sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
  *(a3 + v12[11]) = v41;
  return result;
}

id sub_1BD4958E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for BalanceInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_1BD492EA0(v8, type metadata accessor for WrappedPass);
LABEL_12:
      sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
      v24 = 1;
      return (*(v10 + 56))(a3, v24, 1, v9);
    }

    v14 = &selRef_peerPaymentAccountBalance;
  }

  else
  {
    v14 = &selRef_peerPaymentBalance;
  }

  v15 = *v8;
  v16 = [*v8 *v14];

  if (!v16)
  {

    goto LABEL_12;
  }

  *v12 = v16;
  v17 = v16;
  result = [a2 paymentRequest];
  if (result)
  {
    v19 = result;
    v20 = sub_1BD499A38(v17, result);

    v21 = sub_1BD499D4C(a1, a2);
    LOBYTE(v19) = v22;

    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
    if (v19)
    {
      if ((v20 & 1) == 0)
      {
LABEL_9:
        v23 = 0;
LABEL_15:
        v12[8] = v23;
        v25 = *(v9 + 28);
        v26 = sub_1BE04AF64();
        (*(*(v26 - 8) + 56))(&v12[v25], 1, 1, v26);
        v12[9] = 0;
        sub_1BD49C53C(v12, a3, type metadata accessor for BalanceInfo);
        v24 = 0;
        return (*(v10 + 56))(a3, v24, 1, v9);
      }
    }

    else if (!((v21 == 5) | v20 & 1))
    {
      goto LABEL_9;
    }

    v23 = 1;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1BD495BD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for BalanceInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v8, type metadata accessor for WrappedPass);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    sub_1BD492EA0(v8, type metadata accessor for WrappedPass);
LABEL_9:
    v16 = 1;
    return (*(v10 + 56))(a3, v16, 1, v9);
  }

  v13 = *v8;
  v14 = [v13 bankConnectAccount];
  if (!v14)
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    goto LABEL_8;
  }

  v15 = v14;
  if ([v14 accountType] || (v18 = objc_msgSend(v15, sel_balance)) == 0)
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

LABEL_6:
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 availableBalance];
  if (!v20)
  {
    v20 = [v19 bookedBalance];
    if (!v20)
    {
      sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

      goto LABEL_6;
    }
  }

  v31 = v20;
  sub_1BD49A490(v20);
  v29 = v21;
  *v12 = v21;
  v22 = *(v9 + 28);
  v23 = [v19 lastUpdatedAt];
  v30 = v19;
  v24 = v23;
  sub_1BE04AEE4();

  v25 = sub_1BE04AF64();
  (*(*(v25 - 8) + 56))(&v12[v22], 0, 1, v25);
  if (!PKConnectedCardLowBalanceEnabled())
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    v12[8] = 0;
    goto LABEL_18;
  }

  v26 = v31;
  result = [a2 paymentRequest];
  if (result)
  {
    v27 = result;
    LODWORD(v29) = sub_1BD499A38(v29, result);

    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
    v12[8] = v29 & 1;
LABEL_18:
    v12[9] = 1;
    sub_1BD49C53C(v12, a3, type metadata accessor for BalanceInfo);
    v16 = 0;
    return (*(v10 + 56))(a3, v16, 1, v9);
  }

  __break(1u);
  return result;
}

void sub_1BD495FE4(uint64_t *a1)
{
  v2 = *(type metadata accessor for UnavailablePass(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED6F0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD49608C(v5);
  *a1 = v3;
}

void sub_1BD49608C(uint64_t *a1)
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
        type metadata accessor for UnavailablePass(0);
        v6 = sub_1BE0527B4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UnavailablePass(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1BD49676C(v15, v16, a1, v4);
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
    sub_1BD4961B8(0, v2, 1, a1);
  }
}

void sub_1BD4961B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = (&v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v85 - v13);
  v96 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - v21;
  v87 = a2;
  if (a3 == a2)
  {
    return;
  }

  v23 = *a4;
  v24 = *(v20 + 72);
  v25 = *a4 + v24 * (a3 - 1);
  v93 = -v24;
  v94 = v23;
  v26 = a1 - a3;
  v86 = v24;
  v27 = v23 + v24 * a3;
  v98 = v14;
  v99 = v10;
  v101 = v18;
  v97 = &v85 - v21;
LABEL_6:
  v90 = v25;
  v91 = a3;
  v88 = v27;
  v89 = v26;
  while (1)
  {
    sub_1BD49C4D4(v27, v22, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v25, v18, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v22, v14, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v43 = *v14;
      v44 = [*v14 localizedDescription];
      v39 = sub_1BE052434();
      v41 = v45;

LABEL_13:
      v42 = v100;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v46 = v92;
      sub_1BD49C53C(v14, v92, type metadata accessor for PlaceholderPass);
      v39 = *v46;
      v41 = v46[1];
      sub_1BE048C84();
      sub_1BD492EA0(v46, type metadata accessor for PlaceholderPass);
      goto LABEL_13;
    }

    v36 = *v14;
    v37 = [v36 displayName];
    if (!v37)
    {
      goto LABEL_30;
    }

    v38 = v37;
    v39 = sub_1BE052434();
    v41 = v40;

    v42 = v100;
    v18 = v101;
LABEL_14:
    sub_1BD49C4D4(v18, v42, type metadata accessor for WrappedPass);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47)
    {
      if (v47 == 1)
      {
        v48 = *v42;
        v49 = [*v42 displayName];
        if (!v49)
        {
          goto LABEL_29;
        }

        v50 = v49;
        v51 = sub_1BE052434();
        v53 = v52;

        if (v39 != v51)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v65 = v42;
        v66 = v92;
        sub_1BD49C53C(v65, v92, type metadata accessor for PlaceholderPass);
        v67 = *v66;
        v53 = v66[1];
        sub_1BE048C84();
        sub_1BD492EA0(v66, type metadata accessor for PlaceholderPass);
        if (v39 != v67)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v61 = *v42;
      v62 = [v61 localizedDescription];
      v63 = sub_1BE052434();
      v53 = v64;

      if (v39 != v63)
      {
        goto LABEL_23;
      }
    }

    if (v41 == v53)
    {
      v41, v54, v55, v56, v57, v58, v59, v60;
      v53, v28, v29, v30, v31, v32, v33, v34;
      v18 = v101;
      sub_1BD492EA0(v101, type metadata accessor for UnavailablePass);
      v22 = v97;
      sub_1BD492EA0(v97, type metadata accessor for UnavailablePass);
      v14 = v98;
LABEL_5:
      a3 = v91 + 1;
      v25 = v90 + v86;
      v26 = v89 - 1;
      v27 = v88 + v86;
      if (v91 + 1 == v87)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_23:
    v68 = sub_1BE053B84();
    v41, v69, v70, v71, v72, v73, v74, v75;
    v53, v76, v77, v78, v79, v80, v81, v82;
    v18 = v101;
    sub_1BD492EA0(v101, type metadata accessor for UnavailablePass);
    v22 = v97;
    sub_1BD492EA0(v97, type metadata accessor for UnavailablePass);
    v14 = v98;
    if ((v68 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v94)
    {
      break;
    }

    v83 = v95;
    sub_1BD49C53C(v27, v95, type metadata accessor for UnavailablePass);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD49C53C(v83, v25, type metadata accessor for UnavailablePass);
    v25 += v93;
    v27 += v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1BD49676C(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v233 = a1;
  v6 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v249 = (&v228 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8);
  v257 = (&v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v258 = (&v228 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v245 = (&v228 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v246 = (&v228 - v15);
  v253 = type metadata accessor for UnavailablePass(0);
  v240 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v237 = &v228 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v252 = &v228 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v228 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v256 = &v228 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v248 = &v228 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v244 = &v228 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v231 = &v228 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v230 = &v228 - v38;
  v242 = a3;
  v39 = *(a3 + 8);
  if (v39 < 1)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_128:
    a3 = *v233;
    if (!*v233)
    {
      goto LABEL_173;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_130:
      v259 = v41;
      v222 = *(v41 + 16);
      if (v222 >= 2)
      {
        while (*v242)
        {
          v223 = v41;
          v41 = *(v41 + 16 * v222);
          v217 = v223;
          v224 = *&v223[16 * v222 + 24];
          v225 = v247;
          sub_1BD49781C((*v242 + *(v240 + 72) * v41), (*v242 + *(v240 + 72) * *&v223[16 * v222 + 16]), (*v242 + *(v240 + 72) * v224), a3);
          v247 = v225;
          if (v225)
          {
            goto LABEL_139;
          }

          if (v224 < v41)
          {
            goto LABEL_156;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v217 = sub_1BD5ED6C8(v217, v31, v32, v33, v34, v35, v36, v37);
          }

          if (v222 - 2 >= *(v217 + 2))
          {
            goto LABEL_157;
          }

          v226 = &v217[16 * v222];
          *v226 = v41;
          v226[1] = v224;
          v259 = v217;
          sub_1BD5ED63C(v222 - 1);
          v41 = v259;
          v222 = *(v259 + 16);
          if (v222 <= 1)
          {
            goto LABEL_140;
          }
        }

        goto LABEL_171;
      }

LABEL_140:
      v227 = v41;
LABEL_141:
      v227, v31, v32, v33, v34, v35, v36, v37;
      return;
    }

LABEL_163:
    v41 = sub_1BD5ED6C8(v41, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_130;
  }

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v232 = a4;
  v254 = v8;
  v255 = v21;
  while (1)
  {
    v42 = v40++;
    if (v40 < v39)
    {
      v238 = v39;
      v229 = v41;
      v43 = *v242;
      v44 = *(v240 + 72);
      v45 = v40;
      sub_1BD49C4D4(*v242 + v44 * v40, v230, type metadata accessor for UnavailablePass);
      v234 = v42;
      v241 = v44;
      sub_1BD49C4D4(v43 + v44 * v42, v231, type metadata accessor for UnavailablePass);
      v46 = sub_1BD4943B0();
      v48 = v47;
      v50 = sub_1BD4943B0();
      v56 = v49;
      if (v46 == v50 && v48 == v49)
      {
        LODWORD(v239) = 0;
      }

      else
      {
        LODWORD(v239) = sub_1BE053B84();
      }

      v48, v49, v50, v51, v52, v53, v54, v55;
      v56, v57, v58, v59, v60, v61, v62, v63;
      a3 = type metadata accessor for UnavailablePass;
      sub_1BD492EA0(v231, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v230, type metadata accessor for UnavailablePass);
      v64 = v234 + 2;
      v65 = v241 * (v234 + 2);
      v66 = v43 + v65;
      v67 = v241 * v40;
      v68 = v43 + v241 * v40;
      do
      {
        v40 = v64;
        v85 = v45;
        v41 = v67;
        v86 = v65;
        v251 = v64;
        if (v64 >= v238)
        {
          break;
        }

        v250 = v45;
        v87 = v244;
        sub_1BD49C4D4(v66, v244, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v68, v248, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v87, v246, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v89 = *v246;
            v90 = [*v246 displayName];
            if (!v90)
            {
              goto LABEL_169;
            }

            v91 = v90;
            v243 = sub_1BE052434();
            v93 = v92;
          }

          else
          {
            v97 = v249;
            sub_1BD49C53C(v246, v249, type metadata accessor for PlaceholderPass);
            v93 = v97[1];
            v243 = *v97;
            sub_1BE048C84();
            sub_1BD492EA0(v97, type metadata accessor for PlaceholderPass);
          }
        }

        else
        {
          v94 = *v246;
          v95 = [*v246 localizedDescription];
          v243 = sub_1BE052434();
          v93 = v96;
        }

        sub_1BD49C4D4(v248, v245, type metadata accessor for WrappedPass);
        v98 = swift_getEnumCaseMultiPayload();
        if (v98)
        {
          if (v98 == 1)
          {
            v99 = *v245;
            v100 = [*v245 displayName];
            if (!v100)
            {
              goto LABEL_168;
            }

            v101 = v100;
            v102 = sub_1BE052434();
            v104 = v103;
          }

          else
          {
            v108 = v249;
            sub_1BD49C53C(v245, v249, type metadata accessor for PlaceholderPass);
            v102 = *v108;
            v104 = v108[1];
            sub_1BE048C84();
            sub_1BD492EA0(v108, type metadata accessor for PlaceholderPass);
          }
        }

        else
        {
          v105 = *v245;
          v106 = [*v245 localizedDescription];
          v102 = sub_1BE052434();
          v104 = v107;
        }

        v76 = v243 == v102 && v93 == v104 ? 0 : sub_1BE053B84();
        v93, v69, v70, v71, v72, v73, v74, v75;
        v104, v77, v78, v79, v80, v81, v82, v83;
        a3 = type metadata accessor for UnavailablePass;
        sub_1BD492EA0(v248, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v244, type metadata accessor for UnavailablePass);
        v84 = v239 ^ v76;
        v85 = v250;
        v40 = v251;
        v64 = v251 + 1;
        v66 += v241;
        v68 += v241;
        v45 = v250 + 1;
        v67 = v41 + v241;
        v65 = v86 + v241;
        v21 = v255;
      }

      while ((v84 & 1) == 0);
      if ((v239 & 1) == 0)
      {
        goto LABEL_43;
      }

      v42 = v234;
      a4 = v232;
      if (v40 < v234)
      {
        goto LABEL_160;
      }

      if (v234 < v40)
      {
        a3 = v234 * v241;
        do
        {
          if (v42 != v85)
          {
            v110 = *v242;
            if (!*v242)
            {
              goto LABEL_170;
            }

            v111 = v85;
            sub_1BD49C53C(v110 + a3, v237, type metadata accessor for UnavailablePass);
            if (a3 < v41 || v110 + a3 >= (v110 + v86))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a3 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BD49C53C(v237, v110 + v41, type metadata accessor for UnavailablePass);
            v85 = v111;
          }

          ++v42;
          v41 -= v241;
          v86 -= v241;
          a3 += v241;
        }

        while (v42 < v85--);
        v40 = v251;
LABEL_43:
        a4 = v232;
        v41 = v229;
        v42 = v234;
        goto LABEL_44;
      }

      v41 = v229;
    }

LABEL_44:
    v112 = v242[1];
    if (v40 < v112)
    {
      if (__OFSUB__(v40, v42))
      {
        goto LABEL_159;
      }

      if (v40 - v42 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v40 < v42)
    {
      goto LABEL_158;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1BD1D7844(0, *(v41 + 16) + 1, 1, v41, v34, v35, v36, v37);
    }

    a3 = *(v41 + 16);
    v175 = *(v41 + 24);
    v176 = a3 + 1;
    if (a3 >= v175 >> 1)
    {
      v41 = sub_1BD1D7844((v175 > 1), a3 + 1, 1, v41, v34, v35, v36, v37);
    }

    *(v41 + 16) = v176;
    v177 = v41 + 16 * a3;
    *(v177 + 32) = v42;
    *(v177 + 40) = v40;
    v178 = *v233;
    if (!*v233)
    {
      goto LABEL_172;
    }

    if (a3)
    {
      while (1)
      {
        v179 = v176 - 1;
        if (v176 >= 4)
        {
          break;
        }

        if (v176 == 3)
        {
          v180 = *(v41 + 32);
          v181 = *(v41 + 40);
          v190 = __OFSUB__(v181, v180);
          v182 = v181 - v180;
          v183 = v190;
LABEL_97:
          if (v183)
          {
            goto LABEL_147;
          }

          v196 = (v41 + 16 * v176);
          v198 = *v196;
          v197 = v196[1];
          v199 = __OFSUB__(v197, v198);
          v200 = v197 - v198;
          v201 = v199;
          if (v199)
          {
            goto LABEL_150;
          }

          v202 = (v41 + 32 + 16 * v179);
          v204 = *v202;
          v203 = v202[1];
          v190 = __OFSUB__(v203, v204);
          v205 = v203 - v204;
          if (v190)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v200, v205))
          {
            goto LABEL_154;
          }

          if (v200 + v205 >= v182)
          {
            if (v182 < v205)
            {
              v179 = v176 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v206 = (v41 + 16 * v176);
        v208 = *v206;
        v207 = v206[1];
        v190 = __OFSUB__(v207, v208);
        v200 = v207 - v208;
        v201 = v190;
LABEL_111:
        if (v201)
        {
          goto LABEL_149;
        }

        v209 = v41 + 16 * v179;
        v211 = *(v209 + 32);
        v210 = *(v209 + 40);
        v190 = __OFSUB__(v210, v211);
        v212 = v210 - v211;
        if (v190)
        {
          goto LABEL_152;
        }

        if (v212 < v200)
        {
          goto LABEL_3;
        }

LABEL_118:
        a3 = v179 - 1;
        if (v179 - 1 >= v176)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*v242)
        {
          goto LABEL_167;
        }

        v217 = v41;
        v218 = *(v41 + 32 + 16 * a3);
        v219 = *(v41 + 32 + 16 * v179);
        v41 = *(v41 + 32 + 16 * v179 + 8);
        v220 = v247;
        sub_1BD49781C((*v242 + *(v240 + 72) * v218), (*v242 + *(v240 + 72) * v219), (*v242 + *(v240 + 72) * v41), v178);
        v247 = v220;
        if (v220)
        {
LABEL_139:
          v227 = v217;
          goto LABEL_141;
        }

        if (v41 < v218)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v217 = sub_1BD5ED6C8(v217, v31, v32, v33, v34, v35, v36, v37);
        }

        if (a3 >= *(v217 + 2))
        {
          goto LABEL_144;
        }

        v221 = &v217[16 * a3];
        *(v221 + 4) = v218;
        *(v221 + 5) = v41;
        v259 = v217;
        sub_1BD5ED63C(v179);
        v41 = v259;
        v176 = *(v259 + 16);
        v21 = v255;
        if (v176 <= 1)
        {
          goto LABEL_3;
        }
      }

      v184 = v41 + 32 + 16 * v176;
      v185 = *(v184 - 64);
      v186 = *(v184 - 56);
      v190 = __OFSUB__(v186, v185);
      v187 = v186 - v185;
      if (v190)
      {
        goto LABEL_145;
      }

      v189 = *(v184 - 48);
      v188 = *(v184 - 40);
      v190 = __OFSUB__(v188, v189);
      v182 = v188 - v189;
      v183 = v190;
      if (v190)
      {
        goto LABEL_146;
      }

      v191 = (v41 + 16 * v176);
      v193 = *v191;
      v192 = v191[1];
      v190 = __OFSUB__(v192, v193);
      v194 = v192 - v193;
      if (v190)
      {
        goto LABEL_148;
      }

      v190 = __OFADD__(v182, v194);
      v195 = v182 + v194;
      if (v190)
      {
        goto LABEL_151;
      }

      if (v195 >= v187)
      {
        v213 = (v41 + 32 + 16 * v179);
        v215 = *v213;
        v214 = v213[1];
        v190 = __OFSUB__(v214, v215);
        v216 = v214 - v215;
        if (v190)
        {
          goto LABEL_155;
        }

        if (v182 < v216)
        {
          v179 = v176 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v39 = v242[1];
    a4 = v232;
    if (v40 >= v39)
    {
      goto LABEL_128;
    }
  }

  v113 = v42 + a4;
  if (__OFADD__(v42, a4))
  {
    goto LABEL_161;
  }

  if (v113 >= v112)
  {
    v113 = v242[1];
  }

  if (v113 < v42)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (v40 == v113)
  {
    goto LABEL_77;
  }

  v229 = v41;
  v114 = *v242;
  v115 = *(v240 + 72);
  v116 = *v242 + v115 * (v40 - 1);
  v250 = -v115;
  v234 = v42;
  v117 = v42 - v40;
  v251 = v114;
  v235 = v115;
  v118 = v114 + v40 * v115;
  v236 = v113;
LABEL_55:
  v243 = v40;
  v238 = v118;
  v239 = v117;
  v241 = v116;
  v126 = v116;
  while (1)
  {
    v127 = v256;
    sub_1BD49C4D4(v118, v256, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v126, v21, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v127, v258, type metadata accessor for WrappedPass);
    v128 = swift_getEnumCaseMultiPayload();
    if (v128)
    {
      if (v128 == 1)
      {
        v129 = *v258;
        v130 = [*v258 displayName];
        if (!v130)
        {
          goto LABEL_166;
        }

        v131 = v130;
        v132 = sub_1BE052434();
        v134 = v133;
      }

      else
      {
        v138 = v249;
        sub_1BD49C53C(v258, v249, type metadata accessor for PlaceholderPass);
        v132 = *v138;
        v134 = v138[1];
        sub_1BE048C84();
        sub_1BD492EA0(v138, type metadata accessor for PlaceholderPass);
      }
    }

    else
    {
      v135 = *v258;
      v136 = [*v258 localizedDescription];
      v132 = sub_1BE052434();
      v134 = v137;
    }

    sub_1BD49C4D4(v21, v257, type metadata accessor for WrappedPass);
    v139 = swift_getEnumCaseMultiPayload();
    if (v139)
    {
      if (v139 == 1)
      {
        v140 = *v257;
        v141 = [*v257 displayName];
        if (!v141)
        {
          goto LABEL_165;
        }

        v142 = v141;
        v143 = sub_1BE052434();
        v145 = v144;

        if (v132 != v143)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v157 = v249;
        sub_1BD49C53C(v257, v249, type metadata accessor for PlaceholderPass);
        v158 = *v157;
        v145 = v157[1];
        sub_1BE048C84();
        sub_1BD492EA0(v157, type metadata accessor for PlaceholderPass);
        if (v132 != v158)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v153 = *v257;
      v154 = [*v257 localizedDescription];
      v155 = sub_1BE052434();
      v145 = v156;

      if (v132 != v155)
      {
        goto LABEL_71;
      }
    }

    if (v134 == v145)
    {
      v134, v146, v147, v148, v149, v150, v151, v152;
      v145, v119, v120, v121, v122, v123, v124, v125;
      a3 = type metadata accessor for UnavailablePass;
      v21 = v255;
      sub_1BD492EA0(v255, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v256, type metadata accessor for UnavailablePass);
LABEL_54:
      v40 = v243 + 1;
      v116 = v241 + v235;
      v117 = v239 - 1;
      v118 = v238 + v235;
      if (v243 + 1 == v236)
      {
        v40 = v236;
        v41 = v229;
        v42 = v234;
        goto LABEL_77;
      }

      goto LABEL_55;
    }

LABEL_71:
    a3 = sub_1BE053B84();
    v134, v159, v160, v161, v162, v163, v164, v165;
    v145, v166, v167, v168, v169, v170, v171, v172;
    v21 = v255;
    sub_1BD492EA0(v255, type metadata accessor for UnavailablePass);
    sub_1BD492EA0(v256, type metadata accessor for UnavailablePass);
    if ((a3 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (!v251)
    {
      break;
    }

    a3 = type metadata accessor for UnavailablePass;
    v173 = v252;
    sub_1BD49C53C(v118, v252, type metadata accessor for UnavailablePass);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD49C53C(v173, v126, type metadata accessor for UnavailablePass);
    v126 += v250;
    v118 += v250;
    if (__CFADD__(v117++, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
}

void sub_1BD49781C(id *a1, id *a2, id *a3, id *a4)
{
  v8 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v151 = (&v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v153 = (&v143 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v143 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v156 = (&v143 - v19);
  v154 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v154);
  v149 = (&v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v152 = (&v143 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v143 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v143 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
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
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_97;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_98;
  }

  v30 = (a2 - a1) / v28;
  v160 = a1;
  v159 = a4;
  v150 = v10;
  if (v30 >= v29 / v28)
  {
    v156 = v12;
    v32 = v29 / v28 * v28;
    if (a4 < a2 || (a2 + v32) <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v33 = v149;
    }

    else
    {
      v33 = v149;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v94 = a4 + v32;
    if (v32 < 1)
    {
      v97 = a4 + v32;
      goto LABEL_94;
    }

    v146 = a4;
    v95 = -v28;
    v96 = (a4 + v32);
    v97 = v94;
    v155 = -v28;
    while (1)
    {
      v144 = v97;
      v98 = a2;
      v99 = a2 + v95;
      v147 = a2;
      v148 = (a2 + v95);
      v100 = v95;
      while (1)
      {
        if (v98 <= a1)
        {
          v160 = v98;
          v158 = v144;
          goto LABEL_95;
        }

        v101 = a3;
        v145 = v97;
        v157 = v96 + v100;
        v102 = v152;
        sub_1BD49C4D4(v96 + v100, v152, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v99, v33, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v102, v153, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v111 = *v153;
          v112 = [*v153 localizedDescription];
          v107 = sub_1BE052434();
          v109 = v113;

LABEL_67:
          v110 = v156;
          goto LABEL_68;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v114 = v151;
          sub_1BD49C53C(v153, v151, type metadata accessor for PlaceholderPass);
          v107 = *v114;
          v109 = v114[1];
          sub_1BE048C84();
          sub_1BD492EA0(v114, type metadata accessor for PlaceholderPass);
          goto LABEL_67;
        }

        v104 = *v153;
        v105 = [*v153 displayName];
        if (!v105)
        {
          goto LABEL_101;
        }

        v106 = v105;
        v107 = sub_1BE052434();
        v109 = v108;

        v110 = v156;
        v33 = v149;
LABEL_68:
        sub_1BD49C4D4(v33, v110, type metadata accessor for WrappedPass);
        v115 = swift_getEnumCaseMultiPayload();
        if (v115)
        {
          if (v115 != 1)
          {
            v132 = v110;
            v133 = v151;
            sub_1BD49C53C(v132, v151, type metadata accessor for PlaceholderPass);
            v134 = *v133;
            v121 = v133[1];
            sub_1BE048C84();
            sub_1BD492EA0(v133, type metadata accessor for PlaceholderPass);
            if (v107 != v134)
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v116 = *v110;
          v117 = [*v110 displayName];
          if (!v117)
          {
            goto LABEL_102;
          }

          v118 = v117;
          v119 = sub_1BE052434();
          v121 = v120;
        }

        else
        {
          v129 = *v110;
          v130 = [v129 localizedDescription];
          v119 = sub_1BE052434();
          v121 = v131;
        }

        if (v107 != v119)
        {
          goto LABEL_78;
        }

LABEL_76:
        if (v109 == v121)
        {
          v135 = 0;
          goto LABEL_79;
        }

LABEL_78:
        v135 = sub_1BE053B84();
LABEL_79:
        v109, v122, v123, v124, v125, v126, v127, v128;
        v121, v136, v137, v138, v139, v140, v141, v142;
        v100 = v155;
        a3 = (v101 + v155);
        v33 = v149;
        sub_1BD492EA0(v149, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v152, type metadata accessor for UnavailablePass);
        if (v135)
        {
          break;
        }

        v97 = v157;
        v99 = v148;
        if (v101 < v96 || a3 >= v96)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v101 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v96 = v97;
        v98 = v147;
        if (v157 <= v146)
        {
          a2 = v147;
          goto LABEL_94;
        }
      }

      a2 = v148;
      if (v101 < v147 || a3 >= v147)
      {
        swift_arrayInitWithTakeFrontToBack();
        v97 = v145;
      }

      else
      {
        v97 = v145;
        if (v101 != v147)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v95 = v155;
      if (v96 <= v146)
      {
LABEL_94:
        v160 = a2;
        v158 = v97;
        goto LABEL_95;
      }
    }
  }

  v31 = v30 * v28;
  if (a4 < a1 || (a1 + v31) <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v153 = (a4 + v31);
  v158 = a4 + v31;
  if (v31 >= 1 && a2 < a3)
  {
    v152 = a3;
    v148 = v28;
    v149 = v17;
    while (1)
    {
      v35 = v155;
      sub_1BD49C4D4(a2, v155, type metadata accessor for UnavailablePass);
      sub_1BD49C4D4(a4, v157, type metadata accessor for UnavailablePass);
      sub_1BD49C4D4(v35, v156, type metadata accessor for WrappedPass);
      v36 = swift_getEnumCaseMultiPayload();
      if (!v36)
      {
        break;
      }

      if (v36 == 1)
      {
        v37 = *v156;
        v38 = [*v156 displayName];
        if (!v38)
        {
          goto LABEL_99;
        }

        goto LABEL_26;
      }

      v43 = v151;
      sub_1BD49C53C(v156, v151, type metadata accessor for PlaceholderPass);
      v40 = *v43;
      v42 = v43[1];
      sub_1BE048C84();
      sub_1BD492EA0(v43, type metadata accessor for PlaceholderPass);
LABEL_28:
      sub_1BD49C4D4(v157, v17, type metadata accessor for WrappedPass);
      v44 = swift_getEnumCaseMultiPayload();
      if (v44)
      {
        if (v44 == 1)
        {
          v45 = a4;
          v46 = a2;
          v47 = *v17;
          v48 = [v47 displayName];
          if (!v48)
          {
            goto LABEL_100;
          }

          v49 = v48;
          v50 = sub_1BE052434();
          v52 = v51;

          a2 = v46;
          a4 = v45;
          if (v40 != v50)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v66 = v17;
          v67 = v151;
          sub_1BD49C53C(v66, v151, type metadata accessor for PlaceholderPass);
          v68 = *v67;
          v52 = v67[1];
          sub_1BE048C84();
          sub_1BD492EA0(v67, type metadata accessor for PlaceholderPass);
          if (v40 != v68)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v60 = a4;
        v61 = a2;
        v62 = *v17;
        v63 = [*v17 localizedDescription];
        v64 = sub_1BE052434();
        v52 = v65;

        a2 = v61;
        a4 = v60;

        if (v40 != v64)
        {
          goto LABEL_38;
        }
      }

      if (v42 == v52)
      {
        v42, v53, v54, v55, v56, v57, v58, v59;
        v52, v69, v70, v71, v72, v73, v74, v75;
        sub_1BD492EA0(v157, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v155, type metadata accessor for UnavailablePass);
        v76 = v152;
        v17 = v149;
LABEL_43:
        v92 = v148;
        v93 = v148 + a4;
        if (a1 < a4 || a1 >= v93)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v159 = v93;
        a4 = (v92 + a4);
        goto LABEL_51;
      }

LABEL_38:
      v77 = sub_1BE053B84();
      v42, v78, v79, v80, v81, v82, v83, v84;
      v52, v85, v86, v87, v88, v89, v90, v91;
      sub_1BD492EA0(v157, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v155, type metadata accessor for UnavailablePass);
      v76 = v152;
      v17 = v149;
      if ((v77 & 1) == 0)
      {
        goto LABEL_43;
      }

      v92 = v148;
      if (a1 < a2 || a1 >= (v148 + a2))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 = (v92 + a2);
LABEL_51:
      a1 = (v92 + a1);
      v160 = a1;
      if (a4 >= v153 || a2 >= v76)
      {
        goto LABEL_95;
      }
    }

    v37 = *v156;
    v38 = [*v156 localizedDescription];
LABEL_26:
    v39 = v38;
    v40 = sub_1BE052434();
    v42 = v41;

    goto LABEL_28;
  }

LABEL_95:
  sub_1BD935168(&v160, &v159, &v158);
}

uint64_t _s9PassKitUI011PlaceholderA0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BE053B84() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1BE053B84()) && a1[4] == a2[4])
    {
      type metadata accessor for PlaceholderPass(0);

      JUMPOUT(0x1BFB39FA0);
    }
  }

  return 0;
}

uint64_t sub_1BD498408(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        return sub_1BE053074() & 1;
      }
    }

    else if (a1 > 2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD4985D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738, &qword_1BE0DA100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v38 - v12, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD520A0, &qword_1BE0B9840);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD520A0, &qword_1BE0B9840);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1BD49C53C(&v13[v15], v7, type metadata accessor for AvailablePass);
      v18 = sub_1BD498D50(v10, v7);
      sub_1BD492EA0(v7, type metadata accessor for AvailablePass);
      sub_1BD492EA0(v10, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v13, &qword_1EBD520A0, &qword_1BE0B9840);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1BD492EA0(v10, type metadata accessor for AvailablePass);
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD39738, &qword_1BE0DA100);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v13, &qword_1EBD520A0, &qword_1BE0B9840);
LABEL_10:
  v19 = type metadata accessor for Passes(0);
  v20 = v19[5];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    v23 = v22;
    v24 = v21;
    v25 = sub_1BE053074();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (*(a1 + v19[6]) == *(a2 + v19[6]) && (sub_1BD3FD448(*(a1 + v19[7]), *(a2 + v19[7])) & 1) != 0 && *(a1 + v19[8]) == *(a2 + v19[8]) && (sub_1BD3FD49C(*(a1 + v19[9]), *(a2 + v19[9])) & 1) != 0 && *(a1 + v19[10]) == *(a2 + v19[10]))
  {
    v26 = v19[11];
    v27 = *(a1 + v26);
    v28 = *(a2 + v26);
    if (v27)
    {
      if (v28)
      {
        sub_1BE048C84();
        sub_1BD3FDAD4(v27, v28);
        v30 = v29;
        v28, v31, v32, v33, v34, v35, v36, v37;
        if (v30)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1BD4989C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v14 = *(type metadata accessor for BalanceInfo(0) + 28);
  v15 = a1 + v14;
  v16 = *(v11 + 48);
  sub_1BD0DE19C(v15, v13, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE19C(a2 + v14, &v13[v16], &unk_1EBD39970, &unk_1BE0B9F80);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &unk_1EBD39970, &unk_1BE0B9F80);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1BD0DE19C(v13, v10, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_1BD0DE53C(v13, &qword_1EBD3A750, &unk_1BE0D3540);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1BD49B98C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v19 = sub_1BE052334();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1BD0DE53C(v13, &unk_1EBD39970, &unk_1BE0B9F80);
  return (v19 & 1) != 0;
}

uint64_t sub_1BD498D50(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for PassEligibleRewardsInfo(0);
  v190 = *(v4 - 1);
  v191 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v188 = &v183 - v7;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475B0, &qword_1BE0DA0E8);
  MEMORY[0x1EEE9AC00](v189);
  v192 = &v183 - v8;
  v9 = type metadata accessor for BalanceInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v183 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475B8, &unk_1BE0DA0F0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v183 - v17;
  v194 = a1;
  v19 = sub_1BD492F00();
  v21 = v20;
  v195 = a2;
  v23 = sub_1BD492F00();
  v29 = v22;
  if (v19 == v23 && v21 == v22)
  {
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v37 = sub_1BE053B84();
    v21, v38, v39, v40, v41, v42, v43, v44;
    v29, v45, v46, v47, v48, v49, v50, v51;
    if ((v37 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v193 = type metadata accessor for AvailablePass(0);
  v52 = v193[7];
  v53 = *(v16 + 48);
  v54 = v194;
  sub_1BD0DE19C(&v194[v52], v18, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  v55 = v195 + v52;
  v56 = v195;
  sub_1BD0DE19C(v55, &v18[v53], &qword_1EBD39FF0, &unk_1BE0B9CA0);
  v57 = *(v10 + 48);
  if (v57(v18, 1, v9) == 1)
  {
    if (v57(&v18[v53], 1, v9) == 1)
    {
      sub_1BD0DE53C(v18, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      goto LABEL_15;
    }

LABEL_10:
    v58 = &qword_1EBD475B8;
    v59 = &unk_1BE0DA0F0;
LABEL_11:
    sub_1BD0DE53C(v18, v58, v59);
    goto LABEL_12;
  }

  sub_1BD0DE19C(v18, v15, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  if (v57(&v18[v53], 1, v9) == 1)
  {
    sub_1BD492EA0(v15, type metadata accessor for BalanceInfo);
    goto LABEL_10;
  }

  sub_1BD49C53C(&v18[v53], v12, type metadata accessor for BalanceInfo);
  v62 = sub_1BD4989C4(v15, v12);
  sub_1BD492EA0(v12, type metadata accessor for BalanceInfo);
  sub_1BD492EA0(v15, type metadata accessor for BalanceInfo);
  sub_1BD0DE53C(v18, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  if (!v62)
  {
    goto LABEL_12;
  }

LABEL_15:
  v63 = v193;
  v64 = v193[8];
  v65 = &v54[v64];
  v66 = *&v54[v64 + 8];
  v67 = (v56 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68)
    {
      goto LABEL_12;
    }

    if ((*v67 ^ *v65))
    {
      goto LABEL_12;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v69 = v68;
    v70 = sub_1BE053074();

    if ((v70 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v68)
  {
    goto LABEL_12;
  }

  v71 = v63[9];
  v72 = *(v56 + v71);
  if (*&v54[v71])
  {
    if (!v72)
    {
      goto LABEL_12;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v73 = v72;
    v74 = sub_1BE053074();

    if ((v74 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v72)
  {
    goto LABEL_12;
  }

  v75 = v63[10];
  v76 = v189[12];
  v77 = v192;
  sub_1BD0DE19C(&v54[v75], v192, &unk_1EBD4C940, &unk_1BE0CDD90);
  v78 = v56 + v75;
  v18 = v77;
  sub_1BD0DE19C(v78, &v77[v76], &unk_1EBD4C940, &unk_1BE0CDD90);
  v79 = v191;
  v80 = v190[6];
  if (v80(v77, 1, v191) == 1)
  {
    if (v80(&v77[v76], 1, v79) == 1)
    {
      sub_1BD0DE53C(v77, &unk_1EBD4C940, &unk_1BE0CDD90);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v81 = v188;
  sub_1BD0DE19C(v18, v188, &unk_1EBD4C940, &unk_1BE0CDD90);
  if (v80(&v18[v76], 1, v79) == 1)
  {
    sub_1BD492EA0(v81, type metadata accessor for PassEligibleRewardsInfo);
LABEL_31:
    v58 = &qword_1EBD475B0;
    v59 = &qword_1BE0DA0E8;
    goto LABEL_11;
  }

  v82 = &v18[v76];
  v83 = v187;
  sub_1BD49C53C(v82, v187, type metadata accessor for PassEligibleRewardsInfo);
  v84 = sub_1BD57A43C(v81, v83);
  sub_1BD492EA0(v83, type metadata accessor for PassEligibleRewardsInfo);
  sub_1BD492EA0(v81, type metadata accessor for PassEligibleRewardsInfo);
  sub_1BD0DE53C(v18, &unk_1EBD4C940, &unk_1BE0CDD90);
  if (!v84)
  {
    goto LABEL_12;
  }

LABEL_33:
  v85 = v63[11];
  v86 = v54[v85];
  v87 = *(v56 + v85);
  if (v86 == 2)
  {
    if (v87 != 2)
    {
      goto LABEL_12;
    }

LABEL_38:
    v88 = v63[12];
    v89 = *&v54[v88];
    v90 = *&v54[v88 + 8];
    v92 = *&v54[v88 + 16];
    v91 = *&v54[v88 + 24];
    v93 = *&v54[v88 + 32];
    v94 = v54[v88 + 40];
    v95 = v56 + v88;
    v96 = *v95;
    v97 = *(v95 + 8);
    v98 = *(v95 + 16);
    v99 = *(v95 + 24);
    v190 = v91;
    v191 = v98;
    v192 = *(v95 + 32);
    v100 = *(v95 + 40);
    v189 = v89;
    if (v89)
    {
      if (v96)
      {
        v183 = v100;
        sub_1BD49C5A4(v96, v97, v191, v99, v192);
        v101 = v190;
        v185 = v90;
        sub_1BD49C5A4(v189, v90, v92, v190, v93);
        v102 = [v101 uniqueID];
        v184 = v94;
        v188 = v93;
        v186 = v92;
        if (v102)
        {
          v103 = v102;
          v104 = sub_1BE052434();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0;
        }

        v110 = [v99 uniqueID];
        if (v110)
        {
          v118 = v110;
          v119 = sub_1BE052434();
          v121 = v120;

          if (v106)
          {
            if (v121)
            {
              if (v104 == v119 && v106 == v121)
              {
                v106, v111, v112, v113, v114, v115, v116, v117;
                v121, v122, v123, v124, v125, v126, v127, v128;
              }

              else
              {
                v136 = sub_1BE053B84();
                v106, v137, v138, v139, v140, v141, v142, v143;
                v121, v144, v145, v146, v147, v148, v149, v150;
                if ((v136 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

              goto LABEL_56;
            }

            goto LABEL_52;
          }

          if (v121)
          {
            goto LABEL_54;
          }
        }

        else if (v106)
        {
LABEL_52:
          v121 = v106;
LABEL_54:
          v121, v111, v112, v113, v114, v115, v116, v117;
          goto LABEL_75;
        }

LABEL_56:
        if (sub_1BD400190(v188, v192))
        {
          if (v186)
          {
            if (!v191)
            {
              goto LABEL_75;
            }

            sub_1BD0E5E8C(0, &unk_1EBD3E560, 0x1E69B91F8);
            v151 = v191;
            v152 = v186;
            v153 = sub_1BE053074();

            if ((v153 & 1) == 0 || v185 != v97)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v191 || v185 != v97)
            {
              goto LABEL_75;
            }

            v151 = v191;
          }

          v192, v129, v130, v131, v132, v133, v134, v135;

          v154 = v183 ^ v184;
          sub_1BD49C600(v189, v185, v186, v190, v188);
          if ((v154 & 1) == 0)
          {
LABEL_66:
            v155 = v193[13];
            v156 = *&v194[v155];
            v157 = *&v194[v155 + 8];
            v158 = *&v194[v155 + 16];
            v159 = *&v194[v155 + 24];
            v160 = v194[v155 + 32];
            v161 = v195 + v155;
            v163 = *v161;
            v162 = *(v161 + 8);
            v165 = *(v161 + 16);
            v164 = *(v161 + 24);
            v166 = *(v161 + 32);
            if (v156)
            {
              if (v163)
              {
                if (v157 == v162 && v158 == v165 || (sub_1BE053B84() & 1) != 0)
                {
                  if (!v159)
                  {
                    if (!v164)
                    {
                      sub_1BD2EE178(v163, v162, v165, 0);
                      sub_1BD2EE178(v156, v157, v158, 0);
                      goto LABEL_86;
                    }

                    sub_1BD2EE178(v163, v162, v165, v164);
                    v175 = v156;
                    v176 = v157;
                    v177 = v158;
                    v178 = 0;
LABEL_84:
                    sub_1BD2EE178(v175, v176, v177, v178);
                    v60 = 0;
                    goto LABEL_87;
                  }

                  if (v164)
                  {
                    v195 = sub_1BD0E5E8C(0, &qword_1EBD45EA0, 0x1E69B8CB0);
                    sub_1BD2EE178(v163, v162, v165, v164);
                    sub_1BD2EE178(v156, v157, v158, v159);
                    v193 = v164;
                    v194 = v159;
                    v167 = sub_1BE053074();

                    if ((v167 & 1) == 0)
                    {
                      v60 = 0;
LABEL_87:
                      v165, v168, v169, v170, v171, v172, v173, v174;

                      sub_1BD2EE1C0(v156, v157, v158, v159);
                      return v60 & 1;
                    }

LABEL_86:
                    v60 = v166 ^ v160 ^ 1;
                    goto LABEL_87;
                  }

                  v179 = v163;
                  v180 = v162;
                  v181 = v165;
                  v182 = 0;
                }

                else
                {
                  v179 = v163;
                  v180 = v162;
                  v181 = v165;
                  v182 = v164;
                }

                sub_1BD2EE178(v179, v180, v181, v182);
                v175 = v156;
                v176 = v157;
                v177 = v158;
                v178 = v159;
                goto LABEL_84;
              }
            }

            else if (!v163)
            {
              v60 = 1;
              return v60 & 1;
            }

            sub_1BD2EE178(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24));
            sub_1BD2EE178(v156, v157, v158, v159);
            sub_1BD2EE1C0(v156, v157, v158, v159);
            sub_1BD2EE1C0(v163, v162, v165, v164);
          }

LABEL_12:
          v60 = 0;
          return v60 & 1;
        }

LABEL_75:
        v192, v129, v130, v131, v132, v133, v134, v135;

        sub_1BD49C600(v189, v185, v186, v190, v188);
        goto LABEL_12;
      }
    }

    else if (!v96)
    {
      goto LABEL_66;
    }

    v107 = v191;
    v187 = v99;
    sub_1BD49C5A4(v96, v97, v191, v99, v192);
    v109 = v189;
    v108 = v190;
    sub_1BD49C5A4(v189, v90, v92, v190, v93);
    sub_1BD49C600(v109, v90, v92, v108, v93);
    sub_1BD49C600(v96, v97, v107, v187, v192);
    goto LABEL_12;
  }

  v60 = 0;
  if (v87 != 2 && ((v87 ^ v86) & 1) == 0)
  {
    goto LABEL_38;
  }

  return v60 & 1;
}

uint64_t sub_1BD4999A8(void *a1)
{
  v2 = [a1 requestType];
  v3 = [a1 accountServiceTransferRequest];
  if (!v3)
  {
    if (v2 < 0xB)
    {
      v6 = 0x1FBu >> v2;
      return v6 & 1;
    }

LABEL_6:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v4 = v3;
  v5 = [v3 transferType];

  if (v5 == 2)
  {
    goto LABEL_6;
  }

  LOBYTE(v6) = 0;
  return v6 & 1;
}

unint64_t sub_1BD499A38(void *a1, void *a2)
{
  if ((sub_1BD4999A8(a2) & 1) == 0)
  {
    return 0;
  }

  v4 = [a1 amount];
  v5 = [objc_opt_self() zero];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v6 = v4;
    goto LABEL_9;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v7 = sub_1BE053074();

  if (v7)
  {
    return 1;
  }

LABEL_10:
  v9 = [a1 currency];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 currencyCode];
  v15 = sub_1BE052434();
  v17 = v16;

  if (!v13)
  {
    v17, v18, v19, v20, v21, v22, v23, v24;
    return 0;
  }

  if (v11 == v15 && v13 == v17)
  {
    v13, v18, v19, v20, v21, v22, v23, v24;
    v17, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_19;
  }

  v32 = sub_1BE053B84();
  v13, v33, v34, v35, v36, v37, v38, v39;
  v17, v40, v41, v42, v43, v44, v45, v46;
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v47 = [a2 paymentSummaryItems];
  sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
  v48 = sub_1BE052744();

  if (v48 >> 62)
  {
    v56 = sub_1BE053704();
    if (v56)
    {
LABEL_21:
      v57 = __OFSUB__(v56, 1);
      result = v56 - 1;
      if (v57)
      {
        __break(1u);
      }

      else if ((v48 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v58 = *(v48 + 8 * result + 32);
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_38;
      }

      v58 = MEMORY[0x1BFB40900](result, v48);
LABEL_26:
      v66 = v58;
      v48, v59, v60, v61, v62, v63, v64, v65;
      v67 = [v66 amount];

      if (v67)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v56 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
      goto LABEL_21;
    }
  }

  v48, v49, v50, v51, v52, v53, v54, v55;
LABEL_31:
  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v67 = sub_1BE053054();
LABEL_32:
  result = [a1 amount];
  if (result)
  {
    v68 = result;
    v69 = [result compare_];

    return v69 == -1;
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_1BD499D4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v6, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BD492EA0(v6, type metadata accessor for WrappedPass);
  if (!EnumCaseMultiPayload)
  {
    if ([a2 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_1BD1B6140(&v17, v19);
      v8 = &qword_1EBD3E6D0;
      v9 = 0x1E69B8BA0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ([a2 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_1BD1B6140(&v17, v19);
      v8 = &qword_1EBD3E6D8;
      v9 = 0x1E69B8D68;
LABEL_13:
      sub_1BD0E5E8C(0, v8, v9);
      swift_dynamicCast();
      v10 = v14;
      v11 = [v14 status];

      return v11;
    }

LABEL_14:
    sub_1BD0DE53C(&v17, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }

  return 0;
}

void sub_1BD499F70(void *a1)
{
  v2 = [a1 paymentRequest];
  if (!v2)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 accountServiceTransferRequest];

  if (!v4)
  {

    return;
  }

  v5 = [v4 account];
  v6 = [v4 transferType];
  if (v6 == 2)
  {
    v7 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  }

  else
  {
    if (v6 != 3)
    {
LABEL_12:

      return;
    }

    v7 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v8 = [v5 *v7];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = v4;
  v11 = [v10 _transactionAmount];
  if (v11)
  {
    v12 = v11;
    sub_1BE0533E4();
  }
}

id sub_1BD49A330(void *a1)
{
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = [result accountServiceTransferRequest];

  if (!v4)
  {
LABEL_14:

    return 0;
  }

  v5 = [a1 peerPaymentAccount];
  if (!v5)
  {

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [a1 peerPaymentPass];
  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v4 transferType];
  if ((v9 - 2) >= 2)
  {
    if (v9 <= 1)
    {

      return 0;
    }

    goto LABEL_13;
  }

  if ((PKPeerPaymentNeedsResolutionToPerformAccountServicePayments() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  result = [v6 currentBalance];
  if (result)
  {
    v10 = result;

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BD49A490(void *a1)
{
  v2 = [a1 amount];
  v3 = [v2 decimal];

  v4 = [a1 amount];
  v5 = [v4 currency];

  if (!v5)
  {
    sub_1BE052434();
    v7 = v6;
    v5 = sub_1BE052404();
    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  if ([a1 creditDebitIndicator] == 1)
  {
    v15 = [v3 pk_negativeValue];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;

    v3 = v16;
  }

  v17 = PKCurrencyAmountMake();

  if (v17)
  {

    return;
  }

  __break(1u);
LABEL_9:

  __break(1u);
}

uint64_t sub_1BD49A5B4(uint64_t a1, void *a2, SEL *a3, SEL *a4)
{
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = [a2 *a4];
      if (v13)
      {
        v14 = v13;
        sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
        v15 = sub_1BE052744();

        return v15;
      }
    }

    else
    {
      sub_1BD492EA0(v10, type metadata accessor for WrappedPass);
    }
  }

  else
  {
    v17 = *v10;
    v18 = [a2 *a3];
    if (v18)
    {
      v19 = v18;
      sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
      v20 = sub_1BE052744();

      return v20;
    }
  }

  return 0;
}

void sub_1BD49A760(uint64_t a1, void *a2)
{
  v48 = a2;
  v47 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v47);
  v46 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AvailablePass(0);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1BE053704();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v8)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1BD531A40(0, v8 & ~(v8 >> 63), 0);
    v50 = v55;
    if (v49)
    {
      v9 = sub_1BE0536A4();
    }

    else
    {
      v9 = sub_1BE053674();
      v10 = *(a1 + 36);
    }

    v52 = v9;
    v53 = v10;
    v54 = v49 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v42 = a1 + 56;
      v43 = v12;
      v40 = v2;
      v41 = a1 + 64;
      v44 = v8;
      while (v11 < v8)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_38;
        }

        v20 = v52;
        v21 = v53;
        v22 = v54;
        sub_1BD965D04(v52, v53, v54, a1);
        v23 = v46;
        *v46 = v24;
        swift_storeEnumTagMultiPayload();
        sub_1BD4954F8(v23, v48, v7);
        v25 = v50;
        v55 = v50;
        v26 = v7;
        v28 = *(v50 + 16);
        v27 = *(v50 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1BD531A40((v27 > 1), v28 + 1, 1);
          v25 = v55;
        }

        *(v25 + 16) = v28 + 1;
        v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v50 = v25;
        sub_1BD49C53C(v26, v25 + v29 + *(v45 + 72) * v28, type metadata accessor for AvailablePass);
        v7 = v26;
        if (v49)
        {
          if (!v22)
          {
            goto LABEL_43;
          }

          if (sub_1BE0536C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475D0, &qword_1BE0DA108);
          v13 = sub_1BE052A64();
          sub_1BE053774();
          v13(v51, 0);
          if (v11 == v8)
          {
LABEL_35:
            sub_1BD20DE9C(v52, v53, v54, v14, v15, v16, v17, v18);
            return;
          }
        }

        else
        {
          if (v22)
          {
            goto LABEL_44;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v30 = (1 << *(a1 + 32));
          if (v20 >= v30)
          {
            goto LABEL_39;
          }

          v31 = v20 >> 6;
          v32 = *(v42 + 8 * (v20 >> 6));
          if (((v32 >> v20) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(a1 + 36) != v21)
          {
            goto LABEL_41;
          }

          v33 = v32 & (-2 << (v20 & 0x3F));
          if (v33)
          {
            v30 = (__clz(__rbit64(v33)) | v20 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_1BD20DE9C(v20, v21, 0, v14, v15, v16, v17, v18);
                v30 = (__clz(__rbit64(v37)) + v34);
                goto LABEL_33;
              }
            }

            sub_1BD20DE9C(v20, v21, 0, v14, v15, v16, v17, v18);
LABEL_33:
            v7 = v26;
          }

          v39 = *(a1 + 36);
          v52 = v30;
          v53 = v39;
          v54 = 0;
          v8 = v44;
          if (v11 == v44)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_1BD49ABC8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v105 - v8);
  sub_1BD49C4D4(a1, &v105 - v8, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v13 = *v9;
    v14 = [v13 hasAssociatedPeerPaymentAccount];

    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_6:
    v15 = [a2 peerPaymentAccount];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 state];
      if (v17 == 4)
      {

        return 1;
      }

      if (v17 == 3)
      {

        return 0;
      }

      if (v17 == 1)
      {
        v18 = [objc_opt_self() peerPaymentPassIsProvisionedOnDeviceForAccount_];

        if ((v18 & 1) == 0)
        {
          return 2;
        }
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD492EA0(v9, type metadata accessor for WrappedPass);
    goto LABEL_13;
  }

  v11 = *v9;
  v12 = [v11 hasAssociatedPeerPaymentAccount];

  if (v12)
  {
    goto LABEL_6;
  }

LABEL_13:
  sub_1BD49C4D4(a1, v6, type metadata accessor for WrappedPass);
  v20 = swift_getEnumCaseMultiPayload();
  if (!v20)
  {
    v50 = *v6;
    v51 = [v50 deviceInAppPaymentApplications];
    if (!v51 || ((v52 = v51, sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40), sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0, 0x1E69B8B40), v53 = sub_1BE052A34(), v52, (v53 & 0xC000000000000001) == 0) ? (v61 = *(v53 + 16)) : (v61 = sub_1BE053704()), v53, v54, v55, v56, v57, v58, v59, v60, v61))
    {
      v21 = v50;
      v63 = [v21 secureElementPass];
      if (v63)
      {
        v64 = v63;
        v65 = [v63 passActivationState];

        if (v65 == 1)
        {

          return 5;
        }
      }

      if ([v21 isDevicePrimaryPaymentApplicationPersonalized])
      {
        v66 = [v21 devicePrimaryInAppPaymentApplication];

        if (v66)
        {
          if ([v66 paymentNetworkIdentifier] == 100)
          {
            v67 = [v21 organizationName];

            v68 = sub_1BE052434();
            return v68;
          }
        }

        return 4;
      }

      v69 = [v21 devicePrimaryPaymentApplication];
      if (v69)
      {
        v62 = [v69 state];

        goto LABEL_47;
      }

LABEL_48:

      return 0;
    }

    return 3;
  }

  if (v20 != 1)
  {
    sub_1BD492EA0(v6, type metadata accessor for WrappedPass);
    return 3;
  }

  v21 = *v6;
  v22 = [v21 paymentApplications];
  if (v22)
  {
    v23 = v22;
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    v24 = sub_1BE052744();

    if (v24 >> 62)
    {
      goto LABEL_88;
    }

    v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v24, v25, v26, v27, v28, v29, v30, v31;
    if (!v32)
    {

      return 3;
    }
  }

  result = [v21 primaryPaymentApplication];
  if (!result)
  {
    __break(1u);
    goto LABEL_94;
  }

  v33 = result;
  v34 = [result state];

  v35 = [v21 primaryPaymentApplication];
  v36 = v35;
  if (v34 != 1)
  {
    if (v35)
    {
      v62 = [v35 state];

LABEL_47:
      return v62;
    }

    goto LABEL_48;
  }

  if (v35)
  {
    if ([v35 paymentNetworkIdentifier] == 100)
    {
      v37 = [v21 organizationName];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1BE052434();
        v41 = v40;

        v49 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v49 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {

          return v39;
        }

        v41, v42, v43, v44, v45, v46, v47, v48;
      }
    }
  }

  result = [a2 allUnavailableRemoteDevices];
  if (result)
  {
    v70 = result;
    sub_1BD0E5E8C(0, &qword_1EBD475C0, 0x1E69B9120);
    v71 = sub_1BE052744();

    if (v71 >> 62)
    {
      goto LABEL_90;
    }

    a2 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      while (1)
      {
        v72 = 0;
        v24 = v71 & 0xC000000000000001;
        v105 = v71 + 32;
        v106 = v71 & 0xFFFFFFFFFFFFFF8;
        v73 = &selRef_setIsFinalViewController_;
        v108 = a2;
        v109 = v71;
        v107 = v71 & 0xC000000000000001;
        v110 = v36;
        while (v24)
        {
          v74 = MEMORY[0x1BFB40900](v72, v71);
          v75 = __OFADD__(v72++, 1);
          if (v75)
          {
            goto LABEL_87;
          }

LABEL_68:
          v76 = v74;
          v77 = [v74 v73[441]];
          if (v77)
          {
            v78 = v77;
            sub_1BD0E5E8C(0, &qword_1EBD47510, 0x1E69B9130);
            v79 = sub_1BE052744();

            if (v79 >> 62)
            {
              v87 = sub_1BE053704();
              if (v87)
              {
LABEL_71:
                v88 = 0;
                v24 = v79 & 0xC000000000000001;
                a2 = (v79 + 32);
                do
                {
                  if (v24)
                  {
                    v89 = MEMORY[0x1BFB40900](v88, v79);
                    v75 = __OFADD__(v88++, 1);
                    if (v75)
                    {
                      __break(1u);
LABEL_85:
                      __break(1u);
LABEL_86:
                      __break(1u);
LABEL_87:
                      __break(1u);
LABEL_88:
                      v32 = sub_1BE053704();
                      goto LABEL_18;
                    }

                    v90 = v89;
                    swift_unknownObjectRelease();
                    if (v90 == v21)
                    {
                      goto LABEL_83;
                    }
                  }

                  else
                  {
                    if ((v88 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_85;
                    }

                    if (v88 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_86;
                    }

                    if (*(a2 + v88) == v21)
                    {
LABEL_83:
                      v109, v80, v81, v82, v83, v84, v85, v86;
                      v79, v91, v92, v93, v94, v95, v96, v97;

                      return v76;
                    }

                    ++v88;
                  }
                }

                while (v88 != v87);
              }
            }

            else
            {
              v87 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v87)
              {
                goto LABEL_71;
              }
            }

            v79, v80, v81, v82, v83, v84, v85, v86;
            v71 = v109;
            v36 = v110;
            v24 = v107;
            a2 = v108;
            v73 = &selRef_setIsFinalViewController_;
          }

          if (v72 == a2)
          {
            goto LABEL_91;
          }
        }

        if (v72 < *(v106 + 16))
        {
          break;
        }

        __break(1u);
LABEL_90:
        a2 = sub_1BE053704();
        if (!a2)
        {
          goto LABEL_91;
        }
      }

      v74 = *(v105 + 8 * v72);
      v75 = __OFADD__(v72++, 1);
      if (v75)
      {
        goto LABEL_87;
      }

      goto LABEL_68;
    }

LABEL_91:

    v71, v98, v99, v100, v101, v102, v103, v104;
    return 4;
  }

LABEL_94:
  __break(1u);
  return result;
}

void sub_1BD49B404(uint64_t a1, void *a2)
{
  v60 = a2;
  v59 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v59);
  v67 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v65 = (&v52 - v6);
  v66 = type metadata accessor for UnavailablePass(0);
  v58 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (v9)
  {
    v64 = v8;
    v72 = MEMORY[0x1E69E7CC0];
    sub_1BD5319FC(0, v9 & ~(v9 >> 63), 0);
    v10 = v72;
    if (v61)
    {
      v11 = sub_1BE0536A4();
    }

    else
    {
      v11 = sub_1BE053674();
      v12 = *(a1 + 36);
    }

    v69 = v11;
    v70 = v12;
    v71 = v61 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v52 = v2;
      v13 = 0;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v14 = a1;
      }

      v54 = a1 + 56;
      v55 = v14;
      v53 = a1 + 64;
      v56 = v9;
      v57 = a1;
      while (v13 < v9)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_40;
        }

        v22 = v69;
        v63 = v70;
        v62 = v71;
        sub_1BD965D04(v69, v70, v71, a1);
        v24 = v23;
        v25 = v65;
        *v65 = v23;
        swift_storeEnumTagMultiPayload();
        v26 = v64;
        sub_1BD49C4D4(v25, v64, type metadata accessor for WrappedPass);
        v27 = v66;
        v28 = (v26 + *(v66 + 20));
        *v28 = 0;
        v28[1] = 0;
        v29 = v24;
        v30 = sub_1BD49ABC8(v25, v60);
        v31 = v26 + *(v27 + 28);
        *v31 = v30;
        *(v31 + 8) = v32;
        *(v31 + 16) = v33;
        sub_1BD49C4D4(v25, v67, type metadata accessor for WrappedPass);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          sub_1BD492EA0(v65, type metadata accessor for WrappedPass);
          v35 = 0;
          v36 = v67;
        }

        else
        {
          v34 = *v67;
          v35 = [*v67 hasAssociatedPeerPaymentAccount];

          v36 = v65;
        }

        v37 = v63;
        v38 = v62;
        sub_1BD492EA0(v36, type metadata accessor for WrappedPass);

        v39 = v64;
        v64[*(v66 + 24)] = v35;
        v72 = v10;
        v41 = *(v10 + 16);
        v40 = *(v10 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1BD5319FC((v40 > 1), v41 + 1, 1);
          v39 = v64;
          v10 = v72;
        }

        *(v10 + 16) = v41 + 1;
        sub_1BD49C53C(v39, v10 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v41, type metadata accessor for UnavailablePass);
        if (v61)
        {
          a1 = v57;
          if (!v38)
          {
            goto LABEL_45;
          }

          if (sub_1BE0536C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v9 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475D0, &qword_1BE0DA108);
          v15 = sub_1BE052A64();
          sub_1BE053774();
          v15(v68, 0);
          if (v13 == v9)
          {
LABEL_37:
            sub_1BD20DE9C(v69, v70, v71, v16, v17, v18, v19, v20);
            return;
          }
        }

        else
        {
          a1 = v57;
          if (v38)
          {
            goto LABEL_46;
          }

          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v42 = (1 << *(v57 + 32));
          if (v22 >= v42)
          {
            goto LABEL_41;
          }

          v43 = v22 >> 6;
          v44 = *(v54 + 8 * (v22 >> 6));
          if (((v44 >> v22) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (*(v57 + 36) != v37)
          {
            goto LABEL_43;
          }

          v45 = v44 & (-2 << (v22 & 0x3F));
          if (v45)
          {
            v42 = (__clz(__rbit64(v45)) | v22 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v46 = v43 << 6;
            v47 = v43 + 1;
            v48 = (v53 + 8 * v43);
            while (v47 < (v42 + 63) >> 6)
            {
              v50 = *v48++;
              v49 = v50;
              v46 += 64;
              ++v47;
              if (v50)
              {
                sub_1BD20DE9C(v22, v37, 0, v16, v17, v18, v19, v20);
                v42 = (__clz(__rbit64(v49)) + v46);
                goto LABEL_36;
              }
            }

            sub_1BD20DE9C(v22, v37, 0, v16, v17, v18, v19, v20);
          }

LABEL_36:
          v51 = *(a1 + 36);
          v69 = v42;
          v70 = v51;
          v71 = 0;
          v9 = v56;
          if (v13 == v56)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

uint64_t sub_1BD49B98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD49BA64(uint64_t a1)
{
  result = sub_1BD0E5E8C(319, &unk_1EBD40340, 0x1E69B8D08);
  if (v2 <= 0x3F)
  {
    result = sub_1BD0E5E8C(319, &qword_1EBD47510, 0x1E69B9130);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PlaceholderPass(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD49BB34(uint64_t a1)
{
  type metadata accessor for PKPaymentCardType(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04CF34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD49BC10(uint64_t a1)
{
  sub_1BD49BE20(319, &qword_1EBD365F8, type metadata accessor for AvailablePass, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD49BDB0(319, &qword_1EBD392F0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD49BE20(319, &qword_1EBD47528, type metadata accessor for AvailablePass, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1BD49BE20(319, &qword_1EBD47530, type metadata accessor for UnavailablePass, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BD49BEA4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD49BDB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BD0E5E8C(255, &qword_1EBD43BA0, 0x1E69B8B40);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BD49BE20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD49BEA4(uint64_t a1)
{
  if (!qword_1EBD3F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F228, &qword_1BE0C5B10);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3F220);
    }
  }
}

void sub_1BD49BF30(uint64_t a1)
{
  type metadata accessor for WrappedPass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4F750, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI011UnavailableA0V6ReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1BD49C030(uint64_t a1)
{
  type metadata accessor for WrappedPass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD49BE20(319, &qword_1EBD47548, type metadata accessor for IdentityCredential, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD49BE20(319, &qword_1EBD47550, type metadata accessor for BalanceInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD47558, &type metadata for TransferLimitInfo);
        if (v4 <= 0x3F)
        {
          sub_1BD1C2DD8(319, &qword_1EBD47560, &type metadata for AccountResolutionInfo);
          if (v5 <= 0x3F)
          {
            sub_1BD49BE20(319, &qword_1EBD365E0, type metadata accessor for PassEligibleRewardsInfo, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD1C2DD8(319, &qword_1EBD47568, &type metadata for BankConnectAccountInfo);
              if (v7 <= 0x3F)
              {
                sub_1BD1C2DD8(319, &qword_1EBD47570, &type metadata for PassPaymentOffersInfo);
                if (v8 <= 0x3F)
                {
                  sub_1BD1C2DD8(319, &qword_1EBD47578, &type metadata for PaymentOfferMerchandisingInfo);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD49BDB0(319, &qword_1EBD47580, MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BD49C2E0(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD43B00, 0x1E69B8780);
  if (v1 <= 0x3F)
  {
    sub_1BD49BE20(319, &qword_1EBD36A40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD49C3E0()
{
  result = qword_1EBD47598;
  if (!qword_1EBD47598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47598);
  }

  return result;
}

unint64_t sub_1BD49C438()
{
  result = qword_1EBD475A0;
  if (!qword_1EBD475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475A0);
  }

  return result;
}

uint64_t sub_1BD49C4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD49C53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD49C5A4(id result, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    v6 = a3;
    v7 = a4;
    sub_1BE048C84();

    return v8;
  }

  return result;
}

void sub_1BD49C600(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {

    a5, v7, v8, v9, v10, v11, v12, v13;
  }
}

uint64_t sub_1BD49C65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD49C768()
{
  result = qword_1EBD475D8;
  if (!qword_1EBD475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475D8);
  }

  return result;
}

unint64_t sub_1BD49C7C0()
{
  result = qword_1EBD475E0;
  if (!qword_1EBD475E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475E0);
  }

  return result;
}

void sub_1BD49C888()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_loadView);
  v2 = [v0 dockView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 footerView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setPrimaryButton_];
  v6 = [v1 headerView];
  v7 = PKOBKCardHeaderViewSize(3);
  if (v6)
  {
    v9 = v7;
    v10 = v8;
    v11 = *&v1[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_verificationController];
    v12 = v6;
    v13 = [v11 passSnapshot];
    [v12 setPassSnapshot:v13 withSize:0 animated:0 needsCorners:{v9, v10}];

    v3 = v12;
    v5 = v12;
  }
}

id sub_1BD49CAB0()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BE051FA4();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051F44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BE051FC4();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  sub_1BD49D038();
  v16 = v15;
  v18 = v17;
  v19 = sub_1BE052404();
  if (v18)
  {
    sub_1BE048C84();
    v20 = sub_1BE052404();
    v18, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v20 = 0;
  }

  [v1 hideActivitySpinnerWithTitle:v19 subtitle:v20 animated:1];

  [v1 showCheckmarkAnimated_];
  result = [v1 dockView];
  if (result)
  {
    v36 = result;
    v16, v29, v30, v31, v32, v33, v34, v35;
    v18, v37, v38, v39, v40, v41, v42, v43;
    [v36 setButtonsEnabled_];

    sub_1BD14BE3C();
    v60 = sub_1BE052D54();
    sub_1BE051FB4();
    *v8 = 2000000000;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E7F28], v5);
    MEMORY[0x1BFB3F070](v11, v8);
    (*(v6 + 8))(v8, v5);
    v44 = v62;
    v45 = *(v61 + 8);
    v45(v11, v62);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD49D8F0;
    v70 = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_104;
    v47 = _Block_copy(aBlock);
    v70, v48, v49, v50, v51, v52, v53, v54;
    v55 = v63;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v56 = v65;
    v57 = v68;
    sub_1BE053664();
    v58 = v60;
    MEMORY[0x1BFB3FD90](v14, v55, v56, v47);
    _Block_release(v47);

    (*(v67 + 8))(v56, v57);
    (*(v64 + 8))(v55, v66);
    return (v45)(v14, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD49D038()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  result = [*(v0 + OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_verificationController) pass];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = [result contactlessActivationState];
  v15 = *MEMORY[0x1E69B80D8];
  v16 = *(v2 + 104);
  if (v14)
  {
    v49 = v13;
    v16(v4, v15, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v50 = sub_1BE04B6F4();

      v18 = *(v2 + 8);
      v18(v4, v1);
      v48 = "CODE_ACCEPTED_TITLE";
      v16(v7, v15, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BE0B69E0;
      v20 = v49;
      v21 = [v49 localizedDescription];
      v22 = sub_1BE052434();
      v24 = v23;

      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1BD110550();
      *(v19 + 32) = v22;
      *(v19 + 40) = v24;
      sub_1BE04B714();

      v19, v25, v26, v27, v28, v29, v30, v31;
      v18(v7, v1);
      return v50;
    }

    goto LABEL_11;
  }

  v16(v11, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = sub_1BE04B6F4();
  v49 = v34;
  v50 = v33;

  v48 = *(v2 + 8);
  (v48)(v11, v1);
  if ([v13 hasActiveVirtualCard])
  {
    v16(v7, *MEMORY[0x1E69B8058], v1);
  }

  else
  {
    v16(v7, v15, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BE0B69E0;
  v36 = [v13 localizedDescription];
  v37 = sub_1BE052434();
  v39 = v38;

  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1BD110550();
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  sub_1BE04B714();

  v35, v40, v41, v42, v43, v44, v45, v46;
  (v48)(v7, v1);
  return v50;
}

void sub_1BD49D528(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_reporter);
    if (v3)
    {
      [v3 reportPageCompleted:1 context:0];
    }

    v4 = swift_unknownObjectUnownedLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v4 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        sub_1BD8659A4(v5, &off_1F3B9AAB8, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for FinanceKitPredictedTransactionDetailView(uint64_t a1)
{
  result = qword_1EBD47628;
  if (!qword_1EBD47628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD49D96C(uint64_t a1)
{
  sub_1BD49DA08(319);
  if (v1 <= 0x3F)
  {
    sub_1BD49DA9C(319);
    if (v2 <= 0x3F)
    {
      sub_1BE0490F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD49DA08(uint64_t a1)
{
  if (!qword_1EBD47638)
  {
    type metadata accessor for NavigationController();
    sub_1BD4A0710(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD47638);
    }
  }
}

void sub_1BD49DA9C(uint64_t a1)
{
  if (!qword_1EBD47640)
  {
    sub_1BE049BF4();
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD47640);
    }
  }
}

uint64_t sub_1BD49DB10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47658, &qword_1BE0DA388);
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47660, &qword_1BE0DA390);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47668, &qword_1BE0DA398);
  v51 = *(v9 - 8);
  v10 = v51;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1BE04F504();
  v64 = 1;
  sub_1BD49EA14(a1, v62);
  memcpy(v65, v62, 0x101uLL);
  memcpy(v66, v62, 0x101uLL);
  sub_1BD0DE19C(v65, &v61, &qword_1EBD47670, &qword_1BE0DA3A0);
  sub_1BD0DE53C(v66, &qword_1EBD47670, &qword_1BE0DA3A0);
  memcpy(&v63[7], v65, 0x101uLL);
  v16 = v64;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47678, &unk_1BE0FB970) + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v19 = sub_1BE0505C4();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  *v8 = v15;
  *(v8 + 1) = 0;
  v8[16] = v16;
  memcpy(v8 + 17, v63, 0x108uLL);
  v20 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47680, &qword_1BE0FB9B0) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v31 = &v8[*(v6 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47688, &qword_1BE0DA3E0);
  sub_1BD4A032C(&qword_1EBD47690, &qword_1EBD47660, &qword_1BE0DA390, sub_1BD4A02FC);
  sub_1BD0DE4F4(&qword_1EBD476B8, &qword_1EBD47688, &qword_1BE0DA3E0, MEMORY[0x1E6981F48]);
  v50 = v14;
  sub_1BE051A24();
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  v36 = v57;
  sub_1BE051A44();
  v37 = *(v10 + 16);
  v38 = v56;
  v39 = v14;
  v40 = v52;
  v37(v56, v39, v52);
  v41 = *(v58 + 16);
  v42 = v53;
  v43 = v54;
  v41(v53, v36, v54);
  v44 = v55;
  v37(v55, v38, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD476C0, &unk_1BE0DA3E8);
  v41(&v44[*(v45 + 48)], v42, v43);
  v46 = *(v58 + 8);
  v46(v57, v43);
  v47 = *(v51 + 8);
  v47(v50, v40);
  v46(v42, v43);
  return (v47)(v56, v40);
}

void sub_1BD49E0D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BE04F7C4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8040], v3);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v4 + 8))(v6, v3);
    *&v95 = v9;
    *(&v95 + 1) = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE0505D4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v23, v25, v26, v27, v28);
    v17, v29, v30, v31, v32, v33, v34, v35;
    v36 = sub_1BE0502A4();
    v37 = sub_1BE0505F4();
    v39 = v38;
    v82 = v40;
    v42 = v41;
    v36, v38, v40, v41, v43, v44, v45, v46;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v47, v48, v49, v50, v51);
    v24, v52, v53, v54, v55, v56, v57, v58;
    v59 = sub_1BE04F504();
    v85[0] = 1;
    sub_1BD49E4B0(v83, &v95);
    v89 = *&v96[16];
    v90 = *&v96[32];
    v87 = v95;
    v88 = *v96;
    v92[2] = *&v96[16];
    v92[3] = *&v96[32];
    v92[4] = *&v96[48];
    v92[1] = *v96;
    v91 = *&v96[48];
    v92[0] = v95;
    sub_1BD0DE19C(&v87, &v93, &qword_1EBD3E1F0, &qword_1BE0C3060);
    sub_1BD0DE53C(v92, &qword_1EBD3E1F0, &qword_1BE0C3060);
    *(&v86[1] + 7) = v88;
    *(&v86[2] + 7) = v89;
    *(&v86[3] + 7) = v90;
    *(&v86[4] + 7) = v91;
    *(v86 + 7) = v87;
    v60 = v85[0];
    v93 = v59;
    v94[0] = v85[0];
    *&v94[17] = v86[1];
    v61 = v86[0];
    *&v94[1] = v86[0];
    *&v94[80] = *(&v91 + 1);
    v62 = v86[3];
    *&v94[65] = v86[4];
    v63 = v86[2];
    *&v94[49] = v86[3];
    v64 = v86[1];
    *&v94[33] = v86[2];
    v65 = *&v94[32];
    *(a2 + 88) = *&v94[16];
    v66 = v93;
    *(a2 + 72) = *v94;
    *(a2 + 56) = v66;
    v67 = *&v94[48];
    *(a2 + 136) = *&v94[64];
    *(a2 + 120) = v67;
    *(a2 + 104) = v65;
    *&v96[17] = v64;
    v85[112] = 1;
    v68 = (v82 & 1);
    v85[104] = v82 & 1;
    *a2 = v84;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v37;
    *(a2 + 32) = v39;
    *(a2 + 40) = v68;
    *(a2 + 48) = v42;
    *(a2 + 152) = *&v94[80];
    v95 = v59;
    v96[0] = v60;
    *&v96[1] = v61;
    *&v97[15] = *(&v86[4] + 15);
    *v97 = v86[4];
    *&v96[49] = v62;
    *&v96[33] = v63;
    sub_1BD0D7F18(v37, v39, v68);
    sub_1BE048C84();
    sub_1BD0DE19C(&v93, v85, &unk_1EBD4D3D0, &qword_1BE0DA410);
    sub_1BD0DE53C(&v95, &unk_1EBD4D3D0, &qword_1BE0DA410);
    sub_1BD0DDF10(v37, v39, v68, v69, v70, v71, v72, v73);
    v42, v74, v75, v76, v77, v78, v79, v80;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD49E4B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v3 = sub_1BE04B0F4();
  v156 = *(v3 - 8);
  v157 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v154 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1BE0493F4();
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE049BF4();
  v149 = *(v6 - 8);
  v150 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80D8], v9, v11);
  v14 = PKPassKitBundle();
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v10 + 8))(v13, v9);
    v161 = v16;
    v162 = v18;
    v144 = sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    LOBYTE(v15) = v22;
    v24 = v23;
    v25 = sub_1BE0505D4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_1BD0DDF10(v19, v21, (v15 & 1), v30, v32, v33, v34, v35);
    v24, v36, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BE0502A4();
    v44 = sub_1BE0505F4();
    v146 = v45;
    v147 = v44;
    v145 = v46;
    v148 = v47;
    v43, v45, v46, v47, v48, v49, v50, v51;
    sub_1BD0DDF10(v25, v27, (v29 & 1), v52, v53, v54, v55, v56);
    v31, v57, v58, v59, v60, v61, v62, v63;
    type metadata accessor for FinanceKitPredictedTransactionDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620, &unk_1BE0DA2F0);
    sub_1BE0516A4();
    v64 = v151;
    sub_1BE049BD4();
    (*(v149 + 8))(v8, v150);
    v65 = v154;
    sub_1BE04B054();
    v66 = sub_1BE0493E4();
    v68 = v67;
    (*(v156 + 8))(v65, v157);
    (*(v153 + 8))(v64, v155);
    v161 = v66;
    v162 = v68;
    v69 = sub_1BE0506C4();
    v71 = v70;
    LOBYTE(v65) = v72;
    v74 = v73;
    v75 = sub_1BE0505D4();
    v77 = v76;
    LOBYTE(v21) = v78;
    v80 = v79;
    sub_1BD0DDF10(v69, v71, (v65 & 1), v79, v81, v82, v83, v84);
    v74, v85, v86, v87, v88, v89, v90, v91;
    v92 = sub_1BE0502A4();
    v93 = sub_1BE0505F4();
    v95 = v94;
    LOBYTE(v24) = v96;
    v98 = v97;
    v92, v94, v96, v97, v99, v100, v101, v102;
    sub_1BD0DDF10(v75, v77, (v21 & 1), v103, v104, v105, v106, v107);
    v80, v108, v109, v110, v111, v112, v113, v114;
    v115 = v145 & 1;
    LOBYTE(v161) = v145 & 1;
    v160 = v145 & 1;
    v159 = 1;
    v158 = v24 & 1;
    v117 = v146;
    v116 = v147;
    *a2 = v147;
    *(a2 + 8) = v117;
    *(a2 + 16) = v115;
    v118 = v148;
    *(a2 + 24) = v148;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v93;
    *(a2 + 56) = v95;
    *(a2 + 64) = v24 & 1;
    *(a2 + 72) = v98;
    v119 = v116;
    sub_1BD0D7F18(v116, v117, v115);
    sub_1BE048C84();
    sub_1BD0D7F18(v93, v95, v24 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v93, v95, (v24 & 1), v120, v121, v122, v123, v124);
    v98, v125, v126, v127, v128, v129, v130, v131;
    sub_1BD0DDF10(v119, v117, v161, v132, v133, v134, v135, v136);
    v118, v137, v138, v139, v140, v141, v142, v143;
  }

  else
  {
    __break(1u);
  }
}