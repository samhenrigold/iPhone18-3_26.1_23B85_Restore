id sub_1BD197638(void *a1)
{
  v1 = a1;
  FKAmount.negate()();
  v3 = v2;

  return v3;
}

Swift::String __swiftcall FKAmount.formatted()()
{
  v1 = v0;
  v19 = sub_1BE04B0F4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0493F4();
  v5 = *(v18 - 8);
  v6 = MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 decimal];
  [v9 decimalValue];

  v10 = [v1 currency];
  sub_1BE052434();

  sub_1BE049404();
  sub_1BE04B054();
  v11 = sub_1BE0493E4();
  v13 = v12;
  (*(v2 + 8))(v4, v19);
  (*(v5 + 8))(v8, v18);
  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

id sub_1BD197888(void *a1)
{
  v2 = sub_1BE04B0F4();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE0493F4();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v9 = [v8 decimal];
  [v9 decimalValue];

  v10 = [v8 currency];
  sub_1BE052434();

  sub_1BE049404();
  sub_1BE04B054();
  sub_1BE0493E4();
  v12 = v11;

  (*(v23 + 8))(v4, v24);
  (*(v5 + 8))(v7, v22);
  v13 = sub_1BE052404();
  v12, v14, v15, v16, v17, v18, v19, v20;

  return v13;
}

uint64_t sub_1BD197ABC(void *a1)
{
  v1 = a1;
  v2 = [v1 decimal];
  [v2 decimalValue];

  v3 = MEMORY[0x1BFB403C0](0);
  LOBYTE(v2) = MEMORY[0x1BFB403F0](v3);

  return v2 & 1;
}

void FKAmount.isAboveZero.getter()
{
  v1 = [v0 decimal];
  [v1 decimalValue];

  MEMORY[0x1BFB403C0](0);

  JUMPOUT(0x1BFB403F0);
}

uint64_t sub_1BD197BE0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA78, &qword_1BE0BCF88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA80, &qword_1BE0BCF90);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA88, &qword_1BE0BCF98);
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  sub_1BD19804C();
  if (v14)
  {
    v15 = v14;
    if ((sub_1BE051C54() & 1) != 0 || (v16 = [v15 buttonTitle]) == 0)
    {
      *v10 = v15;
      swift_storeEnumTagMultiPayload();
      sub_1BD199474();
      sub_1BD0DE4F4(&qword_1EBD3BA98, &qword_1EBD3BA78, &qword_1BE0BCF88, MEMORY[0x1E697D680]);
      sub_1BE04F9A4();
    }

    else
    {

      v17 = swift_allocObject();
      v24 = v5;
      v23 = &v23;
      v18 = a1[1];
      v17[1] = *a1;
      v17[2] = v18;
      v19 = a1[3];
      v17[3] = a1[2];
      v17[4] = v19;
      MEMORY[0x1EEE9AC00](v17);
      v25 = a2;
      *(&v23 - 2) = v15;
      sub_1BD1993E8(a1, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAA0, &qword_1BE0BCFA0);
      sub_1BD0DE4F4(&qword_1EBD3BAA8, &qword_1EBD3BAA0, &qword_1BE0BCFA0, MEMORY[0x1E6981870]);
      sub_1BE051704();
      v20 = v24;
      (*(v24 + 16))(v10, v7, v4);
      swift_storeEnumTagMultiPayload();
      sub_1BD199474();
      sub_1BD0DE4F4(&qword_1EBD3BA98, &qword_1EBD3BA78, &qword_1BE0BCF88, MEMORY[0x1E697D680]);
      a2 = v25;
      sub_1BE04F9A4();

      (*(v20 + 8))(v7, v4);
    }

    sub_1BD1994C8(v13, a2);
    return (*(v26 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v22 = *(v26 + 56);

    return v22(a2, 1, 1, v11);
  }
}

void sub_1BD19804C()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = [*(v0 + 8) title];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(PKDashboardPassMessage) init];
      [v4 setTitle_];

      v5 = [v1 body];
      [v4 setMessage_];

      [v4 setParseEmphasisInMessage_];
      v6 = [*(v0 + 16) iconImage];
      v7 = [objc_opt_self() imageWithPKImage_];

      if (v7)
      {
        [v4 setImage_];

        v8 = [v1 primaryActionTitle];
        if (v8)
        {
          v9 = v8;
          [v4 setButtonTitle_];

          v10 = swift_allocObject();
          v11 = *(v0 + 16);
          v10[1] = *v0;
          v10[2] = v11;
          v12 = *(v0 + 48);
          v10[3] = *(v0 + 32);
          v10[4] = v12;
          aBlock[4] = sub_1BD199538;
          v24 = v10;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD198918;
          aBlock[3] = &block_descriptor_13;
          v13 = _Block_copy(aBlock);
          v14 = v24;
          sub_1BD1993E8(v0, v22);
          v14, v15, v16, v17, v18, v19, v20, v21;
          [v4 setActionOnButtonPress_];
          _Block_release(v13);
        }

        v22[0] = *(v0 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
        sub_1BE0516A4();
        [v4 setShowSpinner_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BD1982C4()
{
  v1 = v0;
  v22 = *(v0 + 48);
  v23 = *(&v22 + 1);
  v20[0] = *(v0 + 48);
  v21[15] = 1;
  sub_1BD0DE19C(&v23, v21, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);
    sub_1BE048964();
    sub_1BD0DE53C(&v22, &qword_1EBD54350, &unk_1BE0B8D00);
    v4 = swift_allocObject();
    v5 = v1[1];
    v4[1] = *v1;
    v4[2] = v5;
    v6 = v1[3];
    v4[3] = v1[2];
    v4[4] = v6;
    sub_1BD1993E8(v1, v20);
    v2(sub_1BD199420, v4);
    v4, v7, v8, v9, v10, v11, v12, v13;
    sub_1BD0D4744(v2, v3, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v21[0] = 0;
    sub_1BE0516B4();
    sub_1BD0DE53C(&v22, &qword_1EBD54350, &unk_1BE0B8D00);
  }
}

double sub_1BD198424@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  v31 = 0;
  sub_1BD198610(a1, &v15);
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v47[12] = v27;
  v47[13] = v28;
  v47[14] = v29;
  v47[8] = v23;
  v47[9] = v24;
  v47[11] = v26;
  v47[10] = v25;
  v47[4] = v19;
  v47[5] = v20;
  v47[7] = v22;
  v47[6] = v21;
  v47[0] = v15;
  v47[1] = v16;
  v47[2] = v17;
  v47[3] = v18;
  sub_1BD0DE19C(&v32, &v14, &qword_1EBD3BAB0, &qword_1BE0BCFA8);
  sub_1BD0DE53C(v47, &qword_1EBD3BAB0, &qword_1BE0BCFA8);
  *&v30[183] = v43;
  *&v30[199] = v44;
  *&v30[215] = v45;
  *&v30[231] = v46;
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[151] = v41;
  *&v30[167] = v42;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  v5 = *&v30[208];
  *(a2 + 209) = *&v30[192];
  *(a2 + 225) = v5;
  *(a2 + 241) = *&v30[224];
  v6 = *&v30[144];
  *(a2 + 145) = *&v30[128];
  *(a2 + 161) = v6;
  v7 = *&v30[176];
  *(a2 + 177) = *&v30[160];
  *(a2 + 193) = v7;
  v8 = *&v30[80];
  *(a2 + 81) = *&v30[64];
  *(a2 + 97) = v8;
  v9 = *&v30[112];
  *(a2 + 113) = *&v30[96];
  *(a2 + 129) = v9;
  v10 = *&v30[16];
  *(a2 + 17) = *v30;
  *(a2 + 33) = v10;
  result = *&v30[32];
  v12 = *&v30[48];
  *(a2 + 49) = *&v30[32];
  v13 = v31;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 256) = *&v30[239];
  *(a2 + 65) = v12;
  return result;
}

void sub_1BD198610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1BE0513E4();
  PKUIPixelLength();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v60[6] = v62[0];
  *&v60[22] = v62[1];
  *&v60[38] = v62[2];
  sub_1BE051CD4();
  sub_1BE04EE54();
  v5 = sub_1BE050204();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v61 = 0;
  *v32 = v4;
  *&v32[8] = 256;
  *&v32[10] = *v60;
  *&v32[26] = *&v60[16];
  *&v32[42] = *&v60[32];
  *&v32[56] = *(&v62[2] + 1);
  v34 = v26;
  v33 = v25;
  v39 = v31;
  v38 = v30;
  v37 = v29;
  v35 = v27;
  v36 = v28;
  LOBYTE(v40) = v5;
  *(&v40 + 1) = v6;
  *v41 = v8;
  *&v41[8] = v10;
  *&v41[16] = v12;
  v41[24] = 0;
  *a2 = v3;
  v14 = *v32;
  *(a2 + 24) = *&v32[16];
  *(a2 + 8) = v14;
  v15 = *&v32[32];
  v16 = *&v32[48];
  v17 = v33;
  *(a2 + 88) = v34;
  *(a2 + 72) = v17;
  *(a2 + 56) = v16;
  *(a2 + 40) = v15;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  *(a2 + 152) = v38;
  *(a2 + 136) = v20;
  *(a2 + 120) = v19;
  *(a2 + 104) = v18;
  v21 = v39;
  v22 = v40;
  v23 = *v41;
  *(a2 + 209) = *&v41[9];
  *(a2 + 200) = v23;
  *(a2 + 184) = v22;
  *(a2 + 168) = v21;
  *(a2 + 232) = v3;
  v24 = v3;
  sub_1BD0DE19C(v32, &v42, &qword_1EBD3BAB8, &qword_1BE0BCFB0);
  v42 = v4;
  v43 = 256;
  v44 = *v60;
  v45 = *&v60[16];
  *v46 = *&v60[32];
  *&v46[14] = *&v60[46];
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v47 = v25;
  v48 = v26;
  v50 = v28;
  v49 = v27;
  v54 = v5;
  v55 = v7;
  v56 = v9;
  v57 = v11;
  v58 = v13;
  v59 = 0;
  sub_1BD0DE53C(&v42, &qword_1EBD3BAB8, &qword_1BE0BCFB0);
}

void sub_1BD198918(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v12 = a2;
  v4();
  v3, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD198980@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v13 = *v2;
  v14 = v4;
  v5 = v2[3];
  v15 = v2[2];
  v16 = v5;
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA68, &qword_1BE0BCF78);
  sub_1BD197BE0(&v13, a2 + *(v6 + 44));
  v7 = swift_allocObject();
  v8 = v14;
  *(v7 + 1) = v13;
  *(v7 + 2) = v8;
  v9 = v16;
  *(v7 + 3) = v15;
  *(v7 + 4) = v9;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA70, &qword_1BE0BCF80) + 36));
  *v10 = sub_1BD1993BC;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = 0;
  return sub_1BD1993E8(&v13, &v12);
}

uint64_t PKPaymentOfferConfirmationRecordFollowUpCell.configure(withConfirmationRecord:paymentPass:presentPaymentOfferInstallmentSelection:shouldTapButtonOnAppear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA50, &unk_1BE0BCE40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - v12;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v16 = a5;
  sub_1BD198CAC();
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v17[3] = v10;
  v17[4] = sub_1BD0DE4F4(&qword_1EBD3BA60, &qword_1EBD3BA50, &unk_1BE0BCE40, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1BE04FCD4();
  (*(v11 + 8))(v13, v10);
  return MEMORY[0x1BFB3FD10](v17);
}

id sub_1BD198BE8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = [a1 transactionDetailMessageTileDynamicContent];
  sub_1BE048964();
  sub_1BE051694();
  *a6 = a1;
  *(a6 + 8) = v11;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = v15;
  *(a6 + 56) = v16;
  v12 = a1;

  return a2;
}

unint64_t sub_1BD198CAC()
{
  result = qword_1EBD3BA58;
  if (!qword_1EBD3BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA58);
  }

  return result;
}

void sub_1BD198EFC(uint64_t a1, void *a2, uint64_t a3)
{
  v13[4] = a1;
  v14 = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1BD126964;
  v13[3] = &block_descriptor_16;
  v4 = _Block_copy(v13);
  v5 = *(a3 + 16);
  sub_1BE048964();
  v5(a3, v4);
  _Block_release(v4);
  v14, v6, v7, v8, v9, v10, v11, v12;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
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

id PKPaymentOfferConfirmationRecordFollowUpCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKPaymentOfferConfirmationRecordFollowUpCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Iegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Beneficiary(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Beneficiary(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD1993BC()
{
  if (*(v0 + 56))
  {
    sub_1BD1982C4();
  }
}

unint64_t sub_1BD199474()
{
  result = qword_1EBD3BA90;
  if (!qword_1EBD3BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BA90);
  }

  return result;
}

uint64_t sub_1BD1994C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA88, &qword_1BE0BCF98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

unint64_t sub_1BD1995DC()
{
  result = qword_1EBD3BAC0;
  if (!qword_1EBD3BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BA70, &qword_1BE0BCF80);
    sub_1BD0DE4F4(&qword_1EBD3BAC8, &qword_1EBD3BAD0, &qword_1BE0BCFB8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BAC0);
  }

  return result;
}

uint64_t sub_1BD1996A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BD1996E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BD199750@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1BD1997B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = sub_1BE04FF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAD8, &qword_1BE0BD058);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAE0, &qword_1BE0BD060);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - v14;
  *v11 = sub_1BE04F7B4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAE8, &qword_1BE0BD068);
  sub_1BD199A78(a1, a2, &v11[*(v16 + 44)]);
  sub_1BE04FF54();
  v17 = sub_1BD0DE4F4(&qword_1EBD3BAF0, &qword_1EBD3BAD8, &qword_1BE0BD058, MEMORY[0x1E6981870]);
  sub_1BE050D14();
  (*(v6 + 8))(v8, v5);
  sub_1BD051BD4(v11);
  sub_1BE052434();
  v19 = v18;
  v28[2] = v9;
  v28[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1BD199A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAF8, &qword_1BE0BD070);
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB00, &qword_1BE0BD078);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB08, &qword_1BE0BD080);
  sub_1BD199D48(a2, &v17[*(v18 + 44)]);
  v19 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v20 = &v17[*(v12 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1BD19A45C(a1, a2, v10);
  v25 = v14;
  v39 = v14;
  sub_1BD0DE19C(v17, v14, &qword_1EBD3BB00, &qword_1BE0BD078);
  v26 = v5;
  v27 = *(v5 + 16);
  v28 = v7;
  v29 = v7;
  v30 = v10;
  v31 = v10;
  v32 = v40;
  v27(v29, v30, v40);
  v33 = v25;
  v34 = v41;
  sub_1BD0DE19C(v33, v41, &qword_1EBD3BB00, &qword_1BE0BD078);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB10, &qword_1BE0BD088);
  v27((v34 + *(v35 + 48)), v28, v32);
  v36 = *(v26 + 8);
  v36(v31, v32);
  sub_1BD0DE53C(v17, &qword_1EBD3BB00, &qword_1BE0BD078);
  v36(v28, v32);
  return sub_1BD0DE53C(v39, &qword_1EBD3BB00, &qword_1BE0BD078);
}

id sub_1BD199D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v177 = a1;
  v181 = a2;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18, &unk_1BE0BD1D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v180 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v174 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v174 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v182 = &v174 - v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80D8], v2, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v3 + 8))(v5, v2);
    *&v202[0] = v17;
    *(&v202[0] + 1) = v19;
    v176 = sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    LOBYTE(v16) = v23;
    v25 = v24;
    v26 = sub_1BE050324();
    v27 = sub_1BE0505F4();
    v29 = v28;
    v31 = v30;
    v174 = v32;
    v26, v28, v30, v32, v33, v34, v35, v36;
    sub_1BD0DDF10(v20, v22, (v16 & 1), v37, v38, v39, v40, v41);
    v25, v42, v43, v44, v45, v46, v47, v48;
    v49 = sub_1BE051464();
    v50 = v174;
    v175 = sub_1BE050564();
    v52 = v51;
    LOBYTE(v25) = v53;
    v55 = v54;
    v49, v51, v53, v54, v56, v57, v58, v59;
    sub_1BD0DDF10(v27, v29, (v31 & 1), v60, v61, v62, v63, v64);
    v50, v65, v66, v67, v68, v69, v70, v71;
    sub_1BE051CE4();
    sub_1BE04EE54();
    v203 = v25 & 1;
    *&v193 = v175;
    *(&v193 + 1) = v52;
    LOBYTE(v194) = v25 & 1;
    *(&v194 + 1) = v55;
    sub_1BE052434();
    v73 = v72;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
    v174 = sub_1BD19D16C();
    v175 = v74;
    sub_1BE050DE4();
    v73, v75, v76, v77, v78, v79, v80, v81;
    v202[6] = v199;
    v202[7] = v200;
    v202[8] = v201;
    v202[2] = v195;
    v202[3] = v196;
    v202[4] = v197;
    v202[5] = v198;
    v202[0] = v193;
    v202[1] = v194;
    sub_1BD0DE53C(v202, &qword_1EBD3E090, &unk_1BE0D49D0);
    KeyPath = swift_getKeyPath();
    v83 = swift_getKeyPath();
    v84 = v177;
    sub_1BE04D8B4(&v193);
    KeyPath, v85, v86, v87, v88, v89, v90, v91;
    v83, v92, v93, v94, v95, v96, v97, v98;
    v99 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v100 = [*(v84 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
    if (v100)
    {
      v101 = v100;
      v102 = sub_1BE052434();
      v104 = v103;
    }

    else
    {

      v102 = 0;
      v104 = 0xE000000000000000;
    }

    *&v193 = v102;
    *(&v193 + 1) = v104;
    v105 = sub_1BE0506C4();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = sub_1BE050324();
    v113 = sub_1BE0505F4();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v112, v114, v116, v118, v120, v121, v122, v123;
    sub_1BD0DDF10(v105, v107, (v109 & 1), v124, v125, v126, v127, v128);
    v111, v129, v130, v131, v132, v133, v134, v135;
    v136 = sub_1BE051494();
    v137 = sub_1BE050564();
    v139 = v138;
    LOBYTE(v111) = v140;
    v142 = v141;
    v136, v138, v140, v141, v143, v144, v145, v146;
    sub_1BD0DDF10(v113, v115, (v117 & 1), v147, v148, v149, v150, v151);
    v119, v152, v153, v154, v155, v156, v157, v158;
    sub_1BE051CF4();
    sub_1BE04EE54();
    v192 = v111 & 1;
    *&v183 = v137;
    *(&v183 + 1) = v139;
    LOBYTE(v184) = v111 & 1;
    *(&v184 + 1) = v142;
    sub_1BE052434();
    v160 = v159;
    v161 = v178;
    sub_1BE050DE4();
    v160, v162, v163, v164, v165, v166, v167, v168;
    v199 = v189;
    v200 = v190;
    v201 = v191;
    v195 = v185;
    v196 = v186;
    v197 = v187;
    v198 = v188;
    v193 = v183;
    v194 = v184;
    sub_1BD0DE53C(&v193, &qword_1EBD3E090, &unk_1BE0D49D0);
    v169 = v182;
    v170 = v179;
    sub_1BD0DE19C(v182, v179, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    v171 = v180;
    sub_1BD0DE19C(v161, v180, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    v172 = v181;
    sub_1BD0DE19C(v170, v181, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC20, &qword_1BE0BD1E0);
    sub_1BD0DE19C(v171, v172 + *(v173 + 48), &qword_1EBD3BC18, &unk_1BE0BD1D0);
    sub_1BD0DE53C(v161, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    sub_1BD0DE53C(v169, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    sub_1BD0DE53C(v171, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    return sub_1BD0DE53C(v170, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD19A45C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a3;
  v171 = type metadata accessor for SEStorageUsageGroup(0);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v6 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1BE04C164();
  v7 = *(v186 - 1);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1BE04BD74();
  v9 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v168 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v145 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v145 - v14;
  v15 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v185 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar(0);
  v183 = *(v17 - 8);
  v184 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v182 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v145 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18, &qword_1BE0BD090);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v154 = &v145 - v23;
  v155 = sub_1BE04D634();
  v152 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB20, &qword_1BE0BD098);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v145 - v25;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB28, &qword_1BE0BD0A0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v160 = &v145 - v26;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB30, &qword_1BE0BD0A8);
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v149 = &v145 - v27;
  v181 = type metadata accessor for SEStorageUsageCategory(0);
  v28 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v187 = (&v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  sub_1BE04D8B4(&v190);
  KeyPath, v32, v33, v34, v35, v36, v37, v38;
  v31, v39, v40, v41, v42, v43, v44, v45;
  v46 = v190;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  sub_1BE04D8B4(&v190);
  v47, v49, v50, v51, v52, v53, v54, v55;
  v48, v56, v57, v58, v59, v60, v61, v62;
  v70 = v190;
  v180 = v190[2];
  if (v180)
  {
    v145 = a1;
    v146 = a2;
    v71 = 0;
    v179 = v190 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v178 = (v7 + 48);
    v174 = *MEMORY[0x1E69B80D8];
    v173 = (v9 + 104);
    v163 = "v16@?0@UIView8";
    v172 = (v9 + 8);
    v162 = "SE_STORAGE_RECOMMENDED_TITLE";
    v161 = "T_CATEGORY_OTHER";
    v165 = (v7 + 32);
    v164 = (v7 + 8);
    v72 = MEMORY[0x1E69E7CC0];
    v177 = v28;
    v176 = v190;
    while (1)
    {
      if (v71 >= v70[2])
      {
        __break(1u);
        goto LABEL_30;
      }

      v73 = v187;
      sub_1BD19CC88(&v179[*(v28 + 72) * v71], v187, type metadata accessor for SEStorageUsageCategory);
      v74 = v73;
      v75 = v185;
      sub_1BD19CC88(v74, v185, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      v76 = (*v178)(v75, 3, v186);
      if (v76 > 1)
      {
        break;
      }

      if (v76)
      {
        v83 = v166;
        v82 = v175;
        (*v173)(v166, v174, v175);
        v86 = PKPassKitBundle();
        if (!v86)
        {
          goto LABEL_33;
        }

        v85 = v86;
LABEL_14:
        v79 = sub_1BE04B6F4();
        v81 = v88;

        (*v172)(v83, v82);
        goto LABEL_15;
      }

      v77 = v169;
      v78 = v186;
      (*v165)(v169, v185, v186);
      v79 = sub_1BD802444();
      v81 = v80;
      (*v164)(v77, v78);
LABEL_15:
      v89 = v21;
      v90 = *(v187 + *(v181 + 20));
      v91 = *(v90 + 16);
      if (v91)
      {
        v92 = *(v171 + 28);
        v93 = v90 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
        v94 = *(v170 + 72);
        v95 = 0.0;
        do
        {
          sub_1BD19CC88(v93, v6, type metadata accessor for SEStorageUsageGroup);
          v96 = *&v6[v92];
          sub_1BD19D104(v6, type metadata accessor for SEStorageUsageGroup);
          v95 = v95 + v96;
          v93 += v94;
          --v91;
        }

        while (v91);
      }

      else
      {
        v95 = 0.0;
      }

      v97 = v182;
      sub_1BE04AFD4();
      sub_1BD19D104(v187, type metadata accessor for SEStorageUsageCategory);
      v98 = v184;
      v99 = (v97 + *(v184 + 20));
      *v99 = v79;
      v99[1] = v81;
      *(v97 + *(v98 + 24)) = v95;
      v21 = v89;
      sub_1BD19CCF0(v97, v89);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1BD1D7BD4(0, v72[2] + 1, 1, v72);
      }

      v28 = v177;
      v70 = v176;
      v101 = v72[2];
      v100 = v72[3];
      if (v101 >= v100 >> 1)
      {
        v72 = sub_1BD1D7BD4((v100 > 1), v101 + 1, 1, v72);
      }

      ++v71;
      v72[2] = v101 + 1;
      sub_1BD19CCF0(v21, v72 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v101);
      if (v71 == v180)
      {
        v70, v102, v103, v104, v105, v106, v107, v108;
        a2 = v146;
        a1 = v145;
        goto LABEL_27;
      }
    }

    v82 = v175;
    if (v76 == 2)
    {
      v83 = v167;
      (*v173)(v167, v174, v175);
      v84 = PKPassKitBundle();
      if (!v84)
      {
        goto LABEL_32;
      }

      v85 = v84;
    }

    else
    {
      v83 = v168;
      (*v173)(v168, v174, v175);
      v87 = PKPassKitBundle();
      if (!v87)
      {
        goto LABEL_31;
      }

      v85 = v87;
    }

    goto LABEL_14;
  }

  v190, v63, v64, v65, v66, v67, v68, v69;
  v72 = MEMORY[0x1E69E7CC0];
LABEL_27:
  MEMORY[0x1EEE9AC00](v109);
  *(&v145 - 4) = v46;
  *(&v145 - 3) = v72;
  v143 = a1;
  v144 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB38, &qword_1BE0BD140);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB40, &qword_1BE0BD148);
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB48, &qword_1BE0BD150);
  v112 = sub_1BD0DE4F4(&qword_1EBD3BB50, &qword_1EBD3BB40, &qword_1BE0BD148, MEMORY[0x1E695B210]);
  v113 = sub_1BE04D554();
  v114 = sub_1BE04EDE4();
  v115 = sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v190 = v113;
  v191 = v114;
  v192 = MEMORY[0x1E695B140];
  v193 = v115;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v190 = v110;
  v191 = v111;
  v192 = v112;
  v193 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v117 = v157;
  sub_1BE04D694();
  v72, v118, v119, v120, v121, v122, v123, v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB60, &qword_1BE0BD158);
  v126 = sub_1BD0DE4F4(&qword_1EBD3BB68, &qword_1EBD3BB20, &qword_1BE0BD098, MEMORY[0x1E695B218]);
  v127 = sub_1BD19CD64();
  v128 = v160;
  v129 = v159;
  sub_1BE0507B4();
  (*(v158 + 8))(v117, v129);
  if (*&v46 < 0.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v188 = 0;
    v189 = v46;
    v130 = v150;
    sub_1BE04D624();
    v131 = sub_1BE04D794();
    v132 = v129;
    v133 = v154;
    (*(*(v131 - 8) + 56))(v154, 1, 1, v131);
    v134 = v128;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80, &qword_1BE0BD160);
    v190 = v132;
    v191 = v125;
    v192 = v126;
    v193 = v127;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = sub_1BD19CE20();
    v143 = MEMORY[0x1E695B1F0];
    v138 = v149;
    v139 = v148;
    v187 = &v145;
    v140 = v155;
    sub_1BE050784();
    sub_1BD0DE53C(v133, &qword_1EBD3BB18, &qword_1BE0BD090);
    (*(v152 + 8))(v130, v140);
    v141 = (*(v147 + 8))(v134, v139);
    v186 = &v145;
    MEMORY[0x1EEE9AC00](v141);
    v143 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB90, &qword_1BE0BD168);
    v190 = v139;
    v191 = v135;
    v192 = v140;
    v193 = v136;
    v194 = v137;
    v195 = MEMORY[0x1E695B1F0];
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3BB98, &qword_1EBD3BB90, &qword_1BE0BD168, MEMORY[0x1E695B2D0]);
    v142 = v153;
    sub_1BE050734();
    (*(v151 + 8))(v138, v142);
  }
}

uint64_t sub_1BD19B4C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB40, &qword_1BE0BD148);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  v18 = a4;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA8, &qword_1BE0BD178);
  sub_1BD19CEB4();
  sub_1BE04D684();
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB48, &qword_1BE0BD150);
  sub_1BD0DE4F4(&qword_1EBD3BB50, &qword_1EBD3BB40, &qword_1BE0BD148, MEMORY[0x1E695B210]);
  v12 = sub_1BE04D554();
  v13 = sub_1BE04EDE4();
  v14 = sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v22 = v12;
  v23 = v13;
  v24 = MEMORY[0x1E695B140];
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1BE04D4D4();
  return (*(v9 + 8))(v11, v8);
}

id sub_1BD19B70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>)
{
  v114 = a3;
  v112 = a2;
  v113 = a1;
  v122 = a4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBE0, &qword_1BE0BD1A0);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v109 - v6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBC8, &qword_1BE0BD188);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v109 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v125 = v10;
  v126 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8, &qword_1BE0BD198);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1BE04D554();
  v124 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBB8, &qword_1BE0BD180);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v19 = &v109 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBE8, &qword_1BE0BD1A8);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v128 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v109 - v22;
  sub_1BE04F624();
  v24 = v23;
  v26 = v25;
  v130 = 0;
  sub_1BE04D5C4();
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = v24;
  v35 = v123;
  v34, v36, v37, v38, v39, v40, v41, v42;
  sub_1BE04F624();
  v44 = v43;
  v46 = v45;
  v130 = a5;
  sub_1BE04D5C4();
  v46, v47, v48, v49, v50, v51, v52, v53;
  v44, v54, v55, v56, v57, v58, v59, v60;
  v61 = v125;
  sub_1BE04D544();
  v62 = sub_1BE051424();
  v130 = v62;
  v63 = MEMORY[0x1E695B140];
  v64 = v19;
  sub_1BE04D4B4();
  v62, v65, v66, v67, v68, v69, v70, v71;
  (*(v124 + 8))(v17, v15);
  v72 = v126;
  (*(v126 + 104))(v35, *MEMORY[0x1E69B80D8], v61);
  result = PKPassKitBundle();
  if (result)
  {
    v74 = result;
    v75 = sub_1BE04B6F4();
    v77 = v76;

    (*(v72 + 8))(v35, v61);
    v134 = v75;
    v135 = v77;
    v130 = v15;
    v131 = MEMORY[0x1E69815C0];
    v132 = v63;
    v133 = MEMORY[0x1E6981568];
    swift_getOpaqueTypeConformance2();
    v78 = sub_1BD0DDEBC();
    v79 = MEMORY[0x1E69E6158];
    v80 = v127;
    v81 = v111;
    sub_1BE04D4C4();
    v77, v82, v83, v84, v85, v86, v87, v88;
    (*(v110 + 8))(v64, v81);
    v134 = v113;
    v89 = swift_allocObject();
    v90 = v114;
    *(v89 + 16) = v112;
    *(v89 + 24) = v90;
    sub_1BE048C84();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBF0, &qword_1BE0BD1B0);
    sub_1BE04AFE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBF8, &qword_1BE0BD1B8);
    sub_1BD0DE4F4(&qword_1EBD3BC00, &qword_1EBD3BBF0, &qword_1BE0BD1B0, MEMORY[0x1E69E6338]);
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBD0, &qword_1BE0BD190);
    v130 = sub_1BE04D6C4();
    v131 = v79;
    v132 = MEMORY[0x1E695B228];
    v133 = MEMORY[0x1E695B438];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v130 = v91;
    v131 = v79;
    v132 = OpaqueTypeConformance2;
    v133 = v78;
    swift_getOpaqueTypeConformance2();
    sub_1BD19D410(&qword_1EBD3BC08, type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar, &unk_1BE0BD1F8);
    v93 = v129;
    sub_1BE0519A4();
    v94 = v115;
    v95 = *(v115 + 16);
    v96 = v128;
    v97 = v80;
    v98 = v116;
    v95(v128, v97, v116);
    v99 = v119;
    v126 = *(v119 + 16);
    v100 = v117;
    v101 = v93;
    v102 = v121;
    (v126)(v117, v101, v121);
    v103 = v118;
    v95(v118, v96, v98);
    sub_1BD19CFE4();
    v104 = v120;
    v105 = *(v120 + 48);
    (v126)(&v103[v105], v100, v102);
    v106 = v122;
    (*(v94 + 32))(v122, v103, v98);
    (*(v99 + 32))(v106 + *(v104 + 48), &v103[v105], v102);
    v107 = *(v99 + 8);
    v107(v129, v102);
    v108 = *(v94 + 8);
    v108(v127, v98);
    v107(v100, v102);
    return (v108)(v128, v98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD19C078@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v103 = a1;
  v104 = a2;
  v107 = a3;
  v4 = sub_1BE04BD74();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC10, &unk_1BE0BD1C0);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8, &qword_1BE0BD198);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v108 = COERCE_DOUBLE(sub_1BE04D6C4());
  v98 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD0, &qword_1BE0BD190);
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  sub_1BE04F624();
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar(0);
  v110 = *&a1[*(v18 + 24)];
  v19 = v110;
  sub_1BE04D5C4();
  v17, v20, v21, v22, v23, v24, v25, v26;
  v15, v27, v28, v29, v30, v31, v32, v33;
  sub_1BE04D6B4();
  sub_1BE04F624();
  v35 = v34;
  v37 = v36;
  v38 = &v103[*(v18 + 20)];
  v39 = *(v38 + 1);
  v110 = *v38;
  v40 = v110;
  v111 = v39;
  swift_bridgeObjectRetain_n();
  v41 = MEMORY[0x1E69E6158];
  v42 = v97;
  sub_1BE04D5C4();
  v39, v43, v44, v45, v46, v47, v48, v49;
  v50 = v37;
  v51 = v101;
  v50, v52, v53, v54, v55, v56, v57, v58;
  v59 = v35;
  v60 = v102;
  v59, v61, v62, v63, v64, v65, v66, v67;
  v103 = v13;
  v68 = v108;
  sub_1BE04D4A4();
  (*(v99 + 8))(v42, v100);
  (*(v98 + 8))(v10, v68);
  (*(v51 + 104))(v109, *MEMORY[0x1E69B80D8], v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1BE0B6CA0;
  *(v69 + 56) = v41;
  v70 = sub_1BD110550();
  *(v69 + 64) = v70;
  *(v69 + 32) = v40;
  *(v69 + 40) = v39;
  v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v72 = [*(v104 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v72)
  {
    v73 = v72;
    v74 = sub_1BE052434();
    v76 = v75;
  }

  else
  {

    v74 = 0;
    v76 = 0xE000000000000000;
  }

  *(v69 + 96) = v41;
  *(v69 + 104) = v70;
  *(v69 + 72) = v74;
  *(v69 + 80) = v76;
  v77 = v109;
  v78 = sub_1BE04B714();
  v80 = v79;
  v69, v79, v81, v82, v83, v84, v85, v86;
  (*(v51 + 8))(v77, v60);
  v114 = v78;
  v115 = v80;
  v110 = *&v108;
  v111 = v41;
  v112 = MEMORY[0x1E695B228];
  v113 = MEMORY[0x1E695B438];
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v87 = v106;
  v88 = v103;
  sub_1BE04D4C4();
  v80, v89, v90, v91, v92, v93, v94, v95;
  return (*(v105 + 8))(v88, v87);
}

uint64_t sub_1BD19C678@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v58 = a1;
  v57 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8, &qword_1BE0BD198);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = sub_1BE04D554();
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F624();
  v11 = v10;
  v13 = v12;
  v59 = 0.0;
  sub_1BE04D5C4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE04F624();
  v29 = v28;
  v31 = v30;
  v59 = a2;
  sub_1BE04D5C4();
  v31, v32, v33, v34, v35, v36, v37, v38;
  v29, v39, v40, v41, v42, v43, v44, v45;
  sub_1BE04D544();
  v46 = *(v57 + 20);
  v47 = *MEMORY[0x1E697F468];
  v48 = sub_1BE04F684();
  (*(*(v48 - 8) + 104))(&v4[v46], v47, v48);
  __asm { FMOV            V0.2D, #5.0 }

  *v4 = _Q0;
  sub_1BD19D410(&qword_1EBD3BB58, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v54 = v56;
  sub_1BE04D4F4();
  sub_1BD19D104(v4, MEMORY[0x1E697EAF0]);
  return (*(v7 + 8))(v9, v54);
}

double sub_1BD19C9B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v4 = sub_1BE04D614();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB60, &qword_1BE0BD158) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1BD19CA68(double a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0, &qword_1BE0BD170);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B6CA0;
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  sub_1BE04D564();
  sub_1BE04D5F4();
  sub_1BE04D494();
  return sub_1BE04D774();
}

uint64_t type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar(uint64_t a1)
{
  result = qword_1EBD3BC28;
  if (!qword_1EBD3BC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD19CC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD19CCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageCleanupSummaryHeaderView.Bar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD19CD64()
{
  result = qword_1EBD3BB70;
  if (!qword_1EBD3BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB60, &qword_1BE0BD158);
    sub_1BD19D410(&qword_1EBD3BB78, MEMORY[0x1E695B190], MEMORY[0x1E695B188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BB70);
  }

  return result;
}

unint64_t sub_1BD19CE20()
{
  result = qword_1EBD3BB88;
  if (!qword_1EBD3BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB80, &qword_1BE0BD160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BB88);
  }

  return result;
}

unint64_t sub_1BD19CEB4()
{
  result = qword_1EBD3BBB0;
  if (!qword_1EBD3BBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBA8, &qword_1BE0BD178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBB8, &qword_1BE0BD180);
    sub_1BE04D554();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD19CFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BBB0);
  }

  return result;
}

unint64_t sub_1BD19CFE4()
{
  result = qword_1EBD3BBC0;
  if (!qword_1EBD3BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBC8, &qword_1BE0BD188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BBD0, &qword_1BE0BD190);
    sub_1BE04D6C4();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BBC0);
  }

  return result;
}

uint64_t sub_1BD19D104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD19D16C()
{
  result = qword_1EBD4E8F0;
  if (!qword_1EBD4E8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E090, &unk_1BE0D49D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E8F0);
  }

  return result;
}

uint64_t sub_1BD19D218(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD19D29C()
{
  result = qword_1EBD3BC38;
  if (!qword_1EBD3BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BC40, &qword_1BE0BD1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BAD8, &qword_1BE0BD058);
    sub_1BD0DE4F4(&qword_1EBD3BAF0, &qword_1EBD3BAD8, &qword_1BE0BD058, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD19D410(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BC38);
  }

  return result;
}

uint64_t sub_1BD19D410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD19D458(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  sub_1BD0D4534((v8 + 5));
  v8[8], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

id sub_1BD19D4D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v80 - v22;
  if (a1)
  {
    v80 = v21;
    v81 = a2;
    type metadata accessor for BankConnectEntryPointFlowItem();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC9PassKitUI29BankConnectEntryPointFlowItem_manager);
      v26 = a1;
      v27 = v6;
      v28 = v7;
      v29 = v3[4];
      v3[4] = v25;
      v30 = v26;
      swift_unknownObjectRetain();
      v31 = v25;

      v7 = v28;
      v6 = v27;
      v32 = v3[4];
      if (v32)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v30 = a1;
      swift_unknownObjectRetain();
      v32 = v3[4];
      if (v32)
      {
LABEL_4:
        Class = object_getClass(v30);
        v34 = v32;
        v35 = v34;
        if (Class == _TtC9PassKitUIP33_A697725AEF8635EEA64B06DA8686449513AlertFlowItem)
        {
          sub_1BE04D0B4();
          v50 = sub_1BE04D204();
          v51 = sub_1BE052C54();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1BD026000, v50, v51, "Bank Connect error alert was dismissed, completing authorization flow.", v52, 2u);
            MEMORY[0x1BFB45F20](v52, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          (*(v7 + 8))(v23, v6);
        }

        else
        {
          if ([v34 hasErrorAlertToDisplay])
          {
            sub_1BE04D0B4();
            v36 = sub_1BE04D204();
            v37 = sub_1BE052C24();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&dword_1BD026000, v36, v37, "Going to display a Bank Connect error alert.", v38, 2u);
              MEMORY[0x1BFB45F20](v38, -1, -1);
            }

            (*(v7 + 8))(v19, v6);
            type metadata accessor for AlertFlowItem();
            v39 = swift_allocObject();
            v39[4] = 0;
            swift_unknownObjectWeakInit();
            swift_unknownObjectRelease();
            result = v39;
            v39[5] = 0xD000000000000018;
            v39[6] = 0x80000001BE11C280;
            v39[2] = v35;
            return result;
          }

          v84 = v30;
          v85 = v81;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48, &qword_1BE0BD2F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC50, &qword_1BE0BD2F8);
          if (swift_dynamicCast())
          {
            sub_1BD043990(v82, v86);
            v53 = v87;
            v54 = v88;
            __swift_project_boxed_opaque_existential_1(v86, v87);
            v55 = [v35 nextStepAfterStep_];
            if (v55)
            {
              v56 = v55;
              v57 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationStepFlowItem());
              v58 = sub_1BD1E5C80(v35, v56);
              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_0(v86, v59, v60, v61, v62, v63, v64, v65);
              return v58;
            }

            v69 = v80;
            sub_1BE04D0B4();
            v70 = sub_1BE04D204();
            v71 = sub_1BE052C34();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&dword_1BD026000, v70, v71, "The next step could not be determined, completing the authorization flow.", v72, 2u);
              MEMORY[0x1BFB45F20](v72, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*(v7 + 8))(v69, v6);
            __swift_destroy_boxed_opaque_existential_0(v86, v73, v74, v75, v76, v77, v78, v79);
          }

          else
          {
            v83 = 0;
            memset(v82, 0, sizeof(v82));
            sub_1BD19E050(v82);
            sub_1BE04D0B4();
            v66 = sub_1BE04D204();
            v67 = sub_1BE052C34();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              *v68 = 0;
              _os_log_impl(&dword_1BD026000, v66, v67, "Unrecognized flow item detected in the Bank Connect flow section.", v68, 2u);
              MEMORY[0x1BFB45F20](v68, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*(v7 + 8))(v15, v6);
          }
        }

        return 0;
      }
    }

    sub_1BE04D0B4();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      MEMORY[0x1BFB45F20](v49, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v12, v6);
    return 0;
  }

  sub_1BE04D0B4();
  v41 = sub_1BE04D204();
  v42 = sub_1BE052C24();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1BD026000, v41, v42, "Attempting to display a Bank Connect entry point flow item.", v43, 2u);
    MEMORY[0x1BFB45F20](v43, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v44 = v3[2];
  v45 = v3[3];
  v46 = objc_allocWithZone(type metadata accessor for BankConnectEntryPointFlowItem());
  sub_1BE048964();
  return sub_1BDA54B44(v44, v45);
}

uint64_t sub_1BD19DC7C()
{
  v1 = *(v0 + 56);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD19DCAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD19DCF0(void (*a1)(void), uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1BD19E0B8;
  v27 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_14;
  v11 = _Block_copy(aBlock);
  v12 = v27;
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = [v9 errorAlertWithCompletion_];
  _Block_release(v11);
  if (v20)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      (*(v21 + 24))(v20, ObjectType, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0B4();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BD026000, v23, v24, "Failed to create an error alert.", v25, 2u);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    a1(0);
  }
}

uint64_t sub_1BD19DF64()
{
  sub_1BD0D4534(v0 + 24);
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t sub_1BD19DFD0()
{
  v1 = *(v0 + 40);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD19E000(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD19E050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC58, &unk_1BE0BD300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD19E12C(uint64_t a1)
{
  result = sub_1BE04B2F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD19E1E0(uint64_t a1)
{
  sub_1BD0F5C4C(319);
  if (v1 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      sub_1BD19E27C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD19E27C(uint64_t a1)
{
  if (!qword_1EBD3BC80)
  {
    sub_1BE049B04();
    sub_1BE0493F4();
    sub_1BD1A0300(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
    v1 = sub_1BE052274();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3BC80);
    }
  }
}

uint64_t sub_1BD19E328@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v3 = sub_1BD1A0300(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  result = MEMORY[0x1BFB3FC10](v2, v3);
  *a1 = result;
  return result;
}

void sub_1BD19E3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04AF64();
  sub_1BD1A0300(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if (sub_1BE052334())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    if (sub_1BE052334() & 1) != 0 && (sub_1BE0493B4())
    {
      v6 = *(a3 + 24);
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);

      sub_1BD40B494(v7, v8);
    }
  }
}

void sub_1BD19E4C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v180 = a5;
  v183 = a4;
  v8 = sub_1BE049734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v184 = &v136 - v13;
  v182 = sub_1BE0493F4();
  v164 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v139 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v172 = &v136 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v160);
  v175 = &v136 - v17;
  v150 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v174 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC88, &qword_1BE0BD3D0);
  v140 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v136 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC90, &qword_1BE0BD3D8);
  MEMORY[0x1EEE9AC00](v179);
  v157 = &v136 - v22;
  v23 = sub_1BE04B2F4();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v177 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v171);
  v159 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v158 = &v136 - v27;
  v28 = sub_1BE04AF64();
  v167 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v154 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v161 = &v136 - v31;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v173);
  v181 = (&v136 - v32);
  v33 = sub_1BE04B2D4();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_1BE04D734();
  v162 = *(v163 - 8);
  v37 = MEMORY[0x1EEE9AC00](v163);
  v137 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = a1;
  v39 = *(v34 + 16);
  v169 = v36;
  v39(v36, v180, v33, v37);
  v156 = a1;
  sub_1BE048C84();
  v40 = v183;
  v41 = v161;
  sub_1BE04ADD4();
  v153 = sub_1BD1A0300(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE052314())
  {
    v42 = v167;
    v43 = v158;
    (*(v167 + 16))(v158, v183, v28);
    v44 = *(v171 + 48);
    v166 = *(v42 + 32);
    v166(v43 + v44, v41, v28);
    v45 = v159;
    sub_1BD1A0290(v43, v159);
    v183 = *(v171 + 48);
    v166(v181, v45, v28);
    v165 = *(v42 + 8);
    v165(v45 + v183, v28);
    sub_1BD0DE204(v43, v45, &unk_1EBD38810, &unk_1BE0B6F60);
    v46 = v181 + *(v173 + 9);
    v47 = v45 + *(v171 + 48);
    v151 = v42 + 32;
    v166(v46, v47, v28);
    v152 = v28;
    v167 = v42 + 8;
    v165(v45, v28);
    sub_1BE04B1E4();
    v48 = v137;
    sub_1BE04D724();
    v49 = v157;
    (*(v162 + 16))(v157, v48, v163);
    v50 = *(v179 + 36);
    v51 = sub_1BD1A0300(&qword_1EBD3BC98, MEMORY[0x1E695B288], MEMORY[0x1E695B290]);
    sub_1BE052AD4();
    v52 = v49;
    sub_1BE052B04();
    v53 = v50;
    v54 = *&v49[v50];
    v177 = MEMORY[0x1E69E7CC0];
    v55 = v176;
    v56 = v51;
    v57 = v163;
    v58 = v162;
    if (v54 == v187[0])
    {
LABEL_4:
      v59 = v58;
      sub_1BD0DE53C(v52, &qword_1EBD3BC90, &qword_1BE0BD3D8);
      (*(v59 + 8))(v137, v57);
      v156, v60, v61, v62, v63, v64, v65, v66;
      return;
    }

    v179 = 0;
    v148 = (v140 + 2);
    v147 = (v140 + 4);
    v168 = v9 + 16;
    v138 = (v164 + 8);
    v169 = (v9 + 8);
    v141 = (v164 + 32);
    ++v140;
    v177 = MEMORY[0x1E69E7CC0];
    v170 = v9;
    v146 = a3;
    v145 = a2;
    v144 = v11;
    v143 = v53;
    v142 = v56;
    while (1)
    {
      v67 = sub_1BE052B34();
      v68 = v155;
      (*v148)(v155);
      v67(v187, 0);
      sub_1BE052B14();
      v69 = v178;
      v70 = (*v147)(v178, v68, v55);
      MEMORY[0x1EEE9AC00](v70);
      *(&v136 - 2) = v69;
      v186 = MEMORY[0x1E69E7CC0];
      v40 = v179;
      v71 = sub_1BD1A0558(&v189, sub_1BD1A0348, (&v136 - 4), &v186);
      v179 = v40;
      v28 = v189;
      v72 = v189[2];
      if (v71 > v72)
      {
        break;
      }

      v73 = v71;
      if (v71 < 0)
      {
        goto LABEL_36;
      }

      v74 = v71;
      if (__OFADD__(v72, v71 - v72))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v74 <= v28[3] >> 1)
      {
        v76 = v28;
      }

      else
      {
        if (v72 <= v74)
        {
          v77 = v74;
        }

        else
        {
          v77 = v72;
        }

        v76 = sub_1BD1D7BFC(isUniquelyReferenced_nonNull_native, v77, 1, v28);
        v189 = v76;
      }

      sub_1BD1DD3A0(v73, v72, 0);
      v156 = v76;
      v189 = v76;
      v183 = v186;
      v78 = v161;
      sub_1BE04D514();
      v79 = v154;
      v80 = v78;
      sub_1BE04D524();
      v28 = v152;
      if ((sub_1BE052314() & 1) == 0)
      {
        goto LABEL_38;
      }

      v173 = &v136;
      v81 = v158;
      v82 = v166;
      v166(v158, v80, v28);
      v83 = v171;
      v82(v81 + *(v171 + 48), v79, v28);
      v84 = v159;
      sub_1BD1A0290(v81, v159);
      v85 = *(v83 + 48);
      v86 = v175;
      v82(v175, v84, v28);
      v87 = v165;
      v165(v84 + v85, v28);
      sub_1BD0DE204(v81, v84, &unk_1EBD38810, &unk_1BE0B6F60);
      v82(v86 + *(v160 + 36), (v84 + *(v83 + 48)), v28);
      v87(v84, v28);
      v187[0] = MEMORY[0x1BFB403C0](0);
      v187[1] = v88;
      v188 = v89;
      v90 = *(v183 + 16);
      if (v90)
      {
        v91 = v183 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
        v92 = *(v170 + 16);
        v180 = *(v170 + 72);
        v181 = v92;
        v164 = v90;
        v93 = v90;
        v94 = v184;
        v95 = v139;
        v96 = v169;
        v97 = v138;
        do
        {
          v181(v94, v91, v8);
          sub_1BE049704();
          v98 = sub_1BE0493C4();
          v100 = v99;
          v101 = v8;
          v103 = v102;
          (*v97)(v95, v182);
          v104 = v98;
          v94 = v184;
          v105 = v103;
          v8 = v101;
          MEMORY[0x1BFB40450](v187, v104, v100, v105);
          (*v96)(v94, v101);
          v91 += v180;
          --v93;
        }

        while (v93);
        v106 = v146;
        v107 = v145;
        v11 = v144;
        v90 = v164;
      }

      else
      {
        v107 = v145;
        v106 = v146;
        v11 = v144;
      }

      sub_1BE048C84();
      v108 = v172;
      sub_1BE049404();
      v109 = sub_1BD1AB8A0(MEMORY[0x1E69E7CC0]);
      v185 = v109;
      if (v90)
      {
        v117 = v90;
        v118 = 0;
        v119 = v170;
        v40 = v179;
        v28 = v169;
        v120 = v183;
        while (v118 < v120[2])
        {
          (*(v119 + 16))(v11, v120 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v118, v8);
          sub_1BD19F718(&v185, v11, v107, v106);
          if (v40)
          {
            goto LABEL_40;
          }

          ++v118;
          (*v28)(v11, v8);
          v120 = v183;
          if (v117 == v118)
          {
            v179 = 0;
            v121 = v185;
            v108 = v172;
            goto LABEL_28;
          }
        }

        __break(1u);
        break;
      }

      v121 = v109;
      v120 = v183;
LABEL_28:
      v120, v110, v111, v112, v113, v114, v115, v116;
      v122 = v174;
      sub_1BD0DE204(v175, v174, &qword_1EBD38DB8, &unk_1BE0BD340);
      v123 = v150;
      (*v141)(v122 + *(v150 + 20), v108, v182);
      *(v122 + *(v123 + 24)) = v121;
      v124 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_1BD1D7C24(0, *(v124 + 2) + 1, 1, v124);
      }

      v125 = v178;
      v52 = v157;
      v127 = *(v124 + 2);
      v126 = *(v124 + 3);
      if (v127 >= v126 >> 1)
      {
        v124 = sub_1BD1D7C24((v126 > 1), v127 + 1, 1, v124);
      }

      *(v124 + 2) = v127 + 1;
      v128 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v177 = v124;
      sub_1BD1A09C4(v174, &v124[v128 + *(v149 + 72) * v127]);
      v55 = v176;
      (*v140)(v125, v176);
      v57 = v163;
      sub_1BE052B04();
      v58 = v162;
      if (*(v52 + v143) == v187[0])
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:

  (*v28)(v11, v8);
  v185, v129, v130, v131, v132, v133, v134, v135;
  __break(1u);
}

uint64_t sub_1BD19F61C()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC88, &qword_1BE0BD3D0);
  v4 = sub_1BE04D534();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void sub_1BD19F718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = a4;
  v128 = a3;
  v144 = a1;
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v140 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = v112 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v112 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v112 - v13;
  v131 = sub_1BE0497B4();
  v15 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v145 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = v112 - v18;
  v146 = sub_1BE049B04();
  v19 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v136 = v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA8, &qword_1BE0BD3E8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v132 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v130 = v112 - v28;
  v29 = sub_1BE049714();
  v30 = 0;
  v32 = v29 + 64;
  v31 = *(v29 + 64);
  v117 = v29;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  v142 = (v19 + 16);
  v114 = v15 + 16;
  v138 = (v15 + 32);
  v139 = (v19 + 32);
  v124 = (v5 + 56);
  v113 = (v5 + 16);
  v123 = (v5 + 48);
  v122 = (v5 + 8);
  v134 = v19;
  v135 = (v5 + 32);
  v121 = (v19 + 8);
  v116 = v15;
  v120 = (v15 + 8);
  v133 = v5;
  v112[1] = v5 + 40;
  v125 = v14;
  v37 = v131;
  v119 = v29 + 64;
  v118 = v36;
  v126 = v11;
  v137 = v4;
  while (v35)
  {
    v40 = v30;
LABEL_16:
    v45 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v117;
    v48 = v134;
    v49 = v146;
    (*(v134 + 16))(v136, v117[6] + *(v134 + 72) * v46, v146);
    v50 = v116;
    v51 = v115;
    (*(v116 + 16))(v115, v47[7] + *(v116 + 72) * v46, v37);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0, &unk_1BE0BD3F0);
    v53 = *(v52 + 48);
    v54 = *(v48 + 32);
    v55 = v132;
    v54(v132, v136, v49);
    v56 = &v55[v53];
    v44 = v55;
    (*(v50 + 32))(v56, v51, v37);
    (*(*(v52 - 8) + 56))(v55, 0, 1, v52);
    v43 = v141;
    v4 = v137;
LABEL_17:
    v57 = v44;
    v58 = v130;
    sub_1BD0DE204(v57, v130, &qword_1EBD3BCA8, &qword_1BE0BD3E8);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0, &unk_1BE0BD3F0);
    if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
    {
      v117, v60, v61, v62, v63, v64, v65, v66;
      return;
    }

    v67 = *(v59 + 48);
    (*v139)(v43, v58, v146);
    (*v138)(v145, v58 + v67, v37);
    v68 = *v144;
    if (*(*v144 + 16))
    {
      v69 = sub_1BD148E9C(v43);
      v70 = v122;
      v71 = v126;
      v72 = v125;
      if (v73)
      {
        (*(v133 + 16))(v125, *(v68 + 56) + *(v133 + 72) * v69, v4);
        v74 = 0;
      }

      else
      {
        v74 = 1;
      }
    }

    else
    {
      v74 = 1;
      v70 = v122;
      v71 = v126;
      v72 = v125;
    }

    (*v124)(v72, v74, 1, v4);
    if ((*v123)(v72, 1, v4))
    {
      sub_1BD0DE53C(v72, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      v75 = MEMORY[0x1BFB403C0](0);
      v77 = v76;
      v79 = v78;
    }

    else
    {
      (*v113)(v71, v72, v4);
      sub_1BD0DE53C(v72, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      v75 = sub_1BE0493C4();
      v77 = v80;
      v79 = v81;
      (*v70)(v71, v4);
    }

    v147[0] = v75;
    v147[1] = v77;
    v148 = v79;
    sub_1BE049784();
    v82 = sub_1BE0493C4();
    v84 = v83;
    v86 = v85;
    (*v70)(v71, v4);
    MEMORY[0x1BFB40450](v147, v82, v84, v86);
    v87 = v4;
    v88 = v143;
    v89 = *v142;
    (*v142)(v143, v43, v146);
    sub_1BE048C84();
    v90 = v127;
    sub_1BE049404();
    v91 = *v135;
    (*v135)(v140, v90, v87);
    v92 = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = *v92;
    v94 = v149;
    v96 = sub_1BD148E9C(v88);
    v97 = v94[2];
    v98 = (v95 & 1) == 0;
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      goto LABEL_40;
    }

    v100 = v95;
    if (v94[3] >= v99)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v103 = v149;
        if (v95)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1BD5066F0();
        v103 = v149;
        if (v100)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1BD500BC4(v99, isUniquelyReferenced_nonNull_native);
      v101 = sub_1BD148E9C(v143);
      if ((v100 & 1) != (v102 & 1))
      {
        goto LABEL_42;
      }

      v96 = v101;
      v103 = v149;
      if (v100)
      {
LABEL_4:
        v4 = v137;
        (*(v133 + 40))(v103[7] + *(v133 + 72) * v96, v140, v137);
        v38 = *v121;
        v39 = v146;
        (*v121)(v143, v146);
        v37 = v131;
        (*v120)(v145, v131);
        v38(v141, v39);
        goto LABEL_5;
      }
    }

    v103[(v96 >> 6) + 8] |= 1 << v96;
    v104 = v134;
    v105 = v143;
    v106 = v146;
    v89(v103[6] + *(v134 + 72) * v96, v143, v146);
    v4 = v137;
    v91((v103[7] + *(v133 + 72) * v96), v140, v137);
    v107 = *(v104 + 8);
    v107(v105, v106);
    v37 = v131;
    (*v120)(v145, v131);
    v107(v141, v106);
    v108 = v103[2];
    v109 = __OFADD__(v108, 1);
    v110 = v108 + 1;
    if (v109)
    {
      goto LABEL_41;
    }

    v103[2] = v110;
LABEL_5:
    *v144 = v103;
    v32 = v119;
    v36 = v118;
  }

  if (v36 <= v30 + 1)
  {
    v41 = v30 + 1;
  }

  else
  {
    v41 = v36;
  }

  v42 = v41 - 1;
  v43 = v141;
  v44 = v132;
  while (1)
  {
    v40 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB0, &unk_1BE0BD3F0);
      (*(*(v111 - 8) + 56))(v44, 1, 1, v111);
      v35 = 0;
      v30 = v42;
      goto LABEL_17;
    }

    v35 = *(v32 + 8 * v40);
    ++v30;
    if (v35)
    {
      v30 = v40;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_1BE053C14();
  __break(1u);
}

uint64_t sub_1BD1A0290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A0300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD1A0350(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3, uint64_t *a4)
{
  v28 = sub_1BE049734();
  v8 = *(v28 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v26 = a4;
  v27 = v4;
  v13 = 0;
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v25;
  v15 = *(v8 + 72);
  while ((a2(v14, v9) & 1) == 0)
  {
    ++v13;
    v14 += v15;
    if (v12 == v13)
    {
      return 0;
    }
  }

  v16 = v14;
  v17 = v28;
  (*(v8 + 16))(v11, v16, v28);
  v18 = v26;
  v19 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1BD1D7BFC(0, *(v19 + 2) + 1, 1, v19);
    *v26 = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1BD1D7BFC((v21 > 1), v22 + 1, 1, v19);
    *v26 = v19;
  }

  *(v19 + 2) = v22 + 1;
  (*(v8 + 32))(&v19[v25 + v22 * v15], v11, v17);
  return v13;
}

uint64_t sub_1BD1A0558(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BE049734();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v51 = a1;
  v20 = *a1;
  v59 = a2;
  v21 = a2;
  v22 = a4;
  v23 = v64;
  result = sub_1BD1A0350(v20, v21, a3, a4);
  if (!v23)
  {
    v62 = v19;
    v57 = v16;
    v46 = 0;
    if (v25)
    {
      return *(v20 + 16);
    }

    v49 = v13;
    v61 = result;
    v26 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v27 = v20;
      v29 = (v20 + 16);
      v28 = *(v20 + 16);
      v50 = v22;
      if (v26 == v28)
      {
        return v61;
      }

      v55 = v8;
      v56 = (v9 + 8);
      v47 = (v9 + 40);
      v48 = (v9 + 32);
      v58 = v9 + 16;
      v53 = v9;
      v54 = a3;
      while (v26 < v28)
      {
        v30 = *(v9 + 80);
        v64 = v27;
        v63 = (v30 + 32) & ~v30;
        v31 = v27 + v63;
        v32 = *(v9 + 72);
        v33 = *(v9 + 16);
        v60 = v32 * v26;
        v34 = v27 + v63 + v32 * v26;
        v35 = v62;
        v33(v62, v34, v8);
        if (v59(v35))
        {
          v33(v57, v35, v8);
          v36 = v50;
          v37 = *v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v36 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = sub_1BD1D7BFC(0, *(v37 + 2) + 1, 1, v37);
            *v50 = v37;
          }

          v9 = v53;
          v27 = v64;
          v40 = *(v37 + 2);
          v39 = *(v37 + 3);
          if (v40 >= v39 >> 1)
          {
            v37 = sub_1BD1D7BFC((v39 > 1), v40 + 1, 1, v37);
            *v50 = v37;
          }

          *(v37 + 2) = v40 + 1;
          v8 = v55;
          (*v48)(&v37[v63 + v40 * v32], v57, v55);
          result = (*v56)(v62, v8);
        }

        else
        {
          result = (*v56)(v35, v8);
          v41 = v61;
          if (v26 == v61)
          {
            v8 = v55;
            v9 = v53;
            v27 = v64;
          }

          else
          {
            if ((v61 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v42 = *v29;
            if (v61 >= *v29)
            {
              goto LABEL_29;
            }

            v43 = v32 * v61;
            v8 = v55;
            result = (v33)(v49, &v31[v32 * v61], v55);
            if (v26 >= v42)
            {
              goto LABEL_30;
            }

            v33(v52, &v31[v60], v8);
            v27 = v64;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1BD4FFF18(v27);
            }

            v9 = v53;
            v44 = v27 + v63;
            v45 = *v47;
            result = (*v47)(v27 + v63 + v43, v52, v8);
            if (v26 >= v27[2])
            {
              goto LABEL_31;
            }

            result = v45(&v44[v60], v49, v8);
            *v51 = v27;
            v41 = v61;
          }

          v61 = v41 + 1;
        }

        ++v26;
        v29 = v27 + 2;
        v28 = v27[2];
        if (v26 == v28)
        {
          return v61;
        }
      }

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

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1A09C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A0A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD1A0AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD1A0AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BD1A0BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_1BE051C54();
  v20 = 18.0;
  if (v19)
  {
    v20 = 10.0;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = 0x4032000000000000;
  *(a9 + 80) = v20;
  result = 68.0;
  *(a9 + 88) = xmmword_1BE0B7110;
  return result;
}

uint64_t sub_1BD1A0C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v119 = a2;
  v118 = sub_1BE04FF64();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BE04F6E4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051774();
  WitnessTable = swift_getWitnessTable();
  v135 = v4;
  v136 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v6 = sub_1BE04EBD4();
  v135 = v4;
  v136 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v142 = MEMORY[0x1E697E5D8];
  v120 = MEMORY[0x1E697E858];
  v7 = swift_getWitnessTable();
  v8 = MEMORY[0x1E6981CD8];
  v135 = v4;
  v136 = MEMORY[0x1E6981CD8];
  v137 = v6;
  v138 = WitnessTable;
  v9 = MEMORY[0x1E6981CD0];
  v139 = MEMORY[0x1E6981CD0];
  v140 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v107 = &v77 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0, &qword_1BE0B89C0);
  v11 = sub_1BE04EBD4();
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v77 - v12;
  v135 = v4;
  v136 = v8;
  v137 = v6;
  v138 = WitnessTable;
  v139 = v9;
  v140 = v7;
  v13 = swift_getOpaqueTypeConformance2();
  v98 = v13;
  v14 = sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
  v133 = v13;
  v134 = v14;
  v15 = swift_getWitnessTable();
  v135 = v11;
  v136 = v15;
  v81 = v11;
  v16 = v15;
  v82 = v15;
  v94 = swift_getOpaqueTypeMetadata2();
  v102 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v77 - v17;
  sub_1BE0500D4();
  v18 = sub_1BE04EBD4();
  v101 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v77 - v19;
  v135 = v11;
  v136 = v16;
  v20 = swift_getOpaqueTypeConformance2();
  v80 = v20;
  v111 = sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v131 = v20;
  v132 = v111;
  v84 = swift_getWitnessTable();
  v135 = v18;
  v136 = v84;
  v91 = MEMORY[0x1E697D248];
  v86 = swift_getOpaqueTypeMetadata2();
  v93 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v78 = &v77 - v21;
  v22 = sub_1BE04EBD4();
  v96 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v77 - v23;
  v88 = sub_1BE04EBD4();
  v97 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v77 - v24;
  v92 = sub_1BE04EBD4();
  v103 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v77 - v25;
  v99 = sub_1BE04EBD4();
  v105 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v89 = &v77 - v26;
  v27 = sub_1BE04EBD4();
  v106 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v77 - v30;
  v31 = v107;
  sub_1BD1A1B64(v112);
  v32 = sub_1BE051224();
  v33 = v104;
  v34 = OpaqueTypeMetadata2;
  sub_1BE050B44();
  v32, v35, v36, v37, v38, v39, v40, v41;
  (*(v110 + 8))(v31, v34);
  v42 = v90;
  v43 = v81;
  sub_1BE050EA4();
  (*(v109 + 8))(v33, v43);
  v44 = v113;
  sub_1BE04F6D4();
  v45 = v87;
  v46 = v94;
  sub_1BE050DA4();
  (*(v114 + 8))(v44, v115);
  (*(v102 + 8))(v42, v46);
  v47 = v116;
  sub_1BE04FF54();
  v48 = v78;
  v49 = v84;
  sub_1BE050D14();
  (*(v117 + 8))(v47, v118);
  (*(v101 + 8))(v45, v18);
  sub_1BE0501C4();
  sub_1BE04C7D4();
  v135 = v18;
  v136 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v79;
  v52 = v86;
  sub_1BE051014();
  (*(v93 + 8))(v48, v52);
  sub_1BE0501E4();
  v129 = v50;
  v53 = MEMORY[0x1E697E5D8];
  v130 = MEMORY[0x1E697E5D8];
  v54 = swift_getWitnessTable();
  v55 = v83;
  sub_1BE051014();
  (*(v96 + 8))(v51, v22);
  sub_1BE0501F4();
  v127 = v54;
  v128 = v53;
  v56 = v88;
  v57 = swift_getWitnessTable();
  v58 = v85;
  sub_1BE051014();
  (*(v97 + 8))(v55, v56);
  sub_1BE051CD4();
  v125 = v57;
  v126 = v53;
  v75 = v92;
  v76 = swift_getWitnessTable();
  v59 = v89;
  sub_1BE050F54();
  (*(v103 + 8))(v58, v75);
  sub_1BE052434();
  v61 = v60;
  v123 = v76;
  v124 = MEMORY[0x1E697EBF8];
  v62 = v99;
  v63 = swift_getWitnessTable();
  v64 = v95;
  sub_1BE050DE4();
  v61, v65, v66, v67, v68, v69, v70, v71;
  (*(v105 + 8))(v59, v62);
  v121 = v63;
  v122 = v111;
  swift_getWitnessTable();
  v72 = v100;
  sub_1BD147308();
  v73 = *(v106 + 8);
  v73(v64, v27);
  sub_1BD147308();
  return (v73)(v72, v27);
}

uint64_t sub_1BD1A1B64(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  v8 = *(a1 + 24);
  v14 = v3;
  v15 = v8;
  v16 = v1;
  sub_1BE04F504();
  sub_1BE051764();
  sub_1BE051C64();
  v12 = v3;
  v13 = v8;
  WitnessTable = swift_getWitnessTable();
  v19 = v4;
  v20 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  v19 = v4;
  v20 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BE0510C4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD1A1E20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  v9 = sub_1BE04F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v17 = type metadata accessor for PaymentSheetHeader(0, a1, a2, v16);
  sub_1BD1A2190(v17, v12);
  v33[5] = a2;
  v33[6] = MEMORY[0x1E6981138];
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
  v33[3] = WitnessTable;
  v33[4] = v19;
  v20 = swift_getWitnessTable();
  sub_1BD147308();
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_1BD1A2D44();
  (*(v10 + 16))(v12, v15, v9);
  v31 = 0;
  v32 = 1;
  v33[0] = v12;
  v33[1] = &v31;
  v22 = v24;
  sub_1BD1A3494(v8, v24);
  v33[2] = v22;
  v30[0] = v9;
  v30[1] = MEMORY[0x1E6981840];
  v30[2] = v25;
  v27 = v20;
  v28 = MEMORY[0x1E6981838];
  v29 = sub_1BD1A3504(&qword_1EBD3BCD0, &qword_1EBD3BCC0, &qword_1BE0BD508, sub_1BD1A35B8);
  sub_1BD13A4C4(v33, 3uLL, v30);
  sub_1BD0DE53C(v8, &qword_1EBD3BCC0, &qword_1BE0BD508);
  v21(v15, v9);
  sub_1BD0DE53C(v22, &qword_1EBD3BCC0, &qword_1BE0BD508);
  return (v21)(v12, v9);
}

id sub_1BD1A2190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v4 = sub_1BE04F6E4();
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v171 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v175 = *(v6 - 8);
  v176 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v174 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCE0, &qword_1BE0BD590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v178 = &v166 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  MEMORY[0x1EEE9AC00](v10);
  v169 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v166 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v166 - v15;
  v181 = a1;
  v17 = *(a1 + 16);
  v18 = sub_1BE04F9B4();
  v180 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v166 - v19;
  v20 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v166 - v25;
  v182 = v10;
  v27 = sub_1BE04F9B4();
  v183 = *(v27 - 8);
  v184 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v166 - v28;
  v30 = v2[7];
  if (v30)
  {
    v178 = v2[8];
    v31 = MEMORY[0x1E6981138];
    v32 = sub_1BE048964();
    v30(v32);
    v33 = *(v181 + 24);
    v177 = v26;
    sub_1BD147308();
    v181 = *(v20 + 8);
    (v181)(v23, v17);
    sub_1BD147308();
    v34 = v179;
    sub_1BD13A700(v23, v17);
    v186 = v33;
    v187 = v31;
    swift_getWitnessTable();
    sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
    sub_1BD13A700(v34, v18);
    sub_1BD0D4744(v30, v178, v35, v36, v37, v38, v39, v40);
    v180[1](v34, v18);
    v41 = v181;
    (v181)(v23, v17);
    v41(v177, v17);
    v42 = MEMORY[0x1E6981138];
LABEL_10:
    v192 = v33;
    v193 = v42;
    WitnessTable = swift_getWitnessTable();
    v164 = sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
    v190 = WitnessTable;
    v191 = v164;
    v165 = v184;
    swift_getWitnessTable();
    sub_1BD147308();
    return (*(v183 + 8))(v29, v165);
  }

  v43 = v178;
  v166 = v17;
  v167 = v16;
  v168 = &v166 - v28;
  v177 = v18;
  v44 = v2[1];
  if (v44)
  {
    v45 = *v2;
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = *v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      *&v198 = *v2;
      *(&v198 + 1) = v44;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v47 = sub_1BE0506C4();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      *&v198 = v45;
      *(&v198 + 1) = v44;
      v54 = sub_1BE050594();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      sub_1BD0DDF10(v47, v49, (v51 & 1), v59, v61, v62, v63, v64);
      v53, v65, v66, v67, v68, v69, v70, v71;
      *&v198 = v54;
      *(&v198 + 1) = v56;
      v178 = v56;
      v72 = (v58 & 1);
      LOBYTE(v199) = v58 & 1;
      *(&v199 + 1) = v60;
      sub_1BD0D7F18(v54, v56, v58 & 1);
      v73 = *(v181 + 24);
      sub_1BE048C84();
      v74 = v179;
      v42 = MEMORY[0x1E6981138];
      sub_1BD13A7F8(&v198, v166, MEMORY[0x1E6981148]);
      v188 = v73;
      v189 = v42;
      v75 = v177;
      swift_getWitnessTable();
      sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
      v29 = v168;
      sub_1BD13A700(v74, v75);
      v76 = v178;
      sub_1BD0DDF10(v54, v178, v72, v77, v78, v79, v80, v81);
      v60, v82, v83, v84, v85, v86, v87, v88;
      sub_1BD0DDF10(v54, v76, v72, v89, v90, v91, v92, v93);
      v60, v94, v95, v96, v97, v98, v99, v100;
      v101 = v74;
      v33 = v73;
      v180[1](v101, v75);
      goto LABEL_10;
    }
  }

  v102 = PKPassKitUIBundle();
  sub_1BE048C84();
  v180 = v102;
  v103 = sub_1BE0515F4();
  v104 = *MEMORY[0x1E6981698];
  v105 = sub_1BE0515C4();
  v106 = *(v105 - 8);
  (*(v106 + 104))(v43, v104, v105);
  (*(v106 + 56))(v43, 0, 1, v105);
  v107 = sub_1BE051594();
  v103, v108, v109, v110, v111, v112, v113, v114;
  sub_1BD0DE53C(v43, &qword_1EBD3BCE0, &qword_1BE0BD590);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v115 = v205;
  LOBYTE(v103) = v206;
  v116 = v207;
  LOBYTE(v105) = v208;
  v117 = v209;
  v118 = v210;
  v119 = sub_1BE051204();
  KeyPath = swift_getKeyPath();
  v204 = v103;
  v203 = v105;
  *&v198 = v107;
  *(&v198 + 1) = v115;
  LOBYTE(v199) = v103;
  *(&v199 + 1) = v116;
  LOBYTE(v200) = v105;
  *(&v200 + 1) = v117;
  *&v201 = v118;
  *(&v201 + 1) = KeyPath;
  v202 = v119;
  v122 = v174;
  v121 = v175;
  v123 = v176;
  (*(v175 + 104))(v174, *MEMORY[0x1E69B8068], v176);
  result = PKPassKitBundle();
  if (result)
  {
    v125 = result;
    v126 = sub_1BE04B6F4();
    v128 = v127;

    (*(v121 + 8))(v122, v123);
    *&v196[0] = v126;
    *(&v196[0] + 1) = v128;
    sub_1BD0DDEBC();
    v129 = sub_1BE0506C4();
    v131 = v130;
    v133 = v132;
    v135 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC8, &qword_1BE10FA60);
    sub_1BD1A3358();
    v136 = v169;
    sub_1BE050C24();
    sub_1BD0DDF10(v129, v131, (v133 & 1), v137, v138, v139, v140, v141);
    v135, v142, v143, v144, v145, v146, v147, v148;
    v196[2] = v200;
    v196[3] = v201;
    v197 = v202;
    v196[0] = v198;
    v196[1] = v199;
    sub_1BD0DE53C(v196, &qword_1EBD3BCC8, &qword_1BE10FA60);
    v149 = v171;
    sub_1BE04F6C4();
    v150 = v170;
    v151 = v182;
    sub_1BE04EBC4();
    (*(v172 + 8))(v149, v173);
    sub_1BD0DE53C(v136, &qword_1EBD3BCB8, &qword_1BE0BD500);
    sub_1BE052434();
    v153 = v152;
    v154 = v167;
    sub_1BE04EBB4();
    v153, v155, v156, v157, v158, v159, v160, v161;
    sub_1BD0DE53C(v150, &qword_1EBD3BCB8, &qword_1BE0BD500);
    v33 = *(v181 + 24);
    v194 = v33;
    v42 = MEMORY[0x1E6981138];
    v195 = MEMORY[0x1E6981138];
    v162 = v177;
    swift_getWitnessTable();
    sub_1BD1A3504(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
    v29 = v168;
    sub_1BD13A7F8(v154, v162, v151);

    sub_1BD0DE53C(v154, &qword_1EBD3BCB8, &qword_1BE0BD500);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1A2D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCD8, &unk_1BE0BD518);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v19 - v2);
  v4 = *(v0 + 40);
  *v3 = *(v0 + 32);
  v3[1] = v4;
  v5 = *(type metadata accessor for CloseButton(0) + 20);
  *(v3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v5) = *(v0 + 48);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = (v3 + *(v1 + 36));
  *v8 = KeyPath;
  v8[1] = sub_1BD10DF54;
  v8[2] = v7;
  sub_1BE052434();
  v10 = v9;
  sub_1BD1A35B8();
  sub_1BE048964();
  sub_1BE050DE4();
  v10, v11, v12, v13, v14, v15, v16, v17;
  return sub_1BD0DE53C(v3, &qword_1EBD3BCD8, &unk_1BE0BD518);
}

uint64_t sub_1BD1A2ED4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v3 = sub_1BE04EB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051774();
  WitnessTable = swift_getWitnessTable();
  v30 = v7;
  v31 = WitnessTable;
  v23[1] = MEMORY[0x1E69812B8];
  v23[0] = swift_getOpaqueTypeMetadata2();
  v24 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v10 = v23 - v9;
  v11 = sub_1BE04EBD4();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  (*(v4 + 104))(v6, *MEMORY[0x1E697E6E8], v3, v15);
  v18 = swift_checkMetadataState();
  sub_1BE050B24();
  (*(v4 + 8))(v6, v3);
  sub_1BE050204();
  v30 = v18;
  v31 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v23[0];
  sub_1BE051014();
  (*(v24 + 8))(v10, v20);
  v28 = OpaqueTypeConformance2;
  v29 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308();
  v21 = *(v25 + 8);
  v21(v13, v11);
  sub_1BD147308();
  return (v21)(v17, v11);
}

unint64_t sub_1BD1A3358()
{
  result = qword_1EBD367D8;
  if (!qword_1EBD367D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC8, &qword_1BE10FA60);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367D8);
  }

  return result;
}

unint64_t sub_1BD1A3410()
{
  result = qword_1EBD36808;
  if (!qword_1EBD36808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3FC40, &qword_1BE0BD510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36808);
  }

  return result;
}

uint64_t sub_1BD1A3494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1A3504(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD1A35B8()
{
  result = qword_1EBD36870;
  if (!qword_1EBD36870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCD8, &unk_1BE0BD518);
    sub_1BD1A36A0(&qword_1EBD365D8, type metadata accessor for CloseButton, &unk_1BE0C4F0C);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36870);
  }

  return result;
}

uint64_t sub_1BD1A36A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD1A36E8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = [objc_allocWithZone(PKDashboardMessagesView) init];
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD28, &qword_1BE0BD838);
  MEMORY[0x1BFB3E970](v36, v8);
  v9 = v36[0];
  v17 = sub_1BD3F0560(v36[0], v10, v11, v12, v13, v14, v15, v16);
  v9, v18, v19, v20, v21, v22, v23, v24;
  v25 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v26 = sub_1BE052724();
  v17, v27, v28, v29, v30, v31, v32, v33;
  v34 = [v25 initWithArray_];

  [v7 updateWithMessages:v34 currentIndex:0];
  return v7;
}

void sub_1BD1A37F4(void *a1)
{
  v30[1] = *v1;
  v31 = *(v1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD28, &qword_1BE0BD838);
  MEMORY[0x1BFB3E970](v30, v3);
  v4 = v30[0];
  v12 = sub_1BD3F0560(v30[0], v5, v6, v7, v8, v9, v10, v11);
  v4, v13, v14, v15, v16, v17, v18, v19;
  v20 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v21 = sub_1BE052724();
  v12, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v20 initWithArray_];

  [a1 updateWithMessages:v29 currentIndex:0];
}

double sub_1BD1A38D4(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      *&a3 = INFINITY;
    }

    [a5 sizeThatFits_];
  }

  return result;
}

uint64_t sub_1BD1A3938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1A46B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD1A399C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1A46B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD1A3A00(uint64_t a1)
{
  sub_1BD1A46B8();
  sub_1BE04F964();
  __break(1u);
}

__n128 sub_1BD1A3A28@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD00, &unk_1BE0BD700);
  sub_1BE0516C4();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double static DashboardMessageView_Previews.previews.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE051CD4();
  v5 = v4;
  sub_1BD1A3AF0(&v10);
  v6 = v11;
  result = v12;
  v8 = v13;
  v9 = v10;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  *(a2 + 48) = v8;
  return result;
}

double sub_1BD1A3AF0@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE0513C4();
  sub_1BD1A3E7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10, &qword_1BE10AF20);
  sub_1BE051694();
  sub_1BE051694();
  result = v4;
  *a1 = v2;
  *(a1 + 1) = v4;
  a1[2] = v5;
  *(a1 + 3) = v4;
  a1[4] = v5;
  return result;
}

unint64_t sub_1BD1A3B8C()
{
  result = qword_1EBD3BCE8;
  if (!qword_1EBD3BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BCE8);
  }

  return result;
}

double sub_1BD1A3BFC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE051CD4();
  v5 = v4;
  sub_1BD1A3AF0(&v10);
  v6 = v11;
  result = v12;
  v8 = v13;
  v9 = v10;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1BD1A3C68(uint64_t a1)
{
  v2 = sub_1BD1A3E28();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1BD1A3CB4(uint64_t a1)
{
  v2 = sub_1BD1A3E28();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

unint64_t sub_1BD1A3D10()
{
  result = qword_1EBD3BCF0;
  if (!qword_1EBD3BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCF8, &qword_1BE0BD670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BCF0);
  }

  return result;
}

uint64_t sub_1BD1A3D74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BD1A3DBC(uint64_t result, int a2, int a3)
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

unint64_t sub_1BD1A3E28()
{
  result = qword_1EBD3BD08;
  if (!qword_1EBD3BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD08);
  }

  return result;
}

void sub_1BD1A3E7C()
{
  v85 = sub_1BE04AA64();
  v0 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v82 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  v97 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = (v12 + 8);
  v13 = (v3 + 104);
  v102 = MEMORY[0x1E69E7CC0];
  v92 = "BankConnectAlertFlowItem";
  v94 = *MEMORY[0x1E69B80E0];
  v88 = "CTED_GENERIC_MESSAGE";
  v89 = "DASHBOARD_RESTRICTED_TITLE";
  v83 = (v0 + 8);
  v86 = v101;
  v14 = 2;
  v90 = v5;
  v91 = (v3 + 8);
  v87 = v10;
  while (1)
  {
    v98 = v14;
    v15 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v16 = v96;
    sub_1BE04AFD4();
    sub_1BE04AF74();
    v18 = v17;
    (*v95)(v16, v97);
    v19 = sub_1BE052404();
    v18, v20, v21, v22, v23, v24, v25, v26;
    v99 = v15;
    [v15 setIdentifier_];

    v27 = *v13;
    v28 = v94;
    (*v13)(v10, v94, v2);
    v29 = PKPassKitBundle();
    if (!v29)
    {
      break;
    }

    v30 = v29;
    sub_1BE04B6F4();
    v32 = v31;

    v33 = v10;
    v34 = *v91;
    (*v91)(v33, v2);
    v35 = sub_1BE052404();
    v32, v36, v37, v38, v39, v40, v41, v42;
    [v99 setTitle_];

    v43 = v93;
    v27(v93, v28, v2);
    v44 = PKPassKitBundle();
    if (!v44)
    {
      goto LABEL_18;
    }

    v45 = v44;
    sub_1BE04B6F4();
    v47 = v46;

    v34(v43, v2);
    v48 = sub_1BE052404();
    v47, v49, v50, v51, v52, v53, v54, v55;
    [v99 setMessage_];

    v56 = v90;
    v27(v90, v28, v2);
    v57 = PKPassKitBundle();
    if (!v57)
    {
      goto LABEL_15;
    }

    v58 = v57;
    sub_1BE04B6F4();
    v60 = v59;

    v34(v56, v2);
    v61 = sub_1BE052404();
    v60, v62, v63, v64, v65, v66, v67, v68;
    v69 = v99;
    [v99 setButtonTitle_];

    v70 = PKPassKitUIBundle();
    if (!v70)
    {
      goto LABEL_16;
    }

    v71 = v70;
    v72 = sub_1BE052404();
    v73 = sub_1BE052404();
    v74 = [v71 URLForResource:v72 withExtension:v73];

    v10 = v87;
    if (v74)
    {
      v75 = v84;
      sub_1BE04A9F4();

      v76 = sub_1BE04A9C4();
      (*v83)(v75, v85);
    }

    else
    {
      v76 = 0;
    }

    v77 = PKUIScreenScale();
    v78 = PKUIImageFromPDF(v76, 45.0, 45.0, v77);

    if (!v78)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      break;
    }

    [v69 setImage_];

    [v69 setShowDisclosure_];
    v101[2] = PKEdgeInsetsMake;
    v101[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v101[0] = sub_1BD198918;
    v101[1] = &block_descriptor_15;
    v79 = _Block_copy(aBlock);
    [v69 setActionOnButtonPress_];
    _Block_release(v79);
    v80 = v69;
    MEMORY[0x1BFB3F7A0]();
    v81 = v98;
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v14 = v81 - 1;
    if (!v14)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1BD1A45BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BD1A4604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1A4654()
{
  result = qword_1EBD3BD18;
  if (!qword_1EBD3BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD18);
  }

  return result;
}

unint64_t sub_1BD1A46B8()
{
  result = qword_1EBD3BD20;
  if (!qword_1EBD3BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3BD20);
  }

  return result;
}

NSObject *AccountSavingsViewController.init(withConfiguration:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD30, &unk_1BE0BD840);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v108 - v8;
  v9 = type metadata accessor for SavingsView(0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v108 - v15;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 account];
  if (!v21)
  {
    sub_1BE04D1E4();
    v104 = sub_1BE04D204();
    v105 = sub_1BE052C34();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1BD026000, v104, v105, "Could not create account view because there is no account", v106, 2u);
      MEMORY[0x1BFB45F20](v106, -1, -1);
      v107 = a1;
    }

    else
    {
      v107 = v104;
      v104 = a1;
    }

    (*(v17 + 8))(v20, v16);
    type metadata accessor for AccountSavingsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v21;
  v115 = v4;
  v116 = v2;
  v112 = v6;
  *&v2[OBJC_IVAR____PKAccountSavingsViewController_configuration] = a1;
  v23 = a1;
  v24 = v22;
  v25 = [v23 cashbackPass];
  v26 = objc_allocWithZone(type metadata accessor for TransactionList(0));
  sub_1BD56A4DC(v24, v25);
  v28 = v27;

  v29 = objc_allocWithZone(type metadata accessor for AccountBalanceHistory(0));
  v30 = v24;
  sub_1BD0DEFEC(v30);
  v32 = v31;
  v33 = objc_allocWithZone(type metadata accessor for AccountDailyCash(0));
  v34 = v30;
  sub_1BD5997BC(v34);
  v36 = v35;
  v37 = v34;
  v38 = [v23 isNewAccount];
  v39 = objc_allocWithZone(type metadata accessor for AccountModel(0));
  v113 = v37;
  v40 = sub_1BD1DF0D8(v37, v38);
  v41 = [v23 destination];
  v42 = 0;
  v109 = v41 & 0xFFFFFFFFFFFFFFFELL;
  if ((v41 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v42 = [v23 destination];
  }

  v110 = v42;
  v114 = v23;
  v124 = 0;
  v43 = v40;
  v121 = v28;
  v120 = v32;
  v44 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD40, &qword_1BE0F6A10);
  sub_1BE051694();
  *(v13 + 3) = v123;
  v45 = v9[9];
  *&v13[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48, &qword_1BE0BD880);
  swift_storeEnumTagMultiPayload();
  v46 = &v13[v9[10]];
  v47 = type metadata accessor for ObservableHostingController();
  sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
  v108 = v47;
  *v46 = sub_1BE04EEC4();
  v46[1] = v48;
  v49 = &v13[v9[14]];
  *v49 = sub_1BD4726B0;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = v9[16];
  *&v13[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v51 = &v13[v9[17]];
  type metadata accessor for FCCStepUpModel(0);
  *v51 = 0;
  *(v51 + 1) = 0;
  swift_allocObject();
  v52 = sub_1BD9D07E8();
  v53 = &v13[v9[15]];
  *v53 = sub_1BD1AEEEC;
  *(v53 + 1) = v52;
  v53[16] = 0;
  sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v54 = v43;
  sub_1BE048964();
  *v13 = sub_1BE04E954();
  *(v13 + 1) = v55;
  objc_allocWithZone(type metadata accessor for SavingsDashboardMessageSource(0));
  v56 = v54;
  sub_1BE048964();
  sub_1BD9C18D0(v56, v52);
  sub_1BD1B6BA4(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource, &unk_1BE10AFF0);
  *(v13 + 2) = sub_1BE04E954();
  *(v13 + 3) = v57;
  type metadata accessor for AccountScheduleTransferModel();
  v58 = swift_allocObject();
  v59 = objc_opt_self();
  v60 = v56;
  v61 = [v59 sharedService];
  v58[5] = 0;
  v58[6] = 0;
  v58[4] = v61;
  swift_beginAccess();
  v62 = v60;
  v58[2] = sub_1BE04E954();
  v58[3] = v63;
  swift_endAccess();

  *(v13 + 4) = v58;
  v64 = v120;
  *&v13[v9[11]] = v121;
  *&v13[v9[12]] = v64;
  v65 = v9[13];
  v111 = v44;
  *&v13[v65] = v44;
  KeyPath = swift_getKeyPath();
  v67 = swift_getKeyPath();
  sub_1BE04D8B4(&v123);
  KeyPath, v68, v69, v70, v71, v72, v73, v74;
  v67, v75, v76, v77, v78, v79, v80, v81;
  result = [v59 sharedService];
  if (result)
  {
    v83 = v109 != 2;
    v84 = objc_allocWithZone(sub_1BE04BF14());
    v85 = sub_1BE04BF04();

    v52, v86, v87, v88, v89, v90, v91, v92;
    *(v13 + 5) = v85;
    v93 = &v13[v9[18]];
    *v93 = v110;
    v93[8] = v83;
    v94 = v13;
    v95 = v119;
    sub_1BD1B61AC(v94, v119, type metadata accessor for SavingsView);
    v110 = v62;
    v96 = v117;
    sub_1BD1B5DC0(v95, v117, type metadata accessor for SavingsView);
    v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD58, &qword_1BE0BD908));
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v97 + *((*MEMORY[0x1E69E7D40] & *v97) + class metadata base offset for WrapperHostingController + 16)) = v98;
    v99 = v118;
    sub_1BD1B5DC0(v96, v118, type metadata accessor for SavingsView);
    *(v99 + *(v115 + 36)) = v98;
    sub_1BD0DE19C(v99, v112, &qword_1EBD3BD30, &unk_1BE0BD840);
    sub_1BE048964();
    v100 = sub_1BE04F894();
    sub_1BD0DE53C(v99, &qword_1EBD3BD30, &unk_1BE0BD840);
    sub_1BD1B5E28(v96, type metadata accessor for SavingsView);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v101 = v116;
    *&v116[OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC] = v100;
    v102 = type metadata accessor for AccountSavingsViewController();
    v122.receiver = v101;
    v122.super_class = v102;
    v103 = [&v122 initWithNibName:0 bundle:0];
    [v103 addChildViewController:*(&v103->isa + OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC)];

    sub_1BD1B5E28(v95, type metadata accessor for SavingsView);
    return v103;
  }

  __break(1u);
  return result;
}

void sub_1BD1A51D0()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for AccountSavingsViewController();
  objc_msgSendSuper2(&v31, sel_loadView);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC;
  v5 = [*&v1[OBJC_IVAR____PKAccountSavingsViewController_accountHostingVC] view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v3 addSubview_];

  [*&v1[v4] didMoveToParentViewController_];
  v7 = *&v1[v4];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v7;
  sub_1BE048964();
  v10 = sub_1BE04F8A4();
  v12 = (v11 + *(type metadata accessor for SavingsView(0) + 68));
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_1BD1AEEF4;
  v12[1] = v8;
  sub_1BD0D4744(v13, v14, v15, v16, v17, v18, v19, v20);
  v10(&v30, 0);

  v8, v21, v22, v23, v24, v25, v26, v27;
  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BD1A5378(void *a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____PKAccountSavingsViewController_configuration);
    *(Strong + OBJC_IVAR____PKAccountSavingsViewController_configuration) = a1;
    v6 = Strong;
    v7 = a1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [a1 destination];
    v11 = a1;
    sub_1BE048964();
    sub_1BD1AF078(v10, v9, a2, v11);

    a2, v12, v13, v14, v15, v16, v17, v18;
  }
}

void sub_1BD1A5458(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      sub_1BD1A55A4([a3 destination], v7);
    }
  }
}

void sub_1BD1A55A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    v7 = v6;
    if (a1 <= 0xD && ((0x1800u >> a1) & 1) != 0)
    {
      [v6 presentViewController:a2 animated:1 completion:0];
    }

    else if ([v6 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:a2 animated:1];
    }
  }
}

char *AccountSavingsDetailsViewController.init(withConfiguration:setNavigationIconVisible:)(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 account];
  v61 = v3;
  if (v12)
  {
    v13 = v12;
    v14 = a2;
    v15 = a3;
    *&v3[OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration] = a1;
    v16 = a1;
    v17 = v13;
    v18 = [v16 isNewAccount];
    v19 = objc_allocWithZone(type metadata accessor for AccountModel(0));
    v60 = v17;
    v20 = sub_1BD1DF0D8(v17, v18);
    v21 = 0;
    v22 = [v16 destination] & 0xFFFFFFFFFFFFFFFELL;
    if (v22 == 2)
    {
      v21 = [v16 destination];
    }

    v23 = v22 != 2;
    v24 = v20;
    v59 = v24;
    v25 = [v16 viewStyle];
    v26 = v14;
    sub_1BD0D44B8(v14, v15);
    sub_1BD184364(v24, v25, v14, v15, v21, v23, v68);
    v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD70, &qword_1BE0BD910));
    type metadata accessor for ObservableHostingController();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v27 + *((*MEMORY[0x1E69E7D40] & *v27) + class metadata base offset for WrapperHostingController + 16)) = v28;
    memcpy(v64, v68, sizeof(v64));
    memcpy(v65, v68, 0x178uLL);
    v65[47] = v28;
    memcpy(v63, v65, sizeof(v63));
    sub_1BD18288C(v68, v66);
    sub_1BE048964();
    sub_1BD0DE19C(v65, v66, &qword_1EBD3BD78, &unk_1BE0BD918);
    v29 = sub_1BE04F894();
    memcpy(v66, v64, sizeof(v66));
    v67 = v28;
    sub_1BD0DE53C(v66, &qword_1EBD3BD78, &unk_1BE0BD918);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v30 = v61;
    *&v61[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] = v29;
    v31 = type metadata accessor for AccountSavingsDetailsViewController();
    v62.receiver = v30;
    v62.super_class = v31;
    v32 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
    v33 = *&v32[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC];
    v34 = v32;
    [v34 addChildViewController_];
    sub_1BD185210(v68);

    sub_1BD0D4744(v26, v15, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    sub_1BE04D1E4();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C34();
    if (os_log_type_enabled(v41, v42))
    {
      v49 = a3;
      v50 = a2;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v41, v42, "Could not create account details view because there is no account", v51, 2u);
      MEMORY[0x1BFB45F20](v51, -1, -1);

      sub_1BD0D4744(v50, v49, v52, v53, v54, v55, v56, v57);
    }

    else
    {
      sub_1BD0D4744(a2, a3, v43, v44, v45, v46, v47, v48);
    }

    (*(v8 + 8))(v11, v7);
    type metadata accessor for AccountSavingsDetailsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v34;
}

void sub_1BD1A5D34(uint64_t a1)
{
  v2 = v1;
  v31.receiver = v1;
  v31.super_class = type metadata accessor for AccountSavingsDetailsViewController();
  objc_msgSendSuper2(&v31, sel_loadView);
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC;
  v6 = [*&v2[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] view];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v4 addSubview_];

  [*&v2[v5] didMoveToParentViewController_];
  v8 = *&v2[v5];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v8;
  sub_1BE048964();
  v11 = sub_1BE04F8A4();
  v13 = *(v12 + 264);
  v14 = *(v12 + 272);
  *(v12 + 264) = sub_1BD1B1AB8;
  *(v12 + 272) = v9;
  sub_1BD0D4744(v13, v14, v15, v16, v17, v18, v19, v20);
  v11(&v30, 0);

  v9, v21, v22, v23, v24, v25, v26, v27;
  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    [v28 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BD1A5EC4(unint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BE048964();
    sub_1BD1B1AC0(a1, v5, a2, a1);

    a2, v6, v7, v8, v9, v10, v11, v12;
  }
}

void sub_1BD1A5F44(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      sub_1BD1A6550(a3, v7);
    }
  }
}

void sub_1BD1A6030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a4;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = v17;
    v38 = v16;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v35 = a7;
    v36 = v12;
    v20 = a1;
    v21 = sub_1BE052D54();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a3;
    v23[4] = v20;
    aBlock[4] = a6;
    v41 = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v35;
    v24 = _Block_copy(aBlock);
    v25 = v41;
    v26 = v20;
    v25, v27, v28, v29, v30, v31, v32, v33;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v19, v14, v24);
    _Block_release(v24);

    (*(v36 + 8))(v14, v11);
    (*(v37 + 8))(v19, v38);
  }
}

void sub_1BD1A6338(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a2, a3);
  }
}

void sub_1BD1A63E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), void *a5, void (*a6)(id, char *, char *, id))
{
  v12.receiver = a1;
  v12.super_class = a4(a1, a2);
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a3);
  v10 = [*&v9[*a5] destination];
  v11 = v9;
  a6(v10, v11, v11, v10);
}

void sub_1BD1A64B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), void *a5, uint64_t a6)
{
  v11.receiver = a1;
  v11.super_class = a4(a1, a2);
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, a3);
  v10 = *&v9[*a5];
  [v10 setDestination_];
}

void sub_1BD1A6550(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    v7 = v6;
    if (a1 <= 0xD && ((0x1880u >> a1) & 1) != 0)
    {
      [v6 presentViewController:a2 animated:1 completion:0];
    }

    else if ([v6 _pk_settings_useStateDrivenNavigation])
    {
      [v7 _pk_settings_pushViewController_];
    }

    else
    {
      [v7 pushViewController:a2 animated:1];
    }
  }
}

uint64_t sub_1BD1A6668(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong pkui_userInterfaceIdiomSupportsLargeLayouts];

    if (v8)
    {
      v9 = a1 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [a1 setModalPresentationStyle_];
    }
  }

  return a4(a1);
}

char *AccountDocumentsViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v50);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = type metadata accessor for DocumentsView(0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - v12;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 accounts];
  if (v19)
  {
    v20 = v19;
    sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
    v21 = sub_1BE052744();

    v22 = objc_allocWithZone(type metadata accessor for SavingsStatementsModel(0));
    v23 = sub_1BE048C84();
    v24 = sub_1BD2F1B14(v23);
    v25 = type metadata accessor for TaxFormsModel(0);
    v49 = a1;
    v47[1] = v25;
    v26 = objc_allocWithZone(v25);
    v27 = sub_1BD6CF9F8(v21);
    *(v13 + 4) = sub_1BD172644;
    *(v13 + 5) = 0;
    v13[48] = 0;
    v48 = v2;
    v28 = type metadata accessor for FeatureError(0);
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    sub_1BD0DE19C(v8, v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
    v29 = v24;
    v30 = v27;
    sub_1BE051694();
    sub_1BD0DE53C(v8, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD1B6BA4(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    v31 = v29;
    *v13 = sub_1BE04E954();
    *(v13 + 1) = v32;
    sub_1BD1B6BA4(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
    v33 = sub_1BE04E954();
    v35 = v34;

    *(v13 + 2) = v33;
    *(v13 + 3) = v35;
    sub_1BD1B5DC0(v13, v51, type metadata accessor for DocumentsView);
    v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD88, &qword_1BE0BD928));
    v37 = sub_1BE04F894();
    v38 = v48;
    *&v48[OBJC_IVAR____PKAccountDocumentsViewController_documentsHostingVC] = v37;
    v39 = type metadata accessor for AccountDocumentsViewController();
    v52.receiver = v38;
    v52.super_class = v39;
    v40 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
    v41 = *&v40[OBJC_IVAR____PKAccountDocumentsViewController_documentsHostingVC];
    v42 = v40;
    [v42 addChildViewController_];

    sub_1BD1B5E28(v13, type metadata accessor for DocumentsView);
  }

  else
  {
    sub_1BE04D1E4();
    v43 = sub_1BE04D204();
    v44 = sub_1BE052C34();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1BD026000, v43, v44, "Could not create account documents view because there is no account", v45, 2u);
      MEMORY[0x1BFB45F20](v45, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    type metadata accessor for AccountDocumentsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v42;
}

char *AccountNumbersViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 account];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 savingsDetails];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 routingNumber];
      if (v17)
      {
        v58 = v9;
        v18 = v17;
        v57 = sub_1BE052434();
        v59 = v19;

        v20 = [v16 accountNumber];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1BE052434();
          v24 = v23;

          v61 = v57;
          v62 = v59;
          v63 = v22;
          v64 = v24;
          v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD98, &qword_1BE0BD930));
          *&v2[OBJC_IVAR____TtC9PassKitUI28AccountNumbersViewController_accountNumbersVC] = sub_1BE04F894();
          v26 = type metadata accessor for AccountNumbersViewController();
          v60.receiver = v2;
          v60.super_class = v26;
          v27 = objc_msgSendSuper2(&v60, sel_initWithNibName_bundle_, 0, 0);
          v28 = *&v27[OBJC_IVAR____TtC9PassKitUI28AccountNumbersViewController_accountNumbersVC];
          v29 = v27;
          [v29 addChildViewController_];
          v59 = v29;
          v30 = [v29 navigationItem];
          v31 = v58;
          (*(v58 + 104))(v12, *MEMORY[0x1E69B80E0], v8);
          result = PKPassKitBundle();
          if (result)
          {
            v33 = result;
            sub_1BE04B6F4();
            v35 = v34;

            (*(v31 + 8))(v12, v8);
            v36 = sub_1BE052404();
            v35, v37, v38, v39, v40, v41, v42, v43;
            [v30 setTitle_];

            v44 = v59;
            v45 = [v59 navigationItem];

            [v45 setLargeTitleDisplayMode_];
            return v44;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v59, v46, v47, v48, v49, v50, v51, v52;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_1BE04D1E4();
  v53 = sub_1BE04D204();
  v54 = sub_1BE052C34();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1BD026000, v53, v54, "Could not create account numbers view because there is no account", v55, 2u);
    MEMORY[0x1BFB45F20](v55, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for AccountNumbersViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

char *AccountManageNotificationsViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 account];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 isNewAccount];
    v12 = objc_allocWithZone(type metadata accessor for AccountModel(0));
    v13 = sub_1BD1DF0D8(v10, v11);
    v44 = 0;
    v45 = 1;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDA8, &qword_1BE0BD938);
    sub_1BE051694();
    v15 = v39;
    v16 = v40;
    v17 = v41;
    sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v18 = sub_1BE04E954();
    v20 = v19;
    v39 = v18;
    v40 = v19;
    v41 = v15;
    v42 = v16;
    v43 = v17;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDB0, &qword_1BE0BD940));
    sub_1BE048964();
    v21 = v20;
    *&v2[OBJC_IVAR____PKAccountManageNotificationsViewController_hostingVC] = sub_1BE04F894();
    v22 = type metadata accessor for AccountManageNotificationsViewController();
    v38.receiver = v2;
    v38.super_class = v22;
    v23 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
    v24 = *&v23[OBJC_IVAR____PKAccountManageNotificationsViewController_hostingVC];
    v25 = v23;
    [v25 addChildViewController_];

    v17, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    sub_1BE04D1E4();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "Could not create account details view because there is no account", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for AccountManageNotificationsViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v25;
}

char *AccountDebugViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 account];
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(type metadata accessor for AccountDebugModel(0));
    v12 = v10;
    sub_1BD765E64(v12);
    v14 = v13;
    *&v2[OBJC_IVAR____PKAccountDebugViewController_debugModel] = v13;
    sub_1BD1B6BA4(&qword_1EBD3BDC8, type metadata accessor for AccountDebugModel, &unk_1BE0F5724);
    v15 = v14;
    v16 = sub_1BE04E954();
    v18 = v17;
    v19 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
    *&v37 = v16;
    *(&v37 + 1) = v18;
    *&v38 = 9537250;
    *(&v38 + 1) = 0xA300000000000000;
    *&v39 = 9668322;
    *(&v39 + 1) = 0xA300000000000000;
    *&v40 = 37;
    *(&v40 + 1) = 0xE100000000000000;
    v41 = v19;
    v34 = v39;
    v35 = v40;
    v36 = v19;
    v32 = v37;
    v33 = v38;
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDD0, &qword_1BE0BD948));
    sub_1BD1967C8(&v37, v31);
    *&v2[OBJC_IVAR____PKAccountDebugViewController_hostingVC] = sub_1BE04F894();
    v21 = type metadata accessor for AccountDebugViewController();
    v30.receiver = v2;
    v30.super_class = v21;
    v22 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
    v23 = *&v22[OBJC_IVAR____PKAccountDebugViewController_hostingVC];
    v24 = v22;
    [v24 addChildViewController_];
    sub_1BD1B5EF4(&v37);
  }

  else
  {
    sub_1BE04D1E4();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "Could not create account debug view because there is no account", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for AccountDebugViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

void sub_1BD1A7D7C(uint64_t (*a1)(void), uint64_t *a2, void *a3)
{
  v13.receiver = v3;
  v13.super_class = a1();
  objc_msgSendSuper2(&v13, sel_loadView);
  v6 = [v3 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  v8 = *a2;
  v9 = [*&v3[*a2] view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v7 addSubview_];

  [*&v3[v8] didMoveToParentViewController_];
  v11 = [v3 view];
  if (v11)
  {
    v12 = v11;
    [v11 setAccessibilityIdentifier_];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD1A7F10()
{
  v1 = *(v0 + OBJC_IVAR____PKAccountDebugViewController_debugModel);
  v2 = sub_1BD763778();

  v3 = sub_1BD1A8284(v2);
  v2, v4, v5, v6, v7, v8, v9, v10;
  v11 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v12 = sub_1BE052224();
  v3, v13, v14, v15, v16, v17, v18, v19;
  v20 = [v11 initWithDictionary:v12 copyItems:0];

  return v20;
}

uint64_t sub_1BD1A7FCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = __clz(__rbit64(v5)) | (v16 << 6);
    v21 = *(*(a1 + 48) + 8 * v20);
    sub_1BD038CD0(*(a1 + 56) + 32 * v20, v47 + 8);
    *&v47[0] = v21;
    v45[0] = v47[0];
    v45[1] = v47[1];
    v46 = v48;
    *&v44[0] = v21;
    swift_dynamicCast();
    sub_1BD1B6140((v45 + 8), v39);
    v40 = v36;
    v41 = v37;
    v42 = v38;
    sub_1BD1B6140(v39, v43);
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1BD1B6140(v43, v44);
    result = sub_1BE0537A4();
    v22 = -1 << *(v2 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v7 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v7 + 8 * v24);
        if (v28 != -1)
        {
          v17 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v23) & ~*(v7 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v2 + 48) + 40 * v17;
    *v18 = v36;
    *(v18 + 16) = v37;
    *(v18 + 32) = v38;
    result = sub_1BD1B6140(v44, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v29, v30, v31, v32, v33, v34, v35;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8284(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = __clz(__rbit64(v5)) | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1BD038CD0(*(a1 + 56) + 32 * v20, v49);
    *&v48 = v23;
    *(&v48 + 1) = v22;
    v46[2] = v48;
    v47[0] = v49[0];
    v47[1] = v49[1];
    v46[0] = v48;
    sub_1BE048C84();
    swift_dynamicCast();
    sub_1BD1B6140(v47, v41);
    v42 = v38;
    v43 = v39;
    v44 = v40;
    sub_1BD1B6140(v41, v45);
    v38 = v42;
    v39 = v43;
    v40 = v44;
    sub_1BD1B6140(v45, v46);
    result = sub_1BE0537A4();
    v24 = -1 << *(v2 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v7 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v7 + 8 * v26);
        if (v30 != -1)
        {
          v17 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v25) & ~*(v7 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v2 + 48) + 40 * v17;
    *v18 = v38;
    *(v18 + 16) = v39;
    *(v18 + 32) = v40;
    result = sub_1BD1B6140(v46, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v31, v32, v33, v34, v35, v36, v37;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A854C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v16 << 6)));
    v22 = *v20;
    v21 = v20[1];
    sub_1BE048C84();
    swift_dynamicCast();
    *&v45[0] = v22;
    *(&v45[0] + 1) = v21;
    swift_dynamicCast();
    v41 = v37;
    v42 = v38;
    v43 = v39;
    sub_1BD1B6140(&v40, v44);
    v37 = v41;
    v38 = v42;
    v39 = v43;
    sub_1BD1B6140(v44, v45);
    result = sub_1BE0537A4();
    v23 = -1 << *(v2 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v7 + 8 * v25);
        if (v29 != -1)
        {
          v17 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v24) & ~*(v7 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v2 + 48) + 40 * v17;
    *v18 = v37;
    *(v18 + 16) = v38;
    *(v18 + 32) = v39;
    result = sub_1BD1B6140(v45, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v30, v31, v32, v33, v34, v35, v36;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1BD1A8804(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEA8, &qword_1BE0BDBA8);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048964();
  result = sub_1BE048C84();
  v15 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v8, v9, v10, v11, v12, v13, v14;
      a1, v31, v32, v33, v34, v35, v36, v37;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v15;
    if (v5)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v21 = v20 | (v19 << 6);
        v22 = (*(a1 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(a1 + 56) + 8 * v21);
        sub_1BE048C84();
        v26 = v25;
        result = sub_1BD148F70(v24, v23);
        if (v8)
        {
          v16 = (v2[6] + 16 * result);
          v17 = v16[1];
          *v16 = v24;
          v16[1] = v23;
          v18 = result;
          v17, v8, v9, v10, v11, v12, v13, v14;
          *(v2[7] + 8 * v18) = v26;
          result = swift_unknownObjectRelease();
          v15 = v19;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v27 = (v2[6] + 16 * result);
          *v27 = v24;
          v27[1] = v23;
          *(v2[7] + 8 * result) = v26;
          v28 = v2[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_21;
          }

          v2[2] = v30;
          v15 = v19;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v19 = v15;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BD1A89E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80, &unk_1BE0BDBB0);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048964();
  result = sub_1BE048C84();
  v15 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v6)
    {
      v2, v8, v9, v10, v11, v12, v13, v14;
      a1, v43, v44, v45, v46, v47, v48, v49;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v27);
    ++v15;
    if (v5)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v29 = (*(a1 + 48) + 16 * (v28 | (v27 << 6)));
        v31 = *v29;
        v30 = v29[1];
        sub_1BE048C84();
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590, &qword_1BE0DFAF0);
        swift_dynamicCast();
        sub_1BD1B6140(&v50, v52);
        sub_1BD1B6140(v52, v53);
        sub_1BD1B6140(v53, &v51);
        result = sub_1BD148F70(v31, v30);
        if (v32)
        {
          v16 = (v2[6] + 16 * result);
          v17 = v16[1];
          *v16 = v31;
          v16[1] = v30;
          v18 = result;
          v17, v32, v33, v34, v35, v36, v37, v38;
          v19 = (v2[7] + 32 * v18);
          __swift_destroy_boxed_opaque_existential_0(v19, v20, v21, v22, v23, v24, v25, v26);
          result = sub_1BD1B6140(&v51, v19);
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v39 = (v2[6] + 16 * result);
          *v39 = v31;
          v39[1] = v30;
          result = sub_1BD1B6140(&v51, (v2[7] + 32 * result));
          v40 = v2[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_21;
          }

          v2[2] = v42;
          v15 = v27;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v27 = v15;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8C44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v1 = sub_1BE053A04();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v15 = 0;
  while (v4)
  {
LABEL_15:
    v19 = __clz(__rbit64(v4)) | (v15 << 6);
    v20 = *(*(a1 + 48) + 8 * v19);
    v21 = (*(a1 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    type metadata accessor for PKAnalyticsKey(0);
    v24 = v20;
    sub_1BE048C84();
    swift_dynamicCast();
    *&v48[0] = v22;
    *(&v48[0] + 1) = v23;
    swift_dynamicCast();
    v44 = v40;
    v45 = v41;
    v46 = v42;
    sub_1BD1B6140(&v43, v47);
    v40 = v44;
    v41 = v45;
    v42 = v46;
    sub_1BD1B6140(v47, v48);
    result = sub_1BE0537A4();
    v25 = -1 << *(v1 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v6 + 8 * (v26 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      while (++v27 != v29 || (v28 & 1) == 0)
      {
        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v6 + 8 * v27);
        if (v31 != -1)
        {
          v16 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v16 = __clz(__rbit64((-1 << v26) & ~*(v6 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v1 + 48) + 40 * v16;
    *v17 = v40;
    *(v17 + 16) = v41;
    *(v17 + 32) = v42;
    result = sub_1BD1B6140(v48, (*(v1 + 56) + 32 * v16));
    ++*(v1 + 16);
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v5)
    {
      v1, v8, v9, v10, v11, v12, v13, v14;
      a1, v32, v33, v34, v35, v36, v37, v38;
      return v1;
    }

    v4 = *(a1 + 64 + 8 * v18);
    ++v15;
    if (v4)
    {
      v15 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A8F14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = (*(a1 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = v20[1];
    *&v44[0] = *v20;
    *(&v44[0] + 1) = v21;
    sub_1BE048C84();
    sub_1BE048C84();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    swift_dynamicCast();
    v40 = v36;
    v41 = v37;
    v42 = v38;
    sub_1BD1B6140(&v39, v43);
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1BD1B6140(v43, v44);
    result = sub_1BE0537A4();
    v22 = -1 << *(v2 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v7 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v7 + 8 * v24);
        if (v28 != -1)
        {
          v17 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v23) & ~*(v7 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v2 + 48) + 40 * v17;
    *v18 = v36;
    *(v18 + 16) = v37;
    *(v18 + 32) = v38;
    result = sub_1BD1B6140(v44, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v29, v30, v31, v32, v33, v34, v35;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD1A91F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v2 = sub_1BE053A04();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1BE048964();
  result = sub_1BE048C84();
  v16 = 0;
  while (v5)
  {
LABEL_15:
    v20 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v16 << 6)));
    v21 = v20[1];
    *&v44[0] = *v20;
    *(&v44[0] + 1) = v21;
    sub_1BE048C84();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v40 = v36;
    v41 = v37;
    v42 = v38;
    sub_1BD1B6140(&v39, v43);
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1BD1B6140(v43, v44);
    result = sub_1BE0537A4();
    v22 = -1 << *(v2 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v7 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v7 + 8 * v24);
        if (v28 != -1)
        {
          v17 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v23) & ~*(v7 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v2 + 48) + 40 * v17;
    *v18 = v36;
    *(v18 + 16) = v37;
    *(v18 + 32) = v38;
    result = sub_1BD1B6140(v44, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v6)
    {
      v2, v9, v10, v11, v12, v13, v14, v15;
      a1, v29, v30, v31, v32, v33, v34, v35;
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v19);
    ++v16;
    if (v5)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BD1A9650(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(id))
{
  v11 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a2);
  v12 = [objc_opt_self() sharedService];
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v14 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:v12 paymentServiceDataProvider:v13 detailViewStyle:v11 context:0];

  v15 = sub_1BE04A404();
  v45 = [a3 cashbackGroupForDateComponents:v15 cashbackTransactionSourceCollection:0];

  v16 = [a5 transactionSourceIdentifiers];
  v17 = sub_1BE052A34();

  sub_1BD960F28(v17);
  v19 = v18;
  v17, v18, v20, v21, v22, v23, v24, v25;
  if (v19)
  {
    if (v45)
    {
      v33 = v45;
      v34 = sub_1BE052404();
      v19, v35, v36, v37, v38, v39, v40, v41;
      v42 = [v33 transactionForCashbackGroupWithSourceIdentifier_];

      if (v42)
      {
        v43 = [v14 viewControllerForTransaction:v42 sourceCollection:a5 familyCollection:0 account:a6 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:v33 navigationController:0];
        v44 = v43;
        a7(v43);

        v45 = v33;
        goto LABEL_7;
      }
    }

    else
    {
      v19, v26, v27, v28, v29, v30, v31, v32;
    }
  }

  a7(0);
LABEL_7:
}

char *SavingsInterstitialViewController.__allocating_init(withConfiguration:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___PKSavingsInterstitialViewController_configuration] = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDE8, &unk_1BE0BD950));
  v5 = a1;
  *&v4[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] = sub_1BE04F894();
  v10.receiver = v4;
  v10.super_class = v2;
  v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v7 = *&v6[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC];
  v8 = v6;
  [v8 addChildViewController_];

  return v8;
}

char *SavingsInterstitialViewController.init(withConfiguration:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___PKSavingsInterstitialViewController_configuration] = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDE8, &unk_1BE0BD950));
  v4 = a1;
  *&v2[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] = sub_1BE04F894();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SavingsInterstitialViewController();
  v5 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v6 = *&v5[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC];
  v7 = v5;
  [v7 addChildViewController_];

  return v7;
}

id sub_1BD1A9ABC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SavingsInterstitialViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC;
    result = [*&v0[OBJC_IVAR___PKSavingsInterstitialViewController_interstitialHostingVC] view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [*&v0[v3] didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD1A9BE4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), void *a4)
{
  v17.receiver = a1;
  v17.super_class = a3(a1, a2);
  v5 = v17.receiver;
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [*&v5[*a4] view];
    [v16 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1A9CD4(void (*a1)(void), uint64_t a2)
{
  v102 = a1;
  v104 = a2;
  v112 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BE04BD74();
  v6 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v97 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v106 = 0;
  v103 = v15;
  v16 = [v15 canEvaluatePolicy:2 error:&v106];
  v17 = v106;
  if (!v16)
  {
    v72 = v106;
    sub_1BE04D194();
    v73 = sub_1BE04D204();
    v74 = sub_1BE052C54();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v2;
      v77 = swift_slowAlloc();
      *v75 = 138412290;
      *(v75 + 4) = v72;
      *v77 = v17;
      v78 = v72;
      _os_log_impl(&dword_1BD026000, v73, v74, "Cannot evaluate local authentication policy for Savings interstitial due to error: %@", v75, 0xCu);
      sub_1BD0DE53C(v77, &unk_1EBD3E590, &unk_1BE0B7E50);
      v79 = v77;
      v2 = v76;
      MEMORY[0x1BFB45F20](v79, -1, -1);
      MEMORY[0x1BFB45F20](v75, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (v72)
    {
      v80 = v72;
      v81 = sub_1BE04A844();
    }

    else
    {
      v81 = 0;
    }

    v82 = v104;
    v83 = v102;
    v50 = [objc_opt_self() displayableErrorForError:v81 featureIdentifier:5 genericErrorTitle:0 genericErrorMessage:0];

    if (v50)
    {
      v84 = v50;
      v85 = sub_1BE04A844();
    }

    else
    {
      v85 = 0;
    }

    v86 = swift_allocObject();
    *(v86 + 16) = v83;
    *(v86 + 24) = v82;
    v110 = sub_1BD1B5F6C;
    v111 = v86;
    v106 = MEMORY[0x1E69E9820];
    v107 = 1107296256;
    v108 = sub_1BD126964;
    v109 = &block_descriptor_16;
    v87 = _Block_copy(&v106);
    v88 = v111;
    sub_1BE048964();
    v88, v89, v90, v91, v92, v93, v94, v95;
    v96 = PKAlertForDisplayableErrorWithCancelHandler(v85, 0, v87);
    _Block_release(v87);

    if (v96)
    {
      [v101 presentViewController:v96 animated:1 completion:0];
    }

    else
    {
      v83(0);
    }

    v71 = v103;
    goto LABEL_19;
  }

  v100 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v106 = 1021;
  v98 = v17;
  sub_1BE0537C4();
  v19 = *(v6 + 104);
  v19(v14, *MEMORY[0x1E69B80D0], v105);
  v20 = PKPassKitBundle();
  if (!v20)
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_1BE04B6F4();
  v24 = v23;

  v25 = v105;
  v99 = *(v6 + 8);
  v99(v14, v105);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v22;
  *(inited + 80) = v24;
  v106 = 1037;
  sub_1BE0537C4();
  v26 = *MEMORY[0x1E69B80E0];
  v97 = v19;
  v19(v11, v26, v25);
  v27 = PKPassKitBundle();
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = sub_1BE04B6F4();
  v31 = v30;

  v32 = v99;
  v99(v11, v105);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v29;
  *(inited + 152) = v31;
  v106 = 1031;
  sub_1BE0537C4();
  v33 = sub_1BE052404();
  v34 = PKDeviceSpecificLocalizedStringKeyForKey(v33, 0);

  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1BE052434();
  v36 = v35;

  v37 = v100;
  v97(v100, v26, v105);
  v38 = PKPassKitBundle();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1BE04B6F4();
    v42 = v41;
    v36, v41, v43, v44, v45, v46, v47, v48;

    v32(v37, v105);
    *(inited + 240) = MEMORY[0x1E69E6158];
    *(inited + 216) = v40;
    *(inited + 224) = v42;
    v49 = sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0, &unk_1BE0D5150);
    swift_arrayDestroy();
    v50 = sub_1BE052224();
    v49, v51, v52, v53, v54, v55, v56, v57;
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = swift_allocObject();
    v60 = v102;
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v104;
    v110 = sub_1BD1B5F98;
    v111 = v59;
    v106 = MEMORY[0x1E69E9820];
    v107 = 1107296256;
    v108 = sub_1BD1AA864;
    v109 = &block_descriptor_24;
    v61 = _Block_copy(&v106);
    v62 = v111;
    sub_1BE048964();
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = v103;
    [v103 evaluatePolicy:2 options:v50 reply:v61];

    _Block_release(v61);
    v71 = v98;
LABEL_19:

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1BD1AA534(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_1BE04D214();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = [*(Strong + OBJC_IVAR___PKSavingsInterstitialViewController_configuration) account];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 accountIdentifier];

        if (v18)
        {
          sub_1BE04AEF4();
          v19 = sub_1BE04AE64();
          (*(v11 + 8))(v13, v10);
          PKSavingsSetLastInterstitialAuthDate();
        }
      }

      v20 = 1;
    }

    else
    {
      sub_1BE04D194();
      v21 = a2;
      v22 = sub_1BE04D204();
      v23 = sub_1BE052C54();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        if (a2)
        {
          v26 = a2;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          v28 = v27;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        *(v24 + 4) = v27;
        *v25 = v28;
        _os_log_impl(&dword_1BD026000, v22, v23, "Failed when attempting to evaluate local authentication policy for Savings interstitial due to error: %@", v24, 0xCu);
        sub_1BD0DE53C(v25, &unk_1EBD3E590, &unk_1BE0B7E50);
        MEMORY[0x1BFB45F20](v25, -1, -1);
        MEMORY[0x1BFB45F20](v24, -1, -1);
      }

      (*(v29 + 8))(v9, v7);
      v20 = 0;
    }

    a4(v20);
  }

  else
  {
    (a4)();
  }
}

void sub_1BD1AA864(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1BE052244();
  }

  else
  {
    v6 = 0;
  }

  sub_1BE048964();
  v7 = a3;
  v5(v6, a3);
  v4, v8, v9, v10, v11, v12, v13, v14;

  v6, v15, v16, v17, v18, v19, v20, v21;
}

id _s9PassKitUI26AccountDebugViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, void *a2, void *a3)
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

id sub_1BD1AAA6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BD1AAAF0(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD1AAB70(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1AAC0C(uint64_t a1)
{
  v2 = sub_1BE04EB24();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F094();
}

unint64_t sub_1BD1AACF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80, &unk_1BE0BDBB0);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v20, &qword_1EBD52080, &qword_1BE0BDD40);
      v5 = v20;
      v6 = v21;
      result = sub_1BD148F70(v20, v21);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BD1B6140(&v22, (v3[7] + 32 * result));
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v4 += 48;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AAE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF78, &qword_1BE0BDC98);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v18, &qword_1EBD3BF80, &qword_1BE0BDCA0);
      v5 = v18;
      result = sub_1BD14BFD0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v19, (v3[7] + 32 * result));
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 40;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AAF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018, &qword_1BE0BDD68);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1BE048C84();
      result = sub_1BD14BFD0();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v16 = (v3[7] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE18, &unk_1BE0BDB00);
    v3 = sub_1BE053A04();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1BD0DE19C(i, &v11, &qword_1EBD3BE20, &unk_1BE10BC70);
      v5 = v11;
      result = sub_1BD149084(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB16C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, v20, &qword_1EBD403B0, &unk_1BE0D5150);
      result = sub_1BD149040(v20);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v20[0];
      v9 = v20[1];
      *(v7 + 32) = v21;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BD1B6140(&v22, (v3[7] + 32 * result));
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v4 += 72;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B98, &unk_1BE0B79E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF38, &qword_1BE0BDC50);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD38B98, &unk_1BE0B79E0);
      v11 = *v5;
      result = sub_1BD149228(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28, &qword_1BE0BDB10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE30, &qword_1BE0BDB18);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BE28, &qword_1BE0BDB10);
      result = sub_1BD1490C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BE04C974();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v7[2] = v25;
      v9 += v10;
      if (!--v6)
      {
        v7, v16, v17, v18, v19, v20, v21, v22;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1AB678(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE88, &qword_1BE0BDB80);
  v3 = sub_1BE053A04();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1BD149084(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048C84();
    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;
    sub_1BE048C84();
    v9 = sub_1BD149084(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AB78C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8, &qword_1BE0BDCD0);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = (v3[7] + 16 * result);
      *v18 = v8;
      v18[1] = v7;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AB8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFD8, &qword_1BE0BDD08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EE0, &unk_1BE0BDD10);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BFD8, &qword_1BE0BDD08);
      result = sub_1BD148E9C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BE049B04();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1BE0493F4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v7[2] = v27;
      v9 += v10;
      if (!--v6)
      {
        v7, v18, v19, v20, v21, v22, v23, v24;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC8, &qword_1BE0BDCF8);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v18, &qword_1EBD3BFD0, &qword_1BE0BDD00);
      v5 = v18;
      result = sub_1BD14BFD0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v19, (v3[7] + 32 * result));
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 40;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C010, &qword_1BE0BDD60);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *i;
      sub_1BE048C84();
      v10 = v7;
      result = sub_1BD148F70(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v3[6] + 16 * result);
      *v19 = v5;
      v19[1] = v6;
      v20 = (v3[7] + 16 * result);
      *v20 = v7;
      v20[1] = v8;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v3[2] = v23;
      if (!--v1)
      {
        v3, v12, v13, v14, v15, v16, v17, v18;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE58, &unk_1BE0BDB40);
  v3 = sub_1BE053A04();
  sub_1BE048964();
  v4 = *(a1 + 112);
  v39 = *(a1 + 96);
  v40 = v4;
  v5 = *(a1 + 144);
  v41 = *(a1 + 128);
  v42 = v5;
  v6 = *(a1 + 48);
  v35 = *(a1 + 32);
  v36 = v6;
  v7 = *(a1 + 80);
  v37 = *(a1 + 64);
  v38 = v7;
  v9 = *(&v35 + 1);
  v8 = v35;
  sub_1BD0DE19C(&v35, v34, &qword_1EBD3BE60, &unk_1BE0C7440);
  result = sub_1BD148F70(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v3, v11, v12, v13, v14, v15, v16, v17;
    return v3;
  }

  v18 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v3[6] + 16 * result);
    *v19 = v8;
    v19[1] = v9;
    v20 = (v3[7] + 112 * result);
    v21 = v36;
    v22 = v38;
    v20[1] = v37;
    v20[2] = v22;
    *v20 = v21;
    v23 = v39;
    v24 = v40;
    v25 = v42;
    v20[5] = v41;
    v20[6] = v25;
    v20[3] = v23;
    v20[4] = v24;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = v18 + 8;
    v30 = v18[5];
    v39 = v18[4];
    v40 = v30;
    v31 = v18[7];
    v41 = v18[6];
    v42 = v31;
    v32 = v18[1];
    v35 = *v18;
    v36 = v32;
    v33 = v18[3];
    v37 = v18[2];
    v38 = v33;
    v9 = *(&v35 + 1);
    v8 = v35;
    sub_1BD0DE19C(&v35, v34, &qword_1EBD3BE60, &unk_1BE0C7440);
    result = sub_1BD148F70(v8, v9);
    v18 = v29;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1ABED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C008, &qword_1BE0BDD58);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(v3[7] + result) = v7;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ABFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF58, &unk_1BE0BDC70);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BD14BFD0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF48, &unk_1BE0BDC60);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v18, &qword_1EBD3BF50, &unk_1BE106F70);
      v5 = v18;
      result = sub_1BD14BFD0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v19, (v3[7] + 32 * result));
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 40;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFF8, &qword_1BE0BDD48);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BD1493D0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF28, &unk_1BE0C3C10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF30, &unk_1BE0BDC40);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BF28, &unk_1BE0C3C10);
      v11 = *v5;
      result = sub_1BD149484(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1AC4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8, &qword_1BE0DD710);
  v3 = sub_1BE053A04();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1BD1494B0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048C84();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_1BE048C84();
    v8 = sub_1BD1494B0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AC5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3C040, &unk_1BE0BDE00);
  v3 = sub_1BE053A04();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1BD1495F0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1BD1495F0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1AC6F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFE8, &qword_1BE0BDD30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFF0, &qword_1BE0BDD38);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BFE8, &qword_1BE0BDD30);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BD148F70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1BE04AA64();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {
        v7, v19, v20, v21, v22, v23, v24, v25;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0, &unk_1BE0DD680);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048964();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AC9E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE68, &unk_1BE0BDB50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0, &unk_1BE0DD670);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BE68, &unk_1BE0BDB50);
      result = sub_1BD14951C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BE04AFE4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
      result = sub_1BD1B61AC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v7[2] = v27;
      v9 += v10;
      if (!--v6)
      {
        v7, v18, v19, v20, v21, v22, v23, v24;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1BD1ACC28(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1BE053A04();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1BD149084(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1BE048964();
    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;
    sub_1BE048964();
    v10 = sub_1BD149084(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1ACD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60, &qword_1BE0BDC80);
    v3 = sub_1BE053A04();
    v4 = a1 + 32;
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v4, &v18, &qword_1EBD3BF68, &unk_1BE0CF350);
      v5 = v18;
      result = sub_1BD14BFD0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6140(&v19, (v3[7] + 32 * result));
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 40;
      if (!--v1)
      {
        v3, v8, v9, v10, v11, v12, v13, v14;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ACE78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0, &qword_1BE0BDCF0);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      swift_unknownObjectRetain();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ACF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF18, &unk_1BE0D97D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF20, &unk_1BE0BDC30);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BF18, &unk_1BE0D97D0);
      v11 = *v5;
      result = sub_1BD14986C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEA0, &unk_1BE0BDB98);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB0, &qword_1BE0BDCD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EA0, &unk_1BE0BDCE0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BFB0, &qword_1BE0BDCD8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BD148F70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1BE049184();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {
        v7, v19, v20, v21, v22, v23, v24, v25;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_1BE048C84();
      v10 = v9;
      result = sub_1BD148F70(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v5[6] + 16 * result);
      *v19 = v7;
      v19[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v5[2] = v22;
      if (!--v3)
      {
        v5, v12, v13, v14, v15, v16, v17, v18;
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF98, &qword_1BE0BDCB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA0, &qword_1BE0BDCC0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BF98, &qword_1BE0BDCB8);
      result = sub_1BD14951C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BE04AFE4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1BE0495A4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v7[2] = v27;
      v9 += v10;
      if (!--v6)
      {
        v7, v18, v19, v20, v21, v22, v23, v24;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF88, &qword_1BE0BDCA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90, &qword_1BE0BDCB0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BF88, &qword_1BE0BDCA8);
      result = sub_1BD14951C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BE04AFE4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v7[2] = v25;
      v9 += v10;
      if (!--v6)
      {
        v7, v16, v17, v18, v19, v20, v21, v22;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AD96C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE38, &qword_1BE0BDB20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE40, &qword_1BE0BDB28);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BE38, &qword_1BE0BDB20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BD148F70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1BE04AF64();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {
        v7, v19, v20, v21, v22, v23, v24, v25;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE00, &qword_1BE0BDAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE08, &unk_1BE0BDAF0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BE00, &qword_1BE0BDAE8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BD148F70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for RedemptionPresentation(0);
      result = sub_1BD1B61AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for RedemptionPresentation);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {
        v7, v19, v20, v21, v22, v23, v24, v25;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF08, &unk_1BE0E9DA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF10, &unk_1BE0BDC20);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BF08, &unk_1BE0E9DA0);
      v11 = *v5;
      result = sub_1BD149920(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1ADF3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v5[6] + 16 * result);
      *v18 = v7;
      v18[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v19 = v5[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v5[2] = v21;
      if (!--v3)
      {
        v5, v11, v12, v13, v14, v15, v16, v17;
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90, &qword_1BE0BDC90);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = *(i + 40);
      v13 = v11;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v3[6] + 16 * result);
      *v22 = v5;
      v22[1] = v6;
      v23 = v3[7] + 48 * result;
      *v23 = v8;
      *(v23 + 8) = v7;
      *(v23 + 16) = v9;
      *(v23 + 24) = v10;
      *(v23 + 32) = v11;
      *(v23 + 40) = v12;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v3[2] = v26;
      if (!--v1)
      {
        v3, v15, v16, v17, v18, v19, v20, v21;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF70, &qword_1BE0BDC88);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = (v3[7] + 16 * result);
      *v18 = v8;
      v18[1] = v7;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0, &unk_1BE0DD660);
    v3 = sub_1BE053A04();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BD149084(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE8, &unk_1BE104170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF0, &qword_1BE0BDC00);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BEE8, &unk_1BE104170);
      v11 = *v5;
      result = sub_1BD149A00(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE54C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE80, &unk_1BE0BDB70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E00, &qword_1BE0DD690);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BE80, &unk_1BE0BDB70);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BD148F70(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
      result = sub_1BD1B61AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {
        v7, v19, v20, v21, v22, v23, v24, v25;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED8, &unk_1BE1086B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEE0, &unk_1BE0BDBF0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BED8, &unk_1BE1086B0);
      v11 = *v5;
      result = sub_1BD149A9C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AE91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF40, &qword_1BE0BDC58);
    v3 = sub_1BE053A04();
    sub_1BE048964();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1BE048C84();
      result = sub_1BD148F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AEA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70, &qword_1BE0BDB60);
    v3 = sub_1BE053A04();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1BD0DE19C(i, &v11, &qword_1EBD3BE78, &qword_1BE0BDB68);
      v5 = v11;
      result = sub_1BD149084(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BD1B6150(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AEB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC8, &qword_1BE10D500);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BED0, &unk_1BE0BDBE0);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BEC8, &qword_1BE10D500);
      v11 = *v5;
      result = sub_1BD149AE0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BD1AED20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEB8, &qword_1BE0BDBC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEC0, &unk_1BE0BDBD0);
    v7 = sub_1BE053A04();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v8, v5, &qword_1EBD3BEB8, &qword_1BE0BDBC8);
      result = sub_1BD14BC7C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[7];
      v14 = sub_1BE048C04();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v22 = v7[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v7[2] = v24;
      v8 += v9;
      if (!--v6)
      {
        v7, v15, v16, v17, v18, v19, v20, v21;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1BD1AEEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

  v8 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a3);
  v9 = [objc_opt_self() sharedService];
  v10 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v11 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:v9 paymentServiceDataProvider:v10 detailViewStyle:v8 context:0];

  v12 = [v11 viewControllerForTransaction:a1 sourceCollection:v7 familyCollection:0 account:a2 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:0 navigationController:0];
  v13 = [v12 navigationItem];
  [v13 setLargeTitleDisplayMode_];

  return v12;
}

void sub_1BD1AF078(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = type metadata accessor for SavingsBankVerificationView(0);
  MEMORY[0x1EEE9AC00](v8);
  v294 = &v291 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  v299 = v10;
  v300 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v293 = &v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v292 = &v291 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v291 = &v291 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v291 - v18;
  v298 = sub_1BE04A474();
  v295 = *(v298 - 8);
  v20 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v296 = &v291 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v297 = &v291 - v22;
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v24 = OBJC_IVAR____PKAccountSavingsViewController_configuration;
  v25 = a2;
  v26 = *(a2 + OBJC_IVAR____PKAccountSavingsViewController_configuration);
  v301 = a3;
  sub_1BE048964();
  v27 = a4;
  v28 = [v26 account];
  if (!v28)
  {

    goto LABEL_10;
  }

  v302 = v28;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if (a1 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if ((a1 - 4) < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 6)
    {
      if (a1 != 7)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    v62 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BE0B7020;
    *(v63 + 32) = v302;
    sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
    v64 = v302;
    v65 = sub_1BE052724();
    v63, v66, v67, v68, v69, v70, v71, v72;
    [v62 setAccounts_];

    v73 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v82 = Strong;
      sub_1BD1A55A4([v27 destination], v73);
      v23, v83, v84, v85, v86, v87, v88, v89;

LABEL_26:
      return;
    }

    v23, v75, v76, v77, v78, v79, v80, v81;

    goto LABEL_46;
  }

  if (a1 <= 10)
  {
    if (a1 == 8)
    {
      v90 = [*(v25 + v24) transaction];
      if (v90)
      {
        v91 = v90;
        v92 = [*(v25 + v24) viewStyle];
        v93 = sub_1BD1AEEFC(v91, v302, v92);
        swift_beginAccess();
        v94 = swift_unknownObjectWeakLoadStrong();
        if (v94)
        {
          v102 = v94;
          sub_1BD1A55A4([v27 destination], v93);
          v23, v103, v104, v105, v106, v107, v108, v109;

          return;
        }

        v23, v95, v96, v97, v98, v99, v100, v101;

        goto LABEL_57;
      }

      sub_1BE04D1E4();
      v181 = sub_1BE04D204();
      v182 = sub_1BE052C34();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_1BD026000, v181, v182, "Attempted to present transaction without transaction", v183, 2u);
        MEMORY[0x1BFB45F20](v183, -1, -1);
      }

      (*(v300 + 8))(v19, v299);
      goto LABEL_56;
    }

    if (a1 != 9)
    {
      goto LABEL_20;
    }

    v123 = [*(v25 + v24) rewardsDateComponents];
    if (!v123)
    {
      v188 = v291;
      sub_1BE04D1E4();
      v189 = sub_1BE04D204();
      v190 = sub_1BE052C34();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_1BD026000, v189, v190, "Attempted to present rewards without date components", v191, 2u);
        MEMORY[0x1BFB45F20](v191, -1, -1);
      }

      (*(v300 + 8))(v188, v299);
      goto LABEL_56;
    }

    v124 = v297;
    v125 = v123;
    sub_1BE04A424();

    v126 = [*(v25 + v24) viewStyle];
    v127 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
    v128 = [v127 initWithAccount_];
    v129 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

    v130 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
    v131 = objc_allocWithZone(MEMORY[0x1E69B8788]);
    v132 = v129;
    v133 = [v131 initWithTransactionSourceCollection:v132 paymentDataProvider:v130];

    if (v133)
    {
      v134 = v295;
      v135 = *(v295 + 16);
      v301 = v126;
      v136 = v298;
      v135(v296, v124, v298);
      v137 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v138 = (v20 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
      v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
      v140 = swift_allocObject();
      *(v140 + 16) = v301;
      *(v140 + 24) = v133;
      (*(v134 + 32))(v140 + v137, v296, v136);
      *(v140 + v138) = v132;
      *(v140 + v139) = v302;
      v141 = (v140 + ((v139 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v141 = sub_1BD1B6D18;
      v141[1] = v23;
      v308 = sub_1BD1B6FE8;
      v309 = v140;
      aBlock = MEMORY[0x1E69E9820];
      v305 = 1107296256;
      v306 = sub_1BD56AD40;
      v307 = &block_descriptor_340;
      v142 = _Block_copy(&aBlock);
      v143 = v309;
      v144 = v302;
      v145 = v132;
      v146 = v133;
      sub_1BE048964();
      v143, v147, v148, v149, v150, v151, v152, v153;
      [v146 reloadTransactionsWithCompletion_];
      _Block_release(v142);

      (*(v134 + 8))(v297, v298);
    }

    else
    {

      (*(v295 + 8))(v124, v298);
    }

LABEL_10:
    v23, v29, v30, v31, v32, v33, v34, v35;
    return;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      v154 = [*(v25 + v24) fundingSource];
      if (v154)
      {
        v155 = v154;
        KeyPath = swift_getKeyPath();
        v157 = v294;
        *&v294[*(v8 + 32)] = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
        swift_storeEnumTagMultiPayload();
        v158 = v302;
        *v157 = v302;
        *(v157 + 1) = v155;
        LOBYTE(v311) = 0;
        v159 = v158;
        v160 = v155;
        sub_1BE051694();
        v161 = v305;
        v157[16] = aBlock;
        *(v157 + 3) = v161;
        *(v157 + 4) = sub_1BD87F37C;
        *(v157 + 5) = 0;
        v157[48] = 0;
        v162 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020, &qword_1BE0BDDB0));
        v163 = sub_1BE04F894();
        swift_beginAccess();
        v164 = swift_unknownObjectWeakLoadStrong();
        if (v164)
        {
          v172 = v164;
          sub_1BD1A55A4([v27 destination], v163);
          v23, v173, v174, v175, v176, v177, v178, v179;
        }

        else
        {
          v23, v165, v166, v167, v168, v169, v170, v171;
        }

        return;
      }

      goto LABEL_42;
    }

    if (a1 != 13)
    {
LABEL_42:
      v23, v29, v30, v31, v32, v33, v34, v35;
      v180 = v302;

      return;
    }

LABEL_20:
    [*(v25 + v24) copy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD3C038, off_1E8004620);
    if (swift_dynamicCast())
    {
      v43 = v311;
      [v311 setDestination_];
      v44 = [objc_allocWithZone(PKSavingsAccountDetailsViewController) initWithConfiguration_];

      swift_beginAccess();
      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v53 = v45;
        v54 = v44;
        sub_1BD1A55A4([v27 destination], v54);
        v23, v55, v56, v57, v58, v59, v60, v61;

        return;
      }

      v23, v46, v47, v48, v49, v50, v51, v52;

      goto LABEL_57;
    }

LABEL_56:
    v23, v36, v37, v38, v39, v40, v41, v42;
LABEL_57:

    return;
  }

  v110 = [v28 savingsDetails];
  if (!v110)
  {
    v184 = v292;
    sub_1BE04D1E4();
    v185 = sub_1BE04D204();
    v186 = sub_1BE052C34();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&dword_1BD026000, v185, v186, "Attempted to present FCC step up without account details", v187, 2u);
      MEMORY[0x1BFB45F20](v187, -1, -1);
    }

    (*(v300 + 8))(v184, v299);
    goto LABEL_56;
  }

  v111 = v110;
  if (([v110 fccStepUpRequired] & 1) != 0 && objc_msgSend(v302, sel_state) != 4)
  {
    v192 = type metadata accessor for SavingsFCCStepUpController();
    v193 = objc_allocWithZone(v192);
    *&v193[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
    v194 = v302;
    *&v193[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v302;
    v310.receiver = v193;
    v310.super_class = v192;
    v195 = v194;
    v196 = objc_msgSendSuper2(&v310, sel_init);
    v197 = swift_allocObject();
    v197[2] = sub_1BD1B6D18;
    v197[3] = v23;
    v198 = *&v196[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
    swift_retain_n();
    v199 = [v198 savingsDetails];
    if (v199)
    {
      v200 = v199;
      v201 = [v199 fccStepUpDetails];

      if (!v201 || (v202 = [v201 thresholdExceeded], v201, (v202 & 1) == 0))
      {
        v216 = swift_allocObject();
        v216[2] = sub_1BD1B6F54;
        v216[3] = v197;
        sub_1BE048964();
        v217 = sub_1BD8BD4F8();
        if (!v217)
        {

          v197, v242, v243, v244, v245, v246, v247, v248;

          v216, v249, v250, v251, v252, v253, v254, v255;
          return;
        }

        v64 = v217;
        v218 = swift_allocObject();
        *(v218 + 16) = sub_1BD1B6F4C;
        *(v218 + 24) = v216;
        v308 = sub_1BD1B6F50;
        v309 = v218;
        aBlock = MEMORY[0x1E69E9820];
        v305 = 1107296256;
        v306 = sub_1BD14E1D8;
        v307 = &block_descriptor_333;
        v219 = _Block_copy(&aBlock);
        v220 = v309;
        sub_1BE048964();
        v220, v221, v222, v223, v224, v225, v226, v227;
        [v64 nextViewControllerWithCompletion_];
        v216, v228, v229, v230, v231, v232, v233, v234;
        _Block_release(v219);

        v197, v235, v236, v237, v238, v239, v240, v241;

        goto LABEL_46;
      }

      v203 = type metadata accessor for SavingsFCCStepUpClosureViewController();
      v204 = objc_allocWithZone(v203);
      *&v204[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v196;
      v303.receiver = v204;
      v303.super_class = v203;
      v205 = v196;
      v206 = objc_msgSendSuper2(&v303, sel_initWithContext_, 0);
      if (v206)
      {
        v207 = v206;
        v64 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
        swift_beginAccess();
        v208 = swift_unknownObjectWeakLoadStrong();
        if (v208)
        {
          v82 = v208;
          sub_1BD1A55A4([v27 destination], v64);

          v197, v209, v210, v211, v212, v213, v214, v215;

          goto LABEL_26;
        }

        v197, v256, v257, v258, v259, v260, v261, v262;

LABEL_46:
        return;
      }
    }

    else
    {

      v301, v263, v264, v265, v266, v267, v268, v269;
      v23, v270, v271, v272, v273, v274, v275, v276;
      __break(1u);
    }

    v301, v277, v278, v279, v280, v281, v282, v283;
    v23, v284, v285, v286, v287, v288, v289, v290;
    __break(1u);
    return;
  }

  v112 = v293;
  sub_1BE04D1E4();
  v113 = sub_1BE04D204();
  v114 = sub_1BE052C34();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1BD026000, v113, v114, "Attempted to present FCC step up when its no longer required", v115, 2u);
    MEMORY[0x1BFB45F20](v115, -1, -1);
  }

  (*(v300 + 8))(v112, v299);
  v23, v116, v117, v118, v119, v120, v121, v122;
}