void sub_1BD4F344C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD4F3958();
  v3 = &selRef_playerItemWithAsset_;
  if (v4)
  {
    v153 = a1;
    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = sub_1BE050424();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v12, v14, v16, v18, v20, v21, v22, v23;
    sub_1BD0DDF10(v5, v7, (v9 & 1), v24, v25, v26, v27, v28);
    v11, v29, v30, v31, v32, v33, v34, v35;
    sub_1BE0503A4();
    v36 = sub_1BE050544();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v41, v43, v44, v45, v46);
    v19, v47, v48, v49, v50, v51, v52, v53;
    v54 = [objc_opt_self() clearColor];
    if (![objc_opt_self() primaryTextColor])
    {
      __break(1u);
      goto LABEL_12;
    }

    v162 = sub_1BE0511C4();
    v55 = sub_1BE050574();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_1BD0DDF10(v36, v38, (v40 & 1), v60, v62, v63, v64, v65);
    v162, v66, v67, v68, v69, v70, v71, v72;
    v42, v73, v74, v75, v76, v77, v78, v79;
    KeyPath = swift_getKeyPath();
    v161 = v55;
    v159 = v57;
    v155 = v59 & 1;
    sub_1BD0D7F18(v55, v57, v59 & 1);
    v158 = v61;
    sub_1BE048C84();
    v160 = KeyPath;
    sub_1BE048964();
    v157 = 2;
    v3 = &selRef_playerItemWithAsset_;
    a1 = v153;
  }

  else
  {
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v155 = 0;
    v157 = 0;
  }

  v81 = *(a1 + 8);
  if (!v81 || (v82 = [v81 text]) == 0)
  {
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    goto LABEL_10;
  }

  v83 = v82;
  sub_1BE052434();

  sub_1BD0DDEBC();
  v84 = sub_1BE0506C4();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = sub_1BE050424();
  v92 = sub_1BE0505F4();
  v152 = v93;
  v154 = v92;
  v95 = v94;
  v97 = v96;
  v91, v93, v94, v96, v98, v99, v100, v101;
  sub_1BD0DDF10(v84, v86, (v88 & 1), v102, v103, v104, v105, v106);
  v90, v107, v108, v109, v110, v111, v112, v113;
  v114 = [objc_opt_self() clearColor];
  if ([objc_opt_self() v3[324]])
  {

    v163 = sub_1BE0511C4();
    v115 = sub_1BE050574();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    sub_1BD0DDF10(v154, v152, (v95 & 1), v120, v122, v123, v124, v125);
    v163, v126, v127, v128, v129, v130, v131, v132;
    v97, v133, v134, v135, v136, v137, v138, v139;
    v140 = swift_getKeyPath();
    v141 = v119 & 1;
    v142 = v115;
    v143 = v117;
    v144 = v119 & 1;
    sub_1BD0D7F18(v115, v117, v141);
    v145 = v121;
    sub_1BE048C84();
    v146 = v140;
    sub_1BE048964();
    v147 = 2;
LABEL_10:
    sub_1BD2B5270(v161, v159, v155, v158);
    sub_1BD2B5270(v142, v143, v144, v145);
    sub_1BD2B52C0(v161, v159, v155, v158, v160, v157, 0, v148);
    sub_1BD2B52C0(v142, v143, v144, v145, v146, v147, 0, v149);
    *a2 = v161;
    *(a2 + 8) = v159;
    *(a2 + 16) = v155;
    *(a2 + 24) = v158;
    *(a2 + 32) = v160;
    *(a2 + 40) = v157;
    *(a2 + 48) = 0;
    *(a2 + 56) = v142;
    *(a2 + 64) = v143;
    *(a2 + 72) = v144;
    *(a2 + 80) = v145;
    *(a2 + 88) = v146;
    *(a2 + 96) = v147;
    *(a2 + 104) = 0;
    sub_1BD2B52C0(v142, v143, v144, v145, v146, v147, 0, v150);
    sub_1BD2B52C0(v161, v159, v155, v158, v160, v157, 0, v151);
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_1BD4F3958()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = [*v0 minimalFormattedStringValue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v27 = *(v0 + *(type metadata accessor for PeerPaymentRecurringBubbleContentView(0) + 28));
  if (v27 > 1)
  {
    switch(v27)
    {
      case 2:
        v45 = v17;
        (*(v2 + 104))(v10, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v29 = result;
          sub_1BE04B6F4();
          v31 = v34;
          v14 = v10;
          goto LABEL_18;
        }

        __break(1u);
        break;
      case 3:
        v45 = v17;
        (*(v2 + 104))(v7, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v29 = result;
          sub_1BE04B6F4();
          v31 = v35;
          v14 = v7;
          goto LABEL_18;
        }

        break;
      case 4:
        v45 = v17;
        (*(v2 + 104))(v4, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v29 = result;
          sub_1BE04B6F4();
          v31 = v30;
          v14 = v4;
LABEL_18:

          (*(v2 + 8))(v14, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1BE0B69E0;
          *(v36 + 56) = MEMORY[0x1E69E6158];
          *(v36 + 64) = sub_1BD110550();
          *(v36 + 32) = v45;
          *(v36 + 40) = v19;
          v33 = sub_1BE052454();
          v31, v37, v38, v39, v40, v41, v42, v43;
          return v33;
        }

        goto LABEL_22;
      default:
LABEL_13:
        v19, v20, v21, v22, v23, v24, v25, v26;
        return 0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 != 1)
  {
    goto LABEL_13;
  }

  v45 = v17;
  (*(v2 + 104))(v14, *MEMORY[0x1E69B80A0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    sub_1BE04B6F4();
    v31 = v32;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_1BD4F3D7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD489E8, 0x1E69B8FE0);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = type metadata accessor for PeerPaymentRecurringBubbleContentView(0);
  if (sub_1BE04AED4())
  {
    return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
  }

  return 0;
}

id _s9PassKitUI45PeerPaymentRecurringBubbleContentViewProviderC09recurringgI10Controller14currencyAmount4memo9startDate9frequencySo06UIViewL0CSo010PKCurrencyN0C_So06PKPeerefE4MemoC10Foundation0Q0VSo0uefE9FrequencyVtFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PeerPaymentRecurringBubbleContentView(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27[-v13];
  v15 = v9[8];
  v16 = sub_1BE04AF64();
  (*(*(v16 - 8) + 16))(&v14[v15], a3, v16);
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v14[v9[9]] = a4;
  *&v14[v9[10]] = 0x4028000000000000;
  *&v14[v9[11]] = 0x4024000000000000;
  *&v14[v9[12]] = 0x4044000000000000;
  *&v14[v9[13]] = 0x4038000000000000;
  sub_1BD4F40E0(v14, v11);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489F0, &qword_1BE0DCB88));
  v17 = a2;
  v18 = a1;
  v19 = sub_1BE04F894();
  v20 = sub_1BE04EC64();
  v22 = sub_1BE04F864();
  if ((*v21 & v20) != 0)
  {
    *v21 &= ~v20;
  }

  v22(v27, 0);
  v23 = v19;
  result = [v23 view];
  if (result)
  {
    v25 = result;
    v26 = [objc_opt_self() clearColor];
    [v25 setBackgroundColor_];

    sub_1BD4F4144(v14);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PeerPaymentRecurringBubbleContentView(uint64_t a1)
{
  result = qword_1EBD489F8;
  if (!qword_1EBD489F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4F40E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentRecurringBubbleContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4F4144(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentRecurringBubbleContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD4F41C8(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD43B00, 0x1E69B8780);
  if (v1 <= 0x3F)
  {
    sub_1BD4F42A0(319);
    if (v2 <= 0x3F)
    {
      sub_1BE04AF64();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKPeerPaymentRecurringPaymentFrequency(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4F42A0(uint64_t a1)
{
  if (!qword_1EBD48A08)
  {
    sub_1BD0E5E8C(255, &qword_1EBD489E8, 0x1E69B8FE0);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD48A08);
    }
  }
}

unint64_t sub_1BD4F4324()
{
  result = qword_1EBD48A58;
  if (!qword_1EBD48A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48A20, &unk_1BE0DCC18);
    sub_1BD4F43B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A58);
  }

  return result;
}

unint64_t sub_1BD4F43B0()
{
  result = qword_1EBD48A60;
  if (!qword_1EBD48A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48A10, &qword_1BE0DCC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A60);
  }

  return result;
}

void sub_1BD4F44E8(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v10 = [v9 configuration];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 type];

    if (v12 <= 0xC)
    {
      if (((1 << v12) & 0xF1F) == 0)
      {
LABEL_19:
        a1(1);
        return;
      }

      v13 = [v9 setupProductMethods];
      if (v13)
      {
        v14 = v13;
        sub_1BD0E5E8C(0, &qword_1EBD48A90, 0x1E69B9220);
        v15 = sub_1BE052744();

        v48 = a1;
        v49 = a2;
        v46 = v5;
        v47 = v9;
        v45 = v6;
        if (v15 >> 62)
        {
          goto LABEL_22;
        }

        for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
        {
          v24 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1BFB40900](v24, v15);
            }

            else
            {
              if (v24 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v25 = *(v15 + 8 * v24 + 32);
            }

            v26 = v25;
            v27 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v28 = [v25 type];

            if (v28 > 8 || ((1 << v28) & 0x160) == 0)
            {
              goto LABEL_23;
            }

            ++v24;
            if (v27 == i)
            {
              v15, v16, v17, v18, v19, v20, v21, v22;
              a1 = v48;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          ;
        }

LABEL_23:
        v15, v16, v17, v18, v19, v20, v21, v22;
        a1 = v48;
        a2 = v49;
        v5 = v46;
        v9 = v47;
        v6 = v45;
      }
    }

    v30 = v50;
    sub_1BE04BC34();
    v31 = sub_1BE04BA54();
    (*(v6 + 8))(v30, v5);
    v32 = sub_1BE04BBD4();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = a1;
    v34[4] = a2;
    aBlock[4] = sub_1BD4F68C0;
    v53 = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4F4AA0;
    aBlock[3] = &block_descriptor_111;
    v35 = _Block_copy(aBlock);
    v36 = v53;
    sub_1BE048964();
    v36, v37, v38, v39, v40, v41, v42, v43;
    [v32 setupProductForProvisioning:v9 includePurchases:(v31 & 1) == 0 withCompletionHandler:v35];
    _Block_release(v35);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD4F4888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = sub_1BE04A844();
      v14 = swift_allocObject();
      *(v14 + 16) = a5;
      *(v14 + 24) = a6;
      aBlock[4] = sub_1BD1B5F6C;
      v38 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_12_2;
      v15 = _Block_copy(aBlock);
      v16 = v38;
      sub_1BE048964();
      v16, v17, v18, v19, v20, v21, v22, v23;
      v24 = PKAlertForDisplayableErrorWithCancelHandler(v13, 0, v15);
      _Block_release(v15);

      if (v24)
      {
        v25 = &v11[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v25 + 1);
          ObjectType = swift_getObjectType();
          (*(v26 + 24))(v24, ObjectType, v26);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        a5(0);
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v28 = a3;
      }

      v29 = *(Strong + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials);
      *(Strong + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials) = v28;
      sub_1BE048C84();
      v29, v30, v31, v32, v33, v34, v35, v36;
      a5(1);
    }
  }
}

void sub_1BD4F4AA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v9 = a3;
  v8(a2, a3, v4);
  v7, v10, v11, v12, v13, v14, v15, v16;

  v4, v17, v18, v19, v20, v21, v22, v23;
}

unint64_t sub_1BD4F4B4C(void *a1)
{
  if (!a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
    type metadata accessor for ProvisioningRequirementsFlowSection();
    swift_allocObject();
    sub_1BE048964();
    v5 = v4;
    sub_1BD4435E4(v3, v4, 0);
    v7 = v6;
    v3, v8, v9, v10, v11, v12, v13, v14;

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

  if (object_getClass(a1) != _TtC9PassKitUI35ProvisioningRequirementsFlowSection)
  {
    return 0;
  }

  v17 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  result = [v17 configuration];
  if (!result)
  {
    goto LABEL_54;
  }

  v18 = result;
  v19 = [result type];

  result = 0;
  if (v19 <= 6)
  {
    if (v19 >= 5)
    {
      if (v19 != 5)
      {
        if (v19 == 6)
        {
          v20 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
          type metadata accessor for PaymentSetupAppExtensionFlowSection();
          swift_allocObject();
          sub_1BE048964();
          v21 = v17;
          v22 = sub_1BD7FCCF0(v20, v21);
          v20, v23, v24, v25, v26, v27, v28, v29;

          return v22;
        }

        return result;
      }

LABEL_27:
      v49 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
      type metadata accessor for PaymentSetupProductAppFlowSection();
      v50 = swift_allocObject();
      v50[5] = 0;
      swift_unknownObjectWeakInit();
      v50[6] = 0xD000000000000012;
      v50[7] = 0x80000001BE12CB40;
      v50[2] = v49;
      v50[3] = v17;
      v51 = v17;
      sub_1BE048964();
      return v50;
    }

LABEL_14:
    v30 = sub_1BD4F53F8();
    if (v30 >> 62)
    {
      v98 = v30;
      v99 = sub_1BE053704();
      v30 = v98;
      if (v99)
      {
        goto LABEL_16;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v31 = v30;
      v32 = sub_1BD4F66A8(v30);
      v31, v33, v34, v35, v36, v37, v38, v39;
      return v32;
    }

    v100 = v30;
    result = [v17 configuration];
    if (result)
    {
      v108 = result;
      v100, v101, v102, v103, v104, v105, v106, v107;
      v109 = [v108 state];

      if ((v109 - 3) > 1)
      {
        v112 = sub_1BD4F5B20();
        v113 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
        v114 = objc_allocWithZone(v113);
        v115 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
        *&v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
        *&v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v116 = &v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
        *v116 = 0xD00000000000001DLL;
        v116[1] = 0x80000001BE12CB20;
        *&v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
        *&v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v17;
        v117 = *&v114[v115];
        *&v114[v115] = 0;
        v118 = v17;

        v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = v112 & 1;
        v114[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
        v128.receiver = v114;
        v128.super_class = v113;
        return objc_msgSendSuper2(&v128, sel_init);
      }

      v110 = objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
      v111 = v17;
      v45 = sub_1BE048964();
      v46 = v111;
      v47 = 1;
      return sub_1BD89F14C(v45, v46, v47);
    }

    goto LABEL_55;
  }

  if (v19 <= 9)
  {
    if ((v19 - 8) >= 2)
    {
      if (v19 != 7)
      {
        return result;
      }

      result = [v17 configuration];
      if (result)
      {
        v42 = result;
        v43 = [result featureIdentifier];

        if (v43 >= 4)
        {
          if (v43 == 4)
          {
            v87 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
            v88 = v17;
            v89 = sub_1BE048964();
            v90 = sub_1BD4D8C78(v89, v88);
            v87, v91, v92, v93, v94, v95, v96, v97;
            return v90;
          }

          if (v43 != 5)
          {
            return 0;
          }
        }

        objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
        v44 = v17;
        v45 = sub_1BE048964();
        v46 = v44;
        v47 = 0;
        return sub_1BD89F14C(v45, v46, v47);
      }

      goto LABEL_56;
    }

    goto LABEL_14;
  }

  if (v19 != 10)
  {
    if (v19 != 11)
    {
      if (v19 == 12)
      {
        objc_allocWithZone(type metadata accessor for ProvisioningIssuerInstallmentsFlowItem());
        v40 = v17;
        v41 = sub_1BE048964();
        return sub_1BD5C3C54(v41, v40);
      }

      return result;
    }

    result = sub_1BD4F53F8();
    v52 = result;
    if (result >> 62)
    {
      if (sub_1BE053704() == 1)
      {
        result = sub_1BE053704();
        if (result)
        {
          goto LABEL_30;
        }
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_30:
      if ((v52 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1BFB40900](0, v52);
        goto LABEL_33;
      }

      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v53 = *(v52 + 32);
LABEL_33:
        v61 = v53;
        v52, v54, v55, v56, v57, v58, v59, v60;
        v62 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
        v63 = v17;
        v64 = sub_1BD4F5B20();
        v65 = type metadata accessor for ProvisioningCredentialFlowSection();
        v66 = objc_allocWithZone(v65);
        *&v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v67 = &v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
        *v67 = 0x100000000000001ALL;
        v67[1] = 0x80000001BE1199C0;
        v68 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
        v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
        *&v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
        *&v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v62;
        *&v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v61;
        *&v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v17;
        v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = v64 & 1;
        v66[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
        v66[v68] = 1;
        v127.receiver = v66;
        v127.super_class = v65;
        sub_1BE048964();
        return objc_msgSendSuper2(&v127, sel_init);
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v119 = sub_1BD4F66A8(v52);
    v52, v120, v121, v122, v123, v124, v125, v126;
    return v119;
  }

  v48 = [v17 setupProductMethodsOfType_];
  if (v48)
  {

    goto LABEL_27;
  }

  result = [v17 configuration];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v69 = result;
  v70 = [result state];

  v71 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
  if ((v70 - 3) > 1)
  {
    sub_1BE048964();
    v75 = 0;
    v73 = 0;
  }

  else
  {
    v72 = objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
    swift_retain_n();
    v73 = sub_1BD89F14C(v71, v17, 1);
    v74 = v73;
    v75 = &off_1F3BC23D0;
  }

  type metadata accessor for PaymentSetupIdentityFlowSection();
  swift_allocObject();
  v76 = v17;
  v77 = sub_1BD4B7FFC(v71, v17, 0, 0, v73, v75);
  v71, v78, v79, v80, v81, v82, v83, v84;

  swift_unknownObjectRelease();
  type metadata accessor for UIFlowModifier();
  v85 = swift_allocObject();
  v86 = byte_1EBDAB281;
  *(v85 + 32) = byte_1EBDAB280;
  *(v85 + 33) = v86;
  *(v85 + 48) = 0;
  swift_unknownObjectWeakInit();
  result = v85;
  *(v85 + 16) = v77;
  *(v85 + 24) = &off_1F3B98C00;
  *(v85 + 33) = 1;
  return result;
}

id sub_1BD4F53F8()
{
  v1 = sub_1BE04D214();
  v99 = *(v1 - 8);
  v100 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v98 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BA14();
  v97 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B9D4();
  v96 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v96 - v15;
  v101 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v102 = v0;
  result = [v101 configuration];
  if (result)
  {
    v18 = result;
    v19 = [result type];

    if (v19 != 10)
    {
      if (v19 != 3)
      {
        goto LABEL_12;
      }

      sub_1BE04BC34();
      sub_1BE04BA24();
      (*(v7 + 8))(v9, v6);
      v20 = v97;
      if ((*(v97 + 88))(v5, v3) == *MEMORY[0x1E69B8020])
      {
        (*(v20 + 96))(v5, v3);
        v21 = v96;
        (*(v96 + 32))(v16, v5, v10);
        (*(v21 + 104))(v12, *MEMORY[0x1E69B7FE8], v10);
        sub_1BD4F6868();
        v22 = sub_1BE052334();
        v23 = *(v21 + 8);
        v23(v12, v10);
        v23(v16, v10);
        if ((v22 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        (*(v20 + 8))(v5, v3);
      }

      v24 = sub_1BE04BBD4();
      v25 = [v24 requiredTransitNetworkIdentifiers];

      if (!v25)
      {
LABEL_12:
        v30 = *(v102 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials);
        sub_1BE048C84();
        return v30;
      }
    }

LABEL_10:
    v26 = sub_1BE04BBD4();
    v27 = [v26 allCredentials];

    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
      v29 = sub_1BE052744();
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v31 = [v101 productIdentifier];
    if (v31)
    {
      v39 = v31;
      v101 = sub_1BE052434();
      v41 = v40;
    }

    else
    {
      v101 = 0;
      v41 = 0;
    }

    v103 = v28;
    if (v29 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v43 = 0;
      v102 = v29 & 0xC000000000000001;
      while (1)
      {
        if (v102)
        {
          v44 = MEMORY[0x1BFB40900](v43, v29);
        }

        else
        {
          if (v43 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v44 = *(v29 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v47 = [v44 setupProductIdentifier];
        if (v47)
        {
          v48 = v47;
          v49 = sub_1BE052434();
          v51 = v50;

          if (v41)
          {
            if (v49 == v101 && v41 == v51)
            {
              v51, v52, v101, v54, v55, v56, v57, v58;
LABEL_38:
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
              goto LABEL_22;
            }

            v60 = sub_1BE053B84();
            v51, v61, v62, v63, v64, v65, v66, v67;
            if (v60)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v51, v52, v53, v54, v55, v56, v57, v58;
          }
        }

        else if (!v41)
        {
          goto LABEL_38;
        }

LABEL_22:
        ++v43;
        if (v46 == i)
        {
          v30 = v103;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v29, v32, v33, v34, v35, v36, v37, v38;
    v41, v68, v69, v70, v71, v72, v73, v74;
    v75 = v98;
    sub_1BE04D0E4();
    sub_1BE048964();
    v76 = sub_1BE04D204();
    v77 = sub_1BE052C54();
    if (os_log_type_enabled(v76, v77))
    {
      v85 = swift_slowAlloc();
      *v85 = 134217984;
      v87 = v99;
      v86 = v100;
      if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
      {
        v88 = sub_1BE053704();
      }

      else
      {
        v88 = *(v30 + 16);
      }

      *(v85 + 4) = v88;
      v30, v78, v79, v80, v81, v82, v83, v84;
      _os_log_impl(&dword_1BD026000, v76, v77, "Filtered credentials for product and found %ld credentials", v85, 0xCu);
      MEMORY[0x1BFB45F20](v85, -1, -1);
    }

    else
    {

      v30, v89, v90, v91, v92, v93, v94, v95;
      v87 = v99;
      v86 = v100;
    }

    (*(v87 + 8))(v75, v86);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4F5B20()
{
  v1 = sub_1BE04BAC4();
  v135 = *(v1 - 8);
  v136 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v134 = &v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v144 = v3;
  v145 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v133 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v131 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v131 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v131 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v131 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v131 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v131 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v131 - v26;
  v28 = sub_1BE04B944();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE04BBD4();
  v33 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  result = [v33 configuration];
  if (!result)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = [result type];

  sub_1BE04BB94();
  v37 = sub_1BE04B8E4();
  (*(v29 + 8))(v31, v28);
  v38 = [v37 paymentSetupSupportedInRegion];

  v39 = [v32 isCurrentUserUnder13];
  v40 = [v33 setupProductMethods];
  if (v40)
  {
    sub_1BD0E5E8C(0, &qword_1EBD48A90, 0x1E69B9220);
    v41 = sub_1BE052744();

    if (v41 >> 62)
    {
      v40 = sub_1BE053704();
    }

    else
    {
      v40 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = v40 != 0;
    LOBYTE(v40) = [v33 supportsSetupProductMethodForType_];
  }

  else
  {
    v49 = 0;
  }

  if (([v33 allSupportedProtocols] & 4) != 0 && !((PKFelicaSecureElementIsAvailable() != 0) | v40 & 1))
  {
    sub_1BE04D0E4();
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BD026000, v55, v56, "Manual entry is disabled for typeF product as a local Felica secure element  is not available and digital issuance is not supported", v57, 2u);
      MEMORY[0x1BFB45F20](v57, -1, -1);
    }

    goto LABEL_24;
  }

  if (v49)
  {
    if (!PKSecureElementIsAvailable())
    {
      sub_1BE04D0E4();
      v58 = sub_1BE04D204();
      v59 = sub_1BE052C54();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BD026000, v58, v59, "Manual entry is disabled for because secure element is not available", v60, 2u);
        MEMORY[0x1BFB45F20](v60, -1, -1);
      }

      (*(v145 + 8))(v24, v144);
      return 0;
    }

    if (v36 != 11)
    {
      if (v36 != 10)
      {
        if (v36 != 6)
        {
          goto LABEL_37;
        }

LABEL_34:
        v61 = v141;
        sub_1BE04D0E4();
        v62 = sub_1BE04D204();
        v63 = sub_1BE052C54();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_1BD026000, v62, v63, "Manual entry is disabled because a issuer provisioning extension backed product was selected", v64, 2u);
          MEMORY[0x1BFB45F20](v64, -1, -1);
        }

        (*(v145 + 8))(v61, v144);
        return 0;
      }

LABEL_32:
      v50 = v142;
      sub_1BE04D0E4();
      v51 = sub_1BE04D204();
      v52 = sub_1BE052C54();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_46;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Manual entry is disabled because an identity product was selected";
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  if (v36 > 5)
  {
    if (v36 == 6)
    {
      goto LABEL_34;
    }

    if (v36 == 10)
    {
      goto LABEL_32;
    }

    if (v36 != 11)
    {
      goto LABEL_37;
    }

LABEL_19:
    v50 = v143;
    sub_1BE04D0E4();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_46;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Manual entry is disabled because a car key product was selected";
LABEL_45:
    _os_log_impl(&dword_1BD026000, v51, v52, v54, v53, 2u);
    MEMORY[0x1BFB45F20](v53, -1, -1);
    goto LABEL_46;
  }

  if (v36 == 3)
  {
    v50 = v139;
    sub_1BE04D0E4();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Manual entry is disabled because transit product lacks provisioning method";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v36 == 4)
  {
    v50 = v140;
    sub_1BE04D0E4();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_46;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Manual entry is disabled because eWallet product lacks provisioning method";
    goto LABEL_45;
  }

LABEL_37:
  if (v38 == 2)
  {
    v50 = v138;
    sub_1BE04D0E4();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Manual entry is disabled because the user is out of apple pay region";
      goto LABEL_45;
    }

LABEL_46:

    (*(v145 + 8))(v50, v144);
    return 0;
  }

  if (v39 == 1)
  {
    v50 = v137;
    sub_1BE04D0E4();
    v51 = sub_1BE04D204();
    v52 = sub_1BE052C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Manual entry is disabled because the user is under 13";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v65 = v32;
  v66 = [v33 productIdentifier];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1BE052434();
    v70 = v69;
  }

  else
  {
    v70 = 0xE300000000000000;
    v68 = 7104878;
  }

  result = [v33 configuration];
  if (!result)
  {
    goto LABEL_66;
  }

  v71 = result;
  v72 = [result state];

  if (v72 > 2)
  {
    if ((v72 - 3) < 2)
    {
      v100 = v134;
      sub_1BE04BC34();
      v101 = sub_1BE04BA54();
      (*(v135 + 8))(v100, v136);
      if (v101)
      {
        v27 = v133;
        sub_1BE04D0E4();
        sub_1BE048C84();
        v80 = sub_1BE04D204();
        v81 = sub_1BE052C54();
        v70, v102, v103, v104, v105, v106, v107, v108;
        if (os_log_type_enabled(v80, v81))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v146 = v90;
          *v89 = 136446210;
          v109 = sub_1BD123690(v68, v70, &v146);
          v70, v110, v111, v112, v113, v114, v115, v116;
          *(v89 + 4) = v109;
          v99 = "Manual entry is disabled for %{public}s because we are in setup assistant and notify me is not supported";
          goto LABEL_60;
        }

LABEL_62:

        v70, v124, v125, v126, v127, v128, v129, v130;
        goto LABEL_63;
      }
    }
  }

  else if (v72 == 2)
  {
    v27 = v132;
    sub_1BE04D0E4();
    sub_1BE048C84();
    v80 = sub_1BE04D204();
    v81 = sub_1BE052C54();
    v70, v82, v83, v84, v85, v86, v87, v88;
    if (os_log_type_enabled(v80, v81))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v146 = v90;
      *v89 = 136446210;
      v91 = sub_1BD123690(v68, v70, &v146);
      v70, v92, v93, v94, v95, v96, v97, v98;
      *(v89 + 4) = v91;
      v99 = "Manual entry is disabled because %{public}s is set as unavailable";
LABEL_60:
      _os_log_impl(&dword_1BD026000, v80, v81, v99, v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90, v117, v118, v119, v120, v121, v122, v123);
      MEMORY[0x1BFB45F20](v90, -1, -1);
      MEMORY[0x1BFB45F20](v89, -1, -1);

LABEL_63:
LABEL_24:
      (*(v145 + 8))(v27, v144);
      return 0;
    }

    goto LABEL_62;
  }

  v70, v73, v74, v75, v76, v77, v78, v79;

  return 1;
}

id sub_1BD4F66A8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
  v4 = sub_1BD4F5B20();
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v6 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001BE1229B0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v3;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = a1;
  v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v4 & 1;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v5;
  sub_1BE048964();
  sub_1BE048C84();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BD4F67DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4F6818(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD4F6868()
{
  result = qword_1EBD48A98;
  if (!qword_1EBD48A98)
  {
    sub_1BE04B9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A98);
  }

  return result;
}

uint64_t sub_1BD4F69A8(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BA14();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v42 - v9;
  v10 = sub_1BE04B9C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  v17 = sub_1BE04BAC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PKAppleCardFinancialLearningLabEnabled())
  {
    return a1(0xD000000000000027, 0x80000001BE12CC30, 0, 1);
  }

  v42[2] = a2;
  v43 = a1;
  v21 = sub_1BE04BC84();
  v22 = [v21 associatedAccountFeatureIdentifier];

  if (v22 != 2)
  {
    v26 = 0x6C70706120746F6ELL;
    v27 = 0xEE00647261632065;
    return v43(v26, v27, 0, 1);
  }

  v42[1] = *(v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_context);
  sub_1BE04BC34();
  sub_1BE04BAA4();
  v23 = *(v18 + 8);
  v23(v20, v17);
  (*(v11 + 104))(v13, *MEMORY[0x1E69B7FB8], v10);
  sub_1BD37FFEC(qword_1EBD43518, MEMORY[0x1E69B7FC8], MEMORY[0x1E69B7FD0]);
  v24 = sub_1BE052334();
  v25 = *(v11 + 8);
  v25(v13, v10);
  v25(v16, v10);
  if (v24)
  {
    v26 = 0xD00000000000002ELL;
    v27 = 0x80000001BE12CC80;
    return v43(v26, v27, 0, 1);
  }

  sub_1BE04BC34();
  v29 = v45;
  sub_1BE04BA24();
  v23(v20, v17);
  v30 = *MEMORY[0x1E69B8010];
  v31 = sub_1BE04B9F4();
  v32 = v44;
  (*(*(v31 - 8) + 104))(v44, v30, v31);
  v34 = v46;
  v33 = v47;
  v35 = *(v46 + 104);
  v35(v32, *MEMORY[0x1E69B8018], v47);
  LOBYTE(v30) = MEMORY[0x1BFB38A90](v29, v32);
  v36 = *(v34 + 8);
  v36(v32, v33);
  if (v30 & 1) != 0 || (v37 = *MEMORY[0x1E69B7FD8], v38 = sub_1BE04B9D4(), (*(*(v38 - 8) + 104))(v32, v37, v38), v35(v32, *MEMORY[0x1E69B8020], v33), LOBYTE(v37) = MEMORY[0x1BFB38A90](v29, v32), v36(v32, v33), (v37))
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = 0x80000001BE12CC60;
    v39 = 0xD00000000000001CLL;
    v41 = 1;
  }

  v43(v39, v40, 0, v41);
  return (v36)(v29, v33);
}

uint64_t sub_1BD4F6F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  aBlock[4] = sub_1BD4F771C;
  v28 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_5;
  v15 = _Block_copy(aBlock);
  v16 = v28;
  sub_1BE048964();
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v26);
}

void sub_1BD4F71C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v4(a2);

  v3, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1BD4F721C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = v3;
      sub_1BD8659A4(v7, &off_1F3BAABC0, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD4F72CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4F7308(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD4F7358(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6967DD0]) init];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v15[4] = sub_1BD4F7714;
  v16 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BD4F71C8;
  v15[3] = &block_descriptor_9_4;
  v6 = _Block_copy(v15);
  v7 = v16;
  sub_1BE048964();
  v7, v8, v9, v10, v11, v12, v13, v14;
  [v4 loadLabSharingPermissionWithCompletion_];
  _Block_release(v6);
}

void *sub_1BD4F7458()
{
  v0 = sub_1BD4F7624();
  sub_1BD28B498(v0);
  return v0;
}

id sub_1BD4F7484(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_identifier];
  *v11 = 0xD00000000000002ALL;
  *(v11 + 1) = 0x80000001BE0DCCB0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_provisionedPasses] = a2;
  sub_1BE048964();
  v12 = a2;
  sub_1BE04BC34();
  v13 = sub_1BE04B9A4();
  (*(v8 + 8))(v10, v7);
  result = [objc_allocWithZone(PKFinancialLabPermissionController) initWithContext_];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_permissionController] = result;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD4F7624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_permissionController);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_1BD4F770C;
  v13 = v2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BD976224;
  v12[3] = &block_descriptor_112;
  v3 = _Block_copy(v12);
  v13, v4, v5, v6, v7, v8, v9, v10;
  [v1 setContinueHandler_];
  _Block_release(v3);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI18ContactInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1BD4F77B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD4F7800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BD4F7884@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = *(v1 + 120);
    v21 = *(v1 + 112);
    v5 = *(v1 + 128);
    v4 = *(v1 + 136);
    sub_1BE048C84();
    sub_1BE048C84();
    swift_bridgeObjectRelease_n();
    if ((*(v1 + 193) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(v1 + 144);
    v9 = *(v1 + 152);
    v6 = *(v1 + 160);
    v8 = *(v1 + 168);
    sub_1BE048C84();
    sub_1BE048C84();
    swift_bridgeObjectRelease_n();
    if ((*(v1 + 194) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = *(v1 + 176);
    v11 = *(v1 + 184);
    sub_1BE048C84();
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
    goto LABEL_8;
  }

  v5 = 0;
  v21 = 0;
  v4 = 0xE000000000000000;
  v3 = 0xE000000000000000;
  if (*(v1 + 193))
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 0;
  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = 0xE000000000000000;
  if (*(v1 + 194))
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_8:
  *&v23 = v21;
  *(&v23 + 1) = v3;
  v24.n128_u64[0] = v5;
  v24.n128_u64[1] = v4;
  *&v25 = v7;
  *(&v25 + 1) = v9;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  v28[0] = v21;
  v28[1] = v3;
  v28[2] = v5;
  v28[3] = v4;
  v28[4] = v7;
  v28[5] = v9;
  v28[6] = v6;
  v28[7] = v8;
  v28[8] = v10;
  v28[9] = v11;
  sub_1BD4F8278(&v23, v22);
  sub_1BD4F82D4(v28);
  v19 = v26;
  *(a1 + 32) = v25;
  *(a1 + 48) = v19;
  *(a1 + 64) = v27;
  result = v24;
  *a1 = v23;
  *(a1 + 16) = result;
  return result;
}

BOOL sub_1BD4F79E0()
{
  result = 0;
  if ((*(v0 + 104) & 1) == 0 || (v1 = *(v0 + 32)) == 0 || ((v2 = *(v0 + 40), v3 = *(v0 + 48), v4 = *(v0 + 128), v5 = *(v0 + 136), *(v0 + 24) == *(v0 + 112)) ? (v6 = v1 == *(v0 + 120)) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0 || (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), !v7 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v8 = *v0;
    v9 = sub_1BE052404();
    v10 = sub_1BE052404();
    v11 = [v8 isGivenName:v9 validFormatForCountryCode:v10];

    if (v11)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7AD4()
{
  result = 0;
  if ((*(v0 + 104) & 1) == 0 || (v1 = *(v0 + 32)) == 0 || ((v2 = *(v0 + 40), v3 = *(v0 + 48), v4 = *(v0 + 128), v5 = *(v0 + 136), *(v0 + 24) == *(v0 + 112)) ? (v6 = v1 == *(v0 + 120)) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0 || (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), !v7 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v8 = *v0;
    v9 = sub_1BE052404();
    v10 = sub_1BE052404();
    v11 = [v8 isFamilyName:v9 validFormatForCountryCode:v10];

    if (v11)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7BC8()
{
  result = 0;
  if ((*(v0 + 105) & 1) == 0 || !*(v0 + 32) || ((v1 = *(v0 + 72), v2 = *(v0 + 80), v3 = *(v0 + 160), v4 = *(v0 + 168), *(v0 + 56) == *(v0 + 144)) ? (v5 = *(v0 + 64) == *(v0 + 152)) : (v5 = 0), !v5 && (sub_1BE053B84() & 1) == 0 || (v1 == v3 ? (v6 = v2 == v4) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v7 = *v0;
    v8 = sub_1BE052404();
    v9 = sub_1BE052404();
    v10 = [v7 isPhoneticGivenName:v8 validFormatForCountryCode:v9];

    if (v10)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7CBC()
{
  result = 0;
  if ((*(v0 + 105) & 1) == 0 || !*(v0 + 32) || ((v1 = *(v0 + 72), v2 = *(v0 + 80), v3 = *(v0 + 160), v4 = *(v0 + 168), *(v0 + 56) == *(v0 + 144)) ? (v5 = *(v0 + 64) == *(v0 + 152)) : (v5 = 0), !v5 && (sub_1BE053B84() & 1) == 0 || (v1 == v3 ? (v6 = v2 == v4) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v7 = *v0;
    v8 = sub_1BE052404();
    v9 = sub_1BE052404();
    v10 = [v7 isPhoneticFamilyName:v8 validFormatForCountryCode:v9];

    if (v10)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7DB0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  if (*(v0 + 192))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      return 0;
    }

    if (*(v0 + 104))
    {
      v11 = *(v0 + 32);
      if (v11)
      {
        if (v13 = *(v0 + 40), v12 = *(v0 + 48), *(v0 + 24) == v5) && v11 == v6 || (v28 = *(v0 + 48), v14 = sub_1BE053B84(), v12 = v28, (v14))
        {
          if (v13 == v8 && v12 == v9 || (sub_1BE053B84() & 1) != 0)
          {
            return 0;
          }
        }
      }
    }

    if (*v0)
    {
      v15 = *v0;
      v16 = sub_1BE052404();
      v17 = sub_1BE052404();
      v18 = [v15 isGivenName:v16 validFormatForCountryCode:v17];

      if (!v18)
      {
        return 0;
      }
    }

    if (!sub_1BD4F7AD4())
    {
      return 0;
    }
  }

  if ((*(v0 + 193) & 1) == 0)
  {
    return 1;
  }

  v19 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v19 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v20 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    return 0;
  }

  if ((*(v0 + 105) & 1) != 0 && *(v0 + 32))
  {
    if (v21 = *(v0 + 72), v22 = *(v0 + 80), *(v0 + 56) == v1) && *(v0 + 64) == v2 || (sub_1BE053B84())
    {
      if (v21 == v3 && v22 == v4 || (sub_1BE053B84() & 1) != 0)
      {
        return 0;
      }
    }
  }

  if (*v0)
  {
    v23 = *v0;
    v24 = sub_1BE052404();
    v25 = sub_1BE052404();
    v26 = [v23 isPhoneticGivenName:v24 validFormatForCountryCode:v25];

    if (!v26)
    {
      return 0;
    }
  }

  return sub_1BD4F7CBC();
}

double sub_1BD4F8008@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04B0D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80, &unk_1BE0DCDD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  sub_1BE04B0E4();
  sub_1BE04B0C4();
  (*(v7 + 8))(v9, v6);
  v13 = sub_1BE04B084();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD20DE2C(v12);
    v15 = 0xE200000000000000;
    v16 = 21333;
  }

  else
  {
    sub_1BE04B004();
    v18 = v17;
    (*(v14 + 8))(v12, v13);
    v16 = sub_1BE0524C4();
    v15 = v19;
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  v26 = sub_1BE04B0F4();
  (*(*(v26 - 8) + 8))(a1, v26);
  *a3 = 0;
  *(a3 + 8) = v16;
  *(a3 + 16) = v15;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0xE000000000000000;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0xE000000000000000;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0xE000000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0xE000000000000000;
  *(a3 + 192) = 1;
  *(a3 + 194) = 0;
  *(a3 + 200) = a2;
  return result;
}

uint64_t sub_1BD4F8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v38 = *(a1 + 16);
  sub_1BD03B254(0, v8, 0, a4, a5, a6, a7, a8);
  v9 = v39;
  v11 = a1 + 56;
  result = sub_1BE053674();
  v18 = v38;
  v19 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v21 = result >> 6;
    v22 = 1 << result;
    if ((*(v11 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v23 = 0x726F4B6874756F73;
        v24 = 0xEE00415049506165;
      }

      else
      {
        v23 = 0xD000000000000010;
        v24 = 0x80000001BE117610;
      }
    }

    else
    {
      v24 = 0xE400000000000000;
      v23 = 1919968359;
    }

    v25 = *(a1 + 36);
    v27 = *(v39 + 16);
    v26 = *(v39 + 24);
    if (v27 >= v26 >> 1)
    {
      v36 = *(a1 + 36);
      v37 = result;
      sub_1BD03B254((v26 > 1), v27 + 1, 1, v13, v14, v15, v16, v17);
      v18 = v38;
      v25 = v36;
      result = v37;
    }

    *(v39 + 16) = v27 + 1;
    v28 = v39 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v24;
    v20 = 1 << *(a1 + 32);
    if (result >= v20)
    {
      goto LABEL_27;
    }

    v11 = a1 + 56;
    v29 = *(a1 + 56 + 8 * v21);
    if ((v29 & v22) == 0)
    {
      goto LABEL_28;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v30 = v29 & (-2 << (result & 0x3F));
    if (v30)
    {
      v20 = __clz(__rbit64(v30)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v21 << 6;
      v32 = v21 + 1;
      v33 = (a1 + 64 + 8 * v21);
      while (v32 < (v20 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_1BD20DE9C(result, v25, 0, v13, v14, v15, v16, v17);
          v18 = v38;
          v20 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      sub_1BD20DE9C(result, v25, 0, v13, v14, v15, v16, v17);
      v18 = v38;
    }

LABEL_4:
    ++v19;
    result = v20;
    if (v19 == v18)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1BD4F85C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD4F8E0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD4F85F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEE00415049506165;
  v5 = 0x726F4B6874756F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001BE117610;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1919968359;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD4F8660(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = 0x726F4B6874756F73;
  v10 = 0xEE00415049506165;
  v11 = 0x80000001BE117610;
  if (v8 != 1)
  {
    v9 = 0xD000000000000010;
    v10 = 0x80000001BE117610;
  }

  if (*a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1919968359;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = 0x726F4B6874756F73;
  if (*a2 == 1)
  {
    v11 = 0xEE00415049506165;
  }

  else
  {
    v14 = 0xD000000000000010;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1919968359;
  }

  if (*a2)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1BD4F876C()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xEE00415049506165;
  if (v1 != 1)
  {
    v2 = 0x80000001BE117610;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD4F8818(uint64_t a1)
{
  v2 = 0xEE00415049506165;
  if (*v1 != 1)
  {
    v2 = 0x80000001BE117610;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD4F88B0(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xEE00415049506165;
  if (v2 != 1)
  {
    v3 = 0x80000001BE117610;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

void sub_1BD4F8958()
{
  v1 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*v0 & 1) == 0)
  {
    *v0 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9C0, &qword_1BE0BFBF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0;
    sub_1BE04BB94();
    v7 = sub_1BE04B934();
    (*(v3 + 8))(v5, v2);
    v8 = [v7 deviceRegion];
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = sub_1BE052434();
      v11 = v10;

      v16 = v9 == 21067 && v11 == 0xE200000000000000;
      if (v16 || (sub_1BE053B84() & 1) != 0)
      {
        inited = sub_1BD1D7608(1, 2, 1, inited, v12, v13, v14, v15);
        *(inited + 16) = 2;
        *(inited + 33) = 1;
      }

      if (v9 == 20035 && v11 == 0xE200000000000000)
      {
        v11, v17, v18, v19, v12, v13, v14, v15;
      }

      else
      {
        v21 = sub_1BE053B84();
        v11, v22, v23, v24, v25, v26, v27, v28;
        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v34 = *(inited + 16);
      v33 = *(inited + 24);
      if (v34 >= v33 >> 1)
      {
        inited = sub_1BD1D7608((v33 > 1), v34 + 1, 1, inited, v29, v30, v31, v32);
      }

      *(inited + 16) = v34 + 1;
      *(inited + v34 + 32) = 2;
    }

LABEL_19:
    v35 = sub_1BD536F98(inited);
    inited, v36, v37, v38, v39, v40, v41, v42;
    v1[1], v43, v44, v45, v46, v47, v48, v49;
    v1[1] = v35;
  }
}

unint64_t sub_1BD4F8BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = sub_1BD4F8348(a2, a2, a3, a4, a5, a6, a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  sub_1BD03B274();
  v10 = sub_1BE0522E4();
  v12 = v11;
  v9, v11, v13, v14, v15, v16, v17, v18;
  v26 = sub_1BD4F8348(a3, v19, v20, v21, v22, v23, v24, v25);
  v27 = sub_1BE0522E4();
  v29 = v28;
  v26, v28, v30, v31, v32, v33, v34, v35;
  sub_1BE053834();
  0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1BFB3F610](v10, v12);
  v12, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1BFB3F610](0x3A6E656573202C5DLL, 0xEA00000000005B20);
  MEMORY[0x1BFB3F610](v27, v29);
  v29, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1BFB3F610](10589, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1BD4F8D5C()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BD536F98(MEMORY[0x1E69E7CC0]);
  result = sub_1BD536F98(v0);
  byte_1EBDAB1E8 = 0;
  qword_1EBDAB1F0 = v1;
  unk_1EBDAB1F8 = result;
  return result;
}

unint64_t sub_1BD4F8DB8()
{
  result = qword_1EBD48AD8;
  if (!qword_1EBD48AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48AD8);
  }

  return result;
}

unint64_t sub_1BD4F8E0C(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1BD4F8E58()
{
  v1 = *v0;
  v17 = *(v0 + 8);
  *&v18 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68, &unk_1BE0DD0A0);
  sub_1BE051914();
  v2 = *v15;
  v13 = *&v15[8];
  v3 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  sub_1BE051914();
  v12 = *v15;
  v4 = *&v15[16];
  v5 = v16;
  v6 = type metadata accessor for PeerPaymentAmountEntryKeypadView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount] = v1;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator__amount];
  *v8 = v2;
  *(v8 + 8) = v13;
  v9 = &v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator__memo];
  *v9 = v12;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = v1;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1BD4F8F7C(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount];
  v5 = a1;
  result = [v4 deviceTapFeatureDescriptor];
  if (result)
  {
    v7 = result;
    v8 = [result *a3];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD4F9188(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeerPaymentAmountEntryKeypadView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD4F9274(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BD4F92BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD4F931C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B78, qword_1BE0DD0B0);
    sub_1BE050154();
    [v2 setDelegate_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController);

    return [v4 init];
  }
}

id sub_1BD4F93D4@<X0>(void *a1@<X8>)
{
  result = sub_1BD4F8E58();
  *a1 = result;
  return result;
}

uint64_t sub_1BD4F93FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4F9544();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD4F9460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4F9544();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4F94C4(uint64_t a1)
{
  sub_1BD4F9544();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD4F94F0()
{
  result = qword_1EBD48B60;
  if (!qword_1EBD48B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48B60);
  }

  return result;
}

unint64_t sub_1BD4F9544()
{
  result = qword_1EBD48B80;
  if (!qword_1EBD48B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48B80);
  }

  return result;
}

__n128 sub_1BD4F9598@<Q0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v16 = objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  v17 = a4;
  v18 = [v16 init];
  v76 = a2;
  v77 = a3;
  v78 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68, &unk_1BE0DD0A0);
  MEMORY[0x1BFB3E970](&v71, v19);

  a3, v20, v21, v22, v23, v24, v25, v26;
  a2, v27, v28, v29, v30, v31, v32, v33;
  v34 = v71;
  [v18 setAmount_];

  v76 = a5;
  v77 = a6;
  v78 = a7;
  v79 = a8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  MEMORY[0x1BFB3E970](&v71, v35);
  v36 = *(&v71 + 1);
  v37 = sub_1BE052404();
  v36, v38, v39, v40, v41, v42, v43, v44;
  a8, v45, v46, v47, v48, v49, v50, v51;
  a6, v52, v53, v54, v55, v56, v57, v58;
  a5, v59, v60, v61, v62, v63, v64, v65;
  [v18 setMemo_];

  [v18 setContext_];
  *&v71 = a1;
  *(&v71 + 1) = a2;
  v72.n128_u64[0] = a3;
  v72.n128_u64[1] = v17;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  *&v74 = a7;
  *(&v74 + 1) = a8;
  v75 = v18;
  v76 = a1;
  v77 = a2;
  v78 = a3;
  v79 = v17;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = v18;
  sub_1BD4F9790(&v71, v70);
  sub_1BD4F97C8(&v76);
  v66 = v74;
  *(a9 + 32) = v73;
  *(a9 + 48) = v66;
  *(a9 + 64) = v75;
  result = v72;
  *a9 = v71;
  *(a9 + 16) = result;
  return result;
}

id ProvisioningTermsPresenter.__allocating_init(allowNonSecureHTTP:paymentSetupContext:)(char a1, uint64_t a2)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v2);
  sub_1BE04BAD4();
  v8 = type metadata accessor for ProvisioningTermsPresenter(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
  v9[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = a1;
  (*(v5 + 16))(&v9[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v7, v4);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id ProvisioningTermsPresenter.init(allowNonSecureHTTP:paymentSetupContext:)(char a1, uint64_t a2)
{
  v3 = sub_1BE04BAC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BAD4();
  v7 = type metadata accessor for ProvisioningTermsPresenter(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
  v8[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = a1;
  (*(v4 + 16))(&v8[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v6, v3);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t type metadata accessor for ProvisioningTermsPresenter(uint64_t a1)
{
  result = qword_1EBD48BA8;
  if (!qword_1EBD48BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4F9D70(int a1, id a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v9 = [a2 parentViewController];
  if (v9)
  {
  }

  else
  {
    v13 = [a2 view];
    if (!v13)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 window];

    v16 = [v15 rootViewController];
    if (!v16 || (sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258), v17 = a2, v18 = sub_1BE053074(), v17, v16, (v18 & 1) == 0))
    {
      a3(0, 0);
      return;
    }
  }

  [a2 resignFirstResponder];
  v10 = [objc_allocWithZone(PKPortraitNavigationController) init];
  [v10 setModalInPresentation_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
  if (sub_1BE04BAB4())
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
  }

  else
  {
    v12 = [objc_opt_self() defaultStyle];
  }

  v19 = v12;
  [v11 setStyle_];
  [v11 setDelegate_];
  [v11 setNavigationController_];
  v20 = [v11 loader];
  if (!v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 setAllowNonSecureHTTP_];

  v22 = *(v5 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController);
  *(v5 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController) = v11;
  v23 = v11;

  v24 = sub_1BE04A9C4();
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a2;
  v25[5] = v10;
  v25[6] = v23;
  v38[4] = sub_1BD4FA3A8;
  v39 = v25;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1BD3CC8C0;
  v38[3] = &block_descriptor_113;
  v26 = _Block_copy(v38);
  v27 = v39;
  v28 = a2;
  v29 = v23;
  sub_1BE048964();
  v30 = v10;
  v27, v31, v32, v33, v34, v35, v36, v37;
  [v29 loadURL:v24 postBody:0 completion:v26];
  _Block_release(v26);
}

uint64_t sub_1BD4FA0CC(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v38 = a7;
  v13 = sub_1BE051F54();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v39 = sub_1BE052D54();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  v20 = a6;
  v21 = v38;
  *(v19 + 64) = v38;
  aBlock[4] = sub_1BD4FB6E4;
  v44 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_2;
  v22 = _Block_copy(aBlock);
  v23 = v44;
  v24 = a2;
  sub_1BE048964();
  v25 = a5;
  v26 = v20;
  v27 = v21;
  v23, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v35 = v39;
  MEMORY[0x1BFB3FDF0](0, v18, v15, v22);
  _Block_release(v22);

  (*(v42 + 8))(v15, v13);
  return (*(v40 + 8))(v18, v41);
}

void sub_1BD4FA3AC(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, id a5, void *a6, void *a7)
{
  if ((a1 & 1) == 0 || a2)
  {
    (a3)(0, a2, a3, a4, a5, a6, a7);
    return;
  }

  v12 = [a5 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 overrideUserInterfaceStyle];
  }

  else
  {
    v14 = [a5 overrideUserInterfaceStyle];
  }

  [a6 setOverrideUserInterfaceStyle_];
  v15 = swift_allocObject();
  if (![a5 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [a5 presentViewController:a6 animated:1 completion:0];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_1BD243278;
LABEL_12:
    v15[2] = v22;
    v15[3] = v21;
    v23 = sub_1BE052404();
    v24 = swift_allocObject();
    v24[2] = v15;
    v24[3] = a3;
    v24[4] = a4;
    v56 = sub_1BD4FB6F8;
    v57 = v24;
    v52 = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1BD4FA890;
    v55 = &block_descriptor_33_2;
    v25 = _Block_copy(&v52);
    v26 = v57;
    sub_1BE048964();
    sub_1BE048964();
    v26, v27, v28, v29, v30, v31, v32, v33;
    [a7 setHandlerForElementName:v23 handler:v25];
    _Block_release(v25);

    v34 = sub_1BE052404();
    v35 = swift_allocObject();
    v35[2] = v15;
    v35[3] = a3;
    v35[4] = a4;
    v56 = sub_1BD4FB748;
    v57 = v35;
    v52 = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1BD4FA890;
    v55 = &block_descriptor_39_0;
    v36 = _Block_copy(&v52);
    v37 = v57;
    sub_1BE048964();
    sub_1BE048964();
    v37, v38, v39, v40, v41, v42, v43, v44;
    [a7 setHandlerForElementName:v34 handler:v36];
    _Block_release(v36);
    v15, v45, v46, v47, v48, v49, v50, v51;

    return;
  }

  v16 = [a6 topViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [a5 navigationController];
    if (v18)
    {
      v19 = v18;
      v20 = [v17 navigationItem];
      [v20 setHidesBackButton_];

      [v19 pushViewController:v17 animated:1];
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v22 = sub_1BD4FB798;
    }

    else
    {
      [a6 setModalPresentationStyle_];
      [a5 presentViewController:a6 animated:1 completion:0];

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = sub_1BD242744;
    }

    goto LABEL_12;
  }

  a3(0, 0);

  MEMORY[0x1EEE6BDE0](v15, 32, 7);
}

void sub_1BD4FA820(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong popViewControllerAnimated_];
  }
}

void sub_1BD4FA890(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_1BE052244();
  }

  else
  {
    v8 = 0;
  }

  sub_1BE048964();
  v9 = a2;
  v10 = a3;
  v7(a2, a3, v8);
  v6, v11, v12, v13, v14, v15, v16, v17;

  v8, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD4FA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v33 = a8;
  v34 = a9;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE051FA4();
  v15 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v18 = sub_1BE052D54();
  v19 = swift_allocObject();
  v21 = v32;
  v20 = v33;
  v19[2] = a4;
  v19[3] = v21;
  v19[4] = a6;
  aBlock[4] = v20;
  v37 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v34;
  v22 = _Block_copy(aBlock);
  v23 = v37;
  sub_1BE048964();
  sub_1BE048964();
  v23, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v17, v14, v22);
  _Block_release(v22);

  (*(v12 + 8))(v14, v11);
  return (*(v15 + 8))(v17, v35);
}

uint64_t sub_1BD4FABFC(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = sub_1BE048964();
  v8(v9);
  v7, v10, v11, v12, v13, v14, v15, v16;
  return a2(a4, 0);
}

void sub_1BD4FADB8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BE04A844();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id ProvisioningTermsPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningTermsPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningTermsPresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD4FAF78(uint64_t a1)
{
  result = sub_1BE04BAC4();
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

void sub_1BD4FB068()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v8 = sub_1BE04B8E4();
  (*(v5 + 8))(v7, v4);
  v9 = [v8 context];

  if (v9)
  {
    v10 = [v9 devSigned];

    sub_1BE04BC34();
    v11 = type metadata accessor for ProvisioningTermsPresenter(0);
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
    v12[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = v10;
    (*(v1 + 16))(&v12[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v3, v0);
    v13.receiver = v12;
    v13.super_class = v11;
    objc_msgSendSuper2(&v13, sel_init);
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD4FB2A4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  v7[2] = a4;
  _Block_copy(a4);
  v8 = [a2 parentViewController];
  if (v8)
  {

    goto LABEL_3;
  }

  v12 = [a2 view];
  if (!v12)
  {
LABEL_15:
    _Block_release(a4);
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 window];

  v15 = [v14 rootViewController];
  if (v15)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v16 = a2;
    v17 = sub_1BE053074();

    if (v17)
    {
LABEL_3:
      [a2 resignFirstResponder];
      v9 = [objc_allocWithZone(PKPortraitNavigationController) init];
      [v9 setModalInPresentation_];
      v10 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
      if (sub_1BE04BAB4())
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
      }

      else
      {
        v11 = [objc_opt_self() defaultStyle];
      }

      v25 = v11;
      [v10 setStyle_];
      [v10 setDelegate_];
      [v10 setNavigationController_];
      v26 = [v10 loader];
      if (v26)
      {
        v27 = v26;
        [v26 setAllowNonSecureHTTP_];

        v28 = *(a3 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController);
        *(a3 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController) = v10;
        v29 = v10;

        v30 = sub_1BE04A9C4();
        v31 = swift_allocObject();
        v31[2] = sub_1BD4FB67C;
        v31[3] = v7;
        v31[4] = a2;
        v31[5] = v9;
        v31[6] = v29;
        v51[4] = sub_1BD4FB818;
        v52 = v31;
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 1107296256;
        v51[2] = sub_1BD3CC8C0;
        v51[3] = &block_descriptor_15_6;
        v32 = _Block_copy(v51);
        v33 = v52;
        v34 = v29;
        v35 = a2;
        sub_1BE048964();
        v36 = v9;
        v33, v37, v38, v39, v40, v41, v42, v43;
        [v34 loadURL:v30 postBody:0 completion:v32];
        _Block_release(v32);
        v7, v44, v45, v46, v47, v48, v49, v50;

        return;
      }

      _Block_release(a4);
      __break(1u);
      goto LABEL_15;
    }
  }

  a4[2](a4, 0, 0);

  v7, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t objectdestroyTm_52(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

id sub_1BD4FB81C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v4 + 104);
  v12(&v61 - v9, v11, v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v62 = v16;
    v63 = v15;

    v17 = *(v4 + 8);
    v17(v10, v3);
    if ((v2[14] & 1) == 0)
    {
      v19 = 0;
      v22 = 0;
      goto LABEL_6;
    }

    (v12)(v6, v11, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v21 = v20;

      v17(v6, v3);
      v22 = v21;
LABEL_6:
      v23 = v2[11];
      v104 = v2[10];
      v105 = v23;
      v24 = v2[13];
      v106 = v2[12];
      v107 = v24;
      v25 = v2[7];
      v100 = v2[6];
      v101 = v25;
      v26 = v2[9];
      v102 = v2[8];
      v103 = v26;
      v27 = v2[3];
      v96 = v2[2];
      v97 = v27;
      v28 = v2[5];
      v98 = v2[4];
      v99 = v28;
      v29 = v2[1];
      v94 = *v2;
      v95 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
      MEMORY[0x1BFB3E970](v114);
      v30 = sub_1BD4F7AD4();
      sub_1BD4FBC18(v114);
      v31 = *MEMORY[0x1E69B97C8];
      v32 = v2[11];
      v90 = v2[10];
      v91 = v32;
      v33 = v2[13];
      v92 = v2[12];
      v93 = v33;
      v34 = v2[7];
      v86 = v2[6];
      v87 = v34;
      v35 = v2[9];
      v88 = v2[8];
      v89 = v35;
      v36 = v2[3];
      v82 = v2[2];
      v83 = v36;
      v37 = v2[5];
      v84 = v2[4];
      v85 = v37;
      v38 = v2[1];
      v80 = *v2;
      v81 = v38;
      v39 = v31;
      sub_1BE051914();
      KeyPath = swift_getKeyPath();
      v90 = v104;
      v91 = v105;
      v92 = v106;
      v93 = v107;
      v86 = v100;
      v87 = v101;
      v88 = v102;
      v89 = v103;
      v82 = v96;
      v83 = v97;
      v84 = v98;
      v85 = v99;
      v80 = v94;
      v81 = v95;
      sub_1BE051904();
      KeyPath, v41, v42, v43, v44, v45, v46, v47;
      sub_1BD0DE53C(&v94, &qword_1EBD48C18, &unk_1BE0DE6B0);
      v110 = v76;
      v111 = v77;
      v112 = v78;
      v113 = v79;
      v108 = v74;
      v109 = v75;
      v48 = swift_getKeyPath();
      v70 = v110;
      v71 = v111;
      v72 = v112;
      v73 = v113;
      v68 = v108;
      v69 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
      sub_1BE051904();
      v48, v49, v50, v51, v52, v53, v54, v55;
      result = sub_1BD0DE53C(&v108, &unk_1EBD48C20, &qword_1BE0F3780);
      v56 = v65;
      v57 = v66;
      v58 = v67;
      v59 = v64;
      v60 = v62;
      *v64 = v63;
      v59[1] = v60;
      v59[2] = v19;
      v59[3] = v22;
      *(v59 + 32) = v30;
      v59[5] = v39;
      *(v59 + 3) = v56;
      v59[8] = v57;
      v59[9] = v58;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4FBC6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - v9;
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v4 + 104);
  v12(&v60 - v9, v11, v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v61 = v16;
    v62 = v15;

    v17 = *(v4 + 8);
    v17(v10, v3);
    if ((v2[14] & 1) == 0)
    {
      v19 = 0;
      v21 = 0;
      goto LABEL_6;
    }

    (v12)(v6, v11, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v21 = v20;

      v17(v6, v3);
LABEL_6:
      v22 = v2[11];
      v103 = v2[10];
      v104 = v22;
      v23 = v2[13];
      v105 = v2[12];
      v106 = v23;
      v24 = v2[7];
      v99 = v2[6];
      v100 = v24;
      v25 = v2[9];
      v101 = v2[8];
      v102 = v25;
      v26 = v2[3];
      v95 = v2[2];
      v96 = v26;
      v27 = v2[5];
      v97 = v2[4];
      v98 = v27;
      v28 = v2[1];
      v93 = *v2;
      v94 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
      MEMORY[0x1BFB3E970](v113);
      v29 = sub_1BD4F79E0();
      sub_1BD4FBC18(v113);
      v30 = *MEMORY[0x1E69B9838];
      v31 = v2[11];
      v89 = v2[10];
      v90 = v31;
      v32 = v2[13];
      v91 = v2[12];
      v92 = v32;
      v33 = v2[7];
      v85 = v2[6];
      v86 = v33;
      v34 = v2[9];
      v87 = v2[8];
      v88 = v34;
      v35 = v2[3];
      v81 = v2[2];
      v82 = v35;
      v36 = v2[5];
      v83 = v2[4];
      v84 = v36;
      v37 = v2[1];
      v79 = *v2;
      v80 = v37;
      v38 = v30;
      sub_1BE051914();
      KeyPath = swift_getKeyPath();
      v89 = v103;
      v90 = v104;
      v91 = v105;
      v92 = v106;
      v85 = v99;
      v86 = v100;
      v87 = v101;
      v88 = v102;
      v81 = v95;
      v82 = v96;
      v83 = v97;
      v84 = v98;
      v79 = v93;
      v80 = v94;
      sub_1BE051904();
      KeyPath, v40, v41, v42, v43, v44, v45, v46;
      sub_1BD0DE53C(&v93, &qword_1EBD48C18, &unk_1BE0DE6B0);
      v109 = v75;
      v110 = v76;
      v111 = v77;
      v112 = v78;
      v107 = v73;
      v108 = v74;
      v47 = swift_getKeyPath();
      v69 = v109;
      v70 = v110;
      v71 = v111;
      v72 = v112;
      v67 = v107;
      v68 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
      sub_1BE051904();
      v47, v48, v49, v50, v51, v52, v53, v54;
      result = sub_1BD0DE53C(&v107, &unk_1EBD48C20, &qword_1BE0F3780);
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v58 = v63;
      v59 = v61;
      *v63 = v62;
      v58[1] = v59;
      v58[2] = v19;
      v58[3] = v21;
      *(v58 + 32) = v29;
      v58[5] = v38;
      *(v58 + 3) = v55;
      v58[8] = v56;
      v58[9] = v57;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4FC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_identifier];
  *v8 = 0xD000000000000016;
  *(v8 + 1) = 0x80000001BE12CEB0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_serviceProviderProduct] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD4FC210(void (*a1)(void), void *a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v7 + 8))(v9, v6);
  v12 = [objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductItemsViewController) initWithProvisioningController:v10 context:v11 product:*(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product) serviceProviderProduct:*(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_serviceProviderProduct)];

  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController) = v12;
  v14 = v12;

  if (v14)
  {
    [v14 setFlowDelegate_];
    sub_1BE052434();
    v16 = v15;
    v17 = sub_1BE04BB74();
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v14 setReporter_];

    aBlock[4] = a1;
    v35 = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_114;
    v25 = _Block_copy(aBlock);
    v26 = v35;
    sub_1BE048964();
    v26, v27, v28, v29, v30, v31, v32, v33;
    [v14 preflightWithCompletion_];
    _Block_release(v25);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD4FC474()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4FC4B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4FC500()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD4FC530(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAB238, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD4FC824(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EducationalAnimationFactory();
  swift_allocObject();
  v4 = sub_1BDA4B3D8(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BDA4B648();
    if (v6)
    {
      v14 = v6;
      v15 = [v6 rootLayer];
      if (v15)
      {
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationFactory] = v5;
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationPackage] = v14;
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_rootLayer] = v15;
        v23 = v15;
        v36.receiver = v2;
        v36.super_class = type metadata accessor for EducationalMessageAnimationView();
        sub_1BE048964();
        v24 = v14;
        v25 = v23;
        v26 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        v27 = [v26 layer];
        [v27 addSublayer_];

        sub_1BDA4BDFC(v24);
        sub_1BD4FCAD4();

        v5, v28, v29, v30, v31, v32, v33, v34;
        return v26;
      }

      v5, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
    }
  }

  type metadata accessor for EducationalMessageAnimationView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1BD4FCAD4()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C78, &unk_1BE0DD200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B69E0;
  v1 = sub_1BE04D2A4();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_1BE052F94();
  swift_unknownObjectRelease();

  v0, v3, v4, v5, v6, v7, v8, v9;
}

id sub_1BD4FCBB4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EducationalMessageAnimationView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD4FCC68(char *a1, id a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v3 != v5)
  {
    sub_1BDA4BDFC(*&a1[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationPackage]);
  }
}

uint64_t sub_1BD4FCD3C(uint64_t a1, unint64_t a2, char a3)
{
  sub_1BE053D04();
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1BFB40DA0](v5);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (a2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD4FCE28(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1BFB40DA0](v3);

    return sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    if (v2 >> 60 == 15)
    {
      return sub_1BE053D24();
    }

    else
    {
      sub_1BE053D24();

      return sub_1BE04AAD4();
    }
  }
}

uint64_t sub_1BD4FCF00(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1BE053D04();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1BFB40DA0](v4);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D64();
}

void sub_1BD4FCFBC(uint64_t a1)
{
  v3 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(0);
  v4 = *(v3 + 24);
  v5 = *(v1 + v4);
  *(v1 + v4) = v5 ^ 1;
  if (*(v1 + *(v3 + 20) + 16))
  {
    if (*(v1 + *(v3 + 20) + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
      sub_1BE04B594();
      KeyPath, v7, v8, v9, v10, v11, v12, v13;
      v14 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
      if (v5 == [*(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) shareLastName])
      {
        v15 = swift_getKeyPath();
        sub_1BE04B594();
        v15, v16, v17, v18, v19, v20, v21, v22;
        v23 = &selRef_setShareLastName_;
LABEL_7:
        [*v14 *v23];
        sub_1BD217A8C();
      }
    }
  }

  else
  {
    v24 = swift_getKeyPath();
    sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
    sub_1BE04B594();
    v24, v25, v26, v27, v28, v29, v30, v31;
    v14 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
    if (v5 == [*(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) shareProfilePicture])
    {
      v32 = swift_getKeyPath();
      sub_1BE04B594();
      v32, v33, v34, v35, v36, v37, v38, v39;
      v23 = &selRef_setShareProfilePicture_;
      goto LABEL_7;
    }
  }

  PeerPaymentIdentityManager.commitUpdatesIfNeeded()();
}

uint64_t static NearbyPeerPaymentAppearanceSetting.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(0), v5 = *(v4 + 20), (sub_1BD508F34(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16))))
  {
    v6 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t NearbyPeerPaymentAppearanceSetting.hash(into:)(uint64_t a1)
{
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BE052294();
  v2 = v1 + *(type metadata accessor for NearbyPeerPaymentAppearanceSetting(0) + 20);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1BFB40DA0](v5);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v3 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D24();
}

uint64_t NearbyPeerPaymentAppearanceSetting.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BE052294();
  v1 = v0 + *(type metadata accessor for NearbyPeerPaymentAppearanceSetting(0) + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1BFB40DA0](v4);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  sub_1BE053D24();
  return sub_1BE053D64();
}

uint64_t sub_1BD4FD4D4(uint64_t a1, uint64_t a2)
{
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BE052294();
  v4 = v2 + *(a2 + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1BFB40DA0](v7);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v5 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D24();
}

uint64_t sub_1BD4FD5F4(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BE052294();
  v4 = v2 + *(a2 + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1BFB40DA0](v7);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v5 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  sub_1BE053D24();
  return sub_1BE053D64();
}

uint64_t sub_1BD4FD724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v6 = *(a3 + 20), (sub_1BD508F34(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16), *(a2 + v6), *(a2 + v6 + 8), *(a2 + v6 + 16))))
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *sub_1BD4FD7A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_1BD4FD7C0()
{
  v1 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView);
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EC0, &unk_1BE0DD718));
    v6 = v4;
    v7 = v0;
    v8 = sub_1BE04D354();
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView;
  *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView] = 0;
  v7 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider;
  *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_identityManager] = a2;
  v9 = a2;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0 && a1 != 2)
  {
    v10 = sub_1BD42E038(a1);
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView());
    v14 = sub_1BD4FF344(v10, v12);
    v15 = *&v3[v6];
    *&v3[v6] = v14;

    v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v17 = *&v3[v7];
    *&v3[v7] = v16;
  }

  v18 = sub_1BD42E2E4(a1);
  v20 = v19;
  v21 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView());
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer] = sub_1BD4FF9E0(v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CC0, qword_1BE0DD210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB80, &qword_1BE0BFDC8);
  v82 = v3;
  v22 = (type metadata accessor for NearbyPeerPaymentAppearanceSetting(0) - 8);
  v80 = *(*v22 + 72);
  v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1BE0B69E0;
  KeyPath = swift_getKeyPath();
  v85 = v9;
  sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = *&v9[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData];
  v33 = *&v9[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8];
  v83 = a1;
  v34 = v9;
  v35 = swift_getKeyPath();
  v85 = v34;
  sub_1BD030394(v32, v33);
  sub_1BE04B594();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v78 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  LOBYTE(v35) = [*&v34[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] shareProfilePicture];
  sub_1BE04AFD4();
  v43 = v79 + v23 + v22[7];
  *v43 = v32;
  *(v43 + 8) = v33;
  *(v43 + 16) = 0;
  *(v79 + v23 + v22[8]) = v35;
  *(inited + 40) = v79;
  *(inited + 48) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BE0B6CA0;
  v46 = *&v34[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName];
  v45 = *&v34[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName + 8];
  sub_1BE048C84();
  sub_1BE04AFD4();
  v47 = v44 + v23 + v22[7];
  *v47 = v46;
  *(v47 + 8) = v45;
  *(v47 + 16) = 1;
  *(v44 + v23 + v22[8]) = 1;
  v48 = v44 + v23 + v80;
  v49 = *&v34[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName];
  v50 = *&v34[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName + 8];
  v51 = swift_getKeyPath();
  v85 = v34;
  sub_1BE048C84();
  sub_1BE04B594();
  v51, v52, v53, v54, v55, v56, v57, v58;
  LOBYTE(v45) = [*&v34[v78] shareLastName];
  sub_1BE04AFD4();
  v59 = v48 + v22[7];
  *v59 = v49;
  *(v59 + 8) = v50;
  *(v59 + 16) = 2;
  *(v48 + v22[8]) = v45;
  *(inited + 56) = v44;
  v60 = sub_1BD1AC4E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CC8, &qword_1BE0DD288);
  swift_arrayDestroy();
  *&v82[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings] = v60;
  v84.receiver = v82;
  v84.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  v61 = objc_msgSendSuper2(&v84, sel_initWithNibName_bundle_, 0, 0);
  v62 = [v61 navigationItem];
  sub_1BD42E038(v83);
  v64 = v63;
  v65 = sub_1BE052404();
  v64, v66, v67, v68, v69, v70, v71, v72;
  [v62 setTitle_];

  if (_UISolariumFeatureFlagEnabled() && v83 != 2)
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v61 action:sel_cancel];
    v74 = [objc_opt_self() primaryTextColor];
    [v73 setTintColor_];

    [v73 setAccessibilityIdentifier_];
    v75 = [v61 navigationItem];
    v76 = v73;
    [v75 setRightBarButtonItem_];
  }

  return v61;
}

uint64_t type metadata accessor for NearbyPeerPaymentAppearanceSetting(uint64_t a1)
{
  result = qword_1EBD48CF8;
  if (!qword_1EBD48CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BD4FDEE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CD8, &qword_1BE0DD290);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v77 - v4;
  v6 = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  v80.receiver = v0;
  v80.super_class = v6;
  objc_msgSendSuper2(&v80, sel_viewDidLoad);
  v7 = *&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context];
  if (v7 == 2 || ([v0 setOverrideUserInterfaceStyle_], (_UISolariumFeatureFlagEnabled() & 1) == 0))
  {
    result = [v0 view];
    if (!result)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = result;
    v10 = [objc_opt_self() systemBackgroundColor];
    [v9 setBackgroundColor_];
  }

  v11 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider];
    if (v12)
    {
      v78 = v3;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v11[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
      v15 = *&v11[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
      v16 = *&v11[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction + 8];
      *v14 = sub_1BD466328;
      v14[1] = v13;
      sub_1BE048964();
      v17 = v12;
      v18 = v11;
      sub_1BD0D4744(v15, v16, v19, v20, v21, v22, v23, v24);
      v13, v25, v26, v27, v28, v29, v30, v31;
      result = [v1 &selRef_additionalViewBottomPadding];
      if (!result)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v32 = result;
      [result addSubview_];

      [v17 setAlpha_];
      v33 = [objc_opt_self() separatorColor];
      [v17 setBackgroundColor_];

      result = [v1 &selRef_additionalViewBottomPadding];
      if (!result)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v34 = result;
      [result addSubview_];

      v3 = v78;
    }
  }

  v35 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView];
  [v35 setDelegate_];
  v36 = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = sub_1BE052404();
  [v35 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v38];

  v39 = _UISolariumFeatureFlagEnabled();
  if (v7 == 2 || !v39)
  {
    v78 = v2;
    v41 = [objc_allocWithZone(v36) initWithStyle:0 reuseIdentifier:0];
    v42 = sub_1BD89B974();
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v40 sizeThatFits_];
    v44 = v43;
    result = [v1 view];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v45 = result;
    v46 = 24.0;
    if (v44 > 24.0)
    {
      v46 = v44;
    }

    v47 = v46 + 32.0;
    v48 = [result _shouldReverseLayoutDirection];

    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0.0;
    }

    if (v48)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v47;
    }

    [v35 setSeparatorInset_];

    v2 = v78;
  }

  else
  {
    v40 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor_];
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v51 = result;
  [result addSubview_];

  v52 = sub_1BD4FD7C0();
  sub_1BE04D374();

  sub_1BE04D344();
  v53 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings;
  swift_beginAccess();
  v54 = *&v1[v53];
  if (*(v54 + 16))
  {
    v55 = sub_1BD1494B0(0);
    if (v56)
    {
      v57 = *(*(v54 + 56) + 8 * v55);
      v79 = 0;
      sub_1BE048C84();
      sub_1BE04D334();
      v57, v58, v59, v60, v61, v62, v63, v64;
    }
  }

  v65 = *&v1[v53];
  if (*(v65 + 16))
  {
    v66 = sub_1BD1494B0(1);
    if (v67)
    {
      v68 = *(*(v65 + 56) + 8 * v66);
      v79 = 1;
      sub_1BE048C84();
      sub_1BE04D334();
      v68, v69, v70, v71, v72, v73, v74, v75;
    }
  }

  v76 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource];
  sub_1BE04D364();

  return (*(v3 + 8))(v5, v2);
}

id sub_1BD4FE520(uint64_t a1, double a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v58.receiver = v2;
  v58.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  objc_msgSendSuper2(&v58, sel_viewDidLayoutSubviews);
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  [v3 bounds];
  x = v5;
  y = v7;
  v10 = v9;
  height = v11;

  v13 = *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView];
  if (!v13)
  {
    return [*&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
  }

  v14 = *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider];
  if (!v14)
  {
    return [*&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
  }

  v15 = v14;
  v16 = v13;
  result = [v2 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;

    [v16 sizeThatFits_];
    v24 = v23;
    v26 = v25;
    v27 = PKContentAlignmentMake();
    v28.n128_u64[0] = v24;
    v29.n128_f64[0] = v26;
    v30.n128_f64[0] = x;
    v31.n128_f64[0] = y;
    v32.n128_f64[0] = v10;
    v33.n128_f64[0] = height;
    PKSizeAlignedInRect(v27, v28, v29, v30, v31, v32, v33, v34);
    [v16 setFrame_];
    memset(&slice, 0, sizeof(slice));
    memset(&v56, 0, sizeof(v56));
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = v10;
    v60.size.height = height;
    CGRectDivide(v60, &slice, &v56, v26, CGRectMinYEdge);
    origin = v56.origin;
    size = v56.size;
    result = [v2 view];
    if (result)
    {
      v37 = result;
      [result bounds];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v61.origin.x = v39;
      v61.origin.y = v41;
      v61.size.width = v43;
      v61.size.height = v45;
      Width = CGRectGetWidth(v61);
      v47 = PKUIPixelLength();
      v48 = PKContentAlignmentMake();
      v49.n128_f64[0] = Width;
      v50.n128_f64[0] = v47;
      v52.n128_u64[0] = *&origin.y;
      v51.n128_u64[0] = *&origin;
      v54.n128_u64[0] = *&size.height;
      v53.n128_u64[0] = *&size;
      PKSizeAlignedInRect(v48, v49, v50, v51, v52, v53, v54, v55);
      [v15 setFrame_];
      memset(&slice, 0, sizeof(slice));
      memset(&v56, 0, sizeof(v56));
      v62.origin = origin;
      v62.size = size;
      CGRectDivide(v62, &slice, &v56, v47, CGRectMinYEdge);

      y = v56.origin.y;
      x = v56.origin.x;
      height = v56.size.height;
      v10 = v56.size.width;
      return [*&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD4FE83C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = sub_1BE04B404();
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_28;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (!*(v14 + 16) || (v15 = sub_1BD1494B0(v12), (v16 & 1) == 0))
  {
LABEL_28:
    v44 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v44 animated:1];

    return;
  }

  v50 = a1;
  v17 = *(*(v14 + 56) + 8 * v15);
  sub_1BE048C84();
  v18 = sub_1BE04B3F4();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v18 >= v17[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v49 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1BD50955C(v17 + v49 + *(v5 + 72) * v18, v7, type metadata accessor for NearbyPeerPaymentAppearanceSetting);
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BD5095C4(v7, v10, type metadata accessor for NearbyPeerPaymentAppearanceSetting);
  a1 = v50;
  if (v10[v4[5] + 16] == 1)
  {
    goto LABEL_27;
  }

  v26 = sub_1BE04B3C4();
  v4 = [a1 cellForRowAtIndexPath_];

  if (!v4)
  {
    goto LABEL_27;
  }

  type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    goto LABEL_26;
  }

  v7 = v27;
  v28 = sub_1BE04B3F4();
  v46 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_identityManager);
  v47 = v28;
  swift_beginAccess();
  LODWORD(v48) = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v2 + v13);
  v29 = v51;
  *(v2 + v13) = 0x8000000000000000;
  v31 = sub_1BD1494B0(v12);
  v32 = *(v29 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(a1) = v30;
  if (*(v29 + 24) >= v34)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v30)
    {
      while (1)
      {
LABEL_19:
        v37 = *(v51 + 56);
        v48 = v31;
        v12 = *(v37 + 8 * v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_32:
          v12 = sub_1BD4FFFF4(v12);
        }

        a1 = v50;
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v47 < *(v12 + 16))
        {
          sub_1BD4FCFBC(v46);
          v38 = v51;
          *(*(v51 + 56) + 8 * v48) = v12;
          *(v2 + v13) = v38;
          swift_endAccess();
          v39 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
          swift_beginAccess();
          v40 = v7[v39];
          v7[v39] = v40 ^ 1;
          v41 = *&v7[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
          if (v40)
          {
            v42 = sub_1BD89BB38();
          }

          else
          {
            v42 = sub_1BD89B974();
          }

          v43 = v42;
          [v41 setImage_];

          v4 = v43;
LABEL_26:

LABEL_27:
          sub_1BD509138(v10);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        v45 = v31;
        sub_1BD50708C();
        v31 = v45;
        if ((a1 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  sub_1BD5021DC(v34, v48);
  v35 = sub_1BD1494B0(v12);
  if ((a1 & 1) == (v36 & 1))
  {
    v31 = v35;
    if (a1)
    {
      goto LABEL_19;
    }

LABEL_36:
    __break(1u);
  }

  sub_1BE053C14();
  __break(1u);
}

double sub_1BD4FED60(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) == 2 || a2 != 0)
  {
    return 20.0;
  }

  v4 = 0.0;
  if (_UISolariumFeatureFlagEnabled())
  {
    return 20.0;
  }

  return v4;
}

id sub_1BD4FEDF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && a2 == 0;
  if (v3 && (_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  }

  else
  {
    return 0;
  }
}

double sub_1BD4FEEF0(void *a1, uint64_t a2)
{
  result = 0.0;
  if (a2 == 1)
  {
    v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
    [a1 bounds];
    [v4 sizeThatFits_];
    return v5;
  }

  return result;
}

void *sub_1BD4FEFE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
  v4 = v3;
  return v3;
}

void sub_1BD4FF074(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider);
  if (v2)
  {
    v6 = v2;
    [a1 contentOffset];
    v4 = 0.0;
    if (v5 > 0.0)
    {
      v4 = 1.0;
    }

    [v6 setAlpha_];
  }
}

id NearbyPeerPaymentAppearancePreferencesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

char *sub_1BD4FF344(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton;
  *&v2[v5] = [objc_opt_self() buttonWithType_];
  v6 = &v2[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
  v7 = type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView();
  *v6 = 0;
  *(v6 + 1) = 0;
  v28.receiver = v2;
  v28.super_class = v7;
  v8 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel;
  v10 = *&v8[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel];
  v11 = v8;
  v12 = v10;
  v13 = sub_1BE052404();
  a2, v14, v15, v16, v17, v18, v19, v20;
  [v12 setText_];

  v21 = *MEMORY[0x1E69DDDC0];
  v22 = *MEMORY[0x1E69DDC20];
  v23 = *MEMORY[0x1E69DB970];
  v24 = *&v8[v9];
  v25 = PKFontForDefaultDesign(v21, v22, v23);
  [v24 setFont_];

  [*&v8[v9] setAccessibilityIdentifier_];
  [v11 addSubview_];
  v26 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton;
  [*&v11[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton] addTarget:v11 action:sel_closeTapped forControlEvents:64];
  [*&v11[v26] setAccessibilityIdentifier_];
  [v11 addSubview_];
  [v11 setAccessibilityIdentifier_];

  return v11;
}

id sub_1BD4FF63C()
{
  v30 = *MEMORY[0x1E69E9840];
  v29.receiver = v0;
  v29.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v27, 0, sizeof(v27));
  CGRectDivide(v31, &slice, &v27, 20.0, CGRectMinXEdge);
  v32 = v27;
  memset(&slice, 0, sizeof(slice));
  memset(&v27, 0, sizeof(v27));
  CGRectDivide(v32, &slice, &v27, 20.0, CGRectMaxXEdge);
  origin = v27.origin;
  size = v27.size;
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton];
  [v3 sizeThatFits_];
  v5 = v4;
  v7 = v6;
  v8 = PKContentAlignmentMake();
  v9.n128_f64[0] = v5;
  v10.n128_u64[0] = v7;
  v12.n128_u64[0] = *&origin.y;
  v11.n128_u64[0] = *&origin;
  v14.n128_u64[0] = *&size.height;
  v13.n128_u64[0] = *&size;
  PKSizeAlignedInRect(v8, v9, v10, v11, v12, v13, v14, v15);
  [v3 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v27, 0, sizeof(v27));
  v33.origin = origin;
  v33.size = size;
  CGRectDivide(v33, &slice, &v27, v5 + 20.0, CGRectMaxXEdge);
  v16 = v27.origin;
  v17 = v27.size;
  v18 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel];
  [v18 sizeThatFits_];
  v20.n128_u64[0] = *&v16.y;
  v19.n128_u64[0] = *&v16;
  v22.n128_u64[0] = *&v17.height;
  v21.n128_u64[0] = *&v17;
  PKSizeAlignedInRect(0x100000000, v23, v24, v19, v20, v21, v22, v25);
  return [v18 setFrame_];
}

char *sub_1BD4FF9E0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v28.receiver = v2;
  v28.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView();
  v5 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label;
  v7 = *&v5[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label];
  v8 = v5;
  v9 = v7;
  v10 = sub_1BE052404();
  a2, v11, v12, v13, v14, v15, v16, v17;
  [v9 setText_];

  v18 = *&v5[v6];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 secondaryLabelColor];
  [v20 setTextColor_];

  v22 = *&v5[v6];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x1E69DDD28];
  v25 = v22;
  v26 = [v23 preferredFontForTextStyle_];
  [v25 setFont_];

  [*&v5[v6] setNumberOfLines_];
  [*&v5[v6] setAccessibilityIdentifier_];
  [v8 addSubview_];

  return v8;
}

id sub_1BD4FFC48()
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v17, 0, sizeof(v17));
  CGRectDivide(v21, &slice, &v17, 20.0, CGRectMinXEdge);
  v22 = v17;
  memset(&slice, 0, sizeof(slice));
  memset(&v17, 0, sizeof(v17));
  CGRectDivide(v22, &slice, &v17, 20.0, CGRectMaxXEdge);
  v23 = v17;
  memset(&slice, 0, sizeof(slice));
  memset(&v17, 0, sizeof(v17));
  CGRectDivide(v23, &slice, &v17, 8.0, CGRectMinYEdge);
  v24 = v17;
  memset(&slice, 0, sizeof(slice));
  memset(&v17, 0, sizeof(v17));
  CGRectDivide(v24, &slice, &v17, 8.0, CGRectMaxYEdge);
  origin = v17.origin;
  size = v17.size;
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label];
  [v3 sizeThatFits_];
  v5 = v4;
  v7 = v6;
  v8 = PKContentAlignmentMake();
  v9.n128_u64[0] = v5;
  v10.n128_u64[0] = v7;
  v12.n128_u64[0] = *&origin.y;
  v11.n128_u64[0] = *&origin;
  v14.n128_u64[0] = *&size.height;
  v13.n128_u64[0] = *&size;
  PKSizeAlignedInRect(v8, v9, v10, v11, v12, v13, v14, v15);
  return [v3 setFrame_];
}

id sub_1BD4FFEBC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD50001C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BE053704();
  }

  return sub_1BE053884();
}

void sub_1BD5000BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80, &unk_1BE0BDBB0);
  v41 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v5 + 56) + 32 * v27);
      if (v41)
      {
        sub_1BD1B6140(v31, v42);
      }

      else
      {
        sub_1BD038CD0(v31, v42);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v32 = sub_1BE053D64();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      sub_1BD1B6140(v42, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_34:
  *v3 = v14;
}

void sub_1BD500374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018, &qword_1BE0BDD68);
  v53 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v51 = v2;
    v52 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v54 = (v19 - 1) & v19;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v5 + 56);
      v29 = *(*(v5 + 48) + 8 * v27);
      v30 = (v28 + 16 * v27);
      v31 = v30[1];
      v55 = *v30;
      if ((v53 & 1) == 0)
      {
        v32 = v29;
        sub_1BE048C84();
      }

      sub_1BE052434();
      v34 = v33;
      sub_1BE053D04();
      sub_1BE052524();
      v35 = sub_1BE053D64();
      v34, v36, v37, v38, v39, v40, v41, v42;
      v43 = -1 << *(v14 + 32);
      v44 = v35 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v21 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v21 + 8 * v45);
          if (v49 != -1)
          {
            v22 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v44) & ~*(v21 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v29;
      v23 = (*(v14 + 56) + 16 * v22);
      v19 = v54;
      *v23 = v55;
      v23[1] = v31;
      ++*(v14 + 16);
      v5 = v52;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v54 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v51;
      goto LABEL_33;
    }

    v50 = 1 << *(v5 + 32);
    v3 = v51;
    if (v50 >= 64)
    {
      bzero(v16, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v50;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD500648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20, &unk_1BE0DD6B0);
  v39 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 56) + 8 * v26);
      v40 = *(*(v5 + 48) + 16 * v26);
      v28 = *(*(v5 + 48) + 16 * v26 + 8);
      if ((v39 & 1) == 0)
      {
        sub_1BE048C84();
        v29 = v27;
      }

      sub_1BE053D04();
      sub_1BE053D24();
      if (v28)
      {
        sub_1BE052524();
      }

      v30 = sub_1BE053D64();
      v31 = -1 << *(v14 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 16 * v22) = v40;
      *(*(v14 + 56) + 8 * v22) = v27;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_35:
  *v3 = v14;
}

void sub_1BD50090C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = v26 | (v15 << 6);
      v30 = *(v5 + 48) + 40 * v29;
      if (v4)
      {
        v31 = *v30;
        v32 = *(v30 + 16);
        v46 = *(v30 + 32);
        v44 = v31;
        v45 = v32;
        sub_1BD1B6140((*(v5 + 56) + 32 * v29), v43);
      }

      else
      {
        sub_1BD149C8C(v30, &v44);
        sub_1BD038CD0(*(v5 + 56) + 32 * v29, v43);
      }

      v33 = sub_1BE0537A4();
      v34 = -1 << *(v14 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = *(v14 + 48) + 40 * v22;
      v24 = v44;
      v25 = v45;
      *(v23 + 32) = v46;
      *v23 = v24;
      *(v23 + 16) = v25;
      sub_1BD1B6140(v43, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
    v3 = v42;
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *v3 = v14;
}

void sub_1BD500BC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v60 = sub_1BE0493F4();
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE049B04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EE0, &unk_1BE0BDD10);
  v55 = v4;
  v11 = sub_1BE0539F4();
  v19 = v11;
  if (*(v10 + 16))
  {
    v20 = 0;
    v21 = v8;
    v22 = (v10 + 64);
    v23 = 1 << *(v10 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v10 + 64);
    v26 = (v23 + 63) >> 6;
    v51 = (v21 + 16);
    v52 = v21;
    v49 = v2;
    v50 = v5 + 16;
    v53 = v10;
    v54 = v5;
    v56 = (v5 + 32);
    v57 = (v21 + 32);
    v27 = v11 + 64;
    v28 = v21;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v33 = v30 | (v20 << 6);
      v34 = *(v10 + 48);
      v58 = *(v28 + 72);
      v35 = v34 + v58 * v33;
      if (v55)
      {
        (*v57)(v61, v35, v7);
        v36 = *(v10 + 56);
        v37 = *(v54 + 72);
        (*(v54 + 32))(v59, v36 + v37 * v33, v60);
      }

      else
      {
        (*v51)(v61, v35, v7);
        v38 = *(v10 + 56);
        v37 = *(v54 + 72);
        (*(v54 + 16))(v59, v38 + v37 * v33, v60);
      }

      sub_1BD509710(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
      v39 = sub_1BE052284();
      v40 = -1 << *(v19 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v27 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v27 + 8 * v42);
          if (v46 != -1)
          {
            v29 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v41) & ~*(v27 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      (*v57)((*(v19 + 48) + v58 * v29), v61, v7);
      (*v56)(*(v19 + 56) + v37 * v29, v59, v60);
      ++*(v19 + 16);
      v28 = v52;
      v10 = v53;
    }

    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v26)
      {
        break;
      }

      v32 = v22[v20];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v3 = v49;
      goto LABEL_34;
    }

    v47 = 1 << *(v10 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v22, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v47;
    }

    *(v10 + 16) = 0;
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
LABEL_34:
  *v3 = v19;
}

void sub_1BD50106C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BE0492B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF0, &unk_1BE0DD730);
  v47 = v4;
  v10 = sub_1BE0539F4();
  v18 = v10;
  if (*(v9 + 16))
  {
    v51 = v8;
    v43 = v2;
    v19 = 0;
    v20 = (v9 + 64);
    v21 = 1 << *(v9 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v9 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v9;
    v46 = v6;
    v48 = (v6 + 32);
    v25 = v10 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v9 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v5);
        v49 = *(*(v9 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v5);
        v49 = *(*(v9 + 56) + 8 * v30);
        sub_1BE048C84();
      }

      sub_1BD509710(&qword_1EBD3A378, MEMORY[0x1E6967728], MEMORY[0x1E6967730]);
      v33 = sub_1BE052284();
      v34 = -1 << *(v18 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v48)((*(v18 + 48) + v50 * v26), v51, v5);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v9 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {
      v9, v11, v12, v13, v14, v15, v16, v17;
      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

  v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_34:
  *v3 = v18;
}

void sub_1BD501470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8, &qword_1BE0BDCD0);
  v45 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v44 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = 16 * (v26 | (v15 << 6));
      v30 = (*(v5 + 48) + v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = (*(v5 + 56) + v29);
      v34 = v33[1];
      v46 = *v33;
      if ((v45 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v35 = sub_1BE053D64();
      v36 = -1 << *(v14 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = 16 * v22;
      v24 = (*(v14 + 48) + v23);
      *v24 = v31;
      v24[1] = v32;
      v25 = (*(v14 + 56) + v23);
      *v25 = v46;
      v25[1] = v34;
      ++*(v14 + 16);
      v5 = v44;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD501744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E58, &qword_1BE0DD6E0);
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = *(*(v5 + 56) + 8 * v26);
      if ((v4 & 1) == 0)
      {
        sub_1BE048C84();
      }

      v29 = sub_1BE053CF4();
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      *(*(v14 + 56) + 8 * v22) = v28;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD5019F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v61 = sub_1BE04C164();
  v5 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E40, &qword_1BE0DD6D0);
  v59 = v4;
  v13 = sub_1BE0539F4();
  v21 = v13;
  if (*(v12 + 16))
  {
    v52 = v2;
    v22 = 0;
    v23 = (v12 + 64);
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v12 + 64);
    v27 = (v24 + 63) >> 6;
    v57 = (v5 + 48);
    v53 = (v5 + 8);
    v54 = (v5 + 32);
    v28 = v13 + 64;
    v63 = v11;
    v55 = v12;
    while (1)
    {
      if (!v26)
      {
        v31 = v22;
        while (1)
        {
          v22 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v22 >= v27)
          {
            break;
          }

          v32 = v23[v22];
          ++v31;
          if (v32)
          {
            v30 = __clz(__rbit64(v32));
            v26 = (v32 - 1) & v32;
            goto LABEL_15;
          }
        }

        if ((v59 & 1) == 0)
        {
          v12, v14, v15, v16, v17, v18, v19, v20;
          v3 = v52;
          goto LABEL_42;
        }

        v51 = 1 << *(v12 + 32);
        v3 = v52;
        if (v51 >= 64)
        {
          bzero(v23, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v23 = -1 << v51;
        }

        *(v12 + 16) = 0;
        break;
      }

      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_15:
      v33 = v30 | (v22 << 6);
      v34 = *(v58 + 72);
      v35 = *(v12 + 48) + v34 * v33;
      v36 = v63;
      if (v59)
      {
        sub_1BD5095C4(v35, v63, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v62 = *(*(v12 + 56) + 8 * v33);
      }

      else
      {
        sub_1BD50955C(v35, v63, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v62 = *(*(v12 + 56) + 8 * v33);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      v37 = v60;
      sub_1BD50955C(v36, v60, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      v38 = (*v57)(v37, 3, v61);
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v42 = 2;
        }

        else
        {
          v42 = 3;
        }
      }

      else
      {
        if (!v38)
        {
          v39 = v56;
          v40 = v61;
          (*v54)(v56, v60, v61);
          MEMORY[0x1BFB40DA0](1);
          sub_1BD509710(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
          sub_1BE052294();
          v41 = v40;
          v12 = v55;
          (*v53)(v39, v41);
          goto LABEL_26;
        }

        v42 = 0;
      }

      MEMORY[0x1BFB40DA0](v42);
LABEL_26:
      v43 = sub_1BE053D64();
      v44 = -1 << *(v21 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v28 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v28 + 8 * v46);
          if (v50 != -1)
          {
            v29 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v45) & ~*(v28 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      sub_1BD5095C4(v63, *(v21 + 48) + v34 * v29, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      *(*(v21 + 56) + 8 * v29) = v62;
      ++*(v21 + 16);
    }
  }

  v12, v14, v15, v16, v17, v18, v19, v20;
LABEL_42:
  *v3 = v21;
}

void sub_1BD501F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0, &qword_1BE0BDCF0);
  v42 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v42 & 1) == 0)
      {
        sub_1BE048C84();
        swift_unknownObjectRetain();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v32 = sub_1BE053D64();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD5021DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8, &qword_1BE0DD710);
  v38 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + v26);
      v28 = *(*(v5 + 56) + 8 * v26);
      if ((v38 & 1) == 0)
      {
        sub_1BE048C84();
      }

      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v27);
      v29 = sub_1BE053D64();
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + v22) = v27;
      *(*(v14 + 56) + 8 * v22) = v28;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD502480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90, &qword_1BE0BDCB0);
  v47 = v4;
  v10 = sub_1BE0539F4();
  v18 = v10;
  if (*(v9 + 16))
  {
    v51 = v8;
    v43 = v2;
    v19 = 0;
    v20 = (v9 + 64);
    v21 = 1 << *(v9 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v9 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v9;
    v46 = v6;
    v48 = (v6 + 32);
    v25 = v10 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v9 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v5);
        v49 = *(*(v9 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v5);
        v49 = *(*(v9 + 56) + 8 * v30);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v33 = sub_1BE052284();
      v34 = -1 << *(v18 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v48)((*(v18 + 48) + v50 * v26), v51, v5);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v9 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {
      v9, v11, v12, v13, v14, v15, v16, v17;
      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

  v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_34:
  *v3 = v18;
}

void sub_1BD502884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v60 = sub_1BE0495A4();
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA0, &qword_1BE0BDCC0);
  v55 = v4;
  v11 = sub_1BE0539F4();
  v19 = v11;
  if (*(v10 + 16))
  {
    v20 = 0;
    v21 = v8;
    v22 = (v10 + 64);
    v23 = 1 << *(v10 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v10 + 64);
    v26 = (v23 + 63) >> 6;
    v51 = (v21 + 16);
    v52 = v21;
    v49 = v2;
    v50 = v5 + 16;
    v53 = v10;
    v54 = v5;
    v56 = (v5 + 32);
    v57 = (v21 + 32);
    v27 = v11 + 64;
    v28 = v21;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v33 = v30 | (v20 << 6);
      v34 = *(v10 + 48);
      v58 = *(v28 + 72);
      v35 = v34 + v58 * v33;
      if (v55)
      {
        (*v57)(v61, v35, v7);
        v36 = *(v10 + 56);
        v37 = *(v54 + 72);
        (*(v54 + 32))(v59, v36 + v37 * v33, v60);
      }

      else
      {
        (*v51)(v61, v35, v7);
        v38 = *(v10 + 56);
        v37 = *(v54 + 72);
        (*(v54 + 16))(v59, v38 + v37 * v33, v60);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v39 = sub_1BE052284();
      v40 = -1 << *(v19 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v27 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v27 + 8 * v42);
          if (v46 != -1)
          {
            v29 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v41) & ~*(v27 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      (*v57)((*(v19 + 48) + v58 * v29), v61, v7);
      (*v56)(*(v19 + 56) + v37 * v29, v59, v60);
      ++*(v19 + 16);
      v28 = v52;
      v10 = v53;
    }

    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v26)
      {
        break;
      }

      v32 = v22[v20];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v3 = v49;
      goto LABEL_34;
    }

    v47 = 1 << *(v10 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v22, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v47;
    }

    *(v10 + 16) = 0;
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
LABEL_34:
  *v3 = v19;
}

void sub_1BD502D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E70, &qword_1BE0DD6F8);
  v41 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v28 = 16 * (v25 | (v15 << 6));
      v29 = (*(v5 + 48) + v28);
      v30 = *v29;
      v31 = v29[1];
      v42 = *(*(v5 + 56) + v28);
      if ((v41 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BD041A38(v42, *(&v42 + 1));
      }

      sub_1BE053D04();
      sub_1BE052524();
      v32 = sub_1BE053D64();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = 16 * v22;
      v24 = (*(v14 + 48) + v23);
      *v24 = v30;
      v24[1] = v31;
      *(*(v14 + 56) + v23) = v42;
      ++*(v14 + 16);
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD503038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v6;
  v8 = sub_1BE0539F4();
  v16 = v8;
  if (*(v7 + 16))
  {
    v43 = v7;
    v17 = 0;
    v18 = (v7 + 64);
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v8 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = (*(v7 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(*(v7 + 56) + 8 * v29);
      if ((v44 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v34 = sub_1BE053D64();
      v35 = -1 << *(v16 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v31;
      v25[1] = v32;
      *(*(v16 + 56) + 8 * v24) = v33;
      ++*(v16 + 16);
      v7 = v43;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      v5 = v4;
      goto LABEL_33;
    }

    v42 = 1 << *(v7 + 32);
    v5 = v4;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v7 + 16) = 0;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_33:
  *v5 = v16;
}

void sub_1BD50333C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0, &unk_1BE0DD680);
  v42 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v42 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048964();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v32 = sub_1BE053D64();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD5035E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90, &qword_1BE0BDC90);
  v45 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v44 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = (*(v5 + 48) + 16 * v28);
      v30 = v29[1];
      v49 = *v29;
      v31 = *(v5 + 56) + 48 * v28;
      v32 = *(v31 + 8);
      v47 = *v31;
      v48 = *(v31 + 16);
      v33 = *(v31 + 32);
      v46 = *(v31 + 40);
      if ((v45 & 1) == 0)
      {
        v34 = v33;
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v35 = sub_1BE053D64();
      v36 = -1 << *(v14 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v49;
      v23[1] = v30;
      v24 = *(v14 + 56) + 48 * v22;
      *v24 = v47;
      *(v24 + 8) = v32;
      *(v24 + 16) = v48;
      *(v24 + 32) = v33;
      *(v24 + 40) = v46;
      ++*(v14 + 16);
      v5 = v44;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1BD5038EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_1BE0539F4();
  v16 = v8;
  if (*(v7 + 16))
  {
    v40 = v5;
    v17 = 0;
    v18 = (v7 + 64);
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v8 + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(*(v7 + 48) + 8 * v28);
      v30 = *(*(v7 + 56) + 8 * v28);
      if ((v6 & 1) == 0)
      {
        sub_1BE048964();
      }

      v31 = sub_1BE053CF4();
      v32 = -1 << *(v16 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v29;
      *(*(v16 + 56) + 8 * v24) = v30;
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      v5 = v40;
      goto LABEL_33;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero((v7 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_33:
  *v5 = v16;
}

void sub_1BD503B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0, &unk_1BE0DD660);
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = *(*(v5 + 56) + 8 * v26);
      v29 = sub_1BE053CF4();
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      *(*(v14 + 56) + 8 * v22) = v28;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
    v3 = v38;
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *v3 = v14;
}

void sub_1BD503E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v51 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v55 = v10;
  v14 = sub_1BE0539F4();
  v22 = v14;
  if (*(v13 + 16))
  {
    v52 = v6;
    v53 = v13;
    v23 = 0;
    v24 = (v13 + 64);
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v13 + 64);
    v28 = (v25 + 63) >> 6;
    v29 = v14 + 64;
    while (v27)
    {
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_15:
      v35 = v32 | (v23 << 6);
      v36 = *(v13 + 56);
      v37 = (*(v13 + 48) + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v54 + 72);
      v41 = v36 + v40 * v35;
      if (v55)
      {
        sub_1BD5095C4(v41, v56, v57);
      }

      else
      {
        sub_1BD50955C(v41, v56, v57);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v42 = sub_1BE053D64();
      v43 = -1 << *(v22 + 32);
      v44 = v42 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v29 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v29 + 8 * v45);
          if (v49 != -1)
          {
            v30 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v30 = __clz(__rbit64((-1 << v44) & ~*(v29 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v31 = (*(v22 + 48) + 16 * v30);
      *v31 = v39;
      v31[1] = v38;
      sub_1BD5095C4(v56, *(v22 + 56) + v40 * v30, v57);
      ++*(v22 + 16);
      v13 = v53;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v23 >= v28)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v27 = (v34 - 1) & v34;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {
      v13, v15, v16, v17, v18, v19, v20, v21;
      v9 = v52;
      goto LABEL_34;
    }

    v50 = 1 << *(v13 + 32);
    v9 = v52;
    if (v50 >= 64)
    {
      bzero(v24, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v50;
    }

    *(v13 + 16) = 0;
  }

  v13, v15, v16, v17, v18, v19, v20, v21;
LABEL_34:
  *v9 = v22;
}

void sub_1BD50415C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v6;
  v8 = sub_1BE0539F4();
  v16 = v8;
  if (*(v7 + 16))
  {
    v44 = v7;
    v17 = 0;
    v18 = (v7 + 64);
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v8 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = (*(v7 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(*(v7 + 56) + 8 * v29);
      if ((v45 & 1) == 0)
      {
        sub_1BE048C84();
        v34 = v33;
      }

      sub_1BE053D04();
      sub_1BE052524();
      v35 = sub_1BE053D64();
      v36 = -1 << *(v16 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v31;
      v25[1] = v32;
      *(*(v16 + 56) + 8 * v24) = v33;
      ++*(v16 + 16);
      v7 = v44;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      v5 = v4;
      goto LABEL_33;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v4;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_33:
  *v5 = v16;
}

void sub_1BD504420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v58 = a3(0);
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v55 = v9;
  v13 = sub_1BE0539F4();
  v21 = v13;
  if (*(v12 + 16))
  {
    v22 = 0;
    v23 = (v12 + 64);
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v12 + 64);
    v27 = (v24 + 63) >> 6;
    v51 = v5;
    v52 = (v10 + 16);
    v53 = v12;
    v54 = v10;
    v56 = (v10 + 32);
    v28 = v13 + 64;
    while (v26)
    {
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_15:
      v34 = v31 | (v22 << 6);
      v35 = *(v12 + 56);
      v36 = (*(v12 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = *(v54 + 72);
      v40 = v35 + v39 * v34;
      if (v55)
      {
        (*v56)(v57, v40, v58);
      }

      else
      {
        (*v52)(v57, v40, v58);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      v41 = sub_1BE053D64();
      v42 = -1 << *(v21 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v28 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v28 + 8 * v44);
          if (v48 != -1)
          {
            v29 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v43) & ~*(v28 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v30 = (*(v21 + 48) + 16 * v29);
      *v30 = v38;
      v30[1] = v37;
      (*v56)((*(v21 + 56) + v39 * v29), v57, v58);
      ++*(v21 + 16);
      v12 = v53;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v22 >= v27)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v26 = (v33 - 1) & v33;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {
      v12, v14, v15, v16, v17, v18, v19, v20;
      v8 = v51;
      goto LABEL_34;
    }

    v49 = 1 << *(v12 + 32);
    v8 = v51;
    if (v49 >= 64)
    {
      bzero(v23, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v49;
    }

    *(v12 + 16) = 0;
  }

  v12, v14, v15, v16, v17, v18, v19, v20;
LABEL_34:
  *v8 = v21;
}

void sub_1BD5047A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70, &qword_1BE0BDB60);
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = *(v5 + 56) + 40 * v26;
      if (v4)
      {
        sub_1BD1B6150(v28, v39);
      }

      else
      {
        sub_1BD509500(v28, v39);
      }

      v29 = sub_1BE053CF4();
      v30 = -1 << *(v14 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v27;
      sub_1BD1B6150(v39, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
    v3 = v38;
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *v3 = v14;
}

void sub_1BD504A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0, &unk_1BE0DD670);
  v51 = v4;
  v11 = sub_1BE0539F4();
  v19 = v11;
  if (*(v10 + 16))
  {
    v46 = v2;
    v20 = 0;
    v21 = (v10 + 64);
    v22 = 1 << *(v10 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v10 + 64);
    v25 = (v22 + 63) >> 6;
    v47 = (v8 + 16);
    v48 = v8;
    v52 = (v8 + 32);
    v26 = v11 + 64;
    v49 = v10;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v20 << 6);
      v32 = *(v10 + 48);
      v53 = *(v8 + 72);
      v33 = v32 + v53 * v31;
      if (v51)
      {
        (*v52)(v54, v33, v7);
        v34 = *(v10 + 56);
        v35 = *(v50 + 72);
        sub_1BD5095C4(v34 + v35 * v31, v55, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      }

      else
      {
        (*v47)(v54, v33, v7);
        v36 = *(v10 + 56);
        v35 = *(v50 + 72);
        sub_1BD50955C(v36 + v35 * v31, v55, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v37 = sub_1BE052284();
      v38 = -1 << *(v19 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v52)((*(v19 + 48) + v53 * v27), v54, v7);
      sub_1BD5095C4(v55, *(v19 + 56) + v35 * v27, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      ++*(v19 + 16);
      v8 = v48;
      v10 = v49;
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v3 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
LABEL_34:
  *v3 = v19;
}

void sub_1BD504EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60, &qword_1BE0BDC80);
  v51 = v4;
  v6 = sub_1BE0539F4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v49 = v2;
    v50 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v5 + 56);
      v28 = *(*(v5 + 48) + 8 * v26);
      v29 = (v27 + 32 * v26);
      if (v51)
      {
        sub_1BD1B6140(v29, v52);
      }

      else
      {
        sub_1BD038CD0(v29, v52);
        v30 = v28;
      }

      sub_1BE052434();
      v32 = v31;
      sub_1BE053D04();
      sub_1BE052524();
      v33 = sub_1BE053D64();
      v32, v34, v35, v36, v37, v38, v39, v40;
      v41 = -1 << *(v14 + 32);
      v42 = v33 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v21 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v21 + 8 * v43);
          if (v47 != -1)
          {
            v22 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v42) & ~*(v21 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v28;
      sub_1BD1B6140(v52, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
      v5 = v50;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v49;
      goto LABEL_34;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v16, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_34:
  *v3 = v14;
}

void sub_1BD505194(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v11 = sub_1BE053D64();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1BD505344(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1BE052434();
      v11 = v10;
      sub_1BE053D04();
      v12 = v9;
      sub_1BE052524();
      v13 = sub_1BE053D64();
      v11, v14, v15, v16, v17, v18, v19, v20;

      v21 = v13 & v7;
      if (v3 >= v8)
      {
        if (v21 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v21 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v21)
      {
LABEL_10:
        v22 = *(a2 + 48);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 16 * v3);
        v27 = (v25 + 16 * v6);
        if (v3 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void sub_1BD50550C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v10 = sub_1BE053D64();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1BD5056BC(int64_t a1, uint64_t a2)
{
  v38 = sub_1BE04AFE4();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1BE053684();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1BE052284();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1BD505A0C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v10 = sub_1BE053D64();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BD505BBC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BE053CF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BD505D44(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BE053684() + 1) & ~v6;
    while (1)
    {
      v11 = *(*(a2 + 48) + 16 * v7 + 8);
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v12 = sub_1BE053D64();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v20 = v12 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v20 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v21 = *(a2 + 48);
      v22 = (v21 + 16 * v4);
      v23 = (v21 + 16 * v7);
      if (v4 != v7 || v22 >= v23 + 1)
      {
        *v22 = *v23;
      }

      v24 = *(a2 + 56);
      v25 = *(*(a3(0) - 8) + 72);
      v26 = v25 * v4;
      v27 = v24 + v25 * v4;
      v28 = v25 * v7;
      v29 = v24 + v25 * v7 + v25;
      if (v26 < v28 || v27 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v26 == v28)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v20 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v20)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }
}

unint64_t sub_1BD505F38(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BE053CF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 40 * v3;
      if (v3 < v6 || result >= v15 + 40 * v6 + 40)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BD5060D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80, &unk_1BE0BDBB0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v31 = v1;
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = (*(v2 + 48) + 16 * v24);
        v28 = *v26;
        v27 = v26[1];
        v29 = 32 * v24;
        sub_1BD038CD0(*(v2 + 56) + 32 * v24, v32);
        v30 = (*(v11 + 48) + v25);
        *v30 = v28;
        v30[1] = v27;
        sub_1BD1B6140(v32, (*(v11 + 56) + v29));
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        v2, v4, v5, v6, v7, v8, v9, v10;
        v1 = v31;
        goto LABEL_21;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
LABEL_21:
    *v1 = v11;
  }
}