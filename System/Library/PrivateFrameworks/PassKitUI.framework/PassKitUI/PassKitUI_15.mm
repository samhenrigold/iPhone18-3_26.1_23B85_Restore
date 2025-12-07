uint64_t sub_1BD1CAEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v63 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6D8, &unk_1BE0BEDB0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v63 - v20;
  v23 = &v63 + *(v22 + 56) - v20;
  sub_1BD1CBB88(a1, &v63 - v20);
  sub_1BD1CBB88(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD1CBB88(v21, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v63 + 8))(v15, v64);
        goto LABEL_21;
      }

      v52 = v63;
      v51 = v64;
      (*(v63 + 32))(v6, v23, v64);
      v53 = sub_1BE04AED4();
      v54 = *(v52 + 8);
      v54(v6, v51);
      v54(v15, v51);
    }

    else
    {
      sub_1BD1CBB88(v21, v18);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1BD1CBAC0(v18, _s22SummaryItemPricingTypeO13RecurringItemVMa);
LABEL_21:
        sub_1BD0DE53C(v21, &qword_1EBD3C6D8, &unk_1BE0BEDB0);
LABEL_22:
        v53 = 0;
        return v53 & 1;
      }

      sub_1BD1CBB20(v23, v9, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      v53 = sub_1BD1CA7EC(v18, v9);
      sub_1BD1CBAC0(v9, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      sub_1BD1CBAC0(v18, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    }

    sub_1BD1CBAC0(v21, _s22SummaryItemPricingTypeOMa);
    return v53 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  sub_1BD1CBB88(v21, v12);
  v26 = *v12;
  v25 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v25, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_21;
  }

  v34 = *(v23 + 1);
  if (!v25)
  {
    if (!v34)
    {
      goto LABEL_18;
    }

    v25 = *(v23 + 1);
LABEL_28:
    v25, v27, v28, v29, v30, v31, v32, v33;
LABEL_29:
    sub_1BD1CBAC0(v21, _s22SummaryItemPricingTypeOMa);
    goto LABEL_22;
  }

  if (!v34)
  {
    goto LABEL_28;
  }

  if (v26 == *v23 && v25 == v34)
  {
    v25, v27, *v23, v29, v30, v31, v32, v33;
    v34, v56, v57, v58, v59, v60, v61, v62;
  }

  else
  {
    v36 = sub_1BE053B84();
    v25, v37, v38, v39, v40, v41, v42, v43;
    v34, v44, v45, v46, v47, v48, v49, v50;
    if ((v36 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_18:
  sub_1BD1CBAC0(v21, _s22SummaryItemPricingTypeOMa);
  v53 = 1;
  return v53 & 1;
}

BOOL sub_1BD1CB32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Passes(0);
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v51 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6C8, &qword_1BE0BEDA0);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v51 - v9;
  v11 = type metadata accessor for PeerPaymentModel(0);
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C6D0, &qword_1BE0BEDA8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v54 = v4;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  v52 = v6;
  v53 = v10;
  v20 = *(a1 + 16);
  v21 = *(a2 + 16);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
    v22 = v21;
    v23 = v20;
    v24 = sub_1BE053074();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v25 = _s11TotalAmountVMa(0);
  if ((sub_1BD1CAEA4(a1 + v25[10], a2 + v25[10]) & 1) == 0 || *(a1 + v25[11]) != *(a2 + v25[11]) || *(a1 + v25[12]) != *(a2 + v25[12]) || *(a1 + v25[13]) != *(a2 + v25[13]))
  {
    return 0;
  }

  v26 = v25[14];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v51 = v25;
    sub_1BD0E5E8C(0, &unk_1EBD3E560, 0x1E69B91F8);
    v29 = v28;
    v30 = v27;
    v31 = sub_1BE053074();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v51 = v25;
    if (v28)
    {
      return 0;
    }
  }

  v32 = v51[15];
  v33 = *(v17 + 48);
  sub_1BD0DE19C(a1 + v32, v19, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BD0DE19C(a2 + v32, &v19[v33], &qword_1EBD45480, &unk_1BE0B8C30);
  v34 = *(v58 + 48);
  if (v34(v19, 1, v11) != 1)
  {
    sub_1BD0DE19C(v19, v16, &qword_1EBD45480, &unk_1BE0B8C30);
    v37 = v34(&v19[v33], 1, v11);
    v36 = v53;
    if (v37 != 1)
    {
      sub_1BD1CBB20(&v19[v33], v13, type metadata accessor for PeerPaymentModel);
      v41 = sub_1BD56F840(v16, v13);
      sub_1BD1CBAC0(v13, type metadata accessor for PeerPaymentModel);
      sub_1BD1CBAC0(v16, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v19, &qword_1EBD45480, &unk_1BE0B8C30);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    sub_1BD1CBAC0(v16, type metadata accessor for PeerPaymentModel);
LABEL_29:
    v38 = &qword_1EBD3C6D0;
    v39 = &qword_1BE0BEDA8;
    v40 = v19;
LABEL_37:
    sub_1BD0DE53C(v40, v38, v39);
    return 0;
  }

  v35 = v34(&v19[v33], 1, v11);
  v36 = v53;
  if (v35 != 1)
  {
    goto LABEL_29;
  }

  sub_1BD0DE53C(v19, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_31:
  v42 = v51[16];
  v43 = *(v56 + 48);
  sub_1BD0DE19C(a1 + v42, v36, &unk_1EBD43B40, &qword_1BE0D42C0);
  sub_1BD0DE19C(a2 + v42, v36 + v43, &unk_1EBD43B40, &qword_1BE0D42C0);
  v44 = *(v57 + 48);
  v45 = v54;
  if (v44(v36, 1, v54) == 1)
  {
    if (v44(v36 + v43, 1, v45) == 1)
    {
      sub_1BD0DE53C(v36, &unk_1EBD43B40, &qword_1BE0D42C0);
      return *(a1 + v51[17]) == *(a2 + v51[17]);
    }

    goto LABEL_36;
  }

  v46 = v55;
  sub_1BD0DE19C(v36, v55, &unk_1EBD43B40, &qword_1BE0D42C0);
  if (v44(v36 + v43, 1, v45) == 1)
  {
    sub_1BD1CBAC0(v46, type metadata accessor for Passes);
LABEL_36:
    v38 = &qword_1EBD3C6C8;
    v39 = &qword_1BE0BEDA0;
    v40 = v36;
    goto LABEL_37;
  }

  v48 = v36 + v43;
  v49 = v52;
  sub_1BD1CBB20(v48, v52, type metadata accessor for Passes);
  v50 = sub_1BD4985D4(v46, v49);
  sub_1BD1CBAC0(v49, type metadata accessor for Passes);
  sub_1BD1CBAC0(v46, type metadata accessor for Passes);
  sub_1BD0DE53C(v36, &unk_1EBD43B40, &qword_1BE0D42C0);
  if (v50)
  {
    return *(a1 + v51[17]) == *(a2 + v51[17]);
  }

  return 0;
}

uint64_t sub_1BD1CBAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1CBB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1CBB88(uint64_t a1, uint64_t a2)
{
  v4 = _s22SummaryItemPricingTypeOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1CBBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1CBC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD1CBCA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BE04A884();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1BE048E94();
  __swift_allocate_value_buffer(v5, qword_1EBDAAE48);
  __swift_project_value_buffer(v5, qword_1EBDAAE48);
  sub_1BE04A864();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1BE048E84();
}

uint64_t sub_1BD1CBE08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C728, &qword_1BE0BF308);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C730, &qword_1BE0BF310);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C720, &qword_1BE0BF300);
  __swift_allocate_value_buffer(v5, qword_1EBDAAE60);
  __swift_project_value_buffer(v5, qword_1EBDAAE60);
  sub_1BD0304AC();
  sub_1BE048D54();
  sub_1BE048D44();
  (*(v1 + 104))(v3, *MEMORY[0x1E695A4D8], v0);
  sub_1BE048D34();
  (*(v1 + 8))(v3, v0);
  sub_1BE048D44();
  return sub_1BE048D64();
}

void sub_1BD1CC00C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = sub_1BE052724();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(&v11[v10], v8, v5);
  aBlock[4] = sub_1BD1CD6F0;
  v21 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD540F68;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);
  v21, v13, v14, v15, v16, v17, v18, v19;
  [a2 getPassesWithUniqueIdentifiers:v9 handler:v12];
  _Block_release(v12);
}

uint64_t sub_1BD1CC1DC(uint64_t a1)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);
  return sub_1BE052864();
}

uint64_t sub_1BD1CC23C(void *a1, const char *a2)
{
  v29 = a2;
  v3 = sub_1BE04CFF4();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1BE04CFC4();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE04CFE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v27 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v14, v15, v16, v17, v18, v19, v20;
    v21 = v28;
    if ((*(v28 + 88))(v5, v3) == *MEMORY[0x1E69E93E8])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v27, v24, v29, v22, v23, 2u);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v30);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BD1CC528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD041C28;

  return sub_1BD1CD784(a2, a3);
}

uint64_t sub_1BD1CC5E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD1CCD3C(a1);
}

uint64_t sub_1BD1CC688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD1CC748;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1BD1CC748(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1BD1CC848(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD035D58();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD1CC900()
{
  result = qword_1EBD3C700;
  if (!qword_1EBD3C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C700);
  }

  return result;
}

uint64_t sub_1BD1CC954@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C720, &qword_1BE0BF300);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD1CCA08(uint64_t a1)
{
  sub_1BD1CCCE8();
  v2 = sub_1BE048D14();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1BD1CCA74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD1CCB20()
{
  result = qword_1EBD3C708;
  if (!qword_1EBD3C708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C710, &qword_1BE0BF0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C708);
  }

  return result;
}

uint64_t sub_1BD1CCB84(uint64_t a1)
{
  v2 = sub_1BD0304AC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1BD1CCBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD126968;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1BD1CCC94(uint64_t a1)
{
  sub_1BD0306C8();

  return sub_1BE048EF4();
}

unint64_t sub_1BD1CCCE8()
{
  result = qword_1EBD3C718;
  if (!qword_1EBD3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C718);
  }

  return result;
}

uint64_t sub_1BD1CCD3C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1BE04CFC4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1CCE64, 0, 0);
}

uint64_t sub_1BD1CCE64(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "PassEntity:entitiesForIdentifiers", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[9];
  v6 = v1[10];
  v9 = v1[7];
  v8 = v1[8];
  v11 = v1[5];
  v10 = v1[6];
  v12 = v1[4];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  v1[11] = v13;
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v14 = [objc_opt_self() sharedInstance];
  v1[12] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = v1[3];
    v17 = swift_task_alloc();
    v1[13] = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_task_alloc();
    v1[14] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738, &qword_1BE0BF330);
    *v18 = v1;
    v18[1] = sub_1BD1CD18C;

    return MEMORY[0x1EEE6DDE0](v1 + 2, 0, 0, 0x7365697469746E65, 0xEE00293A726F6628, sub_1BD1CD6E8, v17, v19);
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD1CC23C(v13, "PassEntity:entitiesForIdentifiers");
    v13, v20, v21, v22, v23, v24, v25, v26;

    v27 = v1[1];

    return v27();
  }
}

uint64_t sub_1BD1CD18C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD2A4, 0, 0);
}

uint64_t sub_1BD1CD2A4()
{
  v1 = v0[2];
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1BD1CD354;

  return sub_1BD0391EC(v1, 0);
}

uint64_t sub_1BD1CD354(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 136) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD474, 0, 0);
}

uint64_t sub_1BD1CD474()
{
  v1 = *(v0 + 88);

  sub_1BD1CC23C(v1, "PassEntity:entitiesForIdentifiers");
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);
  v10 = *(v0 + 136);

  return v9(v10);
}

uint64_t sub_1BD1CD51C(uint64_t a1)
{
  v2 = *(*v1 + 224);
  *(*v1 + 240) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD63C, 0, 0);
}

uint64_t sub_1BD1CD63C()
{
  v1 = v0[30];
  v2 = v0[26];
  sub_1BD1CC23C(v2, "PassEntity:suggestedEntities");
  v2, v3, v4, v5, v6, v7, v8, v9;

  v10 = v0[1];

  return v10(v1);
}

uint64_t sub_1BD1CD6F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);

  return sub_1BD1CC1DC(a1);
}

uint64_t sub_1BD1CD784(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1BE04CFC4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1CD8AC, 0, 0);
}

uint64_t sub_1BD1CD8AC(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "PassEntity:entitiesMatchingString", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[9];
  v6 = v1[10];
  v9 = v1[7];
  v8 = v1[8];
  v11 = v1[5];
  v10 = v1[6];
  v12 = v1[4];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[11] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  v1[12] = v13;
  *v13 = v1;
  v13[1] = sub_1BD1CDAA0;
  v15 = v1[2];
  v14 = v1[3];

  return sub_1BD5426E8(v15, v14, 50, 1, 0, 0);
}

uint64_t sub_1BD1CDAA0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD1CDBA0, 0, 0);
}

uint64_t sub_1BD1CDBA0()
{
  v1 = v0[11];
  sub_1BD1CC23C(v1, "PassEntity:entitiesMatchingString");
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = v0[1];
  v10 = v0[13];

  return v9(v10);
}

id sub_1BD1CDC48(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_identifier];
  *v6 = 0xD000000000000011;
  *(v6 + 1) = 0x80000001BE11CFE0;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD1CDE04()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BAC4();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v11 = sub_1BE04AF64();
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - v16;
  v75 = *&v0[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential];
  v18 = [v75 account];
  if (!v18)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 feature];

  if (v20 != 2)
  {
LABEL_10:
    v38 = 3;
    goto LABEL_14;
  }

  v21 = [v75 account];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 creditDetails];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v24 = [v23 createdDate];

  if (!v24)
  {
    goto LABEL_10;
  }

  sub_1BE04AEE4();

  sub_1BE04BC34();
  v25 = sub_1BE04B964();
  (*(v73 + 8))(v10, v74);
  if (v25)
  {
    KeyPath = swift_getKeyPath();
    v27 = sub_1BD1872FC(v1, KeyPath);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
    v35 = v70;
    if ((v27 & 1) != 0 || (sub_1BE04AF54(), sub_1BE04ADC4(), v37 = v36, (*(v35 + 8))(v13, v11), v37 >= 2592000.0))
    {
      v38 = 3;
    }

    else
    {
      v38 = 31;
    }
  }

  else
  {
    v38 = 3;
    v35 = v70;
  }

  (*(v35 + 8))(v17, v11);
LABEL_14:
  sub_1BE04D0E4();
  v39 = sub_1BE04D204();
  v40 = sub_1BE052C54();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v76 = v38;
    v77 = v42;
    *v41 = 136315138;
    type metadata accessor for PKAccountFlowControllerOperation(0);
    v43 = sub_1BE0524A4();
    v45 = v44;
    v46 = sub_1BD123690(v43, v44, &v77);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    _os_log_impl(&dword_1BD026000, v39, v40, "Starting PKAccountFlowController with operations: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42, v54, v55, v56, v57, v58, v59, v60);
    MEMORY[0x1BFB45F20](v42, -1, -1);
    MEMORY[0x1BFB45F20](v41, -1, -1);
  }

  (*(v71 + 8))(v4, v72);
  v61 = v75;
  v62 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v63 = sub_1BE04B9A4();
  (*(v73 + 8))(v7, v74);
  v64 = [objc_allocWithZone(PKAccountFlowController) initWithAccountCredential:v61 provisioningController:v62 setupDelegate:v1 context:v63 operations:v38];

  v65 = OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController;
  v66 = *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController];
  *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController] = v64;

  v67 = *&v1[v65];
  if (v67)
  {
    [v67 setParentFlowController_];
    v68 = *&v1[v65];
    if (v68)
    {
      v69 = [v68 firstAccountViewController];
    }
  }
}

uint64_t sub_1BD1CE364()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1CE3A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD1CE3F0(void (*a1)(void, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_accountFlowController);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = [v3 accountProvisioningController];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if ([v4 provisionLocalPassState] != 3 || (v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_credential), (v7 = objc_msgSend(v6, sel_paymentPass)) == 0))
  {
LABEL_13:

LABEL_14:
    if (a1)
    {
      a1(0, 0);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B7020;
  *(v10 + 32) = v8;
  v11 = v8;
  v12 = [v6 state];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  sub_1BE04BD64();
  v14 = [v13 provisioningResponse];

  v15 = [v14 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  v17 = OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses;
  v18 = *(v9 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses);
  *(v9 + OBJC_IVAR____TtC9PassKitUI29ProvisioningAppleCardFlowItem_provisionedPasses) = v16;

  v19 = *(v9 + v17);
  if (!v19)
  {
LABEL_12:

    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v6 state];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 eligibilityResponse];

    if (v23)
    {
      v24 = [v23 identifier];

      if (v24)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

void sub_1BD1CE7CC(uint64_t (*a1)(char *), uint64_t a2, void *a3)
{
  v7 = type metadata accessor for AvailablePass(0);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v18 = v34 - v17;
  v36 = a3[2];
  if (v36)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v34[1] = a2;
    v35 = a3;
    v34[0] = a1;
    while (v19 < a3[2])
    {
      v21 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v22 = *(v38 + 72);
      sub_1BD1DEA70(a3 + v21 + v22 * v19, v18, type metadata accessor for AvailablePass);
      v23 = a1(v18);
      if (v3)
      {
        sub_1BD1DEAD8(v18, type metadata accessor for AvailablePass);
        v20, v27, v28, v29, v30, v31, v32, v33;
        goto LABEL_15;
      }

      if (v23)
      {
        sub_1BD1DEB38(v18, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531A40(0, v20[2] + 1, 1);
          v20 = v39;
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_1BD531A40((v25 > 1), v26 + 1, 1);
          v20 = v39;
        }

        v20[2] = v26 + 1;
        sub_1BD1DEB38(v37, v20 + v21 + v26 * v22);
        a3 = v35;
        a1 = v34[0];
      }

      else
      {
        sub_1BD1DEAD8(v18, type metadata accessor for AvailablePass);
      }

      if (v36 == ++v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    a3, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD1CEA70(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v50 = a5;
  v61 = a4(0);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - v20;
  v57 = a3[2];
  if (v57)
  {
    v21 = 0;
    v54 = (v18 + 8);
    v55 = (v18 + 32);
    v56 = v18 + 16;
    v59 = MEMORY[0x1E69E7CC0];
    v52 = a2;
    v53 = a3;
    v51 = a1;
    while (v21 < a3[2])
    {
      v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v23 = *(v18 + 72);
      v24 = a3;
      v25 = a3 + v22 + v23 * v21;
      v26 = v18;
      v27 = a1;
      v28 = v60;
      (*(v18 + 16))(v60, v25, v61, v19);
      v29 = v28;
      a1 = v27;
      v30 = v27(v29);
      if (v5)
      {
        (*v54)(v60, v61);
        v59, v36, v37, v38, v39, v40, v41, v42;
        v24, v43, v44, v45, v46, v47, v48, v49;
        return;
      }

      if (v30)
      {
        v31 = *v55;
        (*v55)(v58, v60, v61);
        v32 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50(0, v32[2] + 1, 1);
          v32 = v62;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v50(v34 > 1, v35 + 1, 1);
          v32 = v62;
        }

        v32[2] = v35 + 1;
        v59 = v32;
        v31(v32 + v22 + v35 * v23, v58, v61);
        a3 = v53;
        a1 = v51;
      }

      else
      {
        (*v54)(v60, v61);
        a3 = v24;
      }

      ++v21;
      v18 = v26;
      if (v57 == v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_14:
    a3, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t sub_1BD1CEDB0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t CredentialCenterPathIdentifier.credentialID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CredentialCenterPathIdentifier(0) + 20);

  return sub_1BD12651C(a1, v3);
}

uint64_t CredentialCenterPathIdentifier.sealedBoxType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CredentialCenterPathIdentifier(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t CredentialCenterPathIdentifier.sealedBoxType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CredentialCenterPathIdentifier(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_1BD1CF160()
{
  v1 = 0x69746E6564657263;
  if (*v0 != 1)
  {
    v1 = 0x6F4264656C616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1BD1CF1D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, unint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = sub_1BD1DD3B8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1BD1CF218(uint64_t a1)
{
  v2 = sub_1BD1DCC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD1CF254(uint64_t a1)
{
  v2 = sub_1BD1DCC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CredentialCenterPathIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C850, &qword_1BE0BF3C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD1DCC1C();
  sub_1BE053DA4();
  v11[15] = *v3;
  v11[14] = 0;
  sub_1BD1DCC70();
  sub_1BE053AF4();
  if (!v2)
  {
    v9 = type metadata accessor for CredentialCenterPathIdentifier(0);
    v11[13] = 1;
    sub_1BE04AFE4();
    sub_1BD1DCD18(&qword_1EBD38F68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1BE053AD4();
    v11[12] = v3[*(v9 + 24)];
    v11[11] = 2;
    sub_1BD1DCCC4();
    sub_1BE053AD4();
  }

  return (*(v6 + 8))(v8, v5);
}

void CredentialCenterPathIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  if (*v2)
  {
    v10 = "addCredentialSheet";
  }

  else
  {
    v10 = "erOptions";
  }

  sub_1BE052524();
  (v10 | 0x8000000000000000), v11, v12, v13, v14, v15, v16, v17;
  v18 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(&v2[*(v18 + 20)], v9, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BE052294();
    (*(v4 + 8))(v6, v3);
  }

  v19 = v2[*(v18 + 24)];
  if (v19 == 2)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BE053D24();
    if (v19)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    sub_1BE052524();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t CredentialCenterPathIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  sub_1BE053D04();
  if (*v1)
  {
    v9 = "addCredentialSheet";
  }

  else
  {
    v9 = "erOptions";
  }

  sub_1BE052524();
  (v9 | 0x8000000000000000), v10, v11, v12, v13, v14, v15, v16;
  v17 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(&v1[*(v17 + 20)], v8, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }

  v18 = v1[*(v17 + 24)];
  if (v18 == 2)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BE053D24();
    if (v18)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    sub_1BE052524();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  return sub_1BE053D64();
}

uint64_t CredentialCenterPathIdentifier.init(from:)@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C870, &qword_1BE0BF3D0);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 28);
  v13 = sub_1BE04AFE4();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = *(v9 + 32);
  v11[v14] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD1DCC1C();
  v38 = v7;
  v15 = v41;
  sub_1BE053D94();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v16, v17, v18, v19, v20, v21, v22);
    return sub_1BD0DE53C(&v11[v12], &qword_1EBD39980, &qword_1BE0BF3C0);
  }

  else
  {
    v34 = v14;
    v35 = a1;
    v41 = v12;
    v23 = v37;
    v45 = 0;
    sub_1BD1DCD60();
    v24 = v40;
    v25 = v38;
    sub_1BE053AA4();
    *v11 = v46;
    v44 = 1;
    sub_1BD1DCD18(&qword_1EBD38F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BE053A84();
    sub_1BD12651C(v23, &v11[v41]);
    v42 = 2;
    sub_1BD1DCDB4();
    sub_1BE053A84();
    (*(v39 + 8))(v25, v24);
    v11[v34] = v43;
    sub_1BD1DEA70(v11, v36, type metadata accessor for CredentialCenterPathIdentifier);
    __swift_destroy_boxed_opaque_existential_0(v35, v26, v27, v28, v29, v30, v31, v32);
    return sub_1BD1DEAD8(v11, type metadata accessor for CredentialCenterPathIdentifier);
  }
}

uint64_t sub_1BD1CFDBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  sub_1BE053D04();
  if (*v4)
  {
    v12 = "addCredentialSheet";
  }

  else
  {
    v12 = "erOptions";
  }

  sub_1BE052524();
  (v12 | 0x8000000000000000), v13, v14, v15, v16, v17, v18, v19;
  sub_1BD0DE19C(&v4[*(a2 + 20)], v11, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1BE053D24();
    sub_1BD1DCD18(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BE052294();
    (*(v6 + 8))(v8, v5);
  }

  v20 = v4[*(a2 + 24)];
  if (v20 == 2)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BE053D24();
    if (v20)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    sub_1BE052524();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  return sub_1BE053D64();
}

unint64_t CredentialCenterDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1BD1D00F0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (v8)
  {
    v10 = "erOptions";
  }

  else
  {
    v10 = "addCredentialSheet";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000016;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v13 = "addCredentialSheet";
  }

  else
  {
    v13 = "erOptions";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_1BD1D019C()
{
  v1 = *v0;
  sub_1BE053D04();
  if (v1)
  {
    v2 = "addCredentialSheet";
  }

  else
  {
    v2 = "erOptions";
  }

  sub_1BE052524();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD1D021C(uint64_t a1)
{
  if (*v1)
  {
    v2 = "addCredentialSheet";
  }

  else
  {
    v2 = "erOptions";
  }

  sub_1BE052524();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD1D0288(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  if (v2)
  {
    v3 = "addCredentialSheet";
  }

  else
  {
    v3 = "erOptions";
  }

  sub_1BE052524();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD1D0310(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "addCredentialSheet";
  }

  else
  {
    v3 = "erOptions";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t BankCredentialFieldType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void sub_1BD1D0498(void *a2@<X1>, char *a4@<X8>)
{
  v6 = sub_1BE053A44();
  a2, v7, v8, v9, v10, v11, v12, v13;
  if (v6 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v6)
  {
    v14 = 0;
  }

  *a4 = v14;
}

uint64_t SealedBoxType.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657070617277;
  }

  else
  {
    return 1953722220;
  }
}

uint64_t sub_1BD1D052C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x64657070617277;
  }

  else
  {
    v9 = 1953722220;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (*a2)
  {
    v11 = 0x64657070617277;
  }

  else
  {
    v11 = 1953722220;
  }

  if (*a2)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
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

uint64_t sub_1BD1D05CC()
{
  v1 = *v0;
  sub_1BE053D04();
  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD1D0648(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD1D06B0(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD1D0734(void *a1@<X0>, char *a3@<X8>)
{
  v4 = a1[1];
  v5 = sub_1BE053A44();
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a3 = v13;
}

void sub_1BD1D0790(uint64_t *a1@<X8>)
{
  v2 = 1953722220;
  if (*v1)
  {
    v2 = 0x64657070617277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CredentialCenterError.hashValue.getter()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t (*CredentialCenterModel.navigationPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D09FC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898, &qword_1BE0BF428);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t CredentialCenterModel.$navigationPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898, &qword_1BE0BF428);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$navigationPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C898, &qword_1BE0BF428);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t (*CredentialCenterModel.credentials.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D0F38(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0, &qword_1BE0BF480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t CredentialCenterModel.$credentials.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0, &qword_1BE0BF480);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentials.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8B0, &qword_1BE0BF480);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t (*CredentialCenterModel.credentialsWithMissingKey.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D1474(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t CredentialCenterModel.$credentialsWithMissingKey.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentialsWithMissingKey.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

uint64_t sub_1BD1D18DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1D1968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*CredentialCenterModel.credentialsWithInvalidData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1DED80;
}

uint64_t sub_1BD1D1A94(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t CredentialCenterModel.$credentialsWithInvalidData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$credentialsWithInvalidData.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C8, &qword_1BE0BF4D8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1DED84;
}

void CredentialCenterModel.usersDefaultCredential.getter(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1BD1D1F38(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD1D1FB4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD0DE19C(a1, &v10 - v7, &unk_1EBD4D450, &unk_1BE0BF570);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v8, v5, &unk_1EBD4D450, &unk_1BE0BF570);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v8, &unk_1EBD4D450, &unk_1BE0BF570);
}

uint64_t CredentialCenterModel.usersDefaultCredential.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(a1, v4, &unk_1EBD4D450, &unk_1BE0BF570);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(a1, &unk_1EBD4D450, &unk_1BE0BF570);
}

uint64_t (*CredentialCenterModel.usersDefaultCredential.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D2278;
}

void sub_1BD1D227C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);
  v2, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;

  free(v1);
}

uint64_t sub_1BD1D2300(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD1D2378(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1BE04D884();
  return swift_endAccess();
}

uint64_t sub_1BD1D23F4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8, &unk_1BE0BF580);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t CredentialCenterModel.$usersDefaultCredential.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8, &unk_1BE0BF580);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CredentialCenterModel.$usersDefaultCredential.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E8, &unk_1BE0BF580);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2820;
}

void sub_1BD1D2824(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1BE04D894();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1BE04D894();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t CredentialCenterModel.__allocating_init(userDefaultCredentialIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CredentialCenterModel.init(userDefaultCredentialIdentifier:)(a1, a2);
  return v4;
}

uint64_t CredentialCenterModel.init(userDefaultCredentialIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - v20;
  v22 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v60 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0, &qword_1BE0BF590);
  sub_1BE04D874();
  (*(v19 + 32))(v3 + v22, v21, v18);
  v23 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel_financeStore;
  sub_1BE0490F4();
  *(v3 + v23) = sub_1BE0490B4();
  v24 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v25 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C900, &qword_1BE0BF598);
  sub_1BE04D874();
  (*(v15 + 32))(v3 + v24, v17, v14);
  v26 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v60 = v25;
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C908, &qword_1BE0BF5A0);
  sub_1BE04D874();
  v28 = *(v11 + 32);
  v29 = v50;
  v28(v3 + v26, v13, v50);
  v30 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData;
  v60 = v27;
  sub_1BE04D874();
  v28(v3 + v30, v13, v29);
  v31 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v32 = sub_1BE049394();
  v33 = v51;
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  sub_1BD0DE19C(v33, v52, &unk_1EBD4D450, &unk_1BE0BF570);
  v34 = v54;
  sub_1BE04D874();
  sub_1BD0DE53C(v33, &unk_1EBD4D450, &unk_1BE0BF570);
  (*(v55 + 32))(v3 + v31, v34, v56);
  v35 = sub_1BE0528D4();
  v36 = v57;
  (*(*(v35 - 8) + 56))(v57, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v39 = v58;
  v38 = v59;
  v37[4] = v3;
  v37[5] = v39;
  v37[6] = v38;
  sub_1BE048964();
  v40 = sub_1BD122C00(0, 0, v36, &unk_1BE0BF5B0, v37);
  v40, v41, v42, v43, v44, v45, v46, v47;
  return v3;
}

uint64_t sub_1BD1D2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1BE04D214();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_1BE049444();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D30BC, 0, 0);
}

uint64_t sub_1BD1D30BC()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D3164;
  v2 = *(v0 + 80);

  return MEMORY[0x1EEDC1498](v2);
}

uint64_t sub_1BD1D3164()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BD1D3458;
  }

  else
  {
    v2 = sub_1BD1D3278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD1D3278()
{
  sub_1BE0528A4();
  *(v0 + 104) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D330C, v2, v1);
}

void sub_1BD1D330C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 80);
  v12 = *(v8 + 24);
  v11 = *(v8 + 32);
  v13 = *(v8 + 16);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD1D35F0(v10, v13, v12, v11);
  if (v9)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD1D33D4, 0, 0);
  }
}

uint64_t sub_1BD1D33D4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD1D3458(uint64_t a1)
{
  v2 = v1[12];
  sub_1BE04D1E4();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to fetch credentials: %@", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[6] + 8))(v1[7], v1[5]);

  v12 = v1[1];

  return v12();
}

void sub_1BD1D35F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v131 = a3;
  v129 = sub_1BE04AFE4();
  v122 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1BE049394();
  v6 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v132 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = v121 - v11;
  v12 = sub_1BE049414();
  sub_1BD1D3B58(v12);
  v13 = sub_1BE049434();
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v133);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v30 = v133;
  v31 = sub_1BD1D6938(v133, v13);
  v30, v32, v33, v34, v35, v36, v37, v38;
  v13, v39, v40, v41, v42, v43, v44, v45;
  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v31;
  sub_1BE048964();
  sub_1BE04D8C4();
  v46 = sub_1BE049424();
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  sub_1BE04D8B4(&v133);
  v47, v49, v50, v51, v52, v53, v54, v55;
  v48, v56, v57, v58, v59, v60, v61, v62;
  v63 = v133;
  v64 = sub_1BD1D6938(v133, v46);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v46, v72, v73, v74, v75, v76, v77, v78;
  swift_getKeyPath();
  swift_getKeyPath();
  v133 = v64;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (v125)
  {
    v121[1] = a2;
    v86 = v130;
    v87 = v12;
    v126 = v12[2];
    if (v126)
    {
      v88 = v125;
      v89 = 0;
      v127 = v6 + 16;
      v90 = (v122 + 8);
      while (v89 < v87[2])
      {
        v91 = v87;
        (*(v6 + 16))(v132, v87 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v89, v86);
        v92 = v128;
        sub_1BE0492D4();
        v93 = sub_1BE04AF74();
        v95 = v94;
        (*v90)(v92, v129);
        if (v93 == v131 && v95 == v88)
        {
          v91, v96, v97, v98, v99, v100, v101, v102;
          v120 = v95;
LABEL_13:
          v120, v111, v112, v113, v114, v115, v116, v117;
          v86 = v130;
          v119 = v123;
          (*(v6 + 32))(v123, v132, v130);
          v118 = 0;
          goto LABEL_14;
        }

        v103 = sub_1BE053B84();
        v95, v104, v105, v106, v107, v108, v109, v110;
        if (v103)
        {
          v120 = v91;
          goto LABEL_13;
        }

        ++v89;
        v86 = v130;
        (*(v6 + 8))(v132, v130);
        v87 = v91;
        if (v126 == v89)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v87, v79, v80, v81, v82, v83, v84, v85;
      v118 = 1;
      v119 = v123;
LABEL_14:
      (*(v6 + 56))(v119, v118, 1, v86);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD0DE19C(v119, v124, &unk_1EBD4D450, &unk_1BE0BF570);
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD0DE53C(v119, &unk_1EBD4D450, &unk_1BE0BF570);
    }
  }

  else
  {
    v12, v79, v80, v81, v82, v83, v84, v85;
  }
}

void sub_1BD1D3B58(uint64_t a1)
{
  v86 = sub_1BE04AFE4();
  v2 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v75 - v5;
  v93 = sub_1BE049394();
  v6 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v78 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v75 - v9;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v92 = &v75 - v12;
  v77 = *(a1 + 16);
  if (v77)
  {
    v13 = 0;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v89 = v15;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v91 = *(v14 + 56);
    v80 = v16;
    v75 = a1 + v16;
    v82 = (v2 + 8);
    v87 = (v14 - 8);
    v76 = (v14 + 16);
    v79 = MEMORY[0x1E69E7CC0];
    v88 = v14;
    v18 = v83;
    v17 = v84;
LABEL_7:
    v81 = v13 + 1;
    v89(v92, v75 + v91 * v13, v93, v11);
    KeyPath = swift_getKeyPath();
    v22 = swift_getKeyPath();
    sub_1BE04D8B4(&v95);
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v43 = v95;
    v44 = v95 + v80;
    v90 = -v95[2];
    v45 = -1;
    while (1)
    {
      if (v90 + v45 == -1)
      {
        v43, v44, v37, v38, v39, v40, v41, v42;
        v54 = *v76;
        (*v76)(v78, v92, v93);
        v55 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v55;
        v94 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531C74(0, v55[2] + 1, 1);
          v57 = v94;
        }

        v13 = v81;
        v20 = v57[2];
        v19 = v57[3];
        if (v20 >= v19 >> 1)
        {
          sub_1BD531C74((v19 > 1), v20 + 1, 1);
          v57 = v94;
        }

        v57[2] = v20 + 1;
        v79 = v57;
        v54(v57 + v80 + v20 * v91, v78, v93);
LABEL_6:
        if (v13 == v77)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }

      if (++v45 >= v43[2])
      {
        break;
      }

      v46 = &v44[v91];
      v47 = v93;
      (v89)(v18);
      sub_1BE0492D4();
      v48 = v85;
      sub_1BE0492D4();
      v49 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
      v50 = *v82;
      v51 = v48;
      v52 = v86;
      (*v82)(v51, v86);
      v50(v17, v52);
      v53 = *v87;
      (*v87)(v18, v47);
      v44 = v46;
      if (v49)
      {
        v43, v46, v37, v38, v39, v40, v41, v42;
        v53(v92, v93);
        v13 = v81;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v58 = swift_getKeyPath();
    v59 = swift_getKeyPath();
    v60 = sub_1BE04D8A4();
    sub_1BDA7A78C(v79);
    v60(&v94, 0);
    v58, v61, v62, v63, v64, v65, v66, v67;
    v59, v68, v69, v70, v71, v72, v73, v74;
  }
}

Swift::Void __swiftcall CredentialCenterModel.ingestNewSealedBoxes(newBoxes:type:)(Swift::OpaquePointer newBoxes, PassKitUI::SealedBoxType type)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v28);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v28;
  v20 = sub_1BD1D6938(v28, newBoxes._rawValue);
  v19, v21, v22, v23, v24, v25, v26, v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v20;
  sub_1BE048964();
  sub_1BE04D8C4();
}

uint64_t CredentialCenterModel.credentialsByType.getter()
{
  v0 = sub_1BE0492B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE0492A4();
  v12 = v4[2];
  if (v12)
  {
    v14 = *(v1 + 16);
    v13 = v1 + 16;
    v15 = *(v13 + 64);
    v48 = v4;
    v16 = v4 + ((v15 + 32) & ~v15);
    v49 = *(v13 + 56);
    v50 = v14;
    v51 = v13;
    v17 = (v13 - 8);
    v18 = MEMORY[0x1E69E7CC8];
    do
    {
      v50(v3, v16, v0);
      KeyPath = swift_getKeyPath();
      v20 = swift_getKeyPath();
      sub_1BE04D8B4(&v52);
      KeyPath, v21, v22, v23, v24, v25, v26, v27;
      v20, v28, v29, v30, v31, v32, v33, v34;
      MEMORY[0x1EEE9AC00](v35);
      *(&v48 - 2) = v3;
      sub_1BD1CEA70(sub_1BD1DCED0, (&v48 - 4), v36, MEMORY[0x1E6967788], sub_1BD531C74);
      v38 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v18;
      sub_1BD1DB0FC(v38, v3, isUniquelyReferenced_nonNull_native);
      v18 = v52;
      (*v17)(v3, v0);
      v16 += v49;
      --v12;
    }

    while (v12);
    v48, v40, v41, v42, v43, v44, v45, v46;
  }

  else
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    return MEMORY[0x1E69E7CC8];
  }

  return v18;
}

BOOL sub_1BD1D4398()
{
  v0 = sub_1BE0492B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0492C4();
  sub_1BD1DCD18(&qword_1EBD3CBE8, MEMORY[0x1E6967728], MEMORY[0x1E6967740]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  (*(v1 + 8))(v3, v0);
  return v7 == v6;
}

char *CredentialCenterModel.achCredentials.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v55 - v1;
  v3 = sub_1BE049364();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE049394();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v55 - v11;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v70);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v35 = v70[2];
  if (v35)
  {
    v37 = *(v7 + 16);
    v36 = v7 + 16;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v55 = v70;
    v39 = v70 + v38;
    v66 = *(v36 + 56);
    v67 = v37;
    v64 = (v36 + 72);
    v65 = (v36 + 16);
    v63 = *MEMORY[0x1E6967770];
    v56 = (v36 + 80);
    v57 = (v36 - 8);
    v40 = (v4 + 32);
    v59 = v4;
    v61 = (v4 + 48);
    v62 = (v4 + 56);
    v41 = MEMORY[0x1E69E7CC0];
    v60 = v2;
    v58 = v36;
    do
    {
      v49 = v68;
      v67(v68, v39, v6);
      (*v65)(v9, v49, v6);
      v50 = (*v64)(v9, v6);
      if (v50 == v63)
      {
        (*v56)(v9, v6);
        (*v40)(v2, v9, v3);
        (*v62)(v2, 0, 1, v3);
      }

      else
      {
        (*v62)(v2, 1, 1, v3);
        (*v57)(v9, v6);
      }

      if ((*v61)(v2, 1, v3) == 1)
      {
        sub_1BD0DE53C(v2, &qword_1EBD4D1F0, &qword_1BE0E8400);
      }

      else
      {
        v51 = *v40;
        (*v40)(v69, v2, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1BD1D7668(0, *(v41 + 2) + 1, 1, v41, &qword_1EBD3CBE0, &qword_1BE0BFE28, MEMORY[0x1E6967750]);
        }

        v53 = *(v41 + 2);
        v52 = *(v41 + 3);
        if (v53 >= v52 >> 1)
        {
          v41 = sub_1BD1D7668((v52 > 1), v53 + 1, 1, v41, &qword_1EBD3CBE0, &qword_1BE0BFE28, MEMORY[0x1E6967750]);
        }

        *(v41 + 2) = v53 + 1;
        v51(&v41[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53], v69, v3);
        v2 = v60;
      }

      v39 += v66;
      --v35;
    }

    while (v35);
    v55, v42, v43, v44, v45, v46, v47, v48;
  }

  else
  {
    v70, v28, v29, v30, v31, v32, v33, v34;
    return MEMORY[0x1E69E7CC0];
  }

  return v41;
}

uint64_t CredentialCenterModel.addCredential(bankCredential:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1BE049394();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D4A88, 0, 0);
}

uint64_t sub_1BD1D4A88()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D4B30;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEDC1528](v2);
}

uint64_t sub_1BD1D4B30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1D4C7C, 0, 0);
  }
}

uint64_t sub_1BD1D4C7C()
{
  sub_1BE0528A4();
  *(v0 + 96) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D4D10, v2, v1);
}

uint64_t sub_1BD1D4D10(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 72);
  v9 = *(v8 + 80);
  v11 = *(v8 + 64);
  v12 = *(v8 + 48);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 16))(v9, v12, v11);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = sub_1BE04D8A4();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1BD1D7668(0, v18[2] + 1, 1, v18, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1BD1D7668((v20 > 1), v21 + 1, 1, v18, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
    *v17 = v18;
  }

  v22 = *(v8 + 72);
  v23 = *(v8 + 80);
  v24 = *(v8 + 64);
  v18[2] = v21 + 1;
  (*(v22 + 32))(v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v23, v24);
  v15(v8 + 16, 0);
  v14, v25, v26, v27, v28, v29, v30, v31;
  KeyPath, v32, v33, v34, v35, v36, v37, v38;

  v39 = *(v8 + 8);

  return v39();
}

uint64_t CredentialCenterModel.deleteCredential(credentialID:sealedBoxType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD1D4F34, 0, 0);
}

uint64_t sub_1BD1D4F34()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910, &qword_1BE0BF5D0);
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_1BE0B69E0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1BD1D509C;

  return MEMORY[0x1EEDC14E8](v5);
}

uint64_t sub_1BD1D509C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1BD1D5310;
  }

  else
  {
    v4 = sub_1BD1D51B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD1D51B0()
{
  sub_1BE0528A4();
  *(v0 + 64) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5244, v2, v1);
}

void sub_1BD1D5244(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 56);
  v10 = *(v8 + 48);
  v11 = *(v8 + 24);
  v12 = *(v8 + 72);
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD1D5708(v12, v10, v11);
  if (v9)
  {
  }

  else
  {
    *(v8 + 32), v13, v14, v15, v16, v17, v18, v19;

    MEMORY[0x1EEE6DFA0](sub_1BD1D5374, 0, 0);
  }
}

uint64_t sub_1BD1D5310(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t CredentialCenterModel.deleteCredentials(credentialIDs:sealedBoxType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD1D53B8, 0, 0);
}

uint64_t sub_1BD1D53B8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1D5460;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEDC14E8](v2);
}

uint64_t sub_1BD1D5460(uint64_t a1)
{
  v3 = *v2;
  v3[5] = a1;
  v3[6] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1D5594, 0, 0);
  }
}

uint64_t sub_1BD1D5594()
{
  sub_1BE0528A4();
  *(v0 + 56) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5628, v2, v1);
}

void sub_1BD1D5628(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 48);
  v10 = *(v8 + 40);
  v11 = *(v8 + 24);
  v12 = *(v8 + 64);
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD1D5708(v12, v10, v11);
  if (v9)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD1D56EC, 0, 0);
  }
}

void sub_1BD1D5708(int a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  LODWORD(v119) = a1;
  v5 = a1;
  v118 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v118);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v104 - v11;
  v121 = v3;
  if (v5 == 2)
  {
    v13 = *(a2 + 16);
    if (v13)
    {
      v15 = *(v9 + 16);
      v14 = v9 + 16;
      v107 = v7;
      v108 = v15;
      v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *(v14 + 56);
      v116 = v14;
      v105 = (v14 - 8);
      v106 = v17;
      for (i = v15(v7, v16, v118, v10); ; i = v108(v7, v16, v34, v35))
      {
        v115 = &v104;
        MEMORY[0x1EEE9AC00](i);
        *(&v104 - 2) = v7;
        KeyPath = swift_getKeyPath();
        v37 = swift_getKeyPath();
        v114 = sub_1BE04D8A4();
        v39 = v38;
        v40 = v121;
        v41 = sub_1BD1DA97C(sub_1BD1DED44, (&v104 - 4));
        v119 = v39;
        v42 = *v39;
        v43 = *(*v39 + 16);
        v44 = v43 - v41;
        if (v43 < v41)
        {
          break;
        }

        v45 = v41;
        if (v41 < 0)
        {
          goto LABEL_35;
        }

        v113 = v37;
        v46 = v41;
        if (__OFADD__(v43, v41 - v43))
        {
          goto LABEL_36;
        }

        v109 = v41 - v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v119 = v42;
        v121 = v40;
        v111 = v16;
        v112 = v13;
        v110 = KeyPath;
        if (!isUniquelyReferenced_nonNull_native || v46 > v42[3] >> 1)
        {
          if (v42[2] <= v46)
          {
            v48 = v43 - v44;
          }

          else
          {
            v48 = v42[2];
          }

          v42 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v48, 1, v42, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
          *v119 = v42;
        }

        v49 = *(sub_1BE049394() - 8);
        v50 = v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v51 = *(v49 + 72);
        v52 = v51 * v45;
        swift_arrayDestroy();
        if (v43 != v45)
        {
          if (v52 < v51 * v43 || &v50[v51 * v45] >= &v50[v51 * v43 + (v42[2] - v43) * v51])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v51 * v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v42[2];
          v55 = __OFADD__(v54, v109);
          v56 = v54 + v109;
          if (v55)
          {
            goto LABEL_37;
          }

          v42[2] = v56;
        }

        v19 = v114;
        *v119 = v42;
        v19(v120, 0);
        v110, v20, v21, v22, v23, v24, v25, v26;
        v113, v27, v28, v29, v30, v31, v32, v33;
        v7 = v107;
        v34 = v118;
        (*v105)(v107, v118);
        v16 = v111 + v106;
        v13 = v112 - 1;
        if (v112 == 1)
        {
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }
  }

  else
  {
    v57 = *(a2 + 16);
    if (v57)
    {
      v115 = *(v9 + 16);
      v116 = v9 + 16;
      v58 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v59 = (v9 + 8);
      v60 = *(v9 + 72);
      v114 = v9 + 8;
      v115(v12, v58, v118, v10);
      while (1)
      {
        if (v119)
        {
          v61 = swift_getKeyPath();
          v62 = swift_getKeyPath();
          sub_1BE04D8B4(v120);
          v61, v63, v64, v65, v66, v67, v68, v69;
          v62, v70, v71, v72, v73, v74, v75, v76;
          MEMORY[0x1EEE9AC00](v77);
          *(&v104 - 2) = v12;
          v78 = v121;
          sub_1BD1CEA70(sub_1BD1DED04, (&v104 - 4), v79, MEMORY[0x1E6967780], sub_1BD531CB8);
          v81 = v80;
          v121 = v78;
          v59 = v114;
        }

        else
        {
          v84 = swift_getKeyPath();
          v85 = swift_getKeyPath();
          sub_1BE04D8B4(v120);
          v84, v86, v87, v88, v89, v90, v91, v92;
          v85, v93, v94, v95, v96, v97, v98, v99;
          MEMORY[0x1EEE9AC00](v100);
          *(&v104 - 2) = v12;
          v101 = v121;
          sub_1BD1CEA70(sub_1BD1DED60, (&v104 - 4), v102, MEMORY[0x1E6967780], sub_1BD531CB8);
          v81 = v103;
          v121 = v101;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v120[0] = v81;
        sub_1BE048964();
        sub_1BE04D8C4();
        v82 = v118;
        (*v59)(v12, v118);
        v58 += v60;
        if (!--v57)
        {
          break;
        }

        v115(v12, v58, v82, v83);
      }
    }
  }
}

uint64_t CredentialCenterModel.updateACHCredential(credential:routingNumber:accountNumber:nickname:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[19] = a8;
  v9[20] = v8;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v10 = sub_1BE04AFE4();
  v9[21] = v10;
  v9[22] = *(v10 - 8);
  v9[23] = swift_task_alloc();
  v11 = sub_1BE049394();
  v9[24] = v11;
  v9[25] = *(v11 - 8);
  v9[26] = swift_task_alloc();
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D5EA4, 0, 0);
}

uint64_t sub_1BD1D5EA4()
{
  v1 = v0[25];
  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[27];
  v2 = v0[13];
  v3 = v0[12];
  v4 = sub_1BE049364();
  v0[29] = v4;
  v5 = *(v4 - 8);
  v0[30] = v5;
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  sub_1BE048C84();
  sub_1BE0492F4();
  sub_1BE048C84();
  sub_1BE049324();
  sub_1BE048C84();
  sub_1BE049354();
  v6(v12, v3, v4);
  v7 = *MEMORY[0x1E6967770];
  v8 = *(v1 + 104);
  v8(v12, v7, v13);
  v6(v14, v3, v4);
  v8(v14, v7, v13);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_1BD1D60AC;
  v10 = v0[27];

  return MEMORY[0x1EEDC1528](v10);
}

uint64_t sub_1BD1D60AC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v2[32] = v0;

  v6 = *(v4 + 8);
  v2[33] = v6;
  v2[34] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1BD1D66F8;
  }

  else
  {
    v7 = sub_1BD1D6230;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BD1D6230()
{
  sub_1BE0528A4();
  *(v0 + 280) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1D62C4, v2, v1);
}

uint64_t sub_1BD1D62C4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v108 = *(v8 + 256);
  v9 = *(v8 + 184);
  *(v8 + 280), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 80));
  v11, v12, v13, v14, v15, v16, v17, v18;
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v8 + 80);
  v27 = v26[2];
  v26, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE0492D4();
  v35 = swift_task_alloc();
  v35[2] = v9;
  v36 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v38 = sub_1BE04D8A4();
  v40 = v39;
  v41 = v108;
  v42 = sub_1BD1DA97C(sub_1BD1DCEF0, v35);
  v43 = *(*v40 + 16);
  if (v43 < v42)
  {
    __break(1u);
LABEL_11:
    v38 = sub_1BD1D7668(0, *(v38 + 2) + 1, 1, v38, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
    *v35 = v38;
    goto LABEL_4;
  }

  v109 = v27;
  v44 = *(v8 + 176);
  v45 = *(v8 + 184);
  v46 = *(v8 + 168);
  sub_1BD1DD4E0(v42, v43);

  v38();
  v37, v47, v48, v49, v50, v51, v52, v53;
  v36, v54, v55, v56, v57, v58, v59, v60;
  (*(v44 + 8))(v45, v46);
  v61 = swift_getKeyPath();
  v62 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 88));
  v62, v63, v64, v65, v66, v67, v68, v69;
  v61, v70, v71, v72, v73, v74, v75, v76;
  v77 = *(v8 + 88);
  v78 = v77[2];
  v77, v79, v80, v81, v82, v83, v84, v85;
  if (v78 >= v109)
  {
    goto LABEL_7;
  }

  v40 = v8 + 48;
  (*(*(v8 + 200) + 16))(*(v8 + 208), *(v8 + 224), *(v8 + 192));
  v27 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v36 = sub_1BE04D8A4();
  v35 = v86;
  v38 = *v86;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v89 = *(v38 + 2);
  v88 = *(v38 + 3);
  if (v89 >= v88 >> 1)
  {
    v38 = sub_1BD1D7668((v88 > 1), v89 + 1, 1, v38, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
    *v35 = v38;
  }

  v91 = *(v8 + 200);
  v90 = *(v8 + 208);
  v92 = *(v8 + 192);
  *(v38 + 2) = v89 + 1;
  (*(v91 + 32))(v38 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v89, v90, v92);
  (v36)(v40, 0);
  v41, v93, v94, v95, v96, v97, v98, v99;
  v27, v100, v101, v102, v103, v104, v105, v106;
LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD1D665C, 0, 0);
}

uint64_t sub_1BD1D665C()
{
  (*(v0 + 264))(*(v0 + 224), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD1D66F8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 96);
  (*(v0 + 264))(*(v0 + 224), *(v0 + 192));
  (*(v2 + 8))(v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

void CredentialCenterModel.sealedBox(with:sealedBoxType:)(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_getKeyPath();
    sub_1BE04D8B4(&v46);
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
    v4, v12, v13, v14, v15, v16, v17, v18;
    v19 = v46;
    MEMORY[0x1EEE9AC00](v20);
    v21 = sub_1BD1DD5D8;
  }

  else
  {
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    sub_1BE04D8B4(&v46);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v19 = v46;
    MEMORY[0x1EEE9AC00](v38);
    v21 = sub_1BD1DED28;
  }

  sub_1BD1CEDB0(v21, v19, MEMORY[0x1E6967780], a2);
  v19, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1BD1D6938(uint64_t a1, uint64_t a2)
{
  v49 = sub_1BE04AFE4();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v55 = sub_1BE049384();
  MEMORY[0x1EEE9AC00](v55);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v54 = &v39 - v17;
  v45 = *(a2 + 16);
  if (v45)
  {
    v18 = 0;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v53 = *(v19 + 56);
    v40 = v21;
    v41 = a1 + v21;
    v42 = a2 + v21;
    v22 = (v4 + 8);
    v50 = (v19 - 8);
    v51 = v20;
    v44 = (v19 + 16);
    v47 = MEMORY[0x1E69E7CC0];
    v43 = a1;
    v52 = v19;
    v23 = v55;
    do
    {
      v48 = v18 + 1;
      v51(v54, v42 + v53 * v18, v55, v16);
      v26 = *(a1 + 16) + 1;
      v27 = v41;
      while (--v26)
      {
        v28 = v27 + v53;
        v29 = (v51)(v13);
        v30 = MEMORY[0x1BFB36400](v29);
        MEMORY[0x1BFB36400](v30);
        v31 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
        v32 = *v22;
        v33 = v49;
        (*v22)(v6, v49);
        v32(v9, v33);
        v34 = *v50;
        (*v50)(v13, v23);
        v27 = v28;
        if (v31)
        {
          v34(v54, v55);
          goto LABEL_6;
        }
      }

      v35 = *v44;
      (*v44)(v46, v54, v55);
      v37 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531CB8(0, v37[2] + 1, 1);
        v37 = v56;
      }

      v25 = v37[2];
      v24 = v37[3];
      if (v25 >= v24 >> 1)
      {
        sub_1BD531CB8((v24 > 1), v25 + 1, 1);
        v37 = v56;
      }

      v37[2] = v25 + 1;
      v47 = v37;
      v35(v37 + v40 + v25 * v53, v46, v55);
LABEL_6:
      v18 = v48;
      a1 = v43;
    }

    while (v48 != v45);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v56 = a1;
  sub_1BE048C84();
  sub_1BDA7A7B8(v47);
  return v56;
}

uint64_t sub_1BD1D6D58(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  LOBYTE(a3) = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

BOOL sub_1BD1D6E54(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB36400](v4);
  sub_1BD1DCD18(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v7 = sub_1BE052334();
  (*(v3 + 8))(v6, v2);
  return (v7 & 1) == 0;
}

uint64_t CredentialCenterModel.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel_financeStore), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData, v13);
  v15 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t CredentialCenterModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C890, &qword_1BE0BF420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel_financeStore), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentials;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8A8, &qword_1BE0BF478);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithMissingKey;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8C0, &qword_1BE0BF4D0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__credentialsWithInvalidData, v13);
  v15 = OBJC_IVAR____TtC9PassKitUI21CredentialCenterModel__usersDefaultCredential;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD1D72E0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

char *sub_1BD1D7368(char *result, int64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D74C0(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9B0, &qword_1BE0BFBE8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D7668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

char *sub_1BD1D7844(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA10, &qword_1BE0BFC48);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D7948(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC8, &unk_1BE0DF7D0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D7A7C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAE8, &qword_1BE0BFD30);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D7D24(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC48, &unk_1BE0BFE90);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D7E30(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB70, &qword_1BE0BFDB8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D7F34(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB78, &qword_1BE0BFDC0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[48 * v12])
    {
      memmove(v16, v17, 48 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8054(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB68, &unk_1BE0BFDA8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8158(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF0, &qword_1BE0BFD38);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 29;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 2);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[4 * v12])
    {
      memmove(v17, v18, 4 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 4 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8324(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA98, &qword_1BE0BFCD8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8468(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB08, &unk_1BE0BFD50);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 6);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[64 * v12])
    {
      memmove(v17, v18, v12 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8574(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF8, &qword_1BE0BFD40);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 136);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[136 * v12])
    {
      memmove(v16, v17, 136 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8694(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB00, &qword_1BE0BFD48);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 56);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[56 * v12])
    {
      memmove(v16, v17, 56 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D87E4(char *result, int64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D8974(void *result, const char *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

char *sub_1BD1D8AA8(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB60, &qword_1BE0BFDA0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[48 * v12])
    {
      memmove(v16, v17, 48 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8BF0(char *result, int64_t a2, char a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F0, &qword_1BE0BFC28);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8D50(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB90, &qword_1BE0BFDD8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8E78(char *result, int64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D8F84(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0, &qword_1BE0BD170);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D913C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAD0, &qword_1BE0BFD18);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D925C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC30, &unk_1BE0BFE70);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D9378(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38, &unk_1BE0FD0E0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD557F0, &qword_1BE0BFE80);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D94C0(char *result, int64_t a2, char a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC50, &qword_1BE0DF760);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    v19 = (16 * v12);
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, v19);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D95CC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAA0, &qword_1BE0BFCE0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D96EC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC00, &qword_1BE0BFE40);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD1D9898(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB58, &qword_1BE0BFD98);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D9AB0(void *result, const char *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

void *sub_1BD1D9BE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CBC0, &qword_1BE0BFE08);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = a4 + v22;
  if (v5)
  {
    if (v13 < a4 || v13 + v22 >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20;
  return v13;
}

char *sub_1BD1D9E24(char *result, int64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD1D9F10(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAD8, &unk_1BE0BFD20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1BD1D9FA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1BD1DA024(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB10, &unk_1BE0DF860);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1BD1DA0A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA18, &qword_1BE0BFC50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1BD1DA188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BD1DA284(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1BD1DA334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_1BD0E5E8C(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1BD1DA45C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1BD1DA284(v2, 0);
    sub_1BE048C84();
    v4 = MEMORY[0x1BFB408E0](v3 + 4, v2, v1);
    v1 = v5;
    v4, v6, v5, v7, v8, v9, v10, v11;
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1BD1DA510(uint64_t a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_1BE053704();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v5 = sub_1BD1DA284(v4, 0);
    sub_1BE048C84();
    a2 = a2(v10, v5 + 4, v4, a1);
    sub_1BD0D45FC(v10[0], v10[1], v10[2], v10[3], v10[4], v6, v7, v8);
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

unint64_t sub_1BD1DA5E0(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_1EBD3CA68, &unk_1BE0BFCA0, MEMORY[0x1E6967A40]);
    *v3 = v5;
  }

  result = sub_1BD1DA778(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1BD1DA6D8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BE053704();
LABEL_9:
  result = sub_1BE053884();
  *v2 = result;
  return result;
}

unint64_t sub_1BD1DA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1BE049A94();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0, &unk_1BE0BFCF0);
  }

  if (v18 < 1)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0, &unk_1BE0BFCF0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0, &unk_1BE0BFCF0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BD1DA914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for UIFlowNode();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1DA97C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE049394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_1BD619C00(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1BD4FFF2C(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
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
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1BD1DAD20(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v18 = v10[2];
  v19 = (v12 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v12;
  v23 = v10[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = v11;
      sub_1BD5060D0();
      v11 = v24;
      goto LABEL_8;
    }

    sub_1BD5000BC(v21, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v22 & 1) != (v12 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v5;
  if (v22)
  {
    v26 = (v25[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v26, v12, v13, v14, v25, v15, v16, v17);

    return sub_1BD1B6140(a1, v26);
  }

  else
  {
    sub_1BD9483BC(v11, a2, a3, a1, v25);

    return sub_1BE048C84();
  }
}

void sub_1BD1DAE70(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BD14BFD0();
  v17 = v9[2];
  v18 = (v11 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v11;
  v22 = v9[3];
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      v23 = v10;
      sub_1BD506274();
      v10 = v23;
      goto LABEL_8;
    }

    sub_1BD500374(v20, a4 & 1);
    v10 = sub_1BD14BFD0();
    if ((v21 & 1) != (v11 & 1))
    {
LABEL_16:
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v5;
  if (v21)
  {
    v25 = (v24[7] + 16 * v10);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    v26, v11, v12, v13, v24, v14, v15, v16;
  }

  else
  {
    sub_1BD948428(v10, a3, a1, a2, v24);

    v27 = a3;
  }
}

_OWORD *sub_1BD1DAFB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v16 = sub_1BD149040(a2);
  v17 = v8[2];
  v18 = (v9 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v9;
  v21 = v8[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1BD50654C();
      goto LABEL_7;
    }

    sub_1BD50090C(v19, a3 & 1);
    v25 = sub_1BD149040(a2);
    if ((v20 & 1) == (v9 & 1))
    {
      v16 = v25;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BD149C8C(a2, v26);
      return sub_1BD948470(v16, v26, a1, v22);
    }

LABEL_15:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  __swift_destroy_boxed_opaque_existential_0(v23, v9, v10, v11, v12, v13, v14, v15);

  return sub_1BD1B6140(a1, v23);
}

void sub_1BD1DB0FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BE0492B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v20 = sub_1BD1492FC(a2);
  v21 = v12[2];
  v22 = (v13 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v13;
  v25 = v12[3];
  if (v25 < v23 || (a3 & 1) == 0)
  {
    if (v25 >= v23 && (a3 & 1) == 0)
    {
      sub_1BD50672C();
      goto LABEL_7;
    }

    sub_1BD50106C(v23, a3 & 1);
    v29 = sub_1BD1492FC(a2);
    if ((v24 & 1) == (v13 & 1))
    {
      v20 = v29;
      v26 = *v4;
      if (v24)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1BD9484EC(v20, v11, a1, v26);
      return;
    }

LABEL_15:
    sub_1BE053C14();
    __break(1u);
    return;
  }

LABEL_7:
  v26 = *v4;
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v27 = v26[7];
  v28 = *(v27 + 8 * v20);
  *(v27 + 8 * v20) = a1;

  v28, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1BD1DB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BD148F70(a3, a4);
  v20 = v12[2];
  v21 = (v14 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v14;
  v25 = v12[3];
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 >= v23 && (a5 & 1) == 0)
    {
      v26 = v13;
      sub_1BD5069C0();
      v13 = v26;
      goto LABEL_8;
    }

    sub_1BD501470(v23, a5 & 1);
    v13 = sub_1BD148F70(a3, a4);
    if ((v24 & 1) != (v14 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v6;
  if (v24)
  {
    v28 = (v27[7] + 16 * v13);
    v29 = v28[1];
    *v28 = a1;
    v28[1] = a2;

    v29, v14, v15, v16, v17, v27, v18, v19;
  }

  else
  {
    sub_1BD9485A4(v13, a3, a4, a1, a2, v27);

    sub_1BE048C84();
  }
}

void sub_1BD1DB518(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1BD148F70(a2, a3);
  v24 = v16[2];
  v25 = (v18 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_16;
  }

  v28 = v18;
  v29 = v16[3];
  if (v29 < v27 || (a4 & 1) == 0)
  {
    if (v29 >= v27 && (a4 & 1) == 0)
    {
      v30 = v17;
      a5();
      v17 = v30;
      goto LABEL_8;
    }

    a6(v27, a4 & 1);
    v17 = sub_1BD148F70(a2, a3);
    if ((v28 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v31 = *v11;
  if (v28)
  {
    v32 = v31[7];
    v33 = *(v32 + 8 * v17);
    *(v32 + 8 * v17) = a1;

    v33, v18, v19, v20, v31, v21, v22, v23;
  }

  else
  {
    a7(v17, a2, a3, a1, v31);

    sub_1BE048C84();
  }
}

uint64_t sub_1BD1DB684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BD506F1C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BD501F34(v16, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BD9485F4(v11, a2, a3, a1, v21);

    return sub_1BE048C84();
  }
}

void sub_1BD1DB80C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1BD148F70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1BD148F70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    sub_1BE048C84();
  }
}

void sub_1BD1DB974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BD148F70(a3, a4);
  v20 = v12[2];
  v21 = (v14 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v14;
  v25 = v12[3];
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 >= v23 && (a5 & 1) == 0)
    {
      v26 = v13;
      sub_1BD507830();
      v13 = v26;
      goto LABEL_8;
    }

    sub_1BD502D2C(v23, a5 & 1);
    v13 = sub_1BD148F70(a3, a4);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v6;
  if (v24)
  {
    v29 = v28[7] + 16 * v13;
    v30 = *v29;
    v31 = *(v29 + 8);
    *v29 = a1;
    *(v29 + 8) = a2;

    sub_1BD1245AC(v30, v31, v15, v16, v17, v28, v18, v19);
  }

  else
  {
    sub_1BD9485A4(v13, a3, a4, a1, a2, v28);

    sub_1BE048C84();
  }
}

void sub_1BD1DBB18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v18 = v10[2];
  v19 = (v12 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v12;
  v23 = v10[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = v11;
      sub_1BD507BC8();
      v11 = v24;
      goto LABEL_8;
    }

    sub_1BD50333C(v21, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v22 & 1) != (v12 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v5;
  if (v22)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v11);
    *(v26 + 8 * v11) = a1;

    v27, v12, v13, v14, v25, v15, v16, v17;
  }

  else
  {
    sub_1BD9485F4(v11, a2, a3, a1, v25);

    sub_1BE048C84();
  }
}

void sub_1BD1DBC60(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v18 = v10[2];
  v19 = (v12 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v12;
  v23 = v10[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = v11;
      sub_1BD507D38();
      v11 = v24;
      goto LABEL_8;
    }

    sub_1BD5035E4(v21, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v26 = *v5;
  if (v22)
  {
    v27 = v26[7] + 48 * v11;
    v28 = *(v27 + 8);
    v29 = *(v27 + 32);
    v31 = v29;
    v30 = a1[1];
    *v27 = *a1;
    *(v27 + 16) = v30;
    *(v27 + 25) = *(a1 + 25);
    v28, v29, v13, v14, v26, v15, v16, v17;
  }

  else
  {
    sub_1BD948680(v11, a2, a3, a1, v26);

    sub_1BE048C84();
  }
}

void sub_1BD1DBE14(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1BD149084(a2);
  v21 = v13[2];
  v22 = (v15 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v15;
  v26 = v13[3];
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v14;
      a4();
      v14 = v27;
      goto LABEL_8;
    }

    a5(v24, a3 & 1);
    v14 = sub_1BD149084(a2);
    if ((v25 & 1) != (v15 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v9;
  if (v25)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v14);
    *(v29 + 8 * v14) = a1;

    v30, v15, v16, v28, v17, v18, v19, v20;
  }

  else
  {

    a6(v14, a2, a1, v28);
  }
}

uint64_t sub_1BD1DBF6C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BD149084(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_1BD508040();
      result = v17;
      goto LABEL_8;
    }

    sub_1BD503B54(v14, a2 & 1);
    result = sub_1BD149084(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_1BD948720(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_1BD1DC080(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BD5081A0();
      goto LABEL_7;
    }

    sub_1BD503DCC(v15, a4 & 1);
    v22 = sub_1BD148F70(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) - 8) + 72) * v12;

    return sub_1BD1DEBF8(a1, v20);
  }

LABEL_13:
  sub_1BD948764(v12, a2, a3, a1, v18);

  return sub_1BE048C84();
}

uint64_t sub_1BD1DC238(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1BD148F70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_1BD148F70(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);

  return sub_1BE048C84();
}

uint64_t sub_1BD1DC3F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BD149084(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BD508850();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BD5047A4(v14, a3 & 1);
    v9 = sub_1BD149084(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_1BD1DEB9C(a1, v20);
  }

  else
  {

    return sub_1BD948908(v9, a2, a1, v19);
  }
}

_OWORD *sub_1BD1DC518(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BD14BFD0();
  v15 = v7[2];
  v16 = (v9 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v9;
  v20 = v7[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v8;
      sub_1BD508CF4();
      v8 = v21;
      goto LABEL_8;
    }

    sub_1BD504EC4(v18, a3 & 1);
    v8 = sub_1BD14BFD0();
    if ((v19 & 1) != (v9 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v4;
  if (v19)
  {
    v23 = (v22[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v23, v9, v10, v22, v11, v12, v13, v14);

    return sub_1BD1B6140(a1, v23);
  }

  else
  {
    sub_1BD948974(v8, a2, a1, v22);

    return a2;
  }
}

uint64_t sub_1BD1DC658(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_1BD1DC6BC(a1);
  v4 = v3[2];
  v3, v5, v6, v7, v8, v9, v10, v11;
  return a2((v3 + 4), v4);
}

void *sub_1BD1DC6BC(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
    sub_1BE048964();
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1BD1DA45C(a1);
      sub_1BE048964();
      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  return v4;
}

BOOL _s9PassKitUI30CredentialCenterPathIdentifierV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v93 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0, &qword_1BE0B9600);
  MEMORY[0x1EEE9AC00](v10);
  v18 = &v93 - v17;
  v94 = a1;
  if (*a1)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD000000000000012;
  }

  if (*a1)
  {
    v20 = "addCredentialSheet";
  }

  else
  {
    v20 = "erOptions";
  }

  v21 = (v20 | 0x8000000000000000);
  if (*a2)
  {
    v22 = 0xD000000000000016;
  }

  else
  {
    v22 = 0xD000000000000012;
  }

  if (*a2)
  {
    v23 = "addCredentialSheet";
  }

  else
  {
    v23 = "erOptions";
  }

  v24 = (v23 | 0x8000000000000000);
  if (v19 == v22 && v21 == v24)
  {
    v21, v11, v22, v12, v13, v14, v15, v16;
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v32 = sub_1BE053B84();
    v21, v33, v34, v35, v36, v37, v38, v39;
    v24, v40, v41, v42, v43, v44, v45, v46;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v47 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v48 = a2;
  v49 = *(v47 + 20);
  v50 = *(v10 + 48);
  sub_1BD0DE19C(&v94[v49], v18, &qword_1EBD39980, &qword_1BE0BF3C0);
  v51 = &v48[v49];
  v52 = v48;
  sub_1BD0DE19C(v51, &v18[v50], &qword_1EBD39980, &qword_1BE0BF3C0);
  v53 = *(v5 + 48);
  if (v53(v18, 1, v4) == 1)
  {
    if (v53(&v18[v50], 1, v4) == 1)
    {
      sub_1BD0DE53C(v18, &qword_1EBD39980, &qword_1BE0BF3C0);
      goto LABEL_25;
    }

LABEL_22:
    sub_1BD0DE53C(v18, &unk_1EBD39AD0, &qword_1BE0B9600);
    return 0;
  }

  sub_1BD0DE19C(v18, v9, &qword_1EBD39980, &qword_1BE0BF3C0);
  if (v53(&v18[v50], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_22;
  }

  v61 = v93;
  (*(v5 + 32))(v93, &v18[v50], v4);
  sub_1BD1DCD18(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v62 = sub_1BE052334();
  v63 = *(v5 + 8);
  v63(v61, v4);
  v63(v9, v4);
  v52 = v48;
  sub_1BD0DE53C(v18, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v64 = *(v47 + 24);
  v65 = v94[v64];
  v66 = v52[v64];
  if (v65 == 2)
  {
    return v66 == 2;
  }

  if (v66 == 2)
  {
    return 0;
  }

  if (v65)
  {
    v67 = 0x64657070617277;
  }

  else
  {
    v67 = 1953722220;
  }

  if (v65)
  {
    v68 = 0xE700000000000000;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  if (v66)
  {
    v69 = 0x64657070617277;
  }

  else
  {
    v69 = 1953722220;
  }

  if (v66)
  {
    v70 = 0xE700000000000000;
  }

  else
  {
    v70 = 0xE400000000000000;
  }

  if (v67 == v69 && v68 == v70)
  {
    v68, v54, v69, v55, v56, v57, v58, v59;
    v70, v71, v72, v73, v74, v75, v76, v77;
  }

  else
  {
    v78 = sub_1BE053B84();
    v68, v79, v80, v81, v82, v83, v84, v85;
    v70, v86, v87, v88, v89, v90, v91, v92;
    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1BD1DCC1C()
{
  result = qword_1EBD3C858;
  if (!qword_1EBD3C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C858);
  }

  return result;
}

unint64_t sub_1BD1DCC70()
{
  result = qword_1EBD3C860;
  if (!qword_1EBD3C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C860);
  }

  return result;
}

unint64_t sub_1BD1DCCC4()
{
  result = qword_1EBD3C868;
  if (!qword_1EBD3C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C868);
  }

  return result;
}

uint64_t sub_1BD1DCD18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD1DCD60()
{
  result = qword_1EBD3C878;
  if (!qword_1EBD3C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C878);
  }

  return result;
}

unint64_t sub_1BD1DCDB4()
{
  result = qword_1EBD3C880;
  if (!qword_1EBD3C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C880);
  }

  return result;
}

uint64_t sub_1BD1DCE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD1D2F9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD1DCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for UIFlowNode();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BE053704();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1BE053704();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = sub_1BE048964();
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1BD1DD044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BE053704();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1BE053704();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1BD1DA6D8(result, 1);

  return sub_1BD1DCF24(v7, v6, 1, v4);
}

char *sub_1BD1DD15C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_1BD0E5E8C(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BE053704();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_1BE053704();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1BD1DD294(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BE053704();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = (v17 + v16);
  if (!v18)
  {
    sub_1BD1DA6D8(result, 1);
    return sub_1BD1DD15C(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BD1DD3B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = 0xEB000000006E6F69;
  v11 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v11 || (sub_1BE053B84() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEC00000044496C61;
    if (a1 == 0x69746E6564657263 && a2 == 0xEC00000044496C61 || (sub_1BE053B84() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x6F4264656C616573 && a2 == 0xED00006570795478)
    {
      0xED00006570795478, 0xED00006570795478, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1BE053B84();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1BD1DD4E0(unint64_t result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
    *v2 = v4;
  }

  result = sub_1BD1DDE30(v6, a2, 0, MEMORY[0x1E6967788]);
  *v2 = v4;
  return result;
}

unint64_t sub_1BD1DD658()
{
  result = qword_1EBD3C920;
  if (!qword_1EBD3C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C920);
  }

  return result;
}

unint64_t sub_1BD1DD6B0()
{
  result = qword_1EBD3C928;
  if (!qword_1EBD3C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C928);
  }

  return result;
}

unint64_t sub_1BD1DD708()
{
  result = qword_1EBD3C930;
  if (!qword_1EBD3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C930);
  }

  return result;
}

unint64_t sub_1BD1DD760()
{
  result = qword_1EBD3C938;
  if (!qword_1EBD3C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C938);
  }

  return result;
}

void sub_1BD1DD7DC(uint64_t a1)
{
  sub_1BD12513C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1DD870();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD1DD870()
{
  if (!qword_1EBD3C950)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3C950);
    }
  }
}

void sub_1BD1DD928(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD3C968, &qword_1EBD3C8F0, &qword_1BE0BF590);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3C970, &qword_1EBD3C900, &qword_1BE0BF598);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3C978, &qword_1EBD3C908, &qword_1BE0BF5A0);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3C980, &unk_1EBD4D450, &unk_1BE0BF570);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1BD1DDB14()
{
  result = qword_1EBD3C988;
  if (!qword_1EBD3C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C988);
  }

  return result;
}

unint64_t sub_1BD1DDB6C()
{
  result = qword_1EBD3C990;
  if (!qword_1EBD3C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C990);
  }

  return result;
}

unint64_t sub_1BD1DDBC4()
{
  result = qword_1EBD3C998;
  if (!qword_1EBD3C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C998);
  }

  return result;
}

uint64_t sub_1BD1DDC18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1BD0E5E8C(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BE053704();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DDD34(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BE053704();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_1BD1DA6D8(result, 1);
    return sub_1BD1DDC18(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1BD1DDE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1BD1DDF7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE068(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_1BD1DE140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for UIFlowNode();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_1BE053704();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1BE053704();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1BD1DC658(v4, sub_1BD1DE3EC);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1DE2D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_1BE053704() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_1BE053704();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_1BD1DA6D8(v15, 1);

  sub_1BD1DE140(v7, v6, v11, v4);
}

unint64_t sub_1BD1DE408(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48, &qword_1BE0BD2F0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}