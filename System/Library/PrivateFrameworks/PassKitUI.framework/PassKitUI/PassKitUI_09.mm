uint64_t type metadata accessor for PaymentPassBillingAddressSection(uint64_t a1)
{
  result = qword_1EBD39C50;
  if (!qword_1EBD39C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1295DC(uint64_t a1)
{
  type metadata accessor for Passes(319);
  if (v1 <= 0x3F)
  {
    sub_1BD12967C();
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

void sub_1BD12967C()
{
  if (!qword_1EBD392F8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD392F8);
    }
  }
}

id sub_1BD1296E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C60, &qword_1BE0B97D8);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = v1 + *(type metadata accessor for PaymentPassBillingAddressSection(0) + 20);
  v11 = *(v10 + 48);
  v37 = *(v10 + 32);
  v38 = v11;
  v39 = *(v10 + 64);
  v12 = *(v10 + 16);
  v35 = *v10;
  v36 = v12;
  if (v38)
  {
    v24 = a1;
    v13 = *(v10 + 16);
    v31[0] = *v10;
    v31[1] = v13;
    v31[2] = *(v10 + 32);
    v32 = v38;
    v33 = *(v10 + 56);
    v34 = *(v10 + 72);
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3);
    v30[2] = v37;
    v30[3] = v38;
    v30[4] = v39;
    v30[0] = v35;
    v30[1] = v36;
    sub_1BD12B1D0(v30, &v26);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v18 = v17;

      (*(v4 + 8))(v6, v3);
      v26 = v16;
      v27 = v18;
      sub_1BD0DDEBC();
      v26 = sub_1BE0506C4();
      v27 = v19;
      v28 = v20 & 1;
      v29 = v21;
      MEMORY[0x1EEE9AC00](v26);
      *(&v24 - 2) = v31;
      *(&v24 - 1) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C68, &qword_1BE0B97E0);
      sub_1BD12B234();
      sub_1BE051A24();
      sub_1BD0DE53C(&v35, &qword_1EBD395E0, &qword_1BE0B8830);
      v22 = v24;
      (*(v25 + 32))(v24, v9, v7);
      return (*(v25 + 56))(v22, 0, 1, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *(v25 + 56);

    return v23(a1, 1, 1, v7);
  }

  return result;
}

uint64_t sub_1BD129A98@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CB0, &qword_1BE0B9808);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v50 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CD8, &qword_1BE0B9828);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CA0, &unk_1BE0B97F8);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C80, &qword_1BE0B97E8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v50 - v15;
  if (*(a1 + 4))
  {
    sub_1BD12A044(a1, v6);
    v17 = &v6[*(v54 + 36)];
    __asm { FMOV            V0.2D, #16.0 }

    *v17 = _Q0;
    *(v17 + 1) = _Q0;
    v17[32] = 0;
    v23 = &qword_1EBD39CB0;
    v24 = &qword_1BE0B9808;
    sub_1BD0DE19C(v6, v8, &qword_1EBD39CB0, &qword_1BE0B9808);
    swift_storeEnumTagMultiPayload();
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &qword_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &qword_1BE0B9808, sub_1BD12B4B0);
    sub_1BE04F9A4();
    v25 = v6;
  }

  else
  {
    sub_1BD12B6EC(a2, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassBillingAddressSection);
    v26 = (*(v13 + 80) + 96) & ~*(v13 + 80);
    v27 = swift_allocObject();
    v28 = a1[3];
    v27[3] = a1[2];
    v27[4] = v28;
    v27[5] = a1[4];
    v29 = a1[1];
    v27[1] = *a1;
    v27[2] = v29;
    v30 = sub_1BD12B598(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = a1;
    sub_1BD12B1D0(a1, v56);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CE0, &unk_1BE0B9830);
    sub_1BD0DE4F4(&qword_1EBD39CE8, &qword_1EBD39CE0, &unk_1BE0B9830, MEMORY[0x1E69817F8]);
    sub_1BE051704();
    sub_1BE052434();
    v32 = v31;
    sub_1BD0DE4F4(&qword_1EBD39C98, &qword_1EBD39CA0, &unk_1BE0B97F8, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v27, v33, v34, v35, v36, v37, v38, v39;
    v32, v40, v41, v42, v43, v44, v45, v46;
    (*(v51 + 8))(v11, v9);
    v47 = &v16[*(v52 + 36)];
    __asm { FMOV            V0.2D, #16.0 }

    *v47 = _Q0;
    *(v47 + 1) = _Q0;
    v47[32] = 0;
    v23 = &qword_1EBD39C80;
    v24 = &qword_1BE0B97E8;
    sub_1BD0DE19C(v16, v8, &qword_1EBD39C80, &qword_1BE0B97E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &qword_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &qword_1BE0B9808, sub_1BD12B4B0);
    sub_1BE04F9A4();
    v25 = v16;
  }

  return sub_1BD0DE53C(v25, v23, v24);
}

uint64_t sub_1BD12A044@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CD0, &unk_1BE0B9818);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v51 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF0, "ԥ\t");
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = type metadata accessor for BillingAddressPicker(0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  sub_1BD0DE19C(v2, &v51 - v19, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD12B6EC(v2, &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassBillingAddressSection);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v54 = swift_allocObject();
  sub_1BD12B598(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v21);
  v22 = *(v13 + 40);
  v23 = (v2 + *(v13 + 36));
  v24 = v23[1];
  v52 = *v23;
  v25 = v2 + v22;
  v26 = *(v2 + v22);
  v27 = *(v25 + 8);
  v53 = v26;
  v28 = v16[10];
  *&v20[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for BillingAddressPicker.EditorInfo(0);
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  sub_1BD0DE19C(v11, v8, &qword_1EBD39CF0, "ԥ\t");
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v11, &qword_1EBD39CF0, "ԥ\t");
  v30 = &v20[v16[5]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v20[v16[6]];
  v32 = a1[3];
  *(v31 + 2) = a1[2];
  *(v31 + 3) = v32;
  *(v31 + 4) = a1[4];
  v33 = a1[1];
  *v31 = *a1;
  *(v31 + 1) = v33;
  v34 = &v20[v16[7]];
  v35 = v54;
  v36 = v55;
  *v34 = sub_1BD12B668;
  v34[1] = v35;
  v37 = &v20[v16[8]];
  *v37 = v52;
  *(v37 + 1) = v24;
  v38 = &v20[v16[9]];
  *v38 = v53;
  *(v38 + 1) = v27;
  sub_1BD12B6EC(v20, v36, type metadata accessor for BillingAddressPicker);
  v61 = a1;
  sub_1BD12B1D0(a1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D00, &qword_1BE0B9880);
  sub_1BD12B75C();
  sub_1BD12B9D4(&qword_1EBD39D28, type metadata accessor for BillingAddressPicker, &unk_1BE0FA720);
  v39 = v57;
  sub_1BE04E8B4();
  sub_1BE052434();
  v41 = v40;
  sub_1BD0DE4F4(&qword_1EBD39CC8, &qword_1EBD39CD0, &unk_1BE0B9818, MEMORY[0x1E697C090]);
  v42 = v58;
  sub_1BE050DE4();
  v41, v43, v44, v45, v46, v47, v48, v49;
  (*(v59 + 8))(v39, v42);
  return sub_1BD12B8C0(v20);
}

void sub_1BD12A58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v5 = 0;
  v6 = *(a2 + *(v4 + 36));
  if (*(a1 + 16) <= 1u)
  {
    v8 = *a1;
    v7 = *a1;
    v5 = v8;
  }

  v9 = v5;
  v6(a2);
}

uint64_t sub_1BD12A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D30, &qword_1BE0B9890);
  return sub_1BD12A688(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD12A688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D38, &qword_1BE0B9898);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D40, &qword_1BE0B98A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D48, &qword_1BE0B98A8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v38 - v8;
  v40 = sub_1BE04C894();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE04C764();
  v47 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D50, &qword_1BE0B98B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v46 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v38 - v18;
  v20 = *a1;
  v19 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v48 = 0uLL;
      v49 = 2;
      v50 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
      sub_1BD12B7E8();
      sub_1BD12B86C();
      sub_1BE04F9A4();
      v25 = *(&v51 + 1);
      v24 = v51;
      v26 = v52;
      v27 = v53;
      (*(v10 + 104))(v12, *MEMORY[0x1E69BC9F0], v40);
      sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12B91C, sub_1BD12B91C);
      sub_1BE04C754();
      v32 = v47;
      v33 = v4;
      v28 = v42;
      (*(v47 + 16))(v33, v14, v42);
      swift_storeEnumTagMultiPayload();
      sub_1BD12B920();
      sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960], MEMORY[0x1E69BC958]);
      v31 = v45;
      sub_1BE04F9A4();
      goto LABEL_13;
    }

    *&v48 = *a1;
    *(&v48 + 1) = v19;
    v49 = 257;
    sub_1BD04E4D8(v20, v19, 1);
    sub_1BD12B86C();
    v21 = v20;
    v22 = v19;
    v38 = v5;
    sub_1BE04F9A4();
    if (HIBYTE(v52))
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v48 = v51;
    v49 = v23 | v52;
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
    v39 = v4;
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v20, v19, 1);
    v25 = *(&v51 + 1);
    v24 = v51;
    v26 = v52;
    v27 = v53;
    (*(v10 + 104))(v12, *MEMORY[0x1E69BC9F8], v40);
    sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12B91C, sub_1BD12B91C);
    sub_1BE04C754();
    v28 = v42;
    (*(v47 + 16))(v7, v14, v42);
  }

  else
  {
    v48 = v20;
    v49 = 0;
    sub_1BD04E4D8(v20, v19, 0);
    sub_1BD12B86C();
    v29 = v20;
    v38 = v5;
    sub_1BE04F9A4();
    if (HIBYTE(v52))
    {
      v30 = 256;
    }

    else
    {
      v30 = 0;
    }

    v48 = v51;
    v49 = v30 | v52;
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
    v39 = v4;
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v20, v19, 0);
    v25 = *(&v51 + 1);
    v24 = v51;
    v26 = v52;
    v27 = v53;
    (*(v10 + 104))(v12, *MEMORY[0x1E69BCA00], v40);
    sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12B91C, sub_1BD12B91C);
    sub_1BE04C754();
    v28 = v42;
    (*(v47 + 16))(v7, v14, v42);
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960], MEMORY[0x1E69BC958]);
  sub_1BE04F9A4();
  sub_1BD0DE19C(v9, v39, &qword_1EBD39D48, &qword_1BE0B98A8);
  swift_storeEnumTagMultiPayload();
  sub_1BD12B920();
  v31 = v45;
  sub_1BE04F9A4();
  v32 = v47;
  sub_1BD0DE53C(v9, &qword_1EBD39D48, &qword_1BE0B98A8);
LABEL_13:
  (*(v32 + 8))(v14, v28);
  v34 = v46;
  sub_1BD0DE19C(v31, v46, &qword_1EBD39D50, &qword_1BE0B98B0);
  v35 = v41;
  *v41 = v24;
  v35[1] = v25;
  *(v35 + 8) = v26;
  *(v35 + 18) = v27;
  v35[3] = 0;
  *(v35 + 32) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D68, &qword_1BE0B98B8);
  sub_1BD0DE19C(v34, v35 + *(v36 + 64), &qword_1EBD39D50, &qword_1BE0B98B0);
  sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12B91C, sub_1BD12B91C);
  sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12BA34, sub_1BD12BA34);
  sub_1BD0DE53C(v31, &qword_1EBD39D50, &qword_1BE0B98B0);
  sub_1BD0DE53C(v34, &qword_1EBD39D50, &qword_1BE0B98B0);
  return sub_1BD12BA1C(v24, v25, v26, v27, sub_1BD12BA34, sub_1BD12BA34);
}

double sub_1BD12AFA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v4 = v3;
      sub_1BD12B86C();
      v5 = v4;
      sub_1BE04F9A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
      sub_1BD12B7E8();
      sub_1BE04F9A4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
      sub_1BD12B7E8();
      sub_1BD12B86C();
      sub_1BE04F9A4();
    }
  }

  else
  {
    v6 = *(a1 + 8);
    sub_1BD04E4D8(v3, v6, 0);
    sub_1BD12B86C();
    v7 = v3;
    sub_1BE04F9A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39D18, &qword_1BE0B9888);
    sub_1BD12B7E8();
    sub_1BE04F9A4();
    sub_1BD0D455C(v3, v6, 0);
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 18) = v11;
  return result;
}

unint64_t sub_1BD12B234()
{
  result = qword_1EBD39C70;
  if (!qword_1EBD39C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C68, &qword_1BE0B97E0);
    sub_1BD12B318(&qword_1EBD39C78, &qword_1EBD39C80, &qword_1BE0B97E8, sub_1BD12B3C8);
    sub_1BD12B318(&qword_1EBD39CA8, &qword_1EBD39CB0, &qword_1BE0B9808, sub_1BD12B4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C70);
  }

  return result;
}

uint64_t sub_1BD12B318(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD12B3C8()
{
  result = qword_1EBD39C88;
  if (!qword_1EBD39C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C90, &qword_1BE0B97F0);
    sub_1BD0DE4F4(&qword_1EBD39C98, &qword_1EBD39CA0, &unk_1BE0B97F8, MEMORY[0x1E697D680]);
    sub_1BD12B9D4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C88);
  }

  return result;
}

unint64_t sub_1BD12B4B0()
{
  result = qword_1EBD39CB8;
  if (!qword_1EBD39CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39CC0, &qword_1BE0B9810);
    sub_1BD0DE4F4(&qword_1EBD39CC8, &qword_1EBD39CD0, &unk_1BE0B9818, MEMORY[0x1E697C090]);
    sub_1BD12B9D4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39CB8);
  }

  return result;
}

uint64_t sub_1BD12B598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassBillingAddressSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD12B5FC()
{
  v1 = *(type metadata accessor for PaymentPassBillingAddressSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80));

  sub_1BD12A58C(v0 + 16, v2);
}

uint64_t sub_1BD12B6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD12B75C()
{
  result = qword_1EBD39D08;
  if (!qword_1EBD39D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D00, &qword_1BE0B9880);
    sub_1BD12B7E8();
    sub_1BD12B86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D08);
  }

  return result;
}

unint64_t sub_1BD12B7E8()
{
  result = qword_1EBD39D10;
  if (!qword_1EBD39D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D18, &qword_1BE0B9888);
    sub_1BD12B86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D10);
  }

  return result;
}

unint64_t sub_1BD12B86C()
{
  result = qword_1EBD39D20;
  if (!qword_1EBD39D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D20);
  }

  return result;
}

uint64_t sub_1BD12B8C0(uint64_t a1)
{
  v2 = type metadata accessor for BillingAddressPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD12B920()
{
  result = qword_1EBD39D58;
  if (!qword_1EBD39D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D48, &qword_1BE0B98A8);
    sub_1BD12B9D4(&qword_1EBD39D60, MEMORY[0x1E69BC960], MEMORY[0x1E69BC958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D58);
  }

  return result;
}

uint64_t sub_1BD12B9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD12BA1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    return a6(a1, a2, a3);
  }

  else
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }
}

unint64_t sub_1BD12BA38()
{
  result = qword_1EBD39D70;
  if (!qword_1EBD39D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39D78, &unk_1BE0B98C0);
    sub_1BD12BABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D70);
  }

  return result;
}

unint64_t sub_1BD12BABC()
{
  result = qword_1EBD39D80;
  if (!qword_1EBD39D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C60, &qword_1BE0B97D8);
    sub_1BD12B234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D80);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferSelectedInstallmentDetailView(uint64_t a1)
{
  result = qword_1EBD39D88;
  if (!qword_1EBD39D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD12BBC8(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD38840, 0x1E696AB90);
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD496B0, 0x1E69B8CE8);
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98, 0x1E69B8C90);
        if (v4 <= 0x3F)
        {
          sub_1BD12BDCC(319);
          if (v5 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v6 <= 0x3F)
            {
              sub_1BD12BE34(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1BD12BE34(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1BD12BE34(319, &qword_1EBD39340, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
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

void sub_1BD12BDCC(uint64_t a1)
{
  if (!qword_1EBD39DA0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD39DA8, 0x1E69B9200);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39DA0);
    }
  }
}

void sub_1BD12BE34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD12BEB4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1BE04FF64();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE04FE84();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DB8, &qword_1BE0B9980);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DC0, &qword_1BE0B9988);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DC8, &qword_1BE0B9990);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v46 = v45 - v13;
  v57 = v1;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DD0, &qword_1BE0B9998);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DD8, &unk_1BE0B99A0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE0, &unk_1BE104F90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE8, &qword_1BE0B99B0);
  v17 = sub_1BD12DCD8();
  v60 = v16;
  *&v61 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28, &unk_1BE0B99D0);
  v20 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
  v60 = v19;
  *&v61 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v60 = v14;
  *&v61 = v15;
  *(&v61 + 1) = OpaqueTypeConformance2;
  v62 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EC04();
  v22 = (v45[2] + *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0) + 56));
  v24 = *v22;
  v23 = v22[1];
  v58 = v24;
  v59 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0, &qword_1BE0B86F8);
  sub_1BE0516C4();
  v25 = v61;
  v26 = &v8[*(v6 + 36)];
  *v26 = v60;
  *(v26 + 8) = v25;
  sub_1BE04FE74();
  v27 = sub_1BD12DE48();
  v28 = sub_1BD12E820(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v29 = v48;
  sub_1BE0507D4();
  (*(v50 + 8))(v5, v29);
  sub_1BD04E694(v8);
  v30 = v53;
  sub_1BE04FF54();
  v60 = v6;
  *&v61 = v29;
  *(&v61 + 1) = v27;
  v62 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v33 = v46;
  v32 = v47;
  sub_1BE050D14();
  (*(v54 + 8))(v30, v55);
  (*(v49 + 8))(v10, v32);
  sub_1BE052434();
  v35 = v34;
  v60 = v32;
  *&v61 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v51;
  sub_1BE050DE4();
  v35, v37, v38, v39, v40, v41, v42, v43;
  return (*(v52 + 8))(v33, v36);
}

uint64_t sub_1BD12C488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v3 = sub_1BE04F434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE8, &qword_1BE0B99B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DD8, &unk_1BE0B99A0);
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v27 - v11;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E58, &qword_1BE0B99E8);
  sub_1BD0DE4F4(&qword_1EBD39E60, &qword_1EBD39E58, &qword_1BE0B99E8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E00, &qword_1BE0B99B8) + 36)];
  v14 = v40;
  *(v13 + 4) = v39;
  *(v13 + 5) = v14;
  *(v13 + 6) = v41;
  v15 = v36;
  *v13 = v35;
  *(v13 + 1) = v15;
  v16 = v38;
  *(v13 + 2) = v37;
  *(v13 + 3) = v16;
  v17 = sub_1BE051274();
  v18 = sub_1BE0501D4();
  v19 = sub_1BE051CD4();
  v20 = &v9[*(v7 + 36)];
  *v20 = v17;
  v20[8] = v18;
  *(v20 + 2) = v19;
  *(v20 + 3) = v21;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C438], v3);
  v22 = sub_1BD12DCD8();
  sub_1BE050E84();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v9, &qword_1EBD39DE8, &qword_1BE0B99B0);
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0, &unk_1BE104F90);
  v33 = v7;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28, &unk_1BE0B99D0);
  v24 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
  v33 = v23;
  v34 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_1BE051024();
  return (*(v10 + 8))(v12, v25);
}

uint64_t sub_1BD12C8E8(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28, &unk_1BE0B99D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68, &unk_1BE0B99F0);
  sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD12CAD4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD12DF18(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD12E5D0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78, &unk_1BE0B9A00);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

void sub_1BD12CC28()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B98D0;
  v2 = *MEMORY[0x1E69BB6E0];
  v3 = *MEMORY[0x1E69BB6C0];
  *(v1 + 32) = *MEMORY[0x1E69BB6E0];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E69BB6F8];
  *(v1 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_1BE052724();
  v1, v9, v10, v11, v12, v13, v14, v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v17 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v18 = sub_1BE052434();
  v19 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v18;
  *(inited + 48) = v20;
  v21 = *v19;
  *(inited + 56) = *v19;
  v22 = sub_1BE052434();
  v23 = MEMORY[0x1E69BA440];
  *(inited + 64) = v22;
  *(inited + 72) = v24;
  v25 = *v23;
  *(inited + 80) = *v23;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v26;
  v27 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v28 = v17;
  v29 = v21;
  v30 = v25;
  v31 = v27;
  *(inited + 112) = sub_1BD12E074();
  *(inited + 120) = v32;
  v33 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD12E820(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v34 = sub_1BE052224();
  v33, v35, v36, v37, v38, v39, v40, v41;
  [v0 subjects:v8 sendEvent:v34];
}

uint64_t sub_1BD12CF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

id sub_1BD12CF5C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1BD12D0C0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E90, &qword_1BE0B9A28);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v60 - v8);
  v10 = type metadata accessor for PassHeaderView(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0, &qword_1BE0B8820);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - v18;
  v20 = [*a1 paymentPass];
  if (v20)
  {
    v21 = v20;
    *v9 = v20;
    v22 = type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    v23 = v21;
    v24 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (v24)
    {
      v25 = v24;
      v26 = sub_1BE052434();
      v28 = v27;
    }

    else
    {

      v26 = 0;
      v28 = 0;
    }

    sub_1BD0DE19C(v9, v13, &unk_1EBD43B90, &unk_1BE0B89D0);
    v30 = &v13[v10[5]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v13[v10[6]];
    *v31 = v26;
    v31[1] = v28;
    v32 = &v13[v10[7]];
    *v32 = 0;
    *(v32 + 1) = 0;
    sub_1BD0DE53C(v9, &unk_1EBD43B90, &unk_1BE0B89D0);
    *&v13[v10[8]] = 0x4059000000000000;
    v29 = v19;
    sub_1BD12E5D0(v13, v19, type metadata accessor for PassHeaderView);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v19, 1, 1, v10);
    v29 = v19;
  }

  v33 = [a1[5] programName];
  if (v33)
  {
    v34 = v33;
    sub_1BE052434();
    v36 = v35;

    v37 = sub_1BE0524C4();
    v39 = v38;
    v36, v38, v40, v41, v42, v43, v44, v45;
    v68 = v37;
    v69 = v39;
    sub_1BD0DDEBC();
    v33 = sub_1BE0506C4();
    v49 = v48 & 1;
  }

  else
  {
    v46 = 0;
    v49 = 0;
    v47 = 0;
  }

  v68 = v33;
  v69 = v46;
  v70 = v49;
  v71 = v47;
  MEMORY[0x1EEE9AC00](v33);
  *(&v60 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39EA0, &qword_1BE0B9A38);
  sub_1BD12E194();
  sub_1BD12E210();
  v50 = v63;
  sub_1BE051A24();
  v51 = v62;
  sub_1BD0DE19C(v29, v62, &qword_1EBD395D0, &qword_1BE0B8820);
  v53 = v66;
  v52 = v67;
  v54 = *(v66 + 16);
  v55 = v64;
  v54(v64, v50, v67);
  v61 = v29;
  v56 = v65;
  sub_1BD0DE19C(v51, v65, &qword_1EBD395D0, &qword_1BE0B8820);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39ED0, &qword_1BE0B9A58);
  v54((v56 + *(v57 + 48)), v55, v52);
  v58 = *(v53 + 8);
  v58(v50, v52);
  sub_1BD0DE53C(v61, &qword_1EBD395D0, &qword_1BE0B8820);
  v58(v55, v52);
  return sub_1BD0DE53C(v51, &qword_1EBD395D0, &qword_1BE0B8820);
}

double sub_1BD12D68C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = a1[6];
  v7 = a1[7];
  v36 = v6;
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88, &qword_1BE0B9A20);
  sub_1BE0516A4();
  v8 = [v35 selectedInstallmentOffer];

  if (!v8)
  {
    v9 = 0;
LABEL_8:
    v23 = 0;
    v27 = 0;
    v11 = 0;
    v28 = 0;
    v21 = 0;
    v22 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  v36 = v6;
  v37 = v7;
  sub_1BE0516A4();
  v9 = [v35 installmentAssessment];

  if (!v9)
  {

    v8 = 0;
    goto LABEL_8;
  }

  v10 = a1[1];
  v33 = a1[2];
  v11 = a1[3];
  v37 = *(a1 + *(v4 + 56) + 8);
  v32 = v8;
  v31 = v9;
  v30 = v10;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0, &qword_1BE0B86F8);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  v36 = v35;
  sub_1BD12E820(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, &protocol conformance descriptor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  LODWORD(KeyPath) = v35[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading];

  sub_1BD12DF18(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_1BD12E5D0(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  LOBYTE(v36) = 1;
  v22 = sub_1BE0511D4();

  v23 = v30;
  v24 = v36;
  LOBYTE(v36) = 0;
  v25 = 256;
  if (!KeyPath)
  {
    v25 = 0;
  }

  v26 = v25 | v24;
  v27 = v33;
  v28 = sub_1BD12E378;
LABEL_9:
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v23;
  *(a2 + 24) = v27;
  *(a2 + 32) = v11;
  *(a2 + 40) = v26;
  *(a2 + 48) = v28;
  *(a2 + 56) = v21;
  *(a2 + 64) = v22;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  return result;
}

void sub_1BD12D9B4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 64));
  v8 = *v6;
  v7 = v6[1];
  v20[2] = v8;
  v20[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0, &qword_1BE0B86F8);
  sub_1BE0516A4();
  v9 = v20[1];
  v10 = *(a1 + 96);
  sub_1BD12DF18(a1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD12E5D0(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
  sub_1BD8C1B80(v10, 1, sub_1BD12E560, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
}

void *sub_1BD12DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v14 - v8);
  sub_1BD0DE19C(a1, v14 - v8, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v9;
    if (*v9)
    {

      return (*(a2 + 80))(0);
    }
  }

  else
  {
    sub_1BD12E5D0(v9, v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v11 = *(v6 + 1);
    (*(a2 + 80))(v11);
    if (v11)
    {
      v12 = [v11 installmentSelectedPaymentOffer];
      if (v12)
      {
        v13 = *(a2 + 56);
        v14[2] = *(a2 + 48);
        v14[3] = v13;
        v14[1] = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88, &qword_1BE0B9A20);
        sub_1BE0516B4();
      }
    }

    return sub_1BD12E638(v6);
  }

  return result;
}

unint64_t sub_1BD12DCD8()
{
  result = qword_1EBD39DF0;
  if (!qword_1EBD39DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DE8, &qword_1BE0B99B0);
    sub_1BD12DD90();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39DF0);
  }

  return result;
}

unint64_t sub_1BD12DD90()
{
  result = qword_1EBD39DF8;
  if (!qword_1EBD39DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E00, &qword_1BE0B99B8);
    sub_1BD0DE4F4(&qword_1EBD39E08, &qword_1EBD39E10, &unk_1BE0B99C0, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39DF8);
  }

  return result;
}

unint64_t sub_1BD12DE48()
{
  result = qword_1EBD39E38;
  if (!qword_1EBD39E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DB8, &qword_1BE0B9980);
    sub_1BD0DE4F4(&qword_1EBD39E40, &qword_1EBD39E48, &qword_1BE0B99E0, MEMORY[0x1E697C1A8]);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39E38);
  }

  return result;
}

uint64_t sub_1BD12DF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD12DF7C()
{
  v1 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD12CC28();
  return (*(v2 + 64))();
}

unint64_t sub_1BD12DFE4()
{
  result = qword_1EBD39E80;
  if (!qword_1EBD39E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E78, &unk_1BE0B9A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39E80);
  }

  return result;
}

uint64_t sub_1BD12E074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E88, &qword_1BE0B9A20);
  sub_1BE0516A4();
  v0 = [v11 installmentAssessment];

  if (v0)
  {
    v1 = [v0 offers];

    if (v1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
      v2 = sub_1BE052744();

      if (v2 >> 62)
      {
        sub_1BE053704();
      }

      v2, v3, v4, v5, v6, v7, v8, v9;
    }
  }

  return sub_1BE053B24();
}

unint64_t sub_1BD12E194()
{
  result = qword_1EBD512E0;
  if (!qword_1EBD512E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD512E0);
  }

  return result;
}

unint64_t sub_1BD12E210()
{
  result = qword_1EBD39EA8;
  if (!qword_1EBD39EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EA0, &qword_1BE0B9A38);
    sub_1BD12E294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EA8);
  }

  return result;
}

unint64_t sub_1BD12E294()
{
  result = qword_1EBD39EB0;
  if (!qword_1EBD39EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EB8, &qword_1BE0B9A40);
    sub_1BD0DE4F4(&qword_1EBD39EC0, &qword_1EBD39EC8, &unk_1BE0B9A48, &unk_1BE0CFA70);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EB0);
  }

  return result;
}

void sub_1BD12E378()
{
  v1 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD12D9B4(v2);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[3], v3, v4, v5, v6, v7, v8, v9;
  v2[7], v10, v11, v12, v13, v14, v15, v16;
  v2[9], v17, v18, v19, v20, v21, v22, v23;
  v2[11], v24, v25, v26, v27, v28, v29, v30;
  v2[12], v31, v32, v33, v34, v35, v36, v37;
  v38 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04E354();
    (*(*(v46 - 8) + 8))(v2 + v38, v46);
  }

  else
  {
    *(v2 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  v47 = (v2 + *(v1 + 56));

  v47[1], v48, v49, v50, v51, v52, v53, v54;

  return swift_deallocObject();
}

void *sub_1BD12E560(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD12DB14(a1, v4);
}

uint64_t sub_1BD12E5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD12E638(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD12E694()
{
  result = qword_1EBD39EE0;
  if (!qword_1EBD39EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39EE8, qword_1BE0B9A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DC0, &qword_1BE0B9988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39DB8, &qword_1BE0B9980);
    sub_1BE04FE84();
    sub_1BD12DE48();
    sub_1BD12E820(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD12E820(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39EE0);
  }

  return result;
}

uint64_t sub_1BD12E820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD12E92C()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v6 = v0;
  sub_1BD12FA50(1, v6, KeyPath, &OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate, sub_1BD12F81C, &qword_1EBD443C0, &qword_1EBD443C8);

  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v15 = sub_1BE04B9A4();
  (*(v2 + 8))(v4, v1);
  v16 = [objc_allocWithZone(PKPaymentReaderModeDetailsViewController) initWithProvisioningController:v14 context:v15 product:*&v6[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product] delegate:v6];

  if (v16)
  {
    sub_1BE052434();
    v18 = v17;
    v19 = v16;
    v20 = sub_1BE04BB74();
    v18, v21, v22, v23, v24, v25, v26, v27;
    [v19 setReporter_];
  }

  return v16;
}

uint64_t sub_1BD12EB18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD12EB54(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD12EBA4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v4 = [a1 fieldsModel];
  if (v4)
  {
    v5 = v4;
    v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_context);
    v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product);
    v8 = [a1 termsAccepted];
    CardFlowItem = type metadata accessor for ProvisioningReaderModeReadCardFlowItem();
    v10 = objc_allocWithZone(CardFlowItem);
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v11 = &v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_identifier];
    *v11 = 0xD00000000000001ALL;
    v11[1] = 0x80000001BE119B40;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator] = 0;
    v12 = &v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult];
    *v12 = 0;
    v12[8] = -1;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context] = v6;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_product] = v7;
    *&v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_fieldsModel] = v5;
    v10[OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_termsAccepted] = v8;
    v24.receiver = v10;
    v24.super_class = CardFlowItem;
    sub_1BE048964();
    v13 = v7;
    v14 = v5;
    v15 = objc_msgSendSuper2(&v24, sel_init);
    v16 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD865948(v2, &off_1F3B92EF8, v15, &off_1F3BC1840, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
LABEL_6:
    v23 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v19 = v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      v21 = swift_getObjectType();
      v25[0] = v23;
      v26 = 1;
      v22 = v23;
      sub_1BD865A00(v2, &off_1F3B92EF8, v25, v21, v20);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v25);
    }

    else
    {
    }
  }
}

void sub_1BD12EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), sub_1BD12FFE4);
  if (v4)
  {
    v5 = qword_1EBD3D980;
    v6 = off_1EBD3D988;
    v15[3] = &type metadata for ProvisioningScreenDebugConfigurationValue;
    v15[0] = a2;
    v7 = v4;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD6B04F0(v15, v5, v6);
    swift_endAccess();
    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void *sub_1BD12EFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B7020;
  *(v7 + 32) = a2;
  v6[2] = v7;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  inited[2] = a3;
  inited[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
  v9 = swift_initStackObject();
  v9[2] = inited;
  sub_1BE048964();
  sub_1BE048964();
  while (1)
  {
    sub_1BD6B0020(v6, &v33);
    if (!v33)
    {
      v17 = 0;
      goto LABEL_7;
    }

    if (v33[2] == a1)
    {
      break;
    }

    v33, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = v33;
LABEL_7:
  inited, v10, v11, v12, v13, v14, v15, v16;
  v9, v18, v19, v20, v21, v22, v23, v24;
  v6, v25, v26, v27, v28, v29, v30, v31;
  return v17;
}

void sub_1BD12F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a4);
  if (v5)
  {
    v6 = v5;
    v7 = qword_1EBD53DE0;
    v8 = off_1EBD53DE8;
    v20[3] = &type metadata for ProvisioningManualEntryOption;
    v9 = swift_allocObject();
    v20[0] = v9;
    v10 = *(a2 + 8);
    v22 = *(a2 + 16);
    v23 = v10;
    v21 = *(a2 + 24);
    v11 = *(a2 + 16);
    *(v9 + 16) = *a2;
    *(v9 + 32) = v11;
    *(v9 + 48) = *(a2 + 32);
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD12FBD4(&v23, v19);
    sub_1BD12FBD4(&v22, v19);
    sub_1BD12FBD4(&v21, v19);
    sub_1BD6B04F0(v20, v7, v8);
    swift_endAccess();
    v6, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD12F27C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a4);
  if (v9)
  {
    v10 = *a5;
    v11 = *a6;
    v21 = MEMORY[0x1E69E6370];
    v20[0] = a2 & 1;
    v12 = v9;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD6B04F0(v20, v10, v11);
    swift_endAccess();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD12F378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1BD12EFF4(a1, *(a5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), a6);
  if (v9)
  {
    v10 = qword_1EBD48AC8;
    v11 = off_1EBD48AD0;
    v22 = a4;
    v23 = &type metadata for ProvisioningPrivacyDisclosures;
    v20[0] = a2 & 1;
    v21 = a3;
    v12 = v9;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BD6B04F0(v20, v10, v11);
    swift_endAccess();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD12F494(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BD12EFF4(a1, *(a3 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root), sub_1BD12FFE4);
  if (v4)
  {
    v5 = v4;
    v6 = qword_1EBD46AB0;
    v7 = off_1EBD46AB8;
    v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA0, &qword_1BE0B9B28);
    v16[0] = a2;
    swift_beginAccess();
    v8 = a2;
    sub_1BE048C84();
    sub_1BD6B04F0(v16, v6, v7);
    swift_endAccess();
    v5, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD12F89C(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = a4;
  sub_1BE048964();
  swift_getAtKeyPath();

  a5, v13, v14, v15, v16, v17, v18, v19;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v22 = v12;
      sub_1BD12F378(v22, a1 & 1, a2, a3, v21, a7);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v23 = qword_1EBD48AC8;
  v24 = off_1EBD48AD0;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v23, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE053994();
  __break(1u);
}

void sub_1BD12FA50(char a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, void **a7)
{
  v12 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  a3, v13, v14, v15, v16, v17, v18, v19;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v22 = v12;
      sub_1BD12F27C(v22, a1 & 1, v21, a5, a6, a7);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v23 = *a6;
  v24 = *a7;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v23, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD12FBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F98, &qword_1BE0B9B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD12FC64(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  a3, v9, v10, v11, v12, v13, v14, v15;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = v8;
      sub_1BD12F130(v18, a1, v17, a5);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v19 = qword_1EBD53DE0;
  v20 = off_1EBD53DE8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v19, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE053994();
  __break(1u);
}

void sub_1BD12FE00(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void), uint64_t *a6, void **a7)
{
  v11 = a2;
  sub_1BE048964();
  swift_getAtKeyPath();

  a3, v12, v13, v14, v15, v16, v17, v18;
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    if (swift_dynamicCastClass())
    {
      v19 = v11;
      a5();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE119AB0);
  v20 = *a6;
  v21 = *a7;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v20, v21);
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD12FF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F510, &unk_1BE0B9B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD12FFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BD130044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD1300C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v5 = sub_1BE04EDC4();
  v127 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA8, &qword_1BE0B9BD0);
  v129 = *(v8 - 8);
  v130 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v119 - v9;
  v121 = v7;
  v122 = v5;
  if (a2)
  {
    v133 = a1;
    v134 = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v13 = a2;
    LODWORD(a2) = v14;
    v16 = v15;
  }

  else
  {
    v13 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v12 = 0xE600000000000000;
    v10 = 0x58582E585824;
  }

  v17 = sub_1BE0502C4();
  v125 = a2;
  v123 = v10;
  v124 = v12;
  v126 = v16;
  v18 = sub_1BE0505F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v17, v19, v21, v23, v25, v26, v27, v28;
  sub_1BE050384();
  v29 = sub_1BE050544();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v34, v36, v37, v38, v39);
  v24, v40, v41, v42, v43, v44, v45, v46;
  v47 = sub_1BE051234();
  v48 = sub_1BE050564();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v47, v49, v51, v53, v55, v56, v57, v58;
  sub_1BD0DDF10(v29, v31, (v33 & 1), v59, v60, v61, v62, v63);
  v35, v64, v65, v66, v67, v68, v69, v70;
  KeyPath = swift_getKeyPath();
  v133 = v48;
  v134 = v50;
  v135 = v52 & 1;
  v120 = v54;
  v136 = v54;
  v137 = KeyPath;
  v138 = 1;
  if (v13)
  {
    v132 = 0;
    sub_1BD1305EC(&qword_1EBD39FB0, MEMORY[0x1E697EA58], MEMORY[0x1E697EA80]);
    v72 = v121;
    v73 = v122;
    sub_1BE053DE4();
  }

  else
  {
    v72 = v121;
    sub_1BE04EDB4();
    v73 = v122;
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
  v75 = sub_1BD0EF0FC();
  v76 = v128;
  sub_1BE0510A4();
  (*(v127 + 8))(v72, v73);
  sub_1BD0DDF10(v48, v50, (v52 & 1), v77, v78, v79, v80, v81);
  KeyPath, v82, v83, v84, v85, v86, v87, v88;
  v120, v89, v90, v91, v92, v93, v94, v95;
  sub_1BE052434();
  v97 = v96;
  v133 = v74;
  v134 = v75;
  swift_getOpaqueTypeConformance2();
  v98 = v130;
  sub_1BE050DE4();
  v97, v99, v100, v101, v102, v103, v104, v105;
  sub_1BD0DDF10(v123, v124, (v125 & 1), v106, v107, v108, v109, v110);
  v126, v111, v112, v113, v114, v115, v116, v117;
  return (*(v129 + 8))(v76, v98);
}

unint64_t sub_1BD1304F4()
{
  result = qword_1EBD39FB8;
  if (!qword_1EBD39FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39FC0, &qword_1BE0B9C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    swift_getOpaqueTypeConformance2();
    sub_1BD1305EC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FB8);
  }

  return result;
}

uint64_t sub_1BD1305EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD13063C(uint64_t a1)
{
  type metadata accessor for AvailablePass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD131B20(319, &qword_1EBD392F0, sub_1BD131A80, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD131B20(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD12967C();
        if (v4 <= 0x3F)
        {
          sub_1BE0534B4();
          if (v5 <= 0x3F)
          {
            sub_1BD131ACC(319, &qword_1EBD39FC8, &qword_1EBD39FD0, qword_1BE0B9C28);
            if (v6 <= 0x3F)
            {
              sub_1BD131ACC(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r");
              if (v7 <= 0x3F)
              {
                sub_1BD131B20(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
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

uint64_t sub_1BD130834(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_1BE04CF34() - 8);
  v90 = *(v4 + 80);
  v5 = ((v90 + 40) & ~v90) + *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v91 = v5;
  v93 = *(sub_1BE04DA84() - 8);
  v6 = v93;
  v7 = *(v93 + 84);
  v87 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = v7 - 1;
  v81 = sub_1BE04AF64();
  v9 = *(v81 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 1;
  v86 = v13;
  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v11 <= 0x7FFFFFFD)
  {
    v14 = 2147483645;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 - 1;
  v83 = v15;
  v84 = v11;
  if (v13 <= v15)
  {
    v13 = v15;
  }

  v85 = v13;
  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v89 = v13;
  v88 = v13 - 1;
  if (v13 - 1 >= v13)
  {
    --v13;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v13 = v18;
  }

  v96 = v13;
  v19 = *(sub_1BE04F774() - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = *(v93 + 80);
  v22 = *(v93 + 64);
  v23 = *(v9 + 80);
  if (v10)
  {
    v24 = *(v9 + 64);
  }

  else
  {
    v24 = *(v9 + 64) + 1;
  }

  v82 = v16;
  v25 = *(v16 + 80);
  v26 = *(v16 + 64);
  v94 = v17;
  if (v17)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v21 | 7;
  v29 = v91 + (v21 | 7) + 2;
  v30 = v21 + 16;
  v31 = ((((((v22 + ((v21 + 16) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v32 = v23 | 7;
  v33 = v31 + (v23 | 7);
  v34 = v23 + 10;
  v35 = ((v23 + 10) & ~v23) + v24 + 7;
  v36 = v23 + 8;
  v37 = v23 + 113;
  v38 = (v24 + ((v24 + v23 + ((v23 + 113) & ~v23)) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + ((v23 + 8 + ((((v35 + ((v33 + (v29 & ~(v21 | 7))) & ~(v23 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v23 | 7)) + 119) & 0xFFFFFFFFFFFFFFF8;
  v40 = v21 | v90 | v23;
  v41 = v40 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v42 = v40 + 8;
  v43 = v39 + 8;
  v44 = (((((v42 & v41) + v39 + 8 + 103) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = v25 + 80;
  if (v96 < a2)
  {
    v46 = *(v19 + 80) & 0xF8 | 7;
    v47 = ((v20 + ((v46 + ((((((v27 + v26 + ((v45 + ((v42 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) & v41) + v44) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v46) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v47 <= 3)
    {
      v48 = ((a2 - v96 + 255) >> 8) + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v51 = *&a1[v47];
        if (*&a1[v47])
        {
          goto LABEL_51;
        }
      }

      else
      {
        v51 = *&a1[v47];
        if (v51)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v50)
    {
      v51 = a1[v47];
      if (a1[v47])
      {
LABEL_51:
        v52 = v47 > 3;
        if (v47 <= 3)
        {
          v53 = (v51 - 1) << (8 * v47);
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v66 = *a1;
        }

        else
        {
          v66 = *a1;
        }

        return v96 + (v66 | v53) + 1;
      }
    }
  }

  v54 = ~v28;
  v55 = ~v21;
  v56 = ~v32;
  v57 = ~v23;
  if (v96 != v89)
  {
    v61 = ((v42 + (&a1[v43 + 7] & 0xFFFFFFFFFFFFFFF8)) & v41);
    if (v88 == v96)
    {
      if ((v85 & 0x80000000) == 0)
      {
        v62 = *v61;
LABEL_73:
        if (v62 >= 0xFFFFFFFF)
        {
          LODWORD(v62) = -1;
        }

        v64 = v62 + 1;
        goto LABEL_126;
      }

      v70 = (v29 + ((v61 + v42) & v41)) & v54;
      if (v8 == v89)
      {
        if ((v87 & 0x80000000) != 0)
        {
          v69 = (*(v6 + 48))((v30 + v70) & v55);
        }

        else
        {
          v71 = *(((v29 + ((v61 + v42) & v41)) & v54) + 8);
          if (v71 >= 0xFFFFFFFF)
          {
            LODWORD(v71) = -1;
          }

          v69 = v71 + 1;
        }

        goto LABEL_107;
      }

      v74 = ((v33 + v70) & v56);
      if (v86 == v89)
      {
        if ((v84 & 0x80000000) == 0)
        {
          v75 = *v74;
          if (*v74 >= 0xFFFFFFFF)
          {
            LODWORD(v75) = -1;
          }

          v76 = v75 + 1;
LABEL_123:
          if (v76 >= 2)
          {
            v64 = v76 - 1;
          }

          else
          {
            v64 = 0;
          }

LABEL_126:
          if (v64 >= 2)
          {
            return (v64 - 1);
          }

          else
          {
            return 0;
          }
        }

        v80 = v74 + v34;
      }

      else
      {
        v77 = (v36 + ((((v74 + v35) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v56;
        if (v84 <= 0x7FFFFFFD)
        {
          v78 = *(v77 + 16);
          if (v78 >= 0xFFFFFFFF)
          {
            LODWORD(v78) = -1;
          }

          v76 = v78 - 1;
          if (v76 < 0)
          {
            v76 = -1;
          }

          v79 = v76 + 1;
          goto LABEL_121;
        }

        v80 = v37 + v77;
      }

      v79 = (*(v9 + 48))(v80 & v57, v10, v81);
      v76 = v79 - 1;
LABEL_121:
      if (v79 < 2)
      {
        v76 = 0;
      }

      goto LABEL_123;
    }

    if (v94 >= 2)
    {
      v60 = (*(v82 + 48))((v61 + v45 + v44) & ~v25);
LABEL_88:
      if (v60 >= 2)
      {
        return v60 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v58 = &a1[v91 + 2 + v28] & v54;
  if (v8 == v89)
  {
    if ((v87 & 0x80000000) != 0)
    {
      v60 = (*(v6 + 48))((v30 + v58) & v55);
    }

    else
    {
      v59 = *((&a1[v91 + 2 + v28] & v54) + 8);
      if (v59 >= 0xFFFFFFFF)
      {
        LODWORD(v59) = -1;
      }

      v60 = v59 + 1;
    }

    goto LABEL_88;
  }

  v63 = ((v58 + v32 + v31) & v56);
  if (v86 == v89)
  {
    if ((v84 & 0x80000000) == 0)
    {
      v62 = *v63;
      goto LABEL_73;
    }

    v73 = v63 + v34;
LABEL_106:
    v69 = (*(v9 + 48))(v73 & v57, v10, v81);
LABEL_107:
    v64 = v69 - 1;
LABEL_108:
    if (v69 < 2)
    {
      v64 = 0;
    }

    goto LABEL_126;
  }

  v67 = (v36 + ((((v63 + v35) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v56;
  if (v83 == v89)
  {
    if (v84 <= 0x7FFFFFFD)
    {
      v68 = *(v67 + 16);
      if (v68 >= 0xFFFFFFFF)
      {
        LODWORD(v68) = -1;
      }

      v64 = v68 - 1;
      if (v64 < 0)
      {
        v64 = -1;
      }

      v69 = v64 + 1;
      goto LABEL_108;
    }

    v73 = v37 + v67;
    goto LABEL_106;
  }

  v72 = *(v38 + v67 + 104);
  if (v72 >= 0xFFFFFFFF)
  {
    LODWORD(v72) = -1;
  }

  return (v72 + 1);
}

void sub_1BD130FEC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v105 = v7;
  v88 = sub_1BE04DA84();
  v8 = *(v88 - 8);
  v110 = v8;
  v9 = *(v8 + 84);
  v96 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v99 = v9;
  v10 = v9 - 1;
  v86 = sub_1BE04AF64();
  v11 = *(v86 - 8);
  v109 = v11;
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v97 = v14;
  v15 = v14 - 1;
  v98 = v15;
  if (v10 > v15)
  {
    v15 = v10;
  }

  if (v13 <= 0x7FFFFFFD)
  {
    v16 = 2147483645;
  }

  else
  {
    v16 = v13;
  }

  v90 = v16;
  v91 = v13;
  v17 = v16 - 1;
  if (v15 <= v17)
  {
    v15 = v17;
  }

  v92 = v15;
  v93 = v17;
  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v103 = v10;
  v104 = v15;
  v102 = v15 - 1;
  if (v15 - 1 >= v15)
  {
    --v15;
  }

  v89 = *(a4 + 16);
  v18 = *(v89 - 8);
  v111 = v18;
  v19 = *(v18 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  v100 = v20;
  if (v15 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v15;
  }

  v112 = 0;
  v22 = *(sub_1BE04F774() - 8);
  if (*(v22 + 64) <= 8uLL)
  {
    v23 = 8;
  }

  else
  {
    v23 = *(v22 + 64);
  }

  if (v12)
  {
    v24 = *(v11 + 64);
  }

  else
  {
    v24 = *(v11 + 64) + 1;
  }

  v25 = *(v8 + 80);
  v26 = v25 | 7;
  v27 = v105 + (v25 | 7) + 2;
  v28 = *(v11 + 80);
  v29 = v28 | 7;
  v101 = ((((((*(v8 + 64) + ((v25 + 16) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = v101 + (v28 | 7);
  v94 = ((v28 + 10) & ~v28) + v24 + 7;
  v95 = v28 + 8;
  v31 = (v28 + 8 + ((((v94 + ((v30 + (v27 & ~(v25 | 7))) & ~(v28 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v28 | 7);
  v87 = ((v24 + v28 + ((v28 + 113) & ~v28)) & ~v28) + v24;
  v32 = (v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + v32 + 119) & 0xFFFFFFFFFFFFFFF8;
  v34 = v25 | v6 | v28;
  v35 = v34 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v36 = v34 + 8;
  v37 = (v34 + 8 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) & v35;
  v38 = (v34 + 8) & v35;
  v39 = v33 + 8;
  v40 = ((((v38 + v33 + 8 + 103) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = *(v18 + 80);
  v42 = (v41 + 80 + v37 + v40) & ~v41;
  if (v19)
  {
    v43 = *(v18 + 64);
  }

  else
  {
    v43 = *(v18 + 64) + 1;
  }

  v44 = *(v22 + 80) & 0xF8 | 7;
  v45 = ((v23 + ((v44 + ((((((v43 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v44) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v21 < a3)
  {
    if (v45 <= 3)
    {
      v46 = ((a3 - v21 + 255) >> 8) + 1;
    }

    else
    {
      v46 = 2;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v112 = v48;
  }

  if (v21 < a2)
  {
    v49 = ~v21 + a2;
    bzero(a1, v45);
    if (v45 <= 3)
    {
      v50 = (v49 >> 8) + 1;
    }

    else
    {
      v50 = 1;
    }

    if (v45 > 3)
    {
      *a1 = v49;
    }

    else
    {
      *a1 = v49;
    }

    if (v112 > 1)
    {
      if (v112 == 2)
      {
        *(a1 + v45) = v50;
      }

      else
      {
        *(a1 + v45) = v50;
      }
    }

    else if (v112)
    {
      *(a1 + v45) = v50;
    }

    return;
  }

  v51 = ((v28 + 10) & ~v28) + v24;
  if (v112 > 1)
  {
    if (v112 != 2)
    {
      *(a1 + v45) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    *(a1 + v45) = 0;
  }

  else if (v112)
  {
    *(a1 + v45) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_66;
  }

  if (!a2)
  {
    return;
  }

LABEL_66:
  v52 = ~v26;
  v53 = ~v29;
  v54 = ~v28;
  if (v21 == v104)
  {
    v55 = ((a1 + v105 + v26 + 2) & v52);
    if (v103 == v104)
    {
      v56 = a2 - v99;
      if (a2 < v99)
      {
        v57 = a2 + 1;
        v58 = v96;
        if ((v96 & 0x80000000) == 0)
        {
          if ((v57 & 0x80000000) == 0)
          {
            *(v55 + 1) = a2;
            return;
          }

          v76 = -2147483647;
          goto LABEL_124;
        }

LABEL_157:
        v70 = *(v110 + 56);
        v71 = &v55[v25 + 16] & ~v25;
        v72 = v88;
        goto LABEL_158;
      }

      if (!v101)
      {
        return;
      }

LABEL_98:
      v67 = v55;
      v68 = v101;
LABEL_122:
      bzero(v67, v68);
      *v55 = v56;
      return;
    }

    v55 = (&v55[v29 + v101] & v53);
    if (v98 == v104)
    {
      v60 = a2 - v97;
      if (a2 < v97)
      {
        v61 = v91;
        if ((v91 & 0x80000000) == 0)
        {
          if (((a2 + 1) & 0x80000000) != 0)
          {
            goto LABEL_86;
          }

          goto LABEL_78;
        }

        v77 = v28 + 10;
        goto LABEL_135;
      }

      if (v51 <= 3)
      {
        v73 = ~(-1 << (8 * v51));
      }

      else
      {
        v73 = -1;
      }

      if (!v51)
      {
        return;
      }

LABEL_112:
      v64 = v73 & v60;
      v24 += (v28 + 10) & ~v28;
LABEL_143:
      if (v24 <= 3)
      {
        v65 = v24;
      }

      else
      {
        v65 = 4;
      }

      v66 = v55;
      goto LABEL_147;
    }

    v55 = ((v95 + (((&v55[v94] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v53);
    if (v93 != v104)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v74 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v74 = a2 - 1;
      }

      *&v55[v32 + 104] = v74;
      return;
    }

    v56 = a2 - v90;
    if (a2 < v90)
    {
      v61 = v91;
      if (v91 > 0x7FFFFFFD)
      {
        v77 = v28 + 113;
LABEL_135:
        v55 = (&v55[v77] & v54);
        v80 = a2 - v61;
        if (a2 < v61)
        {
          v70 = *(v109 + 56);
          v57 = a2 + 2;
LABEL_137:
          v71 = v55;
          v58 = v12;
          v72 = v86;
LABEL_158:

          v70(v71, v57, v58, v72);
          return;
        }

        if (v24 <= 3)
        {
          v81 = ~(-1 << (8 * v24));
        }

        else
        {
          v81 = -1;
        }

        if (!v24)
        {
          return;
        }

LABEL_142:
        v64 = v81 & v80;
        goto LABEL_143;
      }

      if (a2 < 0x7FFFFFFD)
      {
        *(v55 + 2) = a2 + 2;
        return;
      }

      v83 = 0uLL;
      *(v55 + 8) = 0u;
      v84 = a2 - 2147483645;
      v55[56] = 0;
LABEL_165:
      *(v55 + 40) = v83;
      *(v55 + 24) = v83;
      *(v55 + 2) = v84;
      return;
    }

    v75 = (v87 + 7) & 0xFFFFFFF8;
    v68 = (v75 + 8);
    if (v75 == -8)
    {
      return;
    }

LABEL_121:
    v67 = v55;
    goto LABEL_122;
  }

  v55 = ((v36 + ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) & v35);
  if (v102 != v21)
  {
    v55 = (&v55[v41 + 80 + v40] & ~v41);
    if (v100 >= a2)
    {
      if (v19 < 2)
      {
        return;
      }

      v70 = *(v111 + 56);
      v57 = a2 + 1;
      v71 = v55;
      v58 = v19;
      v72 = v89;
      goto LABEL_158;
    }

    if (v43 <= 3)
    {
      v63 = ~(-1 << (8 * v43));
    }

    else
    {
      v63 = -1;
    }

    if (!v43)
    {
      return;
    }

    v64 = v63 & (~v100 + a2);
    if (v43 <= 3)
    {
      v65 = v43;
    }

    else
    {
      v65 = 4;
    }

    v66 = v55;
    v24 = v43;
LABEL_147:
    bzero(v66, v24);
    if (v65 > 2)
    {
      if (v65 == 3)
      {
        *v55 = v64;
        v55[2] = BYTE2(v64);
      }

      else
      {
        *v55 = v64;
      }
    }

    else if (v65 == 1)
    {
      *v55 = v64;
    }

    else
    {
      *v55 = v64;
    }

    return;
  }

  if (a2 < v104)
  {
    v59 = a2 + 1;
    if ((v92 & 0x80000000) == 0)
    {
      if ((v59 & 0x80000000) != 0)
      {
LABEL_86:
        v62 = -2147483647;
        goto LABEL_87;
      }

LABEL_78:
      *v55 = a2;
      return;
    }

    v55 = ((v27 + (&v55[v36] & v35)) & v52);
    if (v103 == v104)
    {
      v57 = a2 + 2;
      if (v57 <= v99)
      {
        v58 = v96;
        if ((v96 & 0x80000000) == 0)
        {
          if ((v57 & 0x80000000) == 0)
          {
            *(v55 + 1) = v59;
            return;
          }

          v76 = -2147483646;
LABEL_124:
          *v55 = a2 + v76;
          *(v55 + 1) = 0;
          return;
        }

        goto LABEL_157;
      }

      if (!v101)
      {
        return;
      }

      v56 = v59 - v99;
      goto LABEL_98;
    }

    v55 = (&v55[v30] & v53);
    if (v98 == v104)
    {
      v78 = a2 + 2;
      v79 = v91;
      if (a2 + 2 > v97)
      {
        if (v51 <= 3)
        {
          v73 = ~(-1 << (8 * v51));
        }

        else
        {
          v73 = -1;
        }

        if (!v51)
        {
          return;
        }

        v60 = v59 - v97;
        goto LABEL_112;
      }

      if ((v91 & 0x80000000) == 0)
      {
        if ((v78 & 0x80000000) == 0)
        {
          *v55 = v59;
          return;
        }

        v62 = -2147483646;
LABEL_87:
        *v55 = a2 + v62;
        return;
      }

      v85 = v28 + 10;
    }

    else
    {
      v55 = ((v95 + (((&v55[v94] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v53);
      v78 = a2 + 2;
      v79 = v91;
      if (a2 + 2 > v90)
      {
        v82 = (v87 + 7) & 0xFFFFFFF8;
        v68 = (v82 + 8);
        if (v82 == -8)
        {
          return;
        }

        v56 = v59 - v90;
        goto LABEL_121;
      }

      if (v91 <= 0x7FFFFFFD)
      {
        if (a2 <= 0x7FFFFFFB)
        {
          *(v55 + 2) = a2 + 3;
          return;
        }

        v83 = 0uLL;
        *(v55 + 8) = 0u;
        v55[56] = 0;
        v84 = a2 - 2147483644;
        goto LABEL_165;
      }

      v85 = v28 + 113;
    }

    v55 = (&v55[v85] & v54);
    if (v78 <= v79)
    {
      v70 = *(v109 + 56);
      v57 = a2 + 3;
      goto LABEL_137;
    }

    if (v24 <= 3)
    {
      v81 = ~(-1 << (8 * v24));
    }

    else
    {
      v81 = -1;
    }

    if (!v24)
    {
      return;
    }

    v80 = v59 - v91;
    goto LABEL_142;
  }

  v69 = (((v38 + ((((v87 + 7) & 0xFFFFFFF8) + v31 + 119) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
  if (v69 != -8)
  {
    bzero(v55, (v69 + 8));
    *v55 = a2 - v104;
  }
}

unint64_t sub_1BD131A80()
{
  result = qword_1EBD43BA0;
  if (!qword_1EBD43BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43BA0);
  }

  return result;
}

void sub_1BD131ACC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BE0534B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD131B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD131BC8(uint64_t a1)
{
  v2 = type metadata accessor for PassImage(255);
  v3 = type metadata accessor for PassDetails(255);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v5 = *(a1 + 16);
  v6 = sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
  v7 = sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails, &unk_1BE105080);
  v8 = sub_1BD1103C8();
  v9 = *(a1 + 24);
  v21[2] = v2;
  v21[3] = v3;
  v21[4] = v4;
  v21[5] = v5;
  v21[6] = v6;
  v21[7] = v7;
  v21[8] = v8;
  v21[9] = v9;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v10 = sub_1BE04EBD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  sub_1BD131E64(a1, v13);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v21[0] = WitnessTable;
  v21[1] = v18;
  swift_getWitnessTable();
  sub_1BD147308();
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1BD147308();
  return (v19)(v16, v10);
}

uint64_t sub_1BD131E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = sub_1BE04C624();
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C894();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PassImage(255);
  v53 = v7;
  v8 = type metadata accessor for PassDetails(255);
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v49 = v9;
  v10 = *(a1 + 16);
  v11 = sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
  v48 = v11;
  v12 = sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails, &unk_1BE105080);
  v47 = v12;
  v46 = sub_1BD1103C8();
  v13 = *(a1 + 24);
  v77 = v7;
  v78 = v8;
  v79 = v9;
  v80 = v10;
  v81 = v11;
  v82 = v12;
  v83 = v46;
  v84 = v13;
  v55 = sub_1BE04C6F4();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v45 - v14;
  sub_1BE0500D4();
  v15 = sub_1BE04EBD4();
  v60 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  v72 = v10;
  v73 = v13;
  v74 = v2;
  v69 = v10;
  v70 = v13;
  v71 = v2;
  v66 = v10;
  v67 = v13;
  v68 = v2;
  sub_1BD132BA0(a1, v62);
  v63 = v10;
  v64 = v13;
  LODWORD(v8) = *(v2 + *(a1 + 64));
  v19 = *(v54 + 104);
  v20 = MEMORY[0x1E69BC910];
  v65 = v2;
  if (!v8)
  {
    v20 = MEMORY[0x1E69BC908];
  }

  v19(v56, *v20, v58);
  v21 = *(a1 + 60);
  v22 = (v2 + *(a1 + 56));
  v24 = *v22;
  v23 = v22[1];
  v25 = v2 + v21;
  v26 = *(v2 + v21);
  v27 = *(v25 + 8);
  sub_1BD0D44B8(v24, v23);
  sub_1BD0D44B8(v26, v27);
  v28 = v52;
  sub_1BE04C694();
  sub_1BE052434();
  v30 = v29;
  v31 = v55;
  WitnessTable = swift_getWitnessTable();
  v33 = v50;
  sub_1BE050DE4();
  v30, v34, v35, v36, v37, v38, v39, v40;
  (*(v59 + 8))(v28, v31);
  v41 = sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v75 = WitnessTable;
  v76 = v41;
  swift_getWitnessTable();
  v42 = v57;
  sub_1BD147308();
  v43 = *(v60 + 8);
  v43(v33, v15);
  sub_1BD147308();
  return (v43)(v42, v15);
}

double sub_1BD13241C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PassImage(0);
  sub_1BD133398(a1, a4 + v8[6], type metadata accessor for WrappedPass);
  v10 = *(a1 + *(type metadata accessor for PaymentPassMainItem(0, a2, a3, v9) + 72));
  PKPassFrontFaceContentSize();
  result = v10 * (v12 / v11);
  *(a4 + 24) = v10;
  *(a4 + 32) = result;
  *a4 = sub_1BD70C870;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + v8[7]) = 1;
  *(a4 + v8[8]) = 1911;
  return result;
}

uint64_t sub_1BD1324EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BD133398(a1, a4, type metadata accessor for AvailablePass);
  v9 = type metadata accessor for PaymentPassMainItem(0, a2, a3, v8);
  v10 = *(a1 + v9[9]);
  v11 = (a1 + v9[11]);
  v12 = v11[4];
  v29 = v11[3];
  v30 = v12;
  v13 = v11[2];
  v27 = v11[1];
  v28 = v13;
  v26 = *v11;
  v14 = v9[13];
  v15 = type metadata accessor for PassDetails(0);
  sub_1BD0DE19C(a1 + v14, a4 + v15[7], &qword_1EBD51EC0, &qword_1BE0B7120);
  *(a4 + v15[5]) = v10;
  v16 = (a4 + v15[6]);
  v17 = v29;
  v16[2] = v28;
  v16[3] = v17;
  v16[4] = v30;
  v18 = v27;
  *v16 = v26;
  v16[1] = v18;
  v19 = v15[8];
  *(a4 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v20 = a4 + v15[9];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a4 + v15[10]);
  v22 = v10;
  sub_1BD0DE19C(&v26, &v25, &qword_1EBD395E0, &qword_1BE0B8830);
  result = sub_1BE051234();
  v24 = MEMORY[0x1E6981568];
  v21[3] = MEMORY[0x1E69815C0];
  v21[4] = v24;
  *v21 = result;
  return result;
}

uint64_t sub_1BD13266C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - v7;
  v10 = type metadata accessor for PaymentPassMainItem(0, a1, a2, v9);
  v11 = sub_1BD132904(v10);
  if (v12)
  {
    v95 = v11;
    v96 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1BE0502C4();
    v21 = sub_1BE0505F4();
    v23 = v22;
    v92 = a3;
    v93 = v6;
    v25 = v24;
    v27 = v26;
    v20, v22, v24, v26, v28, v29, v30, v31;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v32, v33, v34, v35, v36);
    v19, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1BE051234();
    v45 = sub_1BE050564();
    v47 = v46;
    LOBYTE(v19) = v48;
    v50 = v49;
    v44, v46, v48, v49, v51, v52, v53, v54;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v55, v56, v57, v58, v59);
    v27, v60, v61, v62, v63, v64, v65, v66;
    v95 = v45;
    v96 = v47;
    v97 = v19 & 1;
    v98 = v50;
    sub_1BE052434();
    v68 = v67;
    sub_1BE050DE4();
    v68, v69, v70, v71, v72, v73, v74, v75;
    sub_1BD0DDF10(v45, v47, (v19 & 1), v76, v77, v78, v79, v80);
    v50, v81, v82, v83, v84, v85, v86, v87;
    v88 = v92;
    sub_1BD133260(v8, v92);
    return (*(v94 + 56))(v88, 0, 1, v93);
  }

  else
  {
    v90 = *(v94 + 56);

    return v90(a3, 1, 1, v6);
  }
}

uint64_t sub_1BD132904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for PeerPaymentModel(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(v1 + *(a1 + 40), v5, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD45480, &unk_1BE0B8C30);
    return 0;
  }

  sub_1BD1332D0(v5, v9, type metadata accessor for PeerPaymentModel);
  if (v9[v6[13]] != 1 || (*(v1 + *(type metadata accessor for AvailablePass(0) + 20)) & 1) != 0 || ((v10 = &v9[v6[6]], v12 = *v10, v11 = *(v10 + 1), v12 != 1) ? (v13 = v11 == 0) : (v13 = 1), v13 || (v9[v6[16]] & 1) != 0))
  {
    sub_1BD133338(v9, type metadata accessor for PeerPaymentModel);
    return 0;
  }

  v15 = v11;
  v16 = [v15 totalAmount];
  v17 = [v15 totalAmountCurrency];
  v18 = PKFormattedCurrencyStringFromNumber();

  if (v18)
  {
    v19 = sub_1BE052434();
  }

  else
  {

    v19 = 0;
  }

  sub_1BD133338(v9, type metadata accessor for PeerPaymentModel);
  return v19;
}

uint64_t sub_1BD132BA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for BalanceInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C894();
  v13 = *(v12 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 104);
  if (*(v2 + a1[14]))
  {
    v18 = *MEMORY[0x1E69BCA00];
    v47 = v13 + 104;
    v46 = v17;
    (v17)(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v12, v15.n128_f64[0]);
    sub_1BD0DE19C(v2 + a1[13], &v48, &qword_1EBD51EC0, &qword_1BE0B7120);
    if (v49)
    {
      v43 = a1;
      v45 = v16;
      v44 = v2;
      sub_1BD0EF554(&v48, &v50);
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      if ((sub_1BE04C704() & 1) != 0 && (PKOslo2024UIUpdatesEnabled() & 1) == 0)
      {
        v16 = v45;
        (*(v13 + 8))(v45, v12);
        v46(v16, *MEMORY[0x1E69BC9F8], v12);
        __swift_destroy_boxed_opaque_existential_0(&v50, v35, v36, v37, v38, v39, v40, v41);
        return (*(v13 + 32))(a2, v16, v12);
      }

      __swift_destroy_boxed_opaque_existential_0(&v50, v19, v20, v21, v22, v23, v24, v25);
      v2 = v44;
      v16 = v45;
      a1 = v43;
    }

    else
    {
      sub_1BD0DE53C(&v48, &qword_1EBD51EC0, &qword_1BE0B7120);
    }

    v28 = type metadata accessor for AvailablePass(0);
    sub_1BD0DE19C(v2 + *(v28 + 28), v7, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1BD0DE53C(v7, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    }

    else
    {
      sub_1BD1332D0(v7, v11, type metadata accessor for BalanceInfo);
      v29 = v11[8];
      sub_1BD133338(v11, type metadata accessor for BalanceInfo);
      if (v29 == 1)
      {
        goto LABEL_18;
      }
    }

    v30 = (v2 + a1[11]);
    v31 = v30[1];
    v50 = *v30;
    v51 = v31;
    v32 = v30[3];
    v52 = v30[2];
    v53 = v32;
    v54 = v30[4];
    if (!v32 || !v51)
    {
      return (*(v13 + 32))(a2, v16, v12);
    }

    if (v51 != 1)
    {
      (*(v13 + 8))(v16, v12);
      v34 = MEMORY[0x1E69BC9F0];
      goto LABEL_21;
    }

    v33 = v50;
    sub_1BD0DE19C(&v50, &v48, &qword_1EBD395E0, &qword_1BE0B8830);
    sub_1BD12B91C(v33, *(&v33 + 1), 1);

    sub_1BD0DE53C(&v50, &qword_1EBD395E0, &qword_1BE0B8830);
LABEL_18:
    (*(v13 + 8))(v16, v12);
    v34 = MEMORY[0x1E69BC9F8];
LABEL_21:
    v46(v16, *v34, v12);
    return (*(v13 + 32))(a2, v16, v12);
  }

  v26 = *MEMORY[0x1E69BC9E8];

  return (v17)(a2, v26, v12, v15);
}

uint64_t sub_1BD1330A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  type metadata accessor for PaymentPassMainItem(0, a2, a3, v9);
  v11[1] = a3;
  swift_getWitnessTable();
  sub_1BD147308();
  sub_1BD147308();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD1331E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD133260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1332D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD133338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD133398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD133404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD135270;

  return sub_1BD99D51C(a1);
}

uint64_t sub_1BD1334AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD133554;

  return sub_1BD99D51C(a1);
}

uint64_t sub_1BD133554(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1BD13365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD13526C;

  return sub_1BD5426E8(a2, a3, 50, 1, &unk_1BE0B9F78, 0);
}

uint64_t sub_1BD133734(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, &unk_1BE0B9F70, 0);
}

uint64_t sub_1BD1337F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BD133940()
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
  __swift_allocate_value_buffer(v6, qword_1EBDAAE10);
  __swift_project_value_buffer(v6, qword_1EBDAAE10);
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

uint64_t sub_1BD133B54(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_1BE04D214();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  sub_1BE0528A4();
  v2[48] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[49] = v7;
  v2[50] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD133D24, v7, v6);
}

uint64_t sub_1BD133D24(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:AddMoneyIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[46];
  v6 = v1[47];
  v9 = v1[44];
  v8 = v1[45];
  v11 = v1[42];
  v10 = v1[43];
  v12 = v1[41];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[51] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  sub_1BE048874();
  v13 = v1[12];
  v1[52] = v13;
  v14 = v13;
  sub_1BD030458((v1 + 10));
  v15 = swift_task_alloc();
  v1[53] = v15;
  *v15 = v1;
  v15[1] = sub_1BD133F30;

  return sub_1BD99D51C(v14);
}

uint64_t sub_1BD133F30(char a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = *(v4 + 392);
    v6 = *(v4 + 400);
    v7 = sub_1BD1343B0;
  }

  else
  {

    *(v4 + 465) = a1 & 1;
    v5 = *(v4 + 392);
    v6 = *(v4 + 400);
    v7 = sub_1BD134064;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD134064(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 465) == 1)
  {
    v9 = [objc_opt_self() sharedInstance];
    v10 = [v9 coordinator];
    *(v8 + 440) = v10;

    if (v10)
    {
      v18 = swift_task_alloc();
      *(v8 + 448) = v18;
      *v18 = v8;
      v18[1] = sub_1BD134478;

      return sub_1BD0D7278();
    }

    *(v8 + 384), v11, v12, v13, v14, v15, v16, v17;
    sub_1BE04D074();
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BD026000, v27, v28, "AddMoneyIntent: PKAppIntentCoordinator was nil", v29, 2u);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    v23 = *(v8 + 408);
    v30 = *(v8 + 312);
    v31 = *(v8 + 288);
    v32 = *(v8 + 296);

    (*(v32 + 8))(v30, v31);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {
    *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
    sub_1BE04D074();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "AddMoneyIntent: Pass does not support adding money", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v23 = *(v8 + 408);
    v25 = *(v8 + 296);
    v24 = *(v8 + 304);
    v26 = *(v8 + 288);

    (*(v25 + 8))(v24, v26);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
  }

  swift_willThrow();
  sub_1BD134BBC(v23);
  v23, v33, v34, v35, v36, v37, v38, v39;

  v40 = *(v8 + 8);

  return v40();
}

uint64_t sub_1BD1343B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 408);
  v9 = *(v8 + 416);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD134BBC(v10);
  v10, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD134478(char a1)
{
  v2 = *v1;
  *(*v1 + 466) = a1;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD1345A0, v4, v3);
}

uint64_t sub_1BD1345A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 466) == 1)
  {
    v9 = *(v8 + 440);
    sub_1BE048874();
    v10 = *(v8 + 152);
    sub_1BE048C84();
    sub_1BD030458(v8 + 144);
    v11 = sub_1BE052404();
    *(v8 + 456) = v11;
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v8 + 16) = v8;
    *(v8 + 56) = v8 + 464;
    *(v8 + 24) = sub_1BD1347F0;
    v19 = swift_continuation_init();
    *(v8 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
    *(v8 + 208) = MEMORY[0x1E69E9820];
    *(v8 + 216) = 1107296256;
    *(v8 + 224) = sub_1BD68F38C;
    *(v8 + 232) = &block_descriptor_6;
    *(v8 + 240) = v19;
    [v9 presentAddMoneyForPassWithUniqueID:v11 completion:v8 + 208];

    return MEMORY[0x1EEE6DEC8](v8 + 16);
  }

  else
  {
    v20 = *(v8 + 408);
    *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD134BBC(v20);
    v20, v21, v22, v23, v24, v25, v26, v27;

    v28 = *(v8 + 8);

    return v28();
  }
}

uint64_t sub_1BD1347F0()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD1348F8, v2, v1);
}

uint64_t sub_1BD1348F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v51 = v8;
  v9 = *(v8 + 456);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 464);

  sub_1BE04D074();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v8 + 320);
  v15 = *(v8 + 288);
  v16 = *(v8 + 296);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v50 = v18;
    *v17 = 136315138;
    if (v10)
    {
      v19 = 0x73736563637573;
    }

    else
    {
      v19 = 0x64656C696166;
    }

    v49 = v14;
    v20 = v10;
    if (v10)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = sub_1BD123690(v19, v21, &v50);
    v23 = v21;
    v10 = v20;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BD026000, v11, v12, "AddMoneyIntent: Present add money flow %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18, v31, v32, v33, v34, v35, v36, v37);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    (*(v16 + 8))(v49, v15);
  }

  else
  {

    (*(v16 + 8))(v14, v15);
  }

  v38 = *(v8 + 408);
  if (v10)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v47 = 3;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD134BBC(v38);
  v38, v39, v40, v41, v42, v43, v44, v45;

  v46 = *(v8 + 8);

  return v46();
}

uint64_t sub_1BD134BBC(void *a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:AddMoneyIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD134EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD134F58(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A038, &qword_1BE0B9F30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A040, &qword_1BE0B9F38);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A048, &qword_1BE0B9F68);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD1350F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD133B54(a1, v4);
}

uint64_t sub_1BD135198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD036998();
  *a1 = result;
  return result;
}

unint64_t sub_1BD1351C0()
{
  result = qword_1EBD56120;
  if (!qword_1EBD56120)
  {
    sub_1BE0484F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56120);
  }

  return result;
}

unint64_t sub_1BD135218()
{
  result = qword_1EBD3A030;
  if (!qword_1EBD3A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A030);
  }

  return result;
}

uint64_t PassLocationWeatherManager.fetchWeatherDisplayInformation(forPass:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = [a1 eventLocation];
  v17 = [v16 CLLocation];

  sub_1BE04AF54();
  sub_1BD1354CC(a1, v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &unk_1EBD39970, &unk_1BE0B9F80);
    a2(0);

    return (*(v9 + 8))(v15, v8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(v11, v17, a2, v21);

    v19 = *(v9 + 8);
    v19(v11, v8);
    return (v19)(v15, v8);
  }
}

uint64_t sub_1BD1354CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v137 = a2;
  v130 = sub_1BE04B2F4();
  v5 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v115 - v13;
  v133 = sub_1BE04A2B4();
  v14 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v115 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v115 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v115 - v25;
  v125 = v8;
  v28 = *(v8 + 56);
  v27 = (v8 + 56);
  v124 = v28;
  (v28)(&v115 - v25, 1, 1, v7, v24);
  v29 = [a1 relevantDates];
  v30 = v29;
  v31 = v29;
  if (!v29)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3A0A8, 0x1E69B8A68);
    v32 = sub_1BE052744();
    v136 = v14;
    v33 = a3;
    v34 = v5;
    v35 = v32;
    v31 = sub_1BE052724();
    v35, v36, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BE052744();
    v30 = sub_1BE052724();
    v44 = v43;
    v5 = v34;
    a3 = v33;
    v14 = v136;
    v44, v45, v46, v47, v48, v49, v50, v51;
  }

  v122 = v31;
  v123 = v30;
  sub_1BD0E5E8C(0, &qword_1EBD3A0A8, 0x1E69B8A68);
  v52 = sub_1BE052744();
  v53 = v52;
  if (v52 >> 62)
  {
    goto LABEL_33;
  }

  v136 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v136)
  {
    while (1)
    {
      v115 = v27;
      v116 = v26;
      v131 = v7;
      v117 = a3;
      v135 = v53 & 0xC000000000000001;
      v7 = (v14 + 32);
      v27 = (v14 + 8);
      v127 = (v5 + 8);
      v128 = v53 & 0xFFFFFFFFFFFFFF8;
      v126 = (v125 + 8);
      v54 = v29;
      v29 = 0;
      a3 = v134;
      while (1)
      {
        if (v135)
        {
          v65 = MEMORY[0x1BFB40900](v29, v53);
        }

        else
        {
          if (v29 >= *(v128 + 16))
          {
            goto LABEL_32;
          }

          v65 = *(v53 + 8 * v29 + 32);
        }

        v66 = v65;
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v67 = [v65 interval];
        if (v67)
        {
          v55 = v132;
          v56 = v67;
          sub_1BE04A274();

          v57 = v55;
          v5 = v133;
          (*v7)(v18, v57, v133);
          v14 = sub_1BE04A2A4();

          (*v27)(v18, v5);
          if (v14)
          {
            v26 = v116;
            sub_1BD0DE53C(v116, &unk_1EBD39970, &unk_1BE0B9F80);
            v53, v79, v80, v81, v82, v83, v84, v85;
            v78 = v125;
            v7 = v131;
            (*(v125 + 16))(v26, v137, v131);
            v124(v26, 0, 1, v7);
            a3 = v117;
            goto LABEL_21;
          }
        }

        else
        {
          v68 = [v66 earliestDate];
          sub_1BE04AEE4();

          if (sub_1BE04AE84())
          {

LABEL_20:
            v53, v71, v72, v73, v74, v75, v76, v77;
            v26 = v116;
            sub_1BD0DE53C(v116, &unk_1EBD39970, &unk_1BE0B9F80);
            v78 = v125;
            v7 = v131;
            (*(v125 + 32))(v26, a3, v131);
            v124(v26, 0, 1, v7);
            a3 = v117;
            goto LABEL_21;
          }

          v69 = v129;
          sub_1BE04B2A4();
          v14 = sub_1BE04B264();

          v70 = v69;
          a3 = v134;
          (*v127)(v70, v130);
          if (v14)
          {
            goto LABEL_20;
          }

          (*v126)(a3, v131);
        }

        ++v29;
        if (v26 == v136)
        {
          v53, v58, v59, v60, v61, v62, v63, v64;
          a3 = v117;
          v7 = v131;
          v78 = v125;
          v26 = v116;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      if (!sub_1BE053704())
      {
        break;
      }

      v136 = sub_1BE053704();
      if (!v136)
      {
        v99 = v29;
        v53, v100, v101, v102, v103, v104, v105, v106;
        v78 = v125;
LABEL_21:
        v86 = v121;
        sub_1BD0DE19C(v26, v121, &unk_1EBD39970, &unk_1BE0B9F80);
        if ((*(v78 + 48))(v86, 1, v7) == 1)
        {
          sub_1BD0DE53C(v86, &unk_1EBD39970, &unk_1BE0B9F80);
          v87 = objc_opt_self();
          v88 = v122;
          v89 = [v87 findDateFromDates:v122 option:3];

          v90 = v119;
          sub_1BE04AEE4();

          v91 = v123;
          v92 = [v87 findDateFromDates:v123 option:0];

          v93 = v120;
          sub_1BE04AEE4();

          v94 = sub_1BE04AE84();
          sub_1BD0DE53C(v26, &unk_1EBD39970, &unk_1BE0B9F80);
          if (v94)
          {
            v95 = v90;
          }

          else
          {
            v95 = v93;
          }

          if (v94)
          {
            v96 = v93;
          }

          else
          {
            v96 = v90;
          }

          (*(v78 + 8))(v95, v7);
          v97 = v118;
          (*(v78 + 32))(v118, v96, v7);
          v124(v97, 0, 1, v7);
          sub_1BD0DE204(v97, v26, &unk_1EBD39970, &unk_1BE0B9F80);
        }

        else
        {

          sub_1BD0DE53C(v86, &unk_1EBD39970, &unk_1BE0B9F80);
        }

        return sub_1BD0DE204(v26, a3, &unk_1EBD39970, &unk_1BE0B9F80);
      }
    }
  }

  v107 = v29;
  sub_1BD0DE53C(v26, &unk_1EBD39970, &unk_1BE0B9F80);
  v53, v108, v109, v110, v111, v112, v113, v114;

  return v124(a3, 1, 1, v7);
}

uint64_t PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(char *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v177 = a4;
  v175 = a3;
  v161 = a2;
  v170 = a1;
  v4 = sub_1BE04B2D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1BE04B2F4();
  v8 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v10 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v169 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v146 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v146 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v146 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v185 = &v146 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v146 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v146 - v24;
  v176 = sub_1BE04AF64();
  v26 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v160 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v154 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v159 = &v146 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v171 = &v146 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v172 = &v146 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v157 = &v146 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v146 - v39;
  v153 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v146 - v43;
  sub_1BE04AF54();
  v164 = objc_opt_self();
  v45 = [v164 currentCalendar];
  sub_1BE04B1F4();

  v46 = *(v5 + 104);
  v174 = *MEMORY[0x1E6969A48];
  v180 = v5 + 104;
  v181 = v46;
  v46(v7);
  sub_1BE04B224();
  v47 = *(v5 + 8);
  v167 = v7;
  v173 = v4;
  v182 = v47;
  v179 = v5 + 8;
  v47(v7, v4);
  v48 = *(v8 + 8);
  v183 = v10;
  v184 = v8 + 8;
  v49 = v176;
  v48(v10, v186);
  v50 = *(v26 + 48);
  v165 = v26 + 48;
  if (v50(v25, 1, v49) == 1)
  {
    sub_1BD0DE53C(v25, &unk_1EBD39970, &unk_1BE0B9F80);
    v175(0);
    return (*(v26 + 8))(v44, v49);
  }

  v158 = v50;
  v52 = *(v26 + 32);
  v152 = v26 + 32;
  v149 = v52;
  v52(v40, v25, v49);
  v150 = v40;
  v53 = v170;
  v54 = sub_1BE04AF04();
  v55 = v183;
  sub_1BE04B2A4();
  v56 = v167;
  v57 = v173;
  v181(v167, v174, v173);
  v151 = v44;
  v58 = v57;
  v147 = sub_1BE04B294();
  v182(v56, v57);
  v156 = v48;
  v48(v55, v186);
  v59 = v49;
  v163 = v26;
  v60 = *(v26 + 56);
  v60(v178, 1, 1, v49);
  v60(v185, 1, 1, v49);
  v61 = v164;
  v62 = [v164 currentCalendar];
  sub_1BE04B1F4();

  v148 = v54;
  if (v54 == 1)
  {
    v63 = v61;
    v181(v56, *MEMORY[0x1E6969A68], v58);
    v64 = v166;
    v65 = v183;
    sub_1BE04B224();
    v182(v56, v58);
    v156(v65, v186);
    v66 = v185;
    sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD0DE204(v64, v66, &unk_1EBD39970, &unk_1BE0B9F80);
    v67 = v162;
    sub_1BD0DE19C(v66, v162, &unk_1EBD39970, &unk_1BE0B9F80);
    v68 = v158;
    v69 = v158(v67, 1, v59);
    v70 = v172;
    if (v69 == 1)
    {
      sub_1BD0DE53C(v67, &unk_1EBD39970, &unk_1BE0B9F80);
      v71 = v178;
    }

    else
    {
      v80 = v157;
      v149(v157, v67, v59);
      v81 = [v63 currentCalendar];
      v82 = v183;
      sub_1BE04B1F4();

      v83 = v173;
      v181(v56, v174, v173);
      sub_1BE04B224();
      v182(v56, v83);
      v156(v82, v186);
      (*(v163 + 8))(v80, v59);
      v71 = v178;
      sub_1BD0DE53C(v178, &unk_1EBD39970, &unk_1BE0B9F80);
      v68 = v158;
      sub_1BD0DE204(v64, v71, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    v75 = v185;
    v78 = v171;
    v79 = v168;
    v77 = v70;
  }

  else
  {
    v181(v56, v174, v58);
    v72 = v58;
    v73 = v166;
    v74 = v183;
    sub_1BE04B224();
    v182(v56, v72);
    v156(v74, v186);
    v75 = v185;
    sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
    v76 = v178;
    sub_1BD0DE53C(v178, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD0DE204(v73, v75, &unk_1EBD39970, &unk_1BE0B9F80);
    (*(v163 + 16))(v76, v53, v59);
    v60(v76, 0, 1, v59);
    v71 = v76;
    v77 = v172;
    v78 = v171;
    v79 = v168;
    v68 = v158;
  }

  sub_1BD0DE19C(v71, v79, &unk_1EBD39970, &unk_1BE0B9F80);
  v84 = v68(v79, 1, v59);
  v85 = v175;
  v86 = v169;
  if (v84 == 1)
  {
    sub_1BD0DE53C(v79, &unk_1EBD39970, &unk_1BE0B9F80);
    v87 = v163;
  }

  else
  {
    v88 = v79;
    v89 = v149;
    v149(v77, v88, v59);
    sub_1BD0DE19C(v75, v86, &unk_1EBD39970, &unk_1BE0B9F80);
    v90 = v68(v86, 1, v59);
    v91 = v86;
    v87 = v163;
    if (v90 == 1)
    {
      (*(v163 + 8))(v77, v59);
      sub_1BD0DE53C(v91, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    else
    {
      v89(v78, v91, v59);
      v92 = v78;
      v93 = v177;
      if (v161)
      {
        LODWORD(v184) = v147 == 1;
        LODWORD(v183) = v148 == 1;
        v94 = swift_allocObject();
        v186 = v94;
        *(v94 + 16) = v85;
        *(v94 + 24) = v93;
        v95 = v87;
        v96 = *(v87 + 16);
        v96(v159, v77, v59);
        v97 = v89;
        v98 = v154;
        v96(v154, v92, v59);
        v96(v160, v170, v59);
        v99 = *(v95 + 80);
        v100 = (v99 + 32) & ~v99;
        v101 = (v153 + v99 + v100) & ~v99;
        v102 = (v153 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
        v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
        v104 = (v99 + v103 + 8) & ~v99;
        v105 = v104 + v153;
        v106 = swift_allocObject();
        v107 = v186;
        *(v106 + 2) = sub_1BD138B78;
        *(v106 + 3) = v107;
        v108 = &v106[v100];
        v109 = v176;
        v97(v108, v159, v176);
        v97(&v106[v101], v98, v109);
        v110 = v161;
        *&v106[v102] = v161;
        v111 = v155;
        *&v106[v103] = v155;
        v112 = v109;
        v97(&v106[v104], v160, v109);
        v113 = &v106[v105];
        *v113 = v183;
        v113[1] = v184;
        v114 = objc_allocWithZone(MEMORY[0x1E695FBC8]);
        v115 = v110;
        sub_1BE048964();
        v116 = v186;
        sub_1BE048964();
        v117 = v111;
        v118 = [v114 init];
        v119 = swift_allocObject();
        *(v119 + 16) = sub_1BD138B80;
        *(v119 + 24) = v106;
        aBlock[4] = sub_1BD138B84;
        v188 = v119;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD1389F0;
        aBlock[3] = &block_descriptor_7;
        v120 = _Block_copy(aBlock);
        v121 = v188;
        sub_1BE048964();
        v121, v122, v123, v124, v125, v126, v127, v128;
        [v118 reverseGeocodeLocation:v115 completionHandler:v120];
        _Block_release(v120);

        v116, v129, v130, v131, v132, v133, v134, v135;
        v106, v136, v137, v138, v139, v140, v141, v142;

        v143 = *(v163 + 8);
        v143(v171, v112);
        v143(v172, v112);
        sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE53C(v178, &unk_1EBD39970, &unk_1BE0B9F80);
        v143(v150, v112);
        return (v143)(v151, v112);
      }

      v144 = *(v87 + 8);
      v144(v92, v59);
      v144(v77, v59);
      v85 = v175;
    }
  }

  v85(0);
  sub_1BD0DE53C(v75, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE53C(v71, &unk_1EBD39970, &unk_1BE0B9F80);
  v145 = *(v87 + 8);
  v145(v150, v59);
  return (v145)(v151, v59);
}

void PassLocationWeatherManager.fetchWeatherDisplayInformation(forEntry:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = [a1 metadata];
  v15 = [v14 eventMetadata];

  if (v15)
  {
    v16 = [v15 venueLocation];
    v21 = [v16 CLLocation];

    v17 = [v15 date];
    if (v17)
    {
      v18 = v17;
      sub_1BE04AEE4();

      (*(v7 + 32))(v13, v9, v6);
      PassLocationWeatherManager.fetchWeatherDisplayInformation(for:at:completion:)(v13, v21, a2, a3);

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      a2();

      v19 = v21;
    }
  }

  else
  {
    (a2)(0);
  }
}

void sub_1BD13707C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1BD137110(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_1BD1372C4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v97 = a7;
  v98 = a8;
  v91 = a4;
  v92 = a5;
  v101 = a2;
  v99 = sub_1BE04AF64();
  v93 = *(v99 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04B494();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A058, &qword_1BE0B9FC8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A060, &unk_1BE0B9FD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v80 - v22;
  v24 = sub_1BE04B4C4();
  v95 = *(v24 - 8);
  v96 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A068, &qword_1BE0B9FE0);
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v100 = &v80 - v31;
  if (!a1)
  {
    return v101(0, v30);
  }

  v88 = v29;
  v89 = v28;
  v90 = a3;
  v32 = a1;
  v33 = [v32 locality];
  if (!v33)
  {

    return v101(0, v30);
  }

  v34 = v33;
  v35 = sub_1BE052434();
  v84 = v36;
  v85 = v35;

  sub_1BE04B4E4();
  v37 = [v32 ISOcountryCode];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1BE052434();
    v82 = v40;
    v83 = v39;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  LODWORD(v92) = a10;
  LODWORD(v91) = a9;
  v42 = [v32 timeZone];
  v86 = v32;
  v87 = a6;
  if (v42)
  {
    v43 = v42;
    sub_1BE04B394();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_1BE04B3B4();
  (*(*(v45 - 8) + 56))(v23, v44, 1, v45);
  v46 = sub_1BE04B4D4();
  (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
  v47 = sub_1BE04B4A4();
  (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
  v102 = MEMORY[0x1E69E7CC0];
  sub_1BD13A2E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A078, &qword_1BE0B9FE8);
  sub_1BD13A340();
  sub_1BE053664();
  v81 = v26;
  sub_1BE04B4B4();
  sub_1BE04B524();
  v83 = sub_1BE04B514();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v93;
  v50 = v94;
  v51 = v99;
  (*(v93 + 16))(v94, v98, v99);
  v52 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v53 = (v13 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v101;
  *(v55 + 2) = v48;
  *(v55 + 3) = v56;
  *(v55 + 4) = v90;
  (*(v49 + 32))(&v55[v52], v50, v51);
  v57 = v83;
  *&v55[v53] = v83;
  v58 = &v55[v54];
  v59 = v84;
  *v58 = v85;
  v58[1] = v59;
  v60 = &v55[(v54 + 23) & 0xFFFFFFFFFFFFFFF8];
  v61 = v87;
  *v60 = v87;
  v60[8] = v91 & 1;
  v60[9] = v92 & 1;
  sub_1BE048964();
  v62 = v57;
  sub_1BE048964();
  v63 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A088, &unk_1BE0B9FF0);
  v64 = v100;
  v65 = v81;
  sub_1BE04B4F4();
  v62, v66, v67, v68, v69, v70, v71, v72;
  v55, v73, v74, v75, v76, v77, v78, v79;

  (*(v95 + 8))(v65, v96);
  return (*(v88 + 8))(v64, v89);
}

void sub_1BD1379A0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v217 = a8;
  v216 = a7;
  v215 = a6;
  v218 = a5;
  v14 = sub_1BE04D214();
  v224 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1BE04AA64();
  v233 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v231 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090, &unk_1BE0DC030);
  v219 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v230 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v229 = &v205 - v20;
  v213 = sub_1BE04B564();
  v234 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v212 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v205 - v23;
  v25 = sub_1BE0521E4();
  v222 = *(v25 - 8);
  v223 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v228 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v227 = &v205 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v214 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v211 = &v205 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v235 = &v205 - v34;
  v35 = sub_1BE04B484();
  v225 = *(v35 - 8);
  v226 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A088, &unk_1BE0B9FF0);
  v238 = *(v38 - 8);
  v239 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v237 = &v205 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A098, &qword_1BE0BA008);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v205 - v41);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a3();
    return;
  }

  v44 = Strong;
  v220 = a4;
  v221 = a3;
  sub_1BD0DE19C(a1, v42, &qword_1EBD3A098, &qword_1BE0BA008);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v238 + 32))(v237, v42, v239);
    v55 = sub_1BE04B574();
    if (!v55[2])
    {
      v55, v56, v57, v58, v59, v60, v61, v62;
      v95 = 0;
LABEL_19:
      (v221)(v95);

      (*(v238 + 8))(v237, v239);
      return;
    }

    v224 = a9;
    v63 = v55;
    (*(v225 + 16))(v37, v55 + ((*(v225 + 80) + 32) & ~*(v225 + 80)), v226);
    v63, v64, v65, v66, v67, v68, v69, v70;
    (*(v233 + 56))(v235, 1, 1, v236);
    sub_1BE04B474();
    v71 = v227;
    sub_1BE04B534();
    v72 = v234 + 8;
    v73 = *(v234 + 1);
    v74 = v213;
    v73(v24, v213);
    sub_1BE04B474();
    v75 = v228;
    sub_1BE04B534();
    v234 = v72;
    v209 = v73;
    v73(v24, v74);
    v76 = sub_1BE0521C4();
    v78 = v77;
    v80 = sub_1BE0521C4();
    v86 = v76;
    v87 = v79;
    if (v86 == v80 && v78 == v79)
    {
      v78, v79, v80, v81, v82, v83, v84, v85;
      v87, v88, v89, v90, v91, v92, v93, v94;
    }

    else
    {
      v96 = sub_1BE053B84();
      v78, v97, v98, v99, v100, v101, v102, v103;
      v87, v104, v105, v106, v107, v108, v109, v110;
      if ((v96 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v111 = sub_1BE0521D4();
    if (v111 >> 62)
    {
      v192 = v111;
      v193 = sub_1BE053704();
      v192, v194, v195, v196, v197, v198, v199, v200;
      if (v193)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v119 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v111, v112, v113, v114, v115, v116, v117, v118;
    if (!v119)
    {
LABEL_15:
      (*(v222 + 24))(v75, v71, v223);
    }

LABEL_16:
    v210 = v44;
    v207 = a11;
    v208 = a10;
    sub_1BE0521C4();
    v121 = v120;
    v122 = sub_1BE0521D4();
    v123 = objc_allocWithZone(PKPassWeatherSymbol);
    v124 = sub_1BE052404();
    v121, v125, v126, v127, v128, v129, v130, v131;
    sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
    v132 = sub_1BE052724();
    v122, v133, v134, v135, v136, v137, v138, v139;
    v140 = [v123 initWithSymbolName:v124 colorPalette:v132];

    v206 = v140;
    sub_1BE0521C4();
    v142 = v141;
    v143 = sub_1BE0521D4();
    v144 = objc_allocWithZone(PKPassWeatherSymbol);
    v145 = sub_1BE052404();
    v142, v146, v147, v148, v149, v150, v151, v152;
    v153 = sub_1BE052724();
    v143, v154, v155, v156, v157, v158, v159, v160;
    v161 = [v144 initWithSymbolName:v145 colorPalette:v153];

    sub_1BD0E5E8C(0, &qword_1EBD3A0A0, 0x1E695DFF8);
    v205 = v161;
    v162 = v211;
    sub_1BE052F54();
    v163 = v235;
    sub_1BD0DE53C(v235, &unk_1EBD3CF70, &qword_1BE0BA000);
    sub_1BD0DE204(v162, v163, &unk_1EBD3CF70, &qword_1BE0BA000);
    v164 = v212;
    sub_1BE04B474();
    sub_1BE04B544();
    v166 = v165;
    v209(v164, v74);
    sub_1BE04B464();
    v234 = v37;
    sub_1BE04B454();
    sub_1BE04B504();
    v167 = v214;
    sub_1BD0DE19C(v163, v214, &unk_1EBD3CF70, &qword_1BE0BA000);
    v217 = sub_1BE052404();
    v218 = sub_1BE04AE64();
    v216 = sub_1BE052404();
    v166, v168, v169, v170, v171, v172, v173, v174;
    v215 = sub_1BE04A1C4();
    v175 = sub_1BE04A1C4();
    v176 = sub_1BE04A9C4();
    v177 = v233;
    v178 = v236;
    v179 = 0;
    if ((*(v233 + 48))(v167, 1, v236) != 1)
    {
      v179 = sub_1BE04A9C4();
      (*(v177 + 8))(v167, v178);
    }

    v180 = objc_allocWithZone(PKPassWeatherInformation);
    BYTE1(v204) = v207 & 1;
    LOBYTE(v204) = v208 & 1;
    v203 = v176;
    v201 = v175;
    v202 = v224;
    v181 = v217;
    v182 = v218;
    v183 = v206;
    v184 = v205;
    v185 = v175;
    v186 = v216;
    v224 = v176;
    v187 = v215;
    v95 = [v180 initWithCityName:v217 date:v218 lightSymbol:v206 darkSymbol:v205 weatherDescription:v216 highTemperature:v215 lowTemperature:v201 rawLocation:v202 attributionURL:v203 weatherURL:v179 isHistoricalEstimate:v204 isForPastDate:?];

    (*(v177 + 8))(v231, v236);
    v188 = *(v219 + 8);
    v189 = v232;
    v188(v230, v232);
    v188(v229, v189);
    v190 = v223;
    v191 = *(v222 + 8);
    v191(v228, v223);
    v191(v227, v190);
    sub_1BD0DE53C(v235, &unk_1EBD3CF70, &qword_1BE0BA000);
    (*(v225 + 8))(v234, v226);
    v44 = v210;
    goto LABEL_19;
  }

  v45 = *v42;
  sub_1BE04D1F4();
  v46 = v45;
  v47 = sub_1BE04D204();
  v48 = sub_1BE052C34();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v221;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    v53 = v45;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v54;
    *v52 = v54;
    _os_log_impl(&dword_1BD026000, v47, v48, "PassLocationWeatherManager: Failed to get weather forecast with error: %@", v51, 0xCu);
    sub_1BD0DE53C(v52, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v52, -1, -1);
    MEMORY[0x1BFB45F20](v51, -1, -1);
  }

  (*(v224 + 1))(v16, v14);
  (v50)(0);
}

void sub_1BD138774(unint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1BE04D1F4();
    v13 = a2;
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_1BD026000, v14, v15, "PassLocationWeatherManager: Failed to get placemark with error: %@", v16, 0xCu);
      sub_1BD0DE53C(v17, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v17, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    (a3)(0);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, a1, v8);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(a1 + 32);
  }

  v22 = v11;
  a3();
  v12 = v22;
}

void sub_1BD1389F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3A050, 0x1E695FC20);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v7 = a3;
  v6(v4, a3);
  v5, v8, v9, v10, v11, v12, v13, v14;

  v4, v15, v16, v17, v18, v19, v20, v21;
}

id PassLocationWeatherManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassLocationWeatherManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassLocationWeatherManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD138BB0(char *a1, void *a2, void *a3, void (**a4)(const void *, void))
{
  v157 = a3;
  v163 = a2;
  v172 = a1;
  v5 = sub_1BE04B2D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1BE04B2F4();
  v9 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v171 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v149 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v149 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v149 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v149 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v177 = &v149 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v149 - v25;
  v175 = sub_1BE04AF64();
  v186 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v162 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v161 = &v149 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v160 = &v149 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v149 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v166 = &v149 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v149 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v149 - v39;
  v156 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v149 - v43;
  v184 = swift_allocObject();
  v184[2] = a4;
  v176 = a4;
  _Block_copy(a4);
  sub_1BE04AF54();
  v167 = objc_opt_self();
  v45 = [v167 currentCalendar];
  sub_1BE04B1F4();

  v46 = *(v6 + 104);
  v174 = *MEMORY[0x1E6969A48];
  v178 = v46;
  v46(v8);
  sub_1BE04B224();
  v47 = *(v6 + 8);
  v169 = v8;
  v48 = v8;
  v49 = v5;
  v50 = v175;
  v51 = v49;
  v183 = v6 + 8;
  v179 = v47;
  (v47)(v48);
  v52 = *(v9 + 8);
  v181 = v11;
  v182 = v9 + 8;
  v180 = v52;
  v52(v11, v187);
  v53 = v186;
  v54 = v186 + 48;
  v55 = *(v186 + 48);
  if (v55(v26, 1, v50) != 1)
  {
    v152 = v55;
    v159 = v54;
    v63 = *(v53 + 32);
    v155 = v53 + 32;
    v151 = v63;
    v63(v40, v26, v50);
    v153 = v40;
    v64 = v172;
    v154 = sub_1BE04AF04();
    v65 = v181;
    sub_1BE04B2A4();
    v66 = v53;
    v67 = v169;
    v178(v169, v174, v51);
    v165 = v44;
    v68 = v51;
    v150 = sub_1BE04B294();
    v179(v67, v51);
    v180(v65, v187);
    v69 = v50;
    v70 = *(v66 + 56);
    v70(v177, 1, 1, v69);
    v70(v185, 1, 1, v69);
    v71 = v167;
    v72 = [v167 currentCalendar];
    sub_1BE04B1F4();

    if (v154 == 1)
    {
      v73 = v71;
      v178(v67, *MEMORY[0x1E6969A68], v68);
      v74 = v168;
      v75 = v181;
      sub_1BE04B224();
      v179(v67, v68);
      v180(v75, v187);
      v76 = v185;
      sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
      sub_1BD0DE204(v74, v76, &unk_1EBD39970, &unk_1BE0B9F80);
      v77 = v76;
      v78 = v164;
      sub_1BD0DE19C(v77, v164, &unk_1EBD39970, &unk_1BE0B9F80);
      v79 = v152;
      if (v152(v78, 1, v69) == 1)
      {
        sub_1BD0DE53C(v78, &unk_1EBD39970, &unk_1BE0B9F80);
        v80 = v177;
      }

      else
      {
        v88 = v158;
        v151(v158, v78, v69);
        v89 = [v73 currentCalendar];
        v90 = v74;
        v91 = v181;
        sub_1BE04B1F4();

        v178(v67, v174, v68);
        sub_1BE04B224();
        v179(v67, v68);
        v180(v91, v187);
        (*(v186 + 8))(v88, v69);
        v80 = v177;
        sub_1BD0DE53C(v177, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE204(v90, v80, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      v83 = v185;
      v85 = v165;
      v86 = v176;
      v87 = v170;
    }

    else
    {
      v178(v67, v174, v68);
      v81 = v168;
      v82 = v181;
      sub_1BE04B224();
      v179(v67, v68);
      v180(v82, v187);
      v83 = v185;
      sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
      v84 = v177;
      sub_1BD0DE53C(v177, &unk_1EBD39970, &unk_1BE0B9F80);
      sub_1BD0DE204(v81, v83, &unk_1EBD39970, &unk_1BE0B9F80);
      (*(v186 + 16))(v84, v64, v69);
      v70(v84, 0, 1, v69);
      v80 = v84;
      v85 = v165;
      v86 = v176;
      v87 = v170;
      v79 = v152;
    }

    sub_1BD0DE19C(v80, v87, &unk_1EBD39970, &unk_1BE0B9F80);
    v92 = v79(v87, 1, v69);
    v93 = v173;
    v94 = v171;
    if (v92 == 1)
    {
      sub_1BD0DE53C(v87, &unk_1EBD39970, &unk_1BE0B9F80);
      v95 = v186;
    }

    else
    {
      v96 = v166;
      v97 = v151;
      v151(v166, v87, v69);
      sub_1BD0DE19C(v83, v94, &unk_1EBD39970, &unk_1BE0B9F80);
      v98 = v79(v94, 1, v69);
      v99 = v94;
      v95 = v186;
      if (v98 == 1)
      {
        (*(v186 + 8))(v96, v69);
        sub_1BD0DE53C(v99, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      else
      {
        v97(v93, v99, v69);
        if (v163)
        {
          LODWORD(v183) = v150 == 1;
          LODWORD(v182) = v154 == 1;
          v100 = swift_allocObject();
          v187 = v100;
          v101 = v184;
          *(v100 + 16) = sub_1BD139BD4;
          *(v100 + 24) = v101;
          v102 = v95;
          v103 = *(v95 + 16);
          v103(v160, v166, v69);
          v104 = v97;
          v103(v161, v93, v69);
          v103(v162, v172, v69);
          v105 = *(v102 + 80);
          v106 = (v105 + 32) & ~v105;
          v107 = (v156 + v105 + v106) & ~v105;
          v108 = (v156 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
          v110 = (v105 + v109 + 8) & ~v105;
          v111 = v110 + v156;
          v112 = swift_allocObject();
          v113 = v187;
          *(v112 + 2) = sub_1BD13A488;
          *(v112 + 3) = v113;
          v104(&v112[v106], v160, v69);
          v104(&v112[v107], v161, v69);
          v114 = v163;
          *&v112[v108] = v163;
          v115 = v157;
          *&v112[v109] = v157;
          v104(&v112[v110], v162, v69);
          v116 = &v112[v111];
          *v116 = v182;
          v116[1] = v183;
          v117 = objc_allocWithZone(MEMORY[0x1E695FBC8]);
          v118 = v114;
          sub_1BE048964();
          v119 = v187;
          sub_1BE048964();
          v120 = v115;
          v121 = [v117 init];
          v122 = swift_allocObject();
          *(v122 + 16) = sub_1BD13A484;
          *(v122 + 24) = v112;
          aBlock[4] = sub_1BD13A47C;
          v189 = v122;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD1389F0;
          aBlock[3] = &block_descriptor_25;
          v123 = _Block_copy(aBlock);
          v124 = v189;
          sub_1BE048964();
          v124, v125, v126, v127, v128, v129, v130, v131;
          [v121 reverseGeocodeLocation:v118 completionHandler:v123];
          _Block_release(v123);

          v119, v132, v133, v134, v135, v136, v137, v138;
          v112, v139, v140, v141, v142, v143, v144, v145;

          v146 = *(v186 + 8);
          v146(v173, v69);
          v146(v166, v69);
          sub_1BD0DE53C(v185, &unk_1EBD39970, &unk_1BE0B9F80);
          sub_1BD0DE53C(v177, &unk_1EBD39970, &unk_1BE0B9F80);
          v146(v153, v69);
          v146(v165, v69);
          goto LABEL_18;
        }

        v147 = *(v95 + 8);
        v147(v93, v69);
        v147(v166, v69);
        v86 = v176;
      }

      v85 = v165;
    }

    v86[2](v86, 0);
    sub_1BD0DE53C(v83, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD0DE53C(v80, &unk_1EBD39970, &unk_1BE0B9F80);
    v148 = *(v95 + 8);
    v148(v153, v69);
    v148(v85, v69);
    goto LABEL_18;
  }

  sub_1BD0DE53C(v26, &unk_1EBD39970, &unk_1BE0B9F80);
  v176[2](v176, 0);
  (*(v53 + 8))(v44, v50);
LABEL_18:
  v184, v56, v57, v58, v59, v60, v61, v62;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 24), v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v2 + 8);
  v16(v0 + v4, v1);
  v16(v0 + v6, v1);

  v16(v0 + ((v3 + v8 + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD139D34(void *a1)
{
  v3 = *(sub_1BE04AF64() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + ((v4 + v9 + 8) & ~v4);
  return sub_1BD1372C4(a1, *(v1 + 16), *(v1 + 24), v1 + v5, v1 + v7, *(v1 + v8), *(v1 + v9), v10, *(v10 + v6), *(v10 + v6 + 1));
}

void sub_1BD139E10(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  _Block_copy(a3);
  v16 = [a1 eventLocation];
  v17 = [v16 CLLocation];

  sub_1BE04AF54();
  sub_1BD1354CC(a1, v15, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
    a3[2](a3, 0);

    (*(v10 + 8))(v15, v9);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    _Block_copy(a3);
    sub_1BD138BB0(v12, v17, a2, a3);
    _Block_release(a3);

    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
  }

  _Block_release(a3);
}

void sub_1BD13A088(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  _Block_copy(a3);
  v13 = [a1 metadata];
  v14 = [v13 eventMetadata];

  if (v14)
  {
    v15 = [v14 venueLocation];
    v16 = [v15 CLLocation];

    v17 = [v14 date];
    if (v17)
    {
      v18 = v17;
      sub_1BE04AEE4();

      (*(v7 + 32))(v12, v9, v6);
      _Block_copy(a3);
      sub_1BD138BB0(v12, v16, a2, a3);
      _Block_release(a3);

      (*(v7 + 8))(v12, v6);
      _Block_release(a3);
      return;
    }

    a3[2](a3, 0);
  }

  else
  {
    a3[2](a3, 0);
  }

  _Block_release(a3);
}

unint64_t sub_1BD13A2E8()
{
  result = qword_1EBD3A070;
  if (!qword_1EBD3A070)
  {
    sub_1BE04B494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A070);
  }

  return result;
}

unint64_t sub_1BD13A340()
{
  result = qword_1EBD3A080;
  if (!qword_1EBD3A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A078, &qword_1BE0B9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A080);
  }

  return result;
}

void sub_1BD13A3A4(uint64_t a1)
{
  v3 = *(sub_1BE04AF64() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD1379A0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9));
}

uint64_t sub_1BD13A4C4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BE051E44();
}

uint64_t sub_1BD13A694@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1BE0534B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

void *sub_1BD13A700(uint64_t a1, uint64_t a2)
{
  v8 = sub_1BE04F994();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1BE04F9A4();
}

void *sub_1BD13A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1BE04F994();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1BE04F9A4();
}

uint64_t sub_1BD13A8F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04CBF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD13A948()
{
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);

  return sub_1BE04E964();
}

uint64_t sub_1BD13A9D0(uint64_t a1)
{
  sub_1BD0DE19C(a1, v3, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  return sub_1BD0DE53C(a1, &qword_1EBD51EC0, &qword_1BE0B7120);
}

uint64_t sub_1BD13AA50(uint64_t a1)
{
  sub_1BD0DE19C(a1, v3, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(a1, &qword_1EBD51EC0, &qword_1BE0B7120);
}

uint64_t sub_1BD13AAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  return sub_1BD0DE53C(a1, &qword_1EBD3D520, &qword_1BE0C12E0);
}

BOOL sub_1BD13AB9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  sub_1BE0516A4();
  v3 = sub_1BE04C614();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) == 1;
  sub_1BD0DE53C(v2, &qword_1EBD3D520, &qword_1BE0C12E0);
  return v4;
}

void sub_1BD13ACA0(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v46 = a11;
  v47 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v46 - v20;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a9[4] = sub_1BE04EEC4();
  a9[5] = v22;
  memset(v52, 0, sizeof(v52));
  sub_1BD13A9D0(v52);
  *v52 = a10;
  *&v52[8] = v46;
  *&v52[24] = v47;
  v53 = a13;
  v54 = a14;
  v23 = type metadata accessor for AuthenticatedTransactionSheet(0, v52);
  v24 = sub_1BE04C614();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  sub_1BD13AAD4(v21);
  v25 = *(v23 + 108);
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v26 = a9 + *(v23 + 112);
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a9 = sub_1BE04E954();
  a9[1] = v27;
  sub_1BD0EE8CC(a1, (a9 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v28 = sub_1BE04E954();
  v30 = v29;
  a2, v29, v31, v32, v33, v34, v35, v36;
  a9[2] = v28;
  a9[3] = v30;
  a9[11] = a3;
  a9[12] = a4;
  v37 = v49;
  a9[13] = v48;
  a9[14] = v37;
  v38 = v51;
  a9[15] = v50;
  a9[16] = v38;
  __swift_destroy_boxed_opaque_existential_0(a1, v39, v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1BD13AF94@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v272 = a2;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A218, &qword_1BE0BA210);
  v271 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v270 = &v237 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A220, &qword_1BE0BA218);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v269 = &v237 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A228, &unk_1BE0BA220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v267 = &v237 - v7;
  v300 = *(a1 - 1);
  v297 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v287 = &v237 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
  v283 = a1[5];
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1BE051854();
  v273 = v10;
  MEMORY[0x1EEE9AC00](v10);
  *&v296 = &v237 - v11;
  v284 = a1[4];
  v301 = a1[7];
  v12 = sub_1BE04C674();
  v291 = v12;
  v13 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v295 = &v237 - v14;
  v15 = a1[3];
  v278 = a1;
  v279 = v15;
  v298 = a1[6];
  v17 = type metadata accessor for PaymentSheetHeader(255, v15, v298, v16);
  v294 = v17;
  v18 = swift_getWitnessTable();
  v292 = v18;
  v19 = swift_getWitnessTable();
  v251 = v19;
  v250 = swift_getWitnessTable();
  *&v306 = v17;
  *(&v306 + 1) = v12;
  *&v307 = v10;
  *(&v307 + 1) = v18;
  *&v308 = v19;
  *(&v308 + 1) = v250;
  v20 = type metadata accessor for PaymentRequestView(0, &v306);
  v261 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v281 = &v237 - v21;
  v289 = v20;
  v22 = sub_1BE04EBD4();
  v265 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v282 = &v237 - v23;
  v24 = sub_1BE04C614();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A230, &unk_1BE0BA230);
  v290 = swift_getWitnessTable();
  v319 = v290;
  v320 = MEMORY[0x1E69805D0];
  v293 = MEMORY[0x1E697E858];
  v26 = swift_getWitnessTable();
  v27 = sub_1BD145DD8(&qword_1EBD3A238, MEMORY[0x1E69BC8F0], MEMORY[0x1E69BC900]);
  v268 = MEMORY[0x1E697C278];
  v28 = sub_1BD0DE4F4(&qword_1EBD3A240, &qword_1EBD3A230, &unk_1BE0BA230, MEMORY[0x1E697C278]);
  *&v306 = v22;
  v244 = v22;
  v245 = v24;
  *(&v306 + 1) = v24;
  v246 = v25;
  *&v307 = v25;
  *(&v307 + 1) = v26;
  v242 = v27;
  v243 = v26;
  *&v308 = v27;
  *(&v308 + 1) = v28;
  v241 = v28;
  v274 = MEMORY[0x1E697D530];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v266 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v286 = &v237 - v29;
  v275 = sub_1BE04CB04();
  sub_1BE04C864();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  v276 = sub_1BE04F9B4();
  *&v306 = v22;
  *(&v306 + 1) = v24;
  *&v307 = v25;
  *(&v307 + 1) = v26;
  *&v308 = v27;
  *(&v308 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_1BD145DD8(&qword_1EBD3A248, MEMORY[0x1E69BCAC0], MEMORY[0x1E69BCAC8]);
  v32 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
  v33 = swift_getWitnessTable();
  v317 = v32;
  v318 = v33;
  v315 = swift_getWitnessTable();
  v316 = MEMORY[0x1E6981E60];
  v34 = v276;
  v35 = swift_getWitnessTable();
  v36 = OpaqueTypeMetadata2;
  *&v306 = OpaqueTypeMetadata2;
  v37 = v275;
  *(&v306 + 1) = v275;
  *&v307 = v34;
  v239 = v31;
  v240 = OpaqueTypeConformance2;
  *(&v307 + 1) = OpaqueTypeConformance2;
  *&v308 = v31;
  *(&v308 + 1) = v35;
  v38 = v35;
  v238 = v35;
  v257 = swift_getOpaqueTypeMetadata2();
  v262 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v285 = &v237 - v39;
  type metadata accessor for SecondarySheet(255, v289, v290, v40);
  v280 = sub_1BE04EBD4();
  v263 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v253 = &v237 - v41;
  *&v306 = v36;
  *(&v306 + 1) = v37;
  *&v307 = v34;
  *(&v307 + 1) = OpaqueTypeConformance2;
  *&v308 = v31;
  *(&v308 + 1) = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v249 = v42;
  v43 = swift_getWitnessTable();
  v313 = v42;
  v314 = v43;
  v44 = v280;
  v45 = swift_getWitnessTable();
  *&v306 = v44;
  *(&v306 + 1) = v45;
  v46 = v45;
  v247 = v45;
  v47 = swift_getOpaqueTypeMetadata2();
  v255 = v47;
  v264 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v248 = &v237 - v48;
  v49 = sub_1BD0DE4F4(&qword_1EBD3A250, &qword_1EBD3A218, &qword_1BE0BA210, MEMORY[0x1E695C068]);
  v258 = v49;
  *&v306 = v44;
  *(&v306 + 1) = v46;
  v256 = swift_getOpaqueTypeConformance2();
  *&v306 = v288;
  *(&v306 + 1) = v47;
  *&v307 = v49;
  *(&v307 + 1) = v256;
  v50 = sub_1BE04EE14();
  v259 = *(v50 - 8);
  v260 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v252 = &v237 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v254 = &v237 - v53;
  v54 = v278;
  v55 = v279;
  v274 = v278[2];
  v293 = v278[8];
  v56 = v299;
  v57 = v283;
  v58 = v298;
  v59 = v301;
  v60 = sub_1BD13C3F0(v299, v274, v279, v284, v283, v298, v301, v293);
  v62 = v61;
  sub_1BD13C710(v60, v61, v54, &v306);
  v62, v63, v64, v65, v66, v67, v68, v69;
  v304[4] = v310;
  v304[5] = v311;
  v305 = v312;
  v304[0] = v306;
  v304[1] = v307;
  v304[2] = v308;
  v304[3] = v309;
  sub_1BD13C92C(v54, v295);
  sub_1BD13CC10(v54);
  v70 = *(v56 + 24);
  v237 = *(v56 + 72);
  v71 = v237;
  v72 = __swift_project_boxed_opaque_existential_1((v56 + 48), v237);
  v303 = v237;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v302);
  (*(*(v71 - 8) + 16))(boxed_opaque_existential_1, v72, v71);
  sub_1BE048964();
  v74 = v54;
  LOBYTE(v71) = sub_1BD13AB9C();
  v75 = v55;
  v76 = v284;
  v77 = v293;
  v78 = sub_1BD13CD68(v56, v274, v75, v284, v57, v58, v59, v293);
  *(&v236 + 1) = v251;
  *&v236 = v292;
  sub_1BD9E7C68(v304, v295, v296, 0, 1, v70, v302, v71 & 1, v281, v78, v79, v294, v291, v273, v236, v250);
  v80 = v300;
  v291 = *(v300 + 16);
  v292 = v300 + 16;
  v81 = v287;
  v82 = v74;
  v291(v287, v56, v74);
  v294 = *(v80 + 80);
  v83 = (v294 + 72) & ~v294;
  v84 = swift_allocObject();
  *&v85 = v274;
  *(&v85 + 1) = v279;
  *&v86 = v76;
  *(&v86 + 1) = v283;
  v295 = v86;
  v296 = v85;
  *(v84 + 16) = v85;
  *(v84 + 32) = v86;
  v87 = v298;
  v88 = v301;
  *(v84 + 48) = v298;
  *(v84 + 56) = v88;
  *(v84 + 64) = v77;
  v284 = *(v80 + 32);
  v300 = v80 + 32;
  v284(v84 + v83, v81, v82);
  v89 = v281;
  v90 = v289;
  sub_1BE051054();
  v84, v91, v92, v93, v94, v95, v96, v97;
  (*(v261 + 8))(v89, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v98 = v299;
  v99 = v267;
  sub_1BE0516C4();
  v291(v81, v98, v82);
  v100 = v83;
  v273 = v83;
  v101 = swift_allocObject();
  v102 = v295;
  *(v101 + 16) = v296;
  *(v101 + 32) = v102;
  v103 = v301;
  *(v101 + 48) = v87;
  *(v101 + 56) = v103;
  v104 = v293;
  *(v101 + 64) = v293;
  v105 = v101 + v100;
  v106 = v81;
  v107 = v284;
  v284(v105, v81, v82);
  v108 = v244;
  v109 = v282;
  sub_1BE050F74();
  v101, v110, v111, v112, v113, v114, v115, v116;
  sub_1BD0DE53C(v99, &qword_1EBD3A228, &unk_1BE0BA220);
  (*(v265 + 8))(v109, v108);
  v117 = v299;
  v118 = sub_1BD13A948();
  KeyPath = swift_getKeyPath();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v120 = v269;
  sub_1BE04E974();
  v118, v121, v122, v123, v124, v125, v126, v127;
  KeyPath, v128, v129, v130, v131, v132, v133, v134;
  v135 = v278;
  v291(v106, v117, v278);
  v136 = v273;
  v137 = swift_allocObject();
  v138 = v295;
  *(v137 + 16) = v296;
  *(v137 + 32) = v138;
  v139 = v301;
  *(v137 + 48) = v298;
  *(v137 + 56) = v139;
  *(v137 + 64) = v104;
  v140 = v106;
  v141 = v106;
  v142 = v135;
  v143 = v135;
  v144 = v107;
  v107(v137 + v136, v140, v142);
  swift_checkMetadataState();
  swift_checkMetadataState();
  v145 = OpaqueTypeMetadata2;
  v146 = v286;
  sub_1BE050F74();
  v137, v147, v148, v149, v150, v151, v152, v153;
  sub_1BD0DE53C(v120, &qword_1EBD3A220, &qword_1BE0BA218);
  (*(v266 + 8))(v146, v145);
  v154 = v299;
  v155 = sub_1BD13A948();
  v156 = swift_getKeyPath();
  sub_1BE04E974();
  v156, v157, v158, v159, v160, v161, v162, v163;
  v155, v164, v165, v166, v167, v168, v169, v170;
  v171 = v306;
  v172 = v307;
  v173 = v154;
  v174 = v143;
  v291(v141, v173, v143);
  v175 = v273;
  v176 = swift_allocObject();
  v177 = v295;
  *(v176 + 16) = v296;
  *(v176 + 32) = v177;
  v178 = v301;
  *(v176 + 48) = v298;
  *(v176 + 56) = v178;
  *(v176 + 64) = v293;
  v144(v176 + v175, v141, v174);
  v179 = v253;
  v180 = v172;
  v181 = v257;
  v182 = v285;
  sub_1BD644A30(v171, *(&v171 + 1), v180, sub_1BD1465BC, v176, v257, v289, v249, v290);
  *(&v171 + 1), v183, v184, v185, v186, v187, v188, v189;
  v176, v190, v191, v192, v193, v194, v195, v196;
  v171, v197, v198, v199, v200, v201, v202, v203;
  (*(v262 + 8))(v182, v181);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  v204 = v299;
  sub_1BE0516C4();
  v205 = v248;
  v206 = v280;
  sub_1BE050704();
  sub_1BD0DE53C(&v306, &qword_1EBD51FA0, &unk_1BE0BA2A0);
  (*(v263 + 8))(v179, v206);
  v207 = *(v204 + 8);
  sub_1BE048964();
  v208 = v270;
  sub_1BE04C924();
  v207, v209, v210, v211, v212, v213, v214, v215;
  v216 = v287;
  v291(v287, v204, v174);
  v217 = swift_allocObject();
  v218 = v295;
  *(v217 + 16) = v296;
  *(v217 + 32) = v218;
  v219 = v301;
  *(v217 + 48) = v298;
  *(v217 + 56) = v219;
  *(v217 + 64) = v293;
  v284(v217 + v175, v216, v174);
  v220 = v252;
  v221 = v255;
  v222 = v288;
  sub_1BE051154();
  v217, v223, v224, v225, v226, v227, v228, v229;
  (*(v271 + 8))(v208, v222);
  (*(v264 + 8))(v205, v221);
  v230 = v260;
  swift_getWitnessTable();
  v231 = v259;
  v232 = *(v259 + 16);
  v233 = v254;
  v232(v254, v220, v230);
  v234 = *(v231 + 8);
  v234(v220, v230);
  v232(v272, v233, v230);
  return (v234)(v233, v230);
}

uint64_t (*sub_1BD13C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet(0, v27);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

uint64_t sub_1BD13C568()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1[3] + qword_1EBDAADA8 + 32) paymentRequest];
  if (v7)
  {
    v8 = v7;
    sub_1BD6B50F8(1, v7);
  }

  else
  {
    sub_1BE04D084();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  return sub_1BE04CC74();
}

uint64_t sub_1BD13C710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v9 = v4[1];
  sub_1BE048964();
  v10 = sub_1BE04C8C4();
  v12 = v11;
  v9, v11, v13, v14, v15, v16, v17, v18;
  v19 = v5[3];
  sub_1BE048964();
  sub_1BE048964();
  v20 = sub_1BE04CAE4();
  v19, v21, v22, v23, v24, v25, v26, v27;
  v28 = v5[11];
  v29 = v5[12];
  sub_1BD0D44B8(v28, v29);
  v36 = *(a3 + 24);
  v37 = *(a3 + 48);
  sub_1BD1A0BB0(v10, v12, 0x796150656C707041, 0xEC0000006F676F4CLL, a1, a2, v20 & 1, v28, &v50, v29);
  v31 = type metadata accessor for PaymentSheetHeader(0, v36, v37, v30);
  swift_getWitnessTable();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(v46, &v50, v31);
  v48[4] = v54;
  v48[5] = v55;
  v49 = v56;
  v48[0] = v50;
  v48[1] = v51;
  v48[2] = v52;
  v48[3] = v53;
  v34 = *(v32 + 8);
  v34(v48, v31);
  v43 = v46[4];
  v44 = v46[5];
  v45 = v47;
  v39 = v46[0];
  v40 = v46[1];
  v41 = v46[2];
  v42 = v46[3];
  v33(a4, &v39, v31);
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v50 = v39;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  return v34(&v50, v31);
}

uint64_t sub_1BD13C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(v2 + 104);
  if (v19)
  {
    v28 = a2;
    v19(v16);
    v27 = *(v6 + 32);
    v27(v18, v14, v5);
    v20 = *(v6 + 16);
    v20(v11, v18, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A278, &qword_1BE0BA340);
    if (!swift_dynamicCast())
    {
      v20(v8, v18, v5);
      v22 = (*(v6 + 80) + 72) & ~*(v6 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = *(a1 + 16);
      *(v23 + 32) = v5;
      *(v23 + 40) = *(a1 + 40);
      v26 = *(a1 + 56);
      *(v23 + 56) = v26;
      v27((v23 + v22), v8, v5);
      a2 = v28;
      sub_1BE04C664();
      (*(v6 + 8))(v18, v5);
      v21 = 0;
      goto LABEL_6;
    }

    (*(v6 + 8))(v18, v5);
    a2 = v28;
  }

  v21 = 1;
LABEL_6:
  v24 = sub_1BE04C674();
  return (*(*(v24 - 8) + 56))(a2, v21, 1, v24);
}

uint64_t sub_1BD13CC10(uint64_t a1)
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1BE051844();
}

uint64_t (*sub_1BD13CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet(0, v27);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

double sub_1BD13CEE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v83 = a6;
  v84 = a8;
  v78 = a7;
  v79 = a4;
  v86 = a3;
  v87 = a5;
  v77 = a2;
  v75 = a9;
  v88 = a10;
  v90[0] = a3;
  v90[1] = a4;
  v90[2] = a5;
  v90[3] = a6;
  v90[4] = a7;
  v90[5] = a8;
  v90[6] = a10;
  v11 = type metadata accessor for AuthenticatedTransactionSheet(0, v90);
  v65 = v11;
  v12 = *(v11 - 8);
  v85 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - v13;
  v69 = &v62 - v13;
  v15 = sub_1BE04C614();
  v64 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_1BD13D3E8(a1, &v89);
  v72 = *(v16 + 16);
  v72(&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v18 = *(v12 + 16);
  v81 = v12 + 16;
  v82 = v18;
  v18(v14, v77, v11);
  v19 = *(v16 + 80);
  v74 = *(v12 + 80);
  v68 = (v19 + 72) & ~v19;
  v80 = v74 | 7;
  v20 = (v17 + v74 + v68) & ~v74;
  v63 = v20;
  v21 = swift_allocObject();
  v22 = v87;
  v23 = v79;
  *(v21 + 2) = v86;
  *(v21 + 3) = v23;
  v24 = v83;
  *(v21 + 4) = v22;
  *(v21 + 5) = v24;
  v25 = v84;
  *(v21 + 6) = v78;
  *(v21 + 7) = v25;
  *(v21 + 8) = v88;
  v26 = *(v16 + 32);
  v66 = v16 + 32;
  v67 = v26;
  v27 = v76;
  v28 = v64;
  v26(&v21[(v19 + 72) & ~v19], v76, v64);
  v30 = v12 + 32;
  v29 = *(v12 + 32);
  v31 = &v21[v20];
  v32 = v69;
  v33 = v65;
  v29(v31, v69, v65);
  v70 = v29;
  v71 = v30;
  v72(v27, v73, v28);
  v34 = v32;
  v35 = v32;
  v36 = v77;
  v82(v34, v77, v33);
  v37 = v63;
  v38 = swift_allocObject();
  v39 = v87;
  *(v38 + 2) = v86;
  *(v38 + 3) = v23;
  v41 = v83;
  v40 = v84;
  *(v38 + 4) = v39;
  *(v38 + 5) = v41;
  v42 = v78;
  *(v38 + 6) = v78;
  *(v38 + 7) = v40;
  *(v38 + 8) = v88;
  v67(&v38[v68], v76, v28);
  v43 = v35;
  v29(&v38[v37], v35, v33);
  v44 = v36;
  v45 = *(v36 + 24);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A230, &unk_1BE0BA230);
  sub_1BE048964();
  v47 = v75;
  sub_1BE04CA34();
  v45, v48, v49, v50, v51, v52, v53, v54;
  v82(v43, v44, v33);
  v55 = (v74 + 72) & ~v74;
  v56 = swift_allocObject();
  v57 = v79;
  *(v56 + 2) = v86;
  *(v56 + 3) = v57;
  v59 = v83;
  v58 = v84;
  *(v56 + 4) = v87;
  *(v56 + 5) = v59;
  *(v56 + 6) = v42;
  *(v56 + 7) = v58;
  *(v56 + 8) = v88;
  v70(v56 + v55, v43, v33);
  *v47 = v89;
  *(v47 + 1) = v90[0];
  *(v47 + 4) = *(v90 + 3);
  *(v47 + 8) = sub_1BD146840;
  *(v47 + 16) = v21;
  result = 0.0;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = sub_1BD146AFC;
  *(v47 + 64) = v38;
  v61 = (v47 + *(v46 + 56));
  *v61 = sub_1BD146C40;
  v61[1] = v56;
  return result;
}

void *sub_1BD13D3E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1BE04C614();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E69BC8C0])
  {
    v11[12] = 0;
    result = sub_1BE04F9A4();
    v10 = v11[13];
  }

  else
  {
    v11[14] = 1;
    sub_1BE04F9A4();
    v10 = v11[15];
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1BD13D568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  type metadata accessor for AuthenticatedTransactionSheet(0, v17);
  v11 = *(a2[3] + qword_1EBDAADA8 + 32);
  v12 = 0;
  if ([v11 mode] == 1)
  {
    v12 = [v11 pass];
  }

  v13 = [v11 fundingMode];
  v14 = [v11 paymentOffersController];
  v15 = [v11 selectedPaymentOffer];
  sub_1BD6B39C8(a1, v13, v14, v15, v12);

  result = sub_1BE04C5F4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    return sub_1BE04CC84();
  }

  return result;
}

void sub_1BD13D6BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  type metadata accessor for AuthenticatedTransactionSheet(0, v14);
  v11 = *(a2[3] + qword_1EBDAADA8 + 32);
  v12 = [v11 fundingMode];
  v13 = [v11 selectedPaymentOffer];
  sub_1BD6B4058(a1, v12, v13);

  if (sub_1BE04C5F4())
  {
    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    sub_1BE04CC94();
  }

  sub_1BD13D7B4();
}

void sub_1BD13D7B4()
{
  v1 = *(v0 + 24);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(v35);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v1, v18, v19, v20, v21, v22, v23, v24;
  v36[4] = v35[4];
  v36[5] = v35[5];
  v36[6] = v35[6];
  v36[0] = v35[0];
  v36[1] = v35[1];
  v36[2] = v35[2];
  v36[3] = v35[3];
  v25 = *(&v35[0] + 1);
  sub_1BE048C84();
  sub_1BD146D0C(v36);
  if (v25)
  {
    v26 = *MEMORY[0x1E69DD888];
    v27 = sub_1BE052404();
    v25, v28, v29, v30, v31, v32, v33, v34;
    UIAccessibilityPostNotification(v26, v27);
  }
}

uint64_t sub_1BD13D8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1BE04CA04();
  result = (*(*(v16 - 8) + 48))(a1, 1, v16);
  if (result != 1)
  {
    v19[0] = a3;
    v19[1] = a4;
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = a7;
    v19[5] = a8;
    v19[6] = a9;
    v18 = type metadata accessor for AuthenticatedTransactionSheet(0, v19);
    return sub_1BD13D964(v18);
  }

  return result;
}

uint64_t sub_1BD13D964(uint64_t a1)
{
  v3 = sub_1BE04C614();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A258, &qword_1BE0BA2B8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(a1 + 104);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v42 = v1;
  v38 = v23;
  v39 = v22;
  sub_1BE0516A4();
  (*(v4 + 104))(v18, *MEMORY[0x1E69BC8B8], v3);
  v36 = *(v4 + 56);
  v37 = v4 + 56;
  v36(v18, 0, 1, v3);
  v24 = *(v7 + 56);
  sub_1BD0DE19C(v21, v9, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BD0DE19C(v18, &v9[v24], &qword_1EBD3D520, &qword_1BE0C12E0);
  v25 = *(v4 + 48);
  if (v25(v9, 1, v3) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BD0DE53C(v21, &qword_1EBD3D520, &qword_1BE0C12E0);
    if (v25(&v9[v24], 1, v3) == 1)
    {
      sub_1BD0DE53C(v9, &qword_1EBD3D520, &qword_1BE0C12E0);
      v26 = 3;
      goto LABEL_10;
    }

LABEL_6:
    sub_1BD0DE53C(v9, &qword_1EBD3A258, &qword_1BE0BA2B8);
    v26 = 2;
    goto LABEL_10;
  }

  sub_1BD0DE19C(v9, v35, &qword_1EBD3D520, &qword_1BE0C12E0);
  if (v25(&v9[v24], 1, v3) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BD0DE53C(v21, &qword_1EBD3D520, &qword_1BE0C12E0);
    (*(v4 + 8))(v35, v3);
    goto LABEL_6;
  }

  v27 = v34;
  (*(v4 + 32))(v34, &v9[v24], v3);
  sub_1BD145DD8(&qword_1EBD3A260, MEMORY[0x1E69BC8F0], MEMORY[0x1E69BC8F8]);
  v28 = v35;
  v29 = sub_1BE052334();
  v30 = *(v4 + 8);
  v30(v27, v3);
  sub_1BD0DE53C(v18, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BD0DE53C(v21, &qword_1EBD3D520, &qword_1BE0C12E0);
  v30(v28, v3);
  sub_1BD0DE53C(v9, &qword_1EBD3D520, &qword_1BE0C12E0);
  if (v29)
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

LABEL_10:
  sub_1BD6B2184(1, v26, 0);
  v31 = v40;
  v36(v40, 1, 1, v3);
  sub_1BD0DE19C(v31, v41, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v31, &qword_1EBD3D520, &qword_1BE0C12E0);
}

uint64_t sub_1BD13DE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &unk_1EBD52000, &qword_1BE0BA2B0);
  return sub_1BE04CB24();
}

uint64_t sub_1BD13DF48@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v29 = a6;
  v30 = a8;
  v28 = a5;
  v31 = a1;
  v32 = a2;
  v33 = a9;
  sub_1BE04C864();
  type metadata accessor for PaymentSheetHeader(255, a4, a7, v13);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  v14 = sub_1BE04F9B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = v28;
  v38[3] = v29;
  v38[4] = a7;
  v38[5] = v30;
  v38[6] = a10;
  v21 = type metadata accessor for AuthenticatedTransactionSheet(0, v38);
  sub_1BD13E1F0(v31, v21, v17);
  v22 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
  WitnessTable = swift_getWitnessTable();
  v36 = v22;
  v37 = WitnessTable;
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v24 = *(v15 + 16);
  v24(v20, v17, v14);
  v25 = *(v15 + 8);
  v25(v17, v14);
  v24(v33, v20, v14);
  return (v25)(v20, v14);
}

uint64_t sub_1BD13E1F0@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v53 = a3;
  v4 = sub_1BE04C864();
  v5 = *(a2 + 24);
  v6 = v5;
  v44 = *(a2 + 48);
  type metadata accessor for PaymentSheetHeader(255, v5, v44, v7);
  WitnessTable = swift_getWitnessTable();
  v52 = sub_1BE04F6A4();
  v8 = sub_1BE04EBD4();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v43 - v12;
  v51 = v4;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04CB04();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04F9B4();
  v49 = *(v21 - 8);
  v50 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v54 = &v43 - v23;
  (*(v18 + 16))(v20, v48, v17, v22);
  if ((*(v18 + 88))(v20, v17) == *MEMORY[0x1E69BCAB8])
  {
    (*(v18 + 96))(v20, v17);
    v24 = *(v13 + 32);
    v43 = v16;
    v25 = v24(v16, v20, v51);
    v48 = &v43;
    MEMORY[0x1EEE9AC00](v25);
    *(&v43 - 8) = *(a2 + 16);
    *(&v43 - 7) = v6;
    *(&v43 - 3) = *(a2 + 32);
    *(&v43 - 4) = v44;
    *(&v43 - 3) = *(a2 + 56);
    sub_1BE04F7B4();
    v26 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
    v41 = v26;
    v42 = WitnessTable;
    sub_1BE050A44();
    v27 = swift_getWitnessTable();
    v55 = v26;
    v56 = v27;
    swift_getWitnessTable();
    v28 = v46;
    v29 = *(v46 + 16);
    v30 = v47;
    v29(v47, v10, v8);
    v31 = *(v28 + 8);
    v31(v10, v8);
    v29(v10, v30, v8);
    sub_1BD13A700(v10, v8);
    v31(v10, v8);
    v31(v30, v8);
    (*(v13 + 8))(v43, v51);
  }

  else
  {
    v32 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
    v33 = swift_getWitnessTable();
    v61 = v32;
    v62 = v33;
    v34 = swift_getWitnessTable();
    sub_1BD13A7F8(v34, v8, MEMORY[0x1E6981E70]);
    (*(v18 + 8))(v20, v17);
  }

  v35 = sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
  v36 = swift_getWitnessTable();
  v59 = v35;
  v60 = v36;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E6981E60];
  v37 = v50;
  swift_getWitnessTable();
  v38 = v49;
  v39 = v54;
  (*(v49 + 16))(v53, v54, v37);
  return (*(v38 + 8))(v39, v37);
}

void sub_1BD13E8C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v56 = a1;
  v64 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v63 = sub_1BE051854();
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v55 - v16;
  v17 = a4;
  v18 = a7;
  v62 = sub_1BE04C674();
  v19 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v55 - v20;
  v21 = a1;
  v22 = a2;
  v57 = a3;
  v58 = a2;
  v23 = a2;
  v59 = a5;
  v24 = a6;
  v25 = v61;
  v26 = sub_1BD13ECB0(v21, v23, a3, v17, a5, a6, v18, v61);
  v28 = v27;
  *&v70 = v22;
  *(&v70 + 1) = a3;
  *&v71 = v17;
  *(&v71 + 1) = a5;
  *&v72 = v24;
  *(&v72 + 1) = v18;
  *&v73 = v25;
  v29 = type metadata accessor for AuthenticatedTransactionSheet(0, &v70);
  v30 = v56;
  sub_1BD13C710(v26, v28, v29, &v70);
  v28, v31, v32, v33, v34, v35, v36, v37;
  v68[4] = v74;
  v68[5] = v75;
  v69 = v76;
  v68[0] = v70;
  v68[1] = v71;
  v68[2] = v72;
  v68[3] = v73;
  sub_1BD13C92C(v29, v65);
  v38 = v60;
  sub_1BD13CC10(v29);
  v39 = *(v30 + 24);
  v55 = *(v30 + 72);
  v40 = v55;
  v41 = __swift_project_boxed_opaque_existential_1((v30 + 48), v55);
  v67 = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v41, v40);
  v43 = v57;
  v44 = sub_1BD13EE28(v30, v58, v57, v17, v59, v24, v18, v25);
  v46 = v45;
  v48 = type metadata accessor for PaymentSheetHeader(0, v43, v24, v47);
  sub_1BE048964();
  v49 = swift_getWitnessTable();
  v50 = v62;
  v51 = swift_getWitnessTable();
  v52 = v63;
  v53 = swift_getWitnessTable();
  *(&v54 + 1) = v51;
  *&v54 = v49;
  sub_1BD9E7C68(v68, v65, v38, 0, 1, v39, v66, 1, v64, v44, v46, v48, v50, v52, v54, v53);
}

uint64_t (*sub_1BD13ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet(0, v27);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD14730C;
}

uint64_t (*sub_1BD13EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v25 = a7;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v14 = type metadata accessor for AuthenticatedTransactionSheet(0, v27);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v15 + 16))(&v24 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v22 = v25;
  v21 = v26;
  *(v20 + 6) = a6;
  *(v20 + 7) = v22;
  *(v20 + 8) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  return sub_1BD146760;
}

void sub_1BD13EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1BD0DE19C(a1, &v30, &qword_1EBD51EC0, &qword_1BE0B7120);
  if (v32)
  {
    sub_1BD0EF554(&v30, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v36, v29);
      *&v30 = a3;
      *(&v30 + 1) = a4;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v34 = a8;
      v35 = a9;
      type metadata accessor for AuthenticatedTransactionSheet(0, &v30);
      sub_1BD13AA50(v29);
      __swift_destroy_boxed_opaque_existential_0(&v36, v22, v23, v24, v25, v26, v27, v28);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(&v36, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    sub_1BD0DE53C(&v30, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  type metadata accessor for AuthenticatedTransactionSheet(0, &v30);
  sub_1BD13AA50(&v36);
}

uint64_t sub_1BD13F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1BD13F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v146 = a1;
  v144 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
  swift_getTupleTypeMetadata2();
  v17 = sub_1BE051E34();
  v147 = sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  v148 = sub_1BE051E34();
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v138 = a7;
  v139 = &v110 - v18;
  v132 = a2;
  v133 = a3;
  *&v168 = a2;
  *(&v168 + 1) = a3;
  v135 = a4;
  *&v169 = a4;
  *(&v169 + 1) = a5;
  v137 = a6;
  *&v170 = a6;
  *(&v170 + 1) = a7;
  v141 = a8;
  *&v171 = a8;
  v19 = type metadata accessor for AuthenticatedTransactionSheet(0, &v168);
  v130 = *(v19 - 8);
  v131 = v19;
  v128 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v110 - v20;
  v143 = v17;
  v127 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v110 - v22;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v110 - v23;
  v126 = v16;
  v123 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v110 - v27;
  v136 = a5;
  v121 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v110 - v31;
  v134 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v142 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v110 - v35;
  v37 = v148;
  v38 = sub_1BE0534B4();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v110 - v43;
  v45 = v146;
  v46 = *(v146 + 8);
  sub_1BE048964();
  LOBYTE(a6) = sub_1BE04C8A4();
  v46, v47, v48, v49, v50, v51, v52, v53;
  if (a6)
  {
    v113 = v41;
    v114 = v39;
    v115 = v44;
    v116 = v38;
    v54 = *(v45 + 120);
    v55 = v45;
    v125 = v36;
    if (v54)
    {
      v112 = *(v45 + 128);
      sub_1BE048964();
      v56 = v119;
      v54();
      v57 = v121;
      v110 = *(v121 + 16);
      v58 = v140;
      v59 = v136;
      v110(v140, v56, v136);
      v121 = *(v57 + 8);
      (v121)(v56, v59);
      sub_1BE051C64();
      v60 = MEMORY[0x1E6981CD0];
      v61 = MEMORY[0x1E6981CD8];
      v111 = v54;
      sub_1BE04F694();
      *&v168 = v61;
      *(&v168 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      sub_1BD0EEEE0();
      v62 = v120;
      sub_1BE051C84();
      v110(v56, v58, v59);
      *&v168 = v56;
      v63 = v56;
      v65 = v122;
      v64 = v123;
      v66 = v126;
      (*(v123 + 16))(v122, v62, v126);
      *(&v168 + 1) = v65;
      *&v161 = v59;
      *(&v161 + 1) = v66;
      *&v153 = v141;
      *(&v153 + 1) = sub_1BD146EE8();
      v67 = v124;
      sub_1BD13A4C4(&v168, 2uLL, &v161);
      sub_1BD0D4744(v111, v112, v68, v69, v70, v71, v72, v73);
      v74 = *(v64 + 8);
      v74(v62, v66);
      v75 = v121;
      (v121)(v140, v59);
      v74(v65, v66);
      v55 = v146;
      v76 = v59;
      v75(v63, v59);
      v77 = v127;
      v78 = v142;
      v79 = v143;
      (*(v127 + 32))(v142, v67, v143);
      (*(v77 + 56))(v78, 0, 1, v79);
      swift_getWitnessTable();
      v80 = sub_1BE0534B4();
      (*(*(v80 - 8) + 16))(v125, v78, v80);
      v81 = v134;
      v82 = *(v134 + 8);
      v140 = ((v134 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v83 = v147;
      v82(v78, v147);
    }

    else
    {
      v86 = v142;
      (*(v127 + 56))(v142, 1, 1, v143);
      swift_getWitnessTable();
      v87 = sub_1BE0534B4();
      (*(*(v87 - 8) + 16))(v36, v86, v87);
      v81 = v134;
      v88 = *(v134 + 8);
      v140 = ((v134 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v83 = v147;
      v88(v86, v147);
      v76 = v136;
    }

    v90 = v129;
    v89 = v130;
    v91 = v131;
    (*(v130 + 16))(v129, v55, v131);
    v92 = (*(v89 + 80) + 72) & ~*(v89 + 80);
    v93 = swift_allocObject();
    v94 = v133;
    *(v93 + 2) = v132;
    *(v93 + 3) = v94;
    *(v93 + 4) = v135;
    *(v93 + 5) = v76;
    v95 = v138;
    *(v93 + 6) = v137;
    *(v93 + 7) = v95;
    *(v93 + 8) = v141;
    (*(v89 + 32))(&v93[v92], v90, v91);
    LOBYTE(v160[0]) = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v152[0]) = 0;
    sub_1BE04CDA4();
    sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE048964();
    v97 = sub_1BE04EEC4();
    v99 = v98;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    *&v161 = sub_1BE04E954();
    *(&v161 + 1) = v100;
    *&v162 = sub_1BD31FF5C;
    *(&v162 + 1) = 0;
    LOBYTE(v163) = v160[0];
    *(&v163 + 1) = v168;
    DWORD1(v163) = *(&v168 + 3);
    *(&v163 + 1) = KeyPath;
    LOBYTE(v164) = v152[0];
    *(&v164 + 1) = v153;
    DWORD1(v164) = *(&v153 + 3);
    *(&v164 + 1) = v97;
    *&v165 = v99;
    *(&v165 + 1) = sub_1BD146DD0;
    v166 = v93;
    *&v167 = 0;
    *(&v167 + 1) = 0x4014000000000000;
    v101 = v142;
    v102 = v125;
    (*(v81 + 16))(v142, v125, v83);
    v157 = v165;
    v158 = v166;
    v159 = v167;
    v153 = v161;
    v154 = v162;
    v155 = v163;
    v156 = v164;
    v160[0] = v101;
    v160[1] = &v153;
    sub_1BD0EEF94(&v161, &v168);
    v152[0] = v83;
    v152[1] = &type metadata for PaymentSheetFooter;
    WitnessTable = swift_getWitnessTable();
    v150 = swift_getWitnessTable();
    v151 = sub_1BD146E94();
    v103 = v139;
    sub_1BD13A4C4(v160, 2uLL, v152);
    sub_1BD0EEFF0(&v161);
    v104 = *(v81 + 8);
    v104(v102, v83);
    v172 = v157;
    v173 = v158;
    v174 = v159;
    v168 = v153;
    v169 = v154;
    v170 = v155;
    v171 = v156;
    sub_1BD0EEFF0(&v168);
    v104(v101, v83);
    v105 = v145;
    v106 = v113;
    v107 = v148;
    (*(v145 + 32))(v113, v103, v148);
    (*(v105 + 56))(v106, 0, 1, v107);
    swift_getWitnessTable();
    v108 = v114;
    v44 = v115;
    v84 = *(v114 + 16);
    v38 = v116;
    v84(v115, v106, v116);
    v85 = *(v108 + 8);
    v85(v106, v38);
  }

  else
  {
    (*(v145 + 56))(v41, 1, 1, v37);
    swift_getWitnessTable();
    v84 = *(v39 + 16);
    v84(v44, v41, v38);
    v85 = *(v39 + 8);
    v85(v41, v38);
  }

  v175 = swift_getWitnessTable();
  swift_getWitnessTable();
  v84(v144, v44, v38);
  return (v85)(v44, v38);
}

uint64_t sub_1BD13FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v38 = a7;
  v39 = a8;
  v36 = a1;
  v37 = a6;
  v40 = a5;
  v41 = a9;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  *&v55 = a6;
  *(&v55 + 1) = a7;
  *&v56 = a8;
  v13 = type metadata accessor for AuthenticatedTransactionSheet(0, &v53);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  (*(v14 + 16))(&v36 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v40;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  v22 = v37;
  v21 = v38;
  *(v19 + 6) = v37;
  *(v19 + 7) = v21;
  *(v19 + 8) = v39;
  (*(v14 + 32))(&v19[v18], v17, v13);
  sub_1BD13C710(sub_1BD146778, v19, v13, &v53);
  v19, v23, v24, v25, v26, v27, v28, v29;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v31 = type metadata accessor for PaymentSheetHeader(0, a3, v22, v30);
  swift_getWitnessTable();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(v49, &v42, v31);
  v51[4] = v46;
  v51[5] = v47;
  v52 = v48;
  v51[0] = v42;
  v51[1] = v43;
  v51[2] = v44;
  v51[3] = v45;
  v34 = *(v32 + 8);
  v34(v51, v31);
  v46 = v49[4];
  v47 = v49[5];
  v48 = v50;
  v42 = v49[0];
  v43 = v49[1];
  v44 = v49[2];
  v45 = v49[3];
  v33(v41, &v42, v31);
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  return v34(&v53, v31);
}

void sub_1BD140224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29[-1] - v17;
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v29[6] = a8;
  type metadata accessor for AuthenticatedTransactionSheet(0, v29);
  v19 = *(a1 + 24);
  v20 = sub_1BE04CB04();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1BE048964();
  sub_1BE04CB24();
  v19, v21, v22, v23, v24, v25, v26, v27;
}

void sub_1BD140350(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a9[4] = sub_1BE04EEC4();
  a9[5] = v20;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_1BD13A9D0(&v48);
  *&v48 = a7;
  *(&v48 + 1) = a8;
  *&v49 = MEMORY[0x1E6981E70];
  *(&v49 + 1) = a10;
  v50 = a11;
  v51 = MEMORY[0x1E6981E60];
  v52 = a12;
  v21 = type metadata accessor for AuthenticatedTransactionSheet(0, &v48);
  v22 = sub_1BE04C614();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_1BD13AAD4(v19);
  v23 = *(v21 + 108);
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v24 = a9 + *(v21 + 112);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a9 = sub_1BE04E954();
  a9[1] = v25;
  sub_1BD0EE8CC(a1, (a9 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v26 = sub_1BE04E954();
  v28 = v27;
  a2, v27, v29, v30, v31, v32, v33, v34;
  a9[2] = v26;
  a9[3] = v28;
  v35 = v45;
  a9[11] = v44;
  a9[12] = v35;
  a9[13] = 0;
  a9[14] = 0;
  v36 = v47;
  a9[15] = v46;
  a9[16] = v36;
  __swift_destroy_boxed_opaque_existential_0(a1, v37, v38, v39, v40, v41, v42, v43);
}

void sub_1BD140644(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a9[4] = sub_1BE04EEC4();
  a9[5] = v20;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_1BD13A9D0(&v48);
  *&v48 = a7;
  *(&v48 + 1) = MEMORY[0x1E6981E70];
  *&v49 = a8;
  *(&v49 + 1) = a10;
  v50 = MEMORY[0x1E6981E60];
  v51 = a11;
  v52 = a12;
  v21 = type metadata accessor for AuthenticatedTransactionSheet(0, &v48);
  v22 = sub_1BE04C614();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_1BD13AAD4(v19);
  v23 = *(v21 + 108);
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v24 = a9 + *(v21 + 112);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a9 = sub_1BE04E954();
  a9[1] = v25;
  sub_1BD0EE8CC(a1, (a9 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v26 = sub_1BE04E954();
  v28 = v27;
  a2, v27, v29, v30, v31, v32, v33, v34;
  a9[2] = v26;
  a9[3] = v28;
  a9[11] = 0;
  a9[12] = 0;
  v35 = v45;
  a9[13] = v44;
  a9[14] = v35;
  v36 = v47;
  a9[15] = v46;
  a9[16] = v36;
  __swift_destroy_boxed_opaque_existential_0(a1, v37, v38, v39, v40, v41, v42, v43);
}

void sub_1BD140938(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a9[4] = sub_1BE04EEC4();
  a9[5] = v20;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_1BD13A9D0(&v48);
  *&v48 = a7;
  *(&v48 + 1) = a8;
  *&v49 = a10;
  *(&v49 + 1) = MEMORY[0x1E6981E70];
  v50 = a11;
  v51 = a12;
  v52 = MEMORY[0x1E6981E60];
  v21 = type metadata accessor for AuthenticatedTransactionSheet(0, &v48);
  v22 = sub_1BE04C614();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_1BD13AAD4(v19);
  v23 = *(v21 + 108);
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v24 = a9 + *(v21 + 112);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a9 = sub_1BE04E954();
  a9[1] = v25;
  sub_1BD0EE8CC(a1, (a9 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v26 = sub_1BE04E954();
  v28 = v27;
  a2, v27, v29, v30, v31, v32, v33, v34;
  a9[2] = v26;
  a9[3] = v28;
  v35 = v45;
  a9[11] = v44;
  a9[12] = v35;
  v36 = v47;
  a9[13] = v46;
  a9[14] = v36;
  a9[15] = 0;
  a9[16] = 0;
  __swift_destroy_boxed_opaque_existential_0(a1, v37, v38, v39, v40, v41, v42, v43);
}

void sub_1BD140C2C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  a8[4] = sub_1BE04EEC4();
  a8[5] = v19;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1BD13A9D0(&v41);
  *&v41 = a5;
  *(&v41 + 1) = MEMORY[0x1E6981E70];
  *&v42 = a6;
  *(&v42 + 1) = MEMORY[0x1E6981E70];
  v43 = MEMORY[0x1E6981E60];
  v44 = a7;
  v45 = MEMORY[0x1E6981E60];
  v20 = type metadata accessor for AuthenticatedTransactionSheet(0, &v41);
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  a8[1] = v24;
  sub_1BD0EE8CC(a1, (a8 + 6));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v25 = sub_1BE04E954();
  v27 = v26;
  a2, v26, v28, v29, v30, v31, v32, v33;
  a8[2] = v25;
  a8[3] = v27;
  a8[11] = 0;
  a8[12] = 0;
  a8[13] = a3;
  a8[14] = a4;
  a8[15] = 0;
  a8[16] = 0;
  __swift_destroy_boxed_opaque_existential_0(a1, v34, v35, v36, v37, v38, v39, v40);
}

void sub_1BD140F14(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a8 + 32) = sub_1BE04EEC4();
  *(a8 + 40) = v19;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1BD13A9D0(&v41);
  *&v41 = a5;
  *(&v41 + 1) = MEMORY[0x1E6981E70];
  *&v42 = MEMORY[0x1E6981E70];
  *(&v42 + 1) = a6;
  v43 = MEMORY[0x1E6981E60];
  v44 = MEMORY[0x1E6981E60];
  v45 = a7;
  v20 = type metadata accessor for AuthenticatedTransactionSheet(0, &v41);
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  *(a8 + 8) = v24;
  sub_1BD0EE8CC(a1, a8 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v25 = sub_1BE04E954();
  v27 = v26;
  a2, v26, v28, v29, v30, v31, v32, v33;
  *(a8 + 16) = v25;
  *(a8 + 24) = v27;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 0u;
  *(a8 + 120) = a3;
  *(a8 + 128) = a4;
  __swift_destroy_boxed_opaque_existential_0(a1, v34, v35, v36, v37, v38, v39, v40);
}

void sub_1BD141200(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a8 + 32) = sub_1BE04EEC4();
  *(a8 + 40) = v19;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1BD13A9D0(&v41);
  *&v41 = a5;
  *(&v41 + 1) = a6;
  *&v42 = MEMORY[0x1E6981E70];
  *(&v42 + 1) = MEMORY[0x1E6981E70];
  v43 = a7;
  v44 = MEMORY[0x1E6981E60];
  v45 = MEMORY[0x1E6981E60];
  v20 = type metadata accessor for AuthenticatedTransactionSheet(0, &v41);
  v21 = sub_1BE04C614();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1BD13AAD4(v18);
  v22 = *(v20 + 108);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + *(v20 + 112);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_1BE048964();
  swift_getWitnessTable();
  *a8 = sub_1BE04E954();
  *(a8 + 8) = v24;
  sub_1BD0EE8CC(a1, a8 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v25 = sub_1BE04E954();
  v27 = v26;
  a2, v26, v28, v29, v30, v31, v32, v33;
  *(a8 + 16) = v25;
  *(a8 + 24) = v27;
  *(a8 + 88) = a3;
  *(a8 + 96) = a4;
  *(a8 + 104) = 0u;
  *(a8 + 120) = 0u;
  __swift_destroy_boxed_opaque_existential_0(a1, v34, v35, v36, v37, v38, v39, v40);
}

void sub_1BD1414EC(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10 - 8];
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a3 + 32) = sub_1BE04EEC4();
  *(a3 + 40) = v12;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1BD0DE19C(v36, v35, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v36, &qword_1EBD51EC0, &qword_1BE0B7120);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A0F8, &unk_1BE0BA040);
  v14 = sub_1BE04C614();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1BD0DE19C(v11, v8, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v11, &qword_1EBD3D520, &qword_1BE0C12E0);
  v15 = *(v13 + 108);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + *(v13 + 112);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  sub_1BE04C944();
  sub_1BD145DD8(&qword_1EBD3A288, MEMORY[0x1E69BCA18], MEMORY[0x1E69BCA10]);
  sub_1BE048964();
  *a3 = sub_1BE04E954();
  *(a3 + 8) = v17;
  sub_1BD0EE8CC(a1, a3 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v18 = sub_1BE04E954();
  v20 = v19;
  a2, v19, v21, v22, v23, v24, v25, v26;
  *(a3 + 16) = v18;
  *(a3 + 24) = v20;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  __swift_destroy_boxed_opaque_existential_0(a1, v27, v28, v29, v30, v31, v32, v33);
}

void sub_1BD141854(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10 - 8];
  sub_1BE04CDA4();
  sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a3 + 32) = sub_1BE04EEC4();
  *(a3 + 40) = v12;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1BD0DE19C(v36, v35, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v36, &qword_1EBD51EC0, &qword_1BE0B7120);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D630, &qword_1BE0BA348);
  v14 = sub_1BE04C614();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1BD0DE19C(v11, v8, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v11, &qword_1EBD3D520, &qword_1BE0C12E0);
  v15 = *(v13 + 108);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + *(v13 + 112);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  sub_1BD145DD8(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
  sub_1BE048964();
  *a3 = sub_1BE04E954();
  *(a3 + 8) = v17;
  sub_1BD0EE8CC(a1, a3 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BE04CC54();
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD145DD8(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v18 = sub_1BE04E954();
  v20 = v19;
  a2, v19, v21, v22, v23, v24, v25, v26;
  *(a3 + 16) = v18;
  *(a3 + 24) = v20;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  __swift_destroy_boxed_opaque_existential_0(a1, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t static AuthenticatedTransactionSheetMock.create(header:content:footer:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, ValueMetadata *a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v560 = a8;
  v553 = a6;
  v562 = a5;
  v556 = a4;
  v571 = a3;
  v555 = a2;
  v557 = a1;
  v551 = a9;
  v580 = a13;
  v558 = a12;
  v581 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A0B0, &qword_1BE0BA020);
  MEMORY[0x1EEE9AC00](v14);
  v539 = &v484 - v15;
  v16 = sub_1BE04C944();
  v17 = MEMORY[0x1E6981E70];
  v846 = v16;
  v847 = MEMORY[0x1E6981E70];
  v848 = MEMORY[0x1E6981E70];
  v849 = a10;
  v18 = MEMORY[0x1E6981E60];
  v850 = MEMORY[0x1E6981E60];
  v851 = MEMORY[0x1E6981E60];
  v852 = a13;
  v19 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v499 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v538 = &v484 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B8, &qword_1BE0BA028);
  v576 = v19;
  v21 = sub_1BE04EBD4();
  v500 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v493 = &v484 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DFD0, &qword_1BE0BA030);
  v577 = v21;
  v24 = sub_1BE04EBD4();
  v503 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v502 = &v484 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v501 = &v484 - v27;
  v570 = v28;
  v504 = v14;
  v29 = sub_1BE04F9B4();
  v506 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v505 = &v484 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v536 = &v484 - v32;
  v846 = v16;
  v847 = a7;
  v561 = a7;
  v848 = v17;
  v849 = v17;
  v559 = a11;
  v850 = a11;
  v851 = v18;
  v852 = v18;
  v33 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v494 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v492 = &v484 - v34;
  v575 = v35;
  v36 = sub_1BE04EBD4();
  v496 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v495 = &v484 - v37;
  v579 = v38;
  v582 = v23;
  v39 = sub_1BE04EBD4();
  v498 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v497 = &v484 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v527 = &v484 - v42;
  v846 = v16;
  v847 = a7;
  v848 = v17;
  v43 = v17;
  v44 = v581;
  v849 = v581;
  v850 = a11;
  v45 = v580;
  v851 = v18;
  v852 = v580;
  v46 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v521 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v537 = (&v484 - v47);
  v572 = v48;
  v49 = sub_1BE04EBD4();
  v523 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v522 = &v484 - v50;
  v578 = v51;
  v52 = sub_1BE04EBD4();
  v526 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v525 = &v484 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v524 = &v484 - v55;
  v595 = v56;
  v573 = v39;
  v57 = sub_1BE04F9B4();
  v532 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v531 = &v484 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v530 = &v484 - v60;
  v569 = v61;
  v574 = v29;
  v593 = sub_1BE04F9B4();
  v540 = *(v593 - 8);
  MEMORY[0x1EEE9AC00](v593);
  v545 = &v484 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v552 = (&v484 - v64);
  v846 = v16;
  v847 = v43;
  v65 = v43;
  v66 = v560;
  v848 = v560;
  v849 = v65;
  v67 = v18;
  v850 = v18;
  v68 = v558;
  v851 = v558;
  v852 = v67;
  v69 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v486 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v485 = (&v484 - v70);
  v591 = v71;
  v72 = sub_1BE04EBD4();
  v488 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v487 = &v484 - v73;
  v590 = v74;
  v75 = sub_1BE04EBD4();
  v491 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v490 = &v484 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v489 = &v484 - v78;
  v846 = v16;
  v847 = MEMORY[0x1E6981E70];
  v848 = v66;
  v849 = v44;
  v850 = v67;
  v851 = v68;
  v852 = v45;
  v79 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v515 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v514 = (&v484 - v80);
  v585 = v81;
  v82 = sub_1BE04EBD4();
  v517 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v516 = &v484 - v83;
  v588 = v84;
  v85 = sub_1BE04EBD4();
  v520 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v519 = &v484 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v518 = &v484 - v88;
  v584 = v89;
  v589 = v75;
  v90 = sub_1BE04F9B4();
  v529 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v528 = &v484 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v542 = &v484 - v93;
  v846 = v16;
  v94 = v16;
  v95 = v561;
  v847 = v561;
  v848 = v66;
  v96 = v559;
  v849 = MEMORY[0x1E6981E70];
  v850 = v559;
  v851 = v68;
  v852 = v67;
  v97 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v508 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v507 = (&v484 - v98);
  v587 = v99;
  v100 = sub_1BE04EBD4();
  v510 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v509 = &v484 - v101;
  v583 = v102;
  v103 = sub_1BE04EBD4();
  v513 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v512 = &v484 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v511 = &v484 - v106;
  v546 = v94;
  v846 = v94;
  v847 = v95;
  v848 = v66;
  v849 = v581;
  v850 = v96;
  v851 = v68;
  v852 = v580;
  v107 = type metadata accessor for AuthenticatedTransactionSheet(0, &v846);
  v533 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = (&v484 - v108);
  v110 = sub_1BE04EBD4();
  v535 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v534 = &v484 - v111;
  v594 = v112;
  v113 = sub_1BE04EBD4();
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v116 = (&v484 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v484 - v118;
  v582 = v120;
  v586 = v103;
  v121 = sub_1BE04F9B4();
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v541 = &v484 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124);
  v554 = &v484 - v125;
  v567 = v126;
  v563 = v90;
  v127 = sub_1BE04F9B4();
  v544 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v543 = &v484 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129);
  v564 = &v484 - v130;
  v550 = sub_1BE04F9B4();
  v549 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v132 = &v484 - v131;
  v566 = [objc_allocWithZone(MEMORY[0x1E69B8E80]) init];
  v547 = sub_1BE04CDA4();
  swift_allocObject();
  v565 = sub_1BE04CD94();
  sub_1BE04CCF4();
  v568 = v132;
  v548 = v127;
  v592 = v107;
  if (v571)
  {
    v552 = v122;
    v133 = v557;
    if (v557)
    {
      v134 = v562;
      if (v562)
      {
        v135 = v571;
        v136 = v556;
        sub_1BD0D44B8(v571, v556);
        v545 = v114;
        v137 = v555;
        sub_1BD0D44B8(v133, v555);
        v138 = v553;
        sub_1BD0D44B8(v134, v553);
        v139 = sub_1BD145C58();
        v540 = v116;
        v140 = v134;
        v141 = v139;
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v141;
        v542 = v119;
        v142 = v546;
        swift_allocObject();
        v143 = sub_1BE04C934();
        sub_1BD0D44B8(v135, v136);
        sub_1BD0D44B8(v133, v137);
        sub_1BD0D44B8(v140, v138);
        *(&v483 + 1) = v559;
        *&v483 = v581;
        *(&v482 + 1) = v560;
        *&v482 = v561;
        sub_1BD13ACA0(&v846, v143, v133, v137, v135, v136, v140, v138, v109, v142, v482, v483, v558, v580);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v144 = v592;
        WitnessTable = swift_getWitnessTable();
        sub_1BD0EE33C();
        v146 = v534;
        sub_1BE050BE4();
        (*(v533 + 8))(v109, v144);
        v147 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v602 = WitnessTable;
        v603 = v580;
        v148 = v594;
        v149 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v150 = v540;
        sub_1BE050BE4();
        (*(v535 + 8))(v146, v148);
        v151 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v147);
        v600 = v149;
        v601 = v151;
        v152 = v582;
        v561 = swift_getWitnessTable();
        v153 = v545;
        v154 = *(v545 + 16);
        v155 = v542;
        v154(v542, v150, v152);
        v156 = *(v153 + 8);
        v156(v150, v152);
        v154(v150, v155, v152);
        v598 = swift_getWitnessTable();
        v599 = v580;
        v596 = swift_getWitnessTable();
        v597 = v151;
        swift_getWitnessTable();
        sub_1BD13A700(v150, v152);
        sub_1BD0D4744(v562, v553, v157, v158, v159, v160, v161, v162);
        v156(v150, v152);
        v156(v155, v152);
      }

      else
      {
        v226 = v571;
        v227 = v556;
        sub_1BD0D44B8(v571, v556);
        v228 = v555;
        sub_1BD0D44B8(v133, v555);
        v229 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v229;
        v230 = v546;
        swift_allocObject();
        v231 = sub_1BE04C934();
        sub_1BD0D44B8(v226, v227);
        sub_1BD0D44B8(v133, v228);
        v232 = v507;
        sub_1BD140938(&v846, v231, v133, v228, v226, v227, v230, v561, v507, v560, v559, v558);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v233 = v587;
        v234 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v235 = v509;
        sub_1BE050BE4();
        (*(v508 + 8))(v232, v233);
        v236 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v630 = v234;
        v631 = v580;
        v560 = MEMORY[0x1E697E858];
        v237 = v583;
        v238 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v239 = v512;
        sub_1BE050BE4();
        (*(v510 + 8))(v235, v237);
        v561 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v236);
        v628 = v238;
        v629 = v561;
        v240 = v586;
        v562 = swift_getWitnessTable();
        v241 = v513;
        v242 = *(v513 + 16);
        v243 = v511;
        v242(v511, v239, v240);
        v244 = *(v241 + 8);
        v244(v239, v240);
        v242(v239, v243, v240);
        v626 = swift_getWitnessTable();
        v627 = v580;
        v624 = swift_getWitnessTable();
        v625 = v561;
        v245 = v582;
        swift_getWitnessTable();
        sub_1BD13A7F8(v239, v245, v240);
        v244(v239, v240);
        v244(v243, v240);
      }

      v246 = swift_getWitnessTable();
      v247 = MEMORY[0x1E6980A18];
      v248 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
      v622 = v246;
      v623 = v248;
      v249 = swift_getWitnessTable();
      v250 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v247);
      v620 = v249;
      v621 = v250;
      v251 = swift_getWitnessTable();
      v618 = swift_getWitnessTable();
      v619 = v248;
      v616 = swift_getWitnessTable();
      v617 = v250;
      v252 = swift_getWitnessTable();
      v614 = v251;
      v615 = v252;
      v253 = v567;
      v581 = swift_getWitnessTable();
      v254 = v552;
      v255 = v541;
      v552[2](v541, v554, v253);
      v612 = swift_getWitnessTable();
      v613 = v248;
      v610 = swift_getWitnessTable();
      v611 = v250;
      v256 = swift_getWitnessTable();
      v608 = swift_getWitnessTable();
      v609 = v248;
      v606 = swift_getWitnessTable();
      v607 = v250;
      v257 = swift_getWitnessTable();
      v604 = v256;
      v605 = v257;
      swift_getWitnessTable();
      sub_1BD13A700(v255, v253);
      sub_1BD0D4744(v557, v555, v258, v259, v260, v261, v262, v263);
      v264 = v254[1];
      (v264)(v255, v253);
      (v264)(v554, v253);
    }

    else
    {
      v196 = v562;
      v197 = v571;
      v198 = v556;
      if (v562)
      {
        sub_1BD0D44B8(v571, v556);
        v199 = v553;
        sub_1BD0D44B8(v196, v553);
        v200 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v200;
        v201 = v546;
        swift_allocObject();
        v202 = sub_1BE04C934();
        sub_1BD0D44B8(v197, v198);
        sub_1BD0D44B8(v196, v199);
        v203 = v514;
        sub_1BD140644(&v846, v202, v197, v198, v196, v199, v201, v560, v514, v581, v558, v580);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v204 = v585;
        v205 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v206 = v516;
        sub_1BE050BE4();
        (*(v515 + 8))(v203, v204);
        v207 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v638 = v205;
        v639 = v580;
        v208 = v588;
        v209 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v210 = v519;
        sub_1BE050BE4();
        (*(v517 + 8))(v206, v208);
        v211 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v207);
        v636 = v209;
        v637 = v211;
        v212 = v584;
        v561 = swift_getWitnessTable();
        v213 = v520;
        v214 = *(v520 + 16);
        v215 = v518;
        v214(v518, v210, v212);
        v216 = *(v213 + 8);
        v216(v210, v212);
        v214(v210, v215, v212);
        v634 = swift_getWitnessTable();
        v635 = v580;
        v632 = swift_getWitnessTable();
        v633 = v211;
        swift_getWitnessTable();
        v217 = v542;
        sub_1BD13A700(v210, v212);
        sub_1BD0D4744(v562, v553, v218, v219, v220, v221, v222, v223);
        v216(v210, v212);
        v224 = v215;
        v225 = v212;
      }

      else
      {
        sub_1BD0D44B8(v571, v556);
        v335 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v335;
        v336 = v546;
        swift_allocObject();
        v337 = sub_1BE04C934();
        sub_1BE048964();
        v338 = v485;
        sub_1BD140C2C(&v846, v337, v197, v198, v336, v560, v558, v485);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v339 = v591;
        v340 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v341 = v487;
        sub_1BE050BE4();
        (*(v486 + 8))(v338, v339);
        v342 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v706 = v340;
        v707 = v580;
        v561 = MEMORY[0x1E697E858];
        v343 = v590;
        v344 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v345 = v490;
        sub_1BE050BE4();
        (*(v488 + 8))(v341, v343);
        v346 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v342);
        v704 = v344;
        v705 = v346;
        v347 = v589;
        v562 = swift_getWitnessTable();
        v348 = v491;
        v349 = *(v491 + 16);
        v350 = v489;
        v349(v489, v345, v347);
        v216 = *(v348 + 8);
        v216(v345, v347);
        v349(v345, v350, v347);
        v702 = swift_getWitnessTable();
        v703 = v580;
        v700 = swift_getWitnessTable();
        v701 = v346;
        v351 = v584;
        swift_getWitnessTable();
        v217 = v542;
        sub_1BD13A7F8(v345, v351, v347);
        v216(v345, v347);
        v224 = v350;
        v225 = v347;
      }

      v216(v224, v225);
      v352 = swift_getWitnessTable();
      v353 = MEMORY[0x1E6980A18];
      v354 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
      v698 = v352;
      v699 = v354;
      v355 = swift_getWitnessTable();
      v356 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v353);
      v696 = v355;
      v697 = v356;
      v357 = swift_getWitnessTable();
      v694 = swift_getWitnessTable();
      v695 = v354;
      v692 = swift_getWitnessTable();
      v693 = v356;
      v358 = swift_getWitnessTable();
      v690 = v357;
      v691 = v358;
      v580 = MEMORY[0x1E697F968];
      v359 = v563;
      v581 = swift_getWitnessTable();
      v361 = v528;
      v360 = v529;
      (*(v529 + 16))(v528, v217, v359);
      v688 = swift_getWitnessTable();
      v689 = v354;
      v686 = swift_getWitnessTable();
      v687 = v356;
      v362 = swift_getWitnessTable();
      v684 = swift_getWitnessTable();
      v685 = v354;
      v682 = swift_getWitnessTable();
      v683 = v356;
      v363 = swift_getWitnessTable();
      v680 = v362;
      v681 = v363;
      v364 = v567;
      swift_getWitnessTable();
      sub_1BD13A7F8(v361, v364, v359);
      v365 = *(v360 + 8);
      v365(v361, v359);
      v365(v542, v359);
    }

    v366 = swift_getWitnessTable();
    v367 = MEMORY[0x1E6980A18];
    v368 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
    v678 = v366;
    v679 = v368;
    v369 = swift_getWitnessTable();
    v370 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v367);
    v676 = v369;
    v677 = v370;
    v371 = swift_getWitnessTable();
    v674 = swift_getWitnessTable();
    v675 = v368;
    v672 = swift_getWitnessTable();
    v673 = v370;
    v372 = swift_getWitnessTable();
    v670 = v371;
    v671 = v372;
    v373 = swift_getWitnessTable();
    v668 = swift_getWitnessTable();
    v669 = v368;
    v666 = swift_getWitnessTable();
    v667 = v370;
    v374 = swift_getWitnessTable();
    v664 = swift_getWitnessTable();
    v665 = v368;
    v662 = swift_getWitnessTable();
    v663 = v370;
    v375 = swift_getWitnessTable();
    v660 = v374;
    v661 = v375;
    v376 = swift_getWitnessTable();
    v658 = v373;
    v659 = v376;
    v377 = v548;
    v581 = swift_getWitnessTable();
    v379 = v543;
    v378 = v544;
    (*(v544 + 16))(v543, v564, v377);
    v656 = swift_getWitnessTable();
    v657 = v368;
    v654 = swift_getWitnessTable();
    v655 = v370;
    v380 = swift_getWitnessTable();
    v652 = swift_getWitnessTable();
    v653 = v368;
    v650 = swift_getWitnessTable();
    v651 = v370;
    v381 = swift_getWitnessTable();
    v648 = v380;
    v649 = v381;
    v382 = swift_getWitnessTable();
    v646 = swift_getWitnessTable();
    v647 = v368;
    v644 = swift_getWitnessTable();
    v645 = v370;
    v383 = swift_getWitnessTable();
    v384 = sub_1BD145E20();
    v642 = v383;
    v643 = v384;
    v385 = swift_getWitnessTable();
    v640 = v382;
    v641 = v385;
    swift_getWitnessTable();
    sub_1BD13A700(v379, v377);

    v565, v386, v387, v388, v389, v390, v391, v392;
    sub_1BD0D4744(v571, v556, v393, v394, v395, v396, v397, v398);
    v399 = *(v378 + 8);
    (v399)(v379, v377);
    v400 = v564;
    v401 = v377;
  }

  else
  {
    v164 = v537;
    v163 = v538;
    v165 = v539;
    v166 = v557;
    if (v557)
    {
      v167 = v562;
      if (v562)
      {
        v168 = v555;
        sub_1BD0D44B8(v557, v555);
        v169 = v553;
        sub_1BD0D44B8(v167, v553);
        v170 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v170;
        v171 = v546;
        swift_allocObject();
        v172 = sub_1BE04C934();
        sub_1BD0D44B8(v166, v168);
        sub_1BD0D44B8(v167, v169);
        v173 = v164;
        sub_1BD140350(&v846, v172, v166, v168, v167, v169, v171, v561, v164, v581, v559, v580);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v174 = v572;
        v175 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v176 = v522;
        sub_1BE050BE4();
        (*(v521 + 8))(v173, v174);
        v177 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v714 = v175;
        v715 = v580;
        v178 = v578;
        v179 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v180 = v525;
        sub_1BE050BE4();
        (*(v523 + 8))(v176, v178);
        v181 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v177);
        v712 = v179;
        v713 = v181;
        v571 = swift_getWitnessTable();
        v182 = v526;
        v183 = *(v526 + 16);
        v184 = v524;
        v183(v524, v180, v595);
        v185 = *(v182 + 8);
        v185(v180, v595);
        v183(v180, v184, v595);
        v186 = v595;
        v710 = swift_getWitnessTable();
        v711 = v580;
        v708 = swift_getWitnessTable();
        v709 = v181;
        swift_getWitnessTable();
        v187 = v530;
        sub_1BD13A700(v180, v186);
        sub_1BD0D4744(v562, v553, v188, v189, v190, v191, v192, v193);
        v194 = v180;
        v195 = v187;
        v185(v194, v186);
        v185(v184, v186);
      }

      else
      {
        v294 = v555;
        sub_1BD0D44B8(v557, v555);
        v295 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v295;
        v296 = v546;
        swift_allocObject();
        v297 = sub_1BE04C934();
        sub_1BE048964();
        v298 = v492;
        sub_1BD141200(&v846, v297, v166, v294, v296, v561, v559, v492);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v581 = &unk_1BE0BA140;
        v299 = v575;
        v300 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v301 = v495;
        sub_1BE050BE4();
        (*(v494 + 8))(v298, v299);
        v302 = MEMORY[0x1E6980A18];
        v580 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v738 = v300;
        v739 = v580;
        v303 = v579;
        v304 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v305 = v497;
        sub_1BE050BE4();
        (*(v496 + 8))(v301, v303);
        v306 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v302);
        v736 = v304;
        v737 = v306;
        v307 = v573;
        v571 = swift_getWitnessTable();
        v308 = v498;
        v309 = *(v498 + 16);
        v310 = v527;
        v309(v527, v305, v307);
        v311 = *(v308 + 8);
        v311(v305, v307);
        v309(v305, v310, v307);
        v312 = v595;
        v734 = swift_getWitnessTable();
        v735 = v580;
        v732 = swift_getWitnessTable();
        v733 = v306;
        v313 = v307;
        swift_getWitnessTable();
        v195 = v530;
        sub_1BD13A7F8(v305, v312, v313);
        v311(v305, v313);
        v311(v527, v313);
      }

      v314 = swift_getWitnessTable();
      v315 = MEMORY[0x1E6980A18];
      v316 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
      v730 = v314;
      v731 = v316;
      v317 = swift_getWitnessTable();
      v318 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v315);
      v728 = v317;
      v729 = v318;
      v319 = swift_getWitnessTable();
      v726 = swift_getWitnessTable();
      v727 = v316;
      v724 = swift_getWitnessTable();
      v725 = v318;
      v320 = swift_getWitnessTable();
      v722 = v319;
      v723 = v320;
      v321 = v569;
      v581 = swift_getWitnessTable();
      v322 = v531;
      v323 = v532;
      (*(v532 + 16))(v531, v195, v321);
      v720 = swift_getWitnessTable();
      v721 = v316;
      v718 = swift_getWitnessTable();
      v719 = v318;
      v324 = swift_getWitnessTable();
      v325 = sub_1BD145E20();
      v716 = v324;
      v717 = v325;
      swift_getWitnessTable();
      sub_1BD13A700(v322, v321);
      sub_1BD0D4744(v557, v555, v326, v327, v328, v329, v330, v331);
      v332 = *(v323 + 8);
      v332(v322, v321);
      v333 = v195;
      v334 = v321;
    }

    else
    {
      v265 = v576;
      v266 = v562;
      if (v562)
      {
        v267 = v553;
        sub_1BD0D44B8(v562, v553);
        v268 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v268;
        v269 = v546;
        swift_allocObject();
        v270 = sub_1BE04C934();
        sub_1BE048964();
        v271 = v163;
        sub_1BD140F14(&v846, v270, v266, v267, v269, v581, v580, v163);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        v272 = swift_getWitnessTable();
        sub_1BD0EE33C();
        v273 = v493;
        sub_1BE050BE4();
        (*(v499 + 8))(v271, v265);
        v274 = MEMORY[0x1E6980A18];
        v275 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v742 = v272;
        v743 = v275;
        v276 = v577;
        v277 = swift_getWitnessTable();
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v278 = v502;
        sub_1BE050BE4();
        (*(v500 + 8))(v273, v276);
        v279 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v274);
        v740 = v277;
        v741 = v279;
        v280 = v570;
        swift_getWitnessTable();
        v281 = v503;
        v282 = *(v503 + 16);
        v283 = v501;
        v282(v501, v278, v280);
        v284 = *(v281 + 8);
        v284(v278, v280);
        v282(v278, v283, v280);
        sub_1BD145E20();
        v285 = v536;
        sub_1BD13A700(v278, v280);
        v286 = v267;
        v287 = v285;
        sub_1BD0D4744(v562, v286, v288, v289, v290, v291, v292, v293);
        v284(v278, v280);
        v284(v283, v280);
      }

      else
      {
        v402 = sub_1BD145C58();
        v849 = &type metadata for PreviewStateMachineMock;
        v850 = sub_1BD145D84();
        v846 = v402;
        swift_allocObject();
        v403 = sub_1BE04C934();
        v404 = v165;
        sub_1BD1414EC(&v846, v403, v165);
        sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
        sub_1BD0EE33C();
        v405 = sub_1BE04D804();
        v406 = (v165 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A0C8, &qword_1BE0BA038) + 36));
        v407 = v566;
        *v406 = v405;
        v406[1] = v407;
        sub_1BD145DD8(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        v408 = v407;
        v409 = sub_1BE04D804();
        v410 = v504;
        v411 = (v404 + *(v504 + 36));
        *v411 = v409;
        v411[1] = v565;
        sub_1BE048964();
        v412 = swift_getWitnessTable();
        v413 = MEMORY[0x1E6980A18];
        v414 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
        v844 = v412;
        v845 = v414;
        v415 = swift_getWitnessTable();
        v416 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v413);
        v842 = v415;
        v843 = v416;
        v417 = v570;
        swift_getWitnessTable();
        sub_1BD145E20();
        v287 = v536;
        sub_1BD13A7F8(v404, v417, v410);
        sub_1BD0DE53C(v404, &qword_1EBD3A0B0, &qword_1BE0BA020);
      }

      v418 = swift_getWitnessTable();
      v419 = MEMORY[0x1E6980A18];
      v420 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
      v840 = v418;
      v841 = v420;
      v421 = swift_getWitnessTable();
      v422 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v419);
      v838 = v421;
      v839 = v422;
      v423 = swift_getWitnessTable();
      v424 = sub_1BD145E20();
      v836 = v423;
      v837 = v424;
      v425 = v574;
      v581 = swift_getWitnessTable();
      v426 = v505;
      v427 = v506;
      (*(v506 + 16))(v505, v287, v425);
      v834 = swift_getWitnessTable();
      v835 = v420;
      v832 = swift_getWitnessTable();
      v833 = v422;
      v428 = swift_getWitnessTable();
      v830 = swift_getWitnessTable();
      v831 = v420;
      v828 = swift_getWitnessTable();
      v829 = v422;
      v429 = swift_getWitnessTable();
      v826 = v428;
      v827 = v429;
      v430 = v569;
      swift_getWitnessTable();
      sub_1BD13A7F8(v426, v430, v425);
      v332 = *(v427 + 8);
      v332(v426, v425);
      v333 = v536;
      v334 = v425;
    }

    v332(v333, v334);
    v431 = swift_getWitnessTable();
    v432 = MEMORY[0x1E6980A18];
    v433 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
    v824 = v431;
    v825 = v433;
    v434 = swift_getWitnessTable();
    v435 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v432);
    v822 = v434;
    v823 = v435;
    v436 = swift_getWitnessTable();
    v820 = swift_getWitnessTable();
    v821 = v433;
    v818 = swift_getWitnessTable();
    v819 = v435;
    v437 = swift_getWitnessTable();
    v816 = v436;
    v817 = v437;
    v438 = swift_getWitnessTable();
    v814 = swift_getWitnessTable();
    v815 = v433;
    v812 = swift_getWitnessTable();
    v813 = v435;
    v439 = swift_getWitnessTable();
    v440 = sub_1BD145E20();
    v810 = v439;
    v811 = v440;
    v441 = swift_getWitnessTable();
    v808 = v438;
    v809 = v441;
    v442 = v593;
    v581 = swift_getWitnessTable();
    v443 = v540;
    v540[2](v545, v552, v442);
    v806 = swift_getWitnessTable();
    v807 = v433;
    v804 = swift_getWitnessTable();
    v805 = v435;
    v444 = swift_getWitnessTable();
    v802 = swift_getWitnessTable();
    v803 = v433;
    v800 = swift_getWitnessTable();
    v801 = v435;
    v445 = swift_getWitnessTable();
    v798 = v444;
    v799 = v445;
    v446 = swift_getWitnessTable();
    v796 = swift_getWitnessTable();
    v797 = v433;
    v794 = swift_getWitnessTable();
    v795 = v435;
    v447 = swift_getWitnessTable();
    v792 = swift_getWitnessTable();
    v793 = v433;
    v790 = swift_getWitnessTable();
    v791 = v435;
    v448 = swift_getWitnessTable();
    v788 = v447;
    v789 = v448;
    v449 = swift_getWitnessTable();
    v786 = v446;
    v787 = v449;
    v450 = v548;
    swift_getWitnessTable();
    v451 = v545;
    sub_1BD13A7F8(v545, v450, v442);

    v565, v452, v453, v454, v455, v456, v457, v458;
    v399 = v443[1];
    (v399)(v451, v442);
    v400 = v552;
    v401 = v442;
  }

  (v399)(v400, v401);
  v459 = swift_getWitnessTable();
  v460 = MEMORY[0x1E6980A18];
  v461 = sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
  v784 = v459;
  v785 = v461;
  v462 = swift_getWitnessTable();
  v463 = sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v460);
  v782 = v462;
  v783 = v463;
  v464 = swift_getWitnessTable();
  v780 = swift_getWitnessTable();
  v781 = v461;
  v778 = swift_getWitnessTable();
  v779 = v463;
  v465 = swift_getWitnessTable();
  v776 = v464;
  v777 = v465;
  v466 = swift_getWitnessTable();
  v774 = swift_getWitnessTable();
  v775 = v461;
  v772 = swift_getWitnessTable();
  v773 = v463;
  v467 = swift_getWitnessTable();
  v770 = swift_getWitnessTable();
  v771 = v461;
  v768 = swift_getWitnessTable();
  v769 = v463;
  v468 = swift_getWitnessTable();
  v766 = v467;
  v767 = v468;
  v469 = swift_getWitnessTable();
  v764 = v466;
  v765 = v469;
  v470 = swift_getWitnessTable();
  v762 = swift_getWitnessTable();
  v763 = v461;
  v760 = swift_getWitnessTable();
  v761 = v463;
  v471 = swift_getWitnessTable();
  v758 = swift_getWitnessTable();
  v759 = v461;
  v756 = swift_getWitnessTable();
  v757 = v463;
  v472 = swift_getWitnessTable();
  v754 = v471;
  v755 = v472;
  v473 = swift_getWitnessTable();
  v752 = swift_getWitnessTable();
  v753 = v461;
  v750 = swift_getWitnessTable();
  v751 = v463;
  v474 = swift_getWitnessTable();
  v475 = sub_1BD145E20();
  v748 = v474;
  v749 = v475;
  v476 = swift_getWitnessTable();
  v746 = v473;
  v747 = v476;
  v477 = swift_getWitnessTable();
  v744 = v470;
  v745 = v477;
  v478 = v550;
  swift_getWitnessTable();
  v479 = v549;
  v480 = v568;
  (*(v549 + 16))(v551, v568, v478);
  return (*(v479 + 8))(v480, v478);
}

uint64_t sub_1BD145A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFC4();
  *a1 = result & 1;
  return result;
}

__n128 sub_1BD145AE4@<Q0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v25);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v20 = v25[0];
  result = v25[1];
  v22 = v25[5];
  v21 = v25[6];
  v23 = v25[3];
  v24 = v25[2];
  *(a2 + 64) = v25[4];
  *(a2 + 80) = v22;
  *(a2 + 96) = v21;
  *a2 = v20;
  *(a2 + 16) = result;
  *(a2 + 32) = v24;
  *(a2 + 48) = v23;
  return result;
}

uint64_t sub_1BD145B94(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;
  sub_1BE048964();
  sub_1BD146D60(v11, v10);
  return sub_1BE04D8C4();
}

char *sub_1BD145C58()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8D70]) init];
  [v1 setPaymentRequest_];

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v3 = v1;
  v4 = sub_1BE052D54();
  type metadata accessor for AddressManager();
  swift_allocObject();
  v6 = v0;
  v7 = xmmword_1BE0BA010;
  v8 = 0;
  v9 = v3;
  v10 = sub_1BD0E6090(v3, v4);
  type metadata accessor for AuthenticatorModel(0);
  swift_allocObject();
  return sub_1BD83D0D4(&v6, 2u, 0, 1);
}

unint64_t sub_1BD145D84()
{
  result = qword_1EBD3A0C0;
  if (!qword_1EBD3A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0C0);
  }

  return result;
}

uint64_t sub_1BD145DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD145E20()
{
  result = qword_1EBD3A0E0;
  if (!qword_1EBD3A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B0, &qword_1BE0BA020);
    sub_1BD145ED8();
    sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0E0);
  }

  return result;
}

unint64_t sub_1BD145ED8()
{
  result = qword_1EBD3A0E8;
  if (!qword_1EBD3A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0C8, &qword_1BE0BA038);
    sub_1BD0DE4F4(&qword_1EBD3A0F0, qword_1EBD3A0F8, &unk_1BE0BA040, &unk_1BE0BA140);
    sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A0E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountResolutionInfo.Resolution(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccountResolutionInfo.Resolution(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1BD1460C4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BE04E984();
  if (v1 <= 0x3F)
  {
    sub_1BD0EDF50(319);
    if (v2 <= 0x3F)
    {
      sub_1BD0EDFE4(319);
      if (v3 <= 0x3F)
      {
        sub_1BD1462CC();
        if (v4 <= 0x3F)
        {
          sub_1BD146338(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD146338(319, &qword_1EBD388E0, &qword_1EBD51EC0, &qword_1BE0B7120, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BD146338(319, &qword_1EBD3A210, &qword_1EBD3D520, &qword_1BE0C12E0, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1BD14639C(319);
                if (v8 <= 0x3F)
                {
                  sub_1BD1463F4();
                  if (v9 <= 0x3F)
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

unint64_t sub_1BD1462CC()
{
  result = qword_1EBD3A208;
  if (!qword_1EBD3A208)
  {
    type metadata accessor for AuthenticatorModel(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD3A208);
  }

  return result;
}

void sub_1BD146338(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD14639C(uint64_t a1)
{
  if (!qword_1EBD388F8)
  {
    sub_1BE04C884();
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD388F8);
    }
  }
}

void sub_1BD1463F4()
{
  if (!qword_1EBD59660)
  {
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59660);
    }
  }
}

uint64_t sub_1BD1464E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v14[0] = *(v2 + 2);
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v11 = *(type metadata accessor for AuthenticatedTransactionSheet(0, v14) - 8);
  return a2(a1, &v2[(*(v11 + 80) + 72) & ~*(v11 + 80)], v4, v5, v6, v7, v8, v9, v10);
}