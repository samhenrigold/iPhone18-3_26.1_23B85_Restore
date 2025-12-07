void sub_1BD228650(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if (v4 || (v4 = sub_1BD228C3C()) != 0)
  {

    v5 = sub_1BD228AA4();
    if (!v5 || (v6 = v5, v7 = [v5 suppressPayInFull], v6, (v7 & 1) == 0))
    {
      KeyPath = swift_getKeyPath();
      *&v34[0] = v2;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B594();
      KeyPath, v9, v10, v11, v12, v13, v14, v15;
      if (!*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer))
      {
        sub_1BD227C90(v34);
        goto LABEL_13;
      }
    }
  }

  if (sub_1BD228864())
  {
    sub_1BD227E5C(v34);
LABEL_13:
    v29 = v34[1];
    v28 = v34[0];
    v31 = v34[3];
    v30 = v34[2];
    v33 = v34[5];
    v32 = v34[4];
    v25 = v35;
    v26 = v36;
    v27 = v37;
    goto LABEL_14;
  }

  v16 = swift_getKeyPath();
  *&v34[0] = v2;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (v24 && [v24 type] == 2)
  {
    sub_1BD22826C(v34);
    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
LABEL_14:
  *a1 = v28;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  *(a1 + 80) = v33;
  *(a1 + 96) = v25;
  *(a1 + 104) = v26;
  *(a1 + 112) = v27;
}

uint64_t sub_1BD228864()
{
  v1 = v0;
  v2 = sub_1BD228AA4();
  if (!v2 && (v2 = sub_1BD228C3C()) == 0 || (v2, (v3 = sub_1BD228AA4()) != 0) && (v4 = v3, v5 = [v3 suppressPayInFull], v4, v5))
  {
    KeyPath = swift_getKeyPath();
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B594();
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    if (!*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer))
    {
      return 1;
    }
  }

  v14 = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  v14, v15, v16, v17, v18, v19, v20, v21;
  result = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (result)
  {
    return [result type] == 1;
  }

  return result;
}

uint64_t sub_1BD2289E8(const char *a1, const char *a2)
{
  v4 = sub_1BD227B28();
  v12 = v4;
  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v4 + 40);
    while (1)
    {
      v5 = *v15;
      v16 = *(v15 - 1) == a1 && v5 == a2;
      if (v16 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      ++v14;
      v15 += 15;
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    v12, v5, v6, v7, v8, v9, v10, v11;
    v17 = sub_1BD227B28();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
LABEL_9:
    v12, v5, v6, v7, v8, v9, v10, v11;
    return 0;
  }

  return v14;
}

uint64_t sub_1BD228AA4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  if (v9)
  {
    if (v9 >> 62)
    {
LABEL_21:
      v10 = sub_1BE053704();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v10)
    {
      v18 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB40900](v18, v9);
        }

        else
        {
          if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v19 = *(v9 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v19 type] == 1)
        {
          break;
        }

        ++v18;
        if (v21 == v10)
        {
          goto LABEL_14;
        }
      }

      v9, v22, v23, v24, v25, v26, v27, v28;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_14:
      v9, v11, v12, v13, v14, v15, v16, v17;
    }
  }

  return 0;
}

uint64_t sub_1BD228C3C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  if (v9)
  {
    if (v9 >> 62)
    {
LABEL_21:
      v10 = sub_1BE053704();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v10)
    {
      v18 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB40900](v18, v9);
        }

        else
        {
          if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v19 = *(v9 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v19 type] == 2)
        {
          break;
        }

        ++v18;
        if (v21 == v10)
        {
          goto LABEL_14;
        }
      }

      v9, v22, v23, v24, v25, v26, v27, v28;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_14:
      v9, v11, v12, v13, v14, v15, v16, v17;
    }
  }

  return 0;
}

void *sub_1BD228DE8(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v2 + *a2);
  v13 = v12;
  return v12;
}

id sub_1BD228EA4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + *a3);
  *a4 = v15;

  return v15;
}

void sub_1BD228F68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD228F98(v1);
}

void sub_1BD228F98(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD229120()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) != 0 || *v1 != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v0;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    *(v1 + 8) = 0;
  }

  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD22D060;
    v21 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3CC8C0;
    aBlock[3] = &block_descriptor_55;
    v12 = _Block_copy(aBlock);
    v21, v13, v14, v15, v16, v17, v18, v19;
    [v10 cancelOfferRequestWithCompletion_];
    _Block_release(v12);
  }
}

void sub_1BD229304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [v6 configuration];

      [v7 removeTransactionAmount];
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = &v8[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType];
    if (v8[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8] == 1)
    {
      *v9 = 0;
      v9[8] = 1;
    }

    else
    {
      v10 = v8;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B584();

      KeyPath, v12, v13, v14, v15, v16, v17, v18;
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v27 = v19;
    sub_1BD2294F8(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

void sub_1BD2294F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  v11 = &selRef_thumbnailWidth;
  if (v10)
  {
    v12 = [*(v8 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass) uniqueID];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    v14 = [v10 paymentOfferCriteriaForPassUniqueID_];

    if (v14)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
      v15 = sub_1BE052744();

      v54 = MEMORY[0x1E69E7CC0];
      if (v15 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v52 = v10;
        v53 = v9;
        v11 = 0;
        v9 = v15 & 0xC000000000000001;
        v10 = (v15 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v9)
          {
            v24 = MEMORY[0x1BFB40900](v11, v15);
          }

          else
          {
            if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v24 = *(v15 + 8 * v11 + 32);
          }

          v25 = v24;
          v26 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if ([v24 supportsInstorePrePurchase])
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++v11;
          if (v26 == i)
          {
            v14 = v54;
            v9 = v53;
            v10 = v52;
            v11 = 0x1E804D000;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    v28 = [v10 selectedOfferDetails];
    v27 = [v28 selectedPaymentOffer];
  }

  else
  {
    v27 = 0;
    v14 = 0;
  }

  sub_1BD226ED0(v14, a2, a3, a4, a5, a6, a7, a8);
  v29 = v27;
  sub_1BD227098(v27);
  if (v10)
  {
    v30 = [v10 consumingSelectedPaymentOffer];
    v31 = v30;
    v32 = (v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
    if (v30 != *(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled))
    {
      goto LABEL_26;
    }

LABEL_31:
    *v32 = v31;
    if (v10)
    {
      goto LABEL_27;
    }

LABEL_32:
    v42 = 0;
    v43 = v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
    if ((*(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8) & 1) == 0)
    {
LABEL_29:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B584();
      KeyPath, v45, v46, v47, v48, v49, v50, v51;

      return;
    }

    goto LABEL_33;
  }

  v31 = 0;
  v32 = (v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
  if ((*(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v33 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v33);
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B584();
  v33, v34, v35, v36, v37, v38, v39, v40;
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_27:
  v41 = [*(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass) *(v11 + 2192)];
  v42 = [v10 preconfiguredInstallmentOfferStateForPassUniqueID_];

  v43 = v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
  if ((*(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8) & 1) != 0 || *v43 != v42)
  {
    goto LABEL_29;
  }

LABEL_33:

  *v43 = v42;
  *(v43 + 8) = v10 == 0;
}

void sub_1BD2299B0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v166 - v4;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v166 - v11;
  if ((PKHideCardBenefitRewards() & 1) == 0)
  {
    v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v13)
    {
      v14 = v13;
      v179 = v1;
      v15 = sub_1BD228C3C();
      if (v15)
      {
        v16 = v15;
        v1 = v179;
        v17 = *(v179 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
        v18 = [v17 uniqueID];
        if (v18)
        {
          v175 = v5;
          v178 = v7;
          v19 = v18;
          v174 = sub_1BE052434();
          v21 = v20;
          v22 = [v17 secureElementPass];
          if (v22)
          {
            v176 = v21;
            v177 = v14;
            v23 = v22;
            v24 = [v22 devicePrimaryPaymentApplication];

            if (!v24)
            {

              __break(1u);
              return;
            }

            v25 = [v24 state];

            v26 = v178;
            if (v25 == 1)
            {
              v27 = v16;
              v28 = v177;
              v173 = [v177 ineligibleDetailsForCriteria_];
              if ([v173 isEligible])
              {
                KeyPath = swift_getKeyPath();
                v37 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel___observationRegistrar;
                v180 = v1;
                v172 = sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
                sub_1BE04B594();
                v38 = v179;
                KeyPath, v39, v40, v41, v42, v43, v44, v45;
                v171 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
                if (!*(v38 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance) || (a1 & 1) != 0)
                {
                  v77 = [v27 identifier];

                  v78 = sub_1BE052434();
                  v169 = v79;
                  v170 = v78;

                  v80 = [v177 rewardsBalanceForPassUniqueID_];
                  sub_1BD227288(v80);
                  v81 = swift_getKeyPath();
                  v82 = v37;
                  v83 = v81;
                  v180 = v38;
                  v168 = v82;
                  sub_1BE04B594();
                  v83, v84, v85, v86, v87, v88, v89, v90;
                  v91 = *(v38 + v171);
                  v92 = v175;
                  if (v91)
                  {
                    v93 = v91;
                    sub_1BE04D154();
                    v94 = v93;
                    v95 = sub_1BE04D204();
                    v96 = sub_1BE052C14();

                    if (os_log_type_enabled(v95, v96))
                    {
                      v97 = swift_slowAlloc();
                      v166 = swift_slowAlloc();
                      v180 = v166;
                      *v97 = 136315138;
                      v98 = [v94 identifier];
                      v167 = v94;
                      v99 = v98;
                      v100 = v96;
                      v101 = sub_1BE052434();
                      v103 = v102;

                      v104 = sub_1BD123690(v101, v103, &v180);
                      v103, v105, v106, v107, v108, v109, v110, v111;
                      *(v97 + 4) = v104;
                      _os_log_impl(&dword_1BD026000, v95, v100, "Loaded redeemable payment rewards balance (%s) from DB", v97, 0xCu);
                      v112 = v166;
                      __swift_destroy_boxed_opaque_existential_0(v166, v113, v114, v115, v116, v117, v118, v119);
                      MEMORY[0x1BFB45F20](v112, -1, -1);
                      v120 = v97;
                      v26 = v178;
                      MEMORY[0x1BFB45F20](v120, -1, -1);

                      v92 = v175;
                    }

                    else
                    {
                    }

                    (*(v26 + 8))(v12, v6);
                  }

                  sub_1BE04D154();
                  v122 = sub_1BE04D204();
                  v123 = sub_1BE052C14();
                  if (os_log_type_enabled(v122, v123))
                  {
                    v124 = swift_slowAlloc();
                    *v124 = 0;
                    _os_log_impl(&dword_1BD026000, v122, v123, "Fetching redeemable payment rewards balance from server", v124, 2u);
                    MEMORY[0x1BFB45F20](v124, -1, -1);
                  }

                  (*(v26 + 8))(v9, v6);
                  v125 = swift_getKeyPath();
                  v126 = v179;
                  v180 = v179;
                  sub_1BE04B594();
                  v125, v127, v128, v129, v130, v131, v132, v133;
                  v134 = v176;
                  if (!*(v126 + v171))
                  {
                    v135 = swift_getKeyPath();
                    v180 = v126;
                    sub_1BE04B594();
                    v126 = v179;
                    v135, v136, v137, v138, v139, v140, v141, v142;
                    if (*(v126 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) == 1)
                    {
                      v143 = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](v143);
                      *(&v166 - 4) = v126;
                      *(&v166 - 3) = 2;
                      *(&v166 - 16) = 0;
                      v180 = v126;
                      sub_1BE04B584();
                      v126 = v179;
                      v143, v144, v145, v146, v147, v148, v149, v150;
                    }
                  }

                  v151 = sub_1BE0528D4();
                  (*(*(v151 - 8) + 56))(v92, 1, 1, v151);
                  sub_1BE0528A4();
                  v152 = v177;
                  v153 = v126;
                  v154 = sub_1BE052894();
                  v155 = swift_allocObject();
                  v156 = MEMORY[0x1E69E85E0];
                  v155[2] = v154;
                  v155[3] = v156;
                  v155[4] = v153;
                  v155[5] = v152;
                  v157 = v169;
                  v155[6] = v170;
                  v155[7] = v157;
                  v155[8] = v174;
                  v155[9] = v134;
                  v158 = sub_1BD122C00(0, 0, v92, &unk_1BE0C33B8, v155);

                  v158, v159, v160, v161, v162, v163, v164, v165;
                }

                else
                {

                  v176, v46, v47, v48, v49, v50, v51, v52;
                }
              }

              else
              {
                v176, v29, v30, v31, v32, v33, v34, v35;

                if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
                {
                  v69 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v69);
                  *(&v166 - 2) = v1;
                  *(&v166 - 1) = 0;
                  v180 = v1;
                  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
                  sub_1BE04B584();

                  v69, v70, v71, v72, v73, v74, v75, v76;
                }

                else
                {

                  v121 = v173;
                }
              }

              return;
            }

            v60 = v176;
          }

          else
          {

            v60 = v21;
          }

          v60, v53, v54, v55, v56, v57, v58, v59;
        }

        else
        {
        }
      }

      else
      {

        v1 = v179;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
  {
    v61 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v61);
    *(&v166 - 2) = v1;
    *(&v166 - 1) = 0;
    v180 = v1;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    v61, v62, v63, v64, v65, v66, v67, v68;
  }
}

uint64_t sub_1BD22A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_1BE04D214();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  sub_1BE0528A4();
  v8[36] = sub_1BE052894();
  v11 = sub_1BE052844();
  v8[37] = v11;
  v8[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD22A4C8, v11, v10);
}

uint64_t sub_1BD22A4C8()
{
  v1 = v0[24];
  v2 = *(v0[23] + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
  v3 = sub_1BE052404();
  v0[39] = v3;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_1BD22A610;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD22B1E0;
  v0[13] = &block_descriptor_31;
  v0[14] = v4;
  [v1 updateRewardsBalanceForPass:v2 criteriaIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD22A610()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_1BD22ABA8;
  }

  else
  {
    v5 = sub_1BD22A740;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD22A740(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v84 = v8;
  v9 = *(v8 + 312);
  v11 = *(v8 + 184);
  v10 = *(v8 + 192);
  *(v8 + 288), a2, a3, a4, a5, a6, a7, a8;

  v12 = sub_1BE052404();
  v13 = [v10 rewardsBalanceForPassUniqueID_];

  sub_1BD227288(v13);
  KeyPath = swift_getKeyPath();
  *(v8 + 176) = v11;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v22 = *(v11 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (v22)
  {
    v23 = v22;
    sub_1BE04D154();
    v24 = v23;
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C14();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v8 + 272);
    v29 = *(v8 + 232);
    v30 = *(v8 + 240);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v82 = v29;
      v32 = swift_slowAlloc();
      v83 = v32;
      *v31 = 136315138;
      v80 = v26;
      v33 = [v24 identifier];
      v81 = v28;
      v34 = sub_1BE052434();
      v36 = v35;

      v37 = sub_1BD123690(v34, v36, &v83);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v31 + 4) = v37;
      _os_log_impl(&dword_1BD026000, v25, v80, "Fetched redeemable payment rewards balance (%s)", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32, v45, v46, v47, v48, v49, v50, v51);
      MEMORY[0x1BFB45F20](v32, -1, -1);
      MEMORY[0x1BFB45F20](v31, -1, -1);

      (*(v30 + 8))(v81, v82);
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
  }

  else
  {
    sub_1BE04D154();
    v52 = sub_1BE04D204();
    v53 = sub_1BE052C14();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v8 + 280);
    v56 = *(v8 + 232);
    v57 = *(v8 + 240);
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v52, v53, "Fetched no redeemable payment rewards balance", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v57 + 8))(v55, v56);
  }

  v59 = *(v8 + 184);
  v60 = swift_getKeyPath();
  *(v8 + 144) = v59;
  sub_1BE04B594();
  v60, v61, v62, v63, v64, v65, v66, v67;
  if ((*(v59 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v59 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2)
  {
    v68 = *(v8 + 184);
    v69 = swift_getKeyPath();
    v70 = swift_task_alloc();
    *(v70 + 16) = v68;
    *(v70 + 24) = 0;
    *(v70 + 32) = 1;
    *(v8 + 152) = v68;
    sub_1BE04B584();
    v69, v71, v72, v73, v74, v75, v76, v77;
  }

  v78 = *(v8 + 8);

  return v78();
}

uint64_t sub_1BD22ABA8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 312);
  *(v8 + 288), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  v10 = sub_1BE04A844();
  if ([v10 code] == 40030)
  {
    sub_1BE04D154();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C14();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Payment rewards balance opted-out", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v8 + 264);
    v15 = *(v8 + 232);
    v16 = *(v8 + 240);
    v17 = *(v8 + 184);

    v18 = *(v16 + 8);
    v18(v14, v15);
    v19 = v10;
    sub_1BD2276F8(v10);
    if (*(v17 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
    {
      v20 = *(v8 + 184);
      KeyPath = swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v20;
      *(v22 + 24) = 0;
      *(v8 + 168) = v20;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B584();
      KeyPath, v23, v24, v25, v26, v27, v28, v29;
    }

    v40 = *(v8 + 184);
    v41 = swift_getKeyPath();
    *(v8 + 160) = v40;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B594();
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v40 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v49 && [v49 type] == 2)
    {
      sub_1BE04D154();
      v50 = sub_1BE04D204();
      v51 = sub_1BE052C14();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1BD026000, v50, v51, "Switching to pay in full since rewards was selected", v52, 2u);
        MEMORY[0x1BFB45F20](v52, -1, -1);
      }

      v53 = *(v8 + 256);
      v54 = *(v8 + 232);
      v55 = *(v8 + 184);

      v18(v53, v54);
      v56 = *(v55 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      [v56 clearCurrentSelectedPaymentOfferDetails];
      if (v56)
      {
        v57 = [v56 configuration];
        [v57 removeTransactionAmount];
      }

      v58 = *(v8 + 320);
      v59 = [v56 removeCachedPaymentOffers];
      sub_1BD2294F8(v59, v60, v61, v62, v63, v64, v65, v66);

      v67 = v58;
    }

    else
    {
      v68 = *(v8 + 320);

      v67 = v68;
    }
  }

  else
  {
    v30 = *(v8 + 320);
    sub_1BE04D154();
    v31 = v30;
    v32 = sub_1BE04D204();
    v33 = sub_1BE052C34();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v8 + 320);
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v35;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1BD026000, v32, v33, "Could not refresh payment rewards balance, %@", v36, 0xCu);
      sub_1BD0DE53C(v37, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v37, -1, -1);
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    else
    {
    }

    (*(*(v8 + 240) + 8))(*(v8 + 248), *(v8 + 232));
  }

  v69 = *(v8 + 184);
  v70 = swift_getKeyPath();
  *(v8 + 144) = v69;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  v70, v71, v72, v73, v74, v75, v76, v77;
  if ((*(v69 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v69 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2)
  {
    v78 = *(v8 + 184);
    v79 = swift_getKeyPath();
    v80 = swift_task_alloc();
    *(v80 + 16) = v78;
    *(v80 + 24) = 0;
    *(v80 + 32) = 1;
    *(v8 + 152) = v78;
    sub_1BE04B584();
    v79, v81, v82, v83, v84, v85, v86, v87;
  }

  v88 = *(v8 + 8);

  return v88();
}

uint64_t sub_1BD22B1E0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_1BD22B2AC(uint64_t a1@<X8>)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  v14 = 0uLL;
  if (!v13)
  {
    v30 = 0;
    v41 = 0;
    v40 = 0;
    v42 = 1;
LABEL_13:
    *a1 = v13;
    *(a1 + 8) = v30;
    *(a1 + 16) = v14;
    *(a1 + 32) = v41;
    *(a1 + 40) = v40;
    *(a1 + 41) = v42;
    return;
  }

  v15 = swift_getKeyPath();
  v16 = v13;
  sub_1BE04B594();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v2 + v12);
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  if (![v25 isRedeemable] || (objc_msgSend(v25, sel_isValid) & 1) == 0)
  {

    goto LABEL_12;
  }

  v26 = [v25 isPositive];

  if ((v26 & 1) == 0)
  {
LABEL_12:

    v13 = 0;
    v30 = 0;
    v41 = 0;
    v40 = 0;
    v42 = 1;
    v14 = 0uLL;
    goto LABEL_13;
  }

  v27 = [v16 monetaryValue];
  v28 = [v27 amount];

  if (v28)
  {
    v13 = sub_1BE0533F4();
    v30 = v29;
    v32 = v31;

    v33 = [v16 value];
    if (v33)
    {
      v34 = v33;
      if ([v16 isQuantitative])
      {
        v35 = sub_1BE0533F4();
        v37 = v36;
        v39 = v38;

        v40 = 0;
LABEL_16:
        v42 = 0;
        *v43 = v32;
        *&v43[4] = v35;
        *&v43[12] = v37;
        *&v43[20] = v39;
        v14 = *v43;
        v41 = *&v43[16];
        goto LABEL_13;
      }
    }

    v35 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 1;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1BD22B534(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v95 = v1;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v17 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (!v17)
  {
    goto LABEL_12;
  }

  v93 = v5;
  v18 = v17;
  v19 = sub_1BD228C3C();
  if (!v19)
  {
LABEL_11:

LABEL_12:
    v46 = [*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) clearCurrentSelectedPaymentOfferDetails];
    sub_1BD2294F8(v46, v47, v48, v49, v50, v51, v52, v53);
    return;
  }

  v20 = v19;
  v94 = v18;
  v21 = swift_getKeyPath();
  v95 = v1;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = *(v1 + v16);
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = v29;
  if (![v30 isRedeemable] || !objc_msgSend(v30, sel_isValid))
  {

    goto LABEL_10;
  }

  v31 = [v30 isPositive];

  if (!v31)
  {
LABEL_10:

    v18 = v94;
    goto LABEL_11;
  }

  v33 = *a1;
  v32 = a1[1];
  v34 = *(a1 + 4);
  v35 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB40440](v33, v32, v34, v35, v36, v37))
  {
LABEL_8:
    v38 = [*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) clearCurrentSelectedPaymentOfferDetails];
    sub_1BD2294F8(v38, v39, v40, v41, v42, v43, v44, v45);

    return;
  }

  v92 = *(a1 + 20);
  v54 = *(a1 + 28);
  v91 = *(a1 + 9);
  v55 = *(a1 + 40);
  v56 = MEMORY[0x1BFB403C0](0);
  if (v55)
  {
    v59 = v94;
    v60 = v94;
    v61 = sub_1BE053344();
    v62 = 0;
  }

  else
  {
    if (MEMORY[0x1BFB40440](v92, v54, v91, v56, v57, v58))
    {
      goto LABEL_8;
    }

    v59 = v94;
    v63 = v94;
    v61 = sub_1BE053344();
    v62 = sub_1BE053344();
  }

  v64 = [objc_allocWithZone(MEMORY[0x1E69B8CD0]) initWithRewardsBalance:v59 amount:v61 value:v62];

  v65 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
  v66 = objc_allocWithZone(MEMORY[0x1E69B9208]);
  v67 = v64;
  v68 = v20;
  v69 = [v66 initWithPaymentPass_];
  sub_1BE04AFD4();
  sub_1BE04AF74();
  v71 = v70;
  (*(v93 + 8))(v7, v4);
  v72 = objc_allocWithZone(MEMORY[0x1E69B9210]);
  v73 = sub_1BE052404();
  v71, v74, v75, v76, v77, v78, v79, v80;
  v81 = [v72 initWithRewardsRedemptionIntent:v67 criteria:v68 passDetails:v69 sessionIdentifier:v73];

  v89 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (v89)
  {
    v89 = [v89 updateCurrentSelectedPaymentOffer:v81 updateReason:3];
  }

  sub_1BD2294F8(v89, v82, v83, v84, v85, v86, v87, v88);
}

id sub_1BD22B994()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 fallbackSelectedPaymentOfferForType_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = v4, v6 = [v4 rewardsRedemptionIntent], v7 = objc_msgSend(v6, sel_monetaryValue), v6, !v7))
  {
    v17 = 0;
LABEL_11:

    return v17;
  }

  result = [v7 amount];
  if (result)
  {
    v9 = result;
    v10 = sub_1BE0533F4();
    v12 = v11;
    v14 = v13;

    v15 = [v5 rewardsRedemptionIntent];
    v16 = [v15 value];

    if (v16)
    {
      sub_1BE0533E4();
    }

    v18[0] = v10;
    v18[1] = v12;
    v19 = v14;
    v20 = 0uLL;
    v21 = 0;
    v22 = 1;
    sub_1BD22B534(v18);

    v17 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD22BB48()
{
  v1[26] = v0;
  sub_1BE0528A4();
  v1[27] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD22BBE0, v3, v2);
}

uint64_t sub_1BD22BBE0()
{
  v1 = sub_1BD228C3C();
  *(v0 + 240) = v1;
  if (!v1)
  {
    *(v0 + 216), v2, v3, v4, v5, v6, v7, v8;
LABEL_9:
    v43 = 0;
    goto LABEL_10;
  }

  v9 = *(*(v0 + 208) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  *(v0 + 248) = v9;
  if (!v9)
  {
    v44 = v1;
    *(v0 + 216), v2, v3, v4, v5, v6, v7, v8;

    goto LABEL_9;
  }

  v10 = v1;
  v11 = v9;
  v12 = [v10 identifier];
  v13 = v12;
  v14 = v12;
  if (!v12)
  {
    sub_1BE052434();
    v16 = v15;
    v14 = sub_1BE052404();
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BE052434();
    v25 = v24;
    v13 = sub_1BE052404();
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  *(v0 + 256) = v13;
  v33 = v12;
  v34 = [v11 dynamicContentPageForCriteriaIdentifier:v14 pageType:18];

  if (v34)
  {
    v35 = *(v0 + 216);

    v35, v36, v37, v38, v39, v40, v41, v42;
    v43 = v34;
LABEL_10:
    v45 = *(v0 + 8);

    return v45(v43);
  }

  v47 = *(v0 + 208);
  v48 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  *(v0 + 264) = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  v49 = v47 + v48;
  if ((*(v49 + 8) & 1) != 0 || *v49 != 2)
  {
    KeyPath = swift_getKeyPath();
    v51 = swift_task_alloc();
    *(v51 + 16) = v47;
    *(v51 + 24) = 2;
    *(v51 + 32) = 0;
    *(v0 + 184) = v47;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();
    KeyPath, v52, v53, v54, v55, v56, v57, v58;
  }

  else
  {
    *(v49 + 8) = 0;
  }

  *(v0 + 272) = 0;
  v59 = [v10 identifier];

  if (!v59)
  {
    sub_1BE052434();
    v61 = v60;
    v59 = sub_1BE052404();
    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  *(v0 + 280) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B7020;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1BD112388(inited);
  v71 = v70;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
  sub_1BD22CFF8();
  v72 = sub_1BE052A24();
  *(v0 + 288) = v72;
  v71, v73, v74, v75, v76, v77, v78, v79;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_1BD22C04C;
  v80 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD22B1E0;
  *(v0 + 104) = &block_descriptor_46;
  *(v0 + 112) = v80;
  [v11 updateDynamicContentPageForCriteriaIdentifier:v59 pageTypes:v72 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD22C04C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {

    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1BD22C320;
  }

  else
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1BD22C164;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD22C164(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 280);
  v9 = *(v8 + 288);
  v11 = *(v8 + 256);
  v12 = *(v8 + 264);
  v13 = *(v8 + 248);
  v14 = *(v8 + 208);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;

  v15 = [v13 dynamicContentPageForCriteriaIdentifier:v11 pageType:18];
  if (*(v14 + v12 + 8))
  {
    v16 = *(v8 + 240);
    v17 = *(v8 + 208) + *(v8 + 264);

    *v17 = 0;
    *(v17 + 8) = 1;
  }

  else
  {
    v18 = *(v8 + 240);
    v19 = *(v8 + 248);
    v20 = *(v8 + 208);
    KeyPath = swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = 0;
    *(v22 + 32) = 1;
    *(v8 + 200) = v20;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();

    KeyPath, v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = *(v8 + 8);

  return v30(v15);
}

uint64_t sub_1BD22C320(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 288);
  v10 = *(v8 + 280);
  v11 = *(v8 + 264);
  v12 = *(v8 + 208);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  v13 = *(v8 + 240);
  v14 = *(v8 + 248);
  v15 = *(v8 + 208);
  if (*(v12 + v11 + 8))
  {
    v16 = *(v8 + 296);
    v17 = v15 + *(v8 + 264);

    *v17 = 0;
    *(v17 + 8) = 1;
  }

  else
  {
    v18 = *(v8 + 296);
    KeyPath = swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v15;
    *(v20 + 24) = 0;
    *(v20 + 32) = 1;
    *(v8 + 192) = v15;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B584();

    KeyPath, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = *(v8 + 8);

  return v28(0);
}

uint64_t type metadata accessor for PaymentOfferSelectorModel(uint64_t a1)
{
  result = qword_1EBD3E4D8;
  if (!qword_1EBD3E4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD22C638(uint64_t a1)
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

uint64_t sub_1BD22C724()
{
  sub_1BE0528A4();
  *(v0 + 24) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD22C7B8, v2, v1);
}

uint64_t sub_1BD22C7B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD2294F8(v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD22C944()
{
  sub_1BE0528A4();
  *(v0 + 24) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD22D474, v2, v1);
}

void sub_1BD22CA18(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1BE052434();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_1BD22D080(v10, v12, a5, a6);

  v12, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD22CAAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, &protocol conformance descriptor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading);
}

void sub_1BD22CB84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer) = v2;
  v4 = v2;
}

void sub_1BD22CBC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1BD22CBE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError) = v2;
  v4 = v2;
}

void sub_1BD22CC24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance) = v2;
  v4 = v2;
}

void sub_1BD22CC64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD22CCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD22CCF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel) = v2;
  v4 = v2;
}

void sub_1BD22CD30()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1BD22CD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD22A394(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1BD22CE54(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance] = 0;
  v9 = &v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel] = 0;
  sub_1BE04B5C4();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass] = a2;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection] = a3;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v11 = a2;
  v12 = a1;
  v13 = a3;
  v14 = objc_msgSendSuper2(&v31, sel_init);
  v22 = v14;
  if (a1)
  {
    v14 = [v12 registerObserver_];
  }

  sub_1BD2294F8(v14, v15, v16, v17, v18, v19, v20, v21);
  v29 = v11;
  v30 = -96;
  v23 = v11;
  v24 = v12;
  v25 = sub_1BD228AA4();
  v26 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v27 = sub_1BD8D1EE0(&v29, a1, v25);

  sub_1BD228F98(v27);
  return v22;
}

unint64_t sub_1BD22CFF8()
{
  result = qword_1EBD3E5A8;
  if (!qword_1EBD3E5A8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3D270, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5A8);
  }

  return result;
}

void sub_1BD22D080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - v10;
  v12 = [*&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass] uniqueID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {
      v16, v17, v18, v19, v20, v21, v22, v23;
    }

    else
    {
      v25 = sub_1BE053B84();
      v16, v26, v27, v28, v29, v30, v31, v32;
      if ((v25 & 1) == 0)
      {
        return;
      }
    }

    v33 = sub_1BE0528D4();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v4;
    v35 = v4;
    v36 = sub_1BD122C00(0, 0, v11, a4, v34);
    v36, v37, v38, v39, v40, v41, v42, v43;
  }
}

uint64_t sub_1BD22D210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD22C924(a1, v4, v5, v6);
}

uint64_t sub_1BD22D2C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD22C924(a1, v4, v5, v6);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD22D3B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD22C704(a1, v4, v5, v6);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BD22D514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1BD22D55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD22D5F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5E0, &qword_1BE0C3570);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E600, &qword_1BE0C3588);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5D0, &qword_1BE0C3568);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - v8;
  v10 = sub_1BE04F3D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 152);
  v14 = *(a1 + 144);
  v33 = v14;
  if (v34 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v22 = sub_1BE050174();
    v28 = a1;
    v23 = v22;
    sub_1BE04CF84();

    a1 = v28;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v33, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v11 + 8))(v13, v10);
    if (v32 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E610, &qword_1BE0C35A0);
    sub_1BD22DA4C(&v9[*(v24 + 44)]);
    v18 = &qword_1EBD3E5D0;
    v19 = &qword_1BE0C3568;
    sub_1BD0DE19C(v9, v7, &qword_1EBD3E5D0, &qword_1BE0C3568);
    swift_storeEnumTagMultiPayload();
    v25 = MEMORY[0x1E69817F8];
    sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0, &qword_1BE0C3568, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0, &qword_1BE0C3570, v25);
    sub_1BE04F9A4();
    v21 = v9;
    return sub_1BD0DE53C(v21, v18, v19);
  }

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  *v4 = sub_1BE04F504();
  *(v4 + 1) = v15;
  v4[16] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E608, &qword_1BE0C3598);
  sub_1BD22E9FC(&v4[*(v17 + 44)]);
  v18 = &qword_1EBD3E5E0;
  v19 = &qword_1BE0C3570;
  sub_1BD0DE19C(v4, v7, &qword_1EBD3E5E0, &qword_1BE0C3570);
  swift_storeEnumTagMultiPayload();
  v20 = MEMORY[0x1E69817F8];
  sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0, &qword_1BE0C3568, MEMORY[0x1E69817F8]);
  sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0, &qword_1BE0C3570, v20);
  sub_1BE04F9A4();
  v21 = v4;
  return sub_1BD0DE53C(v21, v18, v19);
}

uint64_t sub_1BD22DA4C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E618, &qword_1BE0C35A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E620, &qword_1BE0C35B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E628, &qword_1BE0C35B8);
  sub_1BD22DC7C(&v14[*(v15 + 44)]);
  sub_1BD22E77C();
  sub_1BD0DE19C(v14, v11, &qword_1EBD3E620, &qword_1BE0C35B0);
  sub_1BD0DE19C(v8, v5, &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE19C(v11, a2, &qword_1EBD3E620, &qword_1BE0C35B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E630, &qword_1BE0C35C0);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1BD0DE19C(v5, a2 + *(v16 + 64), &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE53C(v8, &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE53C(v14, &qword_1EBD3E620, &qword_1BE0C35B0);
  sub_1BD0DE53C(v5, &qword_1EBD3E618, &qword_1BE0C35A8);
  return sub_1BD0DE53C(v11, &qword_1EBD3E620, &qword_1BE0C35B0);
}

uint64_t sub_1BD22DC7C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660, &unk_1BE0C3640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1BD22DF80();
  sub_1BD22E158(v12);
  sub_1BD22E440(v6);
  sub_1BD0DE19C(v18, v15, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE19C(v12, v9, &qword_1EBD3E660, &unk_1BE0C3640);
  v19 = v3;
  sub_1BD0DE19C(v6, v3, &unk_1EBD5BB60, &qword_1BE0C4580);
  v20 = v24;
  sub_1BD0DE19C(v15, v24, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E668, &unk_1BE0C3650);
  sub_1BD0DE19C(v9, v20 + *(v21 + 48), &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE19C(v19, v20 + *(v21 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v6, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v12, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v18, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v19, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v9, &qword_1EBD3E660, &unk_1BE0C3640);
  return sub_1BD0DE53C(v15, &qword_1EBD38A98, &unk_1BE0C3CC0);
}

void sub_1BD22DF80()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE050324();
  sub_1BE050384();
  v8 = sub_1BE0503F4();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = sub_1BE0505F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v8, v17, v19, v21, v23, v24, v25, v26;
  sub_1BD0DDF10(v0, v2, (v4 & 1), v27, v28, v29, v30, v31);
  v6, v32, v33, v34, v35, v36, v37, v38;
  v39 = sub_1BE051224();
  v40 = sub_1BE050564();
  v42 = v41;
  LOBYTE(v8) = v43;
  v45 = v44;
  v39, v41, v43, v44, v46, v47, v48, v49;
  sub_1BD0DDF10(v16, v18, (v20 & 1), v50, v51, v52, v53, v54);
  v22, v55, v56, v57, v58, v59, v60, v61;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
  sub_1BD0EF0FC();
  sub_1BE050DE4();
  v63, v64, v65, v66, v67, v68, v69, v70;
  sub_1BD0DDF10(v40, v42, (v8 & 1), v71, v72, v73, v74, v75);
  KeyPath, v76, v77, v78, v79, v80, v81, v82;
  v45, v83, v84, v85, v86, v87, v88, v89;
}

uint64_t sub_1BD22E158@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v97 - v7;
  v9 = *(v1 + 136);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(v1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v101 = *(v1 + 128);
    v102 = v9;
    v99 = v5;
    v100 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1BE0502E4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v98 = a1;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v11, v13, (v15 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE051234();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v18) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    KeyPath = swift_getKeyPath();
    v101 = v43;
    v102 = v45;
    v103 = v18 & 1;
    v104 = v48;
    v105 = KeyPath;
    v106 = 1;
    sub_1BE052434();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    sub_1BE050DE4();
    v67, v68, v69, v70, v71, v72, v73, v74;
    sub_1BD0DDF10(v43, v45, (v18 & 1), v75, v76, v77, v78, v79);
    KeyPath, v80, v81, v82, v83, v84, v85, v86;
    v48, v87, v88, v89, v90, v91, v92, v93;
    v94 = v98;
    sub_1BD0DE204(v8, v98, &qword_1EBD38A98, &unk_1BE0C3CC0);
    return (*(v99 + 56))(v94, 0, 1, v100);
  }

  else
  {
LABEL_6:
    v96 = *(v5 + 56);

    return v96(a1, 1, 1, v6);
  }
}

uint64_t sub_1BD22E440@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v103 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v100 - v4;
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  if (*(v1 + 32) & 1) == 0 && (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL) == 2 && (v8 = *v1, sub_1BD22F42C(), v9 = [v8 amount], v10 = objc_msgSend(objc_opt_self(), sel_zero), LOBYTE(v8) = sub_1BE053074(), v9, v10, (v8))
  {
    v11 = *(v103 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    v104 = v6;
    v105 = v7;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1BE050324();
    sub_1BE050384();
    v21 = sub_1BE0503F4();
    v101 = v5;
    v22 = v21;
    v20, v23, v24, v25, v26, v27, v28, v29;
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;
    v102 = v3;
    v35 = a1;
    v37 = v36;
    v22, v31, v33, v36, v38, v39, v40, v41;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v42, v43, v44, v45, v46);
    v19, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE051224();
    v55 = sub_1BE050564();
    v57 = v56;
    LOBYTE(v19) = v58;
    v60 = v59;
    v54, v56, v58, v59, v61, v62, v63, v64;
    sub_1BD0DDF10(v30, v32, (v34 & 1), v65, v66, v67, v68, v69);
    v37, v70, v71, v72, v73, v74, v75, v76;
    v104 = v55;
    v105 = v57;
    v77 = (v19 & 1);
    v106 = v19 & 1;
    v107 = v60;
    sub_1BE052434();
    v79 = v78;
    v80 = v101;
    sub_1BE050DE4();
    v79, v81, v82, v83, v84, v85, v86, v87;
    sub_1BD0DDF10(v55, v57, v77, v88, v89, v90, v91, v92);
    v60, v93, v94, v95, v96, v97, v98, v99;
    sub_1BD0DE204(v80, v35, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v103 + 56))(v35, 0, 1, v102);
  }
}

void sub_1BD22E77C()
{
  v1 = sub_1BE04F6E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051574();
  v6 = sub_1BE0502D4();
  KeyPath = swift_getKeyPath();
  v8 = sub_1BE0511E4();
  v9 = swift_getKeyPath();
  v10 = v9;
  v11 = *(v0 + 88);
  v12 = 0.0;
  if (v11)
  {
    v12 = 1.0;
  }

  v51 = v5;
  v52 = KeyPath;
  v49 = KeyPath;
  v53 = v6;
  v54 = v9;
  v55 = v8;
  v56 = v12;
  if (v11)
  {
    sub_1BE04F6B4();
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
    v48[1] = sub_1BD22F534(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
    sub_1BE053664();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E650, &unk_1BE0C3630);
  sub_1BD22F3A0();
  sub_1BE050DA4();
  (*(v2 + 8))(v4, v1);
  v8, v13, v14, v15, v16, v17, v18, v19;
  v10, v20, v21, v22, v23, v24, v25, v26;
  v6, v27, v28, v29, v30, v31, v32, v33;
  v49, v34, v35, v36, v37, v38, v39, v40;
  v5, v41, v42, v43, v44, v45, v46, v47;
}

uint64_t sub_1BD22E9FC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E618, &qword_1BE0C35A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E670, &qword_1BE0C36A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E678, &qword_1BE0C36A8);
  sub_1BD22EC18(&v14[*(v15 + 44)]);
  sub_1BD22E77C();
  sub_1BD0DE19C(v14, v11, &qword_1EBD3E670, &qword_1BE0C36A0);
  sub_1BD0DE19C(v8, v5, &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE19C(v11, a2, &qword_1EBD3E670, &qword_1BE0C36A0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E680, &unk_1BE0C36B0);
  sub_1BD0DE19C(v5, a2 + *(v16 + 48), &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE53C(v8, &qword_1EBD3E618, &qword_1BE0C35A8);
  sub_1BD0DE53C(v14, &qword_1EBD3E670, &qword_1BE0C36A0);
  sub_1BD0DE53C(v5, &qword_1EBD3E618, &qword_1BE0C35A8);
  return sub_1BD0DE53C(v11, &qword_1EBD3E670, &qword_1BE0C36A0);
}

uint64_t sub_1BD22EC18@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E688, &unk_1BE100450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E690, &unk_1BE0C36C0);
  sub_1BD22EE48(&v14[*(v15 + 44)]);
  sub_1BD22E440(v8);
  sub_1BD0DE19C(v14, v11, &qword_1EBD3E688, &unk_1BE100450);
  sub_1BD0DE19C(v8, v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v11, a2, &qword_1EBD3E688, &unk_1BE100450);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E698, &unk_1BE100460);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1BD0DE19C(v5, a2 + *(v16 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v8, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v14, &qword_1EBD3E688, &unk_1BE100450);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v11, &qword_1EBD3E688, &unk_1BE100450);
}

uint64_t sub_1BD22EE48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660, &unk_1BE0C3640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD22DF80();
  sub_1BD22E158(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE19C(v7, v4, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE19C(v10, a1, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E6A0, &qword_1BE0C36D0);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v7, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v13, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v4, &qword_1EBD3E660, &unk_1BE0C3640);
  return sub_1BD0DE53C(v10, &qword_1EBD38A98, &unk_1BE0C3CC0);
}

uint64_t sub_1BD22F038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5B0, &qword_1BE0C3558);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21[-v2];
  v4 = v0[9];
  v27 = v0[8];
  v28[0] = v4;
  *(v28 + 9) = *(v0 + 153);
  v5 = v0[5];
  v23[4] = v0[4];
  v24 = v5;
  v6 = v0[7];
  v25 = v0[6];
  v26 = v6;
  v7 = v0[1];
  v23[0] = *v0;
  v23[1] = v7;
  v8 = v0[3];
  v23[2] = v0[2];
  v23[3] = v8;
  v22 = v23;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5B8, &qword_1BE0C3560);
  sub_1BD22F1DC();
  sub_1BE051704();
  v9 = BYTE8(v24);
  v10 = &v3[*(v1 + 36)];
  *v10 = 0;
  v10[8] = v9;
  sub_1BE052434();
  v12 = v11;
  sub_1BD22F2BC();
  sub_1BE050DE4();
  v12, v13, v14, v15, v16, v17, v18, v19;
  return sub_1BD0DE53C(v3, &qword_1EBD3E5B0, &qword_1BE0C3558);
}

unint64_t sub_1BD22F1DC()
{
  result = qword_1EBD3E5C0;
  if (!qword_1EBD3E5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5B8, &qword_1BE0C3560);
    v1 = MEMORY[0x1E69817F8];
    sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0, &qword_1BE0C3568, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0, &qword_1BE0C3570, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5C0);
  }

  return result;
}

unint64_t sub_1BD22F2BC()
{
  result = qword_1EBD3E5E8;
  if (!qword_1EBD3E5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5B0, &qword_1BE0C3558);
    sub_1BD0DE4F4(&qword_1EBD3E5F0, &qword_1EBD3E5F8, &qword_1BE0C3578, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5E8);
  }

  return result;
}

unint64_t sub_1BD22F3A0()
{
  result = qword_1EBD3E658;
  if (!qword_1EBD3E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E650, &unk_1BE0C3630);
    sub_1BD0F1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E658);
  }

  return result;
}

unint64_t sub_1BD22F42C()
{
  result = qword_1EBD3E3F0;
  if (!qword_1EBD3E3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3E3F0);
  }

  return result;
}

unint64_t sub_1BD22F478()
{
  result = qword_1EBD3E6A8;
  if (!qword_1EBD3E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E6B0, &unk_1BE0C36D8);
    sub_1BD22F2BC();
    sub_1BD22F534(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6A8);
  }

  return result;
}

uint64_t sub_1BD22F534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BD22F5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  v12 = result[2];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = result + 4;
  if (!a1)
  {
    v16 = result;
LABEL_12:
    v19 = *v13;
    swift_unknownObjectRetain();
    result = v16;
LABEL_14:
    result, v5, v6, v7, v8, v9, v10, v11;
    return v19;
  }

  v14 = 0;
  v15 = result + 4;
  while (*v15 != a1)
  {
    ++v14;
    v15 += 2;
    if (v12 == v14)
    {
      goto LABEL_13;
    }
  }

  v17 = __OFADD__(v14, 1);
  v18 = v14 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v18 >= v12)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v16 = result;
    v13 += 2 * v18;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1BD22F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  v13 = result[2];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = result + 4;
  if (!a1)
  {
    v17 = result;
LABEL_12:
    v20 = *v14;
    swift_unknownObjectRetain();
    result = v17;
LABEL_14:
    result, v6, v7, v8, v9, v10, v11, v12;
    return v20;
  }

  v15 = 0;
  v16 = result + 4;
  while (*v16 != a1)
  {
    ++v15;
    v16 += 2;
    if (v13 == v15)
    {
      goto LABEL_13;
    }
  }

  v18 = __OFADD__(v15, 1);
  v19 = v15 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v19 >= v13)
  {
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v17 = result;
    v14 += 2 * v19;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1BD22F7C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1BE052404();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_1EBD3E6B8 = v0;
}

void sub_1BD22F834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v110 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v107 - v5;
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v107 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v107 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v107 - v20;
  v22 = type metadata accessor for SavingsFCCStepUpClosureViewController();
  v119.receiver = v1;
  v119.super_class = v22;
  objc_msgSendSuper2(&v119, sel_viewDidLoad);
  v23 = [v1 explanationView];
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = v23;
  v108 = v10;
  v114 = v8;
  v115 = v7;
  v25 = objc_allocWithZone(type metadata accessor for BadgedHeroView());
  v26 = sub_1BD956838(0x5F53474E49564153, 0xEC0000006E6F6349);
  [v24 setHeroView_];

  [v24 setTopMargin_];
  [v24 setTopLogoPadding_];
  v27 = *(v12 + 104);
  v112 = *MEMORY[0x1E69B80E0];
  v113 = v12 + 104;
  v118 = v27;
  (v27)(v21);
  v28 = PKPassKitBundle();
  if (!v28)
  {
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  sub_1BE04B6F4();
  v31 = v30;

  v32 = *(v12 + 8);
  v117 = v12 + 8;
  v111 = v32;
  v32(v21, v11);
  v33 = sub_1BE052404();
  v31, v34, v35, v36, v37, v38, v39, v40;
  [v24 setTitleText_];

  v41 = [*(*&v1[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account) savingsDetails];
  if (!v41 || (v42 = v41, v43 = [v41 fccStepUpDetails], v42, !v43))
  {
    (*(v114 + 56))(v6, 1, 1, v115);
    v49 = v112;
LABEL_10:
    sub_1BD0DE53C(v6, &unk_1EBD39970, &unk_1BE0B9F80);
    goto LABEL_11;
  }

  v44 = [v43 neededBy];

  v45 = v114;
  if (v44)
  {
    v46 = v110;
    sub_1BE04AEE4();

    v47 = 0;
    v48 = v115;
    v49 = v112;
  }

  else
  {
    v47 = 1;
    v48 = v115;
    v49 = v112;
    v46 = v110;
  }

  (*(v45 + 56))(v46, v47, 1, v48);
  sub_1BD1CBBEC(v46, v6);
  if ((*(v45 + 48))(v6, 1, v48) == 1)
  {
    goto LABEL_10;
  }

  v80 = v108;
  (*(v45 + 32))(v108, v6, v48);
  sub_1BE04AEB4();
  if (v81 > 0.0)
  {
    if (qword_1EBD36B80 != -1)
    {
      swift_once();
    }

    v82 = qword_1EBD3E6B8;
    v83 = sub_1BE04AE64();
    v84 = [v82 stringFromDate_];

    v85 = sub_1BE052434();
    v87 = v86;

    v88 = v109;
    v118(v109, v49, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1BE0B69E0;
    *(v89 + 56) = MEMORY[0x1E69E6158];
    *(v89 + 64) = sub_1BD110550();
    *(v89 + 32) = v85;
    *(v89 + 40) = v87;
    sub_1BE04B714();
    v91 = v90;
    v89, v90, v92, v93, v94, v95, v96, v97;
    v98 = v111;
    v111(v88, v11);
    v99 = sub_1BE052404();
    v91, v100, v101, v102, v103, v104, v105, v106;
    [v24 setBodyText_];

    v55 = v98;
    (*(v114 + 8))(v108, v115);
LABEL_13:
    v64 = v116;
    v65 = [v24 dockView];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 primaryButton];

      if (v67)
      {
        v118(v64, v49, v11);
        v68 = PKPassKitBundle();
        if (v68)
        {
          v69 = v68;
          sub_1BE04B6F4();
          v71 = v70;

          v55(v64, v11);
          v72 = sub_1BE052404();
          v71, v73, v74, v75, v76, v77, v78, v79;
          [v67 setTitle:v72 forState:0];

          [v24 setDelegate_];
          [v24 setTitleAccessoriesEnabled_];

LABEL_17:
          [v1 setShowCloseButton_];
          [v1 setShowCancelButton_];
          [v1 setPrivacyLinkController_];
          [v1 setModalInPresentation_];
          return;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v45 + 8))(v80, v48);
LABEL_11:
  v118(v16, v49, v11);
  v50 = PKPassKitBundle();
  if (v50)
  {
    v51 = v50;
    sub_1BE04B6F4();
    v53 = v52;

    v54 = v16;
    v55 = v111;
    v111(v54, v11);
    v56 = sub_1BE052404();
    v53, v57, v58, v59, v60, v61, v62, v63;
    [v24 setBodyText_];

    goto LABEL_13;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD230164(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for FeatureError(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  [Strong showSpinner_];
  if (!a1)
  {
    if (!a2)
    {
LABEL_10:
      [v17 dismissViewControllerAnimated:1 completion:0];

      return;
    }

LABEL_8:
    v21 = *(*&v17[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account);
    v22 = a2;
    v23 = [v21 feature];
    v24 = a2;
    FeatureError.init(feature:error:)(v23, a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_1BD0DE53C(v11, &qword_1EBD416C0, &unk_1BE0BC2A0);
      goto LABEL_10;
    }

    sub_1BD230930(v11, v15);
    v25 = sub_1BE04A844();
    v26 = PKTitleForDisplayableError();

    v27 = v6;
    if (v26)
    {
      v67 = sub_1BE052434();
      v29 = v28;
    }

    else
    {
      v67 = 0;
      v29 = 0;
    }

    v30 = sub_1BE04A844();
    v31 = MEMORY[0x1BFB42D10]();

    if (v31)
    {
      sub_1BE052434();
      v33 = v32;

      v34 = v27;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v33 = 0;
      v34 = v27;
      if (v29)
      {
LABEL_16:
        v35 = sub_1BE052404();
        v29, v36, v37, v38, v39, v40, v41, v42;
        if (v33)
        {
LABEL_17:
          v43 = sub_1BE052404();
          v33, v44, v45, v46, v47, v48, v49, v50;
          goto LABEL_21;
        }

LABEL_20:
        v43 = 0;
LABEL_21:
        v51 = [objc_opt_self() alertControllerWithTitle:v35 message:v43 preferredStyle:1];

        (*(v34 + 104))(v8, *MEMORY[0x1E69B80E0], v5);
        v52 = PKPassKitBundle();
        if (v52)
        {
          v53 = v52;
          sub_1BE04B6F4();
          v55 = v54;

          (*(v34 + 8))(v8, v5);
          v56 = sub_1BE052404();
          v55, v57, v58, v59, v60, v61, v62, v63;
          v64 = [objc_opt_self() actionWithTitle:v56 style:0 handler:0];

          [v51 addAction_];
          v65 = [v17 navigationController];
          if (v65)
          {
            v66 = v65;
            [v65 presentViewController:v51 animated:1 completion:0];

            sub_1BD230994(v15);
          }

          else
          {
            sub_1BD230994(v15);
          }
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v35 = 0;
    if (v33)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v18 = a1;
  v19 = [v17 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 pushViewController:v18 animated:1];
  }
}

id sub_1BD23074C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SavingsFCCStepUpClosureViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD2307B4()
{
  [v0 showSpinner_];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v2 = sub_1BD8BD4F8();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BD230928;
    *(v4 + 24) = v1;
    v28[4] = sub_1BD1B6B9C;
    v29 = v4;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 1107296256;
    v28[2] = sub_1BD14E1D8;
    v28[3] = &block_descriptor_32;
    v5 = _Block_copy(v28);
    v6 = v29;
    sub_1BE048964();
    v6, v7, v8, v9, v10, v11, v12, v13;
    [v3 nextViewControllerWithCompletion_];
    v1, v14, v15, v16, v17, v18, v19, v20;
    _Block_release(v5);
    v1, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    sub_1BD230164(0, 0, v1);
  }
}

uint64_t sub_1BD230930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD230994(uint64_t a1)
{
  v2 = type metadata accessor for FeatureError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI25PaymentAuthorizationModelC18BillingAddressInfoV6StatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BD230A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD230A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1BD230AD4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1BD230C68(v8, v9);
}

uint64_t sub_1BD230B30(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        if (sub_1BE053074())
        {
          if (a2)
          {
            if (a5)
            {
              sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
              v8 = a5;
              v9 = a2;
              v10 = sub_1BE053074();

              if (v10)
              {
                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    return sub_1BE053074() & 1;
  }

  return 0;
}

BOOL sub_1BD230C68(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v4 = a2[1];
    if (*(a1 + 16) == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }

      v5 = a1;
      v6 = a1[1];
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      if ((sub_1BE053074() & 1) == 0)
      {
        return 0;
      }

      if (v6)
      {
        if (!v4)
        {
          return 0;
        }

        sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
        v7 = v4;
        v8 = v6;
        v9 = sub_1BE053074();

        a1 = v5;
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        a1 = v5;
        if (v4)
        {
          return 0;
        }
      }
    }

    else if (v3 != 2 || *a2 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v11 = sub_1BE053074();
    a1 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
    v16 = v14;
    v17 = v13;
    v18 = sub_1BE053074();

    a1 = v15;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v19 = a1[4];
  v20 = a2[4];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
    v22 = v20;
    v23 = v19;
    v24 = sub_1BE053074();

    a1 = v21;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v25 = a1[5];
  v26 = a2[5];
  if ((v25 ^ v26))
  {
    return 0;
  }

  if (((v25 >> 8) & 1) != ((v26 >> 8) & 1))
  {
    return 0;
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 57);
  v29 = *(a1 + 58);
  v30 = a1[8];
  v31 = a1[9];
  v32 = a2[6];
  v33 = *(a2 + 56);
  v34 = *(a2 + 57);
  v35 = *(a2 + 58);
  v37 = a2[8];
  v36 = a2[9];
  sub_1BD842760(a1[6], v32);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  if ((v27 ^ v33))
  {
    return 0;
  }

  if ((v28 ^ v34))
  {
    return 0;
  }

  if ((v29 ^ v35))
  {
    return 0;
  }

  sub_1BD842760(v30, v37);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

  if (v31)
  {
    if (v36)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3E6C8, 0x1E69B8730);
      v40 = v36;
      v41 = v31;
      v42 = sub_1BE053074();

      if (v42)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v36;
}

void sub_1BD230F5C(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LOWORD(v218) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(&v218 + 1) = MEMORY[0x1E69E7CD0];
  v220 = 0;
  LOBYTE(v219) = 1;
  *(&v219 + 1) = a1;
  sub_1BD111A78(&unk_1F3B8CDD8);
  v7 = v6;
  v5, v8, v9, v10, v11, v12, v13, v14;
  *(&v219 + 1) = v7;
  if (a2 >> 62)
  {
    v15 = sub_1BE053704();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_45:
    v220 = a3;
    v213 = v218;
    v214 = v219;
    v215 = a3;
    v216[0] = v218;
    v216[1] = v219;
    v217 = a3;
    v207 = a3;
    sub_1BD10D494(&v213, v212);
    sub_1BD10D558(v216);
    v208 = v214;
    *a4 = v213;
    *(a4 + 16) = v208;
    *(a4 + 32) = v215;
    return;
  }

  v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    v209 = *MEMORY[0x1E69BB7D8];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1BFB40900](v16, a2);
      }

      else
      {
        v17 = *(a2 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 domain];
      v20 = sub_1BE052434();
      v22 = v21;

      v23 = sub_1BE052434();
      v31 = v24;
      if (v20 == v23 && v22 == v24)
      {
        v22, v24, v25, v26, v27, v28, v29, v30;
        v31, v48, v49, v50, v51, v52, v53, v54;
      }

      else
      {
        v33 = sub_1BE053B84();
        v22, v34, v35, v36, v37, v38, v39, v40;
        v31, v41, v42, v43, v44, v45, v46, v47;
        if ((v33 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ([v18 code] == 2)
      {
        v55 = sub_1BE052434();
        v57 = v56;
        v58 = [v18 userInfo];
        v59 = sub_1BE052244();

        if (!v59[2])
        {
          v59, v60, v61, v62, v63, v64, v65, v66;
          v118 = v57;
LABEL_26:
          v118, v76, v77, v78, v79, v80, v81, v82;
          goto LABEL_5;
        }

        v67 = sub_1BD148F70(v55, v57);
        v69 = v68;
        v57, v68, v70, v71, v72, v73, v74, v75;
        if ((v69 & 1) == 0)
        {
          v118 = v59;
          goto LABEL_26;
        }

        sub_1BD038CD0(v59[7] + 32 * v67, v216);
        v59, v83, v84, v85, v86, v87, v88, v89;
        if (swift_dynamicCast())
        {
          v90 = sub_1BE052404();
          *(&v213 + 1), v91, v92, v93, v94, v95, v96, v97;
          v98 = sub_1BE052434();
          v100 = v99;
          v101 = sub_1BE052434();
          v103 = v102;
          if (v98 == v101 && v100 == v102)
          {

            v100, v104, v105, v106, v107, v108, v109, v110;
            v103, v111, v112, v113, v114, v115, v116, v117;
LABEL_30:

            LOBYTE(v218) = 1;
            goto LABEL_6;
          }

          v119 = sub_1BE053B84();
          v100, v120, v121, v122, v123, v124, v125, v126;
          v103, v127, v128, v129, v130, v131, v132, v133;
          if (v119)
          {

            goto LABEL_30;
          }

          v134 = sub_1BE052434();
          v136 = v135;
          v138 = sub_1BE052434();
          v139 = v134;
          v140 = v137;
          if (v139 == v138 && v136 == v137)
          {

            v136, v141, v142, v143, v144, v145, v146, v147;
            v140, v148, v149, v150, v151, v152, v153, v154;
LABEL_36:

            BYTE1(v218) = 1;
            goto LABEL_6;
          }

          v155 = sub_1BE053B84();
          v136, v156, v157, v158, v159, v160, v161, v162;
          v140, v163, v164, v165, v166, v167, v168, v169;
          if (v155)
          {

            goto LABEL_36;
          }

          v170 = sub_1BE052434();
          v172 = v171;
          v174 = sub_1BE052434();
          v175 = v170;
          v176 = v173;
          if (v175 == v174 && v172 == v173)
          {

            v172, v177, v178, v179, v180, v181, v182, v183;
            v176, v184, v185, v186, v187, v188, v189, v190;
LABEL_41:
            v206 = sub_1BD34C030();
            if (v206 != 8)
            {
              sub_1BD2A5394(v216, v206);
            }
          }

          else
          {
            v191 = sub_1BE053B84();

            v172, v192, v193, v194, v195, v196, v197, v198;
            v176, v199, v200, v201, v202, v203, v204, v205;
            if (v191)
            {
              goto LABEL_41;
            }
          }
        }
      }

LABEL_5:

LABEL_6:
      if (v15 == ++v16)
      {
        goto LABEL_45;
      }
    }
  }

  __break(1u);
}

void sub_1BD231458(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    v94 = 0;
    v93 = 2;
    goto LABEL_17;
  }

  v10 = a2;
  v11 = [a1 errors];
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  v13 = sub_1BE052744();

  v14 = [a1 paymentContactFormatErrors];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE052744();

    *&v95[0] = v13;
    sub_1BDA7A2D4(v16);
    v17 = sub_1BD3F00D4(v13);
    v13, v18, v19, v20, v21, v22, v23, v24;
    if (v17 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_6;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1BFB40900](0, v17);
        goto LABEL_9;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v17 + 32);
LABEL_9:
        v94 = v32;
        v17, v33, v34, v35, v36, v37, v38, v39;
LABEL_10:
        v93 = 1;
LABEL_17:
        v49 = a4[6];
        v50 = a4[7];
        v51 = v50;
        v52 = v49;
        v53 = a3;
        v54 = [a3 paymentRequest];
        if (v54)
        {
          v55 = v54;
          v56 = [v54 requiredBillingContactFields];

          type metadata accessor for PKContactField(0);
          sub_1BD231AF0();
          v57 = sub_1BE052A34();

          v58 = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v57);
          v59 = [a1 errors];
          if (v59)
          {
            v67 = v59;
            v57, v60, v61, v62, v63, v64, v65, v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
            v68 = sub_1BE052744();

            v69 = sub_1BD3F00D4(v68);
            v68, v70, v71, v72, v73, v74, v75, v76;
            v77 = [v53 contactFormatValidator];
            sub_1BD230F5C(v58 & 1, v69, v77, v95);
            v69, v78, v79, v80, v81, v82, v83, v84;

            a4, v85, v86, v87, v88, v89, v90, v91;
            *a5 = a2;
            *(a5 + 8) = v94;
            *(a5 + 16) = v93;
            *(a5 + 24) = v49;
            *(a5 + 32) = v50;
            v92 = v95[1];
            *(a5 + 40) = v95[0];
            *(a5 + 56) = v92;
            *(a5 + 72) = v96;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_23;
    }

    v17, v25, v26, v27, v28, v29, v30, v31;
    v40 = [v10 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
    v10 = sub_1BE052744();

    if (!(v10 >> 62))
    {
      v48 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
      v10, v41, v42, v43, v44, v45, v46, v47;
      if (v48)
      {
        v93 = [a1 isRejected];
        v94 = 0;
        goto LABEL_17;
      }

      v94 = 0;
      goto LABEL_10;
    }

LABEL_23:
    v48 = sub_1BE053704();
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD231800(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  if (!a1)
  {

    a3, v14, v15, v16, v17, v18, v19, v20;
LABEL_6:
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    goto LABEL_7;
  }

  v7 = a1;
  if (([v7 requiresBillingAddress] & 1) == 0)
  {

    a3, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_6;
  }

  v8 = v7;
  sub_1BD231458(v8, [v8 billingAddress], a2, a3, v33);
  v31 = v33[1];
  v32 = v33[0];
  v29 = v33[3];
  v30 = v33[2];
  v28 = v33[4];

  v10 = v28;
  v9 = v29;
  v12 = v30;
  v11 = v31;
  v13 = v32;
LABEL_7:
  *a4 = v13;
  a4[1] = v11;
  a4[2] = v12;
  a4[3] = v9;
  a4[4] = v10;
}

void sub_1BD2318FC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 mode] == 2)
  {
    if ([a1 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      *v24 = 0u;
    }

    v21 = v23;
    v22 = *v24;
    if (*&v24[8])
    {
      v6 = &qword_1EBD3E6D8;
      v7 = 0x1E69B8D68;
      goto LABEL_12;
    }

LABEL_15:
    sub_1BD14EC0C(&v21);
    v8 = 0;
    goto LABEL_16;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    *v24 = 0u;
  }

  v21 = v23;
  v22 = *v24;
  if (!*&v24[8])
  {
    goto LABEL_15;
  }

  v6 = &qword_1EBD3E6D0;
  v7 = 0x1E69B8BA0;
LABEL_12:
  sub_1BD0E5E8C(0, v6, v7);
  if (swift_dynamicCast())
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

LABEL_16:
  sub_1BD231800(v8, a1, a2, &v23);
  v9 = v27;
  if (v27)
  {
    v11 = v31;
    v10 = v32;
    v12 = *&v24[8];
    v13 = v23;
    v14 = v24[0];
    if (v26)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFFFELL | v25 & 1;
    v17 = 0x10000;
    if ((v30 & 1) == 0)
    {
      v17 = 0;
    }

    if (v29)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFFELL | v28 & 1 | v17;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14 = 0;
    v16 = 0;
    v19 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v12;
  *(a3 + 40) = v16;
  *(a3 + 48) = v9;
  *(a3 + 56) = v19;
  *(a3 + 64) = v11;
  *(a3 + 72) = v10;
}

unint64_t sub_1BD231AF0()
{
  result = qword_1EBD35EE0;
  if (!qword_1EBD35EE0)
  {
    type metadata accessor for PKContactField(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35EE0);
  }

  return result;
}

uint64_t sub_1BD231B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD231B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD231BD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1BD231BFC(unsigned __int8 a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8ED0]) init];
  [v2 setType_];
  return v2;
}

uint64_t sub_1BD231C4C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v6 = 0xD000000000000019;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v6;
      }
    }

    else if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1BD231DF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1BD231C4C(*a1);
  v5 = v4;
  v6 = sub_1BD231C4C(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

unint64_t sub_1BD231E7C()
{
  result = qword_1EBD3E6E0;
  if (!qword_1EBD3E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6E0);
  }

  return result;
}

uint64_t sub_1BD231ED0()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD231C4C(v1);
  v3 = v2;
  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD231F34(uint64_t a1)
{
  sub_1BD231C4C(*v1);
  v3 = v2;
  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD231F88(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  sub_1BD231C4C(v2);
  v4 = v3;
  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

unint64_t sub_1BD231FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD233B10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD232018@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BD231C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD232048()
{
  result = qword_1EBD3E6E8;
  if (!qword_1EBD3E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6E8);
  }

  return result;
}

unint64_t sub_1BD2320A0()
{
  result = qword_1EBD3E6F0;
  if (!qword_1EBD3E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6F0);
  }

  return result;
}

unint64_t sub_1BD2320F8()
{
  result = qword_1EBD3E6F8;
  if (!qword_1EBD3E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6F8);
  }

  return result;
}

unint64_t sub_1BD232150()
{
  result = qword_1EBD3E700;
  if (!qword_1EBD3E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E700);
  }

  return result;
}

unint64_t sub_1BD2321A4()
{
  result = qword_1EBD3E708;
  if (!qword_1EBD3E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E708);
  }

  return result;
}

unint64_t sub_1BD2321FC()
{
  result = qword_1EBD3E710;
  if (!qword_1EBD3E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E710);
  }

  return result;
}

uint64_t sub_1BD232250()
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
  __swift_allocate_value_buffer(v10, qword_1EBDAAEA8);
  __swift_project_value_buffer(v10, qword_1EBDAAEA8);
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

uint64_t sub_1BD232570()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v81 = &v73 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = &v73 - v3;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04A874();
  v94 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04A884();
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E740, &qword_1BE0C3C08);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF28, &unk_1BE0C3C10);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v88 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BE0BA770;
  v76 = v16;
  v90 = v14;
  v91 = v16 + v15;
  *(v16 + v15) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v85 = v7;
  v17 = __swift_project_value_buffer(v7, qword_1EBDAB400);
  v18 = *(v94 + 16);
  v94 += 16;
  v87 = v18;
  v19 = v9;
  v20 = v9;
  v21 = v17;
  v83 = v17;
  (v18)(v20);
  v80 = v6;
  sub_1BE04B0A4();
  v84 = v12;
  sub_1BE04A894();
  v86 = *(v92 + 56);
  v92 += 56;
  v22 = v79;
  v86(v79, 1, 1, v93);
  v95 = sub_1BE048BB4();
  v23 = *(v95 - 8);
  v82 = *(v23 + 56);
  v89 = v23 + 56;
  v24 = v81;
  v82(v81, 1, 1, v95);
  v25 = v91;
  sub_1BE048BD4();
  v77 = *(v90 + 48);
  *(v25 + v88) = 2;
  sub_1BE052354();
  v26 = v19;
  v27 = v19;
  v28 = v85;
  v87(v27, v21, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v29 = v86;
  v86(v22, 1, 1, v93);
  v82(v24, 1, 1, v95);
  sub_1BE048BD4();
  v77 = 2 * v88;
  v75 = *(v90 + 48);
  *(v91 + 2 * v88) = 3;
  sub_1BE052354();
  v30 = v26;
  v31 = v26;
  v32 = v83;
  v87(v31, v83, v28);
  sub_1BE04B0A4();
  v78 = v30;
  sub_1BE04A894();
  v29(v79, 1, 1, v93);
  v33 = v82;
  v82(v81, 1, 1, v95);
  sub_1BE048BD4();
  v34 = v88;
  v35 = v91;
  v75 = v91 + v77 + v88;
  v36 = v90;
  v77 = *(v90 + 48);
  *v75 = 1;
  sub_1BE052354();
  v87(v30, v32, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v37 = v79;
  v38 = v86;
  v86(v79, 1, 1, v93);
  v39 = v81;
  v33(v81, 1, 1, v95);
  sub_1BE048BD4();
  v77 = 4 * v34;
  v75 = *(v36 + 48);
  *(v35 + 4 * v34) = 4;
  sub_1BE052354();
  v40 = v78;
  v87(v78, v83, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v38(v37, 1, 1, v93);
  v41 = v82;
  v82(v39, 1, 1, v95);
  sub_1BE048BD4();
  v75 = v91 + v77 + v88;
  v77 = *(v90 + 48);
  *v75 = 5;
  sub_1BE052354();
  v42 = v83;
  v43 = v85;
  v87(v40, v83, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v44 = v93;
  v86(v37, 1, 1, v93);
  v41(v81, 1, 1, v95);
  sub_1BE048BD4();
  v75 = v91 + 6 * v88;
  v77 = *(v90 + 48);
  *v75 = 6;
  sub_1BE052354();
  v45 = v87;
  v87(v78, v42, v43);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v86(v37, 1, 1, v44);
  v46 = v95;
  v82(v81, 1, 1, v95);
  sub_1BE048BD4();
  v77 = 8 * v88;
  v47 = v91;
  v74 = (v91 + 7 * v88);
  v48 = v90;
  v75 = *(v90 + 48);
  *v74 = 7;
  sub_1BE052354();
  v49 = v78;
  v50 = v85;
  v45(v78, v83, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v51 = v93;
  v86(v79, 1, 1, v93);
  v52 = v81;
  v53 = v46;
  v54 = v82;
  v82(v81, 1, 1, v53);
  sub_1BE048BD4();
  v74 = (v47 + v77);
  v75 = *(v48 + 48);
  *v74 = 8;
  sub_1BE052354();
  v55 = v87;
  v87(v49, v83, v50);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v56 = v51;
  v86(v79, 1, 1, v51);
  v54(v52, 1, 1, v95);
  sub_1BE048BD4();
  v57 = v88;
  v58 = v91;
  v75 = v91 + v77 + v88;
  v59 = v90;
  v77 = *(v90 + 48);
  *v75 = 9;
  sub_1BE052354();
  v60 = v78;
  v61 = v83;
  v55(v78, v83, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v62 = v79;
  v63 = v86;
  v86(v79, 1, 1, v56);
  v64 = v81;
  v82(v81, 1, 1, v95);
  sub_1BE048BD4();
  v77 = *(v59 + 48);
  *(v58 + 10 * v57) = 10;
  sub_1BE052354();
  v65 = v87;
  v87(v60, v61, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v66 = v62;
  v63(v62, 1, 1, v93);
  v67 = v64;
  v68 = v64;
  v69 = v82;
  v82(v68, 1, 1, v95);
  sub_1BE048BD4();
  v70 = (v91 + 11 * v88);
  v88 = *(v90 + 48);
  *v70 = 11;
  sub_1BE052354();
  v65(v60, v83, v85);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v86(v66, 1, 1, v93);
  v69(v67, 1, 1, v95);
  sub_1BE048BD4();
  v71 = sub_1BD1AC2E4(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAAEC0 = v71;
  return result;
}

uint64_t sub_1BD233600@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAEA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD2336F8()
{
  result = qword_1EBD56100;
  if (!qword_1EBD56100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56100);
  }

  return result;
}

uint64_t sub_1BD23374C(uint64_t a1)
{
  v2 = sub_1BD2336F8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD23379C()
{
  result = qword_1EBD3E718;
  if (!qword_1EBD3E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E718);
  }

  return result;
}

unint64_t sub_1BD2337F4()
{
  result = qword_1EBD3E720;
  if (!qword_1EBD3E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E720);
  }

  return result;
}

unint64_t sub_1BD23384C()
{
  result = qword_1EBD3E728;
  if (!qword_1EBD3E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E728);
  }

  return result;
}

uint64_t sub_1BD2338A0()
{
  if (qword_1EBD36B90 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD2338FC(uint64_t a1)
{
  sub_1BD2321FC();

  return sub_1BE048E14();
}

unint64_t sub_1BD23394C()
{
  result = qword_1EBD3E730;
  if (!qword_1EBD3E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E738, &qword_1BE0C3BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD233B10(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

id sub_1BD233B90@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v255 = a4;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E748, &qword_1BE0C3CB8);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v250 - v7;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v252);
  v9 = &v250 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v250 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v250 - v15;
  v18 = *MEMORY[0x1E69B8050];
  v19 = *(v11 + 104);
  v251 = v9;
  if (a1)
  {
    v19(v13, v18, v10, v16);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      sub_1BE04B6F4();
      v23 = v22;

      (*(v11 + 8))(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BE0B69E0;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1BD110550();
      *(v24 + 32) = a2;
      *(v24 + 40) = a3;
      sub_1BE048C84();
      v25 = sub_1BE052454();
      v27 = v26;
      v23, v26, v28, v29, v30, v31, v32, v33;
      v256 = v25;
      v257 = v27;
      sub_1BD0DDEBC();
      v34 = sub_1BE0506C4();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = sub_1BE0502A4();
      v42 = sub_1BE0505F4();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v41, v43, v45, v47, v49, v50, v51, v52;
      sub_1BD0DDF10(v34, v36, (v38 & 1), v53, v54, v55, v56, v57);
      v40, v58, v59, v60, v61, v62, v63, v64;
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
      v250 = v88;
      v83, v85, v87, v88, v90, v91, v92, v93;
      sub_1BD0DDF10(v65, v67, (v69 & 1), v94, v95, v96, v97, v98);
      v71, v99, v100, v101, v102, v103, v104, v105;
      KeyPath = swift_getKeyPath();
      v256 = v84;
      v257 = v86;
      v258 = v42 & 1;
      v259 = v89;
      v260 = KeyPath;
      v261 = 1;
      sub_1BE052434();
      v108 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
      sub_1BD0EF0FC();
      v109 = v251;
      sub_1BE050DE4();
      v108, v110, v111, v112, v113, v114, v115, v116;
      sub_1BD0DDF10(v84, v86, (v42 & 1), v117, v118, v119, v120, v121);
      KeyPath, v122, v123, v124, v125, v126, v127, v128;
      v250, v129, v130, v131, v132, v133, v134, v135;
LABEL_6:
      sub_1BD2342C4(v109, v253);
      swift_storeEnumTagMultiPayload();
      sub_1BD234334();
      sub_1BE04F9A4();
      return sub_1BD2343C0(v109);
    }

    __break(1u);
  }

  else
  {
    v19(&v250 - v15, v18, v10, v16);
    result = PKPassKitBundle();
    if (result)
    {
      v136 = result;
      sub_1BE04B6F4();
      v138 = v137;

      (*(v11 + 8))(v17, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_1BE0B69E0;
      *(v139 + 56) = MEMORY[0x1E69E6158];
      *(v139 + 64) = sub_1BD110550();
      *(v139 + 32) = a2;
      *(v139 + 40) = a3;
      sub_1BE048C84();
      v140 = sub_1BE052454();
      v142 = v141;
      v138, v141, v143, v144, v145, v146, v147, v148;
      v256 = v140;
      v257 = v142;
      sub_1BD0DDEBC();
      v149 = sub_1BE0506C4();
      v151 = v150;
      LOBYTE(v138) = v152;
      v154 = v153;
      v155 = sub_1BE0502A4();
      v156 = sub_1BE0505F4();
      v158 = v157;
      v160 = v159;
      v162 = v161;
      v155, v157, v159, v161, v163, v164, v165, v166;
      sub_1BD0DDF10(v149, v151, (v138 & 1), v167, v168, v169, v170, v171);
      v154, v172, v173, v174, v175, v176, v177, v178;
      sub_1BE050394();
      v179 = sub_1BE050544();
      v181 = v180;
      LOBYTE(v138) = v182;
      v184 = v183;
      sub_1BD0DDF10(v156, v158, (v160 & 1), v183, v185, v186, v187, v188);
      v162, v189, v190, v191, v192, v193, v194, v195;
      v196 = sub_1BE0513B4();
      v197 = sub_1BE050564();
      v199 = v198;
      v201 = v200;
      v203 = v202;
      v196, v198, v200, v202, v204, v205, v206, v207;
      sub_1BD0DDF10(v179, v181, (v138 & 1), v208, v209, v210, v211, v212);
      v184, v213, v214, v215, v216, v217, v218, v219;
      v220 = swift_getKeyPath();
      v256 = v197;
      v257 = v199;
      v221 = (v201 & 1);
      v258 = v201 & 1;
      v259 = v203;
      v260 = v220;
      v261 = 1;
      sub_1BE052434();
      v223 = v222;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
      sub_1BD0EF0FC();
      v109 = v251;
      sub_1BE050DE4();
      v223, v224, v225, v226, v227, v228, v229, v230;
      sub_1BD0DDF10(v197, v199, v221, v231, v232, v233, v234, v235);
      v220, v236, v237, v238, v239, v240, v241, v242;
      v203, v243, v244, v245, v246, v247, v248, v249;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2342C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD234334()
{
  result = qword_1EBD3E750;
  if (!qword_1EBD3E750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD0EF0FC();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E750);
  }

  return result;
}

uint64_t sub_1BD2343C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD234428()
{
  result = qword_1EBD3E758;
  if (!qword_1EBD3E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E760, &unk_1BE0C3D00);
    sub_1BD234334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E758);
  }

  return result;
}

double sub_1BD2344D8@<D0>(uint64_t a1@<X8>)
{
  sub_1BD234594(v11);
  v2 = sub_1BE0502A4();
  KeyPath = swift_getKeyPath();
  v4 = sub_1BE051234();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v11[4];
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v2;
  *(a1 + 104) = v5;
  *(a1 + 112) = v4;
  *(a1 + 120) = v6;
  *(a1 + 128) = 2;
  *(a1 + 136) = 0;
  return result;
}

void sub_1BD234594(uint64_t a5@<X8>)
{
  v6 = sub_1BE051574();
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BE048C84();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v18 = v17;
  v19 = v11 & 1;
  v53 = v11 & 1;
  v21 = (v20 & 1);
  *a5 = v6;
  *(a5 + 8) = v7;
  *(a5 + 16) = v9;
  *(a5 + 24) = v19;
  *(a5 + 32) = v13;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
  *(a5 + 72) = v20 & 1;
  *(a5 + 80) = v17;
  sub_1BE048964();
  sub_1BD0D7F18(v7, v9, v19);
  sub_1BE048C84();
  sub_1BD0D7F18(v14, v16, v21);
  sub_1BE048C84();
  sub_1BD0DDF10(v14, v16, v21, v22, v23, v24, v25, v26);
  v18, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD0DDF10(v7, v9, v53, v34, v35, v36, v37, v38);
  v6, v39, v40, v41, v42, v43, v44, v45;
  v13, v46, v47, v48, v49, v50, v51, v52;
}

double sub_1BD234724@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  v20 = 1;
  sub_1BD2344D8(&v11);
  v26 = v16;
  v27 = v17;
  v28[0] = v18[0];
  *(v28 + 9) = *(v18 + 9);
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v21 = v11;
  v22 = v12;
  v29[5] = v16;
  v29[6] = v17;
  v30[0] = v18[0];
  *(v30 + 9) = *(v18 + 9);
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[0] = v11;
  v29[1] = v12;
  sub_1BD2348F8(&v21, &v10);
  sub_1BD234968(v29);
  *(&v19[6] + 7) = v27;
  *(&v19[5] + 7) = v26;
  *(&v19[2] + 7) = v23;
  *(&v19[1] + 7) = v22;
  *(&v19[7] + 7) = v28[0];
  v19[8] = *(v28 + 9);
  *(&v19[3] + 7) = v24;
  *(&v19[4] + 7) = v25;
  *(v19 + 7) = v21;
  v4 = v19[4];
  *(a2 + 97) = v19[5];
  v5 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v5;
  *(a2 + 145) = v19[8];
  v6 = v19[0];
  *(a2 + 33) = v19[1];
  result = *&v19[2];
  v8 = v19[3];
  *(a2 + 49) = v19[2];
  *(a2 + 65) = v8;
  *(a2 + 81) = v4;
  v9 = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  return result;
}

uint64_t sub_1BD2348F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E768, &qword_1BE0C3DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD234968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E768, &qword_1BE0C3DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD2349D0()
{
  result = qword_1EBD3E770;
  if (!qword_1EBD3E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD3E778, &unk_1BE0C3E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E770);
  }

  return result;
}

void sub_1BD234A3C(uint64_t a1)
{
  _s8MerchantVMa(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD234B18(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  v11 = v7 + v9 > 0x30;
  v12 = 48;
  v13 = *(*(a3 + 16) - 8);
  if (v11)
  {
    v12 = v10;
  }

  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 64);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v12 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v15 + 1;
  if (v17 >= a2)
  {
    goto LABEL_31;
  }

  v19 = ((((v16 + (v18 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v17 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  if ((v14 & 0x80000000) != 0)
  {
    v29 = *(*(*(a3 + 16) - 8) + 48);

    return v29((a1 + v18) & ~v15);
  }

  else
  {
    v28 = *(a1 + 1);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_1BD234D38(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BE04AA64() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v12 = v9 + v11;
  if (v12 <= 0x30)
  {
    v13 = 48;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 64);
  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v13 + ((v10 & 0xF8 ^ 0x1F8u) & (v10 + 16)) + 1;
  v20 = ((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 >= a3)
  {
    v23 = 0;
    v24 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v18 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if ((v15 & 0x80000000) != 0)
        {
          v27 = *(v14 + 56);

          v27((a1 + v19 + v16) & ~v16, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          if (v19 <= 3)
          {
            v28 = ~(-1 << (8 * v19));
          }

          else
          {
            v28 = 0x7FFFFFFF;
          }

          if (v19)
          {
            v29 = v28 & a2;
            if (v19 <= 3)
            {
              v30 = v19;
            }

            else
            {
              v30 = 4;
            }

            bzero(a1, v19);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                *a1 = v29;
                *(a1 + 2) = BYTE2(v29);
              }

              else
              {
                *a1 = v29;
              }
            }

            else if (v30 == 1)
            {
              *a1 = v29;
            }

            else
            {
              *a1 = v29;
            }
          }
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v26 = ~v18 + a2;
    bzero(a1, ((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

uint64_t sub_1BD235064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v50 = type metadata accessor for RecurringPaymentMerchantDetailsView(255);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
  v51 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
  v5 = *(a1 + 24);
  v39 = *(a1 + 16);
  v38 = v5;
  sub_1BE051854();
  sub_1BE04EBD4();
  v6 = sub_1BE04EBD4();
  v7 = sub_1BD238AEC();
  v36 = MEMORY[0x1E6981870];
  v49[8] = swift_getWitnessTable();
  v49[9] = MEMORY[0x1E697EBF8];
  v8 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1E697E5D8];
  v49[6] = WitnessTable;
  v49[7] = MEMORY[0x1E697E5D8];
  v37 = v8;
  v11 = swift_getWitnessTable();
  v49[0] = v4;
  v49[1] = MEMORY[0x1E6981E70];
  v49[2] = v6;
  v49[3] = v7;
  v49[4] = MEMORY[0x1E6981E60];
  v49[5] = v11;
  v52 = type metadata accessor for SheetSection(255, v49);
  v53 = v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  v47 = swift_getWitnessTable();
  v48 = v10;
  swift_getWitnessTable();
  sub_1BE04E2F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v12 = sub_1BE051854();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E20, &unk_1BE0E4C40);
  v15 = sub_1BE04EBD4();
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  sub_1BE04F7C4();
  v42 = v39;
  v43 = v38;
  v44 = v40;
  sub_1BE051844();
  v21 = sub_1BE051274();
  v22 = sub_1BE0501D4();
  v50 = v21;
  LOBYTE(v51) = v22;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8B0, &qword_1BE0C3FD0);
  v23 = swift_getWitnessTable();
  sub_1BD238BD8();
  sub_1BE050834();
  v21, v24, v25, v26, v27, v28, v29, v30;
  (*(v34 + 8))(v14, v12);
  v31 = sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
  v45 = v23;
  v46 = v31;
  swift_getWitnessTable();
  sub_1BD147308();
  v32 = *(v35 + 8);
  v32(v17, v15);
  sub_1BD147308();
  return (v32)(v20, v15);
}

uint64_t sub_1BD2355FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a1;
  v34 = a4;
  v55 = type metadata accessor for RecurringPaymentMerchantDetailsView(255);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
  v56 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
  sub_1BE051854();
  sub_1BE04EBD4();
  v7 = sub_1BE04EBD4();
  v8 = sub_1BD238AEC();
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x1E697EBF8];
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E697E5D8];
  v51 = v10;
  v52 = MEMORY[0x1E697E5D8];
  v31 = v9;
  v12 = swift_getWitnessTable();
  v45 = v6;
  v46 = MEMORY[0x1E6981E70];
  v47 = v7;
  v48 = v8;
  v49 = MEMORY[0x1E6981E60];
  v50 = v12;
  v57 = type metadata accessor for SheetSection(255, &v45);
  v58 = v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  v13 = sub_1BE04EBD4();
  v43 = swift_getWitnessTable();
  v44 = v11;
  v14 = swift_getWitnessTable();
  v15 = sub_1BE04E2F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = sub_1BE04EBD4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v36 = a2;
  v37 = v32;
  v38 = v33;
  v26 = sub_1BE0501B4();
  sub_1BD99A478(v26, sub_1BD238C5C, v35, v13, v14);
  sub_1BE051CD4();
  v30 = swift_getWitnessTable();
  sub_1BE050F54();
  (*(v16 + 8))(v18, v15);
  v41 = v30;
  v42 = MEMORY[0x1E697EBF8];
  v27 = swift_getWitnessTable();
  sub_1BD147308();
  v28 = *(v20 + 8);
  v28(v22, v19);
  (*(v20 + 16))(v22, v25, v19);
  v56 = v22;
  v45 = MEMORY[0x1E6981E70];
  v46 = v19;
  v39 = MEMORY[0x1E6981E60];
  v40 = v27;
  sub_1BD13A4C4(&v55, 2uLL, &v45);
  v28(v25, v19);
  return (v28)(v22, v19);
}

uint64_t sub_1BD235B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v59 = sub_1BE04F3D4();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RecurringPaymentMerchantDetailsView(255);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
  v68 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
  sub_1BE051854();
  sub_1BE04EBD4();
  v10 = sub_1BE04EBD4();
  v11 = sub_1BD238AEC();
  v66[8] = swift_getWitnessTable();
  v66[9] = MEMORY[0x1E697EBF8];
  v66[6] = swift_getWitnessTable();
  v66[7] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v66[0] = v9;
  v66[1] = MEMORY[0x1E6981E70];
  v66[2] = v10;
  v66[3] = v11;
  v66[4] = MEMORY[0x1E6981E60];
  v66[5] = WitnessTable;
  v69 = type metadata accessor for SheetSection(255, v66);
  v70 = v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  v13 = sub_1BE051854();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1BE04EBD4();
  v57 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  sub_1BE04F7B4();
  v61 = a2;
  v62 = a3;
  v63 = a1;
  sub_1BE051844();
  v23 = type metadata accessor for RecurringPaymentContent(0, a2, a3, v22);
  v24 = *(v23 + 64);
  v55 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    v27 = v59;
    v28 = v58;
    if (v26)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v29 = sub_1BE050174();
    sub_1BE04CF84();

    v30 = v54;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v26, 0, v31, v32, v33, v34, v35, v36);
    v28 = v58;
    v37 = v30;
    v27 = v59;
    (*(v58 + 8))(v37, v59);
    if (v67)
    {
      goto LABEL_7;
    }
  }

  v38 = v55 + *(v23 + 68);
  v39 = *v38;
  if (*(v38 + 8) != 1)
  {
    sub_1BE048964();
    v40 = v27;
    LODWORD(v59) = sub_1BE052C44();
    v41 = v28;
    v42 = sub_1BE050174();
    sub_1BE04CF84();

    v43 = v54;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v39, 0, v44, v45, v46, v47, v48, v49);
    (*(v41 + 8))(v43, v40);
  }

LABEL_7:
  v50 = swift_getWitnessTable();
  sub_1BE050FF4();
  (*(v56 + 8))(v15, v13);
  v64 = v50;
  v65 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308();
  v51 = *(v57 + 8);
  v51(v18, v16);
  sub_1BD147308();
  return (v51)(v21, v16);
}

uint64_t sub_1BD2361E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v78 = a2;
  v76 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
  v75 = v8;
  sub_1BE051854();
  sub_1BE04EBD4();
  v9 = sub_1BE04EBD4();
  v10 = sub_1BD238AEC();
  v72 = v10;
  WitnessTable = swift_getWitnessTable();
  v133 = MEMORY[0x1E697EBF8];
  v130 = swift_getWitnessTable();
  v131 = MEMORY[0x1E697E5D8];
  v73 = v9;
  v70 = swift_getWitnessTable();
  *&v124 = v8;
  *(&v124 + 1) = MEMORY[0x1E6981E70];
  *&v125 = v9;
  *(&v125 + 1) = v10;
  *&v126 = MEMORY[0x1E6981E60];
  *(&v126 + 1) = v70;
  v11 = type metadata accessor for SheetSection(0, &v124);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for RecurringPaymentMerchantDetailsView(0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  sub_1BD238C80(a1, &v48 - v20, _s8MerchantVMa);
  v21[v17[5]] = 3;
  v22 = &v21[v17[6]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v71 = v17;
  v23 = v17[7];
  v68 = v21;
  v24 = &v21[v23];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v78;
  v26 = v58;
  v28 = type metadata accessor for RecurringPaymentContent(0, v78, v58, v27);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v63 = v134;
  v64 = v136;
  v65 = v139;
  v66 = v138;
  v157 = 1;
  v155 = v135;
  v153 = v137;
  sub_1BD236AB8(&v124);
  v95 = v124;
  LOBYTE(v96) = v125;
  *(&v96 + 1) = *(&v125 + 1);
  v80 = v25;
  v81 = v26;
  v82 = a1;
  sub_1BD7C944C(&v95, sub_1BD238C74, v75, v73, v72, v70, v13);
  v29 = swift_getWitnessTable();
  v73 = v16;
  v67 = v29;
  sub_1BD147308();
  v30 = v57;
  v31 = *(v57 + 8);
  v75 = v13;
  v72 = v11;
  v69 = v31;
  v70 = v57 + 8;
  v31(v13, v11);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v59 = v140;
  v60 = v142;
  v61 = v145;
  v62 = v144;
  v163 = 1;
  v161 = v141;
  v159 = v143;
  v32 = v79;
  v33 = v49;
  v34 = &v49[*(v79 + 84)];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v33 + v32[22];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  sub_1BD2370E8(a1, v78, v26, v33);
  v36 = v33 + v32[19];
  *v36 = 0x4020000000000000;
  *(v36 + 8) = 0;
  *(v33 + v32[20]) = 1;
  v37 = (a1 + *(v28 + 40));
  v38 = v37[1];
  if (v38)
  {
    v78 = *v37;
    sub_1BE048C84();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v58 = v146;
    v55 = v150;
    v56 = v148;
    LOBYTE(v124) = 1;
    LOBYTE(v95) = v147;
    LOBYTE(v112) = v149;
    v53 = 1;
    v54 = v151;
    v52 = v147;
    v51 = v149;
    v50 = 0x4030000000000000;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v50 = 0;
    v51 = 0;
    v54 = 0;
    v78 = 0;
  }

  v39 = v68;
  v40 = v74;
  sub_1BD238C80(v68, v74, type metadata accessor for RecurringPaymentMerchantDetailsView);
  v112 = 0;
  v113 = v157;
  *v114 = *v156;
  *&v114[3] = *&v156[3];
  v115 = v63;
  v116 = v155;
  *v117 = *v154;
  *&v117[3] = *&v154[3];
  v118 = v64;
  v119 = v153;
  *v120 = *v152;
  *&v120[3] = *&v152[3];
  v121 = v66;
  v122 = v65;
  v123[0] = v40;
  v123[1] = &v112;
  v41 = *(v30 + 16);
  v42 = v75;
  v43 = v72;
  v44 = v73;
  v41(v75, v73, v72);
  v101 = 0;
  v102 = v163;
  *v103 = *v162;
  *&v103[3] = *&v162[3];
  v104 = v59;
  v105 = v161;
  *v106 = *v160;
  *&v106[3] = *&v160[3];
  v107 = v60;
  v108 = v159;
  *v109 = *v158;
  *&v109[3] = *&v158[3];
  v110 = v62;
  v111 = v61;
  v123[2] = v42;
  v123[3] = &v101;
  v45 = v77;
  sub_1BD055E84(v33, v77);
  *&v95 = 0;
  *(&v95 + 1) = v53;
  *&v96 = v58;
  *(&v96 + 1) = v52;
  *&v97 = v56;
  *(&v97 + 1) = v51;
  *&v98 = v55;
  *(&v98 + 1) = v54;
  *&v99 = v78;
  *(&v99 + 1) = v38;
  v100 = v50;
  v123[4] = v45;
  v123[5] = &v95;
  v89 = v71;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
  v91 = v43;
  v92 = v90;
  v93 = v79;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
  v83 = sub_1BD238CE8();
  v84 = sub_1BD238D40();
  v85 = v67;
  v86 = v84;
  v87 = sub_1BD0DE4F4(&qword_1EBD3E8D0, &qword_1EBD3E8A0, &qword_1BE0C3FB8, &unk_1BE0F91B0);
  v88 = sub_1BD238DC4();
  sub_1BD13A4C4(v123, 6uLL, &v89);
  sub_1BD055EF4(v33);
  v46 = v69;
  v69(v44, v43);
  sub_1BD238E74(v39);
  v126 = v97;
  v127 = v98;
  v128 = v99;
  v129 = v100;
  v124 = v95;
  v125 = v96;
  sub_1BD0DE53C(&v124, &qword_1EBD3E8A8, &unk_1BE0C3FC0);
  sub_1BD055EF4(v45);
  v46(v42, v43);
  return sub_1BD238E74(v40);
}

id sub_1BD236AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8080], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD236C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v31 = a4;
  v7 = sub_1BE051854();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1BE04EBD4();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = sub_1BE04EBD4();
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1BE04F7C4();
  v25 = a2;
  v26 = a3;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  sub_1BE051844();
  sub_1BE051CE4();
  WitnessTable = swift_getWitnessTable();
  sub_1BE050F54();
  (*(v28 + 8))(v9, v7);
  sub_1BE050204();
  type metadata accessor for RecurringPaymentContent(0, v25, v26, v19);
  v37 = WitnessTable;
  v38 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  sub_1BE051014();
  (*(v29 + 8))(v12, v10);
  v35 = v20;
  v36 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308();
  v21 = *(v30 + 8);
  v21(v15, v13);
  sub_1BD147308();
  return (v21)(v18, v13);
}

uint64_t sub_1BD236FF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecurringPaymentContent(0, v6, v7, v8);
  sub_1BD147308();
  sub_1BD147308();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1BD2370E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v51 = a4;
  v50 = sub_1BE04FF64();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F0, &qword_1BE0C3FE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F8, &qword_1BE0C3FE8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E900, &qword_1BE0C3FF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E908, &qword_1BE0C3FF8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E910, &qword_1BE0C4000);
  sub_1BD23755C(&v9[*(v21 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v13, &qword_1EBD3E8F0, &qword_1BE0C3FE0);
  v22 = &v13[*(v11 + 44)];
  v23 = v59;
  *(v22 + 4) = v58;
  *(v22 + 5) = v23;
  *(v22 + 6) = v60;
  v24 = v55;
  *v22 = v54;
  *(v22 + 1) = v24;
  v25 = v57;
  *(v22 + 2) = v56;
  *(v22 + 3) = v25;
  type metadata accessor for RecurringPaymentContent(0, v47, v48, v26);
  LOBYTE(v9) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1BD0DE204(v13, v16, &qword_1EBD3E8F8, &qword_1BE0C3FE8);
  v35 = &v16[*(v14 + 36)];
  *v35 = v9;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_1BE04FF44();
  v36 = sub_1BD238ED0();
  sub_1BE050D14();
  (*(v4 + 8))(v6, v50);
  sub_1BD0DE53C(v16, &qword_1EBD3E900, &qword_1BE0C3FF0);
  sub_1BE052434();
  v38 = v37;
  v52 = v14;
  v53 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v38, v39, v40, v41, v42, v43, v44, v45;
  return (*(v18 + 8))(v20, v17);
}

id sub_1BD23755C@<X0>(uint64_t a1@<X8>)
{
  v209 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930, &qword_1BE0C4008);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v210 = &v203 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v208 = &v203 - v4;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v213 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v203 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v207 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v214 = &v203 - v15;
  v16 = *(v6 + 104);
  v212 = *MEMORY[0x1E69B8068];
  v211 = v16;
  v16(v10, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    v22 = *(v6 + 8);
    v205 = v6 + 8;
    v204 = v22;
    v22(v10, v5);
    v215 = v19;
    v216 = v21;
    v203 = sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    LOBYTE(v19) = v26;
    v28 = v27;
    v29 = sub_1BE050324();
    v206 = v5;
    v30 = v29;
    v31 = sub_1BE0505F4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v30, v32, v34, v36, v38, v39, v40, v41;
    sub_1BD0DDF10(v23, v25, (v19 & 1), v42, v43, v44, v45, v46);
    v28, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE051224();
    v55 = sub_1BE050564();
    v57 = v56;
    LOBYTE(v30) = v58;
    v60 = v59;
    v54, v56, v58, v59, v61, v62, v63, v64;
    sub_1BD0DDF10(v31, v33, (v35 & 1), v65, v66, v67, v68, v69);
    v37, v70, v71, v72, v73, v74, v75, v76;
    KeyPath = swift_getKeyPath();
    v215 = v55;
    v216 = v57;
    v78 = (v30 & 1);
    v217 = v78;
    v218 = v60;
    v219 = KeyPath;
    v220 = 1;
    v221 = 0;
    sub_1BE052434();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    sub_1BE050DE4();
    v80, v81, v82, v83, v84, v85, v86, v87;
    v88 = v57;
    v89 = v206;
    sub_1BD0DDF10(v55, v88, v78, v90, v91, v92, v93, v94);
    KeyPath, v95, v96, v97, v98, v99, v100, v101;
    v60, v102, v103, v104, v105, v106, v107, v108;
    v109 = v213;
    v211(v213, v212, v89);
    result = PKPassKitBundle();
    if (result)
    {
      v110 = result;
      v111 = sub_1BE04B6F4();
      v113 = v112;

      v204(v109, v89);
      v215 = v111;
      v216 = v113;
      v114 = sub_1BE0506C4();
      v116 = v115;
      LOBYTE(v113) = v117;
      v119 = v118;
      v120 = sub_1BE050324();
      v121 = sub_1BE0505F4();
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v120, v122, v124, v126, v128, v129, v130, v131;
      sub_1BD0DDF10(v114, v116, (v113 & 1), v132, v133, v134, v135, v136);
      v119, v137, v138, v139, v140, v141, v142, v143;
      v144 = sub_1BE051234();
      v145 = sub_1BE050564();
      v147 = v146;
      LOBYTE(v120) = v148;
      v150 = v149;
      v144, v146, v148, v149, v151, v152, v153, v154;
      sub_1BD0DDF10(v121, v123, (v125 & 1), v155, v156, v157, v158, v159);
      v127, v160, v161, v162, v163, v164, v165, v166;
      v167 = swift_getKeyPath();
      v215 = v145;
      v216 = v147;
      v168 = (v120 & 1);
      v217 = v168;
      v218 = v150;
      v219 = v167;
      LOBYTE(v220) = 0;
      sub_1BE052434();
      v170 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0, &unk_1BE0B8220);
      sub_1BD0FF49C();
      v171 = v208;
      sub_1BE050DE4();
      v170, v172, v173, v174, v175, v176, v177, v178;
      sub_1BD0DDF10(v145, v147, v168, v179, v180, v181, v182, v183);
      v167, v184, v185, v186, v187, v188, v189, v190;
      v150, v191, v192, v193, v194, v195, v196, v197;
      v198 = v214;
      v199 = v207;
      sub_1BD0DE19C(v214, v207, &qword_1EBD3C0E8, &qword_1BE0C4010);
      v200 = v210;
      sub_1BD0DE19C(v171, v210, &qword_1EBD3E930, &qword_1BE0C4008);
      v201 = v209;
      sub_1BD0DE19C(v199, v209, &qword_1EBD3C0E8, &qword_1BE0C4010);
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E938, qword_1BE0C4078);
      sub_1BD0DE19C(v200, v201 + *(v202 + 48), &qword_1EBD3E930, &qword_1BE0C4008);
      sub_1BD0DE53C(v171, &qword_1EBD3E930, &qword_1BE0C4008);
      sub_1BD0DE53C(v198, &qword_1EBD3C0E8, &qword_1BE0C4010);
      sub_1BD0DE53C(v200, &qword_1EBD3E930, &qword_1BE0C4008);
      return sub_1BD0DE53C(v199, &qword_1EBD3C0E8, &qword_1BE0C4010);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD237C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1BD23835C(a1, a9);
  v18 = type metadata accessor for RecurringPaymentContent(0, a7, a8, v17);
  (*(*(a7 - 8) + 32))(a9 + v18[9], a2, a7);
  v19 = (a9 + v18[10]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + v18[11]);
  *v20 = a5;
  v20[1] = a6;
  *(a9 + v18[12]) = 0x4041800000000000;
  *(a9 + v18[13]) = 0x4041800000000000;
  *(a9 + v18[14]) = 0x4030000000000000;
  *(a9 + v18[15]) = 0x4030000000000000;
  v21 = a9 + v18[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v18[17];
  result = swift_getKeyPath();
  *v22 = result;
  *(v22 + 8) = 0;
  return result;
}

uint64_t sub_1BD237D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(v7 + 44));
  v9 = *v8;
  v10 = v8[1];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  (*(v4 + 16))(v6);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  (*(v4 + 32))(v12 + v11, v6, a1);
  v16 = type metadata accessor for RecurringPaymentContent(0, v13, v14, v15);
  sub_1BE048964();
  WitnessTable = swift_getWitnessTable();
  sub_1BD5CFAF0(0, 0, v9, v10, v35, sub_1BD2382A8, v12, v16, &v39, WitnessTable);
  v19 = type metadata accessor for DetailNavigationView(0, v16, WitnessTable, v18);
  swift_getWitnessTable();
  sub_1BD147308();
  v37[2] = v41;
  v37[3] = v42;
  v37[4] = v43;
  v38 = v44;
  v37[0] = v39;
  v37[1] = v40;
  v20 = *(*(v19 - 8) + 8);
  v20(v37, v19);
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  sub_1BD147308();
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v39 = v23;
  v40 = v24;
  return v20(&v39, v19);
}

uint64_t sub_1BD237FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[1] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a4;
  v15 = type metadata accessor for RecurringPaymentContent(0, a3, a4, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  sub_1BD238C80(a2, v13, _s8MerchantVMa);
  v23 = type metadata accessor for RecurringPaymentSheet(0, a3, a4, v22);
  (*(v8 + 16))(v10, a2 + v23[9], a3);
  sub_1BD237C08(v13, v10, *(a2 + v23[10]), *(a2 + v23[10] + 8), *(a2 + v23[11]), *(a2 + v23[11] + 8), a3, v26[0], v18);
  swift_getWitnessTable();
  sub_1BD147308();
  v24 = *(v16 + 8);
  sub_1BE048C84();
  sub_1BE048964();
  v24(v18, v15);
  sub_1BD147308();
  return (v24)(v21, v15);
}

uint64_t sub_1BD2382A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for RecurringPaymentSheet(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BD237FF0(a1, v9, v6, v7, a3);
}

uint64_t sub_1BD23835C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MerchantVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD2383C0(uint64_t a1)
{
  _s8MerchantVMa(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD2384EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  v11 = v7 + v9 > 0x30;
  v12 = 48;
  v13 = *(*(a3 + 16) - 8);
  if (v11)
  {
    v12 = v10;
  }

  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 64);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v12 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v15 + 1;
  if (v17 >= a2)
  {
    goto LABEL_32;
  }

  v19 = ((((((((((((((v16 + (v18 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = *&a1[v19];
      if (!v23)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v25 = (v23 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v26 = *a1;
    }

    else
    {
      v25 = 0;
      v26 = *a1;
    }

    return v17 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_28;
    }
  }

LABEL_32:
  if ((v14 & 0x80000000) != 0)
  {
    v28 = *(*(*(a3 + 16) - 8) + 48);

    return v28(&a1[v18] & ~v15);
  }

  else
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_1BD238744(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BE04AA64() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v12 = v9 + v11;
  if (v12 <= 0x30)
  {
    v13 = 48;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 64);
  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v13 + ((v10 & 0xF8 ^ 0x1F8u) & (v10 + 16)) + 1;
  v20 = ((((((((((((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 >= a3)
  {
    v23 = 0;
    if (v18 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v18 >= a2)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v15 & 0x80000000) != 0)
      {
        v26 = *(v14 + 56);

        v26((a1 + v19 + v16) & ~v16, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        if (v19 <= 3)
        {
          v27 = ~(-1 << (8 * v19));
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

        if (v19)
        {
          v28 = v27 & a2;
          if (v19 <= 3)
          {
            v29 = v19;
          }

          else
          {
            v29 = 4;
          }

          bzero(a1, v19);
          if (v29 > 2)
          {
            if (v29 == 3)
            {
              *a1 = v28;
              *(a1 + 2) = BYTE2(v28);
            }

            else
            {
              *a1 = v28;
            }
          }

          else if (v29 == 1)
          {
            *a1 = v28;
          }

          else
          {
            *a1 = v28;
          }
        }
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return;
    }
  }

  v24 = ~v18 + a2;
  bzero(a1, ((((((((((((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_32:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1BD238A58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BD238AEC()
{
  result = qword_1EBD3E890;
  if (!qword_1EBD3E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
    sub_1BD238B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E890);
  }

  return result;
}

unint64_t sub_1BD238B78()
{
  result = qword_1EBD3E898;
  if (!qword_1EBD3E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E898);
  }

  return result;
}

unint64_t sub_1BD238BD8()
{
  result = qword_1EBD3E8B8;
  if (!qword_1EBD3E8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8B0, &qword_1BE0C3FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8B8);
  }

  return result;
}

uint64_t sub_1BD238C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD238CE8()
{
  result = qword_1EBD3E8C0;
  if (!qword_1EBD3E8C0)
  {
    type metadata accessor for RecurringPaymentMerchantDetailsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8C0);
  }

  return result;
}

unint64_t sub_1BD238D40()
{
  result = qword_1EBD3E8C8;
  if (!qword_1EBD3E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8C8);
  }

  return result;
}

unint64_t sub_1BD238DC4()
{
  result = qword_1EBD3E8D8;
  if (!qword_1EBD3E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
    sub_1BD0DE4F4(&qword_1EBD3E8E0, &qword_1EBD3E8E8, &qword_1BE0C3FD8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E8D8);
  }

  return result;
}

uint64_t sub_1BD238E74(uint64_t a1)
{
  v2 = type metadata accessor for RecurringPaymentMerchantDetailsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD238ED0()
{
  result = qword_1EBD3E918;
  if (!qword_1EBD3E918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E900, &qword_1BE0C3FF0);
    sub_1BD238F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E918);
  }

  return result;
}

unint64_t sub_1BD238F5C()
{
  result = qword_1EBD3E920;
  if (!qword_1EBD3E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8F8, &qword_1BE0C3FE8);
    sub_1BD0DE4F4(&qword_1EBD3E928, &qword_1EBD3E8F0, &qword_1BE0C3FE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E920);
  }

  return result;
}

void sub_1BD239020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B8D4();
  v137 = *(v3 - 8);
  v138 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v139 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v136 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v135 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v125 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v125 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v125 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v125 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v125 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v125 - v27;
  v148.receiver = v0;
  v148.super_class = ObjectType;
  objc_msgSendSuper2(&v148, sel_loadView, v26);
  v141 = sub_1BE04BC84();
  v29 = [v0 explanationView];
  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = v29;
  v133 = v5;
  v31 = [objc_opt_self() systemBackgroundColor];
  [v30 setTopBackgroundColor_];

  [v0 setShowDoneButton_];
  [v0 setShowCancelButton_];
  [v30 setTitleAccessoriesEnabled_];
  [v0 setPrivacyLinkController_];
  v32 = *(v8 + 104);
  v142 = *MEMORY[0x1E69B80D8];
  v145 = v32;
  v32(v28);
  v33 = PKPassKitBundle();
  if (!v33)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v33;
  sub_1BE04B6F4();
  v36 = v35;

  v143 = *(v8 + 8);
  v144 = v8 + 8;
  v143(v28, v7);
  v37 = sub_1BE052404();
  v36, v38, v39, v40, v41, v42, v43, v44;
  [v30 setTitleText_];

  v45 = [v30 dockView];
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = v45;
  v140 = [v45 footerView];
  if (!v140)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = [v46 primaryButton];
  if (!v47)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v48 = v47;
  v145(v24, v142, v7);
  v49 = PKPassKitBundle();
  if (!v49)
  {
LABEL_39:
    __break(1u);
LABEL_40:
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

  v50 = v49;
  sub_1BE04B6F4();
  v52 = v51;

  v143(v24, v7);
  v53 = sub_1BE052404();
  v52, v54, v55, v56, v57, v58, v59, v60;
  [v48 setTitle:v53 forStates:0];

  [v140 setSetUpLaterButton_];
  v61 = [*&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_precursorRequest] actions];
  sub_1BD0E5E8C(0, &qword_1EBD3D8C0, 0x1E69B8AD0);
  v62 = sub_1BE052744();

  if ((v62 & 0xC000000000000001) == 0)
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v62 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_34;
  }

  v63 = MEMORY[0x1BFB40900](0, v62);
LABEL_10:
  v71 = v63;
  v62, v64, v65, v66, v67, v68, v69, v70;
  v72 = [v141 organizationName];
  v73 = sub_1BE052434();
  v75 = v74;

  v76 = [v71 type];
  v132 = v71;
  if (v76 == 1)
  {
    [v141 identityType];
    v77 = v134;
    v145(v134, *MEMORY[0x1E69B80E8], v7);
  }

  else
  {
    v77 = v134;
    v145(v134, v142, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1BE0B69E0;
  *(v78 + 56) = MEMORY[0x1E69E6158];
  *(v78 + 64) = sub_1BD110550();
  *(v78 + 32) = v73;
  *(v78 + 40) = v75;
  v79 = v77;
  v80 = sub_1BE04B714();
  v131 = v81;
  v78, v81, v82, v83, v84, v85, v86, v87;
  v143(v79, v7);
  v88 = v135;
  sub_1BE04BB94();
  v89 = v139;
  sub_1BE04B924();
  (*(v136 + 8))(v88, v133);
  v91 = v137;
  v90 = v138;
  v92 = (*(v137 + 88))(v89, v138);
  if (v92 == *MEMORY[0x1E69B7F78])
  {
    v93 = v46;
    v94 = v130;
    v145(v130, v142, v7);
    v95 = PKPassKitBundle();
    if (v95)
    {
      v96 = v95;
LABEL_18:
      v98 = sub_1BE04B6F4();
      v100 = v99;

      v143(v94, v7);
LABEL_19:
      v146 = v80;
      v147 = v131;
      MEMORY[0x1BFB3F610](2570, 0xE200000000000000);
      MEMORY[0x1BFB3F610](v98, v100);
      v100, v101, v102, v103, v104, v105, v106, v107;
      v108 = v147;
      v109 = sub_1BE052404();
      v108, v110, v111, v112, v113, v114, v115, v116;
      [v30 setBodyText_];

      return;
    }

    goto LABEL_40;
  }

  if (v92 == *MEMORY[0x1E69B7F80])
  {
    v93 = v46;
    v94 = v129;
    v145(v129, v142, v7);
    v97 = PKPassKitBundle();
    if (v97)
    {
      v96 = v97;
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if (v92 == *MEMORY[0x1E69B7F70])
  {
    v93 = v46;
    v94 = v128;
    v145(v128, v142, v7);
    v117 = PKPassKitBundle();
    if (v117)
    {
      v96 = v117;
      goto LABEL_18;
    }

    goto LABEL_42;
  }

  if (v92 == *MEMORY[0x1E69B7F68])
  {
    v93 = v46;
    v94 = v127;
    v145(v127, v142, v7);
    v118 = PKPassKitBundle();
    if (v118)
    {
      v96 = v118;
      goto LABEL_18;
    }

    goto LABEL_43;
  }

  v93 = v46;
  if (v92 == *MEMORY[0x1E69B7F88])
  {
    v94 = v125;
    v145(v125, v142, v7);
    v119 = PKPassKitBundle();
    if (v119)
    {
      v96 = v119;
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  v120 = v126;
  v145(v126, v142, v7);
  v121 = PKPassKitBundle();
  if (v121)
  {
    v122 = v121;
    v123 = v120;
    v98 = sub_1BE04B6F4();
    v100 = v124;

    v143(v123, v7);
    (*(v91 + 8))(v139, v90);
    goto LABEL_19;
  }

LABEL_45:
  __break(1u);
}

void sub_1BD239CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BC84();
  [objc_opt_self() recommendedCardImageSize];
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() sharedInstance];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v25[4] = sub_1BD23A390;
    v26 = v13;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1BD20815C;
    v25[3] = &block_descriptor_33;
    v14 = _Block_copy(v25);
    v15 = v26;
    v16 = v6;
    v17 = v3;
    sub_1BE048964();
    v15, v18, v19, v20, v21, v22, v23, v24;
    [v12 snapshotWithPass:v16 size:v14 completion:{v8, v10}];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD239E44(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1BD23A39C;
  v31 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  v18 = a1;
  v19 = a2;
  sub_1BE048964();
  v17, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v29 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v28);
}

void sub_1BD23A0F8(uint64_t a1, void *a2, void (*a3)(void))
{
  v5 = [objc_allocWithZone(PKHeroCardExplanationHeaderView) initWithImage_];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setHideBackground_];
  [v8 setSize_];
  [v8 setPadding_];
  v6 = [a2 explanationView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHeroView_];

  a3();
}

uint64_t sub_1BD23A3A8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BBCD80, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AccountTermsView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AccountTermsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BD23A664(a1);
  v6 = sub_1BE04EC54();
  v7 = sub_1BE0501F4();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E960, &qword_1BE0C4100) + 36);
  *v8 = v6;
  v8[8] = v7;
  sub_1BD23B058(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1BD23B0BC(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E970, &qword_1BE0C4120) + 36));
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v11 = &unk_1BE0C4118;
  v11[1] = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E978, &qword_1BE0C4128) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  result = type metadata accessor for ErrorAlertModifier(0);
  v14 = &v12[*(result + 20)];
  *v14 = 0;
  *(v14 + 1) = 0;
  return result;
}

uint64_t type metadata accessor for AccountTermsView(uint64_t a1)
{
  result = qword_1EBD3E980;
  if (!qword_1EBD3E980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BD23A664@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA20, &qword_1BE0C4300);
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA28, &qword_1BE0C4308);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v45 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA18, &qword_1BE0C42F8);
  sub_1BE0516A4();
  v12 = v42;
  if (v42)
  {
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    *&v45 = *(v1 + 8);
    *(&v45 + 1) = v13;
    LOBYTE(v46) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
    sub_1BE051914();
    v15 = v42;
    v16 = v43;
    v17 = v44;
    *v11 = v12;
    *(v11 + 1) = v15;
    *(v11 + 2) = v16;
    v11[24] = v17;
    swift_storeEnumTagMultiPayload();
    sub_1BD23C03C();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
    v19 = sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
    v21 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
    *&v45 = v20;
    *(&v45 + 1) = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v45 = v3;
    *(&v45 + 1) = v18;
    v46 = v19;
    v47 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }

  else
  {
    v24 = sub_1BE04E4F4();
    v38 = &v35;
    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = v1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
    v25 = sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    v37 = v6;
    v26 = v3;
    v27 = v25;
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
    v39 = a1;
    v29 = v28;
    v30 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
    *&v45 = v29;
    *(&v45 + 1) = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = v36;
    sub_1BE051024();
    (*(v40 + 8))(v5, v26);
    v33 = v37;
    v34 = v41;
    (*(v37 + 16))(v11, v8, v41);
    swift_storeEnumTagMultiPayload();
    sub_1BD23C03C();
    *&v45 = v26;
    *(&v45 + 1) = v32;
    v46 = v27;
    v47 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v33 + 8))(v8, v34);
  }
}

uint64_t sub_1BD23AB8C(uint64_t a1)
{
  v1[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1BE0528A4();
  v1[25] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD23AC68, v3, v2);
}

uint64_t sub_1BD23AC68()
{
  v1 = **(v0 + 176);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1BD23AD88;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA10, &qword_1BE0C42F0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BD16F63C;
  *(v0 + 104) = &block_descriptor_34;
  *(v0 + 112) = v2;
  [v1 termsViewControllerWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BD23AD88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1BD23AF64;
  }

  else
  {
    v5 = sub_1BD23AEB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD23AEB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 176);
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 160);
  *(v8 + 144) = *(v9 + 32);
  *(v8 + 168) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA18, &qword_1BE0C42F8);
  sub_1BE0516B4();

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD23AF64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 224);
  v10 = *(v8 + 192);
  v11 = *(v8 + 184);
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();
  v12 = v9;
  FeatureError.init(feature:error:)(2, v9, v10);
  type metadata accessor for AccountTermsView(0);
  sub_1BD23C2BC(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516B4();

  sub_1BD23C32C(v10);

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1BD23B058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountTermsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23B0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountTermsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23B120()
{
  v2 = *(type metadata accessor for AccountTermsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD23AB8C(v0 + v3);
}

uint64_t sub_1BD23B208(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD23B3F4(uint64_t a1)
{
  v2 = type metadata accessor for AccountTermsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD23B058(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD23B0BC(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x1BFB3E7A0](v7, sub_1BD23C560, v9);
}

double sub_1BD23B548(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v18);
  sub_1BE0518F4();
  v2, v3, v4, v5, v6, v7, v8, v9;
  v1, v10, v11, v12, v13, v14, v15, v16;
  return result;
}

id sub_1BD23B5F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  sub_1BE048964();
  sub_1BE048964();
  v10 = a2;
  v11 = sub_1BE0530B4();
  sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
  v12 = v11;
  v13 = sub_1BE052C74();
  v14 = [v10 navigationItem];
  [v14 setRightBarButtonItem_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v15;
}

double sub_1BD23B774(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](&v22);
  sub_1BE0518F4();
  a4, v7, v8, v9, v10, v11, v12, v13;
  a3, v14, v15, v16, v17, v18, v19, v20;
  return result;
}

uint64_t sub_1BD23B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD23C18C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD23B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD23C18C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD23B900(uint64_t a1)
{
  sub_1BD23C18C();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD23B928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1BD23A664(a2);
  v6 = sub_1BE04EC54();
  v7 = sub_1BE0501F4();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E960, &qword_1BE0C4100) + 36);
  *v8 = v6;
  v8[8] = v7;
  sub_1BD23B058(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1BD23B0BC(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E970, &qword_1BE0C4120) + 36));
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v11 = &unk_1BE0C42E8;
  v11[1] = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E978, &qword_1BE0C4128) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516C4();
  result = type metadata accessor for ErrorAlertModifier(0);
  v14 = &v12[*(result + 20)];
  *v14 = 0;
  *(v14 + 1) = 0;
  return result;
}

void sub_1BD23BB08(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD3E990, off_1E80045F0);
  if (v1 <= 0x3F)
  {
    sub_1BD23BBFC();
    if (v2 <= 0x3F)
    {
      sub_1BD23BC4C(319, &qword_1EBD3E9A0, &qword_1EBD3E9A8, &unk_1BE0C41A8);
      if (v3 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD23BBFC()
{
  if (!qword_1EBD3E998)
  {
    v0 = sub_1BE051964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3E998);
    }
  }
}

void sub_1BD23BC4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BE0516D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BD23BCA0()
{
  result = qword_1EBD3E9B8;
  if (!qword_1EBD3E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E978, &qword_1BE0C4128);
    sub_1BD23BD5C();
    sub_1BD23C090(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9B8);
  }

  return result;
}

unint64_t sub_1BD23BD5C()
{
  result = qword_1EBD3E9C0;
  if (!qword_1EBD3E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E970, &qword_1BE0C4120);
    sub_1BD23BE18();
    sub_1BD23C090(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9C0);
  }

  return result;
}

unint64_t sub_1BD23BE18()
{
  result = qword_1EBD3E9C8;
  if (!qword_1EBD3E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E960, &qword_1BE0C4100);
    sub_1BD23BEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9C8);
  }

  return result;
}

unint64_t sub_1BD23BEA4()
{
  result = qword_1EBD3E9D0;
  if (!qword_1EBD3E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9D8, &qword_1BE0C41B8);
    sub_1BD23C03C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51330, &qword_1BE0BB6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
    sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9D0);
  }

  return result;
}

unint64_t sub_1BD23C03C()
{
  result = qword_1EBD3E9E0;
  if (!qword_1EBD3E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E9E0);
  }

  return result;
}

uint64_t sub_1BD23C090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BD23C0EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BD23C134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD23C18C()
{
  result = qword_1EBD3EA08;
  if (!qword_1EBD3EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EA08);
  }

  return result;
}

uint64_t sub_1BD23C1F0()
{
  v2 = *(type metadata accessor for AccountTermsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD23AB8C(v0 + v3);
}

uint64_t sub_1BD23C2BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23C32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for AccountTermsView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[2], v10, v11, v12, v13, v14, v15, v16;

  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v24 = (v2 + v1[9]);
  v25 = type metadata accessor for FeatureError(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {

    v26 = *(v25 + 20);
    v27 = sub_1BE04B824();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v24 + v26, 1, v27))
    {
      (*(v28 + 8))(v24 + v26, v27);
    }
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v24 + *(v29 + 28)), v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

double sub_1BD23C560()
{
  v1 = *(type metadata accessor for AccountTermsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD23B548(v2);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI24PaymentOfferSelectionRowV14IconLayoutTypeO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_9PassKitUI24PaymentOfferSelectionRowV14IconLayoutTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BD23C614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BD23C65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD23C6DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA30, &qword_1BE0C4460);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA38, &qword_1BE0C4468);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA40, &qword_1BE0C4470);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - v15;
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA48, &qword_1BE0C4478);
  sub_1BD23CA50(v2, &v9[*(v17 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, v12, &qword_1EBD3EA30, &qword_1BE0C4460);
  v18 = &v12[*(v10 + 36)];
  v19 = v39;
  *(v18 + 4) = v38;
  *(v18 + 5) = v19;
  *(v18 + 6) = v40;
  v20 = v35;
  *v18 = v34;
  *(v18 + 1) = v20;
  v21 = v37;
  *(v18 + 2) = v36;
  *(v18 + 3) = v21;
  sub_1BE04FF54();
  v22 = sub_1BD23F338();
  sub_1BE050D14();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v12, &qword_1EBD3EA38, &qword_1BE0C4468);
  sub_1BE052434();
  v24 = v23;
  v33[2] = v10;
  v33[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BD23CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA60, &qword_1BE0C4480);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA68, &qword_1BE0C4488);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v30 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA70, &qword_1BE0C4490);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA78, &qword_1BE0C4498);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  *v23 = sub_1BE04F504();
  *(v23 + 1) = 0x4038000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA80, &qword_1BE0C44A0);
  sub_1BD23CE48(&v23[*(v24 + 44)]);
  v25 = 1;
  if ((*(a1 + 48) & 0xFB) != 0)
  {
    sub_1BD23E4B0(v11);
    v31 = v3;
    sub_1BD0DE19C(v11, v8, &qword_1EBD3EA68, &qword_1BE0C4488);
    *v5 = 0;
    v5[8] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA90, &unk_1BE0C44B0);
    sub_1BD0DE19C(v8, &v5[*(v26 + 48)], &qword_1EBD3EA68, &qword_1BE0C4488);
    sub_1BD0DE53C(v11, &qword_1EBD3EA68, &qword_1BE0C4488);
    v3 = v31;
    sub_1BD0DE53C(v8, &qword_1EBD3EA68, &qword_1BE0C4488);
    sub_1BD0DE204(v5, v17, &qword_1EBD3EA60, &qword_1BE0C4480);
    v25 = 0;
  }

  (*(v32 + 56))(v17, v25, 1, v3);
  sub_1BD0DE19C(v23, v20, &qword_1EBD3EA78, &qword_1BE0C4498);
  sub_1BD0DE19C(v17, v14, &qword_1EBD3EA70, &qword_1BE0C4490);
  v27 = v33;
  sub_1BD0DE19C(v20, v33, &qword_1EBD3EA78, &qword_1BE0C4498);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA88, &qword_1BE0C44A8);
  sub_1BD0DE19C(v14, v27 + *(v28 + 48), &qword_1EBD3EA70, &qword_1BE0C4490);
  sub_1BD0DE53C(v17, &qword_1EBD3EA70, &qword_1BE0C4490);
  sub_1BD0DE53C(v23, &qword_1EBD3EA78, &qword_1BE0C4498);
  sub_1BD0DE53C(v14, &qword_1EBD3EA70, &qword_1BE0C4490);
  return sub_1BD0DE53C(v20, &qword_1EBD3EA78, &qword_1BE0C4498);
}

uint64_t sub_1BD23CE48@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAE8, &qword_1BE0C4558);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAF0, &qword_1BE0C4560);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1BD23D098((&v25 - v14));
  v16 = sub_1BE050234();
  sub_1BE04E1F4();
  v17 = &v15[*(v10 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAF8, &qword_1BE0C4568);
  sub_1BD23DAB0(&v8[*(v22 + 44)]);
  sub_1BD0DE19C(v15, v12, &qword_1EBD3EAF0, &qword_1BE0C4560);
  sub_1BD0DE19C(v8, v5, &qword_1EBD3EAE8, &qword_1BE0C4558);
  sub_1BD0DE19C(v12, a2, &qword_1EBD3EAF0, &qword_1BE0C4560);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB00, &qword_1BE0C4570);
  sub_1BD0DE19C(v5, a2 + *(v23 + 48), &qword_1EBD3EAE8, &qword_1BE0C4558);
  sub_1BD0DE53C(v8, &qword_1EBD3EAE8, &qword_1BE0C4558);
  sub_1BD0DE53C(v15, &qword_1EBD3EAF0, &qword_1BE0C4560);
  sub_1BD0DE53C(v5, &qword_1EBD3EAE8, &qword_1BE0C4558);
  return sub_1BD0DE53C(v12, &qword_1EBD3EAF0, &qword_1BE0C4560);
}

uint64_t sub_1BD23D098@<X0>(void *a1@<X8>)
{
  v65 = a1;
  v60 = sub_1BE04C784();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB60, &qword_1BE0C45D0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v53 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB68, &qword_1BE0C45D8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v53 - v4;
  v5 = sub_1BE051584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70, &qword_1BE0C45E0);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v53 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB78, &qword_1BE0C45E8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB80, &qword_1BE0C45F0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB88, &qword_1BE0C45F8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 72) <= 1u)
  {
    if (!*(v1 + 72))
    {
      v24 = *(v1 + 56);
      v25 = *(v1 + 64);
      sub_1BD23F9E8(v24, v25, 0);

      v26 = [v24 icon];
      v27 = *(v1 + 80);
      v28 = *(v17 + 28);
      *(v20 + v28) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
      swift_storeEnumTagMultiPayload();
      *v20 = v26;
      v20[1] = v24;
      v20[2] = v27;
      v20[3] = v27;
      sub_1BD23FAEC(v20, v14);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView, &unk_1BE0F0928);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v16, v63, &qword_1EBD3EB88, &qword_1BE0C45F8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F6E4();
      sub_1BD23F7A0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v16, &qword_1EBD3EB88, &qword_1BE0C45F8);
      return sub_1BD23FB50(v20);
    }

    v34 = *(v1 + 64);
    v35 = *(v1 + 56);
    (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5, v18);
    sub_1BD23F9E8(v35, v34, 1);
    v36 = sub_1BE0515E4();
    (*(v6 + 8))(v8, v5);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v67 = 1;
    *&v66[6] = v68;
    *&v66[22] = v69;
    *&v66[38] = v70;
    v37 = &v10[*(v56 + 36)];
    v38 = *(sub_1BE04EDE4() + 20);
    v39 = *MEMORY[0x1E697F468];
    v40 = sub_1BE04F684();
    (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
    __asm { FMOV            V0.2D, #5.0 }

    *v37 = _Q0;
    *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v46 = *&v66[16];
    *(v10 + 18) = *v66;
    *v10 = v36;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    *(v10 + 34) = v46;
    *(v10 + 50) = *&v66[32];
    *(v10 + 8) = *&v66[46];
    sub_1BD0DE19C(v10, v58, &qword_1EBD3EB70, &qword_1BE0C45E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F85C();
    sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
    v47 = v59;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v47, v63, &qword_1EBD3EB68, &qword_1BE0C45D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F6E4();
    sub_1BD23F7A0();
    sub_1BE04F9A4();
    sub_1BD23FA60(v35, v34, 1, v48, v49, v50, v51, v52);
    sub_1BD0DE53C(v47, &qword_1EBD3EB68, &qword_1BE0C45D8);
    v21 = v10;
    v22 = &qword_1EBD3EB70;
    v23 = &qword_1BE0C45E0;
  }

  else
  {
    if (*(v1 + 72) == 2)
    {
      sub_1BD23F9E8(*(v1 + 56), *(v1 + 64), 2);
      sub_1BE0512B4();
      v30 = v54;
      sub_1BE04C774();
      v31 = v55;
      v32 = v60;
      (*(v55 + 16))(v58, v30, v60);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F85C();
      sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
      v33 = v59;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v33, v63, &qword_1EBD3EB68, &qword_1BE0C45D8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F6E4();
      sub_1BD23F7A0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v33, &qword_1EBD3EB68, &qword_1BE0C45D8);
      return (*(v31 + 8))(v30, v32);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView, &unk_1BE0F0928);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v16, v63, &qword_1EBD3EB88, &qword_1BE0C45F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD23F6E4();
    sub_1BD23F7A0();
    sub_1BE04F9A4();
    v21 = v16;
    v22 = &qword_1EBD3EB88;
    v23 = &qword_1BE0C45F8;
  }

  return sub_1BD0DE53C(v21, v22, v23);
}

uint64_t sub_1BD23DAB0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB08, &qword_1BE0C4578);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB10, &qword_1BE0C4588);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  sub_1BD23DE00();
  v21 = sub_1BE04F794();
  v22 = &v20[*(v15 + 44)];
  *v22 = v21;
  v22[1] = sub_1BD21636C;
  v22[2] = 0;
  v34 = v13;
  sub_1BD23DF98(v13);
  sub_1BD23E22C(v7);
  v23 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v24 = &v7[*(v2 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v35 = v17;
  sub_1BD0DE19C(v20, v17, &qword_1EBD3EB10, &qword_1BE0C4588);
  sub_1BD0DE19C(v13, v10, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v7, v4, &qword_1EBD3EB08, &qword_1BE0C4578);
  v29 = v17;
  v30 = v36;
  sub_1BD0DE19C(v29, v36, &qword_1EBD3EB10, &qword_1BE0C4588);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB18, &qword_1BE0C4590);
  sub_1BD0DE19C(v10, v30 + *(v31 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v4, v30 + *(v31 + 64), &qword_1EBD3EB08, &qword_1BE0C4578);
  sub_1BD0DE53C(v7, &qword_1EBD3EB08, &qword_1BE0C4578);
  sub_1BD0DE53C(v34, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v20, &qword_1EBD3EB10, &qword_1BE0C4588);
  sub_1BD0DE53C(v4, &qword_1EBD3EB08, &qword_1BE0C4578);
  sub_1BD0DE53C(v10, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v35, &qword_1EBD3EB10, &qword_1BE0C4588);
}

void sub_1BD23DE00()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BE050324();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v8, v10, v12, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v1, v3, (v5 & 1), v20, v21, v22, v23, v24);
  v7, v25, v26, v27, v28, v29, v30, v31;
  if (*(v0 + 16))
  {
    v32 = *(v0 + 16);
  }

  else
  {
    v32 = sub_1BE051224();
  }

  sub_1BE048964();
  v33 = sub_1BE050564();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v38, v40, v41, v42, v43);
  v32, v44, v45, v46, v47, v48, v49, v50;
  v15, v51, v52, v53, v54, v55, v56, v57;
  sub_1BE052434();
  v59 = v58;
  sub_1BE050DE4();
  v59, v60, v61, v62, v63, v64, v65, v66;
  sub_1BD0DDF10(v33, v35, (v37 & 1), v67, v68, v69, v70, v71);
  v39, v72, v73, v74, v75, v76, v77, v78;
}

uint64_t sub_1BD23DF98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v88 - v7;
  v9 = *(v1 + 32);
  if (v9)
  {
    v92 = *(v1 + 24);
    v93 = v9;
    v90 = v5;
    v91 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = sub_1BE0502A4();
    v18 = sub_1BE0505F4();
    v20 = v19;
    v89 = a1;
    v22 = v21;
    v24 = v23;
    v17, v19, v21, v23, v25, v26, v27, v28;
    sub_1BD0DDF10(v10, v12, (v14 & 1), v29, v30, v31, v32, v33);
    v16, v34, v35, v36, v37, v38, v39, v40;
    v41 = sub_1BE051234();
    v42 = sub_1BE050564();
    v44 = v43;
    LOBYTE(v16) = v45;
    v47 = v46;
    v41, v43, v45, v46, v48, v49, v50, v51;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v52, v53, v54, v55, v56);
    v24, v57, v58, v59, v60, v61, v62, v63;
    v92 = v42;
    v93 = v44;
    v94 = v16 & 1;
    v95 = v47;
    sub_1BE052434();
    v65 = v64;
    sub_1BE050DE4();
    v65, v66, v67, v68, v69, v70, v71, v72;
    sub_1BD0DDF10(v42, v44, (v16 & 1), v73, v74, v75, v76, v77);
    v47, v78, v79, v80, v81, v82, v83, v84;
    v85 = v89;
    sub_1BD0DE204(v8, v89, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v90 + 56))(v85, 0, 1, v91);
  }

  else
  {
    v87 = *(v5 + 56);

    return v87(a1, 1, 1, v6);
  }
}

uint64_t sub_1BD23E22C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB20, &unk_1BE0C4598);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 40);
  if (v8)
  {
    if (v8 >> 62)
    {
      v12[0] = v4;
      v10 = sub_1BE053704();
      v4 = v12[0];
      if (v10 >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v12[0] = v4;
      v12[1] = v8;
      swift_getKeyPath();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB28, &qword_1BE0C45C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB30, &qword_1BE0C45C8);
      sub_1BD0DE4F4(&qword_1EBD3EB38, &qword_1EBD3EB28, &qword_1BE0C45C0, MEMORY[0x1E69E6338]);
      sub_1BD23F9A0(&qword_1EBD3EB40, sub_1BD23F5C0, MEMORY[0x1E69E81B8]);
      sub_1BD23F60C();
      sub_1BE0519C4();
      (*(v12[0] + 32))(a1, v7, v3);
      return (*(v12[0] + 56))(a1, 0, 1, v3);
    }
  }

  v11 = *(v4 + 56);

  return v11(a1, 1, 1, v3, v5);
}

void *sub_1BD23E4B0@<X0>(void *a1@<X8>)
{
  v177 = a1;
  v164 = sub_1BE04BD74();
  v163 = *(v164 - 1);
  MEMORY[0x1EEE9AC00](v164);
  v2 = &v160 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v168);
  v160 = &v160 - v3;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA98, &qword_1BE0C44C0);
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v160 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAA0, &qword_1BE0C44C8);
  MEMORY[0x1EEE9AC00](v172);
  v169 = &v160 - v5;
  v6 = sub_1BE04F6E4();
  v161 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v160 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v160 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAA8, &qword_1BE0C44D0);
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v160 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAB0, &qword_1BE0C44D8);
  MEMORY[0x1EEE9AC00](v170);
  v16 = &v160 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAB8, &qword_1BE0C44E0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v160 - v18;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAC0, &qword_1BE0C44E8);
  MEMORY[0x1EEE9AC00](v171);
  v21 = &v160 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EAC8, &qword_1BE0C44F0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v160 - v24;
  v26 = v173[48];
  v174 = v27;
  if (v26 <= 1)
  {
    v116 = v25;
    if (v26)
    {
      sub_1BE04E4F4();
      (*(v11 + 16))(v19, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v21, v16, &qword_1EBD3EAC0, &qword_1BE0C44E8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v21, &qword_1EBD3EAC0, &qword_1BE0C44E8);
      sub_1BD0DE19C(v116, v176, &qword_1EBD3EAC8, &qword_1BE0C44F0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v116, &qword_1EBD3EAC8, &qword_1BE0C44F0);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v21, v16, &qword_1EBD3EAC0, &qword_1BE0C44E8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v21, &qword_1EBD3EAC0, &qword_1BE0C44E8);
      sub_1BD0DE19C(v116, v176, &qword_1EBD3EAC8, &qword_1BE0C44F0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v116, &qword_1EBD3EAC8, &qword_1BE0C44F0);
    }
  }

  else
  {
    if (v26 == 2)
    {
      v173 = v25;
      v117 = sub_1BE051574();
      v164 = v117;
      v118 = sub_1BE0502D4();
      KeyPath = swift_getKeyPath();
      v120 = sub_1BE0511E4();
      v121 = swift_getKeyPath();
      v178 = v117;
      v179 = KeyPath;
      v180 = v118;
      v181 = v121;
      v182 = v120;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
      sub_1BD0F1430();
      v122 = v16;
      v91 = v162;
      sub_1BE050DA4();
      (*(v161 + 8))(v8, v6);
      v120, v123, v124, v125, v126, v127, v128, v129;
      v121, v130, v131, v132, v133, v134, v135, v136;
      v118, v137, v138, v139, v140, v141, v142, v143;
      KeyPath, v144, v145, v146, v147, v148, v149, v150;
      v164, v151, v152, v153, v154, v155, v156, v157;
      v111 = &qword_1EBD38BA8;
      v112 = &qword_1BE0B8930;
      sub_1BD0DE19C(v91, v167, &qword_1EBD38BA8, &qword_1BE0B8930);
      swift_storeEnumTagMultiPayload();
      sub_1BD0F13A4();
      sub_1BD1103C8();
      v158 = v169;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v158, v122, &qword_1EBD3EAA0, &qword_1BE0C44C8);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F47C();
      sub_1BD23F534();
      v159 = v173;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v158, &qword_1EBD3EAA0, &qword_1BE0C44C8);
      sub_1BD0DE19C(v159, v176, &qword_1EBD3EAC8, &qword_1BE0C44F0);
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      sub_1BE04F9A4();
      v115 = v159;
      goto LABEL_9;
    }

    if (v26 == 3)
    {
      v28 = v16;
      v173 = v25;
      v29 = v163;
      v30 = v164;
      (*(v163 + 104))(v2, *MEMORY[0x1E69B8068], v164, v23);
      result = PKPassKitBundle();
      if (result)
      {
        v32 = result;
        v33 = sub_1BE04B6F4();
        v35 = v34;

        (*(v29 + 8))(v2, v30);
        v178 = v33;
        v179 = v35;
        sub_1BD0DDEBC();
        v36 = sub_1BE0506C4();
        v38 = v37;
        LOBYTE(v35) = v39;
        v41 = v40;
        v42 = sub_1BE050324();
        v43 = sub_1BE0505F4();
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v42, v44, v46, v48, v50, v51, v52, v53;
        sub_1BD0DDF10(v36, v38, (v35 & 1), v54, v55, v56, v57, v58);
        v41, v59, v60, v61, v62, v63, v64, v65;
        v66 = sub_1BE0513C4();
        v67 = sub_1BE050564();
        v69 = v68;
        LOBYTE(v38) = v70;
        v72 = v71;
        v66, v68, v70, v71, v73, v74, v75, v76;
        sub_1BD0DDF10(v43, v45, (v47 & 1), v77, v78, v79, v80, v81);
        v49, v82, v83, v84, v85, v86, v87, v88;
        v178 = v67;
        v179 = v69;
        LOBYTE(v180) = v38 & 1;
        v181 = v72;
        sub_1BE052434();
        v90 = v89;
        v91 = v160;
        sub_1BE050DE4();
        v90, v92, v93, v94, v95, v96, v97, v98;
        sub_1BD0DDF10(v67, v69, (v38 & 1), v99, v100, v101, v102, v103);
        v72, v104, v105, v106, v107, v108, v109, v110;
        v111 = &qword_1EBD452C0;
        v112 = &qword_1BE0B7620;
        sub_1BD0DE19C(v91, v167, &qword_1EBD452C0, &qword_1BE0B7620);
        swift_storeEnumTagMultiPayload();
        sub_1BD0F13A4();
        sub_1BD1103C8();
        v113 = v169;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v113, v28, &qword_1EBD3EAA0, &qword_1BE0C44C8);
        swift_storeEnumTagMultiPayload();
        sub_1BD23F47C();
        sub_1BD23F534();
        v114 = v173;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v113, &qword_1EBD3EAA0, &qword_1BE0C44C8);
        sub_1BD0DE19C(v114, v176, &qword_1EBD3EAC8, &qword_1BE0C44F0);
        swift_storeEnumTagMultiPayload();
        sub_1BD23F3F0();
        sub_1BE04F9A4();
        v115 = v114;
LABEL_9:
        sub_1BD0DE53C(v115, &qword_1EBD3EAC8, &qword_1BE0C44F0);
        return sub_1BD0DE53C(v91, v111, v112);
      }

      __break(1u);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD23F3F0();
      return sub_1BE04F9A4();
    }
  }

  return result;
}

void sub_1BD23F1EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 merchandisingDynamicContent];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 title];
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    v9 = 0;
LABEL_7:
    v13 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_1BE052434();
  v9 = v8;

  v10 = [v4 systemIcon];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 imageName];

  v13 = sub_1BE052434();
  v15 = v14;

LABEL_8:
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
}

unint64_t sub_1BD23F338()
{
  result = qword_1EBD3EA50;
  if (!qword_1EBD3EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EA38, &qword_1BE0C4468);
    sub_1BD0DE4F4(&qword_1EBD3EA58, &qword_1EBD3EA30, &qword_1BE0C4460, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EA50);
  }

  return result;
}

unint64_t sub_1BD23F3F0()
{
  result = qword_1EBD3EAD0;
  if (!qword_1EBD3EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAC8, &qword_1BE0C44F0);
    sub_1BD23F47C();
    sub_1BD23F534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAD0);
  }

  return result;
}

unint64_t sub_1BD23F47C()
{
  result = qword_1EBD3EAD8;
  if (!qword_1EBD3EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAC0, &qword_1BE0C44E8);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAD8);
  }

  return result;
}

unint64_t sub_1BD23F534()
{
  result = qword_1EBD3EAE0;
  if (!qword_1EBD3EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EAA0, &qword_1BE0C44C8);
    sub_1BD0F13A4();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EAE0);
  }

  return result;
}

unint64_t sub_1BD23F5C0()
{
  result = qword_1EBD3EB48;
  if (!qword_1EBD3EB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3EB48);
  }

  return result;
}

unint64_t sub_1BD23F60C()
{
  result = qword_1EBD3EB50;
  if (!qword_1EBD3EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB30, &qword_1BE0C45C8);
    sub_1BD23F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB50);
  }

  return result;
}

unint64_t sub_1BD23F690()
{
  result = qword_1EBD3EB58;
  if (!qword_1EBD3EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB58);
  }

  return result;
}

unint64_t sub_1BD23F6E4()
{
  result = qword_1EBD3EB90;
  if (!qword_1EBD3EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB88, &qword_1BE0C45F8);
    sub_1BD23F9A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView, &unk_1BE0F0928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB90);
  }

  return result;
}

unint64_t sub_1BD23F7A0()
{
  result = qword_1EBD3EB98;
  if (!qword_1EBD3EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB68, &qword_1BE0C45D8);
    sub_1BD23F85C();
    sub_1BD23F9A0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EB98);
  }

  return result;
}

unint64_t sub_1BD23F85C()
{
  result = qword_1EBD3EBA0;
  if (!qword_1EBD3EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EB70, &qword_1BE0C45E0);
    sub_1BD23F914();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBA0);
  }

  return result;
}

unint64_t sub_1BD23F914()
{
  result = qword_1EBD3EBA8;
  if (!qword_1EBD3EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EBB0, &qword_1BE0C4600);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBA8);
  }

  return result;
}

uint64_t sub_1BD23F9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD23F9E8(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 2:

      return sub_1BE048C84();
    case 1:

      return sub_1BE048964();
    case 0:
      v4 = result;

      return a2;
  }

  return result;
}

void sub_1BD23FA60(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 != 0xFF)
  {
    sub_1BD23FA74(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1BD23FA74(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 == 2)
  {

    a2, a2, a3, a4, a5, a6, a7, a8;
  }

  else if (a3 == 1)
  {

    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1BD23FAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD23FB50(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD23FBAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD23FBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD23FC38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1BD23FC70()
{
  result = qword_1EBD3EBB8;
  if (!qword_1EBD3EBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EBC0, qword_1BE0C46F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EA38, &qword_1BE0C4468);
    sub_1BD23F338();
    swift_getOpaqueTypeConformance2();
    sub_1BD23F9A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBB8);
  }

  return result;
}

unint64_t sub_1BD23FD6C()
{
  result = qword_1EBD3EBC8;
  if (!qword_1EBD3EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EBC8);
  }

  return result;
}

void sub_1BD23FDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = &Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount];
    *v8 = a1;
    *(v8 + 1) = a2;
    *(v8 + 4) = a3;
  }
}

void sub_1BD23FE34(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationItem];

    v6 = [v5 rightBarButtonItem];
    if (v6)
    {
      [v6 setEnabled_];
    }
  }
}

void sub_1BD23FF80()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v36.receiver = v1;
  v36.super_class = v6;
  objc_msgSendSuper2(&v36, sel_loadView);
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC;
  v10 = [*&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v8 addSubview_];

  [*&v1[v9] didMoveToParentViewController_];
  v12 = [v1 navigationItem];
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8060], v2);
  v13 = PKPassKitBundle();
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  sub_1BE04B6F4();
  v16 = v15;

  (*(v3 + 8))(v5, v2);
  v17 = sub_1BE052404();
  v16, v18, v19, v20, v21, v22, v23, v24;
  [v12 setTitle_];

  if ((*&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context] | 2) == 3)
  {
    v25 = [v1 navigationItem];
    v26 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissAction];
    [v25 setLeftBarButtonItem_];
  }

  sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_1BE0530B4();
  sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
  v28 = v27;
  v29 = sub_1BE052C74();
  v30 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem;
  v31 = *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
  *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem] = v29;

  v32 = [v1 navigationItem];
  v33 = *&v1[v30];
  [v32 setRightBarButtonItem_];

  v34 = [v1 navigationItem];
  v35 = [v34 rightBarButtonItem];

  if (v35)
  {
    [v35 setEnabled_];
  }
}

void sub_1BD240398(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD2406CC();
  }
}

void sub_1BD240520(char a1)
{
  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItem];

  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = [v1 navigationItem];
  [v5 setHidesBackButton_];

  if (a1)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    v7 = [v1 navigationItem];
    [v7 setRightBarButtonItem_];

    [v6 startAnimating];
  }

  else
  {
    v8 = [v1 navigationItem];
    v6 = *&v1[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
    [v8 setRightBarButtonItem_];
  }
}

double sub_1BD2406CC()
{
  sub_1BD240520(1);
  v1 = swift_allocObject();
  v1[2] = v0;
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel];
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = sub_1BD242E8C;
  v3[4] = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
  v30[4] = sub_1BD242E94;
  v31 = v3;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_1BD3F08C0;
  v30[3] = &block_descriptor_32;
  v5 = _Block_copy(v30);
  v6 = v31;
  v7 = v0;
  sub_1BE048964();
  sub_1BE048964();
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v4 requestDTUAvailable_];
  _Block_release(v5);
  v1, v15, v16, v17, v18, v19, v20, v21;
  v3, v22, v23, v24, v25, v26, v27, v28;
  return result;
}

void sub_1BD240820(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v3 = sub_1BE053344();
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
  KeyPath = swift_getKeyPath();
  v24[0] = v1;
  sub_1BD242ED4(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
  v24[4] = sub_1BD242ECC;
  v25 = v2;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BD242760;
  v24[3] = &block_descriptor_42;
  v14 = _Block_copy(v24);
  v15 = v25;
  v16 = v13;
  sub_1BE048964();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v4 requestPurchaseWithAmount:v3 promotionConfiguration:v16 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD2409FC(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1BD242F1C;
  v30 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);
  v17 = v30;
  sub_1BE048964();
  sub_1BE048C84();
  v18 = a3;
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v28 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v27);
}

void sub_1BD240CEC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v174 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  if (a2)
  {
    if (!*&Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context])
    {
      if (*&Strong[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_setupController])
      {
        v71 = [Strong navigationController];
        if (v71)
        {

          sub_1BE04D194();
          v72 = sub_1BE04D204();
          v73 = sub_1BE052C34();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_1BD026000, v72, v73, "Attempted to provisioning after top up which is currently unsupported", v74, 2u);
            MEMORY[0x1BFB45F20](v74, -1, -1);
          }

          (*(v8 + 8))(v16, v7);
          goto LABEL_35;
        }
      }
    }

    v19 = [objc_opt_self() sharedInstance];
    if (v19)
    {
      v20 = v19;
      v21 = [*&v18[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_account] accountIdentifier];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1BE052434();
        v25 = v24;
        if (a3)
        {
          v177 = 1635017060;
          v178 = 0xE400000000000000;
          sub_1BE0537C4();
          if (*(a3 + 16) && (v26 = sub_1BD149040(aBlock), (v27 & 1) != 0))
          {
            sub_1BD038CD0(*(a3 + 56) + 32 * v26, &v181);
            sub_1BD149CE8(aBlock);
            if (*(&v182 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
              if (swift_dynamicCast())
              {
                v28 = aBlock[0];
                if (aBlock[0])
                {
                  if (*(aBlock[0] + 16))
                  {
                    sub_1BE048C84();
                    v29 = sub_1BD148F70(0x726566666FLL, 0xE500000000000000);
                    if (v30)
                    {
                      sub_1BD038CD0(v28[7] + 32 * v29, aBlock);
                      v28, v37, v38, v39, v40, v41, v42, v43;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
                      if (swift_dynamicCast())
                      {
                        v44 = 0;
                        v45 = v181;
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v28, v30, v31, v32, v33, v34, v35, v36;
                    }
                  }

                  v44 = 0;
                  v45 = 0;
LABEL_50:
                  v121 = swift_allocObject();
                  swift_beginAccess();
                  v122 = swift_unknownObjectWeakLoadStrong();
                  swift_unknownObjectWeakInit();

                  v123 = swift_allocObject();
                  v123[2] = v23;
                  v123[3] = v25;
                  v123[4] = v121;
                  v123[5] = v45;
                  aBlock[4] = sub_1BD242F2C;
                  v180 = v123;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_1BD14E1D8;
                  aBlock[3] = &block_descriptor_55_0;
                  v124 = _Block_copy(aBlock);
                  v125 = v180;
                  sub_1BE048C84();
                  v125, v126, v127, v128, v129, v130, v131, v132;
                  [v20 updateAccountWithIdentifier:v22 extended:0 completion:v124];
                  _Block_release(v124);

                  if (v45)
                  {
                    v45, v133, v134, v135, v136, v137, v138, v139;
                    if (v44)
                    {
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC98, &qword_1BE0C47B8);
                      inited = swift_initStackObject();
                      *(inited + 16) = xmmword_1BE0B69E0;
                      *(inited + 32) = 0xD000000000000010;
                      v148 = inited + 32;
                      *(inited + 40) = 0x80000001BE11F510;
                      *(inited + 48) = v28;
                      v149 = sub_1BD1AC4CC(inited);
                      swift_setDeallocating();
                      sub_1BD0DE53C(v148, &unk_1EBD3ECA0, &unk_1BE0C47C0);
                      v150 = *&v18[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager];
                      v151 = sub_1BD1A89E4(v149);
                      v149, v152, v153, v154, v155, v156, v157, v158;
                      v159 = sub_1BD1A8284(v151);
                      v151, v160, v161, v162, v163, v164, v165, v166;
                      sub_1BD710144(2u, v18, 2uLL, v159, 0, 0, 0);

                      v159, v167, v168, v169, v170, v171, v172, v173;
                    }
                  }

                  else
                  {

                    v28, v140, v141, v142, v143, v144, v145, v146;
                  }

                  return;
                }

LABEL_49:
                v45 = 0;
                v44 = 1;
                goto LABEL_50;
              }

LABEL_48:
              v28 = 0;
              goto LABEL_49;
            }
          }

          else
          {
            sub_1BD149CE8(aBlock);
            v181 = 0u;
            v182 = 0u;
          }
        }

        else
        {
          v182 = 0u;
          v181 = 0u;
        }

        sub_1BD0DE53C(&v181, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        goto LABEL_48;
      }
    }

LABEL_35:
    [v18 dismissViewControllerAnimated:1 completion:0];
LABEL_43:

    return;
  }

  v176 = v8;
  v46 = [Strong navigationItem];
  v47 = [v46 leftBarButtonItem];

  if (v47)
  {
    [v47 setEnabled_];
  }

  v48 = [v18 navigationItem];
  [v48 setHidesBackButton_];

  v49 = [v18 navigationItem];
  v50 = *&v18[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem];
  [v49 setRightBarButtonItem_];

  if (!a4)
  {
    sub_1BE052434();
    v62 = v55;
    v63 = v176;
    goto LABEL_29;
  }

  swift_getErrorValue();
  v51 = sub_1BE053C94();
  v53 = v52;
  v54 = sub_1BE052434();
  v62 = v55;
  v63 = v176;
  if (!v53)
  {
LABEL_29:
    v62, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_30;
  }

  if (v51 == v54 && v53 == v55)
  {
    v53, v55, v54, v57, v58, v59, v60, v61;
    v62, v64, v65, v66, v67, v68, v69, v70;
    goto LABEL_37;
  }

  v95 = sub_1BE053B84();
  v53, v96, v97, v98, v99, v100, v101, v102;
  v62, v103, v104, v105, v106, v107, v108, v109;
  if ((v95 & 1) == 0)
  {
LABEL_30:
    sub_1BE04D194();
    v18 = v18;
    v75 = a4;
    v76 = sub_1BE04D204();
    v77 = sub_1BE052C34();

    if (os_log_type_enabled(v76, v77))
    {
      v175 = v7;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v78 = 136315394;
      v81 = sub_1BE053314();
      v83 = v82;
      v84 = sub_1BD123690(v81, v82, aBlock);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v78 + 4) = v84;
      *(v78 + 12) = 2112;
      if (a4)
      {
        v92 = a4;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        v94 = v93;
      }

      else
      {
        v93 = 0;
        v94 = 0;
      }

      v113 = v175;
      *(v78 + 14) = v93;
      *v79 = v94;
      _os_log_impl(&dword_1BD026000, v76, v77, "AMS purchase request for amount %s failed with error: %@", v78, 0x16u);
      sub_1BD0DE53C(v79, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80, v114, v115, v116, v117, v118, v119, v120);
      MEMORY[0x1BFB45F20](v80, -1, -1);
      MEMORY[0x1BFB45F20](v78, -1, -1);

      (*(v176 + 8))(v10, v113);
    }

    else
    {

      (*(v63 + 8))(v10, v7);
    }

    sub_1BD24200C();
    goto LABEL_43;
  }

LABEL_37:
  swift_getErrorValue();
  if (sub_1BE053C84() != 6)
  {
    goto LABEL_30;
  }

  sub_1BE04D194();
  v110 = sub_1BE04D204();
  v111 = sub_1BE052C54();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_1BD026000, v110, v111, "AMS purchase request cancelled", v112, 2u);
    MEMORY[0x1BFB45F20](v112, -1, -1);
  }

  else
  {
  }

  (*(v63 + 8))(v13, v7);
}