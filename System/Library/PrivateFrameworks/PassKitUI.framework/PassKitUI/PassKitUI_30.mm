uint64_t sub_1BD345ABC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428E0, &qword_1BE0CE178);
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v44 - v3;
  v4 = type metadata accessor for PaymentSummarySheet(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428E8, &qword_1BE0CE180);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v49 = sub_1BE051994();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = v1 + *(v5 + 36);
  v19 = *(v18 + *(_s14PaymentSummaryVMa(0) + 48));
  if (*(v19 + 16))
  {
    v20 = v17;
    v21 = v6;
    v22 = v20;
    v46 = v20;
    sub_1BE051984();
    v23 = *(v19 + 16);
    v56 = 0;
    v57 = v23;
    KeyPath = swift_getKeyPath();
    sub_1BD34A0BC(v1, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSummarySheet);
    v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v25 = swift_allocObject();
    sub_1BD34A148(&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PaymentSummarySheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428F0, &qword_1BE0CE188);
    sub_1BD2D5394();
    v48 = v2;
    sub_1BD0DE4F4(&qword_1EBD428F8, &qword_1EBD428F0, &qword_1BE0CE188, MEMORY[0x1E6981F48]);
    v26 = v11;
    v44 = v11;
    sub_1BE0519C4();
    v27 = *(v12 + 16);
    v28 = v14;
    v29 = v14;
    v45 = v14;
    v30 = v49;
    v27(v29, v22, v49);
    v32 = v50;
    v31 = v51;
    v33 = *(v50 + 16);
    v34 = v26;
    v35 = v52;
    v33(v51, v34, v52);
    v27(v55, v28, v30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42900, &qword_1BE0CE190);
    v37 = v55;
    v33(&v55[*(v36 + 48)], v31, v35);
    v38 = *(v32 + 8);
    v38(v44, v35);
    v39 = *(v12 + 8);
    v39(v46, v30);
    v38(v31, v35);
    v39(v45, v30);
    v40 = v53;
    sub_1BD0DE204(v37, v53, &qword_1EBD428E0, &qword_1BE0CE178);
    return (*(v54 + 56))(v40, 0, 1, v48);
  }

  else
  {
    v42 = v53;
    v43 = *(v54 + 56);

    return v43(v42, 1, 1, v2);
  }
}

uint64_t sub_1BD346038@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSummarySheet(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v4;
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428A8, &qword_1BE0CE118);
  v52 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v47 - v13);
  v53 = v1;
  sub_1BD3485A4();
  v23 = v15;
  v24 = v15 >> 62;
  if (v15 >> 62)
  {
    if (sub_1BE053704() >= 1)
    {
LABEL_3:
      v48 = a1;
      sub_1BD0DE19C(v53 + *(v3 + 40), v11, &qword_1EBD45480, &unk_1BE0B8C30);
      v25 = type metadata accessor for PeerPaymentModel(0);
      if ((*(*(v25 - 8) + 48))(v11, 1, v25) == 1)
      {
        sub_1BD0DE53C(v11, &qword_1EBD45480, &unk_1BE0B8C30);
      }

      else
      {
        v26 = v11[*(v25 + 60)];
        sub_1BD34A1B0(v11, type metadata accessor for PeerPaymentModel);
        if (v26)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          goto LABEL_9;
        }
      }

      (*(v6 + 104))(v8, *MEMORY[0x1E69B8068], v5);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v32 = result;
      v33 = sub_1BE04B6F4();
      v35 = v34;

      (*(v6 + 8))(v8, v5);
      v54 = v33;
      v55 = v35;
      sub_1BD0DDEBC();
      v27 = sub_1BE0506C4();
      v29 = v36 & 1;
LABEL_9:
      *v14 = v27;
      v14[1] = v28;
      v14[2] = v29;
      v14[3] = v30;
      v37 = v14 + v12[21];
      *v37 = swift_getKeyPath();
      v37[8] = 0;
      v38 = v14 + v12[22];
      *v38 = swift_getKeyPath();
      v38[8] = 0;
      v39 = v14 + v12[18];
      *v39 = sub_1BE04F7C4();
      *(v39 + 1) = 0;
      v39[16] = 0;
      if (!v24)
      {
        v40 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
        v47[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428B0, &unk_1BE0CE120) + 44);
        v54 = 0;
        v55 = v40;
        swift_getKeyPath();
        v41 = v51;
        sub_1BD34A0BC(v53, v51, type metadata accessor for PaymentSummarySheet);
        v42 = (*(v49 + 80) + 24) & ~*(v49 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = v23;
        sub_1BD34A148(v41, v43 + v42, type metadata accessor for PaymentSummarySheet);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428B8, &unk_1BE0CE150);
        sub_1BD2D5394();
        sub_1BD0DE4F4(&qword_1EBD428C0, &qword_1EBD428B8, &unk_1BE0CE150, MEMORY[0x1E6981F48]);
        sub_1BE0519C4();
        v44 = v14 + v12[19];
        *v44 = 0x4020000000000000;
        v44[8] = 0;
        *(v14 + v12[20]) = 1;
        v45 = v48;
        sub_1BD0DE204(v14, v48, &qword_1EBD428A8, &qword_1BE0CE118);
        return (*(v52 + 56))(v45, 0, 1, v12);
      }

      result = sub_1BE053704();
      v40 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  v23, v16, v17, v18, v19, v20, v21, v22;
  v46 = *(v52 + 56);

  return v46(a1, 1, 1, v12);
}

void sub_1BD346670(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v51 - v4;
  v6 = type metadata accessor for PaymentSummarySheet(0);
  sub_1BD0DE19C(v1 + *(v6 + 40), v5, &qword_1EBD45480, &unk_1BE0B8C30);
  v7 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_4:
    v12 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v8 = &v5[*(v7 + 24)];
  v9 = *(v8 + 3);
  v52[2] = *(v8 + 2);
  v52[3] = v9;
  v10 = *(v8 + 5);
  v52[4] = *(v8 + 4);
  v53 = v10;
  v11 = *(v8 + 1);
  v52[0] = *v8;
  v52[1] = v11;
  sub_1BD0DE19C(v52, v51, &unk_1EBD521D0, qword_1BE0BEDC0);
  sub_1BD34A1B0(v5, type metadata accessor for PeerPaymentModel);
  if (*&v52[0] == 1)
  {
    goto LABEL_4;
  }

  v13 = *(&v53 + 1);
  v16 = *(&v53 + 1);
  sub_1BD0DE53C(v52, &unk_1EBD521D0, qword_1BE0BEDC0);
  if (v13)
  {
    v13 = [v16 message];

    if (v13)
    {
      v17 = sub_1BE052434();
      v19 = v18;

      v51[0] = v17;
      v51[1] = v19;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = sub_1BE0513B4();
      v51[0] = v27;
      v12 = sub_1BE050574();
      v13 = v28;
      v30 = v29;
      v15 = v31;
      sub_1BD0DDF10(v20, v22, (v24 & 1), v31, v32, v33, v34, v35);
      v27, v36, v37, v38, v39, v40, v41, v42;
      v26, v43, v44, v45, v46, v47, v48, v49;
      v14 = v30 & 1;
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_5:
  v14 = 0;
  v15 = 0;
LABEL_6:
  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
}

uint64_t sub_1BD346924@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for SelectedPaymentOfferActionView(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v86 - v13;
  v15 = type metadata accessor for PaymentSummarySheet(0);
  sub_1BD0DE19C(v3 + *(v15 + 20), v14, &qword_1EBD520A0, &qword_1BE0B9840);
  v16 = type metadata accessor for AvailablePass(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD520A0, &qword_1BE0B9840);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  sub_1BD34A0BC(v14, v11, type metadata accessor for WrappedPass);
  sub_1BD34A1B0(v14, type metadata accessor for AvailablePass);
  v17 = WrappedPass.secureElementPass.getter();
  sub_1BD34A1B0(v11, type metadata accessor for WrappedPass);
  if (!v17)
  {
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v94 = v15;
  v18 = *(v3 + *(v15 + 68));
  if (!v18)
  {

    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v92 = v3;
  v19 = v17;
  v20 = v18;
  v21 = [v19 uniqueID];
  if (!v21)
  {
    goto LABEL_54;
  }

  v22 = v21;
  v23 = [v20 paymentOfferCriteriaForPassUniqueID_];

  if (!v23)
  {

LABEL_50:
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v90 = v6;
  v91 = a1;
  sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
  v24 = sub_1BE052744();

  *&v96 = MEMORY[0x1E69E7CC0];
  if (v24 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v89 = v8;
    v93 = v20;
    if (!i)
    {
      break;
    }

    v87 = v19;
    v88 = v5;
    v33 = 0;
    v5 = v24 & 0xC000000000000001;
    v20 = (v24 & 0xFFFFFFFFFFFFFF8);
    v19 = &selRef_thumbnailWidth;
    while (1)
    {
      if (v5)
      {
        v34 = MEMORY[0x1BFB40900](v33, v24);
      }

      else
      {
        if (v33 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v34 = *(v24 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ([v34 type] == 1)
      {
        sub_1BE0538C4();
        v8 = *(v96 + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v33;
      if (v36 == i)
      {
        v37 = v96;
        v19 = v87;
        v5 = v88;
        v20 = v93;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v24, v25, v26, v27, v28, v29, v30, v31;
  v6 = v90;
  a1 = v91;
  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    if (*(v37 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

  if (!sub_1BE053704())
  {
LABEL_49:

    v37, v79, v80, v81, v82, v83, v84, v85;
    goto LABEL_50;
  }

LABEL_27:
  if ((v37 & 0xC000000000000001) == 0)
  {
    if (*(v37 + 16))
    {
      v38 = *(v37 + 32);
      goto LABEL_30;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v38 = MEMORY[0x1BFB40900](0, v37);
LABEL_30:
  v46 = v38;
  v37, v39, v40, v41, v42, v43, v44, v45;
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (!v47)
  {

    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v48 = *(v92 + *(v94 + 104));
  if (v48)
  {
    v49 = v47;
    v50 = v19;
    v51 = (v92 + *(v94 + 80));
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v95) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE051694();
    v54 = *(&v96 + 1);
    v55 = v89;
    v89[80] = v96;
    *(v55 + 88) = v54;
    v95 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50, &qword_1BE102360);
    sub_1BE051694();
    *(v55 + 96) = v96;
    v56 = *(v5 + 56);
    *(v55 + v56) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    v57 = v93;
    *v55 = v50;
    *(v55 + 8) = v57;
    *(v55 + 24) = v49;
    *(v55 + 32) = v52;
    *(v55 + 40) = v53;
    *(v55 + 72) = v48;
    v58 = v57;
    v59 = [v49 identifier];
    if (!v59)
    {
      sub_1BE052434();
      v61 = v60;
      v59 = sub_1BE052404();
      v61, v62, v63, v64, v65, v66, v67, v68;
    }

    v69 = [v50 uniqueID];

    v70 = [v58 paymentOfferCollectionForCriteriaIdentifier:v59 passUniqueID:v69];
    v71 = [v70 installmentAssessment];

    *(v55 + 16) = v71;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    v72 = v55;
    if (v71)
    {
      v73 = v71;
      v74 = [v73 dynamicContent];
      if (!v74 || (v75 = v74, v76 = [v74 dynamicContentPageForPageType_], v75, !v76))
      {
        v77 = [v73 dynamicContent];

        if (!v77)
        {
          v76 = 0;
          v72 = v89;
          goto LABEL_44;
        }

        v76 = [v77 dynamicContentPageForPageType_];
        v73 = v77;
        v72 = v89;
      }
    }

    else
    {
      v76 = 0;
    }

LABEL_44:
    *(v72 + 64) = v76;
    sub_1BD34A148(v72, a1, type metadata accessor for SelectedPaymentOfferActionView);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }

LABEL_55:
  type metadata accessor for PresentationContext(0);
  sub_1BD34BFE8(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

double sub_1BD3470C8(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_1BD347178();
  }

  else
  {
    type metadata accessor for PaymentSummarySheet(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808, &unk_1BE0CDFC8);
    sub_1BE0516A4();
    if ((v3 & 1) == 0)
    {
      sub_1BE0516B4();
    }
  }

  return result;
}

void sub_1BD347178()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for PaymentSummarySheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516A4();
  v10 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_1BD0DE53C(v8, &unk_1EBD45160, &qword_1BE0C25A0);
  if (v11 == 1 && (v12 = (v1 + *(v9 + 88)), v13 = *v12, v14 = *(v12 + 1), v20 = *v12, v21 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808, &unk_1BE0CDFC8), sub_1BE0516A4(), (v19 & 1) != 0))
  {
    v20 = v13;
    v21 = v14;
    v19 = 0;
    sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D084();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Detail sheet already set, ignoring", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BD347404@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = type metadata accessor for PaymentSummarySheet(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1BD347680();
  v8 = v7;
  v9 = (v1 + *(v3 + 72));
  v10 = *v9;
  v11 = v9[1];
  sub_1BD34A0BC(v1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSummarySheet);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1BD34A148(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PaymentSummarySheet);
  *&v31 = sub_1BD3496D0;
  *(&v31 + 1) = v13;
  *&v32 = v6;
  *(&v32 + 1) = v8;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37[0] = sub_1BD3496D0;
  v37[1] = v13;
  v37[2] = v6;
  v37[3] = v8;
  v37[4] = v10;
  v37[5] = v11;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v31, v41, &qword_1EBD426E8, &qword_1BE0CDEB8);
  sub_1BD0DE53C(v37, &qword_1EBD426E8, &qword_1BE0CDEB8);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  sub_1BE052434();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426E8, &qword_1BE0CDEB8);
  sub_1BD0DE4F4(&qword_1EBD426F0, &qword_1EBD426E8, &qword_1BE0CDEB8, &unk_1BE0E6430);
  sub_1BE050DE4();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v41[2] = v27;
  v41[3] = v28;
  v41[4] = v29;
  v42 = v30;
  v41[0] = v25;
  v41[1] = v26;
  return sub_1BD0DE53C(v41, &qword_1EBD426E8, &qword_1BE0CDEB8);
}

id sub_1BD347680()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PaymentSummarySheet(0);
  v9 = *MEMORY[0x1E69B8068];
  v10 = *(v2 + 104);
  if (*(v0 + *(v8 + 32)) == 10)
  {
    v10(v7, v9, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v7, v1);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(v4, v9, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v7 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD347860@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8, &qword_1BE0CDEC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5];
  sub_1BD3436E4(&v15[-v5]);
  sub_1BE051C64();
  v17 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42700, &qword_1BE0CDEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42708, &qword_1BE0CDED0);
  v7 = sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8, &qword_1BE0CDEC0, MEMORY[0x1E697C278]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42718, &qword_1BE0CDED8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720, &qword_1BE0CDEE0);
  v10 = sub_1BD349760();
  v18 = v9;
  v19 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v4;
  v19 = v8;
  v20 = v7;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD349B48();
  sub_1BE0510B4();
  sub_1BD0DE53C(v6, &qword_1EBD426F8, &qword_1BE0CDEC0);
  LOBYTE(a1) = sub_1BE0501F4();
  v12 = sub_1BE04EC54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427A8, &qword_1BE0CDF28);
  v14 = a2 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = a1;
  return result;
}

uint64_t sub_1BD347AAC(uint64_t a1, uint64_t a2)
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8, &qword_1BE0CDEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42718, &qword_1BE0CDED8);
  sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8, &qword_1BE0CDEC0, MEMORY[0x1E697C278]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720, &qword_1BE0CDEE0);
  sub_1BD349760();
  swift_getOpaqueTypeConformance2();
  return sub_1BE050954();
}

uint64_t sub_1BD347BDC(uint64_t *a1)
{
  v2 = sub_1BE04F714();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD348E78(a1, v45);
  v6 = sub_1BE051DA4();
  type metadata accessor for KeyboardObserver(0);
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
  v7 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v46);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v7, v24, v25, v26, v27, v28, v29, v30;
  v42 = v45[10];
  v43 = v45[11];
  v44[0] = v45[12];
  v38 = v45[6];
  v39 = v45[7];
  v40 = v45[8];
  v41 = v45[9];
  v34 = v45[2];
  v35 = v45[3];
  v36 = v45[4];
  v37 = v45[5];
  v32 = v45[0];
  v33 = v45[1];
  *&v44[1] = v6;
  BYTE8(v44[1]) = v46[0];
  sub_1BE04F704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42720, &qword_1BE0CDEE0);
  sub_1BD349760();
  sub_1BE050CB4();
  (*(v3 + 8))(v5, v2);
  v46[10] = v42;
  v46[11] = v43;
  v47[0] = v44[0];
  *(v47 + 9) = *(v44 + 9);
  v46[6] = v38;
  v46[7] = v39;
  v46[8] = v40;
  v46[9] = v41;
  v46[2] = v34;
  v46[3] = v35;
  v46[4] = v36;
  v46[5] = v37;
  v46[0] = v32;
  v46[1] = v33;
  return sub_1BD0DE53C(v46, &qword_1EBD42720, &qword_1BE0CDEE0);
}

uint64_t sub_1BD347E5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7B4();
  sub_1BD348E78(a2, &v50);
  v7 = sub_1BE051DA4();
  type metadata accessor for KeyboardObserver(0);
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
  v8 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(v79);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v8, v25, v26, v27, v28, v29, v30, v31;
  LOBYTE(v10) = v79[0];
  v32 = sub_1BE04E564();
  LOBYTE(v8) = MEMORY[0x1BFB3D2D0]((2 * v32));
  v33 = sub_1BE04EC74();
  v49[256] = 0;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v63 = v50;
  v64 = v51;
  *&v76 = v7;
  BYTE8(v76) = v10;
  v77 = v33;
  LOBYTE(v78) = 0;
  BYTE1(v78) = v8;
  *(&v78 + 1) = v6;
  sub_1BD0DE19C(a1, a3, &qword_1EBD426F8, &qword_1BE0CDEC0);
  v34 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42708, &qword_1BE0CDED0) + 36));
  v35 = v76;
  v36 = v77;
  v37 = v74;
  v34[12] = v75;
  v34[13] = v35;
  v38 = v78;
  v34[14] = v36;
  v34[15] = v38;
  v39 = v72;
  v40 = v73;
  v41 = v70;
  v34[8] = v71;
  v34[9] = v39;
  v34[10] = v40;
  v34[11] = v37;
  v42 = v68;
  v43 = v69;
  v44 = v66;
  v34[4] = v67;
  v34[5] = v42;
  v34[6] = v43;
  v34[7] = v41;
  v45 = v64;
  v46 = v65;
  v47 = v62;
  *v34 = v63;
  v34[1] = v45;
  v34[2] = v46;
  v34[3] = v44;
  v79[10] = v60;
  v79[11] = v61;
  v79[12] = v47;
  v79[6] = v56;
  v79[7] = v57;
  v79[8] = v58;
  v79[9] = v59;
  v79[2] = v52;
  v79[3] = v53;
  v79[4] = v54;
  v79[5] = v55;
  v79[0] = v50;
  v79[1] = v51;
  v80 = v7;
  v81 = v10;
  v82 = v33;
  v83 = 0;
  v84 = 0;
  v85 = v8;
  v86 = v6;
  sub_1BD0DE19C(&v63, v49, &qword_1EBD427A0, &qword_1BE0CDF20);
  return sub_1BD0DE53C(v79, &qword_1EBD427A0, &qword_1BE0CDF20);
}

uint64_t sub_1BD3480F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428C8, &qword_1BE0CE160);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = *a1;
  if (*a1 < 1)
  {
    (*(v7 + 56))(&v55 - v14, 1, 1, v6);
  }

  else
  {
    sub_1BE051984();
    v17 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v18 = &v9[*(v6 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_1BD0DE204(v9, v15, &qword_1EBD390F8, &qword_1BE0BA700);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  v23 = *(type metadata accessor for PaymentSummarySheet(0) + 28);
  result = _s14PaymentSummaryVMa(0);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = a2 + v23;
  v26 = *(a2 + v23 + *(result + 48));
  if (v16 >= *(v26 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v27 = v12;
  v28 = (v26 + 24 * v16);
  v29 = v28[5];
  v59 = v28[4];
  v30 = v28[6];
  v31 = (v25 + *(result + 24));
  v32 = v31[1];
  v58 = *v31;
  KeyPath = swift_getKeyPath();
  v56 = v29;
  sub_1BE048C84();
  v33 = v30;
  sub_1BE048C84();
  v34 = sub_1BE0501C4();
  v35 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v34)
  {
    v35 = sub_1BE050214();
  }

  v60 = 0;
  sub_1BE04E1F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v60;
  v76 = 0;
  v45 = v15;
  sub_1BD0DE19C(v15, v27, &qword_1EBD428C8, &qword_1BE0CE160);
  sub_1BD0DE19C(v27, a3, &qword_1EBD428C8, &qword_1BE0CE160);
  v46 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42908, &qword_1BE0CE198) + 48));
  v47 = v59;
  *&v61 = v59;
  *(&v61 + 1) = v56;
  *&v62 = v33;
  v48 = v33;
  v49 = v58;
  *(&v62 + 1) = v58;
  *&v63 = v32;
  v55 = v32;
  v50 = v56;
  v51 = KeyPath;
  *(&v63 + 1) = KeyPath;
  LOBYTE(v64) = v44;
  *(&v64 + 1) = 0x4028000000000000;
  LOBYTE(v65) = v35;
  *(&v65 + 1) = v37;
  *v66 = v39;
  *&v66[8] = v41;
  *&v66[16] = v43;
  v66[24] = 0;
  v52 = v62;
  *v46 = v61;
  v46[1] = v52;
  v53 = v64;
  v46[2] = v63;
  v46[3] = v53;
  v54 = *v66;
  v46[4] = v65;
  v46[5] = v54;
  *(v46 + 89) = *&v66[9];
  sub_1BD0DE19C(&v61, v67, &qword_1EBD42910, &qword_1BE0CE1A0);
  sub_1BD0DE53C(v45, &qword_1EBD428C8, &qword_1BE0CE160);
  v67[0] = v47;
  v67[1] = v50;
  v67[2] = v48;
  v67[3] = v49;
  v67[4] = v55;
  v67[5] = v51;
  v68 = v44;
  v69 = 0x4028000000000000;
  v70 = v35;
  v71 = v37;
  v72 = v39;
  v73 = v41;
  v74 = v43;
  v75 = 0;
  sub_1BD0DE53C(v67, &qword_1EBD42910, &qword_1BE0CE1A0);
  return sub_1BD0DE53C(v27, &qword_1EBD428C8, &qword_1BE0CE160);
}

void sub_1BD3485A4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentSummarySheet(0);
  v6 = *(v0 + v5[8]);
  v7 = v0 + v5[7];
  v8 = *(v7 + *(_s14PaymentSummaryVMa(0) + 20));
  if (v6 != 10)
  {
    goto LABEL_13;
  }

  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    v10 = sub_1BE053704();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_37;
  }

  v7 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v13 = MEMORY[0x1BFB40900](v12, v8);
    goto LABEL_9;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = *(v8 + 8 * v12 + 32);
LABEL_9:
  v14 = v13;
  objc_opt_self();
  v76 = swift_dynamicCastObjCClass();
  if (v76)
  {
    v15 = (v0 + v5[9]);
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;
      v75 = v7;
      (*(v2 + 104))(v4, *MEMORY[0x1E69B8070], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B69E0;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1BD110550();
      *(v18 + 32) = v17;
      *(v18 + 40) = v16;
      sub_1BE048C84();
      v19 = v14;
      v7 = v75;
      sub_1BE04B714();
      v21 = v20;
      v18, v20, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E69B8070], v1);
      v34 = v14;
      sub_1BE04B714();
      v21 = v35;
    }

    (*(v2 + 8))(v4, v1);
    v36 = sub_1BE052404();
    v21, v37, v38, v39, v40, v41, v42, v43;
    v44 = v76;
    [v76 setLabel_];

    if (v9)
    {
      v47 = sub_1BE053704();
      if (v47 < 0)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v45 = v47;
      v46 = v47 != 0;
      if (sub_1BE053704() < v46)
      {
        goto LABEL_40;
      }

      if (sub_1BE053704() < v45)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v45 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v45 != 0;
      if (v45 < v46)
      {
        goto LABEL_40;
      }
    }

    if (v7 && v45 > 1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      sub_1BE048C84();
      v48 = v46;
      do
      {
        v49 = v48 + 1;
        sub_1BE053864();
        v48 = v49;
      }

      while (v45 != v49);
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1BE048C84();
      if (!v9)
      {
LABEL_28:
        v57 = v8 & 0xFFFFFFFFFFFFFF8;
        v58 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        v59 = (2 * v45) | 1;
        goto LABEL_31;
      }
    }

    v8, v50, v51, v52, v53, v54, v55, v56;
    v57 = sub_1BE0539D4();
    v58 = v60;
    v46 = v61;
    v59 = v62;
LABEL_31:
    sub_1BD643C50(1, v57, v58, v46, v59);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = v44;
    v77 = MEMORY[0x1E69E7CC0];
    v70 = (v68 >> 1) - v66;
    if (!__OFSUB__(v68 >> 1, v66))
    {
      v71 = v70 + 1;
      if (!__OFADD__(v70, 1))
      {
        v72 = inited;
        v73 = v14;
        sub_1BD34A294(v71);
        v74 = swift_unknownObjectRetain();
        sub_1BDA7EAC8(v74, v64, v66, v68);
        swift_unknownObjectRelease();
        sub_1BDA7AAA0(v72);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_13:
  sub_1BE048C84();

  sub_1BD1FFD7C(1, v8, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_1BD348AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428C8, &qword_1BE0CE160);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *a1;
  if (v18 < 1)
  {
    result = (*(v9 + 56))(&v45 - v16, 1, 1, v8);
  }

  else
  {
    sub_1BE051984();
    v19 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v20 = &v11[*(v8 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_1BD0DE204(v11, v17, &qword_1EBD390F8, &qword_1BE0BA700);
    result = (*(v9 + 56))(v17, 0, 1, v8);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1BFB40900](v18, a2);
    goto LABEL_8;
  }

  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = *(a2 + 8 * v18 + 32);
LABEL_8:
  v27 = v26;
  v28 = a3 + *(type metadata accessor for PaymentSummarySheet(0) + 28);
  v29 = (v28 + *(_s14PaymentSummaryVMa(0) + 24));
  v31 = *v29;
  v30 = v29[1];
  sub_1BE048C84();
  v32 = sub_1BE0501C4();
  v33 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v32)
  {
    v33 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v57 = 0;
  sub_1BD0DE19C(v17, v14, &qword_1EBD428C8, &qword_1BE0CE160);
  sub_1BD0DE19C(v14, a4, &qword_1EBD428C8, &qword_1BE0CE160);
  v42 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428D0, &qword_1BE0CE168) + 48));
  *&v45 = v27;
  *(&v45 + 1) = v31;
  *&v46 = v30;
  BYTE8(v46) = 0;
  LOBYTE(v47) = v33;
  *(&v47 + 1) = v35;
  *v48 = v37;
  *&v48[8] = v39;
  *&v48[16] = v41;
  v48[24] = 0;
  v43 = v46;
  *v42 = v45;
  v42[1] = v43;
  v44 = *v48;
  v42[2] = v47;
  v42[3] = v44;
  *(v42 + 57) = *&v48[9];
  sub_1BD0DE19C(&v45, v49, &qword_1EBD428D8, &qword_1BE0CE170);
  sub_1BD0DE53C(v17, &qword_1EBD428C8, &qword_1BE0CE160);
  v49[0] = v27;
  v49[1] = v31;
  v49[2] = v30;
  v50 = 0;
  v51 = v33;
  v52 = v35;
  v53 = v37;
  v54 = v39;
  v55 = v41;
  v56 = 0;
  sub_1BD0DE53C(v49, &qword_1EBD428D8, &qword_1BE0CE170);
  return sub_1BD0DE53C(v14, &qword_1EBD428C8, &qword_1BE0CE160);
}

__n128 sub_1BD348E78@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04E8A4();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58[-v7];
  type metadata accessor for KeyboardObserver(0);
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
  v9 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v75);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v9, v26, v27, v28, v29, v30, v31, v32;
  if (v75)
  {
    sub_1BD349C2C(&v75);
  }

  else
  {
    v60 = sub_1BE04F7B4();
    LOBYTE(v69) = 0;
    v33 = (a1 + *(type metadata accessor for PaymentSummarySheet(0) + 52));
    v34 = v33[4];
    v35 = v33[5];
    v36 = v33[2];
    v65 = v33[3];
    v66 = v34;
    v37 = v33[6];
    v67 = v35;
    v68 = v37;
    v38 = v33[1];
    v64[0] = *v33;
    v64[1] = v38;
    v64[2] = v36;
    *&v63[39] = v36;
    *&v63[87] = v35;
    *&v63[71] = v34;
    *&v63[55] = v65;
    *&v63[103] = v37;
    *&v63[7] = v64[0];
    *&v63[23] = v38;
    v59 = v69;
    sub_1BD0EEF94(v64, &v75);
    v39 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    LOBYTE(v75) = 0;
    v48 = sub_1BE051274();
    v49 = sub_1BE0501D4();
    sub_1BE04E894();
    v50 = v62;
    (*(v62 + 16))(v61, v8, v4);
    sub_1BD34BFE8(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v51 = sub_1BE04E644();
    (*(v50 + 8))(v8, v4);
    *(&v70[4] + 1) = *&v63[64];
    *(&v70[5] + 1) = *&v63[80];
    *(&v70[6] + 1) = *&v63[96];
    *(v70 + 1) = *v63;
    *(&v70[1] + 1) = *&v63[16];
    *(&v70[2] + 1) = *&v63[32];
    v69 = v60;
    LOBYTE(v70[0]) = v59;
    *&v70[7] = *&v63[111];
    *(&v70[3] + 1) = *&v63[48];
    BYTE8(v70[7]) = v39;
    *&v71 = v41;
    *(&v71 + 1) = v43;
    *&v72 = v45;
    *(&v72 + 1) = v47;
    LOBYTE(v73) = 0;
    *(&v73 + 1) = v48;
    LOBYTE(v74) = v49;
    *(&v74 + 1) = v51;
    PKEdgeInsetsMake();
    v85 = v72;
    v86 = v73;
    v87 = v74;
    v81 = v70[5];
    v82 = v70[6];
    v83 = v70[7];
    v84 = v71;
    v77 = v70[1];
    v78 = v70[2];
    v79 = v70[3];
    v80 = v70[4];
    v75 = v69;
    v76 = v70[0];
  }

  v52 = v86;
  *(a2 + 160) = v85;
  *(a2 + 176) = v52;
  *(a2 + 192) = v87;
  v53 = v82;
  *(a2 + 96) = v81;
  *(a2 + 112) = v53;
  v54 = v84;
  *(a2 + 128) = v83;
  *(a2 + 144) = v54;
  v55 = v78;
  *(a2 + 32) = v77;
  *(a2 + 48) = v55;
  v56 = v80;
  *(a2 + 64) = v79;
  *(a2 + 80) = v56;
  result = v76;
  *a2 = v75;
  *(a2 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PaymentSummarySheet(uint64_t a1)
{
  result = qword_1EBD426C8;
  if (!qword_1EBD426C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3492F8(uint64_t a1)
{
  sub_1BD33A018(319);
  if (v1 <= 0x3F)
  {
    sub_1BD349608(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
    if (v2 <= 0x3F)
    {
      _s8MerchantVMa(319);
      if (v3 <= 0x3F)
      {
        _s14PaymentSummaryVMa(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PKPaymentRequestType(319);
          if (v5 <= 0x3F)
          {
            sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD349608(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
              if (v7 <= 0x3F)
              {
                type metadata accessor for PKPaymentAuthorizationFundingMode(319);
                if (v8 <= 0x3F)
                {
                  sub_1BD349608(319, &qword_1EBD365E0, type metadata accessor for PassEligibleRewardsInfo);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD1030A8();
                    if (v10 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0, 0x1E69B8CE8);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560, 0x1E69B91F8);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for SelectedPaymentOfferObserver(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD23BC4C(319, &qword_1EBD39358, &unk_1EBD45160, &qword_1BE0C25A0);
                            if (v14 <= 0x3F)
                            {
                              sub_1BD23BC4C(319, &qword_1EBD426D8, &qword_1EBD41358, &qword_1BE0CDDC0);
                              if (v15 <= 0x3F)
                              {
                                sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1BD1031B4(319);
                                  if (v17 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_1BD349608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD349660()
{
  result = qword_1EBD426E0;
  if (!qword_1EBD426E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD426E0);
  }

  return result;
}

uint64_t sub_1BD3496D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSummarySheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD347860(v4, a1);
}

unint64_t sub_1BD349760()
{
  result = qword_1EBD42728;
  if (!qword_1EBD42728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720, &qword_1BE0CDEE0);
    sub_1BD349818();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42728);
  }

  return result;
}

unint64_t sub_1BD349818()
{
  result = qword_1EBD42730;
  if (!qword_1EBD42730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42738, &qword_1BE0CDEE8);
    sub_1BD34989C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42730);
  }

  return result;
}

unint64_t sub_1BD34989C()
{
  result = qword_1EBD42740;
  if (!qword_1EBD42740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42748, &qword_1BE0CDEF0);
    sub_1BD349920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42740);
  }

  return result;
}

unint64_t sub_1BD349920()
{
  result = qword_1EBD42750;
  if (!qword_1EBD42750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42758, &qword_1BE0CDEF8);
    sub_1BD3499D8();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42750);
  }

  return result;
}

unint64_t sub_1BD3499D8()
{
  result = qword_1EBD42760;
  if (!qword_1EBD42760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42768, &qword_1BE0CDF00);
    sub_1BD349A90();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42760);
  }

  return result;
}

unint64_t sub_1BD349A90()
{
  result = qword_1EBD42770;
  if (!qword_1EBD42770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42778, &qword_1BE0CDF08);
    sub_1BD0DE4F4(&qword_1EBD42780, &qword_1EBD42788, &unk_1BE0CDF10, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42770);
  }

  return result;
}

unint64_t sub_1BD349B48()
{
  result = qword_1EBD42790;
  if (!qword_1EBD42790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42708, &qword_1BE0CDED0);
    sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8, &qword_1BE0CDEC0, MEMORY[0x1E697C278]);
    sub_1BD0DE4F4(&qword_1EBD42798, &qword_1EBD427A0, &qword_1BE0CDF20, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42790);
  }

  return result;
}

double sub_1BD349C2C(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1BD349C60()
{
  result = qword_1EBD427B8;
  if (!qword_1EBD427B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427B0, &qword_1BE0CDF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427C0, &unk_1BE0CDF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57B80, &qword_1BE1022A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427C8, &unk_1BE0CDF90);
    type metadata accessor for MultiHyperLinkDetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    sub_1BD0DE4F4(&qword_1EBD427D0, &qword_1EBD427C8, &unk_1BE0CDF90, MEMORY[0x1E6981870]);
    sub_1BD34BFE8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD349E40();
    sub_1BD349E94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427B8);
  }

  return result;
}

unint64_t sub_1BD349E40()
{
  result = qword_1EBD427D8;
  if (!qword_1EBD427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427D8);
  }

  return result;
}

unint64_t sub_1BD349E94()
{
  result = qword_1EBD427E0;
  if (!qword_1EBD427E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57B80, &qword_1BE1022A0);
    sub_1BD34BFE8(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView, &unk_1BE0F2780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427E0);
  }

  return result;
}

uint64_t sub_1BD349F48(void *a1)
{
  result = type metadata accessor for PaymentSummarySheet(0);
  if (*a1 == 2)
  {
    return (*(v1 + *(result + 64) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

double sub_1BD349FC4(_BYTE *a1)
{
  v3 = *(type metadata accessor for PaymentSummarySheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD3470C8(a1, v4);
}

double sub_1BD34A098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BD34A0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1BD34A124(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BD34A148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD34A1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD34A210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSummarySheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD348AC0(a1, v6, v7, a2);
}

uint64_t sub_1BD34A294(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1BE053704();
LABEL_9:
    result = sub_1BE053884();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for PaymentSummarySheet(0);
  v943 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v943 + 16) & ~v943);
  sub_1BD0D45CC(*v2, *(v2 + 8), *(v2 + 16), v3, v4, v5, v6, v7);
  v8 = (v2 + v1[5]);
  v9 = type metadata accessor for AvailablePass(0);
  v939 = *(*(v9 - 1) + 48);
  v945 = v9;
  if (!v939(v8, 1, v9))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v8[1], v18, v19, v20, v21, v22, v23, v24;
      v8[3], v25, v26, v27, v28, v29, v30, v31;
      v32 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v33 = sub_1BE04CF34();
      (*(*(v33 - 8) + 8))(v8 + v32, v33);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v34 = (v8 + v9[6]);
    v35 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v35 - 1) + 48))(v34, 1, v35))
    {
      v34[1], v36, v37, v38, v39, v40, v41, v42;
      v43 = v35[5];
      v44 = sub_1BE04DA84();
      (*(*(v44 - 8) + 8))(v34 + v43, v44);
      *(v34 + v35[6] + 8), v45, v46, v47, v48, v49, v50, v51;
      *(v34 + v35[7] + 8), v52, v53, v54, v55, v56, v57, v58;
      *(v34 + v35[8] + 8), v59, v60, v61, v62, v63, v64, v65;
    }

    v66 = (v8 + v9[7]);
    v67 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
    {

      v68 = *(v67 + 28);
      v69 = sub_1BE04AF64();
      v70 = *(v69 - 8);
      if (!(*(v70 + 48))(v66 + v68, 1, v69))
      {
        (*(v70 + 8))(v66 + v68, v69);
      }
    }

    v71 = v8 + v9[10];
    v72 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v80 = *(v71 + 2);
      if (v80 != 1)
      {
        v80, v73, v74, v75, v76, v77, v78, v79;
        *(v71 + 4), v81, v82, v83, v84, v85, v86, v87;
        *(v71 + 6), v88, v89, v90, v91, v92, v93, v94;
      }

      v95 = *(v71 + 9);
      if (v95 != 1)
      {
        v95, v73, v74, v75, v76, v77, v78, v79;
        *(v71 + 11), v96, v97, v98, v99, v100, v101, v102;
        *(v71 + 13), v103, v104, v105, v106, v107, v108, v109;
      }

      v110 = *(v72 + 28);
      v111 = sub_1BE04AF64();
      v112 = *(v111 - 8);
      v113 = *(v112 + 48);
      if (!v113(&v71[v110], 1, v111))
      {
        (*(v112 + 8))(&v71[v110], v111);
      }

      v114 = *(v72 + 32);
      v115 = v113(&v71[v114], 1, v111);
      v9 = v945;
      if (!v115)
      {
        (*(v112 + 8))(&v71[v114], v111);
      }
    }

    v116 = (v8 + v9[12]);
    if (*v116)
    {

      v116[4], v117, v118, v119, v120, v121, v122, v123;
    }

    v124 = (v8 + v9[13]);
    if (*v124)
    {

      v124[2], v125, v126, v127, v128, v129, v130, v131;
    }

    *(v8 + v9[14]), v73, v74, v75, v76, v77, v78, v79;
    *(v8 + v9[15]), v132, v133, v134, v135, v136, v137, v138;
  }

  v139 = v2 + v1[6];
  *(v139 + 8), v10, v11, v12, v13, v14, v15, v16;
  v140 = (v139 + *(_s8MerchantVMa(0) + 20));
  _s14MerchantOriginOMa(0);
  v141 = swift_getEnumCaseMultiPayload();
  if (v141 == 1)
  {
    v163 = sub_1BE04AA64();
    v164 = *(v163 - 8);
    v165 = *(v164 + 8);
    v165(v140, v163);
    v166 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v164 + 48))(v140 + v166, 1, v163))
    {
      v165((v140 + v166), v163);
    }
  }

  else if (!v141)
  {
    v140[1], v142, v143, v144, v145, v146, v147, v148;
    v140[3], v149, v150, v151, v152, v153, v154, v155;
    v140[5], v156, v157, v158, v159, v160, v161, v162;
  }

  v167 = (v2 + v1[7]);

  v167[4], v168, v169, v170, v171, v172, v173, v174;
  v167[6], v175, v176, v177, v178, v179, v180, v181;
  v182 = _s11TotalAmountVMa(0);
  v183 = (v167 + v182[10]);
  _s22SummaryItemPricingTypeOMa(0);
  v184 = swift_getEnumCaseMultiPayload();
  switch(v184)
  {
    case 2:
      v183[1], v185, v186, v187, v188, v189, v190, v191;
      break;
    case 1:
      v226 = sub_1BE04AF64();
      (*(*(v226 - 8) + 8))(v183, v226);
      break;
    case 0:
      v937 = v182;
      v192 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v193 = v192[6];
      v194 = sub_1BE04AF64();
      v195 = *(v194 - 8);
      v196 = *(v195 + 48);
      if (!v196(v183 + v193, 1, v194))
      {
        (*(v195 + 8))(v183 + v193, v194);
      }

      v197 = v192[7];
      if (!v196(v183 + v197, 1, v194))
      {
        (*(v195 + 8))(v183 + v197, v194);
      }

      *(v183 + v192[9] + 8), v198, v199, v200, v201, v202, v203, v204;
      *(v183 + v192[10] + 8), v205, v206, v207, v208, v209, v210, v211;
      *(v183 + v192[11] + 8), v212, v213, v214, v215, v216, v217, v218;
      *(v183 + v192[12] + 8), v219, v220, v221, v222, v223, v224, v225;
      v9 = v945;
      v182 = v937;
      break;
  }

  v227 = (v167 + v182[15]);
  v228 = type metadata accessor for PeerPaymentModel(0);
  v941 = *(*(v228 - 8) + 48);
  v944 = v228;
  if (!v941(v227, 1, v228))
  {

    v229 = (v227 + *(v228 + 20));
    type metadata accessor for WrappedPass(0);
    v230 = swift_getEnumCaseMultiPayload();
    v936 = v227;
    if (v230 == 2)
    {
      v229[1], v231, v232, v233, v234, v235, v236, v237;
      v229[3], v238, v239, v240, v241, v242, v243, v244;
      v245 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v246 = sub_1BE04CF34();
      (*(*(v246 - 8) + 8))(v229 + v245, v246);
    }

    else if (v230 <= 1)
    {
    }

    v247 = (v229 + v9[6]);
    v248 = v9;
    v249 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v249 - 1) + 48))(v247, 1, v249))
    {
      v247[1], v250, v251, v252, v253, v254, v255, v256;
      v257 = v249[5];
      v258 = sub_1BE04DA84();
      (*(*(v258 - 8) + 8))(v247 + v257, v258);
      *(v247 + v249[6] + 8), v259, v260, v261, v262, v263, v264, v265;
      *(v247 + v249[7] + 8), v266, v267, v268, v269, v270, v271, v272;
      *(v247 + v249[8] + 8), v273, v274, v275, v276, v277, v278, v279;
    }

    v280 = (v229 + v248[7]);
    v281 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v281 - 8) + 48))(v280, 1, v281))
    {

      v282 = *(v281 + 28);
      v283 = sub_1BE04AF64();
      v284 = *(v283 - 8);
      if (!(*(v284 + 48))(v280 + v282, 1, v283))
      {
        (*(v284 + 8))(v280 + v282, v283);
      }
    }

    v285 = v229 + v945[10];
    v286 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v286 - 8) + 48))(v285, 1, v286))
    {
      v294 = *(v285 + 2);
      if (v294 != 1)
      {
        v294, v287, v288, v289, v290, v291, v292, v293;
        *(v285 + 4), v295, v296, v297, v298, v299, v300, v301;
        *(v285 + 6), v302, v303, v304, v305, v306, v307, v308;
      }

      v309 = *(v285 + 9);
      if (v309 != 1)
      {
        v309, v287, v288, v289, v290, v291, v292, v293;
        *(v285 + 11), v310, v311, v312, v313, v314, v315, v316;
        *(v285 + 13), v317, v318, v319, v320, v321, v322, v323;
      }

      v324 = *(v286 + 28);
      v325 = sub_1BE04AF64();
      v326 = *(*(v325 - 8) + 48);
      v934 = v324;
      v327 = &v285[v324];
      v328 = *(v325 - 8);
      if (!v326(v327, 1, v325))
      {
        (*(v328 + 8))(&v285[v934], v325);
      }

      v935 = v328;
      v329 = *(v286 + 32);
      if (!v326(&v285[v329], 1, v325))
      {
        (*(v935 + 8))(&v285[v329], v325);
      }
    }

    v9 = v945;
    v330 = (v229 + v945[12]);
    if (*v330)
    {

      v330[4], v331, v332, v333, v334, v335, v336, v337;
    }

    v338 = (v229 + v945[13]);
    v228 = v944;
    if (*v338)
    {

      v338[2], v339, v340, v341, v342, v343, v344, v345;
    }

    *(v229 + v945[14]), v287, v288, v289, v290, v291, v292, v293;
    *(v229 + v945[15]), v346, v347, v348, v349, v350, v351, v352;
    v353 = (v936 + *(v944 + 24));
    if (*v353 != 1)
    {

      v361 = v353[3];
      if (v361)
      {
        v361, v354, v355, v356, v357, v358, v359, v360;
        v353[5], v362, v363, v364, v365, v366, v367, v368;
        v353[7], v369, v370, v371, v372, v373, v374, v375;
        v353[9], v376, v377, v378, v379, v380, v381, v382;
      }
    }
  }

  v383 = (v167 + v182[16]);
  v384 = type metadata accessor for Passes(0);
  if (!(*(*(v384 - 1) + 48))(v383, 1, v384))
  {
    if (!v939(v383, 1, v9))
    {
      type metadata accessor for WrappedPass(0);
      v385 = swift_getEnumCaseMultiPayload();
      if (v385 == 2)
      {
        v383[1], v386, v387, v388, v389, v390, v391, v392;
        v383[3], v393, v394, v395, v396, v397, v398, v399;
        v400 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v401 = sub_1BE04CF34();
        (*(*(v401 - 8) + 8))(v383 + v400, v401);
      }

      else if (v385 <= 1)
      {
      }

      v402 = (v383 + v9[6]);
      v403 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v403 - 1) + 48))(v402, 1, v403))
      {
        v402[1], v404, v405, v406, v407, v408, v409, v410;
        v411 = v403[5];
        v412 = sub_1BE04DA84();
        (*(*(v412 - 8) + 8))(v402 + v411, v412);
        *(v402 + v403[6] + 8), v413, v414, v415, v416, v417, v418, v419;
        *(v402 + v403[7] + 8), v420, v421, v422, v423, v424, v425, v426;
        *(v402 + v403[8] + 8), v427, v428, v429, v430, v431, v432, v433;
      }

      v434 = (v383 + v9[7]);
      v435 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v435 - 8) + 48))(v434, 1, v435))
      {

        v436 = *(v435 + 28);
        v437 = sub_1BE04AF64();
        v438 = *(v437 - 8);
        if (!(*(v438 + 48))(v434 + v436, 1, v437))
        {
          (*(v438 + 8))(v434 + v436, v437);
        }
      }

      v439 = v383 + v945[10];
      v440 = type metadata accessor for PassEligibleRewardsInfo(0);
      if (!(*(*(v440 - 8) + 48))(v439, 1, v440))
      {
        v448 = *(v439 + 2);
        if (v448 != 1)
        {
          v448, v441, v442, v443, v444, v445, v446, v447;
          *(v439 + 4), v449, v450, v451, v452, v453, v454, v455;
          *(v439 + 6), v456, v457, v458, v459, v460, v461, v462;
        }

        v463 = *(v439 + 9);
        if (v463 != 1)
        {
          v463, v441, v442, v443, v444, v445, v446, v447;
          *(v439 + 11), v464, v465, v466, v467, v468, v469, v470;
          *(v439 + 13), v471, v472, v473, v474, v475, v476, v477;
        }

        v478 = *(v440 + 28);
        v479 = sub_1BE04AF64();
        v940 = *(v479 - 8);
        v938 = v478;
        v480 = &v439[v478];
        v481 = *(v940 + 48);
        if (!v481(v480, 1, v479))
        {
          (*(v940 + 8))(&v439[v938], v479);
        }

        v482 = *(v440 + 32);
        if (!v481(&v439[v482], 1, v479))
        {
          (*(v940 + 8))(&v439[v482], v479);
        }
      }

      v9 = v945;
      v483 = (v383 + v945[12]);
      if (*v483)
      {

        v483[4], v484, v485, v486, v487, v488, v489, v490;
      }

      v491 = (v383 + v945[13]);
      v228 = v944;
      if (*v491)
      {

        v491[2], v492, v493, v494, v495, v496, v497, v498;
      }

      *(v383 + v945[14]), v441, v442, v443, v444, v445, v446, v447;
      *(v383 + v945[15]), v499, v500, v501, v502, v503, v504, v505;
    }

    *(v383 + v384[7]), v506, v507, v508, v509, v510, v511, v512;
    *(v383 + v384[9]), v513, v514, v515, v516, v517, v518, v519;
    *(v383 + v384[11]), v520, v521, v522, v523, v524, v525, v526;
  }

  v527 = _s14PaymentSummaryVMa(0);
  *(v167 + v527[5]), v528, v529, v530, v531, v532, v533, v534;
  *(v167 + v527[6] + 8), v535, v536, v537, v538, v539, v540, v541;
  v549 = v167 + v527[7];
  v550 = *(v549 + 1);
  if (v550)
  {
    v550, v542, v543, v544, v545, v546, v547, v548;
    *(v549 + 3), v551, v552, v553, v554, v555, v556, v557;
  }

  v558 = v167 + v527[9];
  v559 = *(v558 + 1);
  if (v559)
  {
    v559, v542, v543, v544, v545, v546, v547, v548;
    *(v558 + 3), v560, v561, v562, v563, v564, v565, v566;
    *(v558 + 5), v567, v568, v569, v570, v571, v572, v573;
  }

  v574 = v167 + v527[10];
  v575 = *(v574 + 1);
  if (v575)
  {
    v575, v542, v543, v544, v545, v546, v547, v548;
    *(v574 + 3), v576, v577, v578, v579, v580, v581, v582;
    *(v574 + 5), v583, v584, v585, v586, v587, v588, v589;
  }

  v590 = (v167 + v527[11]);
  v591 = type metadata accessor for DeferredPaymentRequest(0);
  if (!(*(*(v591 - 1) + 48))(v590, 1, v591))
  {
    v590[1], v592, v593, v594, v595, v596, v597, v598;
    v590[3], v599, v600, v601, v602, v603, v604, v605;
    v590[5], v606, v607, v608, v609, v610, v611, v612;
    v613 = v591[7];
    v614 = sub_1BE04AF64();
    v615 = *(v614 - 8);
    if (!(*(v615 + 48))(v590 + v613, 1, v614))
    {
      (*(v615 + 8))(v590 + v613, v614);
    }

    v616 = v591[8];
    v617 = sub_1BE04B3B4();
    v618 = *(v617 - 8);
    if (!(*(v618 + 48))(v590 + v616, 1, v617))
    {
      (*(v618 + 8))(v590 + v616, v617);
    }

    v9 = v945;
    v228 = v944;
  }

  *(v167 + v527[12]), v592, v593, v594, v595, v596, v597, v598;
  *(v2 + v1[9] + 8), v619, v620, v621, v622, v623, v624, v625;
  v626 = (v2 + v1[10]);
  if (!v941(v626, 1, v228))
  {

    v627 = (v626 + *(v228 + 20));
    type metadata accessor for WrappedPass(0);
    v628 = swift_getEnumCaseMultiPayload();
    if (v628 == 2)
    {
      v627[1], v629, v630, v631, v632, v633, v634, v635;
      v627[3], v636, v637, v638, v639, v640, v641, v642;
      v643 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v644 = sub_1BE04CF34();
      (*(*(v644 - 8) + 8))(v627 + v643, v644);
    }

    else if (v628 <= 1)
    {
    }

    v645 = (v627 + v9[6]);
    v646 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v646 - 1) + 48))(v645, 1, v646))
    {
      v645[1], v647, v648, v649, v650, v651, v652, v653;
      v654 = v646[5];
      v655 = sub_1BE04DA84();
      (*(*(v655 - 8) + 8))(v645 + v654, v655);
      *(v645 + v646[6] + 8), v656, v657, v658, v659, v660, v661, v662;
      *(v645 + v646[7] + 8), v663, v664, v665, v666, v667, v668, v669;
      *(v645 + v646[8] + 8), v670, v671, v672, v673, v674, v675, v676;
    }

    v677 = (v627 + v9[7]);
    v678 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v678 - 8) + 48))(v677, 1, v678))
    {

      v679 = *(v678 + 28);
      v680 = sub_1BE04AF64();
      v681 = *(v680 - 8);
      if (!(*(v681 + 48))(v677 + v679, 1, v680))
      {
        (*(v681 + 8))(v677 + v679, v680);
      }
    }

    v682 = v627 + v9[10];
    v683 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v683 - 8) + 48))(v682, 1, v683))
    {
      v691 = *(v682 + 2);
      if (v691 != 1)
      {
        v691, v684, v685, v686, v687, v688, v689, v690;
        *(v682 + 4), v692, v693, v694, v695, v696, v697, v698;
        *(v682 + 6), v699, v700, v701, v702, v703, v704, v705;
      }

      v706 = *(v682 + 9);
      if (v706 != 1)
      {
        v706, v684, v685, v686, v687, v688, v689, v690;
        *(v682 + 11), v707, v708, v709, v710, v711, v712, v713;
        *(v682 + 13), v714, v715, v716, v717, v718, v719, v720;
      }

      v721 = *(v683 + 28);
      v722 = sub_1BE04AF64();
      v942 = *(v722 - 8);
      v723 = *(v942 + 48);
      if (!v723(&v682[v721], 1, v722))
      {
        (*(v942 + 8))(&v682[v721], v722);
      }

      v724 = *(v683 + 32);
      if (!v723(&v682[v724], 1, v722))
      {
        (*(v942 + 8))(&v682[v724], v722);
      }
    }

    v725 = (v627 + v945[12]);
    if (*v725)
    {

      v725[4], v726, v727, v728, v729, v730, v731, v732;
    }

    v733 = (v627 + v945[13]);
    if (*v733)
    {

      v733[2], v734, v735, v736, v737, v738, v739, v740;
    }

    *(v627 + v945[14]), v684, v685, v686, v687, v688, v689, v690;
    *(v627 + v945[15]), v741, v742, v743, v744, v745, v746, v747;
    v748 = (v626 + *(v944 + 24));
    if (*v748 != 1)
    {

      v756 = v748[3];
      if (v756)
      {
        v756, v749, v750, v751, v752, v753, v754, v755;
        v748[5], v757, v758, v759, v760, v761, v762, v763;
        v748[7], v764, v765, v766, v767, v768, v769, v770;
        v748[9], v771, v772, v773, v774, v775, v776, v777;
      }
    }
  }

  v778 = v2 + v1[12];
  v779 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v779 - 8) + 48))(v778, 1, v779))
  {
    v787 = *(v778 + 16);
    if (v787 != 1)
    {
      v787, v780, v781, v782, v783, v784, v785, v786;
      *(v778 + 32), v788, v789, v790, v791, v792, v793, v794;
      *(v778 + 48), v795, v796, v797, v798, v799, v800, v801;
    }

    v802 = *(v778 + 72);
    if (v802 != 1)
    {
      v802, v780, v781, v782, v783, v784, v785, v786;
      *(v778 + 88), v803, v804, v805, v806, v807, v808, v809;
      *(v778 + 104), v810, v811, v812, v813, v814, v815, v816;
    }

    v817 = *(v779 + 28);
    v818 = sub_1BE04AF64();
    v819 = *(v818 - 8);
    v820 = *(v819 + 48);
    if (!v820(v778 + v817, 1, v818))
    {
      (*(v819 + 8))(v778 + v817, v818);
    }

    v821 = *(v779 + 32);
    if (!v820(v778 + v821, 1, v818))
    {
      (*(v819 + 8))(v778 + v821, v818);
    }
  }

  v822 = v2 + v1[13];
  *(v822 + 8), v780, v781, v782, v783, v784, v785, v786;
  sub_1BD0D45CC(*(v822 + 16), *(v822 + 24), *(v822 + 32), v823, v824, v825, v826, v827);
  sub_1BD0D4604(*(v822 + 40), *(v822 + 48), v828, v829, v830, v831, v832, v833);
  *(v822 + 56), v834, v835, v836, v837, v838, v839, v840;
  *(v822 + 80), v841, v842, v843, v844, v845, v846, v847;
  if (*(v822 + 88))
  {
    *(v822 + 96), v848, v849, v850, v851, v852, v853, v854;
  }

  *(v2 + v1[14] + 8), v848, v849, v850, v851, v852, v853, v854;
  *(v2 + v1[15] + 8), v855, v856, v857, v858, v859, v860, v861;
  *(v2 + v1[16] + 8), v862, v863, v864, v865, v866, v867, v868;

  *(v2 + v1[19]), v869, v870, v871, v872, v873, v874, v875;
  *(v2 + v1[20] + 8), v876, v877, v878, v879, v880, v881, v882;
  v883 = (v2 + v1[21]);
  v884 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v884 - 8) + 48))(v883, 1, v884))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v885 = sub_1BE04AA64();
      (*(*(v885 - 8) + 8))(v883, v885);
    }

    else
    {

      v883[2], v886, v887, v888, v889, v890, v891, v892;
    }
  }

  v893 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v883 + *(v893 + 28)), v894, v895, v896, v897, v898, v899, v900;
  *(v2 + v1[22] + 8), v901, v902, v903, v904, v905, v906, v907;
  sub_1BD0D4604(*(v2 + v1[23]), *(v2 + v1[23] + 8), v908, v909, v910, v911, v912, v913);
  sub_1BD0D4604(*(v2 + v1[24]), *(v2 + v1[24] + 8), v914, v915, v916, v917, v918, v919);
  sub_1BD0D4604(*(v2 + v1[25]), *(v2 + v1[25] + 8), v920, v921, v922, v923, v924, v925);
  *(v2 + v1[26]), v926, v927, v928, v929, v930, v931, v932;

  return swift_deallocObject();
}

uint64_t sub_1BD34BE80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSummarySheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD3480F8(a1, v6, a2);
}

unint64_t sub_1BD34BF00()
{
  result = qword_1EBD42918;
  if (!qword_1EBD42918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42920, &qword_1BE0CE1A8);
    sub_1BD0DE4F4(&qword_1EBD426F0, &qword_1EBD426E8, &qword_1BE0CDEB8, &unk_1BE0E6430);
    sub_1BD34BFE8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42918);
  }

  return result;
}

uint64_t sub_1BD34BFE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD34C030()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = [v1 userInfo];
  v6 = sub_1BE052244();

  if (!v6[2])
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    v38 = v4;
LABEL_7:
    v38, v23, v24, v25, v26, v27, v28, v29;
    return 8;
  }

  v14 = sub_1BD148F70(v2, v4);
  v16 = v15;
  v4, v15, v17, v18, v19, v20, v21, v22;
  if ((v16 & 1) == 0)
  {
    v38 = v6;
    goto LABEL_7;
  }

  sub_1BD038CD0(v6[7] + 32 * v14, v41);
  v6, v30, v31, v32, v33, v34, v35, v36;
  if (swift_dynamicCast())
  {
    return sub_1BD251780(v39, v40);
  }

  return 8;
}

uint64_t sub_1BD34C150()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = [v1 userInfo];
  v6 = sub_1BE052244();

  if (!v6[2])
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    v38 = v4;
LABEL_7:
    v38, v23, v24, v25, v26, v27, v28, v29;
    return 0;
  }

  v14 = sub_1BD148F70(v2, v4);
  v16 = v15;
  v4, v15, v17, v18, v19, v20, v21, v22;
  if ((v16 & 1) == 0)
  {
    v38 = v6;
    goto LABEL_7;
  }

  sub_1BD038CD0(v6[7] + 32 * v14, v40);
  v6, v30, v31, v32, v33, v34, v35, v36;
  if (swift_dynamicCast())
  {
    return v39;
  }

  return 0;
}

void sub_1BD34C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = sub_1BE052724();
  v12 = sub_1BE04AAB4();
  v13 = sub_1BE04AAB4();
  v23[4] = a6;
  v24 = a7;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1BD20815C;
  v23[3] = &block_descriptor_66;
  v14 = _Block_copy(v23);
  v15 = *(a8 + 16);
  sub_1BE048964();
  v15(a8, v11, v12, v13, v14);
  _Block_release(v14);

  v24, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1BD34C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
    v4 = sub_1BE052724();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void static ProvisioningFlowBridge.startInAppFlow(withNavController:context:requestConfiguration:phoneWebService:watchWebService:generateRequest:onViewLoaded:completion:)(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11)
{
  v172 = a8;
  v176 = a3;
  v177 = a7;
  v183 = a2;
  v184 = a6;
  v171 = a1;
  v182 = sub_1BE04BA14();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04B9C4();
  v174 = *(v14 - 8);
  v175 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v178 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  v191 = *(v16 - 8);
  v192 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v181 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v167 - v19;
  v190 = sub_1BE04C384();
  v188 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v187 = (&v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928, &unk_1BE0CE1B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v167 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v167 - v25;
  v27 = sub_1BE04B944();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v186 = &v167 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v167 - v36;
  if (a4)
  {
    v185 = a5;
    v38 = v28;
    v39 = v27;
    v40 = *MEMORY[0x1E69B7F78];
    v41 = sub_1BE04B8D4();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v26, v40, v41);
    (*(v42 + 56))(v26, 0, 1, v41);
    v43 = a4;
    sub_1BE04B914();
    v44 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1BD1D8928((v45 > 1), v46 + 1, 1, v44);
    }

    v27 = v39;
    *(v44 + 2) = v46 + 1;
    v28 = v38;
    (*(v38 + 32))(&v44[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v46], v37, v27);
    a5 = v185;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  v185 = a10;
  if (a5)
  {
    v47 = *MEMORY[0x1E69B7F80];
    v48 = sub_1BE04B8D4();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v26, v47, v48);
    (*(v49 + 56))(v26, 0, 1, v48);
    v50 = a5;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1BD1D8928(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v51 = *(v44 + 3);
    if (v52 >= v51 >> 1)
    {
      v44 = sub_1BD1D8928((v51 > 1), v52 + 1, 1, v44);
    }

    *(v44 + 2) = v52 + 1;
    (*(v28 + 32))(&v44[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v52], v34, v27);
  }

  if (*(v44 + 2))
  {
    v168 = a11;
    v53 = *(v28 + 16);
    v169 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v170 = v53;
    v53(v23, &v44[v169], v27);
    (*(v28 + 56))(v23, 0, 1, v27);
    sub_1BD0DE53C(v23, &qword_1EBD42928, &unk_1BE0CE1B0);
    v55 = v187;
    v54 = v188;
    v56 = v176;
    v57 = v177;
    v58 = v184;
    *v187 = v176;
    v55[1] = v58;
    v55[2] = v57;
    v59 = *MEMORY[0x1E69B82A0];
    v60 = *(v54 + 104);
    v184 = v27;
    v61 = v190;
    v60(v55, v59, v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v63 = swift_allocObject();
    v167 = xmmword_1BE0B69E0;
    *(v63 + 16) = xmmword_1BE0B69E0;
    (*(v54 + 16))(v63 + v62, v55, v61);
    sub_1BE04C3D4();
    swift_allocObject();
    v64 = v56;
    sub_1BE048964();
    sub_1BE048C84();
    v65 = sub_1BE04C394();
    (*(v174 + 104))(v178, *MEMORY[0x1E69B7FC0], v175);
    v66 = *MEMORY[0x1E69B7FE0];
    v67 = sub_1BE04B9D4();
    v68 = v179;
    (*(*(v67 - 8) + 104))(v179, v66, v67);
    (*(v180 + 104))(v68, *MEMORY[0x1E69B8020], v182);
    v69 = v189;
    sub_1BE04BA94();
    (*(v191 + 16))(v181, v69, v192);
    v70 = v183;
    v71 = [v183 provisioningController];
    v72 = [v70 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v73 = sub_1BE04BC24();
    if (*(v44 + 2))
    {
      v74 = v73;
      v183 = v28;
      v75 = v186;
      v76 = v184;
      v77 = v170;
      v170(v186, &v44[v169], v184);
      v77(v173, v75, v76);
      sub_1BE04BBA4();
      v78 = sub_1BE04B8E4();
      v79 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      if (v79)
      {
        sub_1BE04BBE4();
        v80 = sub_1BD34FA40(v74, 0, 0);
        sub_1BE04BB64();
        type metadata accessor for ProvisioningInAppFlowSection();
        v81 = swift_allocObject();
        v81[5] = 0;
        swift_unknownObjectWeakInit();
        v81[6] = 0xD000000000000010;
        v81[7] = 0x80000001BE124610;
        v81[2] = v74;
        v81[3] = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
        v82 = swift_allocObject();
        *(v82 + 16) = v167;
        *(v82 + 32) = v81;
        *(v82 + 40) = &off_1F3BCB268;
        v83 = objc_allocWithZone(type metadata accessor for UIFlowManager());
        v177 = v65;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v84 = sub_1BD3986F8(v82);
        *(*&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
        swift_unknownObjectWeakAssign();
        v85 = swift_allocObject();
        v85[2] = 0;
        v86 = swift_allocObject();
        v86[2] = 0;
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(v87 + 24) = v86;
        v88 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v89 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v90 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
        *v88 = sub_1BD35950C;
        v88[1] = v87;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD0D4744(v89, v90, v91, v92, v93, v94, v95, v96);
        v97 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v98 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v99 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
        *v97 = v172;
        v97[1] = a9;
        sub_1BD0D4744(v98, v99, v100, v101, v102, v103, v104, v105);
        v106 = swift_allocObject();
        v107 = v168;
        v106[2] = v185;
        v106[3] = v107;
        v106[4] = v85;
        v106[5] = v86;
        v106[6] = v80;
        v106[7] = v84;
        v108 = v80;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v109 = v84;
        sub_1BD398318(sub_1BD3594F8, v106);

        v74, v110, v111, v112, v113, v114, v115, v116;
        v177, v117, v118, v119, v120, v121, v122, v123;
        v81, v124, v125, v126, v127, v128, v129, v130;

        v106, v131, v132, v133, v134, v135, v136, v137;
        (*(v183 + 1))(v186, v184);
        (*(v191 + 8))(v189, v192);
        (*(v188 + 8))(v187, v190);
        v44, v138, v139, v140, v141, v142, v143, v144;
        v85, v145, v146, v147, v148, v149, v150, v151;
        v86, v152, v153, v154, v155, v156, v157, v158;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v28 + 56))(v23, 1, 1, v27);
    sub_1BD0DE53C(v23, &qword_1EBD42928, &unk_1BE0CE1B0);
    v159 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v185(0, v159);
    v44, v160, v161, v162, v163, v164, v165, v166;
  }
}

void sub_1BD34D784(int a1, int a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(id, id, id, uint64_t, void *), void *a10)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  v15[2] = v14;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  a9(v16, v17, v18, a8, v15);

  v15, v19, v20, v21, v22, v23, v24, v25;
}

id sub_1BD34D934(void (*a1)(uint64_t, void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = v10;
  v12 = sub_1BE048C84();
  a1(v12, v10);
  v9, v13, v14, v15, v16, v17, v18, v19;

  return [a5 stop];
}

uint64_t sub_1BD34DAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD359334(a1, v21);
  v5 = v22;
  if (v22)
  {
    v6 = *&v21[0];
    v7 = sub_1BE04A844();

    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = v7;
  }

  else
  {
    sub_1BD1B6140(v21, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    if (swift_dynamicCast())
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

    swift_beginAccess();
    v10 = *(a2 + 16);
    *(a2 + 16) = v9;
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  return v5;
}

id sub_1BD34DBD4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  swift_beginAccess();
  v11 = *(a5 + 16);
  v12 = v11;
  v13 = sub_1BE048C84();
  a2(v13, v11);
  v10, v14, v15, v16, v17, v18, v19, v20;

  return [a6 stop];
}

void sub_1BD34DD8C(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4)
{
  v6 = sub_1BE04BBD4();
  v7 = [v6 provisionedPasses];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 lastObject];

    if (v9)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      sub_1BD0E5E8C(0, &qword_1EBD42930, 0x1E69B8D50);
      if (swift_dynamicCast())
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v10 = 0;
    }

    v11 = [v10 secureElementPass];

    a2(v11);
    [a4 stop];
  }

  else
  {
    __break(1u);
  }
}

void static ProvisioningFlowBridge.startIngestionFlow(withUnownedNavController:context:credential:onFirstViewControllerShown:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v84 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v13 = MEMORY[0x1BFB389E0](a2);
  v14 = sub_1BD34FA40(v13, 0, 0);
  sub_1BE04BB64();
  v15 = sub_1BE04BBD4();
  v16 = [v15 provisioningResponse];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v77 = a4;
  v18 = [v15 provisionedPasses];
  if (!v18)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 lastObject];

  if (v20)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  key[0] = v81;
  key[1] = v82;
  if (!*(&v82 + 1))
  {

    v16 = sub_1BD0DE53C(key, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD42930, 0x1E69B8D50);
  if ((swift_dynamicCast() & 1) == 0 || (v21 = [v80 secureElementPass], v80, !v21))
  {

LABEL_16:
    a6(v16);

LABEL_17:
    v13, v31, v32, v33, v34, v35, v36, v37;
    return;
  }

  v72 = a5;
  v73 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B7020;
  *(v22 + 32) = v21;
  v75 = v21;
  v23 = sub_1BE04BBD4();
  v24 = [v23 moreInfoItems];

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1BE04BD64();
  sub_1BD0E5E8C(0, qword_1EBD3D8F8, 0x1E69B8E40);
  sub_1BE052744();

  v25 = [v17 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v76 = v75;
  v26 = sub_1BE04BC74();
  v27 = [a3 state];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 eligibilityResponse];

    if (v29)
    {
      v30 = [v29 identifier];

      if (v30)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();
    v38 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
    sub_1BE048964();
    v39 = v26;
    v74 = sub_1BD989980(v13, v39);
    v13, v40, v41, v42, v43, v44, v45, v46;

    v47 = sub_1BD988EB4();
    v48 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v49 = sub_1BD3986F8(v47);
    v50 = type metadata accessor for UIFlowManagerRendererWrapper();
    v51 = objc_allocWithZone(v50);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v79.receiver = v51;
    v79.super_class = v50;
    v52 = a1;
    v53 = objc_msgSendSuper2(&v79, sel_init);
    LOBYTE(key[0]) = 0;
    objc_setAssociatedObject(v52, key, v53, 1);

    *(*&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
    v54 = &v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v55 = *&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v56 = *&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
    *v54 = v77;
    v54[1] = v72;
    sub_1BD0D44B8(v77, v72);
    sub_1BD0D4744(v55, v56, v57, v58, v59, v60, v61, v62);
    v63 = swift_allocObject();
    v63[2] = v73;
    v63[3] = a7;
    v63[4] = v13;
    v63[5] = v49;
    sub_1BE048964();
    sub_1BE048964();
    v64 = v49;
    sub_1BD398318(sub_1BD354E24, v63);

    v63, v65, v66, v67, v68, v69, v70, v71;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void static ProvisioningFlowBridge.startPostProvisioningUITestFlow(withNavController:context:pass:parentNavController:presentNavController:completion:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = a3;
  v15 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC64();
  v17 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v18 = sub_1BE048964();
  v19 = sub_1BD989980(v18, v16);
  a2, v20, v21, v22, v23, v24, v25, v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BE0B69E0;
  *(v27 + 32) = v19;
  *(v27 + 40) = &off_1F3BC8F80;
  objc_allocWithZone(type metadata accessor for UIFlowManager());
  v28 = v19;
  v29 = sub_1BD3986F8(v27);
  *(*&v29[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v30 = type metadata accessor for UIFlowManagerRendererWrapper();
  v31 = objc_allocWithZone(v30);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v55.receiver = v31;
  v55.super_class = v30;
  v32 = a4;
  v33 = objc_msgSendSuper2(&v55, sel_init);
  key = 0;
  objc_setAssociatedObject(v32, &key, v33, 1);

  *&v29[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v34 = swift_allocObject();
  *(v34 + 16) = a5;
  *(v34 + 24) = a6;
  v35 = &v29[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v36 = *&v29[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v37 = *&v29[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v35 = sub_1BD267328;
  v35[1] = v34;
  sub_1BE048964();
  sub_1BD0D4744(v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = swift_allocObject();
  v44[2] = a7;
  v44[3] = a8;
  v44[4] = v29;
  sub_1BE048964();
  v45 = v29;
  sub_1BD398318(sub_1BD267328, v44);

  v44, v46, v47, v48, v49, v50, v51, v52;
}

void static ProvisioningFlowBridge.startProvisioningUITestFlow(withNavController:context:screens:pass:parentNavController:presentNavController:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B7020;
  *(v13 + 32) = a4;
  v14 = a4;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v15 = sub_1BE04BC64();
  v16 = objc_allocWithZone(type metadata accessor for ProvisioningScreenDebugger());
  v17 = v15;
  sub_1BE048C84();
  v18 = sub_1BE048964();
  v19 = sub_1BD7F6A2C(v18, v17, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B69E0;
  *(v20 + 32) = v19;
  *(v20 + 40) = &off_1F3BBD870;
  v21 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v22 = v19;
  v23 = sub_1BD3986F8(v20);
  *(*&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v24 = type metadata accessor for UIFlowManagerRendererWrapper();
  v25 = objc_allocWithZone(v24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v50.receiver = v25;
  v50.super_class = v24;
  v26 = a5;
  v27 = objc_msgSendSuper2(&v50, sel_init);
  key = 0;
  objc_setAssociatedObject(v26, &key, v27, 1);

  *&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a7;
  v29 = &v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v30 = *&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v31 = *&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v29 = sub_1BD267328;
  v29[1] = v28;
  sub_1BE048964();
  sub_1BD0D4744(v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = swift_allocObject();
  v38[2] = a8;
  v38[3] = a9;
  v38[4] = v23;
  sub_1BE048964();
  v39 = v23;
  sub_1BD398318(sub_1BD267328, v38);

  v38, v40, v41, v42, v43, v44, v45, v46;
}

id ProvisioningFlowBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningFlowBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningFlowBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProvisioningFlowBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ProvisioningFlowBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BD34FA40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  if (!a3)
  {
    v9 = sub_1BE04BBD4();
    v10 = [v9 referralSource];

    if (v10)
    {
      sub_1BE052434();
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  sub_1BE048C84();
  sub_1BE04BC34();
  sub_1BE04BA84();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = sub_1BE052404();
  v13, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE04BC34();
  sub_1BE04BA64();
  v24 = v23;
  v14(v7, v4);
  v25 = sub_1BE052404();
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (v8)
  {
    v33 = sub_1BE052404();
    v8, v34, v35, v36, v37, v38, v39, v40;
  }

  else
  {
    v33 = 0;
  }

  v41 = [objc_opt_self() startAnalyticsSessionForEnvironment:v15 intent:v25 referralSource:v33];

  v42 = sub_1BE04BBD4();
  v43 = [v42 campaignAttributionReferrerIdentifier];

  if (v43)
  {
    [v41 setCampaignAttributionReferrerIdentifier_];
  }

  v44 = sub_1BE04BBD4();
  v45 = [v41 createPreflightReporter];
  [v44 setAnalyticsReporter_];

  return v41;
}

void sub_1BD34FCE0(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), void *a11)
{
  v172 = a8;
  v179 = a7;
  *&v174 = a6;
  v185 = a5;
  v177 = a3;
  v184 = a2;
  v197 = *MEMORY[0x1E69E9840];
  v183 = sub_1BE04BA14();
  v181 = *(v183 - 1);
  MEMORY[0x1EEE9AC00](v183);
  v180 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1BE04B9C4();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04BAC4();
  v190 = *(v15 - 8);
  v191 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v168 - v18;
  v189 = sub_1BE04C384();
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v186 = (&v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928, &unk_1BE0CE1B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v168 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v168 - v24;
  v26 = sub_1BE04B944();
  v194 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v168 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v168 - v34;
  v36 = type metadata accessor for UIFlowManagerRendererWrapper();
  v37 = objc_allocWithZone(v36);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v196.receiver = v37;
  v196.super_class = v36;
  v38 = a1;
  v39 = objc_msgSendSuper2(&v196, sel_init);
  key = 0;
  v192 = v39;
  objc_setAssociatedObject(v38, &key, v39, 1);

  if (a4)
  {
    v40 = *MEMORY[0x1E69B7F78];
    v41 = sub_1BE04B8D4();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v25, v40, v41);
    (*(v42 + 56))(v25, 0, 1, v41);
    v43 = a4;
    sub_1BE04B914();
    v44 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1BD1D8928((v45 > 1), v46 + 1, 1, v44);
    }

    v47 = v26;
    *(v44 + 2) = v46 + 1;
    (*(v194 + 32))(&v44[((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v46], v35, v26);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
    v47 = v26;
  }

  v48 = v185;
  if (v185)
  {
    v49 = *MEMORY[0x1E69B7F80];
    v50 = sub_1BE04B8D4();
    v51 = *(v50 - 8);
    (*(v51 + 104))(v25, v49, v50);
    (*(v51 + 56))(v25, 0, 1, v50);
    v52 = v48;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1BD1D8928(0, *(v44 + 2) + 1, 1, v44);
    }

    v54 = *(v44 + 2);
    v53 = *(v44 + 3);
    v55 = v193;
    if (v54 >= v53 >> 1)
    {
      v44 = sub_1BD1D8928((v53 > 1), v54 + 1, 1, v44);
    }

    *(v44 + 2) = v54 + 1;
    (*(v194 + 32))(&v44[((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v54], v32, v47);
  }

  else
  {
    v55 = v193;
  }

  if (*(v44 + 2))
  {
    v168 = a11;
    v169 = a10;
    v56 = v194;
    v57 = *(v194 + 16);
    v170 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v171 = v57;
    v57(v22, &v44[v170], v47);
    (*(v56 + 56))(v22, 0, 1, v47);
    sub_1BD0DE53C(v22, &qword_1EBD42928, &unk_1BE0CE1B0);
    v58 = v186;
    v59 = v177;
    v60 = v174;
    *v186 = v177;
    v58[1] = v60;
    v58[2] = v179;
    v61 = *MEMORY[0x1E69B82A0];
    v185 = v47;
    v62 = v187;
    v63 = v189;
    (*(v187 + 104))(v58, v61, v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    v174 = xmmword_1BE0B69E0;
    *(v65 + 16) = xmmword_1BE0B69E0;
    (*(v62 + 16))(v65 + v64, v58, v63);
    sub_1BE04C3D4();
    swift_allocObject();
    v66 = v59;
    sub_1BE048964();
    sub_1BE048C84();
    v67 = sub_1BE04C394();
    (*(v175 + 104))(v178, *MEMORY[0x1E69B7FC0], v176);
    v68 = *MEMORY[0x1E69B7FE0];
    v69 = sub_1BE04B9D4();
    v70 = v180;
    (*(*(v69 - 8) + 104))(v180, v68, v69);
    (*(v181 + 104))(v70, *MEMORY[0x1E69B8020], v183);
    v71 = v188;
    sub_1BE04BA94();
    (*(v190 + 16))(v182, v71, v191);
    v72 = v184;
    v73 = [v184 provisioningController];
    v74 = [v72 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v75 = sub_1BE04BC24();
    if (!*(v44 + 2))
    {
      __break(1u);
    }

    v76 = v75;
    v77 = v185;
    v78 = v171;
    v171(v55, &v44[v170], v185);
    v78(v173, v55, v77);
    sub_1BE04BBA4();
    v79 = sub_1BE04B8E4();
    v80 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

    if (v80)
    {
      sub_1BE04BBE4();
      v184 = sub_1BD34FA40(v76, 0, 0);
      sub_1BE04BB64();
      type metadata accessor for ProvisioningInAppFlowSection();
      v81 = swift_allocObject();
      v81[5] = 0;
      swift_unknownObjectWeakInit();
      v81[6] = 0xD000000000000010;
      v81[7] = 0x80000001BE124610;
      v81[2] = v76;
      v81[3] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
      v82 = swift_allocObject();
      *(v82 + 16) = v174;
      *(v82 + 32) = v81;
      *(v82 + 40) = &off_1F3BCB268;
      v83 = objc_allocWithZone(type metadata accessor for UIFlowManager());
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v84 = sub_1BD3986F8(v82);
      *(*&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
      swift_unknownObjectWeakAssign();
      v85 = swift_allocObject();
      v85[2] = 0;
      v86 = swift_allocObject();
      v86[2] = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      *(v87 + 24) = v86;
      v88 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
      v183 = v67;
      v89 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
      v90 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
      *v88 = sub_1BD35950C;
      v88[1] = v87;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD0D4744(v89, v90, v91, v92, v93, v94, v95, v96);
      v97 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
      v98 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
      v99 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
      *v97 = v172;
      v97[1] = a9;
      sub_1BD0D4744(v98, v99, v100, v101, v102, v103, v104, v105);
      v106 = swift_allocObject();
      v107 = v168;
      v106[2] = v169;
      v106[3] = v107;
      v106[4] = v85;
      v106[5] = v86;
      v108 = v184;
      v106[6] = v184;
      v106[7] = v84;
      v109 = v108;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v110 = v84;
      sub_1BD398318(sub_1BD3594F8, v106);

      v76, v111, v112, v113, v114, v115, v116, v117;
      v183, v118, v119, v120, v121, v122, v123, v124;
      v81, v125, v126, v127, v128, v129, v130, v131;

      v106, v132, v133, v134, v135, v136, v137, v138;
      (*(v194 + 8))(v193, v185);
      (*(v190 + 8))(v188, v191);
      (*(v187 + 8))(v186, v189);

      v44, v139, v140, v141, v142, v143, v144, v145;
      v85, v146, v147, v148, v149, v150, v151, v152;
      v86, v153, v154, v155, v156, v157, v158, v159;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v194 + 56))(v22, 1, 1, v47);
    sub_1BD0DE53C(v22, &qword_1EBD42928, &unk_1BE0CE1B0);
    v160 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    a10(0, v160);

    v44, v161, v162, v163, v164, v165, v166, v167;
  }
}

void sub_1BD350B24(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), void *a11)
{
  v172 = a8;
  v176 = a3;
  v177 = a7;
  v183 = a2;
  v184 = a6;
  v171 = a1;
  v182 = sub_1BE04BA14();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04B9C4();
  v174 = *(v14 - 8);
  v175 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v178 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  v191 = *(v16 - 8);
  v192 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v181 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v167 - v19;
  v190 = sub_1BE04C384();
  v188 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v187 = (&v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928, &unk_1BE0CE1B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v167 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v167 - v25;
  v27 = sub_1BE04B944();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v186 = &v167 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v167 - v36;
  if (a4)
  {
    v185 = a5;
    v38 = v28;
    v39 = v27;
    v40 = *MEMORY[0x1E69B7F78];
    v41 = sub_1BE04B8D4();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v26, v40, v41);
    (*(v42 + 56))(v26, 0, 1, v41);
    v43 = a4;
    sub_1BE04B914();
    v44 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1BD1D8928((v45 > 1), v46 + 1, 1, v44);
    }

    v27 = v39;
    *(v44 + 2) = v46 + 1;
    v28 = v38;
    (*(v38 + 32))(&v44[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v46], v37, v27);
    a5 = v185;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  v185 = a10;
  if (a5)
  {
    v47 = *MEMORY[0x1E69B7F80];
    v48 = sub_1BE04B8D4();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v26, v47, v48);
    (*(v49 + 56))(v26, 0, 1, v48);
    v50 = a5;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1BD1D8928(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v51 = *(v44 + 3);
    if (v52 >= v51 >> 1)
    {
      v44 = sub_1BD1D8928((v51 > 1), v52 + 1, 1, v44);
    }

    *(v44 + 2) = v52 + 1;
    (*(v28 + 32))(&v44[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v52], v34, v27);
  }

  if (*(v44 + 2))
  {
    v168 = a11;
    v53 = *(v28 + 16);
    v169 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v170 = v53;
    v53(v23, &v44[v169], v27);
    (*(v28 + 56))(v23, 0, 1, v27);
    sub_1BD0DE53C(v23, &qword_1EBD42928, &unk_1BE0CE1B0);
    v55 = v187;
    v54 = v188;
    v56 = v176;
    v57 = v177;
    v58 = v184;
    *v187 = v176;
    v55[1] = v58;
    v55[2] = v57;
    v59 = *MEMORY[0x1E69B82A0];
    v60 = *(v54 + 104);
    v184 = v27;
    v61 = v190;
    v60(v55, v59, v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v63 = swift_allocObject();
    v167 = xmmword_1BE0B69E0;
    *(v63 + 16) = xmmword_1BE0B69E0;
    (*(v54 + 16))(v63 + v62, v55, v61);
    sub_1BE04C3D4();
    swift_allocObject();
    v64 = v56;
    sub_1BE048964();
    sub_1BE048C84();
    v65 = sub_1BE04C394();
    (*(v174 + 104))(v178, *MEMORY[0x1E69B7FC0], v175);
    v66 = *MEMORY[0x1E69B7FE0];
    v67 = sub_1BE04B9D4();
    v68 = v179;
    (*(*(v67 - 8) + 104))(v179, v66, v67);
    (*(v180 + 104))(v68, *MEMORY[0x1E69B8020], v182);
    v69 = v189;
    sub_1BE04BA94();
    (*(v191 + 16))(v181, v69, v192);
    v70 = v183;
    v71 = [v183 provisioningController];
    v72 = [v70 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v73 = sub_1BE04BC24();
    if (*(v44 + 2))
    {
      v74 = v73;
      v183 = v28;
      v75 = v186;
      v76 = v184;
      v77 = v170;
      v170(v186, &v44[v169], v184);
      v77(v173, v75, v76);
      sub_1BE04BBA4();
      v78 = sub_1BE04B8E4();
      v79 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      if (v79)
      {
        sub_1BE04BBE4();
        v80 = sub_1BD34FA40(v74, 0, 0);
        sub_1BE04BB64();
        type metadata accessor for ProvisioningInAppFlowSection();
        v81 = swift_allocObject();
        v81[5] = 0;
        swift_unknownObjectWeakInit();
        v81[6] = 0xD000000000000010;
        v81[7] = 0x80000001BE124610;
        v81[2] = v74;
        v81[3] = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
        v82 = swift_allocObject();
        *(v82 + 16) = v167;
        *(v82 + 32) = v81;
        *(v82 + 40) = &off_1F3BCB268;
        v83 = objc_allocWithZone(type metadata accessor for UIFlowManager());
        v177 = v65;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v84 = sub_1BD3986F8(v82);
        *(*&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
        swift_unknownObjectWeakAssign();
        v85 = swift_allocObject();
        v85[2] = 0;
        v86 = swift_allocObject();
        v86[2] = 0;
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(v87 + 24) = v86;
        v88 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v89 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v90 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
        *v88 = sub_1BD35950C;
        v88[1] = v87;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD0D4744(v89, v90, v91, v92, v93, v94, v95, v96);
        v97 = &v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v98 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v99 = *&v84[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
        *v97 = v172;
        v97[1] = a9;
        sub_1BD0D4744(v98, v99, v100, v101, v102, v103, v104, v105);
        v106 = swift_allocObject();
        v107 = v168;
        v106[2] = v185;
        v106[3] = v107;
        v106[4] = v85;
        v106[5] = v86;
        v106[6] = v80;
        v106[7] = v84;
        v108 = v80;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v109 = v84;
        sub_1BD398318(sub_1BD3594F8, v106);

        v74, v110, v111, v112, v113, v114, v115, v116;
        v177, v117, v118, v119, v120, v121, v122, v123;
        v81, v124, v125, v126, v127, v128, v129, v130;

        v106, v131, v132, v133, v134, v135, v136, v137;
        (*(v183 + 1))(v186, v184);
        (*(v191 + 8))(v189, v192);
        (*(v188 + 8))(v187, v190);
        v44, v138, v139, v140, v141, v142, v143, v144;
        v85, v145, v146, v147, v148, v149, v150, v151;
        v86, v152, v153, v154, v155, v156, v157, v158;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v28 + 56))(v23, 1, 1, v27);
    sub_1BD0DE53C(v23, &qword_1EBD42928, &unk_1BE0CE1B0);
    v159 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v185(0, v159);
    v44, v160, v161, v162, v163, v164, v165, v166;
  }
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context03addA13Configuration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo010PKPushableaP8Provider_pySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for UIFlowManagerRendererWrapper();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  key = 0;
  objc_setAssociatedObject(v12, &key, v13, 1);

  sub_1BD3519C0(v13, a2, a3, a4, a5, &off_1F3BAE1D8, &unk_1F3BA1540, sub_1BD35950C, &unk_1F3BA1568, sub_1BD3594F8);
}

void sub_1BD3519C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v113 = a7;
  v110 = a1;
  v111 = a6;
  v118 = a4;
  v119 = a5;
  v108 = a2;
  v120 = a10;
  v116 = a8;
  v117 = a9;
  v11 = sub_1BE04BA14();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BE04B9C4();
  v14 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04BAC4();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v103 - v20;
  v22 = sub_1BE04C384();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v26 = a3;
  (*(v23 + 104))(v26, *MEMORY[0x1E69B82B0], v22, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v109 = xmmword_1BE0B69E0;
  *(v28 + 16) = xmmword_1BE0B69E0;
  v114 = v23;
  v115 = v22;
  v29 = *(v23 + 16);
  v112 = v26;
  v29(v28 + v27, v26, v22);
  sub_1BE04C3D4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v30 = sub_1BE04C394();
  (*(v14 + 104))(v16, *MEMORY[0x1E69B7FC0], v105);
  v31 = *MEMORY[0x1E69B7FE0];
  v32 = sub_1BE04B9D4();
  (*(*(v32 - 8) + 104))(v13, v31, v32);
  (*(v106 + 104))(v13, *MEMORY[0x1E69B8020], v107);
  sub_1BE04BA94();
  (*(v121 + 16))(v104, v21, v122);
  v33 = v108;
  v34 = [v108 provisioningController];
  v35 = [v33 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v36 = sub_1BE04BC24();
  v37 = sub_1BD34FA40(v36, 0, 0);
  v38 = [a3 identityDocumentConfiguration];
  if (v38)
  {
    v39 = MEMORY[0x1E69BB1D0];
LABEL_5:

    [v37 setProductType:*v39 subtype:0];
    goto LABEL_6;
  }

  v38 = [a3 shareablePassConfiguration];
  if (v38)
  {
    v39 = MEMORY[0x1E69BB1C8];
    goto LABEL_5;
  }

LABEL_6:
  v40 = v37;
  sub_1BE04BB64();
  type metadata accessor for ProvisioningInAppPushProvFlowSection();
  v41 = swift_allocObject();
  v41[5] = 0;
  swift_unknownObjectWeakInit();
  v41[6] = 0xD000000000000018;
  v41[7] = 0x80000001BE124910;
  v41[8] = 0;
  v41[2] = v36;
  v41[3] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v42 = swift_allocObject();
  *(v42 + 16) = v109;
  *(v42 + 32) = v41;
  *(v42 + 40) = &off_1F3BA8BB8;
  v43 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v44 = sub_1BD3986F8(v42);
  *(*&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = v111;
  swift_unknownObjectWeakAssign();
  v45 = swift_allocObject();
  v45[2] = 0;
  v46 = swift_allocObject();
  v46[2] = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v46;
  v48 = &v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v49 = *&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v50 = *&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
  *v48 = v116;
  v48[1] = v47;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = swift_allocObject();
  v58 = v119;
  v57[2] = v118;
  v57[3] = v58;
  v57[4] = v45;
  v57[5] = v46;
  v57[6] = v40;
  v57[7] = v44;
  v59 = v40;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v60 = v44;
  sub_1BD398318(v120, v57);

  v36, v61, v62, v63, v64, v65, v66, v67;
  v30, v68, v69, v70, v71, v72, v73, v74;
  v41, v75, v76, v77, v78, v79, v80, v81;

  v57, v82, v83, v84, v85, v86, v87, v88;
  (*(v121 + 8))(v21, v122);
  (*(v114 + 8))(v112, v115);
  v45, v89, v90, v91, v92, v93, v94, v95;
  v46, v96, v97, v98, v99, v100, v101, v102;
}

void sub_1BD3520DC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v172 = a1;
  v9 = sub_1BE04BAC4();
  v167 = *(v9 - 8);
  v168 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B86E8]) initWithConfiguration:a3 productIdentifier:*MEMORY[0x1E69BC2B8]];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v14 = sub_1BE04C384();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v169 = xmmword_1BE0B69E0;
  *(v17 + 16) = xmmword_1BE0B69E0;
  *(v17 + v16) = v13;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69B82A8], v14);
  sub_1BE04C3D4();
  swift_allocObject();
  v18 = v13;
  v19 = sub_1BE04C394();
  sub_1BE04BC44();
  v20 = MEMORY[0x1BFB389E0](a2);
  v21 = [a3 referralSource];
  if (v21 > 8)
  {
LABEL_20:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v171 = a4;
  v173 = v19;
  if (((1 << v21) & 0x18F) != 0)
  {
    v22 = 0;
  }

  else if (((1 << v21) & 0x60) != 0)
  {
    v22 = 1;
  }

  else
  {
    v23 = [a3 password];
    v24 = sub_1BE052434();
    v26 = v25;

    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v34 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v22 = [a3 passwordEnteredManually];
    }

    else
    {
      v22 = 1;
    }

    v19 = v173;
  }

  v170 = v18;
  type metadata accessor for ProvisioningCarPairingFlowSection();
  v35 = swift_allocObject();
  *(v35 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + 56) = 0xD000000000000015;
  *(v35 + 64) = 0x80000001BE124930;
  *(v35 + 16) = v20;
  *(v35 + 24) = v19;
  *(v35 + 32) = v22;
  sub_1BE048964();
  sub_1BE048964();
  v36 = PKSubcredentialPairingReferralSourceToString();
  if (!v36)
  {
    sub_1BE052434();
    v38 = v37;
    v36 = sub_1BE052404();
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  v46 = sub_1BE052434();
  v48 = v47;
  v49 = [a3 analyticsArchivedParentToken];
  if (v49)
  {
    v57 = v49;
    v48, v50, v51, v52, v53, v54, v55, v56;
    v58 = sub_1BE04AAC4();
    v164 = v59;
    v165 = v58;

    v163 = objc_opt_self();
    sub_1BE04BC34();
    sub_1BE04BA84();
    v166 = a5;
    v61 = v60;
    v62 = v168;
    v63 = *(v167 + 8);
    v63(v11, v168);
    v64 = sub_1BE052404();
    v61, v65, v66, v67, v68, v69, v70, v71;
    sub_1BE04BC34();
    sub_1BE04BA64();
    v73 = v72;
    v63(v11, v62);
    v74 = sub_1BE052404();
    v73, v75, v76, v77, v78, v79, v80, v81;
    v83 = v164;
    v82 = v165;
    v84 = sub_1BE04AAB4();
    v85 = [v163 continueAnalyticsSessionForEnvironment:v64 intent:v74 referralSource:v36 archivedParent:v84];

    a5 = v166;
    v86 = v85;
    v87 = sub_1BE04BBD4();
    v88 = [v86 createPreflightReporter];
    [v87 setAnalyticsReporter_];

    sub_1BD1245AC(v82, v83, v89, v90, v91, v92, v93, v94);
  }

  else
  {

    v95 = sub_1BD34FA40(v20, v46, v48);
    v48, v96, v97, v98, v99, v100, v101, v102;
    v86 = v95;
  }

  v103 = v86;
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v104 = swift_allocObject();
  *(v104 + 16) = v169;
  *(v104 + 32) = v35;
  *(v104 + 40) = &off_1F3B9E9D8;
  v105 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  v106 = sub_1BD3986F8(v104);
  *(*&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v107 = swift_allocObject();
  v107[2] = 0;
  v108 = swift_allocObject();
  v108[2] = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v108;
  v110 = &v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v111 = *&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v112 = *&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
  *v110 = sub_1BD35950C;
  v110[1] = v109;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v111, v112, v113, v114, v115, v116, v117, v118);
  v119 = swift_allocObject();
  v119[2] = v171;
  v119[3] = a5;
  v119[4] = v107;
  v119[5] = v108;
  v119[6] = v103;
  v119[7] = v106;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v120 = v106;
  sub_1BD398318(sub_1BD3594F8, v119);
  v107, v121, v122, v123, v124, v125, v126, v127;
  v108, v128, v129, v130, v131, v132, v133, v134;

  v119, v135, v136, v137, v138, v139, v140, v141;
  v35, v142, v143, v144, v145, v146, v147, v148;
  v173, v149, v150, v151, v152, v153, v154, v155;
  v20, v156, v157, v158, v159, v160, v161, v162;
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context22addCarKeyConfiguration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo05PKAddpqaR0CySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for UIFlowManagerRendererWrapper();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  key = 0;
  objc_setAssociatedObject(v12, &key, v13, 1);

  sub_1BD3520DC(v13, a2, a3, a4, a5);
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE017withNavController7context22addCarKeyConfiguration10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo05PKAddopaQ0CySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v172 = a1;
  v9 = sub_1BE04BAC4();
  v167 = *(v9 - 8);
  v168 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B86E8]) initWithConfiguration:a3 productIdentifier:*MEMORY[0x1E69BC2B8]];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v14 = sub_1BE04C384();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v169 = xmmword_1BE0B69E0;
  *(v17 + 16) = xmmword_1BE0B69E0;
  *(v17 + v16) = v13;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69B82A8], v14);
  sub_1BE04C3D4();
  swift_allocObject();
  v18 = v13;
  v19 = sub_1BE04C394();
  sub_1BE04BC44();
  v20 = MEMORY[0x1BFB389E0](a2);
  v21 = [a3 referralSource];
  if (v21 > 8)
  {
LABEL_20:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v171 = a4;
  v173 = v19;
  if (((1 << v21) & 0x18F) != 0)
  {
    v22 = 0;
  }

  else if (((1 << v21) & 0x60) != 0)
  {
    v22 = 1;
  }

  else
  {
    v23 = [a3 password];
    v24 = sub_1BE052434();
    v26 = v25;

    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v34 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v22 = [a3 passwordEnteredManually];
    }

    else
    {
      v22 = 1;
    }

    v19 = v173;
  }

  v170 = v18;
  type metadata accessor for ProvisioningCarPairingFlowSection();
  v35 = swift_allocObject();
  *(v35 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + 56) = 0xD000000000000015;
  *(v35 + 64) = 0x80000001BE124930;
  *(v35 + 16) = v20;
  *(v35 + 24) = v19;
  *(v35 + 32) = v22;
  sub_1BE048964();
  sub_1BE048964();
  v36 = PKSubcredentialPairingReferralSourceToString();
  if (!v36)
  {
    sub_1BE052434();
    v38 = v37;
    v36 = sub_1BE052404();
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  v46 = sub_1BE052434();
  v48 = v47;
  v49 = [a3 analyticsArchivedParentToken];
  if (v49)
  {
    v57 = v49;
    v48, v50, v51, v52, v53, v54, v55, v56;
    v58 = sub_1BE04AAC4();
    v164 = v59;
    v165 = v58;

    v163 = objc_opt_self();
    sub_1BE04BC34();
    sub_1BE04BA84();
    v166 = a5;
    v61 = v60;
    v62 = v168;
    v63 = *(v167 + 8);
    v63(v11, v168);
    v64 = sub_1BE052404();
    v61, v65, v66, v67, v68, v69, v70, v71;
    sub_1BE04BC34();
    sub_1BE04BA64();
    v73 = v72;
    v63(v11, v62);
    v74 = sub_1BE052404();
    v73, v75, v76, v77, v78, v79, v80, v81;
    v83 = v164;
    v82 = v165;
    v84 = sub_1BE04AAB4();
    v85 = [v163 continueAnalyticsSessionForEnvironment:v64 intent:v74 referralSource:v36 archivedParent:v84];

    a5 = v166;
    v86 = v85;
    v87 = sub_1BE04BBD4();
    v88 = [v86 createPreflightReporter];
    [v87 setAnalyticsReporter_];

    sub_1BD1245AC(v82, v83, v89, v90, v91, v92, v93, v94);
  }

  else
  {

    v95 = sub_1BD34FA40(v20, v46, v48);
    v48, v96, v97, v98, v99, v100, v101, v102;
    v86 = v95;
  }

  v103 = v86;
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v104 = swift_allocObject();
  *(v104 + 16) = v169;
  *(v104 + 32) = v35;
  *(v104 + 40) = &off_1F3B9E9D8;
  v105 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  v106 = sub_1BD3986F8(v104);
  *(*&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v107 = swift_allocObject();
  v107[2] = 0;
  v108 = swift_allocObject();
  v108[2] = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v108;
  v110 = &v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v111 = *&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v112 = *&v106[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
  *v110 = sub_1BD35950C;
  v110[1] = v109;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v111, v112, v113, v114, v115, v116, v117, v118);
  v119 = swift_allocObject();
  v119[2] = v171;
  v119[3] = a5;
  v119[4] = v107;
  v119[5] = v108;
  v119[6] = v103;
  v119[7] = v106;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v120 = v106;
  sub_1BD398318(sub_1BD3594F8, v119);
  v107, v121, v122, v123, v124, v125, v126, v127;
  v108, v128, v129, v130, v131, v132, v133, v134;

  v119, v135, v136, v137, v138, v139, v140, v141;
  v35, v142, v143, v144, v145, v146, v147, v148;
  v173, v149, v150, v151, v152, v153, v154, v155;
  v20, v156, v157, v158, v159, v160, v161, v162;
}

void _s9PassKitUI22ProvisioningFlowBridgeC024startShareableCredentialE017withNavController7context11credentials10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSaySo0phI0CGyyctFZ_0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE04C384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v65 - v15);
  v73 = a3;
  if (a3 >> 62)
  {
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = a1;
  if (!v17)
  {
LABEL_16:
    sub_1BE04C3D4();
    swift_allocObject();
    v27 = sub_1BE04C394();
    sub_1BE04BC44();
    v28 = MEMORY[0x1BFB389E0](a2);
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v29 = swift_allocObject();
    v29[5] = 0;
    swift_unknownObjectWeakInit();
    v29[6] = 0xD000000000000018;
    v29[7] = 0x80000001BE124910;
    v29[8] = 0;
    v29[2] = v28;
    v29[3] = v27;
    sub_1BE048964();
    sub_1BE048964();
    v30 = sub_1BD34FA40(v28, 0, 0);
    sub_1BE04BB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BE0B69E0;
    *(v31 + 32) = v29;
    *(v31 + 40) = &off_1F3BA8BB8;
    v32 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    sub_1BE048964();
    v33 = sub_1BD3986F8(v31);
    *(*&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v34 = swift_allocObject();
    v34[2] = a4;
    v34[3] = a5;
    v34[4] = v30;
    v34[5] = v33;
    v35 = v30;
    sub_1BE048964();
    v36 = v33;
    sub_1BD398318(sub_1BD3594FC, v34);
    v27, v37, v38, v39, v40, v41, v42, v43;
    v28, v44, v45, v46, v47, v48, v49, v50;
    v29, v51, v52, v53, v54, v55, v56, v57;

    v34, v58, v59, v60, v61, v62, v63, v64;
    return;
  }

  v74 = MEMORY[0x1E69E7CC0];
  sub_1BD531FF4(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v66 = a2;
    v67 = a4;
    v68 = a5;
    v18 = v74;
    if ((v73 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      LODWORD(v72) = *MEMORY[0x1E69B82A8];
      do
      {
        *v16 = MEMORY[0x1BFB40900](v19);
        (*(v11 + 104))(v16, v72, v10);
        v74 = v18;
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BD531FF4((v20 > 1), v21 + 1, 1);
          v18 = v74;
        }

        ++v19;
        *(v18 + 16) = v21 + 1;
        (*(v11 + 32))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v16, v10);
      }

      while (v17 != v19);
    }

    else
    {
      v22 = (v73 + 32);
      LODWORD(v73) = *MEMORY[0x1E69B82A8];
      v71 = *(v11 + 104);
      v72 = v11 + 104;
      v70 = v11 + 32;
      do
      {
        v23 = *v22;
        *v13 = *v22;
        v71(v13, v73, v10);
        v74 = v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 24);
        v26 = v23;
        if (v24 >= v25 >> 1)
        {
          sub_1BD531FF4((v25 > 1), v24 + 1, 1);
          v18 = v74;
        }

        *(v18 + 16) = v24 + 1;
        (*(v11 + 32))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v13, v10);
        ++v22;
        --v17;
      }

      while (v17);
    }

    a4 = v67;
    a5 = v68;
    a2 = v66;
    goto LABEL_16;
  }

  __break(1u);
}

void _s9PassKitUI22ProvisioningFlowBridgeC020startShareRedemptionE017withNavController7context10invitation14referralSource10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo013PKSharingPushD10InvitationCSSSgySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v115 = a6;
  v116 = a7;
  v109 = a5;
  v110 = a4;
  v108 = a2;
  v114 = a1;
  v106 = sub_1BE04BA14();
  v8 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BE04B9C4();
  v11 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04BAC4();
  v117 = *(v14 - 8);
  v118 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v103 - v17;
  v18 = sub_1BE04C384();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = a3;
  v23 = *MEMORY[0x1E69B8288];
  v112 = v22;
  v113 = v19;
  v24 = *(v19 + 104);
  v26 = v25;
  v111 = v25;
  v24(v22, v23, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = swift_allocObject();
  v107 = xmmword_1BE0B69E0;
  *(v28 + 16) = xmmword_1BE0B69E0;
  (*(v19 + 16))(v28 + v27, v22, v26);
  sub_1BE04C3D4();
  swift_allocObject();
  v29 = a3;
  v30 = sub_1BE04C394();
  (*(v11 + 104))(v13, *MEMORY[0x1E69B7FC0], v104);
  v31 = *MEMORY[0x1E69B8010];
  v32 = sub_1BE04B9F4();
  (*(*(v32 - 8) + 104))(v10, v31, v32);
  (*(v8 + 104))(v10, *MEMORY[0x1E69B8018], v106);
  v33 = v103;
  sub_1BE04BA94();
  (*(v117 + 16))(v105, v33, v118);
  v34 = v108;
  v35 = [v108 provisioningController];
  v36 = [v34 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v37 = sub_1BE04BC24();
  v38 = v109;
  sub_1BE048C84();
  v39 = v110;
  sub_1BE04BB24();
  v40 = sub_1BD34FA40(v37, v39, v38);
  sub_1BE04BB64();
  type metadata accessor for ProvisioningInAppPushProvFlowSection();
  v41 = swift_allocObject();
  v41[5] = 0;
  swift_unknownObjectWeakInit();
  v41[6] = 0xD000000000000018;
  v41[7] = 0x80000001BE124910;
  v41[8] = 0;
  v41[2] = v37;
  v41[3] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v42 = swift_allocObject();
  *(v42 + 16) = v107;
  *(v42 + 32) = v41;
  *(v42 + 40) = &off_1F3BA8BB8;
  v43 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v44 = sub_1BD3986F8(v42);
  *(*&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v45 = swift_allocObject();
  v45[2] = 0;
  v46 = swift_allocObject();
  v46[2] = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v46;
  v48 = &v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v49 = *&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v50 = *&v44[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
  *v48 = sub_1BD35950C;
  v48[1] = v47;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = swift_allocObject();
  v58 = v116;
  v57[2] = v115;
  v57[3] = v58;
  v57[4] = v45;
  v57[5] = v46;
  v57[6] = v40;
  v57[7] = v44;
  v59 = v40;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v60 = v44;
  sub_1BD398318(sub_1BD3594F8, v57);

  v37, v61, v62, v63, v64, v65, v66, v67;
  v30, v68, v69, v70, v71, v72, v73, v74;
  v41, v75, v76, v77, v78, v79, v80, v81;

  v57, v82, v83, v84, v85, v86, v87, v88;
  (*(v117 + 8))(v33, v118);
  (*(v113 + 8))(v112, v111);
  v45, v89, v90, v91, v92, v93, v94, v95;
  v46, v96, v97, v98, v99, v100, v101, v102;
}

void _s9PassKitUI22ProvisioningFlowBridgeC026startCarKeyShareRedemptionE017withNavController7context10invitation6handle08originalJ3URL10completionySo035PKPaymentSetupDismissibleNavigationN0C_So21PKProvisioningContextCSo09PKSharinghI10InvitationCSo22PKSharingChannelHandleCSSySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = a8;
  v99 = a2;
  v96 = a7;
  v92 = a5;
  v93 = a6;
  v100 = a3;
  v101 = a4;
  v94 = a1;
  v8 = sub_1BE04BA14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B9C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v92 - v22;
  (*(v13 + 104))(v15, *MEMORY[0x1E69B7FC0], v12, v21);
  v24 = *MEMORY[0x1E69B8010];
  v25 = sub_1BE04B9F4();
  (*(*(v25 - 8) + 104))(v11, v24, v25);
  (*(v9 + 104))(v11, *MEMORY[0x1E69B8018], v8);
  sub_1BE04BA94();
  v95 = v17;
  v26 = *(v17 + 16);
  v97 = v16;
  v26(v19, v23, v16);
  v27 = v99;
  v28 = [v99 provisioningController];
  v29 = [v27 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v30 = sub_1BE04BC24();
  v31 = sub_1BD34FA40(v30, 0, 0);
  sub_1BE04BB64();
  v32 = objc_opt_self();
  sub_1BE048964();
  v33 = [v32 createTaggedShare];
  v34 = v100;
  v35 = [v100 activationOptions];
  [v33 setActivationOptions_];

  v36 = objc_allocWithZone(MEMORY[0x1E69B92B8]);
  v37 = [v36 initWithSharingChannelHandle:v101 invitation:v34 share:v33];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1BE052404();
    [v38 setOriginalShareURL_];

    v40 = type metadata accessor for ProvisioningCarKeyInvitationFlowItem();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator] = 0;
    *&v41[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v42 = &v41[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier];
    *v42 = 0xD000000000000018;
    *(v42 + 1) = 0x80000001BE1248F0;
    *&v41[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context] = v30;
    *&v41[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential] = v38;
    v102.receiver = v41;
    v102.super_class = v40;
    v43 = objc_msgSendSuper2(&v102, sel_init);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BE0B69E0;
    *(v44 + 32) = v43;
    *(v44 + 40) = &off_1F3BA70D8;
    v45 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v46 = v43;
    v47 = sub_1BD3986F8(v44);
    *(*&v47[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v48 = swift_allocObject();
    v48[2] = 0;
    v49 = swift_allocObject();
    v49[2] = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v49;
    v51 = &v47[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v52 = *&v47[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v53 = *&v47[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
    *v51 = sub_1BD35950C;
    v51[1] = v50;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0D4744(v52, v53, v54, v55, v56, v57, v58, v59);
    v60 = swift_allocObject();
    v61 = v96;
    v60[2] = v47;
    v60[3] = v61;
    v60[4] = v98;
    v60[5] = v48;
    v60[6] = v49;
    v60[7] = v31;
    v62 = v31;
    sub_1BE048964();
    sub_1BE048964();
    v63 = v47;
    sub_1BE048964();
    sub_1BD398318(sub_1BD359324, v60);

    v30, v64, v65, v66, v67, v68, v69, v70;
    v60, v71, v72, v73, v74, v75, v76, v77;
    (*(v95 + 8))(v23, v97);
    v48, v78, v79, v80, v81, v82, v83, v84;
    v49, v85, v86, v87, v88, v89, v90, v91;
  }

  else
  {
    __break(1u);
  }
}

void _s9PassKitUI22ProvisioningFlowBridgeC023startProductManualEntryE017withNavController7context7product07presentlM010completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCSo0rsH0CyycySo015PKSecureElementA0CSgctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a2);
  v11 = type metadata accessor for PaymentSetupProductFlowSection();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
  *v13 = 0xD000000000000012;
  *(v13 + 1) = 0x80000001BE118AA0;
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v10;
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = a3;
  v64.receiver = v12;
  v64.super_class = v11;
  sub_1BE048964();
  v14 = a3;
  v15 = objc_msgSendSuper2(&v64, sel_init);
  v16 = sub_1BD34FA40(v10, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B6CA0;
  v18 = type metadata accessor for ProvisioningHeroFlowItem();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
  v20 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
  strcpy(&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
  v21[13] = 0;
  *(v21 + 7) = -5120;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v10;
  v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
  v22 = *&v19[v20];
  *&v19[v20] = 0;
  swift_retain_n();

  v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
  v63.receiver = v19;
  v63.super_class = v18;
  v23 = objc_msgSendSuper2(&v63, sel_init);
  v10, v24, v25, v26, v27, v28, v29, v30;
  *(v17 + 32) = v23;
  *(v17 + 40) = &off_1F3BA7D00;
  *(v17 + 48) = v15;
  *(v17 + 56) = &off_1F3BAAA80;
  v31 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v32 = v15;
  v33 = sub_1BD3986F8(v17);
  *(*&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v34 = &v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v35 = *&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v36 = *&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v34 = a4;
  *(v34 + 1) = a5;
  sub_1BD0D4744(v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = swift_allocObject();
  v43[2] = v10;
  v43[3] = a6;
  v43[4] = a7;
  v43[5] = v16;
  v43[6] = v33;
  sub_1BE048964();
  v44 = v16;
  sub_1BE048964();
  sub_1BE048964();
  v45 = v33;
  sub_1BD398318(sub_1BD359314, v43);
  v10, v46, v47, v48, v49, v50, v51, v52;

  v43, v53, v54, v55, v56, v57, v58, v59;
}

void _s9PassKitUI22ProvisioningFlowBridgeC016startManualEntryE017withNavController7context10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1BE04BC44();
  v7 = MEMORY[0x1BFB389E0](a2);
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v9 = sub_1BE048964();
  v10 = sub_1BD87126C(v9, 0, 0);
  v11 = sub_1BD34FA40(v7, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 32) = v10;
  *(v12 + 40) = &off_1F3BC0AB0;
  v13 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v14 = v10;
  v15 = sub_1BD3986F8(v12);
  *(*&v15[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v11;
  v16[5] = v15;
  v17 = v11;
  sub_1BE048964();
  v18 = v15;
  sub_1BD398318(sub_1BD3594FC, v16);
  v7, v19, v20, v21, v22, v23, v24, v25;

  v16, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC024startProvisionToPurchaseE017withNavController7context011onFirstViewM5Shown10completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCyycSgyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v92 = a5;
  v93 = a6;
  v87 = a1;
  v88 = a4;
  v83 = a3;
  v8 = sub_1BE04B9C4();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = sub_1BE04BA14();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  [a2 environment];
  sub_1BE04BAD4();
  sub_1BE04BA24();
  v84 = *(v12 + 8);
  v85 = v12 + 8;
  v84(v17, v11);
  (*(v90 + 104))(v10, *MEMORY[0x1E69B7FB8], v91);
  v89 = v19;
  v90 = v18;
  v26 = *(v19 + 16);
  v86 = v25;
  v27 = v18;
  v28 = v83;
  v26(v21, v25, v27);
  sub_1BE04BA94();
  v29 = *(v12 + 16);
  v91 = v14;
  v29(v17, v14, v11);
  v30 = [a2 provisioningController];
  v31 = [a2 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v32 = sub_1BE04BC24();
  v33 = sub_1BD34FA40(v32, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BE0B69E0;
  v35 = sub_1BE048964();
  *(v34 + 32) = sub_1BD99F510(v35, 0, 1);
  *(v34 + 40) = &off_1F3BC96F0;
  if (!v28)
  {
    v82 = v11;
    v36 = type metadata accessor for ProvisioningHeroFlowItem();
    v37 = objc_allocWithZone(v36);
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v38 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v39 = &v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v39[13] = 0;
    *(v39 + 7) = -5120;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v32;
    v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v40 = *&v37[v38];
    *&v37[v38] = 0;
    swift_retain_n();

    v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v94.receiver = v37;
    v94.super_class = v36;
    v41 = objc_msgSendSuper2(&v94, sel_init);
    v32, v42, v43, v44, v45, v46, v47, v48;
    v95 = v34;
    v49 = *(v34 + 16);
    if (v49 >= *(v34 + 24) >> 1)
    {
      v34 = sub_1BD1D7488(1, (v49 + 1), 1, v34);
      v95 = v34;
    }

    sub_1BD1DE408(0, 0, 1, v41, &off_1F3BA7D00);

    v11 = v82;
  }

  v50 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v51 = sub_1BD3986F8(v34);
  *(*&v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v52 = &v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v53 = *&v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v54 = *&v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  v55 = v88;
  *v52 = v28;
  v52[1] = v55;
  sub_1BD0D44B8(v28, v55);
  sub_1BD0D4744(v53, v54, v56, v57, v58, v59, v60, v61);
  v62 = swift_allocObject();
  v63 = v93;
  v62[2] = v92;
  v62[3] = v63;
  v62[4] = v33;
  v62[5] = v51;
  v64 = v33;
  sub_1BE048964();
  v65 = v51;
  sub_1BD398318(sub_1BD3594FC, v62);

  v32, v66, v67, v68, v69, v70, v71, v72;
  v62, v73, v74, v75, v76, v77, v78, v79;
  v84(v91, v11);
  return (*(v89 + 8))(v86, v90);
}

void sub_1BD354E28(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v90 = *MEMORY[0x1E69E9840];
  v11 = swift_allocObject();
  v11[2] = a6;
  sub_1BE04BC44();
  _Block_copy(a6);
  v12 = MEMORY[0x1BFB389E0](a2);
  v13 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  v14 = sub_1BE04BBD4();
  v15 = [v14 provisioningResponse];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v82 = a1;
  v17 = [v14 provisionedPasses];
  if (!v17)
  {
    _Block_release(a6);
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 lastObject];

  if (v19)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  key[0] = v87;
  key[1] = v88;
  if (!*(&v88 + 1))
  {

    sub_1BD0DE53C(key, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD42930, 0x1E69B8D50);
  if ((swift_dynamicCast() & 1) == 0 || (v20 = [v86 secureElementPass], v86, !v20))
  {

LABEL_16:
    a6[2](a6);

LABEL_17:
    v11, v30, v31, v32, v33, v34, v35, v36;
    v12, v37, v38, v39, v40, v41, v42, v43;
    return;
  }

  v78 = a4;
  v79 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B7020;
  *(v21 + 32) = v20;
  v80 = v20;
  v22 = sub_1BE04BBD4();
  v23 = [v22 moreInfoItems];

  if (!v23)
  {
LABEL_20:
    _Block_release(a6);
    __break(1u);
    goto LABEL_21;
  }

  sub_1BE04BD64();
  sub_1BD0E5E8C(0, qword_1EBD3D8F8, 0x1E69B8E40);
  sub_1BE052744();

  v24 = [v16 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v81 = v80;
  v25 = sub_1BE04BC74();
  v26 = [a3 state];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 eligibilityResponse];

    if (v28)
    {
      v29 = [v28 identifier];

      if (v29)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();
    v44 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
    sub_1BE048964();
    v45 = v25;
    v84 = sub_1BD989980(v12, v45);
    v12, v46, v47, v48, v49, v50, v51, v52;

    v53 = sub_1BD988EB4();
    v54 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v55 = sub_1BD3986F8(v53);
    v56 = type metadata accessor for UIFlowManagerRendererWrapper();
    v57 = objc_allocWithZone(v56);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v85.receiver = v57;
    v85.super_class = v56;
    v58 = v82;
    v59 = objc_msgSendSuper2(&v85, sel_init);
    LOBYTE(key[0]) = 0;
    objc_setAssociatedObject(v58, key, v59, 1);

    *(*&v55[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
    v60 = &v55[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v61 = *&v55[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v62 = *&v55[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
    *v60 = v78;
    v60[1] = v79;
    sub_1BD0D44B8(v78, v79);
    sub_1BD0D4744(v61, v62, v63, v64, v65, v66, v67, v68);
    v69 = swift_allocObject();
    v69[2] = sub_1BD167418;
    v69[3] = v11;
    v69[4] = v12;
    v69[5] = v55;
    sub_1BE048964();
    sub_1BE048964();
    v70 = v55;
    sub_1BD398318(sub_1BD3594F4, v69);

    v69, v71, v72, v73, v74, v75, v76, v77;
    goto LABEL_17;
  }

LABEL_21:
  _Block_release(a6);
  __break(1u);
}

void _s9PassKitUI22ProvisioningFlowBridgeC017startVerificationE017withNavController7context4pass012verificationK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSo015PKSecureElementA0CSo0qhK0CyycyyctFZ_0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = a3;
  v15 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  sub_1BE04BC44();
  v17 = MEMORY[0x1BFB389E0](a2);
  v18 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationFlowSection());
  sub_1BE048964();
  v19 = v16;
  v20 = sub_1BD28EC40(v17, v19, a4);
  v21 = sub_1BD34FA40(v17, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B69E0;
  *(v22 + 32) = v20;
  *(v22 + 40) = &off_1F3B9AD58;
  v23 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v24 = v20;
  v25 = sub_1BD3986F8(v22);
  *(*&v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  v27 = &v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v28 = *&v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v29 = *&v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v27 = sub_1BD267328;
  v27[1] = v26;
  sub_1BE048964();
  sub_1BD0D4744(v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = swift_allocObject();
  v36[2] = a7;
  v36[3] = a8;
  v36[4] = v21;
  v36[5] = v25;
  v37 = v21;
  sub_1BE048964();
  v38 = v25;
  sub_1BD398318(sub_1BD3594FC, v36);

  v17, v39, v40, v41, v42, v43, v44, v45;

  v36, v46, v47, v48, v49, v50, v51, v52;
}

void sub_1BD35569C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = a3;
  v15 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  sub_1BE04BC44();
  v17 = MEMORY[0x1BFB389E0](a2);
  v18 = type metadata accessor for PrecursorPassUpgradeFlowSection();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_identifier];
  *v20 = 0xD00000000000001FLL;
  *(v20 + 1) = 0x80000001BE1248D0;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_context] = v17;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_provisionedPasses] = v16;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_precursorUpgradeController] = a4;
  v64.receiver = v19;
  v64.super_class = v18;
  sub_1BE048964();
  v59 = v16;
  v21 = a4;
  v22 = objc_msgSendSuper2(&v64, sel_init);
  v23 = sub_1BD34FA40(v17, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BE0B69E0;
  *(v24 + 32) = v22;
  *(v24 + 40) = &off_1F3BBFA48;
  v25 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v26 = v22;
  v27 = sub_1BD3986F8(v24);
  *(*&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v28 = type metadata accessor for UIFlowManagerRendererWrapper();
  v29 = objc_allocWithZone(v28);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v63.receiver = v29;
  v63.super_class = v28;
  v30 = a5;
  v31 = objc_msgSendSuper2(&v63, sel_init);
  key = 0;
  objc_setAssociatedObject(v30, &key, v31, 1);

  *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  v33 = &v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v34 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v35 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v33 = sub_1BD214190;
  v33[1] = v32;
  sub_1BE048964();
  sub_1BD0D4744(v34, v35, v36, v37, v38, v39, v40, v41);
  v42 = swift_allocObject();
  v42[2] = a8;
  v42[3] = a9;
  v42[4] = v23;
  v42[5] = v27;
  v43 = v23;
  sub_1BE048964();
  v44 = v27;
  sub_1BD398318(sub_1BD359310, v42);

  v17, v45, v46, v47, v48, v49, v50, v51;
  v42, v52, v53, v54, v55, v56, v57, v58;
}

void _s9PassKitUI22ProvisioningFlowBridgeC016startCredentialsdE017withNavController7context11credentials06parentjK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSaySo0Q10CredentialCGSo012UINavigationK0CyycyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a2);
  v13 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v14 = objc_allocWithZone(v13);
  v15 = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v15;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v15;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000001BE1228D0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v12;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a3;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v59.receiver = v14;
  v59.super_class = v13;
  sub_1BE048964();
  sub_1BE048C84();
  v17 = objc_msgSendSuper2(&v59, sel_init);
  v18 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v17;
  *(v19 + 40) = &off_1F3BA3CD0;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v21 = v17;
  v22 = sub_1BD3986F8(v19);
  *(*&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v23 = type metadata accessor for UIFlowManagerRendererWrapper();
  v24 = objc_allocWithZone(v23);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v58.receiver = v24;
  v58.super_class = v23;
  v25 = a4;
  v26 = objc_msgSendSuper2(&v58, sel_init);
  key = 0;
  objc_setAssociatedObject(v25, &key, v26, 1);

  *&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v27 = swift_allocObject();
  *(v27 + 16) = a5;
  *(v27 + 24) = a6;
  v28 = &v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v29 = *&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v30 = *&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v28 = sub_1BD267328;
  v28[1] = v27;
  sub_1BE048964();
  sub_1BD0D4744(v29, v30, v31, v32, v33, v34, v35, v36);
  v37 = swift_allocObject();
  v37[2] = a7;
  v37[3] = a8;
  v37[4] = v18;
  v37[5] = v22;
  v38 = v18;
  sub_1BE048964();
  v39 = v22;
  sub_1BD398318(sub_1BD3594FC, v37);
  v12, v40, v41, v42, v43, v44, v45, v46;

  v37, v47, v48, v49, v50, v51, v52, v53;
}

void _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context11credentials26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SaySo19PKPaymentCredentialCGySo06UIViewO0CcyyctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a1);
  v13 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v14 = objc_allocWithZone(v13);
  v15 = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v15;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v15;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000001BE1228D0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v12;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a2;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v48.receiver = v14;
  v48.super_class = v13;
  sub_1BE048964();
  sub_1BE048C84();
  v17 = objc_msgSendSuper2(&v48, sel_init);
  v18 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v17;
  *(v19 + 40) = &off_1F3BA3CD0;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v21 = v17;
  v22 = sub_1BD3986F8(v19);
  type metadata accessor for ProvisioningSetupAssistantFlowRenderer();
  swift_allocObject();
  sub_1BE048964();
  v23 = sub_1BD224E3C(a3, a4);
  *(*&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3B988E8;
  swift_unknownObjectWeakAssign();
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = v18;
  v24[5] = v23;
  v24[6] = v22;
  v25 = v18;
  sub_1BE048964();
  sub_1BE048964();
  v26 = v22;
  sub_1BD398318(sub_1BD3592BC, v24);
  v12, v27, v28, v29, v30, v31, v32, v33;

  v23, v34, v35, v36, v37, v38, v39, v40;
  v24, v41, v42, v43, v44, v45, v46, v47;
}

void _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context16allowManualEntry26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SbySo06UIViewQ0CcyyctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a1);
  v13 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowSection());
  v14 = sub_1BE048964();
  v15 = sub_1BD71CA9C(v14, v10, 0);
  v16 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B69E0;
  *(v17 + 32) = v15;
  *(v17 + 40) = &off_1F3BB8670;
  v18 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v19 = v15;
  v20 = sub_1BD3986F8(v17);
  type metadata accessor for ProvisioningSetupAssistantFlowRenderer();
  swift_allocObject();
  sub_1BE048964();
  v21 = sub_1BD224E3C(a3, a4);
  *(*&v20[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3B988E8;
  swift_unknownObjectWeakAssign();
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = v16;
  v22[5] = v21;
  v22[6] = v20;
  v23 = v16;
  sub_1BE048964();
  sub_1BE048964();
  v24 = v20;
  sub_1BD398318(sub_1BD359500, v22);
  v12, v25, v26, v27, v28, v29, v30, v31;

  v21, v32, v33, v34, v35, v36, v37, v38;

  v22, v39, v40, v41, v42, v43, v44, v45;
}

void _s9PassKitUI22ProvisioningFlowBridgeC027startSetupAssistantFollowupE024withUnownedNavController7context19preflightCompletion10completionySo012UINavigationN0C_So21PKProvisioningContextCyycyyctFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a2);
  v11 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowSection());
  v12 = sub_1BE048964();
  v13 = sub_1BD71CA9C(v12, 1, 1);
  v14 = sub_1BD34FA40(v10, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B69E0;
  *(v15 + 32) = v13;
  *(v15 + 40) = &off_1F3BB8670;
  v16 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v17 = v13;
  v18 = sub_1BD3986F8(v15);
  v19 = type metadata accessor for UIFlowManagerRendererWrapper();
  v20 = objc_allocWithZone(v19);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v52.receiver = v20;
  v52.super_class = v19;
  v21 = a1;
  v22 = objc_msgSendSuper2(&v52, sel_init);
  key = 0;
  objc_setAssociatedObject(v21, &key, v22, 1);

  *(*&v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v23 = &v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v24 = *&v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v25 = *&v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_1BD0D4744(v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = swift_allocObject();
  v32[2] = a5;
  v32[3] = a6;
  v32[4] = v14;
  v32[5] = v18;
  v33 = v14;
  sub_1BE048964();
  sub_1BE048964();
  v34 = v18;
  sub_1BD398318(sub_1BD3594FC, v32);
  v10, v35, v36, v37, v38, v39, v40, v41;

  v32, v42, v43, v44, v45, v46, v47, v48;
}

uint64_t sub_1BD356610(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v452 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BBD4();
  sub_1BE04BC34();
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v9 = [v8 associatedCredentialsForDefaultBehaviour];
          if (v9)
          {
            v10 = v9;
            sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
            v11 = sub_1BE052744();

            if (v11 >> 62)
            {
              goto LABEL_171;
            }

            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
            {
              goto LABEL_172;
            }

            goto LABEL_8;
          }

          goto LABEL_222;
        }

LABEL_238:
        result = sub_1BE053994();
        __break(1u);
        return result;
      }

LABEL_222:
      if ((sub_1BE04BA54() & 1) == 0)
      {
        v441 = type metadata accessor for PaymentSetupWelcomeFlowItem();
        v442 = objc_allocWithZone(v441);
        *&v442[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_viewController] = 0;
        *&v442[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v443 = &v442[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_identifier];
        *v443 = 0x46656D6F636C6557;
        *(v443 + 1) = 0xEF6D657449776F6CLL;
        *&v442[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context] = a2;
        v480.receiver = v442;
        v480.super_class = v441;
        sub_1BE048964();
        v33 = objc_msgSendSuper2(&v480, sel_init);

        (v5[1])(v7, v4);
        return v33;
      }

      goto LABEL_238;
    }

    if (a1 == 2)
    {
      v37 = [v8 associatedCredentials];
      if (v37)
      {
        v38 = v37;
        sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
        v39 = sub_1BE052744();

        v479 = MEMORY[0x1E69E7CC0];
        v468 = v4;
        v469 = v8;
        v471 = v7;
        v467 = a2;
        if (v39 >> 62)
        {
          goto LABEL_166;
        }

        v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v470 = v5;
        if (v47)
        {
          goto LABEL_21;
        }

        goto LABEL_167;
      }

      __break(1u);
      goto LABEL_230;
    }

    v59 = [v8 paymentSetupProductModel];
    if (!v59)
    {
LABEL_230:
      __break(1u);
      goto LABEL_231;
    }

    v60 = v59;
    v10 = [v59 allSetupProducts];

    if (!v10)
    {
      goto LABEL_222;
    }

    sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
    v61 = sub_1BE052744();

    if (v61 >> 62)
    {
      if (sub_1BE053704() == 1)
      {
LABEL_39:
        if ((v61 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x1BFB40900](0, v61);
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_180;
          }

          v69 = *(v61 + 32);
        }

        v77 = v69;
        v61, v70, v71, v72, v73, v74, v75, v76;
        v78 = [objc_opt_self() isSupported];
        v79 = [v77 provisioningMethodMetadataForType_];
        v80 = v79;
        if (v79)
        {
        }

        v81 = a2;
        v82 = [v77 allSupportedProtocols];
        v470 = v5;
        v471 = v7;
        v468 = v4;
        v469 = v8;
        if ((v82 & 4) != 0)
        {
          if (v80)
          {
            v85 = v78;
          }

          else
          {
            v85 = 0;
          }
        }

        else
        {
          IsAvailable = PKFelicaSecureElementIsAvailable();
          if (v80)
          {
            v84 = v78;
          }

          else
          {
            v84 = 0;
          }

          if (IsAvailable)
          {
            v85 = v84;
          }

          else
          {
            v85 = 0;
          }
        }

        v185 = type metadata accessor for PaymentSetupProductFlowSection();
        v186 = objc_allocWithZone(v185);
        *&v186[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
        *&v186[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v187 = &v186[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
        *v187 = 0xD000000000000012;
        *(v187 + 1) = 0x80000001BE118AA0;
        v188 = v81;
        *&v186[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v81;
        *&v186[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v77;
        v476.receiver = v186;
        v476.super_class = v185;
        sub_1BE048964();
        v189 = v77;
        v190 = objc_msgSendSuper2(&v476, sel_init);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
        v191 = swift_allocObject();
        *(v191 + 16) = xmmword_1BE0B6CA0;
        v192 = type metadata accessor for ProvisioningHeroFlowItem();
        v193 = objc_allocWithZone(v192);
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
        v194 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v195 = &v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
        strcpy(&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
        v195[13] = 0;
        *(v195 + 7) = -5120;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v188;
        v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
        *&v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = v189;
        v196 = *&v193[v194];
        *&v193[v194] = 0;
        v197 = v189;
        sub_1BE048964();
        v198 = v197;

        v193[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = v85;
        v475.receiver = v193;
        v475.super_class = v192;
        v199 = objc_msgSendSuper2(&v475, sel_init);

        *(v191 + 32) = v199;
        *(v191 + 40) = &off_1F3BA7D00;
        *(v191 + 48) = v190;
        *(v191 + 56) = &off_1F3BAAA80;
        type metadata accessor for UIStaticFlowSection();
        v33 = swift_allocObject();
        *(v33 + 24) = 0;
        swift_unknownObjectWeakInit();

        *(v33 + 32) = 514;
        (v470[1])(v471, v468);
        *(v33 + 40) = 0xD000000000000018;
        *(v33 + 48) = 0x80000001BE124890;
        goto LABEL_210;
      }
    }

    else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_39;
    }

    v373 = v61;
LABEL_221:
    v373, v62, v63, v64, v65, v66, v67, v68;
    goto LABEL_222;
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v55 = sub_1BE048964();
      v56 = 0;
      goto LABEL_174;
    }

    if (a1 != 7)
    {
      goto LABEL_238;
    }

    v86 = [v8 selectedSectionIdentifier];
    if (!v86)
    {
      goto LABEL_222;
    }

    v87 = v86;
    v465 = sub_1BE052434();
    v89 = v88;
    v90 = [v8 paymentSetupProductModel];
    if (!v90)
    {
      v89, v91, v92, v93, v94, v95, v96, v97;

      goto LABEL_222;
    }

    v466 = v89;
    v98 = v90;
    v99 = PKPaymentSetupProductTypeFromString();

    v100 = [v98 setupProductsOfType_];
    if (!v100)
    {
      v466, v101, v102, v103, v104, v105, v106, v107;

      goto LABEL_222;
    }

    v108 = v100;
    v463 = v98;
    sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
    v10 = sub_1BE052744();

    if (v10 >> 62)
    {
      goto LABEL_183;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_57;
    }

LABEL_184:
    v466, v109, v110, v111, v112, v113, v114, v115;

    v373 = v10;
    goto LABEL_221;
  }

  if (a1 != 4)
  {
    v57 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v58 = sub_1BE048964();
    v33 = sub_1BD87126C(v58, 0, 0);

    (v5[1])(v7, v4);
    return v33;
  }

  v34 = [v8 allowedFeatureIdentifiers];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1BE052A34();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  if (v36[2] != 1 || (sub_1BD960F28(v36), !v129))
  {
    v137 = [v8 requiredTransitNetworkIdentifiers];
    if (!v137)
    {
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    v138 = v137;
    v139 = sub_1BE052A34();

    v140 = v139[2];
    v139, v141, v142, v143, v144, v145, v146, v147;
    if (v140)
    {
      v148 = [v8 paymentSetupProductModel];
      if (v148)
      {
        v135 = v148;
        v149 = [v148 setupProductsOfType_];
        if (v149)
        {
          v150 = v149;
          sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
          v132 = sub_1BE052744();

          if (v132 >> 62)
          {
            goto LABEL_218;
          }

          if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

LABEL_219:

          v132, v434, v435, v436, v437, v438, v439, v440;
        }

        else
        {
        }
      }
    }

    v373 = v36;
    goto LABEL_221;
  }

  v130 = v129;
  v131 = sub_1BE052404();
  v132 = PKFeatureIdentifierFromString();

  v133 = [v8 paymentSetupProductModel];
  if (!v133)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v134 = v133;
  v135 = [v133 productsForFeatureIdentifier_];

  if (!v135)
  {
    v465 = 0;
    v136 = 0;
    goto LABEL_187;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
  v136 = sub_1BE052744();

  if (!(v136 >> 62))
  {
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

LABEL_186:
    v465 = 0;
    goto LABEL_187;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_186;
  }

LABEL_70:
  if ((v136 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    v465 = MEMORY[0x1BFB40900](0, v136);
    v136, v445, v446, v447, v448, v449, v450, v451;
LABEL_187:
    v374 = [v8 associatedCredentials];
    if (v374)
    {
      v382 = v374;
      v468 = v4;
      v469 = v8;
      v471 = v7;
      v136, v375, v376, v377, v378, v379, v380, v381;
      v130, v383, v384, v385, v386, v387, v388, v389;
      v36, v390, v391, v392, v393, v394, v395, v396;
      sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
      v397 = sub_1BE052744();

      v479 = MEMORY[0x1E69E7CC0];
      if (v397 >> 62)
      {
        goto LABEL_213;
      }

      for (i = *((v397 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
      {
        v406 = MEMORY[0x1E69E7CC0];
        if (!i)
        {
          v414 = MEMORY[0x1E69E7CC0];
          goto LABEL_205;
        }

        v466 = v132;
        v467 = a2;
        v470 = v5;
        a2 = 0;
        v132 = v397 & 0xFFFFFFFFFFFFFF8;
        v5 = &selRef__updateDisplayForFieldTypeDate_;
        while (1)
        {
          if ((v397 & 0xC000000000000001) != 0)
          {
            v407 = MEMORY[0x1BFB40900](a2, v397);
          }

          else
          {
            if (a2 >= *((v397 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_212;
            }

            v407 = *(v397 + 8 * a2 + 32);
          }

          v408 = v407;
          v409 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v410 = [v407 accountCredential];
          if (v410 && (v411 = v410, v412 = [v410 account], v411, v412) && (v413 = objc_msgSend(v412, sel_feature), v412, v413 == v466))
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++a2;
          if (v409 == i)
          {
            v414 = v479;
            v5 = v470;
            a2 = v467;
            v406 = MEMORY[0x1E69E7CC0];
LABEL_205:
            v397, v398, v399, v400, v401, v402, v403, v404;
            v415 = v468;
            v416 = v471;
            v417 = v465;
            if ((v414 & 0x8000000000000000) == 0 && (v414 & 0x4000000000000000) == 0)
            {
              if (!*(v414 + 16))
              {
                goto LABEL_208;
              }

              goto LABEL_215;
            }

            if (sub_1BE053704())
            {
              goto LABEL_215;
            }

LABEL_208:
            if (!v417)
            {
LABEL_215:
              v431 = type metadata accessor for PaymentSetupCredentialsFlowItem();
              v432 = objc_allocWithZone(v431);
              *&v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
              *&v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
              swift_unknownObjectWeakInit();
              v433 = &v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
              *v433 = 0xD00000000000001FLL;
              v433[1] = 0x80000001BE1229B0;
              *&v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = a2;
              *&v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v414;
              v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
              *&v432[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
              v478.receiver = v432;
              v478.super_class = v431;
              sub_1BE048964();
              v33 = objc_msgSendSuper2(&v478, sel_init);

              (v5[1])(v416, v415);
              return v33;
            }

            v418 = v417;
            v414, v419, v420, v421, v422, v423, v424, v425;
            v426 = v406;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
            v191 = swift_allocObject();
            *(v191 + 16) = xmmword_1BE0B69E0;
            v427 = type metadata accessor for PaymentSetupProductFlowSection();
            v428 = objc_allocWithZone(v427);
            *&v428[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = v426;
            *&v428[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v429 = &v428[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
            *v429 = 0xD000000000000012;
            *(v429 + 1) = 0x80000001BE118AA0;
            *&v428[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = a2;
            *&v428[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v418;
            v477.receiver = v428;
            v477.super_class = v427;
            sub_1BE048964();
            v430 = v418;
            *(v191 + 32) = objc_msgSendSuper2(&v477, sel_init);
            *(v191 + 40) = &off_1F3BAAA80;
            type metadata accessor for UIStaticFlowSection();
            v33 = swift_allocObject();
            *(v33 + 24) = 0;
            swift_unknownObjectWeakInit();

            *(v33 + 32) = 514;
            (v5[1])(v416, v415);
            *(v33 + 40) = 0xD00000000000001FLL;
            *(v33 + 48) = 0x80000001BE124870;
LABEL_210:
            *(v33 + 56) = v191;
            *(v33 + 32) = 514;
            return v33;
          }
        }

        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        ;
      }
    }

LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v465 = *(v136 + 32);
    goto LABEL_187;
  }

  __break(1u);
LABEL_228:
  v253 = sub_1BE053704();
LABEL_126:
  v455 = v135;
  v461 = v132;
  v471 = v7;
  v467 = a2;
  if (!v253)
  {
LABEL_156:
    v39 = v8;
    v266 = v4;
    v466, v246, v247, v248, v249, v250, v251, v252;
    v36, v305, v306, v307, v308, v309, v310, v311;
    v461, v312, v313, v314, v315, v316, v317, v318;
    v268 = 0;
    goto LABEL_161;
  }

  v135 = 0;
  v254 = v132 & 0xC000000000000001;
  v459 = v132 & 0xFFFFFFFFFFFFFF8;
  v458 = (v132 + 32);
  v457 = v36;
  v454 = v253;
  v453 = v132 & 0xC000000000000001;
  v470 = v5;
  while (1)
  {
    if (v254)
    {
      v255 = MEMORY[0x1BFB40900](v135, v132);
    }

    else
    {
      if (v135 >= *(v459 + 16))
      {
        goto LABEL_217;
      }

      v255 = v458[v135];
    }

    v36 = v255;
    v155 = __OFADD__(v135++, 1);
    if (v155)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      if (!sub_1BE053704())
      {
        goto LABEL_219;
      }

LABEL_79:
      v456 = v132;
      v151 = PKPaymentSetupProductTypeToString();
      if (v151)
      {
        v152 = v151;
        v464 = sub_1BE052434();
        v466 = v153;
      }

      else
      {
        v464 = 0;
        v466 = 0;
      }

      v244 = [v135 allSections];
      if (!v244)
      {
        goto LABEL_237;
      }

      v245 = v244;
      sub_1BD0E5E8C(0, &qword_1EBD42938, 0x1E69B8E68);
      v132 = sub_1BE052744();

      if (v132 >> 62)
      {
        goto LABEL_228;
      }

      v253 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_126;
    }

    v256 = [v255 categories];
    if (!v256)
    {
      goto LABEL_235;
    }

    v257 = v256;
    v460 = v135;
    sub_1BD0E5E8C(0, &qword_1EBD42940, 0x1E69B8E50);
    v258 = sub_1BE052744();

    v11 = v258;
    v462 = v36;
    if (v258 >> 62)
    {
      break;
    }

    v5 = *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_136;
    }

LABEL_128:
    v11, v259, v260, v261, v262, v263, v264, v265;

    v135 = v460;
    v5 = v470;
    v36 = v457;
    v132 = v461;
    v254 = v453;
    if (v460 == v454)
    {
      goto LABEL_156;
    }
  }

  v5 = sub_1BE053704();
  if (!v5)
  {
    goto LABEL_128;
  }

LABEL_136:
  v10 = 0;
  v465 = (v11 & 0xC000000000000001);
  v463 = (v11 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v465)
    {
      v39 = v8;
      v266 = v4;
      v267 = MEMORY[0x1BFB40900](v10, v11);
      goto LABEL_143;
    }

    if (v10 >= *(v463 + 2))
    {
      break;
    }

    v39 = v8;
    v266 = v4;
    v267 = *(v11 + 8 * v10 + 32);
LABEL_143:
    v268 = v267;
    v269 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_165;
    }

    v270 = [v267 identifier];
    if (v270)
    {
      v278 = v270;
      a2 = v11;
      v279 = sub_1BE052434();
      v281 = v280;

      v7 = v466;
      if (v466)
      {
        if (v279 == v464 && v466 == v281)
        {
          a2, v282, v464, v284, v285, v286, v287, v288;

          v281, v319, v320, v321, v322, v323, v324, v325;
LABEL_158:
          v457, v326, v327, v328, v329, v330, v331, v332;
          v7, v333, v334, v335, v336, v337, v338, v339;
          v461, v340, v341, v342, v343, v344, v345, v346;
LABEL_160:
          v5 = v470;
LABEL_161:
          type metadata accessor for PaymentSetupProductsFlowSection();
          swift_allocObject();
          v361 = v467;
          v362 = sub_1BE048964();
          v33 = sub_1BD0DB670(v362, v268, v456);

          v361, v363, v364, v365, v366, v367, v368, v369;
          (v5[1])(v471, v266);
          return v33;
        }

        v290 = sub_1BE053B84();
        v281, v291, v292, v293, v294, v295, v296, v297;
        v11 = a2;
        if (v290)
        {
          a2, v298, v299, v300, v301, v302, v303, v304;

          goto LABEL_158;
        }
      }

      else
      {
        v281, v282, v283, v284, v285, v286, v287, v288;
        v11 = a2;
      }
    }

    else if (!v466)
    {
      v457, v271, v272, v273, v274, v275, v276, v277;
      v461, v347, v348, v349, v350, v351, v352, v353;
      v11, v354, v355, v356, v357, v358, v359, v360;

      goto LABEL_160;
    }

    ++v10;
    v171 = v269 == v5;
    v4 = v266;
    v8 = v39;
    if (v171)
    {
      goto LABEL_128;
    }
  }

LABEL_170:
  __break(1u);
LABEL_171:
  if (sub_1BE053704() != 1)
  {
LABEL_172:
    v11, v12, v13, v14, v15, v16, v17, v18;
    goto LABEL_173;
  }

LABEL_8:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1BFB40900](0, v11);
    goto LABEL_11;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v11 + 32);
LABEL_11:
    v27 = v19;
    v11, v20, v21, v22, v23, v24, v25, v26;
    if (sub_1BE04BAB4())
    {
      v28 = type metadata accessor for ProvisioningCredentialFlowSection();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v30 = &v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
      *v30 = 0x100000000000001ALL;
      v30[1] = 0x80000001BE1199C0;
      v31 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
      v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
      *&v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
      *&v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = a2;
      *&v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v27;
      *&v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = 0;
      v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
      v29[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
      v29[v31] = 1;
      v472.receiver = v29;
      v472.super_class = v28;
      sub_1BE048964();
      v32 = v27;
      v33 = objc_msgSendSuper2(&v472, sel_init);

      (v5[1])(v7, v4);
      return v33;
    }

    v180 = [v27 peerPaymentCredential];
    if (v180)
    {
      v181 = v180;
      v182 = type metadata accessor for ProvisioningPeerPaymentExplanationFlowItem();
      v183 = objc_allocWithZone(v182);
      *&v183[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v184 = &v183[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_identifier];
      *v184 = 0xD00000000000001ELL;
      v184[1] = 0x80000001BE1248B0;
      v183[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_dismissalConfiguration] = 2;
      *&v183[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_context] = a2;
      *&v183[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_credential] = v181;
      v473.receiver = v183;
      v473.super_class = v182;
      sub_1BE048964();
      v33 = objc_msgSendSuper2(&v473, sel_init);

      (v5[1])(v7, v4);
      return v33;
    }

LABEL_173:
    v55 = sub_1BE048964();
    v56 = 1;
LABEL_174:
    v33 = sub_1BD99F510(v55, v56, 1);

    (v5[1])(v7, v4);
    return v33;
  }

  __break(1u);
LABEL_180:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    if (sub_1BE053704() < 1)
    {
      goto LABEL_184;
    }

LABEL_57:
    v116 = [v463 allSections];
    if (!v116)
    {
      goto LABEL_236;
    }

    v117 = v116;
    sub_1BD0E5E8C(0, &qword_1EBD42938, 0x1E69B8E68);
    v118 = sub_1BE052744();

    if (v118 >> 62)
    {
      v126 = sub_1BE053704();
    }

    else
    {
      v126 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v457 = v10;
    if (!v126)
    {
LABEL_117:
      v466, v119, v120, v121, v122, v123, v124, v125;
      v118, v200, v201, v202, v203, v204, v205, v206;
      v39 = 0;
LABEL_121:
      type metadata accessor for PaymentSetupProductsFlowSection();
      swift_allocObject();
      v236 = sub_1BE048964();
      v33 = sub_1BD0DB670(v236, v39, v457);

      a2, v237, v238, v239, v240, v241, v242, v243;
      (v5[1])(v7, v4);
      return v33;
    }

    v10 = 0;
    v127 = v118 & 0xC000000000000001;
    v460 = v118 & 0xFFFFFFFFFFFFFF8;
    v459 = v118 + 32;
    v470 = v5;
    v471 = v7;
    v468 = v4;
    v469 = v8;
    v458 = v118;
    v456 = v126;
    v455 = (v118 & 0xC000000000000001);
LABEL_83:
    if (v127)
    {
      v154 = MEMORY[0x1BFB40900](v10, v118);
      v155 = __OFADD__(v10++, 1);
      if (v155)
      {
        continue;
      }
    }

    else
    {
      if (v10 >= *(v460 + 16))
      {
        goto LABEL_182;
      }

      v154 = *(v459 + 8 * v10);
      v155 = __OFADD__(v10++, 1);
      if (v155)
      {
        continue;
      }
    }

    break;
  }

  v462 = v154;
  v156 = [v154 categories];
  if (!v156)
  {
    goto LABEL_234;
  }

  v157 = v156;
  v461 = v10;
  sub_1BD0E5E8C(0, &qword_1EBD42940, 0x1E69B8E50);
  v8 = sub_1BE052744();

  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_89;
    }

    goto LABEL_82;
  }

  v10 = sub_1BE053704();
  if (!v10)
  {
LABEL_82:
    v8, v158, v159, v160, v161, v162, v163, v164;

    v10 = v461;
    v5 = v470;
    v7 = v471;
    v4 = v468;
    v8 = v469;
    v118 = v458;
    v127 = v455;
    if (v461 == v456)
    {
      goto LABEL_117;
    }

    goto LABEL_83;
  }

LABEL_89:
  v11 = 0;
  v5 = (v8 & 0xC000000000000001);
  v464 = (v8 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v5)
    {
      v165 = MEMORY[0x1BFB40900](v11, v8);
    }

    else
    {
      if (v11 >= *(v464 + 2))
      {
        __break(1u);
        goto LABEL_170;
      }

      v165 = *(v8 + 8 * v11 + 32);
    }

    v39 = v165;
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v166 = a2;
    v167 = [v165 identifier];
    if (v167)
    {
      v168 = v167;
      v169 = sub_1BE052434();
      v7 = v170;

      v171 = v169 == v465 && v7 == v466;
      if (v171)
      {
        v207 = v466;

        v207, v208, v209, v210, v211, v212, v213, v214;
        goto LABEL_120;
      }

      v172 = sub_1BE053B84();
      v7, v173, v174, v175, v176, v177, v178, v179;
      if (v172)
      {

        v7 = v466;
LABEL_120:
        v7, v215, v216, v217, v218, v219, v220, v221;
        v458, v222, v223, v224, v225, v226, v227, v228;
        v8, v229, v230, v231, v232, v233, v234, v235;
        v5 = v470;
        v7 = v471;
        v4 = v468;
        v8 = v469;
        a2 = v166;
        goto LABEL_121;
      }
    }

    ++v11;
    a2 = v166;
    if (v4 == v10)
    {
      goto LABEL_82;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v47 = sub_1BE053704();
    v470 = v5;
    if (!v47)
    {
      break;
    }

LABEL_21:
    v48 = 0;
    v5 = (v39 & 0xC000000000000001);
    while (1)
    {
      if (v5)
      {
        v49 = MEMORY[0x1BFB40900](v48, v39);
      }

      else
      {
        if (v48 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        v49 = *(v39 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v52 = [v49 remoteCredential];
      if (v52 && (v53 = v52, v54 = [v52 status], v53, v54 == 2))
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v48;
      if (v51 == v47)
      {
        v128 = v479;
        goto LABEL_168;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
  }

LABEL_167:
  v128 = MEMORY[0x1E69E7CC0];
LABEL_168:
  v39, v40, v41, v42, v43, v44, v45, v46;
  v370 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v371 = objc_allocWithZone(v370);
  *&v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v372 = &v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v372 = 0xD00000000000001FLL;
  v372[1] = 0x80000001BE1229B0;
  *&v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v467;
  *&v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v128;
  v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v371[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
  v474.receiver = v371;
  v474.super_class = v370;
  sub_1BE048964();
  v33 = objc_msgSendSuper2(&v474, sel_init);

  (v470[1])(v471, v468);
  return v33;
}

void _s9PassKitUI22ProvisioningFlowBridgeC017startPaymentSetupE017withNavController06parentkL07context4mode19preflightCompletion10completionySo09PKPaymenti21DismissibleNavigationL0C_So012UINavigationL0CSgSo21PKProvisioningContextCSo0sI4ModeVyycyyctFZ_0(uint64_t a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  [a3 setMode_];
  sub_1BE04BC44();
  v15 = MEMORY[0x1BFB389E0](a3);
  v54 = sub_1BD34FA40(v15, 0, 0);
  sub_1BE04BB64();
  v16 = sub_1BD356610(a4, v15);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  swift_unknownObjectRetain();
  v21 = sub_1BD3986F8(v19);
  if (a2)
  {
    v22 = type metadata accessor for UIFlowManagerRendererWrapper();
    v53 = a8;
    v23 = a7;
    v24 = objc_allocWithZone(v22);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v56.receiver = v24;
    v56.super_class = v22;
    v25 = a2;
    a2 = objc_msgSendSuper2(&v56, sel_init);
    key = 0;
    objc_setAssociatedObject(v25, &key, a2, 1);

    a7 = v23;
    a8 = v53;
    *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
  }

  *(*&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v26 = &v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v27 = *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v28 = *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v26 = a5;
  *(v26 + 1) = a6;
  sub_1BD0D4744(v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = swift_allocObject();
  v35[2] = a7;
  v35[3] = a8;
  v35[4] = v54;
  v35[5] = v21;
  v35[6] = a2;
  v36 = a2;
  v37 = v54;
  sub_1BE048964();
  sub_1BE048964();
  v38 = v21;
  sub_1BD398318(sub_1BD3594FC, v35);

  v15, v39, v40, v41, v42, v43, v44, v45;
  v35, v46, v47, v48, v49, v50, v51, v52;
  swift_unknownObjectRelease();
}

void sub_1BD358604(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1BE04BC44();
  v13 = MEMORY[0x1BFB389E0](a4);
  v112 = a7;
  if (a7)
  {
    if (a7 >> 62)
    {
      v14 = sub_1BE053704();
    }

    else
    {
      v14 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 > 0;
  v16 = type metadata accessor for PaymentSetupConsentFlowItem();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier];
  *v18 = 0x46746E65736E6F43;
  v18[1] = 0xEF6D657449776F6CLL;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_dismissalConfiguration] = 1;
  v19 = OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented;
  sub_1BE052434();
  v20 = *MEMORY[0x1E69BC6D8];
  v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v21 initWithSuiteName_];
  *&v17[v19] = sub_1BE04E164();
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_context] = v13;
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource] = a5;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] = 1;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation] = v15;
  v118.receiver = v17;
  v118.super_class = v16;
  v22 = objc_msgSendSuper2(&v118, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B69E0;
  *(v23 + 32) = v22;
  *(v23 + 40) = &off_1F3BBA078;
  v24 = objc_opt_self();
  v25 = v22;
  v26 = [v24 virtualCardReferralSource_];
  v27 = sub_1BE052434();
  v29 = v28;

  v30 = sub_1BD34FA40(v13, v27, v29);
  v29, v31, v32, v33, v34, v35, v36, v37;
  v38 = v30;
  sub_1BE04BB64();
  if (a6)
  {
    v39 = type metadata accessor for ProvisioningHeroFlowItem();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v41 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v42 = &v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v42[13] = 0;
    *(v42 + 7) = -5120;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v13;
    v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v43 = *&v40[v41];
    *&v40[v41] = 0;
    swift_retain_n();

    v40[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v117.receiver = v40;
    v117.super_class = v39;
    v44 = objc_msgSendSuper2(&v117, sel_init);
    v13, v45, v46, v47, v48, v49, v50, v51;
    v53 = *(v23 + 16);
    v52 = *(v23 + 24);
    if (v53 >= v52 >> 1)
    {
      v23 = sub_1BD1D7488((v52 > 1), (v53 + 1), 1, v23);
    }

    *(v23 + 16) = v53 + 1;
    v54 = v23 + 16 * v53;
    *(v54 + 32) = v44;
    *(v54 + 40) = &off_1F3BA7D00;
    if (v112)
    {
      if (v112 >> 62)
      {
        sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
        sub_1BE048964();
        sub_1BE048C84();
        v55 = sub_1BE0539A4();
        v112, v103, v104, v105, v106, v107, v108, v109;
      }

      else
      {
        sub_1BE048964();
        sub_1BE048C84();
        sub_1BE053BA4();
        sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
        v55 = v112;
      }

      v56 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
      v57 = objc_allocWithZone(v56);
      v58 = MEMORY[0x1E69E7CC0];
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v58;
      v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v58;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v59 = &v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
      *v59 = 0xD00000000000001ALL;
      v59[1] = 0x80000001BE1228D0;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v13;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = v55;
      *&v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
      v57[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
      v116.receiver = v57;
      v116.super_class = v56;
      v60 = objc_msgSendSuper2(&v116, sel_init);
      v62 = *(v23 + 16);
      v61 = *(v23 + 24);
      v63 = (v62 + 1);
      v64 = &off_1F3BA3CD0;
      if (v62 < v61 >> 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v95 = objc_allocWithZone(type metadata accessor for AutoFillCredentialsFlowItem());
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048C84();
      v60 = sub_1BD300F60(v13, a2, a3);
      v13, v96, v97, v98, v99, v100, v101, v102;
      v62 = *(v23 + 16);
      v61 = *(v23 + 24);
      v63 = (v62 + 1);
      v64 = &off_1F3B9DA20;
      if (v62 < v61 >> 1)
      {
LABEL_12:
        *(v23 + 16) = v63;
        v65 = v23 + 16 * v62;
        *(v65 + 32) = v60;
        *(v65 + 40) = v64;
        goto LABEL_13;
      }
    }

    v23 = sub_1BD1D7488((v61 > 1), v63, 1, v23);
    goto LABEL_12;
  }

LABEL_13:
  v66 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v67 = sub_1BD3986F8(v23);
  *(*&v67[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v68 = swift_allocObject();
  *(v68 + 16) = a8;
  *(v68 + 24) = a9;
  v69 = &v67[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v70 = *&v67[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v71 = *&v67[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v69 = sub_1BD267328;
  v69[1] = v68;
  sub_1BE048964();
  sub_1BD0D4744(v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = swift_allocObject();
  v78[2] = a10;
  v78[3] = a11;
  v78[4] = v38;
  v78[5] = v67;
  v79 = v38;
  sub_1BE048964();
  v80 = v67;
  sub_1BD398318(sub_1BD35921C, v78);

  v78, v81, v82, v83, v84, v85, v86, v87;
  v13, v88, v89, v90, v91, v92, v93, v94;
}

void sub_1BD358D68(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a3);
  v11 = type metadata accessor for PaymentSetupConsentFlowItem();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier];
  *v13 = 0x46746E65736E6F43;
  v13[1] = 0xEF6D657449776F6CLL;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_dismissalConfiguration] = 1;
  v14 = OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented;
  sub_1BE052434();
  v15 = *MEMORY[0x1E69BC6D8];
  v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v16 initWithSuiteName_];
  *&v12[v14] = sub_1BE04E164();
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_context] = v10;
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource] = 2;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] = 0;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation] = 0;
  v57.receiver = v12;
  v57.super_class = v11;
  v17 = objc_msgSendSuper2(&v57, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = v17;
  *(v18 + 40) = &off_1F3BBA078;
  v19 = objc_allocWithZone(type metadata accessor for AutoFillCredentialManagementFlowItem());
  sub_1BE048964();
  v20 = v17;
  v21 = sub_1BD328188(v10, a2);
  v22 = *(v18 + 16);
  v23 = *(v18 + 24);
  v24 = v21;
  if (v22 >= v23 >> 1)
  {
    v18 = sub_1BD1D7488((v23 > 1), (v22 + 1), 1, v18);
  }

  *(v18 + 16) = v22 + 1;
  v25 = v18 + 16 * v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = &off_1F3B9F178;
  v26 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v27 = sub_1BD3986F8(v18);
  *(*&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v29 = &v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v30 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v31 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8];
  *v29 = sub_1BD267328;
  v29[1] = v28;
  sub_1BE048964();
  sub_1BD0D4744(v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = swift_allocObject();
  v38[2] = a6;
  v38[3] = a7;
  v38[4] = v27;
  sub_1BE048964();
  v39 = v27;
  sub_1BD398318(sub_1BD1B5F6C, v38);

  v38, v40, v41, v42, v43, v44, v45, v46;
  v10, v47, v48, v49, v50, v51, v52, v53;
}

uint64_t objectdestroy_11Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

void sub_1BD359184()
{
  (*(v0 + 16))();
  v1 = sub_1BE04BB54();
  [v1 stop];
}

id sub_1BD35921C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);

  return [v1 stop];
}

uint64_t objectdestroy_206Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD3592C0()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  [v1 stop];
  return sub_1BD225648();
}

uint64_t sub_1BD359334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43CF0, &unk_1BE0CE1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_197Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

id sub_1BD3593EC()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  return [v1 stop];
}

uint64_t objectdestroy_5Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t type metadata accessor for MeCardAddressSection(uint64_t a1)
{
  result = qword_1EBD42950;
  if (!qword_1EBD42950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD359584(uint64_t a1)
{
  sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PKPaymentAuthorizationFundingMode(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3596B8(319);
      if (v3 <= 0x3F)
      {
        sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &qword_1BE0D7250, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1BD359720(319, &qword_1EBD42960, &qword_1EBD393C8, "\b6\r", MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD3596B8(uint64_t a1)
{
  if (!qword_1EBD39318)
  {
    sub_1BD0E5E8C(255, &unk_1EBD3E560, 0x1E69B91F8);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39318);
    }
  }
}

void sub_1BD359720(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BD3597A0@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42968, &qword_1BE0CE278);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v58 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42970, &qword_1BE0CE280);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v58 - v6;
  v70 = sub_1BD359B74();
  v71 = v8;
  v72 = v9 & 1;
  v73 = v10;
  sub_1BD359E1C(v4);
  v66 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42978, &unk_1BE0CE288);
  sub_1BD0DE4F4(&qword_1EBD42980, &qword_1EBD42978, &unk_1BE0CE288, MEMORY[0x1E6981F48]);
  sub_1BD35CD88();
  v59 = v7;
  sub_1BE051A34();
  v70 = sub_1BD35C110(v1);
  v71 = v11;
  sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v60 = v13;
  v61 = v12;
  v15 = v14;
  v62 = v16;
  v17 = (v1 + *(type metadata accessor for MeCardAddressSection(0) + 40));
  v18 = *v17;
  v19 = v17[1];
  v70 = *v17;
  v71 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516A4();
  v20 = v68;
  if (v68)
  {
  }

  LOBYTE(v68) = v20 != 0;
  sub_1BE051944();
  v22 = v70;
  v21 = v71;
  v58[1] = v72;
  v68 = v18;
  v69 = v19;
  v23 = sub_1BE0516A4();
  v24 = v67;
  v68 = v67;
  MEMORY[0x1EEE9AC00](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  sub_1BD35CE1C();
  sub_1BD35CEE0();
  v25 = v65;
  v26 = v62;
  v27 = v61;
  v28 = v15;
  v29 = v59;
  v30 = v60;
  sub_1BE050F04();
  v21, v31, v32, v33, v34, v35, v36, v37;
  v22, v38, v39, v40, v41, v42, v43, v44;
  sub_1BD0DDF10(v27, v30, (v28 & 1), v45, v46, v47, v48, v49);
  v26, v50, v51, v52, v53, v54, v55, v56;

  return (*(v64 + 8))(v29, v25);
}

id sub_1BD359B74()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35[-v6];
  v8 = v0[5];
  v42 = v0[4];
  v43 = v8;
  v44 = v0[6];
  v9 = v0[1];
  v38 = *v0;
  v39 = v9;
  v10 = v0[3];
  v40 = v0[2];
  v41 = v10;
  v11 = sub_1BD513BB0();
  v13 = v12;
  v14 = *MEMORY[0x1E69B8068];
  v15 = *(v2 + 104);
  if (v13)
  {
    v16 = v11;
    v15(v7, v14, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      sub_1BE04B6F4();
      v20 = v19;

      (*(v2 + 8))(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BE0B69E0;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1BD110550();
      *(v21 + 32) = v16;
      *(v21 + 40) = v13;
      v22 = sub_1BE052454();
      v24 = v23;
      v20, v23, v25, v26, v27, v28, v29, v30;
      v36 = v22;
      v37 = v24;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }

    __break(1u);
  }

  else
  {
    v15(v4, v14, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_1BE04B6F4();
      v34 = v33;

      (*(v2 + 8))(v4, v1);
      v36 = v32;
      v37 = v34;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }
  }

  __break(1u);
  return result;
}

void *sub_1BD359E1C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A90, &unk_1BE0CE390);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  v8 = sub_1BD35C890();
  if (v9)
  {
    v40 = v8;
    v41 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v40 = v10;
    v41 = v11;
    v16 = (v15 & 1);
    v42 = v15 & 1;
    v43 = v13;
    sub_1BE052434();
    v39[1] = a1;
    v18 = v17;
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DE19C(v7, v4, &qword_1EBD452C0, &qword_1BE0B7620);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v7, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD35A048@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429A8, &qword_1BE0CE298) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v44 - v5;
  v6 = type metadata accessor for MeCardAddressSection(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = v8;
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429B0, &qword_1BE0CE2A0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  *&v54 = &unk_1F3B8DFB8;
  sub_1BD35CFC8(a1, v9);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v46 = type metadata accessor for MeCardAddressSection;
  sub_1BD35D9B0(v9, v17 + v16, type metadata accessor for MeCardAddressSection);
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429B8, &qword_1BE0CE2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429C0, &qword_1BE0CE2B0);
  v45 = MEMORY[0x1E69E6338];
  sub_1BD0DE4F4(&qword_1EBD429C8, &qword_1EBD429B8, &qword_1BE0CE2A8, MEMORY[0x1E69E6338]);
  sub_1BD35D124();
  sub_1BD35D458();
  v18 = sub_1BE0519D4();
  v19 = &v15[*(v11 + 44)];
  __asm { FMOV            V0.2D, #16.0 }

  v44 = _Q0;
  *v19 = _Q0;
  *(v19 + 1) = _Q0;
  v19[32] = 0;
  v25 = a1[5];
  v58 = a1[4];
  v59 = v25;
  v60 = a1[6];
  v26 = a1[1];
  v54 = *a1;
  v55 = v26;
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v53 = sub_1BD5139AC(v18, v28, v29, v30, v31, v32, v33, v34);
  sub_1BD35CFC8(a1, v9);
  v35 = swift_allocObject();
  sub_1BD35D9B0(v9, v35 + v16, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A48, &qword_1BE0CE2E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00, &qword_1BE0CE2C8);
  sub_1BD0DE4F4(&qword_1EBD42A50, &qword_1EBD42A48, &qword_1BE0CE2E8, v45);
  sub_1BD35D2B8();
  sub_1BD35D720();
  v36 = v49;
  sub_1BE0519D4();
  v37 = v36 + *(v50 + 44);
  v38 = v44;
  *v37 = v44;
  *(v37 + 16) = v38;
  *(v37 + 32) = 0;
  v39 = v48;
  sub_1BD0DE19C(v15, v48, &qword_1EBD429B0, &qword_1BE0CE2A0);
  v40 = v51;
  sub_1BD0DE19C(v36, v51, &qword_1EBD429A8, &qword_1BE0CE298);
  v41 = v52;
  sub_1BD0DE19C(v39, v52, &qword_1EBD429B0, &qword_1BE0CE2A0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A60, &unk_1BE0CE2F0);
  sub_1BD0DE19C(v40, v41 + *(v42 + 48), &qword_1EBD429A8, &qword_1BE0CE298);
  sub_1BD0DE53C(v36, &qword_1EBD429A8, &qword_1BE0CE298);
  sub_1BD0DE53C(v15, &qword_1EBD429B0, &qword_1BE0CE2A0);
  sub_1BD0DE53C(v40, &qword_1EBD429A8, &qword_1BE0CE298);
  return sub_1BD0DE53C(v39, &qword_1EBD429B0, &qword_1BE0CE2A0);
}

uint64_t sub_1BD35A554@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v109 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A10, &qword_1BE0CE2D0);
  MEMORY[0x1EEE9AC00](v107);
  v6 = (v104 - v5);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A88, &qword_1BE0CE388);
  MEMORY[0x1EEE9AC00](v108);
  v8 = v104 - v7;
  v9 = type metadata accessor for MeCardAddressSection(0);
  v105 = *(v9 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429F0, &qword_1BE0CE2C0);
  v106 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v104 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a2[5];
  v115 = a2[4];
  v116 = v16;
  v117 = a2[6];
  v17 = a2[1];
  v111 = *a2;
  v112 = v17;
  v18 = a2[3];
  v113 = a2[2];
  v114 = v18;
  v25 = sub_1BD513514(v14, v15, v19, v20, v21, v22, v23, v24);
  if (v25[2])
  {
    v110 = v25;
    sub_1BD35CFC8(a2, v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v34 = swift_allocObject();
    sub_1BD35D9B0(v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for MeCardAddressSection);
    v35 = (v34 + ((v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v14;
    v35[1] = v15;
    sub_1BD14ED40(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A48, &qword_1BE0CE2E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00, &qword_1BE0CE2C8);
    sub_1BD0DE4F4(&qword_1EBD42A50, &qword_1EBD42A48, &qword_1BE0CE2E8, MEMORY[0x1E69E6338]);
    sub_1BD35D2B8();
    sub_1BD35D720();
    sub_1BE0519D4();
    v36 = v106;
    v106[2](v8, v13, v11);
    swift_storeEnumTagMultiPayload();
    sub_1BD35D234();
    sub_1BD35D374();
    v37 = v109;
    sub_1BE04F9A4();
    (*(v36 + 8))(v13, v11);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0, &qword_1BE0CE2B8);
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  v40 = v14;
  v106 = v6;
  v41 = v109;
  v25, v26, v27, v28, v29, v30, v31, v32;
  v42 = v15;
  v104[1] = v11;
  if (v15 > 1)
  {
    v43 = v40;
    if (v42 == 2)
    {
      v44 = 2;
    }

    else
    {
      v44 = v42;
      if (v42 != 3)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v45 = sub_1BE052434();
    v46 = v47;
    goto LABEL_13;
  }

  v43 = v40;
  if (!v42)
  {
    v44 = 0;
    goto LABEL_12;
  }

  v44 = v42;
  if (v42 == 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v45 = v43;
  v46 = v44;
LABEL_13:
  v48 = sub_1BE052434();
  v50 = v49;
  if (v45 == v48 && v46 == v49)
  {
    v51 = v44;
LABEL_16:
    sub_1BD14ED40(v43, v51);
    v46, v52, v53, v54, v55, v56, v57, v58;
    v50, v59, v60, v61, v62, v63, v64, v65;
LABEL_18:
    v81 = v106;
    sub_1BD35AE64(v43, v51, 0, v106);
    sub_1BD0DE19C(v81, v8, &qword_1EBD42A10, &qword_1BE0CE2D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD35D234();
    sub_1BD35D374();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v81, &qword_1EBD42A10, &qword_1BE0CE2D0);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0, &qword_1BE0CE2B8);
    return (*(*(v82 - 8) + 56))(v41, 0, 1, v82);
  }

  v66 = sub_1BE053B84();
  v51 = v44;
  sub_1BD14ED40(v43, v44);
  v46, v67, v68, v69, v70, v71, v72, v73;
  v50, v74, v75, v76, v77, v78, v79, v80;
  if (v66)
  {
    goto LABEL_18;
  }

  if (v44 > 1)
  {
    if (v44 == 2 || v44 == 3)
    {
      goto LABEL_25;
    }
  }

  else if (v44 <= 1)
  {
LABEL_25:
    v83 = sub_1BE052434();
    v46 = v84;
    goto LABEL_26;
  }

  v83 = v43;
  v46 = v44;
LABEL_26:
  v85 = sub_1BE052434();
  v50 = v86;
  if (v83 == v85 && v46 == v86)
  {
    goto LABEL_16;
  }

  v87 = sub_1BE053B84();
  sub_1BD14ED40(v43, v44);
  v46, v88, v89, v90, v91, v92, v93, v94;
  v50, v95, v96, v97, v98, v99, v100, v101;
  if (v87)
  {
    goto LABEL_18;
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0, &qword_1BE0CE2B8);
  v103 = *(*(v102 - 8) + 56);

  return v103(v41, 1, 1, v102);
}

uint64_t sub_1BD35AC94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MeCardAddressSection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1BD35AE64(a3, a4, v14, a5);
  sub_1BD35CFC8(a2, v13);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1BD35D9B0(v13, v17 + v15, type metadata accessor for MeCardAddressSection);
  *(v17 + v16) = v14;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00, &qword_1BE0CE2C8) + 36));
  *v19 = sub_1BD35DD7C;
  v19[1] = v17;
  v20 = type metadata accessor for ListRowGestureActionsModifier(0);
  v19[2] = 0;
  v19[3] = 0;
  v21 = *(v20 + 24);
  *(v19 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v22 = v14;
  return sub_1BD14ED40(a3, a4);
}

int *sub_1BD35AE64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a4;
  v8 = type metadata accessor for MeCardAddressSection(0);
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = v9;
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a1;
    v15 = *(v4 + 8);
    if (v15)
    {
      sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
      v16 = a3;
      v83 = v4;
      v84 = a3;
      v17 = v10;
      v18 = v16;
      v19 = v15;
      v20 = a2;
      v21 = v19;
      v22 = sub_1BE053074();

      a2 = v20;
      v10 = v17;
      v4 = v83;
      a3 = v84;
    }

    else
    {
      v22 = 0;
    }

    a1 = v14;
  }

  else
  {
    v22 = 0;
  }

  v23 = a2;
  v24 = sub_1BD55131C(a1, a2);
  v84 = v25;
  v26 = *(v4 + 24);
  v27 = *(v4 + 32);
  v28 = *(v4 + 40);
  v82 = v28;
  LODWORD(v83) = v22;
  v81 = v26;
  v79 = v24;
  v80 = v27;
  if (a3)
  {
    if ((v22 & 1) != 0 && v28 < 2)
    {
      sub_1BD35D998(v26, v27, v28);
      v77 = a3;
      v75 = v26;
      v29 = v27;
    }

    else
    {
      v48 = a3;
      v49 = [v48 pkSingleLineFormattedContactAddress];
      v77 = v48;
      if (v49)
      {
        v50 = v49;
        v75 = sub_1BE052434();
        v29 = v51;
      }

      else
      {

        v75 = 0;
        v29 = 0;
      }
    }

    v47 = v23;
    goto LABEL_17;
  }

  v76 = v10;
  v30 = v77;
  v31 = v11;
  (v77)[13](v13, *MEMORY[0x1E69B8068], v11);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    sub_1BE04B6F4();
    v35 = v34;

    (v30[1])(v13, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BE0B69E0;
    v37 = sub_1BD55131C(a1, v23);
    v39 = v38;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1BD110550();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    v75 = sub_1BE052454();
    v29 = v40;
    v35, v40, v41, v42, v43, v44, v45, v46;
    v77 = 0;
    v47 = v23;
    v10 = v76;
LABEL_17:
    LODWORD(v76) = a3 == 0;
    sub_1BD35CFC8(v4, v10);
    v52 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v53 = (v78 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = sub_1BD35D9B0(v10, v54 + v52, type metadata accessor for MeCardAddressSection);
    *(v54 + v53) = a3;
    v56 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v56 = a1;
    v56[1] = v47;
    MEMORY[0x1EEE9AC00](v55);
    v57 = v84;
    *(&v75 - 12) = v79;
    *(&v75 - 11) = v57;
    *(&v75 - 10) = v75;
    *(&v75 - 9) = v29;
    *(&v75 - 64) = v83 & 1;
    v58 = v80;
    *(&v75 - 7) = v81;
    *(&v75 - 6) = v58;
    *(&v75 - 40) = v82;
    *(&v75 - 4) = a1;
    *(&v75 - 3) = v47;
    *(&v75 - 2) = a3;
    *(&v75 - 1) = v4;
    v59 = v77;
    sub_1BD14ED40(a1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68, &unk_1BE0CE340);
    sub_1BD35D868();
    v60 = v86;
    sub_1BE051704();
    v57, v61, v62, v63, v64, v65, v66, v67;
    v29, v68, v69, v70, v71, v72, v73, v74;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A10, &qword_1BE0CE2D0);
    *(v60 + result[9]) = v76;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1BD35B38C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v110 = a2;
  v111 = a3;
  v6 = sub_1BE04D214();
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v106 - v10;
  v11 = sub_1BE051AD4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v106 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v106 - v26;
  if (!a1)
  {
    v31 = v4;
    sub_1BE04D084();
    v33 = v110;
    v32 = v111;
    sub_1BD14ED40(v110, v111);
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C54();
    sub_1BD35D778(v33, v32, v36, v37, v38, v39, v40, v41);
    if (!os_log_type_enabled(v34, v35))
    {
LABEL_34:

      (*(v112 + 8))(v8, v113);
      (*(v31 + 128))(1, v33, v32, 0);
      return;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v115 = v43;
    *v42 = 136315138;
    if (v32 > 1)
    {
      if (v32 == 2 || v32 == 3)
      {
        goto LABEL_32;
      }
    }

    else if (v32 <= 1)
    {
LABEL_32:
      v88 = sub_1BE052434();
      v89 = v90;
      goto LABEL_33;
    }

    v88 = v33;
    v89 = v32;
LABEL_33:
    sub_1BD14ED40(v33, v32);
    v91 = sub_1BD123690(v88, v89, &v115);
    v89, v92, v93, v94, v95, v96, v97, v98;
    *(v42 + 4) = v91;
    _os_log_impl(&dword_1BD026000, v34, v35, "Adding me card address for label: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43, v99, v100, v101, v102, v103, v104, v105);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    MEMORY[0x1BFB45F20](v42, -1, -1);
    goto LABEL_34;
  }

  v107 = v25;
  type metadata accessor for MeCardAddressSection(0);
  v111 = a1;
  v110 = a1;
  sub_1BD70A2C8(v19);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  v29 = (*(*(v28 - 8) + 48))(v19, 1, v28);
  v109 = v4;
  if (v29 == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD40450, &qword_1BE0D7250);
    v30 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v28);
    sub_1BD0DE53C(v19, &qword_1EBD40520, &qword_1BE0D70B0);
    v30 = 0;
  }

  v44 = *(v12 + 56);
  v44(v27, v30, 1, v11);
  (*(v12 + 104))(v23, *MEMORY[0x1E697D710], v11);
  v44(v23, 0, 1, v11);
  v45 = *(v14 + 48);
  sub_1BD0DE19C(v27, v16, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE19C(v23, &v16[v45], &qword_1EBD40530, &unk_1BE0C80F0);
  v46 = *(v12 + 48);
  if (v46(v16, 1, v11) == 1)
  {
    sub_1BD0DE53C(v23, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v27, &qword_1EBD40530, &unk_1BE0C80F0);
    v47 = v46(&v16[v45], 1, v11);
    v48 = v109;
    if (v47 == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD40530, &unk_1BE0C80F0);
      v49 = 1;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v50 = v107;
  sub_1BD0DE19C(v16, v107, &qword_1EBD40530, &unk_1BE0C80F0);
  if (v46(&v16[v45], 1, v11) == 1)
  {
    sub_1BD0DE53C(v23, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v27, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v12 + 8))(v50, v11);
    v48 = v109;
LABEL_14:
    sub_1BD0DE53C(v16, &qword_1EBD40528, &unk_1BE0CE330);
    v49 = 0;
    goto LABEL_16;
  }

  v51 = v108;
  (*(v12 + 32))(v108, &v16[v45], v11);
  sub_1BD35D950(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
  v49 = sub_1BE052334();
  v52 = *(v12 + 8);
  v52(v51, v11);
  sub_1BD0DE53C(v23, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v27, &qword_1EBD40530, &unk_1BE0C80F0);
  v52(v107, v11);
  sub_1BD0DE53C(v16, &qword_1EBD40530, &unk_1BE0C80F0);
  v48 = v109;
LABEL_16:
  v54 = v110;
  v53 = v111;
  v55 = [v110 valueSource];
  v56 = v114;
  if (!v55)
  {
    [v54 setValueSource_];
    if (v49)
    {
      goto LABEL_18;
    }

LABEL_24:
    v61 = *(v48 + 128);
    v62 = v54;
    goto LABEL_25;
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v57 = *(v48 + 8);
  if (v57 && (sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58), v58 = v54, v59 = v57, v60 = sub_1BE053074(), v59, v58, (v60 & 1) != 0))
  {
    if (*(v48 + 40) != 2 || *(v48 + 24) != 0)
    {
      v61 = *(v48 + 128);
      v62 = v58;
LABEL_25:
      v63 = v62;
      v61(v53, 0, 0, 1);

      return;
    }
  }

  else
  {
    sub_1BE04D084();
    v64 = v54;
    v65 = sub_1BE04D204();
    v66 = sub_1BE052C54();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v115 = v68;
      *v67 = 136315138;
      v69 = [v64 description];
      v70 = sub_1BE052434();
      v72 = v71;

      v73 = sub_1BD123690(v70, v72, &v115);
      v72, v74, v75, v76, v77, v78, v79, v80;
      *(v67 + 4) = v73;
      _os_log_impl(&dword_1BD026000, v65, v66, "Selected shipping address: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68, v81, v82, v83, v84, v85, v86, v87);
      MEMORY[0x1BFB45F20](v68, -1, -1);
      MEMORY[0x1BFB45F20](v67, -1, -1);
    }

    (*(v112 + 8))(v56, v113);
    (*(v48 + 112))(v64);
  }
}

id sub_1BD35BD70@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MeCardAddressSection(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a1;
  v11 = [v48 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v12 = sub_1BE052744();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12, v13, v14, v15, v16, v17, v18, v19;
LABEL_10:
    v35 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_11;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1BFB40900](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v12 + 32);
  }

  v29 = v21;
  v12, v22, v23, v24, v25, v26, v27, v28;
  v30 = [v29 label];

  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = sub_1BE052434();
  v33 = v32;

  v34 = v33;
  v35 = v31;
LABEL_11:
  v36 = sub_1BD551B1C(v35, v34);
  v38 = v37;
  sub_1BD35AE64(v36, v37, v48, a3);
  sub_1BD35CFC8(a2, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v40 = (v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_1BD35D9B0(v10, v41 + v39, type metadata accessor for MeCardAddressSection);
  *(v41 + v40) = v48;
  v42 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v36;
  v42[1] = v38;
  v43 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00, &qword_1BE0CE2C8) + 36));
  *v43 = sub_1BD35D774;
  v43[1] = v41;
  v44 = type metadata accessor for ListRowGestureActionsModifier(0);
  v43[2] = 0;
  v43[3] = 0;
  v45 = *(v44 + 24);
  *(v43 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v46 = v48;

  return v46;
}

double sub_1BD35C03C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E69B8CF8]);
  v8 = a2;
  v9 = [v7 init];
  [v9 setDefaultShippingAddress_];

  sub_1BD35B38C(a2, a3, a4);
  type metadata accessor for MeCardAddressSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD35C110(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + *(type metadata accessor for MeCardAddressSection(0) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516A4();
  v6 = v22;
  if (!v22)
  {
    return 0;
  }

  v7 = [v22 pkSingleLineFormattedContactAddressIncludingCountryName_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1BE052434();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1BD110550();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2);
  v12 = sub_1BE04B714();
  v11, v13, v14, v15, v16, v17, v18, v19;
  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_1BD35C310(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MeCardAddressSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  sub_1BD35CFC8(a2, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1BD35D9B0(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for MeCardAddressSection);
  sub_1BE051704();
  sub_1BE052434();
  v13 = v12;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  return (*(v7 + 8))(v9, v6);
}

double sub_1BD35C564(uint64_t a1)
{
  type metadata accessor for MeCardAddressSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516B4();
  return result;
}

id sub_1BD35C5C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
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

id sub_1BD35C724@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
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

id sub_1BD35C890()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = v0[5];
  v37[4] = v0[4];
  v37[5] = v9;
  v37[6] = v0[6];
  v10 = v0[1];
  v37[0] = *v0;
  v37[1] = v10;
  v11 = v0[3];
  v37[2] = v0[2];
  v37[3] = v11;
  v12 = sub_1BD513D44();
  if (v12 >> 62)
  {
    v26 = v12;
    v27 = sub_1BE053704();
    v26, v28, v29, v30, v31, v32, v33, v34;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12, v13, v14, v15, v16, v17, v18, v19;
    if (v20)
    {
LABEL_3:
      if (*(v1 + 18) == 2)
      {
        v21 = *(v1 + 19);
        if (v21)
        {
          v22 = v21;
          if ([v22 type] == 1)
          {
            (*(v3 + 104))(v5, *MEMORY[0x1E69B8078], v2);
            result = PKPassKitBundle();
            if (result)
            {
              v24 = result;
              v25 = sub_1BE04B6F4();

              (*(v3 + 8))(v5, v2);
              return v25;
            }

            goto LABEL_15;
          }
        }
      }

      return 0;
    }
  }

  (*(v3 + 104))(v8, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = sub_1BE04B6F4();

  (*(v3 + 8))(v8, v2);
  return v36;
}

uint64_t sub_1BD35CB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v40 = a6;
  *(&v40 + 1) = a7;
  v43 = a9;
  v41 = a4;
  v42 = a13;
  v18 = type metadata accessor for ShippingAddressRow(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0 || (v21 = a8, v22 = 1, v21 == 2) && v40 == 0)
  {
    v22 = 0;
  }

  sub_1BD14ED40(a10, a11);
  v28 = sub_1BD50D2BC(a10, a11, (a12 != 0), v23, v24, v25, v26, v27);
  *v20 = a1;
  *(v20 + 1) = a2;
  *(v20 + 2) = a3;
  *(v20 + 3) = v41;
  v20[32] = v22;
  *(v20 + 5) = v28;
  *(v20 + 6) = v29;
  *(v20 + 7) = v30;
  v20[64] = a5 & 1;
  v31 = v18[9];
  *&v20[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v32 = v18[10];
  *&v20[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  *&v20[v18[11]] = 0x4028000000000000;
  KeyPath = swift_getKeyPath();
  type metadata accessor for MeCardAddressSection(0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68, &unk_1BE0CE340);
  v35 = v43;
  v36 = (v43 + *(v34 + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BD70A2C8((v36 + v37));
  *v36 = KeyPath;
  return sub_1BD35D9B0(v20, v35, type metadata accessor for ShippingAddressRow);
}

unint64_t sub_1BD35CD88()
{
  result = qword_1EBD42988;
  if (!qword_1EBD42988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42968, &qword_1BE0CE278);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42988);
  }

  return result;
}

unint64_t sub_1BD35CE1C()
{
  result = qword_1EBD42998;
  if (!qword_1EBD42998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42970, &qword_1BE0CE280);
    sub_1BD0DE4F4(&qword_1EBD42980, &qword_1EBD42978, &unk_1BE0CE288, MEMORY[0x1E6981F48]);
    sub_1BD35CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42998);
  }

  return result;
}

unint64_t sub_1BD35CEE0()
{
  result = qword_1EBD429A0;
  if (!qword_1EBD429A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200, &qword_1BE0BB900);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD35D950(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429A0);
  }

  return result;
}

uint64_t sub_1BD35CFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeCardAddressSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD35D02C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  if (a3 <= 1u)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

double sub_1BD35D044()
{
  v1 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD35C564(v2);
}

uint64_t sub_1BD35D0A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD35A554(a1, v6, a2);
}

unint64_t sub_1BD35D124()
{
  result = qword_1EBD429D0;
  if (!qword_1EBD429D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429C0, &qword_1BE0CE2B0);
    sub_1BD35D1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429D0);
  }

  return result;
}

unint64_t sub_1BD35D1A8()
{
  result = qword_1EBD429D8;
  if (!qword_1EBD429D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429E0, &qword_1BE0CE2B8);
    sub_1BD35D234();
    sub_1BD35D374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429D8);
  }

  return result;
}

unint64_t sub_1BD35D234()
{
  result = qword_1EBD429E8;
  if (!qword_1EBD429E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429F0, &qword_1BE0CE2C0);
    sub_1BD35D2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429E8);
  }

  return result;
}

unint64_t sub_1BD35D2B8()
{
  result = qword_1EBD429F8;
  if (!qword_1EBD429F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A00, &qword_1BE0CE2C8);
    sub_1BD35D374();
    sub_1BD35D950(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier, &unk_1BE0FCED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429F8);
  }

  return result;
}

unint64_t sub_1BD35D374()
{
  result = qword_1EBD42A08;
  if (!qword_1EBD42A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A10, &qword_1BE0CE2D0);
    sub_1BD0DE4F4(&qword_1EBD42A18, &qword_1EBD42A20, &qword_1BE0CE2D8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD42A28, &qword_1EBD42A30, &qword_1BE0CE2E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A08);
  }

  return result;
}

unint64_t sub_1BD35D458()
{
  result = qword_1EBD42A40;
  if (!qword_1EBD42A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A40);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for MeCardAddressSection(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *v2, v3, v4, v5, v6, v7, v8, v9;

  sub_1BD35D02C(*(v2 + 24), *(v2 + 32), *(v2 + 40), v10, v11, v12, v13, v14, v84, v85, v86);
  *(v2 + 56), v15, v16, v17, v18, v19, v20, v21;
  *(v2 + 72), v22, v23, v24, v25, v26, v27, v28;

  *(v2 + 104), v29, v30, v31, v32, v33, v34, v35;
  *(v2 + 120), v36, v37, v38, v39, v40, v41, v42;
  *(v2 + 136), v43, v44, v45, v46, v47, v48, v49;

  v50 = (v2 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v58 - 8) + 48))(v50, 1, v58))
    {
      *v50, v59, v60, v61, v62, v63, v64, v65;
      v50[1], v66, v67, v68, v69, v70, v71, v72;
      v73 = *(v58 + 32);
      v74 = sub_1BE051AD4();
      (*(*(v74 - 8) + 8))(v50 + v73, v74);
    }
  }

  else
  {
    *v50, v51, v52, v53, v54, v55, v56, v57;
  }

  v75 = (v2 + *(v1 + 40));

  v75[1], v76, v77, v78, v79, v80, v81, v82;

  return swift_deallocObject();
}

id sub_1BD35D6A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD35BD70(a1, v6, a2);
}

unint64_t sub_1BD35D720()
{
  result = qword_1EBD42A58;
  if (!qword_1EBD42A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A58);
  }

  return result;
}

void sub_1BD35D778(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 >= 4)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1BD35D78C()
{
  v1 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD35B38C(*(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1BD35D868()
{
  result = qword_1EBD42A70;
  if (!qword_1EBD42A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A68, &unk_1BE0CE340);
    sub_1BD35D950(&qword_1EBD42A78, type metadata accessor for ShippingAddressRow, &unk_1BE0FE380);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A70);
  }

  return result;
}

uint64_t sub_1BD35D950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD35D998(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD35D9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD35DA18@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BD35AC94(a1, v2 + v6, v8, v9, a2);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for MeCardAddressSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  *(v0 + v2), v5, v6, v7, v8, v9, v10, v11;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40), v12, v13, v14, v15, v16, v94, v95, v96);
  *(v4 + 56), v17, v18, v19, v20, v21, v22, v23;
  *(v4 + 72), v24, v25, v26, v27, v28, v29, v30;

  *(v4 + 104), v31, v32, v33, v34, v35, v36, v37;
  *(v4 + 120), v38, v39, v40, v41, v42, v43, v44;
  *(v4 + 136), v45, v46, v47, v48, v49, v50, v51;

  v52 = (v4 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v60 - 8) + 48))(v52, 1, v60))
    {
      *v52, v61, v62, v63, v64, v65, v66, v67;
      v52[1], v68, v69, v70, v71, v72, v73, v74;
      v75 = *(v60 + 32);
      v76 = sub_1BE051AD4();
      (*(*(v76 - 8) + 8))(v52 + v75, v76);
    }
  }

  else
  {
    *v52, v53, v54, v55, v56, v57, v58, v59;
  }

  v77 = (v4 + *(v1 + 40));

  v77[1], v78, v79, v80, v81, v82, v83, v84;
  v92 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v92 >= 4)
  {
    v92, v85, v86, v87, v88, v89, v90, v91;
  }

  return swift_deallocObject();
}

double sub_1BD35DCEC()
{
  v1 = *(type metadata accessor for MeCardAddressSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BD35C03C(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1BD35DD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v5 = type metadata accessor for PaymentShippingAddressItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v11 = *MEMORY[0x1E69BC9F0];
  v12 = sub_1BE04C894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(&v8[v10], v11, v12);
  v21 = *(a1 + 96);
  v22 = *(a1 + 120);
  v23 = *(a1 + 152);
  v54 = *(a1 + 136);
  v55 = v23;
  v56 = *(a1 + 168);
  v52 = *(a1 + 104);
  v53 = v22;
  v24 = *(a1 + 184);
  v51 = *(a1 + 192);
  if (v21)
  {
    v25 = *(a1 + 176);
    *(v8 + 10) = *(a1 + 160);
    *(v8 + 11) = v25;
    v26 = *(a1 + 208);
    v27 = *(a1 + 192);
    *(v8 + 12) = v27;
    *(v8 + 13) = v26;
    v28 = *(a1 + 112);
    *(v8 + 6) = *(a1 + 96);
    *(v8 + 7) = v28;
    v29 = *(a1 + 144);
    *(v8 + 8) = *(a1 + 128);
    *(v8 + 9) = v29;
    v30 = *(a1 + 48);
    *(v8 + 2) = *(a1 + 32);
    *(v8 + 3) = v30;
    v31 = *(a1 + 80);
    *(v8 + 4) = *(a1 + 64);
    *(v8 + 5) = v31;
    v32 = *(a1 + 16);
    *v8 = *a1;
    *(v8 + 1) = v32;
    v33 = *(a1 + 136);
    *(v8 + 264) = *(a1 + 120);
    *(v8 + 280) = v33;
    v34 = *(a1 + 168);
    *(v8 + 296) = *(a1 + 152);
    *(v8 + 312) = v34;
    *(v8 + 248) = *(a1 + 104);
    v35 = v40;
    *(v8 + 28) = v39;
    *(v8 + 29) = v35;
    *(v8 + 30) = v21;
    *(v8 + 41) = v24;
    *(v8 + 21) = v27;
    v8[352] = v24 != 1;
    v36 = v41;
    sub_1BD35F350(v8, v41);
    (*(v6 + 56))(v36, 0, 1, v5);
    v43 = v21;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v44 = v52;
    v49 = v24;
    v50 = v51;
    sub_1BD35F3B4(&v43, &v42);
    return sub_1BD35F410(v8);
  }

  else
  {
    v40, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD2ED540(a1);
    (*(v13 + 8))(&v8[v10], v12);
    return (*(v6 + 56))(v41, 1, 1, v5);
  }
}

uint64_t type metadata accessor for PaymentShippingAddressItem(uint64_t a1)
{
  result = qword_1EBD42A98;
  if (!qword_1EBD42A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD35E074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AC8, &qword_1BE0CE428);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AE8, &qword_1BE0CE470);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  v9 = sub_1BE04C894();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5A8, &qword_1BE0BEA50);
  v17 = *(v16 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v21 = v31 - v20;
  v22 = *(a1 + 248);
  v36 = a1;
  v35 = a1;
  if (v22)
  {
    v31[1] = v6;
    v31[2] = v18;
    v23 = v33;
    if (*(a1 + 352))
    {
      v24 = MEMORY[0x1E69BC9E8];
    }

    else if (*(a1 + 280) == 2 && *(a1 + 264) == 0)
    {
      v24 = MEMORY[0x1E69BCA00];
    }

    else
    {
      v24 = MEMORY[0x1E69BC9F8];
    }

    (*(v10 + 104))(v12, *v24, v9, v19);
    sub_1BE04C784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AF0, &qword_1BE0CE478);
    sub_1BD35F8F4(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
    sub_1BD0DE4F4(&qword_1EBD42AF8, &qword_1EBD42AF0, &qword_1BE0CE478, MEMORY[0x1E6981870]);
    sub_1BE04C6B4();
    v29 = v32;
    (v32[2])(v8, v5, v23);
    swift_storeEnumTagMultiPayload();
    v30 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8, &qword_1BE0CE428, v30);
    sub_1BE04F9A4();
    return (v29[1])(v5, v23);
  }

  else
  {
    v32 = v31;
    v25 = v18;
    v26 = type metadata accessor for PaymentShippingAddressItem(0);
    (*(v10 + 16))(v15, a1 + *(v26 + 32), v9);
    sub_1BE04C784();
    sub_1BD35F8F4(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
    sub_1BE04C6B4();
    (*(v17 + 16))(v8, v21, v25);
    swift_storeEnumTagMultiPayload();
    v27 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8, &qword_1BE0CE428, v27);
    sub_1BE04F9A4();
    return (*(v17 + 8))(v21, v25);
  }
}

void sub_1BD35E65C(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if ([v1 contactSource] != 1)
  {
LABEL_12:

    return;
  }

  v2 = [v1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v3 = sub_1BE052744();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    v3, v26, v27, v28, v29, v30, v31, v32;
    return;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v12 = v4;
  v3, v5, v6, v7, v8, v9, v10, v11;
  v13 = [v12 label];

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = sub_1BE052434();
  v16 = v15;

  v17 = sub_1BD551B1C(v14, v16);
  v19 = v18;

  if (v19 <= 1)
  {
    if (v19 <= 1)
    {
      return;
    }

LABEL_15:
    sub_1BD35D778(v17, v19, v20, v21, v22, v23, v24, v25);
    return;
  }

  if (v19 != 2 && v19 != 3)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1BD35E858(void *a1)
{
  if (a1[26] < 2uLL)
  {
    if (a1[12])
    {
      v1 = a1[13];
      v2 = v1;
    }

    else
    {
      v1 = 0;
    }

    sub_1BD35E65C(v1);
  }

  sub_1BE0512B4();

  return sub_1BE04C774();
}

id sub_1BD35E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B00, &unk_1BE0CE480);
  return sub_1BD35E990(a1, (a2 + *(v4 + 44)));
}

id sub_1BD35E990@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54[0] = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38, &unk_1BE0B9720);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v59 = v54 - v13;
  v14 = "GIVEN_NAME_LOCATIONS";
  v15 = *(a1 + 208);
  if (v15 == 1)
  {
    v14 = "STOREPICKUP_TO_TITLE";
  }

  if (v15 == 2)
  {
    v14 = "SERVICEPICKUP_TO_TITLE";
  }

  if (v15 == 3)
  {
    v16 = "UPDATE_SHIPPING_ADDRESS";
  }

  else
  {
    v16 = v14;
  }

  v17 = *MEMORY[0x1E69B8068];
  v18 = *(v4 + 104);
  v18(v8, v17, v3, v12);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v20 = result;
  v21 = sub_1BE04B6F4();
  v54[1] = v22;
  v54[2] = v21;
  (v16 | 0x8000000000000000), v22, v23, v24, v25, v26, v27, v28;

  v29 = *(v4 + 8);
  v29(v8, v3);
  if (*(a1 + 280) == 2 && *(a1 + 264) == 0)
  {
    v30 = *(a1 + 248);
    if (v30)
    {
      v31 = [v30 pkFormattedContactAddressIncludingPhoneticName_];
      v33 = v57;
      v32 = v58;
      v35 = v55;
      v34 = v56;
      if (v31)
      {
        v36 = v31;
        sub_1BE052434();
      }
    }

    else
    {
      v33 = v57;
      v32 = v58;
      v35 = v55;
      v34 = v56;
    }

    sub_1BE051224();
    goto LABEL_18;
  }

  v37 = v54[0];
  (v18)(v54[0], v17, v3);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v38 = result;
  sub_1BE04B6F4();

  v29(v37, v3);
  sub_1BE051264();
  v33 = v57;
  v32 = v58;
  v35 = v55;
  v34 = v56;
LABEL_18:
  sub_1BE04C644();
  if (*(a1 + 352) == 1)
  {
    v40 = *(a1 + 336);
    v39 = *(a1 + 344);
    KeyPath = swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    sub_1BE048964();
  }

  else
  {
    v40 = 0;
    v39 = 0;
    KeyPath = 0;
  }

  v42 = *(v34 + 16);
  v43 = v59;
  v42(v35, v59, v33);
  v42(v32, v35, v33);
  v44 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B08, &qword_1BE0CE490) + 48)];
  sub_1BD35F7B0(v40, v39, KeyPath);
  sub_1BD35F7F4(v40, v39, KeyPath, 0, v45, v46, v47, v48);
  *v44 = v40;
  *(v44 + 1) = v39;
  *(v44 + 2) = KeyPath;
  v44[24] = 0;
  v49 = *(v34 + 8);
  v49(v43, v33);
  sub_1BD35F7F4(v40, v39, KeyPath, 0, v50, v51, v52, v53);
  return (v49)(v35, v33);
}

uint64_t sub_1BD35EE48(void *a1)
{
  if (a1[26] < 2uLL)
  {
    if (a1[12])
    {
      v1 = a1[13];
      v2 = v1;
    }

    else
    {
      v1 = 0;
    }

    sub_1BD35E65C(v1);
  }

  sub_1BE052644();
  sub_1BE0511D4();
  return sub_1BE04C774();
}

void sub_1BD35EF50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = "graduationcap.fill";
  v10 = *(a1 + 208);
  if (v10 == 1)
  {
    v9 = "ADD_STOREPICKUP_BUTTON";
  }

  if (v10 == 2)
  {
    v9 = "ADD_SERVICEPICKUP_BUTTON";
  }

  if (v10 == 3)
  {
    v11 = "ADD_SHIPPING_BUTTON";
  }

  else
  {
    v11 = v9;
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;
    (v11 | 0x8000000000000000), v15, v17, v18, v19, v20, v21, v22;

    (*(v5 + 8))(v8, v4);
    v76[2] = v14;
    v76[3] = v16;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    LOBYTE(v14) = v26;
    v28 = v27;
    v29 = sub_1BE050324();
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v29, v31, v33, v35, v37, v38, v39, v40;
    sub_1BD0DDF10(v23, v25, (v14 & 1), v41, v42, v43, v44, v45);
    v28, v46, v47, v48, v49, v50, v51, v52;
    v53 = sub_1BE0511F4();
    v54 = sub_1BE050564();
    v56 = v55;
    LOBYTE(v28) = v57;
    v59 = v58;
    v53, v55, v57, v58, v60, v61, v62, v63;
    sub_1BD0DDF10(v30, v32, (v34 & 1), v64, v65, v66, v67, v68);
    v36, v69, v70, v71, v72, v73, v74, v75;
    *a2 = v54;
    *(a2 + 8) = v56;
    *(a2 + 16) = v28 & 1;
    *(a2 + 24) = v59;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD35F1CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AA8, &qword_1BE0CE410);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18[-v2];
  v19 = v0;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AB0, &unk_1BE0CE418);
  sub_1BD35F564();
  sub_1BE051704();
  v4 = *(v0 + 352);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = &v3[*(v1 + 36)];
  *v7 = KeyPath;
  v7[1] = sub_1BD10DF54;
  v7[2] = v6;
  sub_1BE052434();
  v9 = v8;
  sub_1BD35F644();
  sub_1BE050DE4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  return sub_1BD35F728(v3);
}

uint64_t sub_1BD35F350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentShippingAddressItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD35F410(uint64_t a1)
{
  v2 = type metadata accessor for PaymentShippingAddressItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD35F494(uint64_t a1)
{
  result = sub_1BD1030A8();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04C894();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD35F564()
{
  result = qword_1EBD42AB8;
  if (!qword_1EBD42AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42AB0, &unk_1BE0CE418);
    v1 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8, &qword_1BE0CE428, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42AB8);
  }

  return result;
}

unint64_t sub_1BD35F644()
{
  result = qword_1EBD42AD0;
  if (!qword_1EBD42AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42AA8, &qword_1BE0CE410);
    sub_1BD0DE4F4(&qword_1EBD42AD8, &qword_1EBD42AE0, &unk_1BE0CE460, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42AD0);
  }

  return result;
}

uint64_t sub_1BD35F728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AA8, &qword_1BE0CE410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD35F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD35F7F4(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
    a3, a2, a3, a4, a5, a6, a7, a8;

    a2, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1BD35F838()
{
  result = qword_1EBD42B10;
  if (!qword_1EBD42B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B18, &qword_1BE0CE4D0);
    sub_1BD35F644();
    sub_1BD35F8F4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42B10);
  }

  return result;
}

uint64_t sub_1BD35F8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD35F968@<X0>(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v86 = a1;
  v85 = sub_1BE04F6E4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  v88 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B30, &qword_1BE0CE578);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B38, &qword_1BE0CE580);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B40, &qword_1BE0CE588);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  *v16 = sub_1BE04F504();
  *(v16 + 1) = 0x4028000000000000;
  v16[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B48, &qword_1BE0CE590);
  sub_1BD35FF54(v86, &v16[*(v26 + 44)]);
  sub_1BE051CE4();
  v27 = 1;
  sub_1BE04EE54();
  sub_1BD0DE204(v16, v22, &qword_1EBD42B38, &qword_1BE0CE580);
  v28 = &v22[*(v18 + 44)];
  v29 = v100;
  *(v28 + 4) = v99;
  *(v28 + 5) = v29;
  *(v28 + 6) = v101;
  v30 = v96;
  *v28 = v95;
  *(v28 + 1) = v30;
  v31 = v98;
  *(v28 + 2) = v97;
  *(v28 + 3) = v31;
  sub_1BD0DE204(v22, v25, &qword_1EBD42B40, &qword_1BE0CE588);
  if (v4)
  {
    v32 = sub_1BE051574();
    v81 = v32;
    v33 = sub_1BE0502D4();
    v80 = v33;
    KeyPath = swift_getKeyPath();
    v35 = sub_1BE0511E4();
    v36 = swift_getKeyPath();
    v86 = a4;
    v37 = v36;
    v90 = v32;
    v91 = KeyPath;
    v92 = v33;
    v93 = v36;
    v94 = v35;
    v38 = v82;
    sub_1BE04F6B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
    sub_1BD0F1430();
    v39 = v83;
    sub_1BE050DA4();
    (*(v84 + 8))(v38, v85);
    v35, v40, v41, v42, v43, v44, v45, v46;
    v47 = v37;
    a4 = v86;
    v47, v48, v49, v50, v51, v52, v53, v54;
    v80, v55, v56, v57, v58, v59, v60, v61;
    KeyPath, v62, v63, v64, v65, v66, v67, v68;
    v81, v69, v70, v71, v72, v73, v74, v75;
    sub_1BD36088C(v39, v13);
    v27 = 0;
  }

  (*(v88 + 56))(v13, v27, 1, v7);
  v76 = v87;
  sub_1BD0DE19C(v25, v87, &qword_1EBD42B40, &qword_1BE0CE588);
  v77 = v89;
  sub_1BD0DE19C(v13, v89, &qword_1EBD42B30, &qword_1BE0CE578);
  sub_1BD0DE19C(v76, a4, &qword_1EBD42B40, &qword_1BE0CE588);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B50, &qword_1BE0CE598);
  sub_1BD0DE19C(v77, a4 + *(v78 + 48), &qword_1EBD42B30, &qword_1BE0CE578);
  sub_1BD0DE53C(v13, &qword_1EBD42B30, &qword_1BE0CE578);
  sub_1BD0DE53C(v25, &qword_1EBD42B40, &qword_1BE0CE588);
  sub_1BD0DE53C(v77, &qword_1EBD42B30, &qword_1BE0CE578);
  return sub_1BD0DE53C(v76, &qword_1EBD42B40, &qword_1BE0CE588);
}

void sub_1BD35FF54(void *a1@<X0>, void *a4@<X8>)
{
  v42 = a1;
  v47 = a4;
  v46 = sub_1BE04FF64();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58, &qword_1BE0FE680);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B60, &qword_1BE0CE600);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B68, &qword_1BE0CE608);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v41 = PKPassKitUIBundle();
  v18 = sub_1BE0515F4();
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370, &qword_1BE0D4090);
  sub_1BD360374(v42, &v8[*(v19 + 44)]);
  sub_1BE04FF44();
  v20 = sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58, &qword_1BE0FE680, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v43 + 8))(v5, v46);
  sub_1BD0DE53C(v8, &qword_1EBD42B58, &qword_1BE0FE680);
  sub_1BE052434();
  v22 = v21;
  v48 = v6;
  v49 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v45;
  sub_1BE050DE4();
  v22, v24, v25, v26, v27, v28, v29, v30;
  (*(v44 + 8))(v11, v23);
  sub_1BD0DE19C(v17, v14, &qword_1EBD42B68, &qword_1BE0CE608);
  v31 = v47;
  *v47 = v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B78, &qword_1BE0CE610);
  sub_1BD0DE19C(v14, v31 + *(v32 + 48), &qword_1EBD42B68, &qword_1BE0CE608);
  sub_1BE048964();

  sub_1BD0DE53C(v17, &qword_1EBD42B68, &qword_1BE0CE608);
  sub_1BD0DE53C(v14, &qword_1EBD42B68, &qword_1BE0CE608);
  v18, v33, v34, v35, v36, v37, v38, v39;
}